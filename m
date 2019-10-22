Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A67BE01E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 12:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oN14Fbrm8Z7NDq0yatlQPm4Sbz6n/xdUqiiwjRcZhc=; b=O9GLag+391PsHr
	KQkEoKBZHCcuDw86eXQSR12gV07gbM6w9VfYeRALeL4K6XRKXIrWsZ2wcZR+IpRHWGf/U8GCohHrH
	GTwTkp7jSdBU4adjWgfln4J5UXAdw/K+PgQAkg0jucvwou9rltJJ9fLnad2bNmghOfvA2+FBeuJfX
	02ZXW56l3zrEu417zl2XT721EzQFnY/FqKrv2RfCoqXs/FQN/nKNR32oZuF1Q6zEGNicW16rTWnFN
	svs/j4jaSAPsj4L6mmAG1C7aQduffm1JxtYrFxacQaTYOckBYN0aSHjhP4XOV66CLfKxX3kcXRSpD
	he+PM7naviYYRjUtii6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMrEj-0003Lf-Vu; Tue, 22 Oct 2019 10:17:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMrEa-0003L7-Rj
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 10:17:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id q78so1415515lje.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 03:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UPQHJmcEnXeH/iiZIyJlOmriHnC0d9InpVAG+IS31RU=;
 b=h/3Uo75yRFQRRe+mjVmd8cMUmSai80wzLccdR09BlGw6HnocUgAczaz4IgYFRWgG3H
 OJdRbFB9Mz9fLShfMfIQz/v973qofYhFRWlTSouwX+s3dVq2XD/i9xdJL7HBCWbL6ait
 GeYoY67YnMUOYKMguf97VQFeB/gYvg8+cWRaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UPQHJmcEnXeH/iiZIyJlOmriHnC0d9InpVAG+IS31RU=;
 b=Qz/IegDSbBXEFz1gAr/adtMfuXuHUbC+BEyvJF8JG1eRkKo4CT+Odbcz+KLnYgz+Cc
 QH6CgTebJdIYQsYTlTb9wUwn4DCPbF9ZP2zCHFaXtjnEHHFaqw3ixf/GWATLKFTbj6XA
 Ckcmh44gAw+y7DYzzwNywaBEn9zWHSIu6E1nda8KxC6FdmJZNzLd40ZmsWF1Jc/Zkrke
 RWsVA0T4YQbo85oBTTuI3ViqMLKLXibaQALjgRE9NEH866SFqHtu3+EhWjXjsfFpeK86
 0WbZgJsBoIHwUOBK5enmrYmJyhEejvtjx0ITFTm788hOOpVOhBgBDQIVZ2ePme6vLUhT
 gsOw==
X-Gm-Message-State: APjAAAUeQwPO5W51ofOcDC+W/B41tRMAIghRtnnyaZyxayx2L3UAP0pT
 DN2xpCYLVbL/dRMQcQu62bdZ2d7/r3egHV6+
X-Google-Smtp-Source: APXvYqwrLO6yXk3q5+ZZIbKEWNFhquBa+3kRuXdGYBzSGzi6Tc86djtM/ixn33Sd74ROetfVBAw3WQ==
X-Received: by 2002:a2e:8716:: with SMTP id m22mr10796456lji.102.1571739466229; 
 Tue, 22 Oct 2019 03:17:46 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id b19sm7866434lji.41.2019.10.22.03.17.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 03:17:45 -0700 (PDT)
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Qiang Zhao <qiang.zhao@nxp.com>, Leo Li <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
 <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
 <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
 <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
 <VE1PR04MB676825D5709839AEF75ED44C91680@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <43033011-1a2a-dea3-e3c9-75895f997407@rasmusvillemoes.dk>
Date: Tue, 22 Oct 2019 12:17:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB676825D5709839AEF75ED44C91680@VE1PR04MB6768.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_031748_895256_990837B2 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/2019 04.24, Qiang Zhao wrote:
> On Mon, Oct 22, 2019 at 6:11 AM Leo Li wrote

>> Right.  I'm really interested in getting this applied to my tree and make it
>> upstream.  Zhao Qiang, can you help to review Rasmus's patches and
>> comment?
> 
> As you know, I maintained a similar patchset removing PPC, and someone told me qe_ic should moved into drivers/irqchip/.
> I also thought qe_ic is a interrupt control driver, should be moved into dir irqchip.

Yes, and I also plan to do that at some point. However, that's
orthogonal to making the driver build on ARM, so I don't want to mix the
two. Making it usable on ARM is my/our priority currently.

I'd appreciate your input on my patches.

Rasmus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
