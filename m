Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0718E6FCE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2HVXC9mPL7b1Pzo2u44Lo0lMSvgtgr9gKYIFDGNINc=; b=tem6kOX0YJFdbf
	E3dyB5rUkTVJtzvy0rCPFMdOq9rnOvp4PtHZcn7rA8KmPlVfw0okKDKvI1av7AUGTKZyb2BbyuvaS
	TXY4IhjVu9DPSXeF/zg2PLb8CoGRcX/u03JLpGdF//7kY21CSQp++/dQHzZ1iAWSBPFrV1totSZ2a
	yp299QEGcSfc8+RhR7kb5tqXQ1pvt2S72k6i8RFrlLNU+vg+h3PzjowpN4yJdrFgl6GRO8r6Kpd4Y
	/hnz8F2LZfCJVIQnBMAmhx6vLPJo/7zLADDUu0WS+e92Nee/DK2tnQeAGdfPiOwZxDkhh+4AB6wnf
	Pf/iMLVPD6MUU0m28vjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUyR-0005k5-10; Mon, 22 Jul 2019 09:51:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUy5-0005gs-Q2; Mon, 22 Jul 2019 09:50:55 +0000
X-UUID: b4e55aa18221420e8b43f6fde219ad0d-20190722
X-UUID: b4e55aa18221420e8b43f6fde219ad0d-20190722
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1759627634; Mon, 22 Jul 2019 01:50:46 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 02:50:44 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 17:50:43 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 22 Jul 2019 17:50:42 +0800
Message-ID: <1563789042.14676.3.camel@mtkswgap22>
Subject: Re: [PATCH v4 0/3] MediaTek Security random number generator support
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Rob Herring <robh+dt@kernel.org>, "Herbert
 Xu" <herbert@gondor.apana.org.au>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Date: Mon, 22 Jul 2019 17:50:42 +0800
In-Reply-To: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
References: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025053_846608_5EA64A0D 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Neal Liu <neal.liu@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Matthias, Rob, Mark,
	Just gentle ping.
	Thanks


On Mon, 2019-06-24 at 15:24 +0800, Neal Liu wrote:
> These patch series introduce a generic rng driver for Trustzone
> based kernel driver which would like to communicate with ATF
> SIP services.
> 
> Patch #1 initials SMC fid table for Mediatek SIP interfaces and
> adds HWRNG related SMC call.
> 
> Patch #2..3 adds mtk-sec-rng kernel driver for Trustzone based SoCs.
> For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> entropy sources is not accessible from normal world (linux) and
> rather accessible from secure world (ATF/TEE) only. This driver aims
> to provide a generic interface to ATF rng service.
> 
> 
> changes since v1:
> - rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs
> can reuse this driver.
> - refine coding style and unnecessary check.
> 
> changes since v2:
> - remove unused comments.
> - remove redundant variable.
> 
> changes since v3:
> - add dt-bindings for MediaTek rng with TrustZone enabled
> - revise HWRNG SMC call fid
> 
> 
> Neal Liu (3):
>   soc: mediatek: add SMC fid table for SIP interface
>   dt-bindings: rng: add bindings for MediaTek ARMv8 SoCs
>   hwrng: add mtk-sec-rng driver
> 
>  .../devicetree/bindings/rng/mtk-sec-rng.txt   | 10 ++
>  drivers/char/hw_random/Kconfig                | 16 +++
>  drivers/char/hw_random/Makefile               |  1 +
>  drivers/char/hw_random/mtk-sec-rng.c          | 97 +++++++++++++++++++
>  include/linux/soc/mediatek/mtk_sip_svc.h      | 33 +++++++
>  5 files changed, 157 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
>  create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
>  create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
