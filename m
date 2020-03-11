Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5003C1819EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+4z0Kz4XGliW9XC9ZobyFBxwVsIB8s6wEbWh7Z/JC4=; b=oI43MJBucV9Ry8
	IG+HEkK/qKwNECBEZuQzGCphmB92RjuFgT4iMRRB9XS3RipfbAtJCR9Yt6E35gyhR9YDPgTxzh1C1
	+u1+2cP7d4nSaGSsdKrYYcj76OuQ/P/7WnJcRWpRuzt1iXydJJMXvItATnB9nQre/Mn7Qi1gmo7AJ
	8MpfBJMpZflYMgoa0K0SmGzjSDJTy1dOspICQ2v0jbTjAcxM1piUJHFFXZIb6OYb665/+kDIepqKA
	d3IsAiZd5ByHPXH/l6xYfBwyOP6o/gHe9vnIl9IN5EEr5A/AzMHprcNHYkfOpgeGT0gLIklJiM84a
	t86pBk7EXkXeyJ7eWJ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1WY-0000Bc-Gw; Wed, 11 Mar 2020 13:35:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1WI-00007g-2p; Wed, 11 Mar 2020 13:35:35 +0000
X-UUID: e56f0075960d49c5a2992a60b3ab4135-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=McO5u8qL+2dJhFVvrj+B5fmGSNs+dJJtNOnC6DdTdJc=; 
 b=Q7F2/kHwommk2mz09pXfwLp7xVMeNpjJtHnnQuSsY8y3FL7SRMEmMszyIIh1OfI6DCofaMjxggnOXg9SUePwRdan+GDZFoZ5XaQac+rmB3Pq7Dqx6jZFCph6UtpdcGXB6XvPtBCq7HAwfw93VOqGTuXl6lnYYpT+YKeDE4ryRX8=;
X-UUID: e56f0075960d49c5a2992a60b3ab4135-20200311
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1973424822; Wed, 11 Mar 2020 05:35:29 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 06:35:27 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 21:35:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Mar 2020 21:35:10 +0800
Message-ID: <1583933726.1550.1.camel@mtksdaap41>
Subject: Re: [PATCH v11 5/5] soc / drm: mediatek: Fix mediatek-drm device
 probing
From: CK Hu <ck.hu@mediatek.com>
To: Matthias Brugger <mbrugger@suse.com>
Date: Wed, 11 Mar 2020 21:35:26 +0800
In-Reply-To: <4e30f8a7-7334-494b-7ef6-205f5d6d4d36@suse.com>
References: <20200311115614.1425528-1-enric.balletbo@collabora.com>
 <20200311115614.1425528-6-enric.balletbo@collabora.com>
 <4e30f8a7-7334-494b-7ef6-205f5d6d4d36@suse.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_063534_136143_B3B56045 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 14:26 +0100, Matthias Brugger wrote:
> 
> On 11/03/2020 12:56, Enric Balletbo i Serra wrote:
> > In the actual implementation the same compatible string
> > "mediatek,<chip>-mmsys" is used to bind the clock drivers
> > (drivers/soc/mediatek) as well as to the gpu driver
> > (drivers/gpu/drm/mediatek/mtk_drm_drv.c). This ends with the problem
> > that the only probed driver is the clock driver and there is no display
> > at all.
> > 
> > In any case having the same compatible string for two drivers is not
> > correct and should be fixed. To fix this, and maintain backward
> > compatibility, we can consider that the mmsys driver is the top-level
> > entry point for the multimedia subsystem, so is not a pure clock
> > controller but a system controller, and the drm driver is instantiated
> > by that MMSYS driver.
> > 
> > Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 
> Same here.

Acked-by: CK Hu <ck.hu@mediatek.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
