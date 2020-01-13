Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7597E138DA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FBNkK/NgpE0mVSPlZFFgRfe7xy4YTC9M0+55KgmYqwk=; b=oHWtRj6zPlbx1VhcRNTZemiBd
	28vwiD+Q0+83saoI6nMPQR7LSKLgq2AShWxXR2bhRfYSjewRwb/My/xlX5GTeOREpw4fwz7pUYzsf
	k3xBhakjs9e/IjNJMawGr3DXvaZWcTxBJbOkiY3ciEBtfKxfQOW607AtXq3Mnx43gbXivcm4BPxJF
	iIg+LP0lzNQobGObuTb5ZXdgRnk/TwPQh4HqRuqbyQGwU1Zi+cjN4FCPTIfgRgpctrvCL/A4qaBfk
	Dwe+wgW9gKzQcafKPiPwTZfUUqBPKfP7hESraEAl/0xfeWMT1Ey8GeoySZfiHOSbAhTY6lwQQf61U
	jq+TbaQGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvvM-0005Bs-0R; Mon, 13 Jan 2020 09:22:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvvD-0005BY-71
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:22:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C23C2207FF;
 Mon, 13 Jan 2020 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578907326;
 bh=AWLBFTsr6GFiWvhL7GjssCAcMPCUQoDpXhlm72PrH/s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DK+dkbpRdbQ9GPGpdMMdtHN/Nai47WssULZ7Z+Ov+oOn5O6657Mkv8zt6TkxZJ6g1
 PjA6qxAfCwLQGM9ljV8lu/WvMzwxEuStA5VB9fCeSlYMVJsAWF8hB3lKDknYqxRAUH
 KdYZx87lCdvU9QzRi7dYpzL18xxwJs3jbh51hxX0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iqvvB-0001CB-5J; Mon, 13 Jan 2020 09:22:05 +0000
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 09:22:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Chanho Park <parkch98@gmail.com>
Subject: Re: [PATCH] arm64: add Cortex-A76 to spectre v2 safe-list
In-Reply-To: <20200112151014.2593-1-parkch98@gmail.com>
References: <20200112151014.2593-1-parkch98@gmail.com>
Message-ID: <81a4e97c116e5cb4378092411069a80e@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: parkch98@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012207_275531_5C1EFBD8 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-12 15:10, Chanho Park wrote:
> Cortex A76(Enyo) core can be added in spectre v2(CVE-2017-5715 
> (Spectre,
> Variant 2, Branch Target Injection) safe list.
> 
> Signed-off-by: Chanho Park <parkch98@gmail.com>
> ---
>  arch/arm64/kernel/cpu_errata.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/cpu_errata.c 
> b/arch/arm64/kernel/cpu_errata.c
> index 85f4bec22f6d..9895d56bf5ac 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -546,6 +546,7 @@ static const struct midr_range 
> spectre_v2_safe_list[] = {
>  	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
>  	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
>  	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
> +	MIDR_ALL_VERSIONS(MIDR_CORTEX_A76),
>  	MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
>  	MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>  	{ /* sentinel */ }

Why? Doesn't Cortex-A76 already advertize ID_AA64PFR0_EL1.CSV2?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
