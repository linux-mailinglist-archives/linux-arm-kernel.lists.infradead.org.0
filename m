Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0818598D2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts0A3G18JsQ9UguE6dvLFRS3U4OxTH2I/YDddwb5R1w=; b=du/gTY29w7FpBl
	uyl+H6M4I/76zPyJ5wIXdZT0EldJ/r7zSdQcCN+GkrKHtlOSOvJQ8xcvShzp7ER8D9feeaHKxqM1s
	7LHjhzN+qcjDtT5uAcLgCr7WNACnN+4378LlbDBWlkUEo9l9lqS1Z+5M2adaMwd5UYZWyGA/4Q0eT
	BebVAa24kv/tyceiekx+NZU7/l8k5HUA6Et6O4TLhYOnYcBBdaq+BdsR0SRuXcvHf7gZe1NF535xM
	2Vc8Ckp4PbXnV0PIJ+kAS05aWorjPFax6jSvJJw6vnpIbrGqsjA+sNIX+YV9cH/RsmJsi4QFOBycD
	4aqFhICSRfDJ8WPZBQrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iFG-00061r-C5; Thu, 22 Aug 2019 08:14:58 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iDE-0005TI-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:12:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E5CD749470;
 Thu, 22 Aug 2019 10:12:45 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DGrO6zawJa6R; Thu, 22 Aug 2019 10:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 5D8A34941E;
 Thu, 22 Aug 2019 10:12:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lvSPKS5MRZ-2; Thu, 22 Aug 2019 10:12:40 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 3B934494AD;
 Thu, 22 Aug 2019 10:12:40 +0200 (CEST)
Message-ID: <c859d12167d18c21dda13b30c2dd3256f407d1d9.camel@v3.sk>
Subject: Re: [PATCH 02/19] dt-bindings: arm: mrvl: Document MMP3 compatible
 string
From: Lubomir Rintel <lkundrak@v3.sk>
To: Rob Herring <robh@kernel.org>
Date: Thu, 22 Aug 2019 10:12:38 +0200
In-Reply-To: <20190821210349.GA29732@bogus>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-3-lkundrak@v3.sk> <20190821210349.GA29732@bogus>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_011253_239619_268FCACB 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 16:03 -0500, Rob Herring wrote:
> On Fri, Aug 09, 2019 at 11:31:41AM +0200, Lubomir Rintel wrote:
> > Marvel MMP3 is a successor to MMP2, containing similar peripherals with two
> > PJ4B cores.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > ---
> >  Documentation/devicetree/bindings/arm/mrvl/mrvl.txt | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > index 951687528efb0..66e1e1414245b 100644
> > --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > @@ -12,3 +12,7 @@ Required root node properties:
> >  MMP2 Brownstone Board
> >  Required root node properties:
> >  	- compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> > +
> > +MMP3 SoC
> > +Required root node properties:
> > +	- compatible = "marvell,mmp3";
> 
> Please convert this file to DT schema before adding new SoCs.

Is this something that should generally be done for all new or changed
DT bindings?

> 
> Rob

Thanks
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
