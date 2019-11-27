Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C39310A87A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 03:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qsx6fpC7l+Epc1k94cVFigqex2xBEYnv31amC+THLRQ=; b=tKtoznOu+6DZDm
	oGE+H53ClcUNEtlYvwNcpIq4ZJUqxiKKFDCWkx5YdqAkDaCYq+2bE6+pib05TQNHlmq8GITitMRkb
	RG3XXqdwqxaBHPg2tEfowpA3DSoPMxneYKUGH0O+FWh9goYKBxzRCKdvyKXxyE7exUN6C6Qvr6K9x
	xkNj+fCWcT+KwLh9A10J+BfvAkeSjdh+IcPkF+RSPgzHUyrC3Ii3/VzcPSTb7EnNVZJsI99vCDwJ8
	b4suYiD1gsOK1NRAPE1cWqL3JWUojXJXT0c7FInpnvyUlyweo542q3ZpmDu6iIHfvHVUjveetGSc6
	sjObaDgPhp0Y7xFyTCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZmej-0008Ss-Q7; Wed, 27 Nov 2019 02:02:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZmbw-0004Xn-4Z; Wed, 27 Nov 2019 01:59:22 +0000
X-UUID: 3fa41e89024a41faa7c465aab6eab1bd-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=xgQWPOCZyQy+pjAO4YlSup72JlwqCII8CwTVMie3F70=; 
 b=auqqwUkkrfz+PnUt8tvmNp3rZFyQbaC7TP8wQ45tYB9oaezQJRe8Zo2Ko4NKzDy2tOSbGCu00CgAOC6rvaPpwDNM73amBYQE6UvHFLQOO4I6mgnXUXXLAFtNZIKFbX+Srmev0jtE2GFbdOtI9vAqEys5gEP03WE45Q9DPix5Qm0=;
X-UUID: 3fa41e89024a41faa7c465aab6eab1bd-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1345099224; Tue, 26 Nov 2019 17:59:11 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 17:59:18 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 09:58:29 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 27 Nov 2019 09:58:18 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v2] support gce on mt6779 platform
Date: Wed, 27 Nov 2019 09:58:42 +0800
Message-ID: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_175920_223014_7D7A5B94 
X-CRM114-Status: UNSURE (   7.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support gce on mt6779 platform.

These patches depend on patch:
support gce on mt8183 platform
(https://patchwork.kernel.org/cover/11255147/)

Support gce function on mt6779 platform.
	dt-binding: gce: add gce header file for mt6779
	mailbox: cmdq: variablize address shift in platform
	mailbox: cmdq: support mt6779 gce platform definition
	arm64: dts: add gce node for mt6779

Refine driver to support stop hardware with safe callback.
	mailbox: mediatek: cmdq: clear task in channel before shutdown


Dennis YC Hsieh (14):
  dt-binding: gce: add gce header file for mt6779
  mailbox: cmdq: variablize address shift in platform
  mailbox: cmdq: support mt6779 gce platform definition
  mailbox: mediatek: cmdq: clear task in channel before shutdown
  arm64: dts: add gce node for mt6779
  soc: mediatek: cmdq: return send msg error code
  soc: mediatek: cmdq: add assign function
  soc: mediatek: cmdq: add write_s function
  soc: mediatek: cmdq: add read_s function
  soc: mediatek: cmdq: add write_s value function
  soc: mediatek: cmdq: export finalize function
  soc: mediatek: cmdq: add loop function
  soc: mediatek: cmdq: add wait no clear event function
  soc: mediatek: cmdq: add set event function

 .../devicetree/bindings/mailbox/mtk-gce.txt   |   8 +-
 arch/arm64/boot/dts/mediatek/mt6779.dtsi      |  10 +
 drivers/mailbox/mtk-cmdq-mailbox.c            |  85 ++++++-
 drivers/soc/mediatek/mtk-cmdq-helper.c        | 181 +++++++++++++-
 include/dt-bindings/gce/mt6779-gce.h          | 222 ++++++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h      |   7 +
 include/linux/soc/mediatek/mtk-cmdq.h         |  87 +++++++
 7 files changed, 575 insertions(+), 25 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt6779-gce.h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
