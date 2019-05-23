Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AC627346
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxSkriDKl11CzQ7U0Olfg/5osJZZ8UrCoOSpA/LuzAo=; b=KQGtSeKvYU3UjF
	AMDYD2t+StqjdS5FNjL7lJ6hAOINiOZy/eDcne6VmYeE55njMiL13J/YMY93AuTb+9JUg42dDbbg8
	lYBuCEhoSUI0wQej1GVJlL0O8CfRyl3nkuDVQwElxiV3cPYjIn4K1jz3nLbpxxMnx7g6B5GJ8fqfa
	MoAddgCK/ipY4ddB4Md5yrPqwMubYIpCtMuGaGfQ++dkyPW6HNbj/vyYjiXtu5/+y5ZkXR/se/GAG
	Mbk/lE15Vmh3/XrXnGzXmsoboMj/eVFYQwsb7vhrxOnIJitO0UOhvJRSvanAjw3rLFxroUYhGTU3T
	zs/PeGXSkntRenZ6viTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTbaf-0007OV-Lc; Thu, 23 May 2019 00:28:13 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTbaX-0007Mw-7b
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:28:07 +0000
Received: by mail-it1-x143.google.com with SMTP id g24so6457201iti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 17:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N1ZKdXuHqQDX9bAfT1YFTd2QvlxFeCH9fgwUX8yc9KE=;
 b=abNCfJ5VHKIVCXewFBfsLMOhLJw+NeIEx6g1zIy0zQq4pU3pfHm+uAwUrMQ4Y1holN
 4B4S+0LtuU2Y4LIlU1q9v3q1nBMV5/xXP1i6xsv3RFge/01IBQJWGlvLbwyiWqa5dSHM
 82p30p9s+sb4aXo2iOOQh5X6wrkiWfDaqG3W8Npn9xZUWzPErAzeW99rQr0i7uRIBVhi
 mSpoPE61GpleFymru+vgmUbuZZP7CwxW/d/E2ygV1i7oBaTgdupTbYIcOR9NO9TvgdVa
 GdiLatiRnuxXb8dAaseGckhljv/JDFONnL1fN/wcaqbYvjUJsyJKqthrtYQYHE6MgoL7
 qyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N1ZKdXuHqQDX9bAfT1YFTd2QvlxFeCH9fgwUX8yc9KE=;
 b=WX8hYqMo+RLi4176uFih0iLXHP3uSlzZrf7gi+Poxc0YqjoNnh+tla+p7b81r8A2D2
 WK7cDCak7Gi8fuIlRReK9wzAa/MehT/TvS70Ks62qA6FLWYwQadG8g6QgkKqToaciJyl
 Nt6bATqUIy8EwUgDyibwF/Vvd9tG+fob0xVnzLMglbazVy4St6v1kzQnjiOWkTI9JT8f
 c41MbRSEHH4HQWWJZQsFC6MfOd5Aap1a6oss7d0Sz9YDBAALOhsuZyxA8OLNYL3KDPg8
 u7SLOwaL8kJkQKp/jNDRms9q8uv6nC4l566Iy9YPxESvKIXWsUBl2N8rYlylrZyGaQ5m
 xruQ==
X-Gm-Message-State: APjAAAV0OElJORFgavhnXijAvKv8aUpw/jGGkZIwWDAJNU0C15ProY5d
 h5QhJfMlzeve8B4fFYFc6VgnpbEnU5SXZQscyX4=
X-Google-Smtp-Source: APXvYqziPV25rCpVRTxdK1Y4p/vM1Z13HbG9u+Sjr7o6eJ5LIyO6+zdwbF3RcHc6GzncGF+K2vLYN2OZ1ltss7e7QDA=
X-Received: by 2002:a02:ccea:: with SMTP id l10mr27164995jaq.111.1558571284154; 
 Wed, 22 May 2019 17:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
 <20190522071227.31488-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190522071227.31488-2-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 22 May 2019 17:27:53 -0700
Message-ID: <CAFXsbZrRpOK6SyRzwjNwrE8qnH1uQEO19hiJHxicNZ4pU6c9Bw@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_172805_299439_45CEE4B3 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> RDU2 production units come with resistor connecting WP pin to
> correpsonding GPIO DNPed for both SD card slots. Drop any WP related
> configuration and mark both slots with "disable-wp".
>
> Reported-by: Chris Healy <cphealy@gmail.com>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> index 977d923e35df..5484e4b87975 100644
> --- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> @@ -625,7 +625,7 @@
>         pinctrl-0 = <&pinctrl_usdhc2>;


Reviewed-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
