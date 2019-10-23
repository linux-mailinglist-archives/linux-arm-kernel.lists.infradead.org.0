Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532BDE21D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydbHGHn1dBWI38wIPxda3RdD6pVBEI1ZOrHZdXTWRA4=; b=P+iwP+4do9kPfg
	FdUDRKd72gz0VuiU7pzlWHo2e0esCSgT5YrhzOiHpxOLmuomW0tCnuFxRy20Sniepv8opaBfqEkdN
	/utAnc2ZZMsmgKQ7+JsyNmmZQgQAQi0daoEv2GsdaZ87S7vPIOqCddWIiIXrmOr7Gnab3EeYRNdZU
	emyxNTj2b+GQlSdvY8EH82jq41M4dIuAp/NZiC1AZQqQDWaskr3aeIGs7zuIze1fNoQNYo4ulRQLE
	nmx5YdptWrOAdXUgAdvLtVuO4Fq+K/QUyjeGibFk294pZ+TfwMzvlGC4mPJSAYM+A8cUCthfk/gKi
	oTsi/1WeE1avDeImjuLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKV6-00028b-Ow; Wed, 23 Oct 2019 17:32:48 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKUr-00027g-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:32:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id r144so14088473iod.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FHddi31URb1ZVMU1f/OlQcKL3JwlroIUzHSEfU1rm9E=;
 b=iIjn6zOkon2+vy3u6ieqyT3hIL8hquUtW4WVxARJ6GHQwHgVlZingSEfEw9ylY7oSA
 1F16bAeKpgTLYL8UJtX2Etu3picTNixpMhzj/ekoOwp/cmGSBH7kGopfJcid2JgAy8Zk
 1ekeWPNa7uy0YtmbrdEsazn/sa0lGt/eFUJMFsJwBgjiSuI4qlqblHgEO7XKfG3qksLr
 IDlP36H3VVyB02zXq77wDIDehyaKyQ3jmqrMyVY2/qASiIgVPru4z632XnyVSIxYBQHb
 w03wb0KJl4xmm3rZ2KTkP2qYtu2ybDHY5MESrnzdRpr3BOw+46Vdgg7SldIhK+UA0OV0
 GUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FHddi31URb1ZVMU1f/OlQcKL3JwlroIUzHSEfU1rm9E=;
 b=O8GDTvXgu9KphafoNmDfurbbQYvQNhaVP1ulsUUuErZo9flkOOVFkwhFlnxuYl5DKW
 fsD+Rz0bpqmzQaGI6YBdXyuXmtfP9OuXPynUnUcfQeWesOQeY1XTzctAcaWKssheDq4d
 ouEDmJwkRrNbBGddAXOXCbDpKZswA5Cn9rAvF35MwSy46eKtfx9ZHFrxcQ/OgYdS6ZJH
 UkAQ5ciHbfBm3088K9TILF6azvf6pO+ZAFOPb4ckqLSIqydF5dXnS3TjR0ENagVCDvzf
 7jOAioeiePTs2VIEJvxFod935K/jNCoVWt9nk2ivKm3/z/h5yKLKaj34xbAEXY+MpL1d
 Zx+A==
X-Gm-Message-State: APjAAAUpcuxcxIlhVdfgcBuAtPu8Vno/sEkArlo+3cFIpIYXdNTdm3vO
 avm1YAVJaKZBqZWqKbMEw/rBoDs12LMIdFFiH2NAfKsk
X-Google-Smtp-Source: APXvYqxyBYMtAL3D/OX0ZAdgMK8IVMiPoByH/BDSVN52PLwP4Oc1eswZzBzK266InVy9jGWBwrafm+J4exhXkFSElJs=
X-Received: by 2002:a6b:d104:: with SMTP id l4mr4641180iob.50.1571851952354;
 Wed, 23 Oct 2019 10:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <a38ab93d870a3b1b341a5c0da14fc7f3d4056684.1570630040.git.michal.simek@xilinx.com>
In-Reply-To: <a38ab93d870a3b1b341a5c0da14fc7f3d4056684.1570630040.git.michal.simek@xilinx.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 23 Oct 2019 11:32:21 -0600
Message-ID: <CANLsYkzkk9yPezSyU50TmWjDAZ-5D2Hmo0YztQzm+mnyZf1Www@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: zynq: enablement of coresight topology
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_103233_735513_854C3BF9 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Michal Simek <monstr@monstr.eu>,
 Peter Crosthwaite <peter.crosthwaite@xilinx.com>, devicetree@vger.kernel.org,
 Zumeng Chen <zumeng.chen@windriver.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, u-boot@lists.denx.de,
 Rob Herring <robh+dt@kernel.org>, Rob Herring <robherring2@gmail.com>,
 git@xilinx.com, Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Quanyang Wang <quanyang.wang@windriver.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

I was not CC'ed on the original post so I just noticed this today,
hence the late reply.  I don't know if you were looking for feedback
or already picked up the patch but here it is anyway.

On Wed, 9 Oct 2019 at 08:07, Michal Simek <michal.simek@xilinx.com> wrote:
>
> From: Zumeng Chen <zumeng.chen@windriver.com>
>
> This patch is to build the coresight topology structure of zynq-7000
> series according to the docs of coresight and userguide of zynq-7000.
>
> Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
>  arch/arm/boot/dts/zynq-7000.dtsi | 158 +++++++++++++++++++++++++++++++
>  1 file changed, 158 insertions(+)
>
> diff --git a/arch/arm/boot/dts/zynq-7000.dtsi b/arch/arm/boot/dts/zynq-7000.dtsi
> index ca6425ad794c..86430ad76fee 100644
> --- a/arch/arm/boot/dts/zynq-7000.dtsi
> +++ b/arch/arm/boot/dts/zynq-7000.dtsi
> @@ -59,6 +59,40 @@
>                 regulator-always-on;
>         };
>
> +       replicator {
> +               compatible = "arm,coresight-static-replicator";
> +               clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +               clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +
> +               out-ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       /* replicator output ports */
> +                       port@0 {
> +                               reg = <0>;
> +                               replicator_out_port0: endpoint {
> +                                       remote-endpoint = <&tpiu_in_port>;
> +                               };
> +                       };
> +                       port@1 {
> +                               reg = <1>;
> +                               replicator_out_port1: endpoint {
> +                                       remote-endpoint = <&etb_in_port>;
> +                               };
> +                       };
> +               };
> +               in-ports {
> +                       /* replicator input port */
> +                       port {
> +                               replicator_in_port0: endpoint {
> +                                       slave-mode;

The slave-mode property is no longer required and probably an
oversight since it doesn't appear elsewhere in this patch.

> +                                       remote-endpoint = <&funnel_out_port>;
> +                               };
> +                       };
> +               };
> +       };
> +
>         amba: amba {
>                 compatible = "simple-bus";
>                 #address-cells = <1>;
> @@ -365,5 +399,129 @@
>                         reg = <0xf8005000 0x1000>;
>                         timeout-sec = <10>;
>                 };
> +
> +               etb@f8801000 {
> +                       compatible = "arm,coresight-etb10", "arm,primecell";
> +                       reg = <0xf8801000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +                       in-ports {
> +                               port {
> +                                       etb_in_port: endpoint {
> +                                               remote-endpoint = <&replicator_out_port1>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               tpiu@f8803000 {
> +                       compatible = "arm,coresight-tpiu", "arm,primecell";
> +                       reg = <0xf8803000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +                       in-ports {
> +                               port {
> +                                       tpiu_in_port: endpoint {
> +                                               remote-endpoint = <&replicator_out_port0>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               funnel@f8804000 {
> +                       compatible = "arm,coresight-static-funnel", "arm,primecell";
> +                       reg = <0xf8804000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +
> +                       /* funnel output ports */
> +                       out-ports {
> +                               port {
> +                                       funnel_out_port: endpoint {
> +                                               remote-endpoint =
> +                                                       <&replicator_in_port0>;
> +                                       };
> +                               };
> +                       };
> +
> +                       in-ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               /* funnel input ports */
> +                               port@0 {
> +                                       reg = <0>;
> +                                       funnel0_in_port0: endpoint {
> +                                               remote-endpoint = <&ptm0_out_port>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       funnel0_in_port1: endpoint {
> +                                               remote-endpoint = <&ptm1_out_port>;
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +                                       funnel0_in_port2: endpoint {
> +                                       };
> +                               };
> +
> +                               port@3 {
> +                                       reg = <3>;
> +                                       funnel0_in_port3: endpoint {
> +                                               remote-endpoint = <&itm_out_port>;
> +                                       };
> +                               };
> +                               /* The other input ports are not connect to anything */
> +                       };
> +               };
> +
> +               /* ITM is not supported by kernel, only leave device node here */
> +               itm@f8805000 {
> +                       compatible = "arm,coresight-etm3x", "arm,primecell";

If I remember correctly ITM and ETMv3 are quite different - please
remove entirely.

> +                       reg = <0xf8805000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +                       out-ports {
> +                               port {
> +                                       itm_out_port: endpoint {
> +                                               remote-endpoint = <&funnel0_in_port3>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               ptm@f889c000 {
> +                       compatible = "arm,coresight-etm3x", "arm,primecell";
> +                       reg = <0xf889c000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +                       cpu = <&cpu0>;
> +                       out-ports {
> +                               port {
> +                                       ptm0_out_port: endpoint {
> +                                               remote-endpoint = <&funnel0_in_port0>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               ptm@f889d000 {
> +                       compatible = "arm,coresight-etm3x", "arm,primecell";
> +                       reg = <0xf889d000 0x1000>;
> +                       clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
> +                       clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
> +                       cpu = <&cpu1>;
> +                       out-ports {
> +                               port {
> +                                       ptm1_out_port: endpoint {
> +                                               remote-endpoint = <&funnel0_in_port1>;
> +                                       };
> +                               };
> +                       };
> +               };

With the above:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>         };
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
