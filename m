Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE8FB09A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 09:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piBUuk0kSqq7J6GukwDuOzTw/cwxwesc46epPxeBvj8=; b=oCpY22+/3UIMz4
	3z2jte/GRhvqwZ1scpFJe0FBfrk2IZ6bGhYqwQ7kzACjBD+Ab5BG8epzWgSA8Sc6cbCZ+Rkt7xj11
	z110cW85vHiO5lT0WknwgLR1H5ZEeWVQyFht+d6fDdVlgjbKCtL9Jxaa/aC/SrzUSuMrs0/qw7gRz
	ehFKMuYEy7NKqde7IxdmXfqfXSqxQyC23AYX2dU2CWbAqJ9okgwA2LhviVd97RoW4nIGF3Cua6fPR
	6IoSF42Ci4HyhaOJWWVtuUyXgd0Uh9xa0ZhZ5hs6YOXQRO0TyG2QgFYJ6Tg8ePe/opxOa69Gfhm/3
	tcgLQrMSvZdmNcm0x+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8JmO-0003Pk-FZ; Thu, 12 Sep 2019 07:44:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Jlz-0003OX-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 07:44:13 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8Jlr-0001qk-0T; Thu, 12 Sep 2019 09:44:03 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i8Jlh-00023h-Ee; Thu, 12 Sep 2019 09:43:53 +0200
Date: Thu, 12 Sep 2019 09:43:53 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v1 1/2] iommu: pass cell_count = -1 to
 of_for_each_phandle with cells_name
Message-ID: <20190912074353.wqohpfydjxueqade@pengutronix.de>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190903125210.GB11530@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903125210.GB11530@8bytes.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_004411_769284_4A87CFA2 
X-CRM114-Status: GOOD (  14.63  )
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, kernel@pengutronix.de,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 02:52:10PM +0200, Joerg Roedel wrote:
> On Sat, Aug 24, 2019 at 03:28:45PM +0200, Uwe Kleine-K=F6nig wrote:
> > Currently of_for_each_phandle ignores the cell_count parameter when a
> > cells_name is given. I intend to change that and let the iterator fall
> > back to a non-negative cell_count if the cells_name property is missing
> > in the referenced node.
> > =

> > To not change how existing of_for_each_phandle's users iterate, fix them
> > to pass cell_count =3D -1 when also cells_name is given which yields the
> > expected behaviour with and without my change.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/iommu/arm-smmu.c     | 2 +-
> >  drivers/iommu/mtk_iommu_v1.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> =

> Acked-by: Joerg Roedel <jroedel@suse.de>

Does this ack mean that Rob is expected to apply this together with
patch 2?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
