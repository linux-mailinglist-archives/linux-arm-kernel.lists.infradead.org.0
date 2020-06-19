Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC2C2005BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xE0zdvE8rQlhX6IzAON3r/NiOA0i3c0KJDZ/RXGEd8U=; b=TsstUDYz8VuLDl
	Ql7f0LhJbT6TdCxjR8oUf14BWsSbbwcDgij/57RwSHhPl9DhRzqodUuM3+8+juLOWxLVtNk3WCCcz
	CcIGqBmuSfhv4mclC3W322/x56SbCkeefwF+nlX/SQC51tWjoaliH3/IMzY0O6J/Yyt3cwA5xkqwq
	Mxim2+k4516Tl9QwB525vtwcMLCocR6QGRe7PYTVSkuXoBi7reXo7KXC7HlRgkqKiUFA9z/2dMTNN
	SiAQgMEEmrDjvlycgIy4swD6yhoG5vd4PIpymSyvgrlc2sRhqeSH89lEGdQQANfRWR7oq5TRM2Jsm
	98hC9MIw22u42VV33U/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDg3-00057Q-1w; Fri, 19 Jun 2020 09:51:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDfk-00056e-0c; Fri, 19 Jun 2020 09:50:57 +0000
X-UUID: 382c76562d6e4a5d9828804d41068cb4-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=NdvWbt7SwERzP8EgpdUPpJCpCAPBLOEYJIsaPCSnY3U=; 
 b=J7mOGjfd4cBqpiT/30veNsMyXAyq+JZisEykhp4+/JfvnMoZFLCx5tpZcqfyqs3FxefApwukg6OBdThCuSv9EqOXJ4uRp87csHf91OV2n9AoL17d3SgUGwdgbC17VDo59T3hUzG3K3sgClzF1aWsd9Ln+vPpIviJ40ka/mPzqcw=;
X-UUID: 382c76562d6e4a5d9828804d41068cb4-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1380759853; Fri, 19 Jun 2020 01:51:40 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 02:42:05 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 17:42:03 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 17:42:01 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Add MediaTek MT6873 devapc driver
Date: Fri, 19 Jun 2020 17:41:58 +0800
Message-ID: <1592559720-8482-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: DEC6BD0ECEC83BC5E2FEC7676357C14324487936CC6DF2BA5AF3EE8EC662E1A12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_025056_059387_4E090956 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patch series introduce a MediaTek MT6873 devapc driver.

MT6873 bus frabric provides TrustZone security support and data protection to prevent slaves from being accessed by unexpected masters.
The security violations are logged and sent to the processor for further analysis or countermeasures.

Any occurrence of security violation would raise an interrupt, and it will be handled by devapc-mt6873 driver. The violation information is printed in order to find the murderer.

changes since v1:
 - revise dt-bindings schema. (needs mt8192-clk.h to pass dt_binding_check)
 - remove debugging functions and make driver more simple.

*** BLURB HERE ***

Neal Liu (2):
  dt-bindings: devapc: add bindings for devapc-mt6873
  soc: mediatek: devapc: add devapc-mt6873 driver

 .../soc/mediatek/devapc/devapc-mt6873.yaml    |   61 +
 drivers/soc/mediatek/Kconfig                  |    6 +
 drivers/soc/mediatek/Makefile                 |    1 +
 drivers/soc/mediatek/devapc/Kconfig           |   25 +
 drivers/soc/mediatek/devapc/Makefile          |   13 +
 drivers/soc/mediatek/devapc/devapc-mt6873.c   | 1652 +++++++++++++++++
 drivers/soc/mediatek/devapc/devapc-mt6873.h   |  111 ++
 .../soc/mediatek/devapc/devapc-mtk-multi-ao.c |  756 ++++++++
 .../soc/mediatek/devapc/devapc-mtk-multi-ao.h |  182 ++
 9 files changed, 2807 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
 create mode 100644 drivers/soc/mediatek/devapc/Kconfig
 create mode 100644 drivers/soc/mediatek/devapc/Makefile
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mt6873.h
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.c
 create mode 100644 drivers/soc/mediatek/devapc/devapc-mtk-multi-ao.h

-- 
2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
