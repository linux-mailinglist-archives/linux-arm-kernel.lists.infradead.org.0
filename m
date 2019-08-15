Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054B98E480
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf/NskXpZhY9d3HDXIKqKm2iHG+iZeWaiZVhJVBCLgo=; b=okZNZjv6mjDrx/
	uw/rv6lT6zS6QTn3LkCmjOotfXotvZl2LiSeCm44FtCP9vyvSxHkC6toVnAYf5/Vje9yksGiIbHGc
	b3z5/X6hDEV31pdlyQipYadbQeLnLbJ0Q8faEntQaLjSceCCAq+sr21E/UksVAdmbMd6w5BJHap7t
	Ew1MioRG0zGOn8wedDsVhgvXCOeBnsmthLLCcQxvzty1idSNlwY/3pBjE8DW0lnLpPwBt2Zk7NGOv
	qGSqEmx4Cg2CH2P5wi+g37OMkE4SSZ1iqxiDsLdhhitQQrCw3bPTLysk+vdWXpmD2rh0bizwy/Y9q
	D6aVa+2SIt7xBEKK4WPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8So-0004vN-BQ; Thu, 15 Aug 2019 05:38:18 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8SZ-0004uM-Ob
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:38:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C34372DFF;
 Thu, 15 Aug 2019 01:37:55 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 15 Aug 2019 01:37:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=5zsQDb8xUp+LgDRGio1PmqyOCn5+LVk
 X68USrKI2P1I=; b=f7SS+NngSiN2MY8ZVfjtKzTX/WdFhVuem59D8+tBGrODWzK
 0XFfg8rSDDfWrYCDmCkuD0OXzcPTx3rKyBFaEN9YOElltnhgGSO19zx93gUWQ69a
 /kvo75Le7nnshw7K6OUaqswfHGj+SNif2UBjMcMXDGpUdMBvaZISOHEVfthbIbrJ
 iuwnwT+0TG9M2JXResQJ39I2NRkU5JNdn0KLZDWR9EEIBq5fGGjtLv8MYJKW1+tQ
 X4l0/oVjNitjJBs+tGcLvTNwUrL7Yot4lSDkx2it4crriCORiMG2u/HCIxi1ICwn
 ztSUEXv5Mvf9c2n4EimmDAnTzVjqvh1H5J+RCvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5zsQDb
 8xUp+LgDRGio1PmqyOCn5+LVkX68USrKI2P1I=; b=zt8Uh/pJpoj61NZsNQnvEg
 MlsVP6A4kxWb/LIsMK0edIwb5QODzedzq2O+voUTByOjTGmhnsNOnqSAcO/iTLlx
 BlomLDsYocRxwDYdFsU7fujadg5Ed9havpyiG8NwYhyvokCtTMpWwvumY45wiCpX
 ByokDpteFFZmT+aNFBP0iO8FzJYV9lzOqyGUVmNDaDuBQInukP0KKQTgaxclTBSA
 am0DfrALmhc8uyU2rAbhh+urmh0Te2sup+78O9nFIFvz81KYDB2rP39dRrF92rei
 MzLb+uSC1/p4PN+Hzp/mehtC1TTscZSoxovVqN6fy2cn4i9yIWGS8h82xmxyhWAg
 ==
X-ME-Sender: <xms:su9UXUAW21DLb-w8jMydQFPfwgNAwS9zj8W8LDYH2d9pWPk6GN4i8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeftddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:su9UXaDeB60dyQ98Gp1LGhakQt2wYK3LrSfhMoK8X4W7KqX83dEG8w>
 <xmx:su9UXQEx739iNbtcoK-xFIbATPfw7RbYxP9Lwd29yFrpiqZ_rwif4g>
 <xmx:su9UXdlfxTeYvBADe5OwKlLOTp7gzbU4vMyyd_lyHlYey_6iArZDOQ>
 <xmx:s-9UXc0H-Dg-LhOuQV81L2q2oCwrlLKoGs-9EEAB1vUYeQ98OIbogA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 52037E00A4; Thu, 15 Aug 2019 01:37:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-869-g2d94aad-fmstable-20190814v1
Mime-Version: 1.0
Message-Id: <6c94aada-9c4a-4f55-9a43-349282ad12af@www.fastmail.com>
In-Reply-To: <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
References: <20190807003629.2974-1-andrew@aj.id.au>
 <20190807003629.2974-2-andrew@aj.id.au>
 <CACPK8Xe6Zp1uOqEffEc0b6oGa7portEAifGPRqb876HmA+oZeg@mail.gmail.com>
Date: Thu, 15 Aug 2019 15:08:24 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_223803_942846_C64CF1C9 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 15 Aug 2019, at 15:06, Joel Stanley wrote:
> On Wed, 7 Aug 2019 at 00:38, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
> > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > data bus if only a single slot is enabled.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> Two minor comments below.
> 
> > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > @@ -0,0 +1,105 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later
> 
> No "Copyright IBM" ?

I'm going rogue.

That reminds me I should chase up where we got to with the binding
licensing.

> 
> > +%YAML 1.2
> > +---
> 
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/aspeed-clock.h>
> > +    sdc@1e740000 {
> > +            compatible = "aspeed,ast2500-sd-controller";
> > +            reg = <0x1e740000 0x100>;
> > +            #address-cells = <1>;
> > +            #size-cells = <1>;
> > +            ranges = <0 0x1e740000 0x10000>;
> 
> According to the datasheet this could be 0x20000. It does not matter
> though, as there's nothing in it past 0x300.

Good catch.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
