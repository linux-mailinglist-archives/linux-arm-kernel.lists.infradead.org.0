Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BC51FCD02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7iUNb/BlYVxUnnLhTmVEYfaijhHGxGwv2oFpiE+o4A=; b=VvzANjf74anUUU
	bt6RctX1x3hXIdEdMo6twXazuJioTNa5oieX6PUKzmj+96vrHkYauMETr9efZmmC+RvtWmR07j01L
	8oFVwbLJ2u7ROdzQlz4+IuTA2mGMmqvBLrvN6kkYU5TNalu8TuVT+ukrNGddmdwPqv0W16/0CB9cL
	ZJXxPSiiwg95U61E3m+R3eK58AWF7Xh6sMRwh1pNj/augi9OsrPmAB5WIAi6Mq0sokFbJZt+LNVEq
	9lzQcgFx7nPVL1SFxFTBtZy+4CxU88bkComvLoyE6DH64vyAW70VGscTSVvnPCHZa9yHi+dvQH713
	ui0gNC0949Hc2dXDIvNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWoy-00055r-V9; Wed, 17 Jun 2020 12:05:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWop-00054E-He; Wed, 17 Jun 2020 12:05:29 +0000
X-UUID: 8263704063f44f299ca29f8cfe18a2c8-20200617
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ePqp1XCduyF+0DK0KjaNw0tZo0lcnwLg1Ln0fgHyKJo=; 
 b=QlBh1x10nTR1U+ZrroXjlD6WXEINjAwuZWnEXud+3u/irbnVxzIZpX3JYlnUtEUU2+oda91MII8TTvhJSCO5+CfqipiHGw5VBd+12YrKMBRaAhquggeLMRvrdMQadgWnEhEv86R86pJi62ltalz/HyBCGOshJQ3Zor9zVxB95PM=;
X-UUID: 8263704063f44f299ca29f8cfe18a2c8-20200617
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 188358142; Wed, 17 Jun 2020 04:05:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 05:05:19 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 20:05:18 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 20:05:17 +0800
Message-ID: <1592395520.30389.2.camel@mtksdaap41>
Subject: Re: [PATCH 08/12] dt-bindings: devfreq: add compatible for mt8183
 cci devfreq
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Date: Wed, 17 Jun 2020 20:05:20 +0800
In-Reply-To: <4087bcdb-a247-3d2d-96b2-16f965e8ba5c@samsung.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <CGME20200520034339epcas1p1524dea2d7089cb3492384bbe917dcffe@epcas1p1.samsung.com>
 <20200520034307.20435-9-andrew-sh.cheng@mediatek.com>
 <4087bcdb-a247-3d2d-96b2-16f965e8ba5c@samsung.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_050527_593493_94675F33 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Mark Brown <broonie@kernel.org>, "Rafael J
 . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-28 at 16:42 +0900, Chanwoo Choi wrote:
> Hi,
> 
> On 5/20/20 12:43 PM, Andrew-sh.Cheng wrote:
> > This adds dt-binding documentation of cci devfreq
> > for Mediatek MT8183 SoC platform.
> > 
> > Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> > ---
> >  .../devicetree/bindings/devfreq/mt8183-cci.yaml    | 51 ++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml b/Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
> > new file mode 100644
> > index 000000000000..a7341fd94097
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/devfreq/mt8183-cci.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: https://protect2.fireeye.com/url?k=33f1f15d-6e23ea05-33f07a12-0cc47a31c8b4-91b3f8aeecce95dc&q=1&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fdevfreq%2Fmt8183-cci.yaml%23
> > +$schema: https://protect2.fireeye.com/url?k=fc7d9089-a1af8bd1-fc7c1bc6-0cc47a31c8b4-b46f5afc59faf86d&q=1&u=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23
> > +
> > +title: CCI_DEVFREQ driver for MT8183.
> > +
> > +maintainers:
> > +  - Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> > +
> > +description: |
> > +  This module is used to create CCI DEVFREQ.
> > +  The performance will depend on both CCI frequency and CPU frequency.
> > +  For MT8183, CCI co-buck with Little core.
> > +  Contain CCI opp table for voltage and frequency scaling.
> > +
> > +properties:
> > +  compatible:
> > +    const: "mediatek,mt8183-cci"
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: "cci"
> > +
> > +  operating-points-v2: true
> > +  opp-table: true
> > +
> > +  proc-supply:
> > +    description:
> > +      Phandle of the regulator that provides the supply voltage.
> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +  - clock-names
> > +  - proc-supply
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/mt8183-clk.h>
> > +    cci: cci {
> > +      compatible = "mediatek,mt8183-cci";
> > +      clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
> > +      clock-names = "cci";
> > +      operating-points-v2 = <&cci_opp>;
> > +      proc-supply = <&mt6358_vproc12_reg>;
> > +    };
> > +
> > 
> 
> I recommend that add the more detailed example
> with OPP table with CPU node.
> 

Hi Chanwoo Choi,

Actually, for previous versions of my patch set, I didn't use
governor_passive as cci_devfreq governor.
So I think it is okay that not provide CPU OPP node for this cci device
node.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
