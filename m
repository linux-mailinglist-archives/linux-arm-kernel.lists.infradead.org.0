Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5EA25703
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CL5xPh4eqWR9Z9M2WSOjlXi92Zs8C7zS2pQ/zknQ5Ik=; b=pfcZSkrqdRpw2H
	jQ7izLn7h+mxIydZPdG+P5+5Gc1nQXhJQwuqo++at67gD8GVWnQ5BDrG40ZL834sxIjMTTsmuBo1B
	plI97n16wHbf8jmPzlvKSHFtXntw1EnN5r1AN/SHX0+26cV17dF1KTVjfKwCyoi4ob7RDm54uOTge
	KKqmBptb2P6cyc0FOT2mao+P01y2QefexExuLE/cRNGznudbmIGv1+5pXnR/2FRKKw3hdKLa9MQND
	bOekfEHdy+pa9hY/BASvFEfV7jXtcfrp0r+QIEx40N6okQd1SFgQOr/W+FBzplSyvS1gFq1SnxywJ
	zula01wO4QaqujliBBZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8tX-0004rP-LC; Tue, 21 May 2019 17:49:47 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8tN-0004q7-OA; Tue, 21 May 2019 17:49:39 +0000
Received: by mail-oi1-x243.google.com with SMTP id y124so9161202oiy.3;
 Tue, 21 May 2019 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yy3oYPWdeUlJWNni35uRANPHnH/KZjqT8e9g9rhiirM=;
 b=VkVn705o7OpQFHF9HbuH2HaFLohjO9EUw3hhXGLr+u/78N8WUwIm/rBJBHffrztZdq
 D+sXQCuVSRDH8pUldl/f0ZVTDRpQf16pGmtJHwNT7TcHo/IcHQbZVzCMnfrDHZOD/7py
 pwTIgpIwHGr5iEI+LGIGeDsKUUZWMGqmw4ffn/Ct7W7tblfJYpcA2CPdw8zDQAHuPehe
 jobcU4jXoITVfWwSOIgahxhHRlHyxWdop5/2bO9cWpV/KnacspWfewatTh/EJVMJUC7S
 p5oca3a4lldAjZSJRVKoC7GXU9HZDyZAqKR1GgO2TT08WomiUPOoVB0V9hgSxBL6PZUh
 4+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yy3oYPWdeUlJWNni35uRANPHnH/KZjqT8e9g9rhiirM=;
 b=ivAvwbzunrA/GbBKxl9tHKdA4NipnL+FJQSuCte5OzlAb4MRALTdHz3sc4NzrRr/80
 EjL9j73vg7oqIj3N0suA3qAeaeonh/1B2DfPfvoOwblaZMIBLkgWAOkVwZ+zjYltOna4
 q7GPKYSTEr/2iQr/BTrwpJKvi/By3K4NWRviEa6hz3MyMrCTxYg7u3kICSe3h8GKyksi
 gFThlYGvGlKiEb4n00fC5vMXjDZsrVjoZf385t5lm2sfiq3b5cRZEr4vrLEb5sJS6Ik7
 zT7QgqEuofAKUM5BdJHEuBfwH2p5MUPigJ6zk5j/PoSBccrtPkNgIbTYSkSy4CcA+LSV
 CJfg==
X-Gm-Message-State: APjAAAWIJ77KBMZM3YiNpEKX4EFGODwe8sxdlbz5pdIEP2hfcdGbmDKg
 oiJfrn4EBGtuo23kerCq995zuE7YLSEjm31RcERh5FWKjA0=
X-Google-Smtp-Source: APXvYqwsTyLWRVtVJGzYLFw570+vGq26/BU5Rlh7Kr1b1kBkg18irFOUv0iHFMKBHXzmvtcX9F3LescfHwPspCkkezo=
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr4510948oih.39.1558460976843; 
 Tue, 21 May 2019 10:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190521150130.31684-1-narmstrong@baylibre.com>
 <20190521150130.31684-3-narmstrong@baylibre.com>
In-Reply-To: <20190521150130.31684-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 21 May 2019 19:49:25 +0200
Message-ID: <CAFBinCB+DD=hssuswV6M4i1Buv7bs0-6TfPTRVdUrhaprLMb0w@mail.gmail.com>
Subject: Re: [PATCH 2/3] clk: meson: g12a: Add support for G12B CPUB clocks
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_104937_814024_ED2AFE2A 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, May 21, 2019 at 5:02 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Update the Meson G12A Clock driver to support the Amlogic G12B SoC.
>
> G12B clock driver is very close, the main differences are :
> - the clock tree is duplicated for the both clusters, and the
>   SYS_PLL are swapped between the clusters
> - G12A has additional clocks like for CSI an other components
should this also be G12B?

[...]
> +static struct clk_regmap g12b_cpub_clk_apb_div = {
if you also think that it's worth it then please add a comment stating
that this is called "PCLK_mux" in the datasheet
same goes for the ATB and AXI clocks below as the naming in the driver
and datasheet differs

> +       .data = &(struct clk_regmap_div_data){
> +               .offset = HHI_SYS_CPUB_CLK_CNTL1,
> +               .shift = 3,
> +               .width = 3,
> +               .flags = CLK_DIVIDER_POWER_OF_TWO,
> +       },
> +       .hw.init = &(struct clk_init_data){
> +               .name = "cpub_clk_apb_div",
> +               .ops = &clk_regmap_divider_ro_ops,
> +               .parent_names = (const char *[]){ "cpub_clk" },
> +               .num_parents = 1,
> +       },
> +};
I'm assuming you checked that this is really a power of two divider,
on the Meson8/8b/8m2 SoCs this is a mux between div[2..8]
(the same goes for the ATB, AXI and trace div clocks below)

> +
> +static struct clk_regmap g12b_cpub_clk_apb = {
> +       .data = &(struct clk_regmap_gate_data){
> +               .offset = HHI_SYS_CPUB_CLK_CNTL1,
> +               .bit_idx = 16,
the public S922X datasheet calls this "PCLK_dis", does this mean you
need a flag here?
  .flags = CLK_GATE_SET_TO_DISABLE,

[...]
> +static struct clk_regmap g12b_cpub_clk_atb = {
> +       .data = &(struct clk_regmap_gate_data){
> +               .offset = HHI_SYS_CPUB_CLK_CNTL1,
> +               .bit_idx = 17,
the public S922X datasheet calls this "ATCLK_clk_dis", does this mean
you need a flag here?
  .flags = CLK_GATE_SET_TO_DISABLE,

[...]
> +static struct clk_regmap g12b_cpub_clk_axi = {
> +       .data = &(struct clk_regmap_gate_data){
> +               .offset = HHI_SYS_CPUB_CLK_CNTL1,
> +               .bit_idx = 18,
the public S922X datasheet calls this "ACLKM_clk_dis", does this mean
you need a flag here?
  .flags = CLK_GATE_SET_TO_DISABLE,

[...]
> +static struct clk_regmap g12b_cpub_clk_trace = {
> +       .data = &(struct clk_regmap_gate_data){
> +               .offset = HHI_SYS_CPUB_CLK_CNTL1,
> +               .bit_idx = 23,
the public S922X datasheet calls this "Trace_clk_dis", does this mean
you need a flag here?
  .flags = CLK_GATE_SET_TO_DISABLE,


Regards
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
