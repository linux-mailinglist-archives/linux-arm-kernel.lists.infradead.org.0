Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072CC1BBC24
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bzhTa3ZMPY1AM2w9RRawvo00XVPjuG+2rLhVZUNDYTY=; b=Uxg4KCjek8UuRe
	3s0ebn4jAVEwsGkzPRWaTcMILfkz14PVZXl4qML0eFINyHXVp5KCese8z9lr0PbZznThVPhKwiXaq
	80lYygGi+Z+p2LTDQ8NDou+CNKg6f0z/TCzjDu5sCPa8J134teXmyPOSqTx5UBqlioZ0zpyxVLLOS
	k8HcGQFqgk/YPv9iVgZzRBJwwbxEhn1Am4XV6E5S/UXWNukeP/1tp4h0YioEwdZmMFF4gKTlrsleJ
	/8HODyOuKDJXSe2gB7L8fefk6IFVCpUuAhxcIPlUSGn8KHe4/bzDWP8Td4gXraEHqzj2pQsD4Fn7e
	fMlMkcowo5gIN6vCQU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOCv-0007dj-8t; Tue, 28 Apr 2020 11:15:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOBs-00072g-28; Tue, 28 Apr 2020 11:14:17 +0000
X-UUID: 51e8df7d3a494bcdb97a8490f5a3b99b-20200428
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=QzA8ce3Zb+Cb5FxfMleVNOR9S7PdPbiRGLtF5i51lXI=; 
 b=AYudQjFw9TXnD90EGOP+OamtJm++6VgOE/utM5rRaCMSE8x2dGoM2BObN87B6jf1Br6+MrAQ1VUEfpGrzcYY0s+v0q/O4CsB4xbnZjeTYYtfbVfyKzTwJhlPVsMaF6YxpCeLdNUy44685eBMNJDZHnGpfqE0GpV7TXDVy7x6SwY=;
X-UUID: 51e8df7d3a494bcdb97a8490f5a3b99b-20200428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1553890403; Tue, 28 Apr 2020 03:14:07 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 04:14:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 19:13:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 19:13:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 0/4] scsi: ufs: support LU Dedicated buffer type for
 WriteBooster
Date: Tue, 28 Apr 2020 19:13:51 +0800
Message-ID: <20200428111355.1776-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8D70ACAEADA4D6AFA83B01F72597E6A176F44B5E34CCE1D0C1C0C49672F72A882000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041416_107258_FDBB20B2 
X-CRM114-Status: UNSURE (   5.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patchset adds LU dedicated buffer type support for WriteBooster.

In the meanwhile, enable WriteBooster capability on MediaTek UFS platforms.

Stanley Chu (4):
  scsi: ufs: allow legacy UFS devices to enable WriteBooster
  scsi: ufs: add "index" in parameter list of ufshcd_query_flag()
  scsi: ufs: add LU Dedicated buffer type support for WriteBooster
  scsi: ufs-mediatek: enable WriteBooster capability

 drivers/scsi/ufs/ufs-mediatek.c |  3 +
 drivers/scsi/ufs/ufs-sysfs.c    |  2 +-
 drivers/scsi/ufs/ufs.h          |  7 +++
 drivers/scsi/ufs/ufshcd.c       | 98 +++++++++++++++++++++++++--------
 drivers/scsi/ufs/ufshcd.h       |  2 +-
 5 files changed, 86 insertions(+), 26 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
