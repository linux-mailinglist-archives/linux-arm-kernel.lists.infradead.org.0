Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EC71CB5DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 19:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k1cH74y58k9GmfpRS9/P4ZW9ZrOgr2ydn4K5mLITmI4=; b=nlyIGa1tFMz/Wj
	e0gfLvX7lgQAzgpLkO9U1Lhd/w6L5PCFjRD7r3+zGk6X+WV2diUNnrdUBE7x0NYMuWBtu8O3IkeYE
	YPY0WrqE7UohP8OGhBbobI+VUe0bbuLwvSeIuO5FSXg4i8mnq4PH3Amt1CamsEhMMoV8BQ4G8nGqr
	UMJcgLSZ0c/k3rhdopTKXoMwGjiDilfJuOueGkBK/1RezTGcvsClkoKZn1OlzmiCNnX7/WL5R6M3+
	s/t4g9lY7DTH+RerFEyFihuXVnL/fD+6ib1KM2eyP0pbv0ThPQWoTi1zNlgNCugdOM5Kck6C0IPzS
	gsf1yau3yDTor1T6fgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6kj-000143-Es; Fri, 08 May 2020 17:25:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6ka-00011F-2y; Fri, 08 May 2020 17:25:29 +0000
X-UUID: 706d676d0c9542448787566cfd93cd4c-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0knH9HNnIx9SRZudXymGnZJ0S7xeMFAxCHgdkhMyXYU=; 
 b=jb1ZHoTbS6RmvKKyVnkkYGuNz4QeH4brKBU9QKshK9Ucv8FXhWVonTeyRElPwWz6fGDFBVoIyedng4IzfI6De7MHje+8LBccoNlzRjddd3/ne/U6CdQkF4li5vmEBO2k2D2yCEStfUzjQCPD/n9vZNwkqWXMY0EQQFSR+CZXVhw=;
X-UUID: 706d676d0c9542448787566cfd93cd4c-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1334446526; Fri, 08 May 2020 09:25:04 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:15:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 01:15:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 9 May 2020 01:15:11 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 0/5] scsi: ufs: allow customizable WriteBooster flush policy
Date: Sat, 9 May 2020 01:15:08 +0800
Message-ID: <20200508171513.14665-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: F7A3837055F0D783E3D514AAFE929BFFDF806506BD535D7E485499953F07CA592000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_102528_138580_E4937F54 
X-CRM114-Status: UNSURE (   5.22  )
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

Stanley Chu (5):
  scsi: ufs: introduce ufs_hba_variant_params to collect customizable
    parameters
  scsi: ufs-mediatek: change the way to use customizable parameters
  scsi: ufs: customize flush threshold for WriteBooster
  scsi: ufs: use flexible definition for UFS_WB_BUF_REMAIN_PERCENT
  scsi: ufs-mediatek: customize WriteBooster flush policy

 drivers/scsi/ufs/ufs-mediatek.c |  5 ++--
 drivers/scsi/ufs/ufs.h          |  5 +---
 drivers/scsi/ufs/ufshcd.c       | 46 ++++++++++++++-------------------
 drivers/scsi/ufs/ufshcd.h       |  9 ++++++-
 4 files changed, 32 insertions(+), 33 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
