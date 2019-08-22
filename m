Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58708992AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sLRqvav3ayhzdN3h5OvkfOQSP8R5/TWKQsjCf6AN4k=; b=Bf1LUH1Uy8vXw+
	Xuh2W10BRVrzcnwIu2/1WLxKlg9wvIVcQCvgkhazpPeiZ1cRy9CVrXeWe2cvZ7uiUtJ5PiwgHB5KY
	oe7iuzkA9vC/5NJMzOFZJZtP977USXXV3/0OHx9iCaK+Baiuk18RMkdimm2JsT52URQ4nGQF5jtSN
	AdO5pZbrjqtH/BORbak4eLD++MuTbPDwfr43YUldNDGikfowLLnB+TwiLYyEtrbQLJVgxhvntRTa3
	LmPdZABewrUq/2n+XkBdoSEi1U0T3+/M7U60ccgd6Xz3ReERWp3UeVKPI2LlQC5bNJZjuI9hR340b
	/icQQwQzPKxKw/UTYySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lgu-0002z8-69; Thu, 22 Aug 2019 11:55:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lgO-0002wX-Bz
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:55:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6C0AD1174;
 Thu, 22 Aug 2019 07:55:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 22 Aug 2019 07:55:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=zSJauXLFTt8FQXHSlqnwC5NrdUuNC7V
 HRKBipmoRJdY=; b=heb4RNlkCmWc7wvfj7j8Rt9uoYjYOFLWgs0NIxIojr5kZMT
 D9Df7dJCG+Yab+3QD5oJKByXQ89US4AU3N8ekxbt4aWOzHvfST54N/qNAppAxQlh
 wkNiufu110JRd0I+yVa132Mum168IgXiEHMChstVTBSpWR9vhtwJWiUWidJsyTrd
 N8Rs6791JPsFq0im3wvOdIl8w5lLPaElZTkrXLrHbYsJhQeSn/tvcMIOuxCFpk/D
 oSXGZLOLOZv21cY9F8U80taZxrtxBCs4wsblTDej4BBaKywE1rkclqosnjpsx+8t
 EK8WC6YZqYFOLFzi+IeGUX2aTkJZu+9mmxuRbmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=zSJauX
 LFTt8FQXHSlqnwC5NrdUuNC7VHRKBipmoRJdY=; b=MEIM/3bHWqZn7L00pCocy9
 IodbZoNJGAn9RRMErPLnplhfBcW3iVEISY/iFJyCfA9M0NybFkfsRfI4AiK/+mSJ
 ac05sSBMQMFcPC7JQtrGBx6byDbw+XjdkDrC6//7D1BsNxtXFRCfx/AE3flbwItF
 H0es8drXgSQ5upSzBxhrDvBEojIQ7FoECCHGMke5oMGJJpL0632oDLU6/YC8wDsK
 necKhXlgIHPZ+8arUzZ1LkgFmJyzSLDLdJT+bs5ZOvF2KPofLOb4i5o5L+rr4IOL
 cOrVgDiqk/2QLjbqqO6G8jLCDo7tlAMmr3qZB74FxDTYVxtDSjGgBSIDBPwCUs/A
 ==
X-ME-Sender: <xms:m4JeXT6I4UBQ0qr8jl0ELmtNTLNRx9CLFsUS7_jsTEVK8RhKDtt-ew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegiedgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:m4JeXf63ejuLicYWDghgGybdL-6oSIhCb_Nw6jkeYOQpf8azJxo8pA>
 <xmx:m4JeXV-sGWjJYX2i6u8iMn3yQC_g3L8hai70ELfkAqqmTouOFz-T1A>
 <xmx:m4JeXd_bIx8VxH6JTvHGVtif74ia7vPGAZmBFIU6miSPxSD2Bh-G3g>
 <xmx:nIJeXe1xfSUuGvdvoZeaP7FbUh4Hu97elHgqQwJfJoEtDsMHM4c1hg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 633BCE00A4; Thu, 22 Aug 2019 07:55:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <c78d4c45-477b-4078-b269-aec72571c8cd@www.fastmail.com>
In-Reply-To: <CAPDyKFrDPxFMm710Z25i-euOT2rrgCNXVa4na-fye0xamMXq_A@mail.gmail.com>
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
 <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
 <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com>
 <CAPDyKFrDPxFMm710Z25i-euOT2rrgCNXVa4na-fye0xamMXq_A@mail.gmail.com>
Date: Thu, 22 Aug 2019 21:25:24 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ulf Hansson" <ulf.hansson@linaro.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_045512_585621_0BD74937 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On Thu, 22 Aug 2019, at 21:15, Ulf Hansson wrote:
> On Thu, 15 Aug 2019 at 07:37, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Thu, 15 Aug 2019, at 15:06, Joel Stanley wrote:
> > > On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> > > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > > data bus if only a single slot is enabled.
> > > >
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > >
> > > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > >
> > > Two minor comments below.
> > >
> > > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > > @@ -0,0 +1,105 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-or-later
> > >
> > > No "Copyright IBM" ?
> >
> > I'm going rogue.
> >
> > That reminds me I should chase up where we got to with the binding
> > licensing.
> >
> > >
> > > > +%YAML 1.2
> > > > +---
> > >
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/clock/aspeed-clock.h>
> > > > +    sdc@1e740000 {
> > > > +            compatible = "aspeed,ast2500-sd-controller";
> > > > +            reg = <0x1e740000 0x100>;
> > > > +            #address-cells = <1>;
> > > > +            #size-cells = <1>;
> > > > +            ranges = <0 0x1e740000 0x10000>;
> > >
> > > According to the datasheet this could be 0x20000. It does not matter
> > > though, as there's nothing in it past 0x300.
> >
> > Good catch.
> >
> 
> Are you planning on sending a v6 or you want me to apply this and you
> can post a patch on top?

Yeah, sorry, I wasn't very clear there. I was hoping just to do a follow-up
patch with the cleanups if you're okay with that?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
