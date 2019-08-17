Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A99990C71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0b9dZ40mVyYU6NuzC3k6q6MZkCiwpyEzxpCiyJGmp4=; b=NtdFSIuJ7dGiK6
	fe80gFK4ZMDPFYzorCpI86sSNVlM5MZdDOCFotjTkXH2ywIR0z9YdycuJpGEolzWXSKEfFxW4wQYw
	tfg/ZQ1B9fTeZX4xy0UgGl92ThNFNavU6owqGB7HI0fftjJT6ER8scNlQa/oOL+VPpJjraoJa4/sN
	xhMFcwHsdDOC5ob9oUnivFJS+NxW9JbAJM1hndO6zIc9UMogcO2Y2BnEcSRSjiw7jkaS/BbpxB+bt
	sP4CG7gcRhzJlkwAUg/3ehGY22NYxslpy6ZLxvgQsBdOtxyNPmq2I/XU5Jsttw61AePeKL3W+MWqc
	nSDiq0pzY3eB4kCRF3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hypUM-0002hf-RX; Sat, 17 Aug 2019 03:34:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hypUB-0002hL-8V
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:34:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id 129so4093367pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 20:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8LLTjw5mbCMjfVCCXAOoDmaHq3n7/+aUHXsTBnjLG9Y=;
 b=J77/Al2JrQdADWKKNIPoaZH5pQZBty78giuD5J9XNZnpk6DgNLj4q1kBZSO22VqKvi
 P67jYqxrLZVEeilMeHiehh8kmCUbAlXPIn6+kU6HFQQVTOjCZOp2oYD4JqGpamjMWaor
 b94xURoyLakXaVKLDf+485u5vlkYwOlm+CM51giZZROHMOYNSU6Hx7+HBs8aIrbX4rYk
 zvtBVWA8kQxALBdemmzipKzQT+y2qZtu3t7ubRdotZfeMTCZjYXlFPnwNiSzPzlWVx08
 uCynIkkjRVzfWDtLISalyT+teOvR8GS+izovrsgraIgmilaKDzjDtYNmKne34EC1Kvm6
 Jasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8LLTjw5mbCMjfVCCXAOoDmaHq3n7/+aUHXsTBnjLG9Y=;
 b=OmQuB+dHAvjvpQ75qPn23ELkCLke84zqZUVK3zuKtrejfJapLbaKt2qzW3Y3kd9nxP
 z8PgpK6Yw8RnaiPyq8BatPqu/qOuY0AkmJ5ILCOYI4CyLvQTaSdanlpsttbaJiBr26ZC
 D0cgtS0fnCxJTHa8lSIaSK9DvKYwx/ceVr9Tn1jdvbRWWLhxNeUS27BIYhUjb47z0HbZ
 WhK/w6ZAV0yLZpHFFbR4yPIkIf8uAC7iBrTIZSCm6qmggCGsoOqIa5mOnFB6uP+9lLZv
 Ewg35vqDJhNrYu95Pgal0/LWRCW2gRoXrN6Bmmjch4fpA2qctTlW9kGITLcTgDUIuDPc
 ixVg==
X-Gm-Message-State: APjAAAUHfEjKTjn16iYJl5RQCgZB3hpyqEWBLgsLsvERGEfuPMITQaWU
 NkWDCGJTM76HFiIL0vmMgxGC
X-Google-Smtp-Source: APXvYqy0SEIRcAWpwqX/HsANHjZDK345W2Se4HhcQbc69mXsBK62Pux3dAmVE7iHRjrD7n11NvxCmA==
X-Received: by 2002:a62:144f:: with SMTP id 76mr14051167pfu.62.1566012873127; 
 Fri, 16 Aug 2019 20:34:33 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:70a:af69:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id v22sm6184218pgk.69.2019.08.16.20.34.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 16 Aug 2019 20:34:32 -0700 (PDT)
Date: Sat, 17 Aug 2019 09:04:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
Message-ID: <20190817033422.GB14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
 <20190808050128.E3DA52186A@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808050128.E3DA52186A@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_203435_372541_FB2B7464 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Wed, Aug 07, 2019 at 10:01:28PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-07-05 08:14:36)
> > Add devicetree binding for Bitmain BM1880 SoC clock controller.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../bindings/clock/bitmain,bm1880-clk.txt     | 47 +++++++++++
> 
> Can you convert this to YAML? It's all the rage right now.
> 

Sure.

> >  include/dt-bindings/clock/bm1880-clock.h      | 82 +++++++++++++++++++
> >  2 files changed, 129 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
> >  create mode 100644 include/dt-bindings/clock/bm1880-clock.h
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
> > new file mode 100644
> > index 000000000000..9c967095d430
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
> > @@ -0,0 +1,47 @@
> > +* Bitmain BM1880 Clock Controller
> > +
> > +The Bitmain BM1880 clock controler generates and supplies clock to
> > +various peripherals within the SoC.
> > +
> > +Required Properties:
> > +
> > +- compatible: Should be "bitmain,bm1880-clk"
> > +- reg :        Register address and size of PLL and SYS control domains
> > +- reg-names : Register domain names: "pll" and "sys"
> > +- clocks : Phandle of the input reference clock.
> > +- #clock-cells: Should be 1.
> > +
> > +Each clock is assigned an identifier, and client nodes can use this identifier
> > +to specify the clock which they consume.
> > +
> > +All available clocks are defined as preprocessor macros in corresponding
> > +dt-bindings/clock/bm1880-clock.h header and can be used in device tree sources.
> > +
> > +External clocks:
> > +
> > +The osc clock used as the input for the plls is generated outside the SoC.
> > +It is expected that it is defined using standard clock bindings as "osc".
> > +
> > +Example: 
> > +
> > +        clk: clock-controller@800 {
> > +                compatible = "bitmain,bm1880-clk";
> > +                reg = <0xe8 0x0c>,<0x800 0xb0>;
> 
> It looks weird still. What hardware module is this actually part of?
> Some larger power manager block?
> 

These are all part of the sysctrl block (clock + pinctrl + reset) and the
register domains got split between system and pll.

Thanks,
Mani

> > +                reg-names = "pll", "sys";
> > +                clocks = <&osc>;
> > +                #clock-cells = <1>;
> > +        };
> > +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
