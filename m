Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9882819425D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=42fJDeoexB9j4cXQsWf3hC0lejZ6DYXpXBbN+puBVD4=; b=f2g4MfGagAxvd5
	Xfnvuf1Birxc+Bua+tjnnDEEYi1tzbD32pr1Khkqo5SvCX07sfcojReP32qwBaKMvQoa/MtCX+cXV
	50Rb6WV46b9MFt4XOLZy2RtGOTGO4It7NTyhA6nhRWTjGm2e1kSIa4DKcQIH2BblKurTkeMN2UOOM
	TLOMLqbbkcjLsWmcQ8xnd+n57datBsdCO/lajmU4vzHGmz8VvXiGqMfvvGNlR7w/0acEGnFA7AIji
	nlf6YWphcHOAmh0uUbNnwPqpkt4WBt199nqWdS8lj+yOJDa0jjUiJjy4SuqhC9u/whVDjw+QMce5p
	7zJFB+zIgPrGDD+Z96sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU79-0003Pa-AC; Thu, 26 Mar 2020 15:08:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU70-0003O7-PH; Thu, 26 Mar 2020 15:08:04 +0000
X-UUID: 10ac4f038cef4280b9e1d43e367cd8c9-20200326
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=q4HfqE41fG8j1Z9fLijz7fOipfgRE/koqLpBPkPcNyU=; 
 b=uz4bbbE0kcfZ0lHmnxI6H54f+nU5DyEwg1JYamK4dIo9lkM2qKJi1DGVxkb64gxKwOw33dEM9CSN/hWoZYFVNdS5jc0WxjnHZmsYIE0D74UCibCmFsW5mKXNylmO4Pmy+T03UWO2n6BkPQ4Mx4SkZmG1vOVpPZ+/jzGN+3M/LZw=;
X-UUID: 10ac4f038cef4280b9e1d43e367cd8c9-20200326
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1707116345; Thu, 26 Mar 2020 07:07:58 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Mar 2020 08:07:55 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Mar 2020 23:07:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 26 Mar 2020 23:07:47 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 0/2] scsi: ufs: add error recovery for suspend and resume
 in ufs-mediatek
Date: Thu, 26 Mar 2020 23:07:45 +0800
Message-ID: <20200326150747.11426-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080802_825714_F42ED553 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset adds error recovery flow for suspend and resume in ufs-mediatek driver.

v1 -> v2:
  - Fix format of comments

Stanley Chu (2):
  scsi: ufs: export ufshcd_link_recovery for vendor's error recovery
  scsi: ufs-mediatek: add error recovery for suspend and resume

 drivers/scsi/ufs/ufs-mediatek.c | 13 +++++++++++--
 drivers/scsi/ufs/ufshcd.c       |  3 ++-
 drivers/scsi/ufs/ufshcd.h       |  1 +
 3 files changed, 14 insertions(+), 3 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
