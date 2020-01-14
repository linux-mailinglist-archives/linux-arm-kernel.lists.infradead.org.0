Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3490F13B374
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 21:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbZXXXG1hiLgKAAehdUQ4qfPOe0PUqSA51K2NtP5ChY=; b=Igd02wPY97Sabz
	CIYGkHlD6FAeHpRNa3bvVBIBBYM/SoRObBGlmvpvLLLixzyTGcVAQyldImYcrq1trgIyUFESG56ou
	b5g+L3DY7PDyCldKiFv4WiUuBHPcdu8zeSlmtBjxXCujyeF3XxKu9mSlRg6r0b9e4oYBGwZ/JPkY2
	0a4vl1qUPKp0NI1YEA1snvzH8jDOgwmqRjdiPNRSOp54cD4NbkEgHiDWV4BiakIir1iwgc8xxNp7K
	qtgxuo5t6Q7EQpw0uyfOtSfz2Ynlm7sRU+Yasa+kUrH/qwj8fuyYw+0Wulq1ipXiQKItP/LICSJ8U
	x9TroDGwZG9UJZDPybfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irSWq-0004uq-Ib; Tue, 14 Jan 2020 20:11:08 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSWc-0004sx-HW; Tue, 14 Jan 2020 20:10:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id f8so13155645edv.2;
 Tue, 14 Jan 2020 12:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9+kTGzipxG+2AUMOBSHrjhkVXKsRlWSVlekuyPDJ2KQ=;
 b=U5UrGcnGMLeF8EkEKnq4SXQA0bZn1K6H76br30DCk6nDl7shLs9apRuVn7paVhhr+J
 gMmnCx0Xyy4SbGAld5Dxx7hKCe3zVde+4D7GGrJUNuk6ou71aa4b0Jg6ZSopSLHmCYgh
 z3ijcao7IeziK6LYdDKe/yJZ59wU1ezjYiR/PZxH3iZ5M9ycOIaoBShnoDIrQDV7pp61
 rd5dofOqfUPsA5L0octRXnxmNVHNyuVUTKmF7HlpEGu3XMsHHloitIl9d7b1cvbccjHH
 AEK6BgTvDmyC2dFB+JvqthCztEkGsWsfUUbUsltQkgU7F6PzRxC7X2a/kK64COrwmRvd
 QEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9+kTGzipxG+2AUMOBSHrjhkVXKsRlWSVlekuyPDJ2KQ=;
 b=nofCexmzfrvwFO4h2szC+WAJvevgS0+1fGo8Zc+N6BxZeTS7GAwhtLiVfUPAHIlfVI
 bmfPo4N/AZgBP+1CqVrSLwdEElps4sWRvINP2aJzkCZwc9ib9XrlxXM69OAh8Fru1wmN
 krd0y001nwrzBYx4uDfrTxFNNs9Dua4Macc8AFa21q5+SIsUXHBMW9zFy8DZFQxTX7wy
 o5FVMHmyEpSMivQuBmeLc8xJGp4rqHjP6CiB4V2aKpsO+q1/sJWprq6MYoMcIX1uuFi+
 WgWr50M2shrUEC9mqfg2tP69dZelTyK9z3I12z0dJl13LVvFabr2Iih0Kz1OlQjKS+hX
 PAPA==
X-Gm-Message-State: APjAAAX/LoDlUskihaVtYQ+Dl/AwCq17a6wFBzshwyiQCgKngMoX0wTP
 +MD/GfPu8fQOVC/GkMDLjdytaLTAF08oQT4vgZs=
X-Google-Smtp-Source: APXvYqzsf7bCKRilpxan541+ugL4dAfOo0X8vA6AEhA9CtpMo2K4raWrA9d3K0IGQqHU1WDe0EVbnk1ga80LFRHazUc=
X-Received: by 2002:a17:906:f245:: with SMTP id
 gy5mr23583417ejb.225.1579032653189; 
 Tue, 14 Jan 2020 12:10:53 -0800 (PST)
MIME-Version: 1.0
References: <1578634957-54826-1-git-send-email-hanjie.lin@amlogic.com>
 <1578634957-54826-3-git-send-email-hanjie.lin@amlogic.com>
 <CAFBinCCZSBWdKQwmcvponuUu_aiTnDCyRiPqKDgqfNkJQoq06w@mail.gmail.com>
 <52566105-cbee-01d6-9110-f9954eabe22f@amlogic.com>
In-Reply-To: <52566105-cbee-01d6-9110-f9954eabe22f@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 14 Jan 2020 21:10:41 +0100
Message-ID: <CAFBinCDtPoKQh64VKmqOe=U0BLPE_Ef+scmK3h1uV9hLhT6Q1g@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_121054_587290_939BB143 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

On Mon, Jan 13, 2020 at 2:23 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
>
>
>
> On 2020/1/12 4:50, Martin Blumenstingl wrote:
> > Hi Hanjie,
> >
> > On Fri, Jan 10, 2020 at 6:43 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
> > [...]
> >> @@ -37,6 +43,11 @@ properties:
> >>
> >>    clocks:
> >>      minItems: 1
> >> +    maxItems: 4
> > the driver parses one clock for G12A/G12B/SM1 and three clocks for A1
> > if there is a fourth clock: do we need to manage it in the driver?
> > (note: dt-bindings always represent the hardware, so if there's a
> > fourth clock which the driver doesn't need then it's perfectly valid
> > to describe it here. a comment which clock this is helps in the
> > code-review process)
> >
>
> Hi Martin,
>
> Sorry for this confusing, I moved xtal_usb_phy clock from glue driver to phy,
> but I missed this binding modification.
> So actually A1 do only need these three clocks and no fourth clock exist, clock
> and clock-names maxItems should be three here for A1.
I see, thank you for clarifying this!

[...]
> Do you mean something like this:
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - amlogic,meson-g12a-usb-ctrl
> +
> +    then:
> +      properties:
> +        clocks:
> +         minItems: 1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - amlogic,meson-a1-usb-ctrl
> +
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            minItems: 3
> +       clock-names:
> +          items:
> +            - const: usb_ctrl
> +            - const: usb_bus
> +            - const: xtal_usb_ctrl
> +      required:
> +        - clock-names
this looks good to me (but keep in mind that I'm no expert on these
yaml schemas)
I wonder if we are allowed to shorten this by having one clocks
property with minItems: 1 and maxItems: 3 (like you have in the
original patch) and then only have a
amlogic,meson-a1-usb-ctrl-specific "clock-names" property (and make
that mandatory for A1 SoCs)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
