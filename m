Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D41478AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 07:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=co0I4hbh13LCJDTBTjdjFnrcTZjdT2xNl1SLR7K6tAM=; b=fVBoS9shIlJ2j3
	voikP1Lmov0Zeh0X0UhTD3zZvxuaxp9eijLvVEQU1fIpxHEcZPL473qlO6oJbHa4+PVusEJbj0/wE
	zgB4WK5vav+wecN2kvXxl0coHakGLwc+bwEPFKx181UY5ijOzcaouNbr8boMYMkvDyF9lyEVPBFKF
	HYeiKPKNdiMPfwwo1DKXP0XFLXzN3s74hh/cb1mun/wLx9lFr99gEnkdZOpRWFivRis2r6Zkx6fw9
	AytaCcnK4dlHxBAlXBf3uO/OwbEPGal6ZEqoTrvtigu/h0vXtx6xC7ywLSxiMV9dAjjJkceBeVgGh
	m1qVEP4dHfTGDXOEwnmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iusnG-0002DH-2o; Fri, 24 Jan 2020 06:50:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iusmi-0001yq-Mu; Fri, 24 Jan 2020 06:49:42 +0000
X-UUID: 81694a39251f433d9320fb200f5d53df-20200123
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=9ZQEtQSDH2l7X4gZYfdkXUBut/YYbTfvmWSTS2DhTxg=; 
 b=D10F9DWFCdvj4U79P4WJKEhizwxu5CWKXi9GlCvouB108AP/tFyU+Z3j+umHGI1/9OAR/tzCQMk8ZFQNZ9X23jxCb0Ll0IVMfL9+bXrYIaKpsNdNx9HE1MlxgH+Nt62/C+rduZTOJpNZEb/7yH0YiYRHobB/n39qJO13Uj3hzT8=;
X-UUID: 81694a39251f433d9320fb200f5d53df-20200123
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1067299609; Thu, 23 Jan 2020 22:49:31 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 Jan 2020 22:50:41 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 Jan 2020 14:48:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 24 Jan 2020 14:48:57 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 0/5] MediaTek UFS vendor implemenation part III and
 Auto-Hibern8 fix
Date: Fri, 24 Jan 2020 14:49:21 +0800
Message-ID: <20200124064926.29472-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_224940_760017_4AB82C6F 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This series provides MediaTek vendor implementations and some general fixes.

- General fixes
	- Fix Auto-Hibern8 error detection

- MediaTek vendor implementations
	- Ensure UniPro is powered on before every link startup
	- Support linkoff state during suspend
	- Gate reference clock for Auto-Hibern8 case

Stanley Chu (5):
  scsi: ufs-mediatek: ensure UniPro is not powered down before linkup
  scsi: ufs-mediatek: support linkoff state during suspend
  scsi: ufs: add ufshcd_is_auto_hibern8_enabled facility
  scsi: ufs: fix auto-hibern8 error detection
  scsi: ufs-mediatek: gate ref-clk during Auto-Hibern8

 drivers/scsi/ufs/ufs-mediatek.c | 65 +++++++++++++++++++++------------
 drivers/scsi/ufs/ufs-mediatek.h | 12 ++++++
 drivers/scsi/ufs/ufshcd.c       |  3 +-
 drivers/scsi/ufs/ufshcd.h       |  6 +++
 4 files changed, 62 insertions(+), 24 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
