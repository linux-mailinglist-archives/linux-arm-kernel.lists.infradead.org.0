Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243D65F5F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpzq2U3wOM7dgo9r2QJXNjPgI11KhPA6up/KSKbEZBg=; b=aIRr7DiRzG6rha
	8EojIE/QsX7dlDD1MJwLRo3qqhQeFwE5rpURz9XqfJZqsHOEdTIzV624KF0+YWbVqY2NzmwwTVcDN
	JmdEKPQOTmaBPyHbuSqB8ziCJpwCk2gxRb9OlLdcxEAPcwuUYmlUHvYpy7q3sAmJNPnrHKswK0YIl
	O94qc+mvaZ8M7pjrue6eYg1nG0n+S/32qAj9J6Gyc+ADEq5W/wdwKb6OVaPIT2KBddM5033mZZdUd
	ddVXll8kg34k8GcqfFeNqXTIm7GP4SobmPdU4YhIqIHAJ38mH+j8pePEwwyhLF+GDOKAKGuv4bNJw
	wY9Z3Hhzknr1LhYhYrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyLc-00032r-Tj; Thu, 04 Jul 2019 09:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyLQ-00031y-3n
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:48:01 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hiyLH-0002sf-TQ; Thu, 04 Jul 2019 11:47:51 +0200
Message-ID: <1562233671.6641.9.camel@pengutronix.de>
Subject: Re: [PATCH V2 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>,  "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,  "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>,  "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Date: Thu, 04 Jul 2019 11:47:51 +0200
In-Reply-To: <DB3PR0402MB39167FBAA2A3867148063F83F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704092600.38015-1-Anson.Huang@nxp.com>
 <1562233305.6641.8.camel@pengutronix.de>
 <DB3PR0402MB39167FBAA2A3867148063F83F5FA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_024800_152471_03763550 
X-CRM114-Status: GOOD (  16.76  )
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-07-04 at 09:46 +0000, Anson Huang wrote:
> Hi, Philipp
> 
> > On Thu, 2019-07-04 at 17:25 +0800, Anson.Huang@nxp.com wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > 
> > > i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
> > > property and related info to support i.MX8MM.
> > > 
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > New patch.
> > > ---
> > >  Documentation/devicetree/bindings/reset/fsl,imx7-src.txt | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > > b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > > index 13e0951..bc24c45 100644
> > > --- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > > +++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > > @@ -7,7 +7,7 @@ controller binding usage.
> > >  Required properties:
> > >  - compatible:
> > >  	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
> > > -	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
> > > +	- For i.MX8MQ/i.MX8MM SoCs should be "fsl,imx8mq-src", "syscon"
> > 
> > Please still add the "fsl,imx8mm-src" for i.MX8MM, just in case a significant
> > difference is discovered later.
> 
> OK, then I will add a new line as below:
> 
> For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"

Yes, that looks good, thanks.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
