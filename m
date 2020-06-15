Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4697C1F8E4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/xehjsCXmXyi9hAwAIwgBkHpHh01klnblNOYH2+LA0=; b=C3YAelsrnH8D7A
	ccnl8381df/etbha2/l+Y4u9t4WEdbRBASuGsXqKVQlu3BjjWPV8Pm74XbH3geNjOxqzpmQtMCVFC
	+gRWInHQGWOrYepznjBuwvCm3OlI7njphe2SQoB2sGI359vZ2MjPjNAZEExGumVFr9unIy1LD3KFk
	jiWuQtRnto7HYxhwvyllHhl95UJ2OA6015mZKM+ZT+S7ywZRz4MajF0oedZRnjlNZ0DJPaIh2o4bS
	oHTj48AXgYaWp+NxYUXL2yMYJHxZxldMcKkIjQjaymN6nTT13QsYWNWplyjUEO7obEB7In28YMJZz
	bZMTxzzsTr2xbXZsXOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkiv4-0002dH-Kx; Mon, 15 Jun 2020 06:48:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiua-0002Mf-K7; Mon, 15 Jun 2020 06:48:06 +0000
X-UUID: a4acf494c8104481977360e211496ff0-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6sskvS9E8A91kA1DIsgQnE7Mcroj4DNNwvI11p317Kg=; 
 b=pfynxBDm5eu4j6Km9k3s09pLNgy4vcncQBh+ce9dnMaTBNmJWGGfsOgrPmIeZSh3vS7I5+uhWmPlaMG6tekSFJLffFZ6jaTTTV5WfmZQee0FoVP7Zl97FkZdZ5zxnCbUgp2WD3fF5AkJcr7ycZrUvU0bYCt5NunEP0xookaDEg4=;
X-UUID: a4acf494c8104481977360e211496ff0-20200614
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 280066135; Sun, 14 Jun 2020 22:47:57 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 23:47:56 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 14:47:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 14:47:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/2] scsi: ufs: Add trace event for UIC commands and
 cleanup UIC struct
Date: Mon, 15 Jun 2020 14:47:51 +0800
Message-ID: <20200615064753.20935-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8D5C5DFC44D1CCFA7C459F1F145365925C51A8DB378C958FCB620F0E9436551A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_234804_665166_61E2C486 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
This series adds trace event for UIC commands and do a small cleanup in struct uic_command.

v1 -> v2:
  - Rename "uic_send" to "send" and "uic_complete" to "complete"
  - Move "send" trace before UIC command is sent otherwise "send" trace may log incorrect arguments
  - Move "complete" trace to UIC interrupt handler to make logging time precise

Stanley Chu (2):
  scsi: ufs: Remove unused field in struct uic_command
  scsi: ufs: Add trace event for UIC commands

 drivers/scsi/ufs/ufshcd.c  | 26 ++++++++++++++++++++++++++
 drivers/scsi/ufs/ufshcd.h  |  4 ----
 include/trace/events/ufs.h | 31 +++++++++++++++++++++++++++++++
 3 files changed, 57 insertions(+), 4 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
