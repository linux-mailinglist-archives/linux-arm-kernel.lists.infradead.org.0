Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D611F9AC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OZmWqWQ3y7g4JWn5sOa8xoegHelykzWBk4fttweR3qU=; b=JCTpzQpoq73mZw
	vwkfKZRj+CLqm3Gzv6XauJruE3VMjzAiYvQuC5dFqKLsvff3iOGhpSozKdPkLFm34ne2FHwI40m/O
	4LucD5Wj6E9Mi8O2roUhGUdq12Y9kVKvO+a8YqpTcbIp1EHYo7t7q9/mdUpQdQjpcK3Kkmf8aVFsq
	H2zZG1aaHASNmiPdSyzUsw+PlpsV4RY4OQ4oKpV5CrxqESQiD4FOaVWt/6L0aeJGeEK+V7rR9pOKl
	YHUCG6YTEd06ZFi4QJI4opMv70BdUDHk6jjjDMuUw5RzpNkmZHa9qVlt7kD5hNTQAq1y2VIXRZ0Jz
	mKcSojAMCKB+r04SQwFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqPc-0004pH-Qv; Mon, 15 Jun 2020 14:48:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqPK-0004hg-Ak; Mon, 15 Jun 2020 14:48:19 +0000
X-UUID: 4d69cbce582d45aeb796aa3c78dd2357-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=JT5TIMa/y9db8xDofK6AotJvJ9TLioruJwaz49+x9qM=; 
 b=qZ+TumLNeaPS7vMEsVUlf5qn1Mjp62vePzYEaOeqwC1ai314FUCMa0u3x2IebNynmjXMDmVSqodO3/feCOlUvJnVqswlzfwYAgQ53qgim2uujpWpaOY/Dk6iW1o2Ii4H6GxPxFyn6IPbvdHeDwpxI79lo5/OLjgjdz0SE2QdUwE=;
X-UUID: 4d69cbce582d45aeb796aa3c78dd2357-20200615
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1625980849; Mon, 15 Jun 2020 06:48:14 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:48:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:48:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:48:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/3] scsi: ufs: Export UFS debugging dump for vendors
Date: Mon, 15 Jun 2020 22:48:02 +0800
Message-ID: <20200615144805.6921-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074818_391001_FF740985 
X-CRM114-Status: UNSURE (   4.56  )
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

This series creates an unified entry function for UFS debugging information dump, and exports it to vendors to help debugging.

In the same time, do a small cleanup in ufshcd_make_hba_operational().

v1 -> v2:
  - Fix incorrect returned value in patch[3]'s ufs_mtk_link_set_hpm()

Stanley Chu (3):
  scsi: ufs: Remove redundant label "out" in
    ufshcd_make_hba_operational()
  scsi: ufs: Manage and export UFS debugging information dump
  scsi: ufs-mediatek: Print host information for failed supsend and
    resume

 drivers/scsi/ufs/ufs-mediatek.c | 16 +++++++----
 drivers/scsi/ufs/ufshcd.c       | 51 +++++++++++++++++++--------------
 drivers/scsi/ufs/ufshcd.h       |  8 ++++++
 3 files changed, 47 insertions(+), 28 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
