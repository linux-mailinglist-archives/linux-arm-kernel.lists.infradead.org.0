Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9669AAA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5GFA0vFToO1I/PQHd7kjVE2XtBNG+S8PDI2gsMkuD4=; b=btPuHb1Td51/A2
	J+Yhsm+K70M/lK3z2SNp/XZjTfWqS+GzO5wizobCTHhnhPD1g16eb6mD4Edsny053gjuF8OXdvECu
	dtwvwxtuHViZUQjV51uHIhoVsDzGLMOwk6rsQFqdloQrMx+PR2dxvOwfb8mdrntasdZng/7d8BytF
	ovSVI7wGpr+kQqX61WdrTK3tR+DCbPvgcwn7Eg+WshuuR/INOFjtKLDZQbHJG2kj3T5fibaL9OGZG
	l04/xm4Tzi0XTyLjPLbABs6UGr1zyTfdBDec+ChpoTjEQNJHuMQSaMq9ekI+ajyR+wvZschf16ysZ
	WRK59kf4X/mpyCJ4/cCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15HW-0004LG-DG; Fri, 23 Aug 2019 08:50:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Gv-0004Ku-DK
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:50:14 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i15Go-0003X9-JC; Fri, 23 Aug 2019 10:50:06 +0200
Message-ID: <1566550205.3023.4.camel@pengutronix.de>
Subject: Re: [PATCH 2/8] soc: ti: add initial PRM driver with reset control
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, Suman Anna <s-anna@ti.com>, Keerthy
 <j-keerthy@ti.com>, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-omap@vger.kernel.org,
 robh+dt@kernel.org
Date: Fri, 23 Aug 2019 10:50:05 +0200
In-Reply-To: <e75eed22-1bed-4c8a-930d-e05890d58c47@ti.com>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-3-git-send-email-t-kristo@ti.com>
 <3b76f0e0-7530-e7b5-09df-2de9956f30ee@ti.com>
 <59709a2d-f13a-bd55-8aba-864c1cf2f19e@ti.com>
 <9372957c-9ab9-b0dd-fe07-815eb2cb2f16@ti.com>
 <0f335aec-bfdf-345a-8dfb-dad70aef1af6@ti.com>
 <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
 <1566400237.4193.15.camel@pengutronix.de>
 <5e82199f-2f75-ee05-ba65-1595d0526572@ti.com>
 <e75eed22-1bed-4c8a-930d-e05890d58c47@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_015013_465726_446AAA5E 
X-CRM114-Status: GOOD (  12.45  )
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-08-21 at 21:15 +0300, Tero Kristo wrote:
> On 21.8.2019 18.45, Suman Anna wrote:
> > On 8/21/19 10:10 AM, Philipp Zabel wrote:
[...]
> > > In general, assuming the device tree contains no errors, this should not
> > > matter much, but I think it is nice if the reset driver, even with a
> > > misconfigured device tree, can't write into arbitrary bit fields.
> > 
> > Tero,
> > Can you add a check for this if possible?
> 
> Well, I can enforce the usage of reset bit mapping, which I have already 
> implemented for some SoCs like am33xx. If the specific ID is not found, 
> I can bail out. So, basically in this example requesting reset at index 
> 3 would succeed, but it would fail for any other ID; this would be 
> direct HW bit mapping.

That should be fine.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
