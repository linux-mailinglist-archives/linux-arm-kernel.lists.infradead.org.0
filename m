Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FBB11B893
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekuxrVSgpk73cTzCEedbVwowA/9+mGFjypjo3nDW8tM=; b=ZFGfbda3gY5jps
	35ecO859Ph57EJ51sSeMpGq8Esn2mB69V55NDMvLH1vA5bEgbsAIDok4L49aglD5TdR9V2S33hCM+
	UOdJHz4gycWk94TthPIQkFGubnCuZCJD+DGp9T9DKAs+Ww0NWWRA+ZxTU8GSuc1otGuFtoYmDUKAh
	3+sHip6PTCUfVlb8EA48mLLGy1ec8X1LjUkcgBqKOCAVcrZs2TNJ3QO2X1rij/eI1BTGIOA8DrIOQ
	7UgSy4XTX+ZgfjFL3/F4ZLoZAmVI8k8EP33RH8xTkx62rCt0q1+sgn17FW0vZe0cYg5qm33N5zklu
	BAFRaj2ad8Ns3a+MPV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4lv-0006qr-WC; Wed, 11 Dec 2019 16:23:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4lU-0006gw-2C; Wed, 11 Dec 2019 16:23:05 +0000
X-UUID: d45729a5826648458fe6a46fb9dbd44e-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=iimza8cqkvrV1lF7V0mYtKiaYJScHBfp3AjzMCxE4gQ=; 
 b=CTpH30TN4MmOSrnL9IVid5HNqTGghWnqq9dsYcUVwkjXzAKx1Z1fdk6SNy1brspl32QzavMWw+uizFf1w2kxZvnngpm24ZChzD7x8oKBSL6b6wgHHlMeuj6+wcLVXvtLhESq9N2kdimZYolQ9BaDoLgPdEpd8KQID1dvWKZu/Hc=;
X-UUID: d45729a5826648458fe6a46fb9dbd44e-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 816953848; Wed, 11 Dec 2019 08:22:58 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 08:23:12 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 00:22:23 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 00:22:06 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <yong.liang@mediatek.com>, <wim@linux-watchdog.org>, <linux@roeck-us.net>, 
 <p.zabel@pengutronix.de>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <devicetree@vger.kernel.org>
Subject: [PATCH v6 0/2] ASoC: mt8183: fix audio playback slowly after playback
Date: Thu, 12 Dec 2019 00:22:34 +0800
Message-ID: <1576081356-18298-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_082304_113937_EEDC2428 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

This series patches add reset controller for MT8183, and audio will use it in 
machine driver during bootup, they depend on the for-next.

v6 changes:
	1. Simplify toprug_reset_assert() & toprug_reset_deassert().
	2. Add members for mt2712_data & mt8183_data.

v5 changes:
	1. Add Signed-off-by tag and Reviewed-by tag.

v4 changes:
	1. Fixed wrong signed-off as correct mail suffix.
	2. Fixed patch subject that add patch version.

v3 changes:
	1. https://patchwork.kernel.org/patch/11164283/ and 
	   https://patchwork.kernel.org/patch/11164305/ has been merged.
	2. Change the name of mtk_wdt_compatible to mtk_wdt_data.
	3. Remove toprgu_reset struct and use mtk_wdt_dev instead.
	4. Get the value of sw_rst_num from .h file.
	5. Adddd mt2712-resets.h for mt2712.
	6. Improve commit message.

v2 changes:
	1. remove "WIP" that in the title of patches
	2. add hyper link for the patch that depends on
	3. patchwork list:
		https://patchwork.kernel.org/cover/11164285/
		https://patchwork.kernel.org/patch/11164295/
		https://patchwork.kernel.org/patch/11164299/
		https://patchwork.kernel.org/patch/11164283/
		https://patchwork.kernel.org/patch/11164305/

v1 changes:
	1. patchwork list:
		https://patchwork.kernel.org/cover/11164173/
		https://patchwork.kernel.org/patch/11164181/
		https://patchwork.kernel.org/patch/11164185/
		https://patchwork.kernel.org/patch/11164187/
		https://patchwork.kernel.org/patch/11164175/

yong.liang (2):
  arm64: dts: mt8183: Add reset-cells in infracfg
  clk: reset: Modify reset-controller driver

 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  10 +-
 drivers/watchdog/Kconfig                      |   1 +
 drivers/watchdog/mtk_wdt.c                    | 109 +++++++++++++++++-
 .../reset-controller/mt2712-resets.h          |  22 ++++
 .../reset-controller/mt8183-resets.h          |  17 +++
 5 files changed, 155 insertions(+), 4 deletions(-)
 create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
