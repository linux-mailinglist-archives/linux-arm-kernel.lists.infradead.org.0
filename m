Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E389B1CBFF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 11:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sF5KhDgDFo4/wa5V9B9oNVNRq9Ji9H/NMZPBcn7Wt7A=; b=E4rerQ2LiqK/hY
	WKrnzdN6rvsFXcGYq4no0LX+5CwNR38XAOaSoclvKh3isFuRy0sbEVXK73V4sFKlCgtMbkhJBdohl
	/RXC+MEW+N3jYs6mPsqnBwfwwL771SY+ddCDqgnqHcUXAoUo33p3lPPMmTy+iwWaQdsln7P1UUfej
	uzrM3kF35nmXyUDrZGaYO7C/xqowpEdCO91nTKr8c2vLtY/6k5+vKDNbEIFdmPgyq73A3qAU9Q8mW
	MSl1NyaYPo2EwUiqktoZm99UhvQhRQ11eTEopRVsZ6yydDN8DRqivZjur4GvhhCO76SZhdg+JwJNp
	GIbF54WEcA/thwJAyAxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLwC-0006ZE-CB; Sat, 09 May 2020 09:38:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLvR-0005wR-Dd; Sat, 09 May 2020 09:37:43 +0000
X-UUID: 52b06c11e12a4455aa744f3480f88579-20200509
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=F8cqGTFPa4dEjB85G+SFRDrbwr/BV4Ro5sIuH3SpCf4=; 
 b=Kc6siXQcAhmoe5vzzz6CtuO+H2p6N97g2KRyrWe/wixONXkOLwRR82ksRNqXiho7/yF+DxpiRTBwcDYI/RfDmUBV4jPXRBjC5m5HnNGIzzhGgIM23CEmGukiv0XLnD1h4AKDfIloNzzoe168VwQvE3a6rUWV9B4jvuWDxbog3WQ=;
X-UUID: 52b06c11e12a4455aa744f3480f88579-20200509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 277925037; Sat, 09 May 2020 01:37:25 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 02:37:28 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 17:37:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 17:37:16 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/4] scsi: ufs: allow customizable WriteBooster flush policy
Date: Sat, 9 May 2020 17:37:12 +0800
Message-ID: <20200509093716.21010-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_023741_468533_2C6C28E7 
X-CRM114-Status: UNSURE (   5.04  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch set tries to allow vendors to modify the WriteBooster flush policy.

In the same time, collect all customizable parameters to an unified structure to make UFS driver more clean.

v1 -> v2:
  - Squash patch [3] and [4]
  - Remove a dummy "new line" in patch [3]
  - Fix commit message in patch [3]

Stanley Chu (4):
  scsi: ufs: introduce ufs_hba_variant_params to collect customizable
    parameters
  scsi: ufs-mediatek: change the way to use customizable parameters
  scsi: ufs: customize flush threshold for WriteBooster
  scsi: ufs-mediatek: customize WriteBooster flush policy

 drivers/scsi/ufs/ufs-mediatek.c |  5 ++--
 drivers/scsi/ufs/ufs.h          |  5 +---
 drivers/scsi/ufs/ufshcd.c       | 45 ++++++++++++++-------------------
 drivers/scsi/ufs/ufshcd.h       |  9 ++++++-
 4 files changed, 31 insertions(+), 33 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
