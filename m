Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE711FD61
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oBvk0p/2VLs9WYi4h2YO+22Y00oQrx3tutwoj0fvbic=; b=MKKF4ldLl5sYAf
	uT3xaZGajTbCXLASLy1r9nS9xnkDJRRYQJ+ygkl7VPQyeGdhrATlZHS6KxqSdxLPk+5aGWPyC/TYd
	7Hu1YVeiko8B8ajL5ZnHntckuPH8n2sTNcCozE/mDfmwsUTIMkfjhVf83war5muqa5TbYRaH8Z6vy
	ZhuqOTaHJQPIUpvU5lEPPH01qfCjsEhut3a1b+OPGbJS0289i3F8e6WzREOjzr9EXanmjKtnUu7E9
	JrPwkPcAEAakNm2gvrNTisODKYtKrZvaPp51yqXV8LhxtlU/WPtS0S6fXQ6Qn2yBGJNfehn8N/tdQ
	rwdzhZIfE9AP8Xq8NPgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighXP-0002r0-Mh; Mon, 16 Dec 2019 03:59:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighXB-0002pC-AL; Mon, 16 Dec 2019 03:59:02 +0000
X-UUID: 63490d0359344efb8c4343d7672f902f-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0oTM8ec49riGzkXqbh5sFdhXmjjCrTrpNmENYdE7F7s=; 
 b=M6/3IUhkmECZ4Xvqmv88gWoAUjact28Lub1Z3ZJBDYZZaEKvj5rgW9rxFYTj+oPkv0AGVoJtv4s4m6U10FMtsATlU4dzgQ8dpUetHlnCmAdD3loID7HEAtjhKXmJbTT6KfdB62o6f8MNBskVQUDPdoYzZbYFTMVpq+aJC/BHgZQ=;
X-UUID: 63490d0359344efb8c4343d7672f902f-20191215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 42826778; Sun, 15 Dec 2019 19:58:59 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 19:50:21 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 11:48:28 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Dec 2019 11:48:58 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v2 0/2 RESEND] scsi: ufs-mediatek: add device reset
 implementation
Date: Mon, 16 Dec 2019 11:48:55 +0800
Message-ID: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2C63DA52B94AD84F64F4F77477A7075DBF46997BA5D1D4C0C62BC6CC6F9402E72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195901_365137_813691E8 
X-CRM114-Status: UNSURE (   4.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patchset add implementation of UFS device reset vops in MediaTek UFS driver.

v2:
 - Use definition defined in include/linux/arm-smccc.h instead of "magic definition" (Florian Fainelli)

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
