Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4499A1ADC06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuX0H6zF0gBhj5ra/xZFfZBSiejXvxIlmZAeQ2GEu+Q=; b=merj8/0CUQ6eDE
	AkOT8jLn4sUzIcjun86z2erJKryuJRAqdN6X3bE+ofIBsM6jrxGiTUD2FHcSEkkh80rwEuDQK9+7j
	RqftPGw8w94W+ySjp/I2a9VZWTvRcZdjIGcvBBO8C+W4zHPKnc/dKGff7bnpJUlucj+sqh2vTT72p
	km1/0c/KmCmwEXwrt3E2bVlLYfS3b0gB7IJ0QY9y1ZbaY9tXC6sHInwtrMU3zdfJz3SMVLyXdcQIM
	5eRiTlcSX2vXGbIvM3p0sU/FvGNTTcUcHRXCkWDAcQxuGa3rGWuA1+j73UtOuorYaIauYOSJQGVGl
	THyCWXNGWVnsDZuyt00g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPP02-0001fz-HQ; Fri, 17 Apr 2020 11:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOzv-0001eE-9q
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 11:17:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72186C14;
 Fri, 17 Apr 2020 04:17:25 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 004173F6C4;
 Fri, 17 Apr 2020 04:17:23 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] KVM: arm: vgic: Only use the virtual state when
 userspace accesses enable bits
To: Marc Zyngier <maz@kernel.org>
References: <20200417083319.3066217-1-maz@kernel.org>
 <20200417083319.3066217-4-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <040579d5-151f-5263-9f5f-69f86965dfc6@arm.com>
Date: Fri, 17 Apr 2020 12:17:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200417083319.3066217-4-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_041727_384600_80DE6FCD 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 17/04/2020 09:33, Marc Zyngier wrote:
> There is no point in accessing the HW when writing to any of the
> ISENABLER/ICENABLER registers from userspace, as only the guest
> should be allowed to change the HW state.
> 
> Introduce new userspace-specific accessors that deal solely with
> the virtual state.
> 
> Reported-by: James Morse <james.morse@arm.com>

Tested on both machines I've hit this on:
Tested-by: James Morse <james.morse@arm.com>

and perhaps more useful:
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
