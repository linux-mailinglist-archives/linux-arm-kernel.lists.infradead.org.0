Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F7919FB14
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlqGP7L25bbbwA5CbdSBQI3yjVh18UngmRVgn8htTGI=; b=KbO1rL2ltGluaJ
	66Q3xIX03DH1CTKQoQUVwPfCnEU1zyUScjNsVEGllVo2lV97PeFR+VGqeOv+3dQ1C26ymVNy6wQbS
	eV8TRFWhZzP9Bkkr/Csg8Sw1Pv03ZnJxLuJXYTudnQkHNmDy7N1XzLVwsfS47xi+FHCYIAAisWz7i
	xvxqlT9FPxz0FNjc0K7xt8RtQhilCwUDES2QI+1ZwO7fS0n8PhQsggATv9NP6I65AKSO1i06FrHEg
	jvmqQUS2mQdsev9aRjWYEk56oyVBUeHtWj4Q9N2wCsOrwqRPY8angGgk5OYZKDttn42/i7iZTIdHW
	7geM4NZ/y2xV5sLl0MPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVIL-0004Uo-Vz; Mon, 06 Apr 2020 17:12:21 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVIF-0004UM-ND
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:12:17 +0000
Received: by mail-oi1-x243.google.com with SMTP id d3so13787418oic.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 10:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zPvT9nYNJKIlI18d6CVFeb9HSS66c5aP1HzV/cwJ2iA=;
 b=YFFDLodFgLBNXipDdFrKkNe5KdfTMuCuUWZy9SOzDynX4/zoxOV+WL+e0NBF5wHS7m
 K2xlX4c+mLFB9R0QcvfqTnPOmVGKFzWOkG0iWwmF5LCzw0E9UWVqly7Dk1SprNmYgm+h
 JHYWexqjTq7egHo0iQyTN6kM6LF95CTs376RuckrF25VCJ2Z1rqm1kddE2D/SyXjf2bG
 DokPYV1pM8Hf5N2wOszDExe9/Qod7xhRTogKLDusnPpPe3+MMRPS2qVMiHqhYwcbAfjI
 kK+ER38azeo+YgVLCUzXCojrerc6K8VZ5veCSkvCLyJ+ADzkhjmedRaVE1hz86ekYpsN
 PL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zPvT9nYNJKIlI18d6CVFeb9HSS66c5aP1HzV/cwJ2iA=;
 b=byQMwEjl+zpDhMEfd+7wKb25wwYKJXIWt81TQw29VblY2qxz2Fi6hdbF20wdwqutQC
 SPFD9cIDSWJXQgkMPPkZSHs2f4Qqte2LQFr/1W4d78qTbQLOnAQWfOl8oda5+4bikXDO
 rs1qvQ3CoNPkqQru5rSnBpwaNRz2nDjT2890+aQ/Zo7eaPwdLSy5d4ai7AbdMISoiAPd
 YTJi5Xd4EGKGMq0gcI8ilezmd6hcsMqKHftZi5g+XNoVxex+dWdP9SZqDoqBUPGV2MkU
 n051E6ecyunsn/d+BYNot67GalbnxbaumkUklptfpZf0eFYQ0aq5MERzeiTjQEYUGVIm
 KFMQ==
X-Gm-Message-State: AGi0PuaHgrBkfrEWCKEJtWKcNkFHUOygXtX8/nullBnnIHyAF4mLEuk2
 BICwMp1tjukq/lyufBRN18EGD5aWDgSeAni0QX4=
X-Google-Smtp-Source: APiQypKEN2WUc7C67Si85BMK8Rs/ssPmf30vW/UZKNuRyXpHzIcqTCLUJHaY3Of9rWarp68OvvmFfK4r3rsGvhQ8uHk=
X-Received: by 2002:aca:5d83:: with SMTP id r125mr304838oib.8.1586193134784;
 Mon, 06 Apr 2020 10:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406165108.GA7646@kekkonen.localdomain>
In-Reply-To: <20200406165108.GA7646@kekkonen.localdomain>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 6 Apr 2020 18:11:48 +0100
Message-ID: <CA+V-a8vxjJ4Fr2CAtRAnZCgmvoR+3m26DdAKPMOkSMYELDgZ0A@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_101215_758213_72F4B2B3 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,


On Mon, Apr 6, 2020 at 5:51 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Prabhakar,
>
> On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > 24MHz. So instead making clock-frequency as dt-property just let the
> > driver enforce the required clock frequency.
>
> Even if some current systems where the driver is used are using 24 MHz
> clock, that doesn't mean there wouldn't be systems using another frequency
> that the driver does not support right now.
>
> The driver really should not set the frequency unless it gets it from DT,
> but I think the preferred means is to use assigned-clock-rates instead, and
> not to involve the driver with setting the frequency.
>
> Otherwise we'll make it impossible to support other frequencies, at least
> without more or less random defaults.
>
Ouch! my previous version of patches switched the driver for using
assigned-clock-rates but I was asked to
not do so [1].

[1] https://patchwork.linuxtv.org/patch/62185/

Cheers,
--Prabhakar

> --
> Kind regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
