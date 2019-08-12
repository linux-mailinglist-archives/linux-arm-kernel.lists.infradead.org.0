Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AF895F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 06:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeBQjw2d/G6m3+g4uHbt09oKAXJWZ6h08wucnLMd40s=; b=Awo6Qm6ESV7J+L
	el2EujEjFUDv4nNnwPkZaissRUiJK818S0BJT3jEsgK0yySCYtJVPsg8kXdii9PzE332DxwCtoCSW
	UvG9gjiBK2ddBiSWc8iJjAF/HRUYZmYXOTUIt+dAjpbkxaORlomiILPiZaiXFVmyivOcepnmN0rFP
	y4eNWYldBN2PsN3hp7TFT+zFaeqnh0mpu2Vl6/rw0RYhVUYXW0Rn4haDbuNpUV6M6nRxPRdHd9i1n
	bffPTdzPVDDVf4f2JmalArFu3T/dtsVvYdHD+ynrMJB9n/2RG6kIBQuhebFlDBxJtlSLImLmSvaOd
	0ICPQKFXIquCLE6KhdHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx1o8-0003Iz-5B; Mon, 12 Aug 2019 04:19:44 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx1nu-0003Ia-Uk
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 04:19:32 +0000
Received: by mail-ed1-f66.google.com with SMTP id w5so13962277edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 21:19:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z4s3JUibN+WGVLqaHsLHxXIi1D8VvPq6c/60ITp5nIA=;
 b=taLl4DBtF5sBK1raQeooSbh20+yCtVBMOsrbRy0S71Au7dF3GBCN2XjLN+EU35bH6y
 Pjpqk/oQEhQ1dEDshJmWllXlipIJtIJsG9aveD3/0dnkbzF849/W/CjOP8mU6CAk7TeS
 kSbqYUq7QOpQvkrv6vq56658hKRw4hYuV3e5KI9MiZm82eHfoog48Lt/yIpnuZQYn3FL
 KjH6LCc3OOllIB+pqMKKK281ov2JdrftCM8yyrCNgxRMFv4djUmmv3c+lYEcjbn9Qb6J
 2PtKUdzOv5Y6jNiFeVtYAXjvIEHlrMWZiNqrAuH2lZs0TL8/A/FNTrhmjVCcT9uI1ovf
 bwcg==
X-Gm-Message-State: APjAAAXKTrSI48rPp3noH+9MuybuwzfkluUI7NuOLZymOKRcq4ujF3tz
 Qn1TNJp82UxEfxYtFhPui19GFPB7KdM=
X-Google-Smtp-Source: APXvYqyGCIRo5IsOmVUvGxUdSAlEfVjfV6ywwV+BO8zBxREG+7krt7dqD6QhtLme3unThNII3/TQuQ==
X-Received: by 2002:a17:906:e2c2:: with SMTP id
 gr2mr29305260ejb.284.1565583569259; 
 Sun, 11 Aug 2019 21:19:29 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id b18sm2006307eju.0.2019.08.11.21.19.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 21:19:28 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id e8so9733493wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 21:19:28 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id
 18mr25156704wmk.51.1565583568180; 
 Sun, 11 Aug 2019 21:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190811090503.32396-1-bshah@kde.org>
 <20190811090503.32396-3-bshah@kde.org>
In-Reply-To: <20190811090503.32396-3-bshah@kde.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 12 Aug 2019 12:19:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v65xDCNywexZGW=EBrsJwm-KwANxpdCv-AM2sgVNbz6qQQ@mail.gmail.com>
Message-ID: <CAGb2v65xDCNywexZGW=EBrsJwm-KwANxpdCv-AM2sgVNbz6qQQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: allwinner: h6: enable i2c0 in PineH64
To: Bhushan Shah <bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_211930_992728_81C2B271 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 11, 2019 at 5:05 PM Bhushan Shah <bshah@kde.org> wrote:
>
> i2c0 bus is exposed by PI-2 BUS in the PineH64, model B.
>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> index 684d1daa3081..a184361bc10d 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> @@ -160,6 +160,14 @@
>         vcc-pg-supply = <&reg_aldo1>;
>  };
>
> +&i2c0 {
> +       status = "okay";

We don't enable interfaces that are exposed on the extension headers
by default. Instead we let the users enable it themselves, by modifying
the device tree either with overlays or through U-boot commands.

Please set this to "disabled", and add a comment mentioning that it is
on the PI-2 BUS. Having it explicitly listed in the source serves as a
pointer to people looking at how to enable stuff.

ChenYu

> +};
> +
> +&i2c0_pins {
> +       bias-pull-up;
> +};
> +
>  &r_i2c {
>         status = "okay";
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
