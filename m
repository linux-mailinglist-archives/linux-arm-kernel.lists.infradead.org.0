Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDD5E85D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xX36BbfJgEHP0Zz4x6qlTWb/kMjqjnk5pYisK6EWwwI=; b=DgW8Npooe+0rZo
	eVZ/JXBqrRH9mJ3nQFASEE6tyXhueXEK6t5GSWZWGZzQsjvuGJZMGGcbouetW5rCPhcSm6m06UBZU
	AWRassQ9b4OFr1jgOaQ3zePvs8eM9xzpgqP+dPy5Li51db2u6+eaR2OCxnh+RK+iAwYzZcxAJCQEt
	6/kmGeIsQLZpsfXe52wjTJjs0E9VBQ/AhrLk5mKn2ed+BCn4FEsKD4kl4H81nn+P+bxL1OPBWN0F+
	moOYlLTrJDPkRYwJIkEDV2zMVYoMPZx6aJn7AnAfSbbKCjQw9CRPWeOhjtjHe8RLf2c4E+bHeabto
	kKYqBpp60xbAEB8L0xDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9lC-00030M-52; Mon, 29 Apr 2019 17:08:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kc-0002Wa-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:37 +0000
Received: by mail-lj1-x242.google.com with SMTP id q10so10058668ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zk81bNPKur64cPXtKVvKLHynChCl7QPYJgyx3psVnEA=;
 b=i2+4uq/gNBNFWLcVSUe1PldgdJwFEwpZVJkxIxfjy+p0GjjM41kwhQBrFNpqvzUQ+W
 8KCktckXrC/cc/B7AyHR0W2KSA7Fmn1WdFhg1MwQiUb9w4sjJ4aZNgAc4LL1VJSPnG2P
 exjgiiyi0GcFj01sZLTY/Uy2tk3J4pTNTmyDKlB6+TKZgc6Cn7fae/MFIevIjSbONGPu
 DUFfMD9Q1H2jjLtTxM9fQt9Rtjqgk5ZJVjeLZ3SvkjQ3LqY/fb+8n4WVh3Kg16/B47yq
 5HTTE24+w3so0QPH91h1sm5JgwT+0sfBLSkl/ekqYo/mr8EKR1BpOpOxqOgxI79gUZ63
 vB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zk81bNPKur64cPXtKVvKLHynChCl7QPYJgyx3psVnEA=;
 b=Uub9kppNEyykUHhO50kVQV4vnmcoCu43GJuZPrf8sqWyQ0P7IAyBSVWLgOrbttLViy
 gA+STvm4YcqmM62WDc34C77eggj+XzRD7WDQTQabMGVq4tIMaN5hToAwDfL+Psvsb2M9
 SfbwYSzBqZhJZi6hnLptn9rbwqRW6WdLu1biIY85HYV3enxBqHL0AjLp1cIwDFPueGPY
 mkESOWPkWWgW6OeulFza5N4OxZWBY4vHDCrTedmk1aAIca4D+OWq4c7doTeWKe4sBV27
 U0aBN+nJgiKc70WswVVXHIqRyFENCWwz2y6x7mVIK+xJaOvTt6wkxhMPr9ui9NIe9+Iw
 rkIA==
X-Gm-Message-State: APjAAAWmxuysJAyHtmknITSauBHId9i+SA6dUDKUyam91OcHoEwrydWa
 3sPF8BzIOQyORKChHGn8yrEJ8w==
X-Google-Smtp-Source: APXvYqy83W0+0Rs1KlcCLfRCwm1bQeWmwHU5iEzeuNrfjhE79CbWOJu4bsuhn8Yrdx74vXJIPNsmtg==
X-Received: by 2002:a2e:99d5:: with SMTP id l21mr1790798ljj.113.1556557652860; 
 Mon, 29 Apr 2019 10:07:32 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d5sm2004612lfn.36.2019.04.29.10.07.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:31 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:25:48 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 1/6] i.MX drivers change for 5.2
Message-ID: <20190429162548.c5s7lahfceozt264@localhost>
References: <20190422082836.3734-1-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422082836.3734-1-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100734_953185_114FCA6B 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 04:28:31PM +0800, Shawn Guo wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.2
> 
> for you to fetch changes up to a7e26f356ca12906a164d83c9e9f8527ee7da022:
> 
>   soc: imx: Add generic i.MX8 SoC driver (2019-04-20 21:26:36 +0800)
> 
> ----------------------------------------------------------------
> i.MX drivers change for 5.2:
>  - A series from Aisheng to generalize the SCU powerdomain driver
>    for easier adding new SCU based platforms like imx8qm.
>  - Add a generic i.MX8 SoC driver for reporting SoC and platform
>    information.
>  - Replace explicit polling loop with a call to regmap_read_poll_timeout()
>    for gpcv2 driver to avoid code repetition.
>  - Use devm_platform_ioremap_resource() to simplify gpc/gpcv2 driver
>    code a bit.
>  - Add general IRQ support for imx-scu driver, so that interrupt of
>    device like RTC, thermal and watchdog can be handled.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
