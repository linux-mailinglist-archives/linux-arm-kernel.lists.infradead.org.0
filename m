Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC92992F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCbvVPs42M+va4vmVmevDGUqZnO/Zn/ojze1XlrgEiA=; b=fipju87FRQYcPZ
	g2AYYJq8zAuQW+70BoqR32OOGA9vIznRzWYYTW7JqEnMvG0ePm/j3tlEQlflNTMUgRYXAIm0iXYjk
	YYJFejTK0066gWlbTXsvo2mFCngKGmHe/HNTXManFIkDtfD1ZivS4eTwjt4AvDg3defFigtfnionY
	FvyGz/GywXWoWACZE1k0F/vemvx1PYcCdCDhFK0OF9+eEqJ1uhYIZ6Cd524ZZ27Me1Wp/VLHgBkIR
	Ujr9O5Dy9ejasAHlwt5uUn+0CapfeV1idMJtLQ324dUo6jDUnHAKrFHcgqvQEEuhKXQu/K1LDwHL0
	BnVLqAeyEN+dB6wzpPjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lzp-0002Rd-1c; Thu, 22 Aug 2019 12:15:17 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lzS-0002RF-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:14:55 +0000
Received: by mail-vk1-xa43.google.com with SMTP id h192so1501744vka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=001ZjFQMxb/zCLk3zcyFqNqBIiCvp+5VqdO2trNiRjw=;
 b=rBGmCN2TSFf+woRq1U6/8fgdOQP55ndxj6XdO2EdMKOeGV2MrzU8rvwexXqn72Xj03
 3I8c//L8dMyqiq7nE5jvcTkI4B0Rx7q0EtsmX/2Txly9jCIZd67IEQR3P8FwpE8V6W7z
 mwvCR8G9OPcGTa1Ajb3KI7CPl5HDZbPsyHblwWWMZlR920QJ1MQiljgf68A6WiMzYKL5
 ZWH+8SZqMK3Z3Z8weGjBTh1dxKZVJpQB00Y1CPBOii/AhCl4uzkCyBotPMpyvY8X0PJ+
 uWvN0QpzLt2ack1QdKqeFGY5rKmZfI65PQ16PC1MYg/rHNriK/R+nUSHHC/SbdEksOn1
 y2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=001ZjFQMxb/zCLk3zcyFqNqBIiCvp+5VqdO2trNiRjw=;
 b=eW6+j5bDb+J6j+6AehPNyfWn7pvnyPpS56uBTcSATNaqwrvhfK/mKwElzKK5ZQBn26
 Xe/UDJgPWtnr+sbjIjL/QElGoPKP+KgN1yNbbvVEhO/JzNTrZWGvbltdsFSrBjWY36JL
 eepPuAbEXaXuJiSy9hqmS8YCCKeCpHH3EPs0dgyHsJGkNFQyaBWLABt9Pp0sEpBXJlm9
 pv8gEPpTXICDM+Vy8adIIz7y1EpUqraO3FnZ2xPAkCUHjNLjiOyymb5bqJWMmujrq1VF
 viRo3vJl3V1pbjFvyutFJrx89zD71pTVFPUWBkz5sAE8T+OiVT2KdcYRFqRvalLrqYS8
 +X4w==
X-Gm-Message-State: APjAAAUkzLHHevms1IEUZiIHvxSl75hQFrJMxJ8moqq6skcC/hTlERif
 NhtYVpnA8btAcffuxI+LKe0h2SEo1IuToNBxX05XXQ==
X-Google-Smtp-Source: APXvYqwOUeGGRRhaJGbVZ+SG70B06PdKeEzkxHgHaunrpKDQKwl27GuCbI2yR22beKWFZus69SGWNY0cH93dmwthMeg=
X-Received: by 2002:a1f:5602:: with SMTP id k2mr9999325vkb.36.1566476093048;
 Thu, 22 Aug 2019 05:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
 <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
 <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com>
 <CAPDyKFrDPxFMm710Z25i-euOT2rrgCNXVa4na-fye0xamMXq_A@mail.gmail.com>
 <c78d4c45-477b-4078-b269-aec72571c8cd@www.fastmail.com>
In-Reply-To: <c78d4c45-477b-4078-b269-aec72571c8cd@www.fastmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 14:14:16 +0200
Message-ID: <CAPDyKFrWMjaqv8z6HnmDn12c2SsjU6fEzjZesxj=nwbP9YRiPw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051454_188823_650AC00C 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 at 13:55, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Thu, 22 Aug 2019, at 21:15, Ulf Hansson wrote:
> > On Thu, 15 Aug 2019 at 07:37, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > >
> > >
> > > On Thu, 15 Aug 2019, at 15:06, Joel Stanley wrote:
> > > > On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > > >
> > > > > The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> > > > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > > > data bus if only a single slot is enabled.
> > > > >
> > > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > >
> > > > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > > >
> > > > Two minor comments below.
> > > >
> > > > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > > > @@ -0,0 +1,105 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-or-later
> > > >
> > > > No "Copyright IBM" ?
> > >
> > > I'm going rogue.
> > >
> > > That reminds me I should chase up where we got to with the binding
> > > licensing.
> > >
> > > >
> > > > > +%YAML 1.2
> > > > > +---
> > > >
> > > > > +
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/clock/aspeed-clock.h>
> > > > > +    sdc@1e740000 {
> > > > > +            compatible = "aspeed,ast2500-sd-controller";
> > > > > +            reg = <0x1e740000 0x100>;
> > > > > +            #address-cells = <1>;
> > > > > +            #size-cells = <1>;
> > > > > +            ranges = <0 0x1e740000 0x10000>;
> > > >
> > > > According to the datasheet this could be 0x20000. It does not matter
> > > > though, as there's nothing in it past 0x300.
> > >
> > > Good catch.
> > >
> >
> > Are you planning on sending a v6 or you want me to apply this and you
> > can post a patch on top?
>
> Yeah, sorry, I wasn't very clear there. I was hoping just to do a follow-up
> patch with the cleanups if you're okay with that?

That's fine. V5 applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
