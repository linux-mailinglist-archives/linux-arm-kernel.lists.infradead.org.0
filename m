Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7F13AFFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 09:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBGSvlNIyGTTelbzCedhHjl16rN3ONcnbru+2WM2aAY=; b=qxaS/AdQJItQZO
	tS0GVgn5aYp1XSaMx+IaFSJ5/sgRwcs4BWiIRfgMnjvCr2ZdPHQ1iacgvIuHlz0wwiwv7WsuNgSmp
	LxSiNPQ3y0odSMaIC2pnp9OY50fKDCUVWvLsEjlP+QsAEBhcFESV5f8+/gav+s9/og4YR5l2pauJF
	ykIemEnrCxHpmoguwz4xMWKQlCxLJWXCDwxXcqcP+b8AgKkwxvWYA/NDEuRk9t3AcuqJwBOmnzA49
	kyu0RAQNo0LTT3Sp/Hg34N2vCcLZFCkhp/vzBRWJuWIGADXY+QBPyYLJc3HsEaceKa4K9VMz7IBBO
	p9H2rJynwx0Gobx+1cgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haF5m-0003LQ-OT; Mon, 10 Jun 2019 07:51:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haF5T-0003Jg-R4; Mon, 10 Jun 2019 07:51:29 +0000
X-UUID: 442748100ce84102b8507b11e70dff6b-20190609
X-UUID: 442748100ce84102b8507b11e70dff6b-20190609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 228623653; Sun, 09 Jun 2019 23:51:23 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 00:51:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 15:51:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 15:51:13 +0800
Message-ID: <1560153073.31854.6.camel@mtksdaap41>
Subject: Re: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
From: CK Hu <ck.hu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 10 Jun 2019 15:51:13 +0800
In-Reply-To: <CAHD77H=vuPi2Rj4Mw-CQ2=UYX7YnS8w8FpUk0QTVxNUVLWKbJg@mail.gmail.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
 <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
 <1560134057.28527.5.camel@mtksdaap41>
 <CAHD77H=vuPi2Rj4Mw-CQ2=UYX7YnS8w8FpUk0QTVxNUVLWKbJg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_005127_881524_80585C8B 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Stu Hsieh <stu.hsieh@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tomasz:

On Mon, 2019-06-10 at 12:32 +0900, Tomasz Figa wrote:
> Hi CK, Stu,
> 
> On Mon, Jun 10, 2019 at 11:34 AM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Stu:
> >
> > "mediatek,mt2712-mipicsi" and "mediatek,mt2712-mipicsi-common" have many
> > common part with "mediatek,mt8183-seninf", and I've a discussion in [1],
> > so I would like these two to be merged together.
> >
> > [1] https://patchwork.kernel.org/patch/10979131/
> >
> 
> Thanks CK for spotting this.
> 
> I also noticed that the driver in fact handles two hardware blocks at
> the same time - SenInf and CamSV. Unless the architecture is very
> different from MT8183, I'd suggest splitting it.
> 
> On a general note, the MT8183 SenInf driver has received several
> rounds of review comments already, but I couldn't find any comments
> posted for this one.
> 
> Given the two aspects above and also based on my quick look at code
> added by this series, I'd recommend adding MT2712 support on top of
> the MT8183 series.

In [1], "mediatek,mt8183-seninf" use one device to control multiple csi
instance, so it duplicate many register definition. In [2], one
"mediatek,mt2712-mipicsi" device control one csi instance, so there are
multiple device and the register definition does not duplicate. You
recommend adding MT2712 support on top of the MT8183 series, do you mean
that "mediatek,mt2712-mipicsi" should use one device to control multiple
csi instance and duplicate the register setting?

[1] https://patchwork.kernel.org/patch/10979121/
[2] https://patchwork.kernel.org/patch/10974573/

Regards,
CK

> 
> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
