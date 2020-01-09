Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9B513511D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 02:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+vtK8hy2h6HU22iTWWLhxye1IeMYqHQ2OoOLSnbYsw=; b=qKT9TeXiwGX3ca
	B8XWMBLFJ2VZxLL2oyR5Da5VmcdILaBdWDuvepnpUt02r6RcL85UKx7a9GQVfhHXVVux57jBdHypZ
	mNwWHlnvHsGPcLbC/4efHP/VPViaTLQqpGiknJiT99nmTJdnzpGm0hjv0J/IlRAoH1aKbCYyJdGEI
	mCE8K47tZxEleGJ/df5C3W6p7oAfvp7Qmd9osdut6t4SuxVgjUekmB6PJNlNXNGghUcRbW94sC4Ld
	P8GWpDOm4l93Z+eGKy15mN5MwToJrbD+HAJoyVlmw4EiPzlxW7/Q+rYeE1Zyh1MEfh6bh2aVak9Fd
	5Vz08xfdsBaUnW1eZsEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipN5k-0004vB-42; Thu, 09 Jan 2020 01:58:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipN5a-0004uG-UQ; Thu, 09 Jan 2020 01:58:26 +0000
X-UUID: 7b11e70b72aa4ddd84544787989bd1ef-20200108
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=f8V/w28keayMesUZndCtYcFhLlpst9SQecLMZIoZ2Ow=; 
 b=jcIaSPWVnZTrfouW4dPUXFy601FrkzqHDA0qFmcRZI1Ll83ivQNN2ulQpOBUIApIHpKMICRTUByw0V48GLWfUg/PqWZoU9+a3sofFBQkl7peWEDNjs0evgk9zUFALobP3Gbtp4SfsZHU0E8OkI9k5VN74q6Tkr5S145s1/PPUw0=;
X-UUID: 7b11e70b72aa4ddd84544787989bd1ef-20200108
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1535939948; Wed, 08 Jan 2020 17:58:08 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 17:58:05 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 9 Jan 2020 09:56:53 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 9 Jan 2020 09:58:22 +0800
Message-ID: <1578535081.20923.5.camel@mhfsdcap03>
Subject: Re: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Yong Liang <yong.liang@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 9 Jan 2020 09:58:01 +0800
In-Reply-To: <20200106215721.GB31059@bogus>
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
 <20200106215721.GB31059@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C4E159BAC36ECB497154526A379FBD41D7CD188C7E791C104A8D9215220B2C4D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_175823_014337_D6024D7E 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Freddy Hsin =?UTF-8?Q?=28=E8=BE=9B=E6=81=92=E8=B1=90=29?=
 <Freddy.Hsin@mediatek.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Chang-An Chen =?UTF-8?Q?=28=E9=99=B3=E6=98=B6=E5=AE=89=29?=
 <Chang-An.Chen@mediatek.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-01-07 at 05:57 +0800, Rob Herring wrote:
> On Mon, 6 Jan 2020 11:11:35 +0800, Jiaxin Yu wrote:
> > Add #reset-cells property and update example
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
> >  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
> >  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
> >  3 files changed, 46 insertions(+), 3 deletions(-)
> >  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

  Sorry not add you in Reviewed-by:
  We will add you in Reviewed-by: if have next patch.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
