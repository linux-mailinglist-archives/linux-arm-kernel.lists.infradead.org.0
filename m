Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DBB481
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvMzfPxq4aI6jbDDAnBwZfoXDgL6TGOilj30Jv8R30M=; b=C3J2/2pWuw4HnV
	Z+Urw9woG4VrjrcbnfnN65xBaCQNokRjIlj4Xk5/mThIIlkKnkqR6CaG22lYrDVgsmLdXK3g6u0vE
	UzV0aK/BDkTmofBXI9LlSQm42GYYDDNs91qYdclySeShPjk6Ki9VR6MROsLMPyCrW8z+Zo1IfnzGY
	UW+i8Aas9RkyIdqu9ta3AUUhMDcKZmT97d1LjcQsb3i4zIZGmC3Vr0s60LWubATYdihRO+jXPV89T
	sbk9o22Anz0glnMniRJTJexc4u2A+hz6+550xeKwnOJoFr2vD3cx6yoO6KcUT02dVngUFAeMyjzwz
	TPPiUQWlU50DCFTMv+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTtz-0004Eu-49; Sat, 27 Apr 2019 20:26:27 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTtp-0004DT-U3; Sat, 27 Apr 2019 20:26:19 +0000
Received: by mail-ot1-x341.google.com with SMTP id g24so926046otq.2;
 Sat, 27 Apr 2019 13:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=htGG/QDITTjzI/SpL8tXuy05dilvstyb85gN9ZixiaM=;
 b=DUEXK7Q1EaNC1WOySNY36v2tkh4NaIc6y5v06HAKPUIrT0i60BJTQwEANyDsDBNZ/D
 0uYytnFZywbCHcB8zoPk4F02v2VVoyyjd/6Et6dLFP5/CytPJsWhL30rbQ9yjWCx3+US
 6Uop/c97LkIF6Hnng42NP78Vl7xXYmBy1x5TJU15obE03d0Odl84XocrDDyEuGlf+W/D
 s7be9A4shhvdcd77Lph1LMf/ee6Qt4DHvUZXiGznxOOpmWXfuNM7Ig8ppp8zOpzamJPn
 EPkIt1LjLaNQK1hBHqfmXEGVzgzQsun32VM5UhriL9RBENJMGD2ku0jY5g3kAbrPQW3S
 UMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=htGG/QDITTjzI/SpL8tXuy05dilvstyb85gN9ZixiaM=;
 b=iXL2JP3gF0u8QRqfKO4QPehCZGXLRzNZ9khTw9+u/UYK/5HKBO6/j9xzIVCo27h+4r
 7Ot8OjuJcIVnyuO0x+mVBpzlvmmaw3YJJVWXofVgpUGp2Pfmm0tUzQe9fziGUS+A5uax
 TKzE/Ob9RaWQFA4RnjcR0i4NkW+elIcxTFvCpuhdtN/jUFMGbSnyCJh2aqm5fq7m/BNb
 xXOut6bbAhFthGDiKKEj8lWLTrVg5Is9QX7w/W/yhYbVeFAo2wDwlMPNJyPXOI0q4A2U
 RLdMlIL6OlObw94Gbg+r9L6e0P+HbLMw15LKbaLLmJ73QqOcZS1UN4o4F/mAT2imCnNe
 zpxA==
X-Gm-Message-State: APjAAAWwfzn2/0WCnFdfETxeR4AsIC8tGOUVl8C071y0Bwc3i+WZMxbd
 grUXLZzW/K2r7Kp4hi4Sn5luhKu/G0m6x/LxygFHmxY3
X-Google-Smtp-Source: APXvYqxmZcAARJYmMBlSpzioTQi4gzrDkaGUC1GBOoR5pfyicYYBOKt8NRkZbxw9KIJJSVZ+KbPlUYWCLTDkToss26A=
X-Received: by 2002:a9d:76d5:: with SMTP id p21mr31514726otl.308.1556396775956; 
 Sat, 27 Apr 2019 13:26:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190423091503.10847-1-narmstrong@baylibre.com>
 <20190423091503.10847-7-narmstrong@baylibre.com>
In-Reply-To: <20190423091503.10847-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:26:05 +0200
Message-ID: <CAFBinCDOGyP5pwcmV_4ZjhY4hiBaTesrgfEMyQ6yfx+T0Uo1hg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_132617_995315_95B34E4C 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Apr 23, 2019 at 11:16 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This patch adds basic support for :
> - Amlogic G12B, which is very similar to G12A
> - The HardKernel Odroid-N2 based on the S922X SoC
>
> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> most of the features and architecture, but with these differences :
> - The first CPU cluster only has 2xCortex-A53 instead of 4
> - G12B has a second cluster of 4xCortex-A73
> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
> - CPU Clock architecture is difference, thus needing a different
>   compatible to handle this slight difference
> - Supports a MIPI CSI input
> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>
> Actual support is done in the same way as for the GXM support, including
> the G12A dtsi and redefining the CPU clusters.
> Unlike GXM, the first cluster is different, thus needing to remove
> the last 2 cpu nodes of the first cluster.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
I don't have the board myself so I can't test it. However, apart from
one comment below this is looking good so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +&usb {
> +       status = "okay";
> +};
> +
> +&usb2_phy0 {
> +       phy-supply = <&usb_pwr_en>;
> +};
is usb_pwr_en really the phy-supply or is it the vbus-supply of the
USB top control block (&usb node)?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
