Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FB5D887
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 02:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2IHyLWTqLmmQh2RcPIthzzdzp5JuCqDwbcGVyXbQBk=; b=EOzrlEaZwEaosm
	VA5VtEoW2Qii0liVhZHaz/NtFzZAwCYfEqkYu2WydeP1DMV4fQIJ01RNGd9KFuBL2d9MuSL//PSCd
	aOvyDxvyau8PUjmwE7JU+0tGX9gLh1TTDVNEhPJKibOVynWuqLSpvLa1eZDkJolWjDNaOnHV2cIGZ
	xgKK74pa1eB5a2Pn/rwDzQPr0N91zHkum2CHsib8fWHcatu2N9hJLb+Ft5dYi1wCg0PERdxeIi6DA
	5sDFeErpZEjAHj2TudOOOxgzw/XShjwh7UdcVryqZuybijlg2st93npxtp/vr3vTBkXlDkgFGfu7b
	TudrbchqSRThYuItKcGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSi9-0001hR-KO; Wed, 03 Jul 2019 00:01:21 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiShv-0001gK-8q; Wed, 03 Jul 2019 00:01:08 +0000
Received: by mail-oi1-x244.google.com with SMTP id u15so538837oiv.0;
 Tue, 02 Jul 2019 17:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EYSjJ+LydcEzxdw5idXtHVOIPJiJa1YBB46CfRDibpM=;
 b=Ky+Qov/F2L5VKJErmVkFIhuhAIV0b1AaOa7IMvL2kX/CUlcxAElMT3DrIgwtBnA4d1
 SQ/23AicMM7pBE+KLQpjWjno8WseCCJH2B9hFbvaoV728N3z07QHToIGQtDp6PfV94rI
 Dv/k6naII/d9qUlexdL/XoZ1IEf9ZOj3wXlcer1runlwnx96UQ55EyJWCSwYjcuyZSRV
 ETsmPLcasSQMP0aylaGM7CqMRgDkZzaVyopzqjOUyaupOk/n+qJGV3S3swBHCiTn9wm3
 l0vG4Le3nRf61YoCFWKKFPFbg2ybTvPs+QBi74QoDVpU5Ib2l0hrpfVXXPjP296aYkhL
 +tsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EYSjJ+LydcEzxdw5idXtHVOIPJiJa1YBB46CfRDibpM=;
 b=WWZBRry+F7HPD53dUF89HgTB2w/h+5uxoLvT9rOenrMZHA+LuUX4VqehkdtZ8W8Nmr
 odULVBocpKL8coomnwDWKSVTgek6TkAnbxZwESxHbj7DcrFJO3QQl4gsoKWVDnc+mghr
 GqDXJHMpC+sErdUbaLTBUjrHMjXbz7vx1JCRql+OupVIeJQtujS0jYXZ/kkLN7TQc0R/
 NcZf/54XP0UCDiF6sbMoHmMkJpHOS/uisPKA7oFwsErlxH95vPoYu6FO6hnk14RKbdSp
 afachOAnxj2d2pUKChJsZ8DQBO9vKvDOXmHRL1Pzzoqf8I4tRT+0EfEfT7qFF9HcF4dj
 pXUA==
X-Gm-Message-State: APjAAAUNNFXLbI3cbZsmNx/Z350FXuE/K9P6i6ZIXzKBgFAbGrDtYure
 ROUSFzoSx4WtKuv00qMmdFvqIWeUO4HC1oYrULW45kVg
X-Google-Smtp-Source: APXvYqyaGj0PCGVVeTWrqW1w/ckN7gLuV9G2Q3xfXsdrU6SN4A4wrK/wTIoCTD3mXZvotSia4JivxoObW/UzXuEV8E0=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr1556508oic.47.1562112065923; 
 Tue, 02 Jul 2019 17:01:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-3-narmstrong@baylibre.com>
In-Reply-To: <20190701104705.18271-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 02:00:55 +0200
Message-ID: <CAFBinCAT1JaK6ksD9OzCK_wEEWJdaZL2vLzGeCzVVbz9V67btQ@mail.gmail.com>
Subject: Re: [RFC 02/11] dt-bindings: power: amlogic,
 meson-gx-pwrc: Add SM1 bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_170107_340855_77077D5E 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Jul 1, 2019 at 12:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> +General Purpose Power Controller
> +--------------------------------
>
> +The Amlogic SM1 SoCs embeds a General Purpose Power Controller used
> +to control the power domain for, at least, the USB PHYs and PCIe
> +peripherals.
AFAIK each binding document should only describe one IP block.
this one seems to be new / different

should it get it's own file?
also should it be a .yaml binding?

> +
> +Device Tree Bindings:
> +---------------------
> +
> +Required properties:
> +- compatible: should be one of the following :
> +       - "amlogic,meson-sm1-pwrc" for the Meson SM1 SoCs
> +- #power-domain-cells: should be 0
> +- amlogic,hhi-sysctrl: phandle to the HHI sysctrl node
> +
> +Parent node should have the following properties :
> +- compatible: "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd"
> +- reg: base address and size of the AO system control register space.
> +
> +
> +Example:
> +-------
> +
> +ao_sysctrl: sys-ctrl@0 {
> +       compatible = "amlogic,meson-gx-ao-sysctrl", "syscon", "simple-mfd";
> +       reg =  <0x0 0x0 0x0 0x100>;
> +
> +       pwrc: power-controller {
> +               compatible = "amlogic,meson-sm1-pwrc";
> +               #power-domain-cells = <1>;
> +               amlogic,hhi-sysctrl = <&hhi>;
> +       };
> +};
I'm not sure that we want to mix HHI and AO power domains in one driver again
back in March I asked a few questions about modelling the power
domains and Kevin explained that we can implement them hierarchical:
[0]
unfortunately I didn't have the time to work on this - however, now
that we implement a new driver: should we follow this hierarchical
approach?


Martin


[0] http://lists.infradead.org/pipermail/linux-amlogic/2019-March/010512.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
