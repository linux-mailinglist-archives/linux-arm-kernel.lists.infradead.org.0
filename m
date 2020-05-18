Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A8B1D879B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6R2zhcTZ8iQV/AvUZp7VvMK2/4Pap1CYWGj6mHk/70=; b=rpl0VJVjfAx3KP
	8wFNy9wSX2g+HcnyFLVNqu/TEgOBdDcB/VjdlGr+uVXkYTNpvlpEWxHy3vV8ASaxM0R0DEquVjA7J
	Is7DvfriMoHo/OeZGtGSMY42rxqwHQnSO3lu7GSlFnRyB5NO1Gl5SUFh/JRn7Io1+OzhZO5C0OnUr
	+PfAkt8U5XRWm6tXlqWLkIFUksEc3tREr1u5Ts+/1wEPMFPVzYfgmFR/PtRae0Ip3lAYln3uNnxJH
	JzR/wSvuxYLucvs7kVa1hjXlJF7JgcGewtnlDGaDyO679UVkN8vhswxIPgcNjPspv1XA6oP2sgg2k
	Y2i8LzO+x5FJ24TcNf9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaksk-0000kQ-Fu; Mon, 18 May 2020 18:52:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaksb-0000js-P6
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:52:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id z1so5389561pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NHsRyL8eiYlYHJa5uCVqQW9LciNEIDRKfuP+gda9x1Y=;
 b=dyfhdYXm4n0gy9np+W03BFusRSTd7VtjW+8PkcdsGSxtJz4guXAz37sSB8hMWjUGph
 zbDr6UdFU/HTP8pjg+drIGkkBBSVOQ37ReH9JLvb9yONunabVH65e6e23eGbkbGY19v9
 GYZEQHhy/JoXqdeSmftdi3L9aSvvTfzlZU/fAwO9dwPfGvDv9hafxxBGfPN/fWmMfVyh
 82VnVi2KZXkHpXzaJ4jUl/VE7wzOAmR4MdKOPCVflq5/SJemnEyWcSTYPEHQLslG6Lz+
 Z3ZA3TnxdgplAbEzKzHTm3aKJd+81u90aL+aUWFoGVkXrG15xE7IVQKaOjYT7wydzKos
 k4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NHsRyL8eiYlYHJa5uCVqQW9LciNEIDRKfuP+gda9x1Y=;
 b=RtdBOhJgCDwtU+HcyJtzVlJCYCT92J3Pt3P5d/rHyQ3lpTQsxIrSxcJAiVeD8mkp3b
 E4ytbqDx0ifX1dwQvsvuCgXBLY/MVUIQQMMFgz+i8i3TMb/Eh9ZtFxgAWOwXzrzN6RmO
 yeqrL5meI1uSof8qd7/q7bHNVtHJuwcF9/XL9elxQIuEgtrx3Qarq+hLrCZhrK5O8kLa
 B/ZJnNAwO0H5JkZ1J1qNf7tN+WNL8EROhaMeqVnyC7gd2CMJ8iZL7aSsNPqbArkqmH9r
 Fyb2Z+JpJwaWTXH0t8KTPJTvsDq3oO0qs7oakrtgtwEl2vjDmZd9RwF6GYhp1fSYrvrO
 cN4A==
X-Gm-Message-State: AOAM533akCQDYU42Sa7On3SX5XmCB3EAeTOnkMXETS2YQhzl0Ee3EwA9
 o/V7wa7ycqJ5FcR+wYBk10NElw==
X-Google-Smtp-Source: ABdhPJwuOK5f/6WvkScgGfZPG6iAsM8lfv6feBqqP52/8AtflODCDgQ3dim7PNYVoCPioH3FmWoAqg==
X-Received: by 2002:a63:f70e:: with SMTP id x14mr15583487pgh.394.1589827968132; 
 Mon, 18 May 2020 11:52:48 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 3sm9698235pfo.27.2020.05.18.11.52.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:52:47 -0700 (PDT)
Date: Mon, 18 May 2020 11:51:24 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7180: Support ETMv4 power
 management
Message-ID: <20200518185124.GG2165@builder.lan>
References: <cover.1589539293.git.saiprakash.ranjan@codeaurora.org>
 <b0a2ac4ffefe7d3e216a83ab56867620f120ff08.1589539293.git.saiprakash.ranjan@codeaurora.org>
 <56a5563205da61c47eb4f8bbf6120e28@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56a5563205da61c47eb4f8bbf6120e28@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_115249_818530_D8279706 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 15 May 03:55 PDT 2020, Sai Prakash Ranjan wrote:

> Hi Bjorn,
> 

Hi Sai,

> On 2020-05-15 16:21, Sai Prakash Ranjan wrote:
> > Now that deep idle states are properly supported on SC7180,
> > we need to add "coresight-loses-context-with-cpu" property
> > to avoid failure of trace session because of losing context
> > on entering deep idle states.
> > 
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > ---
> > 
> > Resending this because the last patch sent here -
> > https://lore.kernel.org/patchwork/patch/1230367/
> > seems to have added "coresight-loses-context-with-cpu" to
> > replicator node instead of etm7 node.
> > 
> > ---
> >  arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > index 4069bb1c93af..8b3707347547 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> > @@ -1656,6 +1656,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1674,6 +1675,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1692,6 +1694,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1710,6 +1713,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1728,6 +1732,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1746,6 +1751,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1764,6 +1770,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> > @@ -1782,6 +1789,7 @@
> > 
> >  			clocks = <&aoss_qmp>;
> >  			clock-names = "apb_pclk";
> > +			arm,coresight-loses-context-with-cpu;
> > 
> >  			out-ports {
> >  				port {
> 
> 
> The previous version of this patch in QCOM tree seems to have added the
> property to replicator node instead of etm7 node, can you please drop
> that from the tree and apply this one?
> 

I'm not able to replace the old commit without rewriting the history of
the branch. So I've applied a patch ontop of the branch to fix this up
instead.

Please review the branch and let me know if there's any issues.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
