Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D37133762
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 00:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHz2WFnCQUoawjOUs4q4sVB9k7ARtT4toKZiVD0ptDY=; b=HoVsXVMo+ylcYo
	qiqPHlBGq3+oUiJf05Yk3qOvCxhzdwZVx9u6vf5Nr5TOJoi2Fo8kv+gCPXA0icC62SMeBbJGp7vp7
	xuJkQip4qCDT+mi3oKcWhKOLaKAdW0qLF9JX0iGtB9mH8e15YogvvvoV6zg8uSa120/nVVySc+wKW
	1KgJhOtlQEMaXRtUa1ch4Bt+LdlMU27VzLfEaE5tLfFRa01VYSAVovmRjgXE++FejhU9Q9jypdMaa
	JrZDy7ofaIRyApUtiyJ7/q0i6+Bb+fbMoftlun0oef4M8LCBPzN7jkjupozr5ZPVANqF5snjnPmoW
	DwP6rc/4X5ocBJFNXiwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioyFe-00037q-20; Tue, 07 Jan 2020 23:27:06 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioyFX-00036e-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 23:27:01 +0000
Received: by mail-lj1-x244.google.com with SMTP id l2so1366918lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 15:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IjTxC1FiNozeI8fwV+AfSJ/Kn6P8fUH4jlMJdxPN5HU=;
 b=XCG5rrqAtzsyhbl2V9392ti0zcF3zJgOsQVo/QmWRKwygcFbkmffauQmt57TH0cXiq
 PSOS1Br9CeQhTaqPREAHxsu33GK93w/7lSmJgntSQFgIFkTgQFpEjxs6yYRtT6d0EhCg
 a46GhaQseqsHlQ5oSRPv+NsvLJnjHEx7oYQH0DdFbjb+Iv7TGQMGK5qLnKIMcGVRfpyt
 +KohQi2L/FG5NdfirdOcggSHMAf7cU3Tx8ZOHjJBExYv4nPSjD0535QC8IhIOFb06xSx
 fZCb3fMIXUsV0tn6z/1lBZGc0wH+WERZcQDvQeSCazoojs5NvzHo6raP2JJz+9NUWKYZ
 LKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IjTxC1FiNozeI8fwV+AfSJ/Kn6P8fUH4jlMJdxPN5HU=;
 b=Lhj0etOo5zBVCvzX2iDaehfhizOgKiBDprec4uJpKj45xfspX0mFR6WABYEAoK8+LA
 /PXkL/w3J18X3T+yQqN4Noh4rRtEg0zafY1rXkaXnkJ2FdPUluq81tadWUkg9OZVePWX
 XLgr9dt2h6q44EB+pSAV7qnF3azRCz6u6wznyDUHfl6QzULv24bowmJHSvZ3liyG1rYS
 jRy1H1EQUA+WcTC+w9w3IfiDiOvz+B5zurpjmc5glu73ySIzYpXP/ofUbha92KAwd1UA
 pYwNxuGHFTs+6UE+2wkTDNprLtEaFVGNz1pbLkmyIUT5RyAsq0x7PRUDrFqyWaBncbXk
 6p2A==
X-Gm-Message-State: APjAAAXM8Eg72eIPPbgwGmKvYokbzOGxabhf5WO0rt8/NZt8OifOqI4f
 7T5oTZc+ufWx1N/FMp3kk6IoBg==
X-Google-Smtp-Source: APXvYqzI+Sfb+B5FpEUaIicFBEm/VR5Uqn3EtTC/EH9bjza4YElEGw8QUnFBkginCFXQRjQnntKpYg==
X-Received: by 2002:a2e:3608:: with SMTP id d8mr1105809lja.152.1578439617424; 
 Tue, 07 Jan 2020 15:26:57 -0800 (PST)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
 by smtp.gmail.com with ESMTPSA id 2sm408365ljq.38.2020.01.07.15.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 15:26:56 -0800 (PST)
Date: Wed, 8 Jan 2020 00:26:55 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 0/5] arm64: renesas: Split/rename R-Car H3 support
Message-ID: <20200107232655.GR533370@oden.dyn.berto.se>
References: <20191217183841.432-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217183841.432-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_152700_059004_CCF71F9F 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Nice cleanup of the otherwise sometimes confusing names :-)

For the whole series,

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

On 2019-12-17 19:38:36 +0100, Geert Uytterhoeven wrote:
> 	Hi all,
> =

> Despite using the same compatible values ("r8a7795"-based) because of
> historical reasons, R-Car H3 ES1.x (R8A77950) and R-Car H3 ES2.0+
> (R8A77951) are really different SoCs, with different part numbers.
> =

> Hence this patch series splits the config symbols for R-Car H3, and
> renames the related DTS files, to maintain a clear separation between
> early (ES1.x) and later (ES2.0+) SoC revisions.  This will pave the way
> for configuring out support for early SoC revisions, which can reduce
> kernel size, especially in the pin control subsystem.
> This is similar to the recent split of R8A7796 symbols for R-Car M3-W
> (R8A77960) and M3-W+ (R8A77961)[1], and the related DTS file renames[2],
> but different due to the sharing of compatible values between R-Car H3
> ES1.x and H3 ES2.0+.
> =

> This series also includes the rename/cleanup of the ULCB DTS file names,
> as suggested by Eugeniu Rosca.  As DTS files are already being renamed
> for v5.6[2], it makes sense to combine them with other renames, to avoid
> inconveniencing the user with multiple renames in multiple kernel
> versions.
> =

> The pin control part will be handled in a separate patch.
> =

> For your convenience, all of this is available in the
> topic/r8a7795-rename-v1 branch of my renesas-drivers git repository at
> git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.
> =

> Thanks for your comments!
> =

> References:
>   [1] "[PATCH v2 00/11] arm64: renesas: Add r8a77961 support"
>       https://lore.kernel.org/linux-renesas-soc/20191023123342.13100-1-ge=
ert+renesas@glider.be/
>   [2] "[PATCH/RFC] arm64: dts: renesas: Rename r8a7796* to r8a77960*"
>       https://lore.kernel.org/linux-renesas-soc/20191211131311.23661-1-ge=
ert+renesas@glider.be/
> =

> Geert Uytterhoeven (5):
>   arm64: dts: renesas: Rename r8a7795{-es1,}* to r8a7795[01]*
>   arm64: dts: renesas: Drop redudant SoC prefixes from ULCB DTS file
>     names
>   arm64: dts: renesas: Sort DTBs in Makefile
>   arm64: dts: renesas: Prepare for split of ARCH_R8A7795 into
>     ARCH_R8A7795[01]
>   soc: renesas: Add ARCH_R8A7795[01] for existing R-Car H3
> =

>  arch/arm64/boot/dts/renesas/Makefile          | 21 ++++++++++---------
>  ...salvator-x.dts =3D> r8a77950-salvator-x.dts} |  4 ++--
>  ...795-h3ulcb-kf.dts =3D> r8a77950-ulcb-kf.dts} |  4 ++--
>  ...a7795-es1-h3ulcb.dts =3D> r8a77950-ulcb.dts} |  4 ++--
>  .../{r8a7795-es1.dtsi =3D> r8a77950.dtsi}       |  4 ++--
>  ...salvator-x.dts =3D> r8a77951-salvator-x.dts} |  4 ++--
>  ...lvator-xs.dts =3D> r8a77951-salvator-xs.dts} |  8 +++----
>  ...es1-h3ulcb-kf.dts =3D> r8a77951-ulcb-kf.dts} |  4 ++--
>  .../{r8a7795-h3ulcb.dts =3D> r8a77951-ulcb.dts} |  4 ++--
>  .../renesas/{r8a7795.dtsi =3D> r8a77951.dtsi}   |  2 +-
>  ...960-m3ulcb-kf.dts =3D> r8a77960-ulcb-kf.dts} |  2 +-
>  ...{r8a77960-m3ulcb.dts =3D> r8a77960-ulcb.dts} |  0
>  ...65-m3nulcb-kf.dts =3D> r8a77965-ulcb-kf.dts} |  2 +-
>  ...r8a77965-m3nulcb.dts =3D> r8a77965-ulcb.dts} |  0
>  drivers/soc/renesas/Kconfig                   |  8 +++++++
>  15 files changed, 40 insertions(+), 31 deletions(-)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-es1-salvator-x.dts =3D> r8a7=
7950-salvator-x.dts} (96%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb-kf.dts =3D> r8a77950-=
ulcb-kf.dts} (75%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb.dts =3D> r8a77950=
-ulcb.dts} (89%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-es1.dtsi =3D> r8a77950.dtsi}=
 (98%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-x.dts =3D> r8a77951=
-salvator-x.dts} (96%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-xs.dts =3D> r8a7795=
1-salvator-xs.dts} (96%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb-kf.dts =3D> r8a77=
951-ulcb-kf.dts} (75%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb.dts =3D> r8a77951-ulc=
b.dts} (92%)
>  rename arch/arm64/boot/dts/renesas/{r8a7795.dtsi =3D> r8a77951.dtsi} (99=
%)
>  rename arch/arm64/boot/dts/renesas/{r8a77960-m3ulcb-kf.dts =3D> r8a77960=
-ulcb-kf.dts} (92%)
>  rename arch/arm64/boot/dts/renesas/{r8a77960-m3ulcb.dts =3D> r8a77960-ul=
cb.dts} (100%)
>  rename arch/arm64/boot/dts/renesas/{r8a77965-m3nulcb-kf.dts =3D> r8a7796=
5-ulcb-kf.dts} (92%)
>  rename arch/arm64/boot/dts/renesas/{r8a77965-m3nulcb.dts =3D> r8a77965-u=
lcb.dts} (100%)
> =

> -- =

> 2.17.1
> =

> Gr{oetje,eeting}s,
> =

> 						Geert
> =

> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
> =

> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
> 							    -- Linus Torvalds

-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
