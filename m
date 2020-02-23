Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB16169599
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTc5wLEyTcbK+eVV6GxXIFCjjnBn00eJ7LTXtH6qlsA=; b=Ct+71TquRjpJgC
	gakV/QEvtWR7I4U0ozIKqJ3BV4cXe1UAeegrTCklyxwxOJW9RQCuLqBCcReNWCIk8WfLlwXrjfaAZ
	809PwFLnPfIvN1OZppBUWTY6ZO7/1UTBUlUxR25Pg4fOB0cc79i1KGPo4qaOny55wgRo+BgCARhXp
	5Gd5mQ8DmBBrbBgBvK9IrC68LuUNOmkBoNUrOMMlEQGSbOikOsS5uOvov5hB/aApJ60p2qrHZqbW7
	57kLuWRoQG6Ky8/wduxl4NfZjn21he82BdFn7KWz8xffV2Q/IKdxmT6niqU0cp5T/2j2aMAve9+SB
	9yuWerKiBabRPfjimXhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5i7G-0007QO-6b; Sun, 23 Feb 2020 03:39:38 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5i78-0007Px-2N
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:39:31 +0000
Received: by mail-ed1-f65.google.com with SMTP id p3so7580209edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:39:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/A0yvIhucZ8Hkj54s0R1HqAKKYsO/mERBumFFbw1Gu4=;
 b=Lz6WFW4ryyNGbNAn0c6yFNluxDtZpSR6oN81RxNRtouabnaAxHZmRp0uM2hry5wY/t
 HsaVOUQAKS489AdSuzzbg75h/VT8b33ajxgChEp24pvmwiHOFdvvitIaMViIEUrhSU5E
 2w0W3FlsPh0SEdEzGAMpSWCQGuy+BsHHyEfXCzFBskxyTWXnBgzyHOzAxRy6itGiWw5j
 LbTHPge4wvftaGglJRTSHQQcrdvO4TfE63ydVn+kQRwuLM64tJqUlT1oH+woxnEN7qvG
 yy6GTaMvTSMpFVWM/AYRhfXmYOsEyeKgIO3mfLX9eXbsjHg4ymRYLamDL1eum47hReoo
 h4CQ==
X-Gm-Message-State: APjAAAUrmeKEmOnHfEZx/oCVoAQMlj5ifxGoSlKXra2FkRA8lUFmyvLg
 V9qZh3KEE10KYJZ1HcrVzJvZqQx0Q6s=
X-Google-Smtp-Source: APXvYqyPBcQN2k/0TkkkKRRoz8A6sZoUJ+d06AUcnc1E+K4YrGx+bY6QajxZ7DqH6nkHWzarKvG9tQ==
X-Received: by 2002:a17:906:390d:: with SMTP id
 f13mr40524865eje.151.1582429168284; 
 Sat, 22 Feb 2020 19:39:28 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id b23sm561607ejl.63.2020.02.22.19.39.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 19:39:27 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id z3so6389804wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 19:39:27 -0800 (PST)
X-Received: by 2002:a5d:6805:: with SMTP id w5mr59546453wru.64.1582429167621; 
 Sat, 22 Feb 2020 19:39:27 -0800 (PST)
MIME-Version: 1.0
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-3-megous@megous.com>
In-Reply-To: <20200222223154.221632-3-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 23 Feb 2020 11:39:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v67uOXE7_28yn8Q2uo320vE1FsqL-ewG4p1nViim3q0xbw@mail.gmail.com>
Message-ID: <CAGb2v67uOXE7_28yn8Q2uo320vE1FsqL-ewG4p1nViim3q0xbw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/4] ARM: dts: sun8i-a83t-tbs-a711: HM5065
 doesn't like such a high voltage
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_193930_111920_A3ABA3CD 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 6:32 AM Ondrej Jirman <megous@megous.com> wrote:
>
> Lowering the voltage solves the quick image degradation over time
> (minutes), that was probably caused by overheating.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Makes sense. A lot of camera sensors run their digital parts off 1.8V.
This one is no different.

Acked-by: Chen-Yu Tsai <wens@csie.org>

The whole CSI stuff isn't enabled in the device tree yet though, and
there are a lot of regulators with CSI in their names. Will this get
worked on?

ChenYu

> ---
>  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> index ee5ce3556b2ad..ae1fd2ee3bcce 100644
> --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> @@ -371,8 +371,8 @@ &reg_dldo2 {
>  };
>
>  &reg_dldo3 {
> -       regulator-min-microvolt = <2800000>;
> -       regulator-max-microvolt = <2800000>;
> +       regulator-min-microvolt = <1800000>;
> +       regulator-max-microvolt = <1800000>;
>         regulator-name = "vdd-csi";
>  };
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200222223154.221632-3-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
