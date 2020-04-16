Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E3E1ABE0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 12:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6S0JRrAwGJS5+42KUPD7endBrKMytnZJo4HhmTSC2aI=; b=nru9WSNtk1dQn6
	O1mbzm4jv6VO/WAmk+6OMySWq02ioTrKjSzVU2v/DgNw69v49vo+6GPOC8PgfdivcuERI9qtTHav0
	9Nkc6ial4rBvsUmbaO1A/QBnVi9hDvrHyil3oBh0i5XhwnLyFkYoHXIjZuHADGGGvLS33UVEJIHD5
	3skhuHRNBgef5Og6e0q14KWauQPDIvH3EvdlrKcY7ggQ+z9sd3HoeOdOM7SzhpbGKL8HRHK57X+NB
	leOcxAgUa+mYBnQP905mQAWBDzTPyDC5SM0+cTj3RMw6ZKSqP0MpYgPxw0ONb4x9qA0D7Fo/B7KH0
	862TTdkTDOjI6Oce8vpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP1uS-0000Gf-W5; Thu, 16 Apr 2020 10:38:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP1uK-0000Ff-Ox
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 10:38:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jP1uG-00044F-53; Thu, 16 Apr 2020 12:38:04 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jP1uF-0002qS-5f; Thu, 16 Apr 2020 12:38:03 +0200
Date: Thu, 16 Apr 2020 12:38:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200416103803.eifgth77wi44pejc@pengutronix.de>
References: <1587019158-12143-1-git-send-email-Anson.Huang@nxp.com>
 <20200416093932.2mkcyv4rs6v6a24a@pengutronix.de>
 <DB3PR0402MB391613C2B53CEE067E1C7EC7F5D80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391613C2B53CEE067E1C7EC7F5D80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:35:43 up 153 days,  1:54, 168 users,  load average: 0.25, 0.26,
 0.19
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_033808_806554_164AA00B 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-04-16 09:48, Anson Huang wrote:
> Hi, Marco
> 
> > Subject: Re: [PATCH V2 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> > json-schema
> > 
> > Hi Anson,
> > 
> > On 20-04-16 14:39, Anson Huang wrote:
> > 
> > ...
> > 
> > > diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > > new file mode 100644
> > > index 0000000..1c6e600
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> > > @@ -0,0 +1,66 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id:
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetr
> > ee.org%2Fschemas%2Fclock%2Fimx6q-clock.yaml%23&amp;data=02%7C01%
> > 7Canson.huang%40nxp.com%7Ca840fd5be8c94d4d950608d7e1ea16a2%7C6
> > 86ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637226267845578228&
> > amp;sdata=Iw1CkVBMqw3m6sox6C3khcMy0BHNCQ9v2k72q3CM6Xs%3D&a
> > mp;reserved=0
> > > +$schema:
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetr
> > ee.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Canson.hu
> > ang%40nxp.com%7Ca840fd5be8c94d4d950608d7e1ea16a2%7C686ea1d3bc2
> > b4c6fa92cd99c5c301635%7C0%7C1%7C637226267845578228&amp;sdata=P
> > Be2CEoDdMo9I1m3DHbITCyYxB4GF%2FigP%2FNd7YCopCQ%3D&amp;reserve
> > d=0
> > > +
> > > +title: Clock bindings for Freescale i.MX6 Quad
> > > +
> > > +maintainers:
> > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: fsl,imx6q-ccm
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 2
> > 
> > IMHO I would force them to have exactly two so we need
> > minItems: 2 too here.
> 
> Actually, those 2 interrupts are NOT necessary for some platforms, such as i.MX platforms
> do NOT enable them at all, so is it OK to force them to be '2' here?

Why do we list them as required if they are not required? Currently all
5 platforms adding both irqs so this won't break anything here.

Regards,
  Marco

> Thanks,
> Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
