Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3E913BBB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R3/vZx23T++LQfnzDNhhZBEwQlcbPN+j/WGjYZgCLqE=; b=pFQCtUHrtbCNEE
	cCjXy2u1YWKT1xNDey1OxUWnDPEogljTBURgAe0IOI/W9Lsmmu8AzGWeXNOZm9Pl235xRXE3xapLU
	xyyHbd57GuAT7nOg0Jc71Nf/nWLl2H21FqzgTQar9pNXGg72JZlD8lqTAWNjGN0xaGhoKhISeQElG
	MSPNYl/OAhThBOSHiI1L78McrIVqHXg3chYr60dufDTXxEvqGM7T0aI4LOPjtTzj3088rqN+duwwG
	KnHJAhl5HjcxH7MH3d8Aj/CEagRI4pd+wAK0Bh4T+kBZ0nmH1OmnKj1rbAWDehLF+JFEMyktnOh6g
	bzJtnWTFen3rl5FNCZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireWX-0002mU-1F; Wed, 15 Jan 2020 08:59:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireVr-0002Gs-2X; Wed, 15 Jan 2020 08:58:57 +0000
X-UUID: 8e7b7373972e4af8900f261b2478513c-20200115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=UunoMdrTa5yiW8ikAsKa+Kru5ZGQaRL2GDjuh52c1xM=; 
 b=WKM4s8x7uySODSryQ9BraD5Fba8+6UAiH/siwKu7CWdp2lUzmpVDAL5EF0qgqnEWngs8PACPwAnWfA3G+K25kULmS7oAIU3zYRfl/XZacNsDC89A2Fwx/leBinCcgMZgIXd/MDNeqhQAas1l3wG6+I4FS+yudMyfI5hy8ZI5EB4=;
X-UUID: 8e7b7373972e4af8900f261b2478513c-20200115
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1599314029; Wed, 15 Jan 2020 00:58:51 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 00:58:48 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 16:57:32 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 Jan 2020 16:58:42 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <yong.liang@mediatek.com>, <wim@linux-watchdog.org>, <linux@roeck-us.net>, 
 <p.zabel@pengutronix.de>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <devicetree@vger.kernel.org>, <chang-an.chen@mediatek.com>,
 <freddy.hsin@mediatek.com>, <jiaxin.yu@mediatek.com>
Subject: [PATCH v12 0/4] ASoC: mt8183: fix audio playback slowly after playback
Date: Wed, 15 Jan 2020 16:58:24 +0800
Message-ID: <20200115085828.27791-1-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_005855_156509_A6620679 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This series patches add reset controller for MT8183 and MT2712, and audio will use it in 
machine driver during bootup, they depend on the for-next.

v12 changes:
1. Split MT2712 from MT8183 for mtk-wdt.txt

v11 changes:
1. Create a new patch for MT2712.

v10 changes:
1. Modify mtk-wdt.txt dt-bindings.

v9 changes:
1. Remove Change-Id.

v8 changes:
1. Delete cast: (struct mtk_wdt_data *)

v7 changes:
1. Delete no use code.

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

yong.liang (4):
  dt-bindings: mediatek: mt8183: Add #reset-cells
  dt-bindings: mediatek: mt2712: Add #reset-cells
  watchdog: mtk_wdt: mt8183: Add reset controller
  watchdog: mtk_wdt: mt2712: Add reset controller

 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  11 +-
 drivers/watchdog/mtk_wdt.c                    | 105 +++++++++++++++++-
 .../reset-controller/mt2712-resets.h          |  22 ++++
 .../reset-controller/mt8183-resets.h          |  17 +++
 4 files changed, 151 insertions(+), 4 deletions(-)
 create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
