Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90B2116821
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 09:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ErfKlR2O2j5gqzlJAjqzbksLG6NO5XoEq6XwfwfbPd0=; b=LpQLuE+rEKGGlo
	GfZOL86pfAzxmRB+p11OU2B4YbkQ9tqHaf8skxe4UQQmxSUKY8FvEn08E8cmEjkU0UGpzNkzFZJFX
	14oZYePOtKZLIb29SdzK74lQoxqJvHqG/qidDrYgsZOtfJcXAouptpwJp8rhK3sT9ul7zg1Hv3x0B
	tWivoitYPndsrATWARXBMWTBocw/aAiBhMaMBUuPtsH80N2Evb6EEw8mnoXrxl9XHwNfwSc0e6ZJE
	5x2/T2kU5KBqy0d6ivLGMRl3TFzXxNDvu2lr6LeSLz1XYrHuG1mZ/+XxWHmOJD/ZE+flXRQ7B6lmZ
	t2r96MEzp9FDT/iouk/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEQE-0003Pk-04; Mon, 09 Dec 2019 08:29:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEQ3-0003OB-4e; Mon, 09 Dec 2019 08:29:28 +0000
X-UUID: ea29a1c9626c47219198b05f08e84722-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=SKHFGNVcj1YeLG7m4C4Dpi+bv0S2tUzFl3AhI7+421E=; 
 b=HSvv/NbE3pLGEXvSy7IIBS2cQj70svZD0U+RsGdCDzAvo1qOak1vw49jz21bbP2QBVhB4YAhznwFT+nAYXKdRVm6v1uoPQdO8Znz8KBC/BO0Dybk1voaBACUCCo1+045sE3i58SJ3lHrEvLC//u4JBggGFhczEJ5q4Mg3KWJ0XQ=;
X-UUID: ea29a1c9626c47219198b05f08e84722-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 457235255; Mon, 09 Dec 2019 00:29:18 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 00:30:18 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 16:28:54 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Dec 2019 16:29:00 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v2 0/2] scsi: ufs-mediatek: add device reset implementation
Date: Mon, 9 Dec 2019 16:29:12 +0800
Message-ID: <1575880154-6099-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_002927_192446_DD8C5499 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds implementation of UFS device reset vops in MediaTek UFS driver.

Stanley Chu (2):
  soc: mediatek: add header for SiP service interface
  scsi: ufs-mediatek: add device reset implementation

 drivers/scsi/ufs/ufs-mediatek.c          | 27 +++++++++++++++++++++
 drivers/scsi/ufs/ufs-mediatek.h          |  7 ++++++
 include/linux/soc/mediatek/mtk_sip_svc.h | 30 ++++++++++++++++++++++++
 3 files changed, 64 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
