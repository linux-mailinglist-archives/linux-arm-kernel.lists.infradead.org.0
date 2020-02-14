Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BE615D82A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 14:14:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xy+yVvH3mawk7tt5VcXxzKuOLtpfFOdHXX7+5McBVWE=; b=FyB/JHyI7CkSEF
	FeJEZOVt03YafRN2U9Yz38GRLBmfFZcKa8zBSV3HhDVAGfzk9la33fB5UOo5vLxt8yoB8kfkVX7zV
	+N+qdK5LCFifi3VRNaNmiwA4oXAIp9GvbGvlTpODmxVsyuSndnjK5tfT/9Ylt9e10tQhn+h9eTzHj
	FZZpBFgS5cyM+5RcwqydlGqOq5RupU3M61ciIq8oBt0nTFwsgmeC2VdgvXb1P4elVn97Bghr99NVa
	RB7GGkBs8pPaQowJGuevtjudloxq4sTmLlOmXib6jo394WWbMIMWrfsP6j6vjgo1ajKLOGIFSUHdV
	HCJWlWtpOvg/8tTAQnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2anw-0006uh-VD; Fri, 14 Feb 2020 13:14:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2anl-0006u0-1l
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 13:14:38 +0000
Received: from localhost (unknown [106.201.58.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9644F2086A;
 Fri, 14 Feb 2020 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581686076;
 bh=VOWkhA1sc+eqIqzIPtB4Bs3LA4z7Q7k58kMbeIZ5+Fw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V/rzqzEnI02r6b6vlmGE0HWdbptf900L7HcvnPygtD8T3ExIzPLgpaeoT5SQ3UZoh
 phWkpSR3fosETus8KmLMGGCOoGP29bCAsWxzYyLmuQPyfk1QJ8KCQLmKreSATILvMc
 cGv6hi+pq1HmuPVV5xHcFEbNSvY7tgUbjBNPDXAI=
Date: Fri, 14 Feb 2020 18:44:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sm8250: Add sm8250 dts file
Message-ID: <20200214131429.GW2618@vkoul-mobl>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-8-git-send-email-vnkgutta@codeaurora.org>
 <20200205194750.464C020730@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205194750.464C020730@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_051437_134845_37465990 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, tdas@codeaurora.org,
 jshriram@codeaurora.org, linux-arm-msm@vger.kernel.org,
 mturquette@baylibre.com, tsoni@codeaurora.org, vnkgutta@codeaurora.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 agross@kernel.org, psodagud@codeaurora.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-02-20, 11:47, Stephen Boyd wrote:

> > +               CPU7: cpu@700 {
> > +                       device_type = "cpu";
> > +                       compatible = "qcom,kryo485";
> > +                       reg = <0x0 0x700>;
> > +                       enable-method = "psci";
> > +                       next-level-cache = <&L2_700>;
> > +                       L2_700: l2-cache {
> > +                             compatible = "cache";
> > +                             next-level-cache = <&L3_0>;
> > +                       };
> > +               };
> > +       };
> > +
> > +       firmware: firmware {
> 
> Does this need a label?

Nope, removed

> > +       soc: soc@0 {
> > +               #address-cells = <2>;
> > +               #size-cells = <2>;
> > +               ranges = <0 0 0 0 0x10 0>;
> > +               dma-ranges = <0 0 0 0 0x10 0>;
> > +               compatible = "simple-bus";
> > +
> > +               gcc: clock-controller@100000 {
> > +                       compatible = "qcom,gcc-sm8250";
> > +                       reg = <0x0 0x00100000 0x0 0x1f0000>;
> > +                       #clock-cells = <1>;
> > +                       #reset-cells = <1>;
> > +                       #power-domain-cells = <1>;
> > +                       clock-names = "bi_tcxo",
> > +                                       "sleep_clk";
> 
> Weird tabbign here.

Fixed this and rest of them

> > +                       #interrupt-cells = <2>;
> > +                       interrupt-parent = <&intc>;
> > +                       interrupt-controller;
> > +               };
> > +
> > +               spmi_bus: qcom,spmi@c440000 {
> 
> Node name should be 'spmi'.

Yup, changed

> > +
> > +                       rpmhcc: clock-controller {
> > +                               compatible = "qcom,sm8250-rpmh-clk";
> > +                               #clock-cells = <1>;
> > +                               clock-names = "xo";
> > +                               clocks = <&xo_board>;
> > +                       };
> > +               };
> > +
> > +               tcsr_mutex_regs: syscon@1f40000 {
> > +                       compatible = "syscon";
> > +                       reg = <0x0 0x01f40000 0x0 0x40000>;
> > +               };
> > +
> > +               timer@17c20000 {
> 
> Doug fixed these in another thread to use offset. Run dt_bindings_check
> and see how it fails.

will do

> 
> > +                       #address-cells = <2>;
> > +                       #size-cells = <2>;
> > +                       ranges;
> > +                       compatible = "arm,armv7-timer-mem";
> > +                       reg = <0x0 0x17c20000 0x0 0x1000>;
> > +                       clock-frequency = <19200000>;
> 
> Remove this. Firmware should set it up properly.

Sure

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
