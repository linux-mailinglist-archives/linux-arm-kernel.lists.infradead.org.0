Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28B91B2AB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+Xj88Up7oI3MQS5PvkkNRWGxOMAiXNdqgmhba8/MrM=; b=b7k8DT9EAcY4hRbphnaVuPUDb
	rHwjHebjKXFDitshnnmmXec02QCdtML0/oYnaz6YR0XDJ6drT/iN+MaGmIkTw+V9UpeUr/LOx+Vlu
	Mo4vmdyKJcIKdAwndAAFQnwVQaExWifJMcSyIj+/1qTBVVo9F1q06XMFIeDBW5SS/S6PbN+pACCrG
	eyLRMT5LQfUl7iQx3XzStT8ofAoQ1CgB/ROu1VfjOz693she8uOnReWG3G4lKiwDti2OGxT2N/+O1
	yZtjTK8D8NYZ2MqddxP/U0Q1kcXVT0sfGh6j/9I991/cwxT1UKnSzbIzLgyNQUSi9nohtwr0iwsH1
	sJ+fhIiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuYC-0000dP-2A; Tue, 21 Apr 2020 15:11:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQuY5-0000cY-9V
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:10:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D270A31B;
 Tue, 21 Apr 2020 08:10:53 -0700 (PDT)
Received: from [10.37.12.172] (unknown [10.37.12.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB6CD3F73D;
 Tue, 21 Apr 2020 08:10:21 -0700 (PDT)
Subject: Re: [PATCH v2 8/8] arm64: cpufeature: Add an overview comment for the
 cpufeature framework
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200421142922.18950-1-will@kernel.org>
 <20200421142922.18950-9-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <79835826-1b28-7616-834c-7b3779db4fac@arm.com>
Date: Tue, 21 Apr 2020 16:15:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200421142922.18950-9-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_081057_374185_BC38136B 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/21/2020 03:29 PM, Will Deacon wrote:
> Now that Suzuki isn't within throwing distance, I thought I'd better add
> a rough overview comment to cpufeature.c so that it doesn't take me days
> to remember how it works next time.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> ---

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
