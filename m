Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4499D152
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 16:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqO+3/VjpMk0oLD/8EfNymuqj1ca1AjXOqYug8B5KVA=; b=sE7g+ydyLAal0k
	sW9JKD2c4QvNpHILQN3HfMKqP8cz60Zyvn6vPwBI7OwFOAi9SMrpnuSFev3mZHelRIiB1sB3UuWDp
	EYOyuDfrMY3a2+tXDsb4BNgYZbc0XifstJn1t8UQulzSdJ9xJql3vMqEkm0LYHLy/v6dj3cudtcJO
	aASTc5P+UL8c4xENSW4dhmFOEANWYAmjfNfWfsyYpX49xD2fatwrs9M3on2/fnNEEVpIVUxk9rACZ
	gVOUS0Fv3tEzHL7eBO/MwT7ImRdZcQgG0Sp3cEjmmK1U0OzmsOi465z8FoPf5tuZexhYgEfE19bH9
	pOTk6dAoJ+C9/8/ohkiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2FdA-0000Ui-KZ; Mon, 26 Aug 2019 14:06:00 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Fcx-0000U7-H3; Mon, 26 Aug 2019 14:05:49 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 8BCBD634C87;
 Mon, 26 Aug 2019 17:05:36 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1i2Fcm-0000Q9-D9; Mon, 26 Aug 2019 17:05:36 +0300
Date: Mon, 26 Aug 2019 17:05:36 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Stu Hsieh <stu.hsieh@mediatek.com>
Subject: Re: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
Message-ID: <20190826140536.GE826@valkosipuli.retiisi.org.uk>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
 <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
 <1560134057.28527.5.camel@mtksdaap41>
 <CAHD77H=vuPi2Rj4Mw-CQ2=UYX7YnS8w8FpUk0QTVxNUVLWKbJg@mail.gmail.com>
 <1560153073.31854.6.camel@mtksdaap41>
 <CAAFQd5DDE-L7mW8sTXVYOTLZ8yi3+X6Q3O73fJ61e1aUoeddgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5DDE-L7mW8sTXVYOTLZ8yi3+X6Q3O73fJ61e1aUoeddgg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_070547_925283_35C75E3E 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 CK Hu <ck.hu@mediatek.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 04:58:02PM +0900, Tomasz Figa wrote:
> On Mon, Jun 10, 2019 at 4:51 PM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Tomasz:
> >
> > On Mon, 2019-06-10 at 12:32 +0900, Tomasz Figa wrote:
> > > Hi CK, Stu,
> > >
> > > On Mon, Jun 10, 2019 at 11:34 AM CK Hu <ck.hu@mediatek.com> wrote:
> > > >
> > > > Hi, Stu:
> > > >
> > > > "mediatek,mt2712-mipicsi" and "mediatek,mt2712-mipicsi-common" have many
> > > > common part with "mediatek,mt8183-seninf", and I've a discussion in [1],
> > > > so I would like these two to be merged together.
> > > >
> > > > [1] https://patchwork.kernel.org/patch/10979131/
> > > >
> > >
> > > Thanks CK for spotting this.
> > >
> > > I also noticed that the driver in fact handles two hardware blocks at
> > > the same time - SenInf and CamSV. Unless the architecture is very
> > > different from MT8183, I'd suggest splitting it.
> > >
> > > On a general note, the MT8183 SenInf driver has received several
> > > rounds of review comments already, but I couldn't find any comments
> > > posted for this one.
> > >
> > > Given the two aspects above and also based on my quick look at code
> > > added by this series, I'd recommend adding MT2712 support on top of
> > > the MT8183 series.
> >
> > In [1], "mediatek,mt8183-seninf" use one device to control multiple csi
> > instance, so it duplicate many register definition. In [2], one
> > "mediatek,mt2712-mipicsi" device control one csi instance, so there are
> > multiple device and the register definition does not duplicate.
> 
> I guess we didn't catch that in the review yet. It should be fixed.
> 
> > You
> > recommend adding MT2712 support on top of the MT8183 series, do you mean
> > that "mediatek,mt2712-mipicsi" should use one device to control multiple
> > csi instance and duplicate the register setting?
> 
> There are some aspects of MT8183 series that are done better than the
> MT2712 series, but apparently there are also some better aspects in
> MT2712. We should take the best aspects of both series. :)

Stu: Are the two devices similar enough or not; does this look like a
feasible approach to you?

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
