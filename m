Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55856CF91F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=563BhMuIAA051hLMF7+juNMjr4cflIE/n50GXZGIi2A=; b=Z+6DXRjaF93TUFj4q2rLF9r8Y
	KbG7CUwSbMfsdn4D+W80TYnBxwExgpQ5xptKqiMm+sM4Qy7YT3ZQShnOuu57rDitbo3UbgvM+Y4WR
	lUTSnVsLcIKJ1cdcpV1+aGKMye42OZbuNsXU3T7TYGaRZdPKMUzkxA4V/gco6r3SIkL0995nL4mlX
	WwkzKMu5yFnQs8ifxn5rLSs+ezuMSG0AAx7P+eYRvHz5uAtBirpHK9EcxJpWHdtLynuKXZoINPCi2
	1cqqGfxygYxeuL2uyeuDWBTmngq1HjcXv7J0GLBTb3uDMw8ddQNc93SFbvGCBpcbXxI9MT3YRTNUT
	mZ9Rixozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoDr-0003hX-1u; Tue, 08 Oct 2019 12:04:11 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoDj-0003gt-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1570536243; x=1602072243;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=qOiNgtO/sVW6L11wtzZylE/HYq5xG4Py3mmZco6FqFk=;
 b=OfP/RaHuztHpfxxVVvvxsbHdRlWxCA7VvAGBcDE+1tbcTUl5ggDmXcKj
 +Jl0KZidwxHZtzqPfm6drG3TnYanH0T8BcJYoTKWGMDGZpZDY7NBvqAJz
 DqTfOjz+5OSn+A5Z3BQIPVIK3aVubiVdJH3ZoEE/0JGZRaW+OVYyw2kme w=;
X-IronPort-AV: E=Sophos;i="5.67,270,1566864000"; d="scan'208";a="790658646"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-e34f1ddc.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 08 Oct 2019 12:04:02 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-e34f1ddc.us-east-1.amazon.com (Postfix) with ESMTPS
 id AF416A1C3A; Tue,  8 Oct 2019 12:03:32 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 8 Oct 2019 12:03:32 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.30) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 8 Oct 2019 12:03:28 +0000
Subject: Re: [PATCH v2 1/2] KVM: arm/arm64: Allow reporting non-ISV data
 aborts to userspace
To: Christoffer Dall <christoffer.dall@arm.com>, <kvmarm@lists.cs.columbia.edu>
References: <20191008093640.26519-1-christoffer.dall@arm.com>
 <20191008093640.26519-2-christoffer.dall@arm.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <eb25aac5-e773-ca8b-0782-7b05b211bac6@amazon.com>
Date: Tue, 8 Oct 2019 14:03:25 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008093640.26519-2-christoffer.dall@arm.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.30]
X-ClientProxiedBy: EX13D06UWA004.ant.amazon.com (10.43.160.164) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_050403_784423_F8663B81 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich
 Schuchardt <xypron.glpk@gmx.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08.10.19 11:36, Christoffer Dall wrote:
> For a long time, if a guest accessed memory outside of a memslot using
> any of the load/store instructions in the architecture which doesn't
> supply decoding information in the ESR_EL2 (the ISV bit is not set), the
> kernel would print the following message and terminate the VM as a
> result of returning -ENOSYS to userspace:
> 
>    load/store instruction decoding not implemented
> 
> The reason behind this message is that KVM assumes that all accesses
> outside a memslot is an MMIO access which should be handled by
> userspace, and we originally expected to eventually implement some sort
> of decoding of load/store instructions where the ISV bit was not set.
> 
> However, it turns out that many of the instructions which don't provide
> decoding information on abort are not safe to use for MMIO accesses, and
> the remaining few that would potentially make sense to use on MMIO
> accesses, such as those with register writeback, are not used in
> practice.  It also turns out that fetching an instruction from guest
> memory can be a pretty horrible affair, involving stopping all CPUs on
> SMP systems, handling multiple corner cases of address translation in
> software, and more.  It doesn't appear likely that we'll ever implement
> this in the kernel.
> 
> What is much more common is that a user has misconfigured his/her guest
> and is actually not accessing an MMIO region, but just hitting some
> random hole in the IPA space.  In this scenario, the error message above
> is almost misleading and has led to a great deal of confusion over the
> years.
> 
> It is, nevertheless, ABI to userspace, and we therefore need to
> introduce a new capability that userspace explicitly enables to change
> behavior.
> 
> This patch introduces KVM_CAP_ARM_NISV_TO_USER (NISV meaning Non-ISV)
> which does exactly that, and introduces a new exit reason to report the
> event to userspace.  User space can then emulate an exception to the
> guest, restart the guest, suspend the guest, or take any other
> appropriate action as per the policy of the running system.
> 
> Reported-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>

Reviewed-by: Alexander Graf <graf@amazon.com>


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
