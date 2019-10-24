Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437A8E3778
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJXIhv7Pxtf3wlBM+gpTtaFE3JazErpGy4T6kVu9pf4=; b=VTRjGwjAFLDc/h
	mRQGLCw5vd62WMK1090cIsOuRQ4+N7pTXP+tVhikeGd4QjCJ6teyB50eQq0P7cr16fn4z0l4rxOkw
	8NlbNzaYNn/W77LgQKYyR4xezpuxC745E2c/6BlBf75RDa3PWpFeQdCt6Saa3qm7AeGz3wrnN/GR8
	UDGIeeTMbNNkRx0eZkk5d4VykHPvc3vLBAIpvlV2XxDXrVNwOkalO5bDygOtl5LYE5WPNZpxSjifI
	95DptyGaUNZmlTbOj0LpQzfUBed9Sz9MsOjeBMTF4PqK+iAumOAYm825nLOVuahUs9VVZDIN9T7RM
	AhRLHqXVAplqn7kpk5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfgk-0000By-Vh; Thu, 24 Oct 2019 16:10:14 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfgW-0008Qd-99
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:10:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3E8E28;
 Thu, 24 Oct 2019 09:09:49 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81AF33F71F;
 Thu, 24 Oct 2019 09:09:48 -0700 (PDT)
Subject: Re: [PATCH v2 2/5] arm64: KVM: Reorder system register restoration
 and stage-2 activation
To: Marc Zyngier <maz@kernel.org>
References: <20191019095521.31722-1-maz@kernel.org>
 <20191019095521.31722-3-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <e835b1bf-b2b2-c0e7-f34c-e0a68f921ffd@arm.com>
Date: Thu, 24 Oct 2019 17:09:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191019095521.31722-3-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_091000_364593_E268D75C 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 19/10/2019 10:55, Marc Zyngier wrote:
> In order to prepare for handling erratum 1319367, we need to make
> sure that all system registers (and most importantly the registers
> configuring the virtual memory) are set before we enable stage-2
> translation.
> 
> This results in a minor reorganisation of the load sequence, without
> any functional change.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
