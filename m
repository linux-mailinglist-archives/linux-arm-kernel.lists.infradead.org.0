Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2011711DF33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNuStqG2ZiaoF2o3mioWGmEkQNf4SEvHb7wAyKgA7ME=; b=L8qlB+0IVUq0ci
	4OSSpqN2qjxnBjBTfArDUHq0RFImUf9W1zMiv3tA796RksxttYfNKtA6Yjx3aUI28Pm+wlRUmMuuY
	XNVTVUUB/qXsd6pWbztmrUEb/cHzkBOOsThT+93LjydFndWeV2Nl58FCmdw25SX37MVI9/mgq9RJX
	aJadaIcMNsvY+juag/Nk9dDZNKLJxEY7eK72Ox6aMMf5kDM9bH6ODWBQX2ezrxzps8Wl6qjRbVPs2
	k6rqA13ArKz1xGWCWnZ52geI2m4SB6mbP0YftRBM5DZHSh8P+JG79yO1JdBoi2a4+f2kB3mQkzn/A
	bWhIFrjIThs72aP8yviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifg4P-0000zo-Qv; Fri, 13 Dec 2019 08:13:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifg3M-00008y-Ol; Fri, 13 Dec 2019 08:12:02 +0000
X-UUID: eb62da947dd74c48bceee061c5e91ae3-20191213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=VlbmHzvmIOMrtNrr7bRhgkYfE8bVDzx/HFbQW2aC+F4=; 
 b=EpaJD7RWjJdz4CLXUCVZjxA+W9/F4772lmY49vKdgckM9LGyPjOXNSJGDZiSvLCLDf8DYXoLwrtyc+gFxb/LfaH42TXXAi3byxkfjNpHQ1CNwTQiyltFS+salJuTRxW6Q7VZc7MWbAc8sWmZoeGBCkTb0LiiGd09+1R20c6bYO8=;
X-UUID: eb62da947dd74c48bceee061c5e91ae3-20191213
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2015418338; Fri, 13 Dec 2019 00:11:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 00:12:15 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 16:11:16 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Dec 2019 16:11:05 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 0/4] scsi: ufs-mediatek: provide power management
Date: Fri, 13 Dec 2019 16:11:31 +0800
Message-ID: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: EADCA4A00BE1D93B32B7DFD36F29DF1E98405723AD033FCEF1A3219B7668779A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_001200_837231_C79125CB 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch set provides power management on MediaTek Chipsets by

1. Introduce reference clock control
2. Configure customized auto-hibernate timer
3. Enable clk-gating with customized delayed timer value

Stanley Chu (4):
  scsi: ufs-mediatek: introduce reference clock control
  scsi: ufs: export ufshcd_auto_hibern8_update for vendor usage
  scsi: ufs-mediatek: configure customized auto-hibern8 timer
  scsi: ufs-mediatek: configure and enable clk-gating

 drivers/scsi/ufs/ufs-mediatek.c | 93 +++++++++++++++++++++++++++++++--
 drivers/scsi/ufs/ufs-mediatek.h | 20 ++++++-
 drivers/scsi/ufs/ufs-sysfs.c    | 20 -------
 drivers/scsi/ufs/ufshcd.c       | 18 +++++++
 drivers/scsi/ufs/ufshcd.h       |  1 +
 5 files changed, 126 insertions(+), 26 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
