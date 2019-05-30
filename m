Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDFA3031D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 22:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEdBZeNAHWS17IieOqc3/WU+/MvkQKvBeyXJkEs59iI=; b=Wby62QwThzP6ji
	YLM+uJxsjGKgGL6HHtQZ+zA6W4a32JM2pYYyYxwba0IfoBzabkxxP8mxvPIDa0/q1CUEmlsUFOqdt
	9Lz0Jq30adJ0AOs/Y6tOefnSytASQZ0vnlO3T5H42HGQj86bldhzD7K1ZNSrQFavcpW09ETAtJIac
	tYnKUP0ZMwclHJPw9X1FsnjwasM2J1g5MdZ1bP3/XC12RhtLTs+Oizk642n2na84CrvtiMtEa8tN2
	h97Cq2b5LfdfWPoTfjsW+tPjObKWZSrGcifN0+03YuruRgP8ZbHQQRR1kDFGQZOAia8lUKHOLLDQx
	xD/NnYfNsVhVUs0VGt9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWRGZ-0001cH-JC; Thu, 30 May 2019 20:03:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWRGS-0001bW-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 20:03:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so2989955plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 13:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2lPLzJqwQdUonah81Fn0G8uV1MZBo0Fm5r4V6VKVMeI=;
 b=DsivkJw4Es6HQ8KD0K6NSaNjC7uhT1ySFBNA95Y6sB2TL5kg2RvKja64s9ElqBf9v9
 VVfUBo9J8jeG1+swJxmkGuYj30DGUAWJxzzSe8TLw8asAFPkKkZxffmpht2HOV77jxDt
 XQ5rT8divYDsU8knMwFWp/nFWYqAy8JqGN6C84pV5b48/vdxCAADvumuvUQpSUnNI951
 mVxXLZPilvpLT68Gbv6gm7dcs2SYLGyNz87YatKrPS9hSlp0jOpxTGJ4wmUa27O6HnLt
 FbnerE9PgmUixmUHG6v2ISrnpz8CQLNsigd78n0J/YYzS3cF8LM7DtDbLPgH+C60sExP
 71IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2lPLzJqwQdUonah81Fn0G8uV1MZBo0Fm5r4V6VKVMeI=;
 b=SDcXces3V11WkPIFUDfoUydX6wc6rkfzzK8mrwdwvr7dIuiY1fHt3x7JovVARDsJ2N
 nyUMYvkEMd12WdPvI73x4gHnceEyFg5eztIoM7bJZsYDrm+ZezN662ZOdHbe4d4SAi8r
 pLgw7ZLO5ExCL3J03umb/28SwxqXwxGD1X4gSqK9ouvQtR8KCKDoA+O/xhuxLiv3BnNU
 Jbb0+wGnIPGiqj3CgjMq/0aVMHcmNT+57qD1VBNGOJRHJizgmob8zHAGO5M/15h7axgJ
 JHVxRET2V3UZrZf1mnKnm/pTX6HJk9xIIlerCNbXM+Cdh8Ttazjkjge9+A8j0BORxwQ4
 sN1A==
X-Gm-Message-State: APjAAAU+UqrNtkCdfCBCWHLwhJmMI7ztIZYxb/H3tBnxsiyp2xqg4sTH
 B4xFpkYH7VJXPjeR/X1UeSyOUA6S4eQ0h6O+Fb29Bg==
X-Google-Smtp-Source: APXvYqxSJo2SxIYJJUhtNH89Bhxn6pFLZCQcs8teWV7dX2XsDdeokVaG8wMWOWSWrhw2oHDNkWQNsKqpflGfHxu+LcY=
X-Received: by 2002:a17:902:b944:: with SMTP id
 h4mr4486763pls.179.1559246579947; 
 Thu, 30 May 2019 13:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
 <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
In-Reply-To: <5ead0fe96f7e5729e4a82f432022b16cb84458a6.1558996564.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 30 May 2019 13:02:48 -0700
Message-ID: <CAKwvOdmsHxyPU2O1vZ-Mah-E5vTtEWKHStp2EQCiE4A55D8xDQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] ARM: OMAP2: drop explicit assembler architecture
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_130304_467856_E27C3A04 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com,
 Rob Herring <robh@kernel.org>, f.fainelli@gmail.com,
 gregory.clement@bootlin.com, Russell King <linux@armlinux.org.uk>,
 krzk@kernel.org, arm@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net,
 Arnd Bergmann <arnd@arndb.de>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 rjui@broadcom.com, ssantosh@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, sbranden@broadcom.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, nico@fluxnic.net,
 LKML <linux-kernel@vger.kernel.org>, kgene@kernel.org,
 Olof Johansson <olof@lixom.net>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:41 PM Stefan Agner <stefan@agner.ch> wrote:
>
> OMAP2 depends on ARCH_MULTI_V6, which makes sure that the kernel is
> compiled with -march=armv6. The compiler frontend will pass the
> architecture to the assembler. There is no explicit architecture
> specification necessary.
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Acked-by: Tony Lindgren <tony@atomide.com>
> ---
> Changes since v2:
> - New patch
>
> Changes since v3:
> - Rebase on top of v5.2-rc2

Hi Stefan, looks like both patches are ack'd.  Are you waiting for an
explicit reviewed by tag to submit to
https://www.armlinux.org.uk/developer/patches/?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
