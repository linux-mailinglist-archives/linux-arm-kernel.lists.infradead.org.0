Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BB912CCF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 06:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmeXX2i+ua/PB09nEwkBWfEgPgkzRj2SvxsiHPDTy7g=; b=rq+AAnoLZcB0sg
	NVQdBK8Ra4qq92v1VRbB/exyx9wWqolfUH3N8nH1WzYFiKg59HjJPtm88T2TEHG0GZEsMhcFicRzn
	pKiPPncAMb6sNXEnqypXaepkueg2vvfDaMFiokdwnSye98n1jtH8VUe/MBvUIgKn6LtYBm5uXNblS
	MIf5UGwx8p/4bFmvEtibravjSCJaTROUSu9OD78dzg19viYdDgYjeS3dQoPdJxhcq5whgS3epOfNB
	V6mtvPB701d8AVi8Cmf0ZY5BQRy9azm5Ig3ox36NdCoYKbYVkoC/Sxo/l3Xgfs5Q595Ez3A61beIo
	90q0sXGlAbACKm8f7NJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnfy-00076q-56; Mon, 30 Dec 2019 05:33:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnfl-00074n-0i; Mon, 30 Dec 2019 05:32:58 +0000
X-UUID: bc64d4b4dd274b7780d4497286b8e31d-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=HtNPM7dejlWJWxW/NdMu+8iY5acDOzc1HLly9BYlNdw=; 
 b=HWn4hhCug2hcx21ztIaXlaCdem8ep5vNZF7ZoR9AMj865rrJOn+2YcuRwu79jA6SQ5UZ1Q80HZ5M+bi8LZ4Qw4soBYb83xo94mYolG9mOuktkXuu1I1eFJ+ZcWJ0QYD23buqaACME98TE44pxQ+KPHfPCCv9aFfX/5artdlHNd8=;
X-UUID: bc64d4b4dd274b7780d4497286b8e31d-20191229
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2060566474; Sun, 29 Dec 2019 21:32:49 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 21:33:02 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 13:32:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Dec 2019 13:31:24 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <bvanassche@acm.org>, <f.fainelli@gmail.com>
Subject: [PATCH v2 0/6] scsi: ufs: add MediaTek vendor implementations
Date: Mon, 30 Dec 2019 13:32:24 +0800
Message-ID: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 40A6531EB29FBBF407E2838E26378FC5BE786B18504C9DBB6B363B6E8C47BAF92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_213257_068110_290B5B82 
X-CRM114-Status: UNSURE (   5.97  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series provides MediaTek vendor implementations as below,

    - Device reset
    - Reference clock control
    - Auto-hibernate enabling with customized timer value
    - Clk-gating enabling with customized delayed timer value

v1 -> v2:
    - Move MTK_SIP_UFS_CONTROL to ufs-mediatek.h and make include/linux/soc/mediatek/mtk_sip_svc.h has common definitions only (Alim)
    - Remove dummy "line change" for MTK_SIP_UFS_CONTROL definition
    - Refactor UFS SMC calls in ufs-mediatek.c

Stanley Chu (6):
  soc: mediatek: add header for SiP service interface
  scsi: ufs-mediatek: add device reset implementation
  scsi: ufs-mediatek: introduce reference clock control
  scsi: ufs: export ufshcd_auto_hibern8_update for vendor usage
  scsi: ufs-mediatek: configure customized auto-hibern8 timer
  scsi: ufs-mediatek: configure and enable clk-gating

 drivers/scsi/ufs/ufs-mediatek.c          | 125 ++++++++++++++++++++++-
 drivers/scsi/ufs/ufs-mediatek.h          |  27 +++++
 drivers/scsi/ufs/ufs-sysfs.c             |  20 ----
 drivers/scsi/ufs/ufshcd.c                |  18 ++++
 drivers/scsi/ufs/ufshcd.h                |   1 +
 include/linux/soc/mediatek/mtk_sip_svc.h |  25 +++++
 6 files changed, 192 insertions(+), 24 deletions(-)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
