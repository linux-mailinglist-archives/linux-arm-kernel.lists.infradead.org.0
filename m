Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F785C992E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GKheLgYyDD9BmnNsJI/K38ulJW9F+997NrV1X6aLIH8=; b=gp2cBAUazASvf6
	yXOQxNfFpaszvnG6J39rXyBJcRBm6G2/ngjbaaEZQZ9LU93U5xPy6HeI1ojS0Nh1HhCnQUNuc3Qha
	GY41i/ljveE8Rx/2lW+snV3jmwmOS79aVN42CfRLW5Eod7nQnZE4qqyROmi0K1zkZp/RWnQXZGSkA
	8tM5B8ZbDTvJCVWLkd4gYMaEiBkp72fXK6N9Zh2HDzCZ+7V8KEs5wDzbLvA8ohYNRCGqtP9K8++LG
	sVGOZxz//nNg3kF8sG1ijgzoGTx+dFO/6NQwZRmGy+skaUmJSPHoNwOKL7hTJmlMYdSxoEZ4gJVAX
	jtHvExIZQhbjuJHlvv3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvqz-0003Ql-U2; Thu, 03 Oct 2019 07:48:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvqp-0003OE-S8; Thu, 03 Oct 2019 07:48:41 +0000
X-UUID: 5cd2c83c834a4ccca298875da8e19130-20191002
X-UUID: 5cd2c83c834a4ccca298875da8e19130-20191002
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 661549060; Wed, 02 Oct 2019 23:48:29 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 3 Oct 2019 00:48:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 3 Oct 2019 15:48:26 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 3 Oct 2019 15:48:27 +0800
From: Argus Lin <argus.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH 0/3] Pwrap: Mediatek pwrap driver for MT6779
Date: Thu, 3 Oct 2019 15:48:18 +0800
Message-ID: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_004839_914587_3B163DFB 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, argus.lin@mediatek.com,
 wsd_upstream@mediatek.com, Chenglin Xu <chenglin.xu@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-mediatek@lists.infradead.org, Chen Zhong <chen.zhong@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's version 1 of the patch series, include 3 patches:
1. Add compatible for MT6779 pwrap
2. Add pwrap driver for MT6779 SoCs. Keep PWRAP_HIPRIO_ARB_EN,
PWRAP_WDT_UNIT, and PWRAP_WDT_SRC_EN value if it has initialized.
When we enable interrupt flag, read current value then do logical
OR opersion with wrp->master->int_en_all.
3. Add MT6359 support for MT6779 SoCs.

Argus Lin (3):
  dt-bindings: pwrap: mediatek: add pwrap support for MT6779
  soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
  soc: mediatek: pwrap: add support for MT6359 PMIC

 .../devicetree/bindings/soc/mediatek/pwrap.txt     |   1 +
 drivers/soc/mediatek/mtk-pmic-wrap.c               | 157 +++++++++++++++++++--
 2 files changed, 150 insertions(+), 8 deletions(-)

--
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
