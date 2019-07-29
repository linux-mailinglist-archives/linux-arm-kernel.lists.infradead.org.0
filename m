Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A207968C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6eob+y6rmxvaKz++g6XR3p9hRkjFu14ED9xBCkxSv4=; b=jePrtH4OnN5j7Q
	Kj1313NWqOWPHEiXtlbGRJU+FJYINTJZg9mHax96vS1Z+cLFafZaYITevItCdku1q8EkPaX0jdoX3
	dJB0M30Dxem2FGF6DDPI52MScWtkfubFY/5xzlXNMxl3EFDphOed5K1obeTrDYKklRubmAHxkspfi
	PYVCsyR0Y2gnAPE1Km2R1Yez7QZ+KRU1a4QLhSlugxCmWPBPnJcQTIrLLqg0MBMhFL+UvCatdqXRN
	IH/oSvrHNIkHmJaCPDL/VYh2Wc306Eea4GXmyVIeRcd0G959mPjZCZU13bvydOkRUwEhU/wtFBnTx
	O9D8gnQN6UPEWkK1G/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBhd-0004nG-Iq; Mon, 29 Jul 2019 19:53:01 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBgH-0003pq-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:51:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so59753275lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 12:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=El7Ib0jTQtxwv9EQk3d/9hKJrGZteddjh0+HIjhP2fo=;
 b=kQ7u2Z5De3ynsZA4y1P68rxHq30RnVHHlC09c4hOT6vJoDwyIv6DSwaSTbaVAM92Pv
 1TahDbRIHgs/SWIeE6HzY6g9xHQ51ZQ5zZYicb15lxBgunoQ/egqY4zSsFVzcZvsJ9z6
 /jkH3fkKht0WAtOabiND7dhBWBZLBAmy/ckrfV3RVnvJEODoamQy182/Y1NfIbPyZbd/
 1ZUE+uEJRDrgK63qsJzjL0eMxk9Gtdfdtrp+7Ny0zciaIr0gjghMGsvkVFZhTqlbo46e
 jnp85j0bXEkkyE7GICxMVSEZitxSjBtcaBUblR9nc6GmO5npRlHqhqNnxh44LsNKm9OO
 VePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=El7Ib0jTQtxwv9EQk3d/9hKJrGZteddjh0+HIjhP2fo=;
 b=bk8rK/33Hp/P1KfPoCHyqlG6OWoSDYwpFoCi+mlzgXIP2Ex+KB1fLeDuYGswdsX/Ol
 DrzPYTrfIx+2yXQhuXUZ23iPtKHWrH3trcN5AJ9gjrBM4k0V6WaTR2ZOs7Wdvm6POYpO
 xzTZfyvQU6dT8yXSWLL+uMMMKMftVqkkGc76B/qjP6rCXfjUN377AlrsqcWzRyR2IXQF
 6MjbGrUM++NwEs9BD5cHaDfezMV6ZnkXlCM9sHQ4Wv6inM9MLE6CSKc87mfsYPmtjb1g
 2VHuEJtfmX+T+aHRVEcKRrVRcLOtS1Y/2AeFFpyMgY+WS43vhPBoukmiOjskT2hf0Xsn
 gmUw==
X-Gm-Message-State: APjAAAX9zlPZ/6z7SklXD59bcPXffguDDScH/EUf1imPat3tkSj3EjSb
 sJchUBTFLgg9v7/H8a7zSDs=
X-Google-Smtp-Source: APXvYqwmerTp9GT9ypUFcw81F3w6Ua2ebUM6nBiNjoQILyLAd8+1+ULuFfpyzKPNNcwa9HX4Oh8pTw==
X-Received: by 2002:a2e:9048:: with SMTP id n8mr12228496ljg.37.1564429895116; 
 Mon, 29 Jul 2019 12:51:35 -0700 (PDT)
Received: from localhost (customer-145-14-112-32.stosn.net. [145.14.112.32])
 by smtp.gmail.com with ESMTPSA id y12sm12077703lfy.36.2019.07.29.12.51.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 12:51:34 -0700 (PDT)
Date: Mon, 29 Jul 2019 21:51:34 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH] MAINTAINERS: Add Geert as Renesas SoC Co-Maintainer
Message-ID: <20190729195134.GF3186@bigcity.dyn.berto.se>
References: <20190729175658.13672-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729175658.13672-1-geert+renesas@glider.be>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_125137_992647_412DF8CD 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert, Simon,

On 2019-07-29 19:56:58 +0200, Geert Uytterhoeven wrote:
> At the end of the v5.3 upstream kernel development cycle, Simon will be
> stepping down from his role as Renesas SoC maintainer.  Starting with
> the v5.4 development cycle, Geert is taking over this role.

I would like to thank Simon for his good humor and support in all my =

interactions with him as a maintainer. And wish Geert the best of luck =

picking up the baton, not that you need it I know you will be just as =

fun to work with.

> =

> Add Geert as a co-maintainer, and add his git repository and branch.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> ---
> Stephen: Can you please add my branch to linux-next, after Simon's
> 	 branch, which may still receive fixes for v5.3?
> =

> 	 Thanks!
> ---
>  MAINTAINERS | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6426db5198f05377..6de667021591fb52 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2155,10 +2155,12 @@ F:	Documentation/devicetree/bindings/arm/realtek.=
txt
>  =

>  ARM/RENESAS ARM64 ARCHITECTURE
>  M:	Simon Horman <horms@verge.net.au>
> +M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git n=
ext
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel=
.git next
>  S:	Supported
>  F:	arch/arm64/boot/dts/renesas/
>  F:	Documentation/devicetree/bindings/arm/renesas.yaml
> @@ -2269,10 +2271,12 @@ F:	drivers/media/platform/s5p-mfc/
>  =

>  ARM/SHMOBILE ARM ARCHITECTURE
>  M:	Simon Horman <horms@verge.net.au>
> +M:	Geert Uytterhoeven <geert+renesas@glider.be>
>  M:	Magnus Damm <magnus.damm@gmail.com>
>  L:	linux-renesas-soc@vger.kernel.org
>  Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git n=
ext
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel=
.git next
>  S:	Supported
>  F:	arch/arm/boot/dts/emev2*
>  F:	arch/arm/boot/dts/gr-peach*
> -- =

> 2.17.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
