Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4BD003C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TF77hvgc8p/0KxGdmY7lkDrS+8UAytyIhO+OLyTngxU=; b=e0R7IfXXuQeIiOTmtd4Veq+aU
	u2fT9UtWxYI91ZAczSESsPGDGyIhILvE91habmfPQeyiv5YHDC6L2pzBcYnzxRuuQlPk9vG/7sctn
	vdPBbTIpVU/Ca5awzRk9Crzi9g0vKQvGKMs+zk6KuVpYVC95ctU7c/x+I8L1/PClF0mbnRu4gvDW9
	16Pa4VtCmKUof5ePfCCkAuhjfQPxP1i+huun+K+uFsJG3lrhYekH+URIgX9KsUGvbKLbMdm8u1XQU
	jVI6rttsys+Bfn0Cqj9Q2b1PMLXhWR+lUodyBhslwj6GB9Yx0tRotJCxM8IDGThLH5NGlUBZt6IV6
	GiFYUHDkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtju-0003Af-HL; Tue, 08 Oct 2019 17:57:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtjj-00039u-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:57:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so11184064pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Yef5E9Iz9f+7n/5/axHFKoPE3pK/yUGvRPUha6xlga4=;
 b=F5s2dQP432QAUKh4cPR48vcv2U0EjDhsvQQ507LUCnkbDp/RhirKSfOeD90hzKhExK
 lz6GUMrSTgSwAUp8tQgyR4KO99QUsDyXrGeV6govgIRjR24yNKRXpd1LIwCb8Ss34fcr
 Gl4bjFWsuzbxeFf9nxR3P13jxvXGiz3HJzhyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Yef5E9Iz9f+7n/5/axHFKoPE3pK/yUGvRPUha6xlga4=;
 b=cl8wM9O2sSFlZrnKjr8EI1E4rOdK+ZcM5y8oZCKHYixLhOOwUz2wByJSke4Su5xKk5
 s29fiDWBys2iMB1mEk08S6sR0GA1GBavnQ5B9ZKycNGaElK02E3w9MSSwb8IjKXBmDLy
 oru45N7NlJdgYVHbxRtIe8jYPxaywLFo/VG6W1TEkkbFniLzlFF+5Af3nn+sY7jbDOPL
 CW99kz7esdSCLgwOnzSHcioTuLnLRUqjwxfV9u3W5SDCap3PTDrQVGxtsAbEJ/9wiPGu
 YC6VYmEpTmgqkGNJFfqYdrY4mtc3IlueY5AiHqmvDkI9B0J0uA8b/pLwDVaX1tU17hlr
 gLbQ==
X-Gm-Message-State: APjAAAXeHdstI5TBuMjdHjTBcLloXhWxgq+73Nt0wq7EDMnr+spx8zzN
 9L3MxA6sOWvluaaU9hGiiDq64g==
X-Google-Smtp-Source: APXvYqzWBD1I2peLNGZ8oZB8HCxKXr/nilEmYk9UdRrkBuxVcnRpvCXNbkNsQ1EHk+MVHEtkecakyA==
X-Received: by 2002:a17:90a:f986:: with SMTP id
 cq6mr7452147pjb.17.1570557446108; 
 Tue, 08 Oct 2019 10:57:26 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h4sm19020736pfg.159.2019.10.08.10.57.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 10:57:25 -0700 (PDT)
Subject: Re: [PATCH 02/11] ARM: bcm: fix missing __iomem in bcm_kona_smc.c
To: Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
 <20191008123453.1651-2-ben.dooks@codethink.co.uk>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <b48a1e81-7246-7f2c-8077-09f28c21b44d@broadcom.com>
Date: Tue, 8 Oct 2019 10:57:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008123453.1651-2-ben.dooks@codethink.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105727_065397_6FA26694 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@lists.codethink.co.uk, Ray Jui <rjui@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Scott Branden <sbranden@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-10-08 5:34 a.m., Ben Dooks wrote:
> Fix the following sparse warnings from a missing __iomem
> in __bcm_kona_smc() function by adding __iomem attriubte.
>
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21: warning: incorrect type in initializer (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    expected unsigned int [usertype] *args
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    got void [noderef] <asn:2> *static [toplevel] [assigned] bcm_smc
> _buffer
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    got unsigned int [usertype] *[assigned] args
>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> ---
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> ---
>   arch/arm/mach-bcm/bcm_kona_smc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-bcm/bcm_kona_smc.c b/arch/arm/mach-bcm/bcm_kona_smc.c
> index 541e850a736c..43a16f922b53 100644
> --- a/arch/arm/mach-bcm/bcm_kona_smc.c
> +++ b/arch/arm/mach-bcm/bcm_kona_smc.c
> @@ -140,7 +140,7 @@ static int bcm_kona_do_smc(u32 service_id, u32 buffer_phys)
>   static void __bcm_kona_smc(void *info)
>   {
>   	struct bcm_kona_smc_data *data = info;
> -	u32 *args = bcm_smc_buffer;
> +	u32 __iomem *args = bcm_smc_buffer;
>   
>   	BUG_ON(smp_processor_id() != 0);
>   	BUG_ON(!args);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
