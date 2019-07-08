Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB7061A10
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 06:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySo2X9js4qLILUqkkqOGbG1EWvROG/tjP8dSf/ckW1I=; b=BXKkSoh21fOiW6
	ouQJmB3glux38+8iAZfb58qysMOyQnHKYWvMrRDUpIf5psSOq9LdHaR5Aqs7Ht0Ta/obunNWplo5n
	pWMtma1yOzVoXx8gRBB/rnmwsORwBvAeUwA0gO9fSm8RKPOWEaOC55wySWJ/oJSttg7oCRSeWjaRB
	7KP7PZuDFtp6KZYI+shwLO3xnBM0GkJvybxlwqrlJUftjnYqQUjSfbB0sm1t8lLp01DMQ1rqPOnfU
	fTCbHtI4vps+bgV2dIWJzVIWvzqXIqGmVj6S1yD3Izyc4nhOyUoqn7VnIRzT0aiS19W+O66bCou1h
	zeutxuBVTW5eILJhSuzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkLPx-0006Qv-0l; Mon, 08 Jul 2019 04:38:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkLPk-0006Py-Ia; Mon, 08 Jul 2019 04:38:10 +0000
X-UUID: adf21aedb811409dbbad2eb2e8e719bb-20190707
X-UUID: adf21aedb811409dbbad2eb2e8e719bb-20190707
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1897229688; Sun, 07 Jul 2019 20:38:02 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 7 Jul 2019 21:38:00 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 12:37:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 8 Jul 2019 12:37:59 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 0/3] scsi: ufs: Provide fatal and auto-hibern8 error history
Date: Mon, 8 Jul 2019 12:37:54 +0800
Message-ID: <1562560677-3985-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_213808_619098_8C9CF859 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: sthumma@codeaurora.org, marc.w.gonzalez@free.fr, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, ygardi@codeaurora.org,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set provides more information of fatal errros and auto-hibern8 errors
to improve debugging by keeping their error history as completed as possible.

Stanley Chu (3):
  scsi: ufs: Change names related to error history
  scsi: ufs: Add fatal and auto-hibern8 error history
  scsi: ufs: Do not reset error history during host reset

 drivers/scsi/ufs/ufshcd.c | 57 +++++++++++++++++++--------------------
 drivers/scsi/ufs/ufshcd.h | 26 +++++++++++-------
 2 files changed, 44 insertions(+), 39 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
