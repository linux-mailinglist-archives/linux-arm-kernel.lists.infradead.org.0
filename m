Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317491AA8E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GuvKj5eEr8/gkqfnh811vvasNlXifsEy0NzcOVONYe8=; b=YBEFYIn+I+WUTJ
	tYutxFuO2Ptcs8cLHB8EYa8CPnhjcJkrE+RMAB8H5M4jQW9AvUuLB2iHP59Yp5NKPAEYaO/hfsNNp
	Ifx0rGB6MO8sS1KLxASZdgtgXq6rxXlS6SWgUtLX+vux1lcFe/SL4JmsGx3OHAZ+6mO9x2hXWxk6T
	a3v4VSwqzqfh4HzyT0N2oSEz/anibgCldcck9wB8PRscqOKVB3s8AK8QGcJ2gJOUGONBQ3GQZJc5G
	zhmlzQtsdkjui8h+QoUWGB0B5OMkrPvfjNPDkA0OE5p7QvpPF84KhIWYDUokmPCrzz4FECl2dW77Q
	TP/ms4ccefdMgHCYW8nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiL8-0008MQ-Si; Wed, 15 Apr 2020 13:44:30 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiL1-0008LU-Jf
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:44:24 +0000
Received: by mail-ed1-f66.google.com with SMTP id c7so4898885edl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 06:44:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ue1uYbSCM3f3qpA8DP0y7k1ImrV8BLgfQdpHr8wCsNY=;
 b=YPnGjBwhJQsN7l6/9Zru4midwcv4zmPJbFJ0Ay4qZbaXxSl9+eRsC1m1JVsWMN5ArJ
 3objc1CbdmkLjpCcxyMs6KqZfFp80lSOW7EScplIXPdy+cIZfTaqYYMSWHcFi5xZ5lSu
 IHCppyORiKAGY2kegZ1EI7Ifrx65HYcuOftRD+aiVvAnsD/jJIYvCxD2GEQJY2Q9dPfr
 rik1/qeHMthYME3xbVUi+4iv6YybmAW39WwFtvqqdcrbwvEfOc+yhjbi3SfhoIwjLYwl
 HK8LZMyOMmc3E94lHF0Vsxt+r4/UmgcQm+xScd8W5MlHNV6FhapND7NNAPUdqbw1u2FY
 L2cQ==
X-Gm-Message-State: AGi0PubA5wgZgsDD04xFGFRceWgjCmBb3fNgwhOEY82hi2zRx1gn7kDE
 b6G8GHZvLm1AD1H0FwJvHzM=
X-Google-Smtp-Source: APiQypKNYzTDTcjJXJkyJ1tW3CmeNRTTMuezBm45FxKlxDAUOBaCIldgd2OqLmdaCh5e2z6JTgFDtA==
X-Received: by 2002:a17:907:118b:: with SMTP id
 uz11mr4894575ejb.89.1586958259236; 
 Wed, 15 Apr 2020 06:44:19 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id bs8sm2626297ejb.92.2020.04.15.06.44.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Apr 2020 06:44:18 -0700 (PDT)
Date: Wed, 15 Apr 2020 15:44:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
Message-ID: <20200415134415.GA21120@kozik-lap>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
 <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_064423_644638_C63B4E40 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:50:31PM +0200, H. Nikolaus Schaller wrote:
> 
> > Am 15.04.2020 um 13:49 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
> > 
> > On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
> >> 
> >> From: Jonathan Bakker <xc-racer2@live.ca>
> >> 
> >> to add support for SGX540 GPU.
> > 
> > Do not continue the subject in commit msg like it is one sentence.
> > These are two separate sentences, so commit msg starts with capital
> > letter and it is sentence by itself.
> > 
> >> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> >> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> >> ---
> >> arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
> >> 1 file changed, 15 insertions(+)
> >> 
> >> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
> >> index 2ad642f51fd9..e7fc709c0cca 100644
> >> --- a/arch/arm/boot/dts/s5pv210.dtsi
> >> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> >> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
> >>                        #interrupt-cells = <1>;
> >>                };
> >> 
> >> +               g3d: g3d@f3000000 {
> >> +                       compatible = "samsung,s5pv210-sgx540-120";
> >> +                       reg = <0xf3000000 0x10000>;
> >> +                       interrupt-parent = <&vic2>;
> >> +                       interrupts = <10>;
> >> +                       clock-names = "sclk";
> >> +                       clocks = <&clocks CLK_G3D>;
> > 
> > Not part of bindings, please remove or add to the bindings.
> 
> Well, the bindings should describe what is common for all SoC
> and they are quite different in what they need in addition.
> 
> Thererfore we have no "additionalProperties: false" in the
> bindings [PATCH v6 01/12].

If these properties are needed for Exynos-specific implementation, they
should be in the bindings. If they are not needed, they should not be
here.

Take a look at midgard bindings for example. This is a nice starting
point for these here.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
