Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5282D3B9E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HwCSpL3zT8PCnccPx2fKKvdboRwpI5ZZawEjCzR0lw=; b=RfhcfAemromi6V
	8hSCdauehtqKj/FqsNJC87MEYHEzZlPfKT+0qC+Vc7q3J+QAQBlSivueMCuJswcApyT03y+GP4tow
	yv//OFu05PEkI4WlM6hPZy/x3odcEEdWJSK8exChx0KLVdevewdNk2S+aI2iago7/yUPn3UwOOBys
	3kdHuWnJRNWrTg2gvm/UQdhAz6AuDE8bnxEeAHBFwcfof0Tpb6+vEjhwsUWMQprhT+clvfdEU/Xlq
	3OvdDhyDkygQWDw1Q6d83K534VwntVhR6cmiceumiG1DuqE+V4kAQowc30owi2nrKMMsH/Y+MF318
	uC9mbNY6Uv7cnCl9Ul4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNT0-00059z-TV; Mon, 10 Jun 2019 16:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNSn-00059e-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:48:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18D15206C3;
 Mon, 10 Jun 2019 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560185285;
 bh=oFtb1o3AXLUr4k9TH9OD5ZZ8qF8S9a/ouxAXF91MYh0=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=tBcMESXBdsEGjobi+BHjlGd2RIqXKwu6aeRyd10RYmRrXjQpm69IIqrxRkhXkEUGP
 AQyCw2PvGkD4ULELPPRFasXJIN7qpaewJiXRuwPJDsMS6aGgFogx+c/GJwb3W3C3dm
 dVV/fDf3akooB5cM5Lom0XOdDCSitrtzKqlGPfuY=
MIME-Version: 1.0
In-Reply-To: <048a25c0-3a2c-3906-84d4-5eb67f3ce2ef@codeaurora.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-6-git-send-email-sricharan@codeaurora.org>
 <20190608034835.GH24059@builder>
 <048a25c0-3a2c-3906-84d4-5eb67f3ce2ef@codeaurora.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sricharan R <sricharan@codeaurora.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 09:48:04 -0700
Message-Id: <20190610164805.18D15206C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_094805_780312_3690989D 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sricharan R (2019-06-10 08:45:22)
> On 6/8/2019 9:18 AM, Bjorn Andersson wrote:
> > On Wed 05 Jun 10:16 PDT 2019, Sricharan R wrote:
> >> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >> new file mode 100644
> >> index 0000000..79cccdd
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >> +                    compatible = "fixed-clock";
> >> +                    clock-frequency = <32000>;
> >> +                    #clock-cells = <0>;
> >> +            };
> >> +
> >> +            xo: xo {
> >> +                    compatible = "fixed-clock";
> >> +                    clock-frequency = <24000000>;
> >> +                    #clock-cells = <0>;
> >> +            };
> >> +
> >> +            bias_pll_cc_clk {
> > 
> > Please give this a label and reference it from the node that uses it
> > (regardless of the implementation matching by clock name).
> > 
>  ok, in that case, so might have to remove these for now, till we add
>  the corresponding users.

Yes, please remove them. They don't look like board clks, instead
they're SoC level details that need to be created by some clk driver
like GCC.

> 
> >> +                    compatible = "fixed-clock";
> >> +                    clock-frequency = <300000000>;
> >> +                    #clock-cells = <0>;
> >> +            };
> >> +
> >> +            bias_pll_nss_noc_clk {
> >> +                    compatible = "fixed-clock";
> >> +                    clock-frequency = <416500000>;
> >> +                    #clock-cells = <0>;
> >> +            };
> >> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
