Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BFD177D92
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NGUECGW9J4zkldSNpN1IXTnvjT0OieBYL3JiIVHOdRI=; b=XgcpRu8wG8jdbV4EG+ALgRF/y
	kIMv4479QswVYhCXRl2EBtN24hOA0gEt0FsJeMqCPQJSq9br7DU4zqfjXf1Xn5URb1+lUzRC/ig5m
	pRifkxSr6Gf1zTJ9RkiOdKI50cBGuFYKIy01tH1J/WIlCTCl/KDu5ChJBbUPfBYpyKFnHRZ89UFJE
	VMNtdpNR84PW6peEwoD+2jOF5xnWO33f0VNFV7I3zhFYUO79T5ykBMnrWlqpBMtiOxcIIZSsa1L+O
	HES9kLds9SndJ7AKxvootAc3xpuOkjPVG77rne3ELUAw9gMh/TUx11IlMAWAuPMR/ghsyb9F90uwJ
	mOYp722mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9BQn-0003XB-Et; Tue, 03 Mar 2020 17:34:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BQe-0003Wn-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:34:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA97A2146E;
 Tue,  3 Mar 2020 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583256839;
 bh=iPOYluEY+ZO1uyD5kIymeUNRinPpcpWzEsgkKtWHXKk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PssTJb+5WAlQiBvvTwCxPLcnNVAQWPTDSLFFFkPWblU0Tw3d2NnBnuKJhMGo2iJ4/
 udmQSQKATNt7HuovAY5BY+JsaxblFdHhEW6mvR8mZgogCM+29GHHS7gJeFvKnHGXD+
 WvRlzPNtr7KjGCMKufGhmxLDK4SNmIVSspxzoR48=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9BQc-009jyt-0c; Tue, 03 Mar 2020 17:33:58 +0000
MIME-Version: 1.0
Date: Tue, 03 Mar 2020 17:33:57 +0000
From: Marc Zyngier <maz@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/dma: Fix MSI reservation allocation
In-Reply-To: <f0fc18a5-17a9-4c53-052b-00272bbd2691@arm.com>
References: <20200303115154.32263-1-maz@kernel.org>
 <f0fc18a5-17a9-4c53-052b-00272bbd2691@arm.com>
Message-ID: <dd29d82badfa11f7c0c80563d1b38804@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, jroedel@suse.de, eric.auger@redhat.com,
 will@kernel.org, stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_093400_684596_B3A9E8FC 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joerg Roedel <jroedel@suse.de>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-03 17:23, Robin Murphy wrote:
> On 03/03/2020 11:51 am, Marc Zyngier wrote:
>> The way cookie_init_hw_msi_region() allocates the iommu_dma_msi_page
>> structures doesn't match the way iommu_put_dma_cookie() frees them.
>> 
>> The former performs a single allocation of all the required 
>> structures,
>> while the latter tries to free them one at a time. It doesn't quite
>> work for the main use case (the GICv3 ITS where the range is 64kB)
>> when the base ganule size is 4kB.
>> 
>> This leads to a nice slab corruption on teardown, which is easily
>> observable by simply creating a VF on a SRIOV-capable device, and
>> tearing it down immediately (no need to even make use of it).
>> 
>> Fix it by allocating iommu_dma_msi_page structures one at a time.
> 
> Bleh, you know you're supposed to be using 64K pages on those things, 
> right? :P

lalalala... ;-)

[...]

>> +		if (!msi_page) {
>> +			ret = -ENOMEM;
> 
> I think we can just return here and skip the cleanup below - by the
> time we get here the cookie itself has already been allocated and
> initialised, so even if iommu_dma_init_domain() fails someone else has
> already accepted the responsibility of calling iommu_put_dma_cookie()
> at some point later, which will clean up properly.

Ah, that's a very good point. I'll refresh the patch with a simplified
error handling.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
