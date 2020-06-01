Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56EF1EA227
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XMVC/XmAGA5+HFX7DbG33gPOWCExGfXI3DSnDLy+UrY=; b=MX6YuJAwpaHmFj
	P0DO0sIbKnugzy4oO08ics/Y98nCoJWJGs8Zu5Dsdv07nawaELHwplM4T9mlSp0ZFKKjdpEeWkAAS
	dhKAnRoJLfgvek1OZG5Gn5MVLpGr53jmxbCYft/S5MK41m+X5xyMHuiIua44NLKi3QApToSBMzRFs
	G5kxnaInfg8xIM3qQWt8Rbp2EWBMuuJffnoffEp/KhzNGofnUdx5cpMG6T+XFLqCgMKPfjm87QlcB
	ndx2uhJCysQwhsoxk82aybjeoj7F2A5eMV2ynzG8WKtYVabFgtVGJ9BEnMqjav2OkfsTBiZn3jO2q
	oJDuQyOVmvUiQVFkrtrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhyv-0000eS-Nq; Mon, 01 Jun 2020 10:47:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhy3-0008Jp-6M; Mon, 01 Jun 2020 10:46:56 +0000
X-UUID: 4adeb7f435fa4520bd5b732144f32083-20200601
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=3tcqnbR/zIlPdKV8ncXNBaptfuExNkU2Wwoy2vi6+Dg=; 
 b=LYxPH7Ikoi/Ep5KfZFnE4VbGq89skg7OuL7PkHeAAdH8JvcX47b/hyEtQXI8alTKMCCex5fG8bka+/ou4tgYDPVEdzZog7vcVJOMZLL3iO1+dIVz29ctRK+Jvp+fzZPtVvzWHMIURh4MDphjUMmCpxQR6RbqkC5kTSik3yXKzaA=;
X-UUID: 4adeb7f435fa4520bd5b732144f32083-20200601
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1468068211; Mon, 01 Jun 2020 02:46:44 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 03:46:47 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 1 Jun 2020 18:46:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 1 Jun 2020 18:46:45 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 0/5] scsi: ufs-mediatek: Fix clk-gating and introduce
 low-power mode for vccq2
Date: Mon, 1 Jun 2020 18:46:41 +0800
Message-ID: <20200601104646.15436-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_034655_245065_B487A301 
X-CRM114-Status: UNSURE (   5.17  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
This series fixes clk-gating issues and introduces low-power mode for vccq2 in MediaTek platforms.

v2 -> v3:
  - Fix (add back) linkoff support in patch [4] since previous version incorrectly removed linkoff support

v1 -> v2:
  - Add patch [4] and [5]

Stanley Chu (5):
  scsi: ufs-mediatek: Fix imprecise waiting time for ref-clk control
  scsi: ufs-mediatek: Do not gate clocks if auto-hibern8 is not entered
    yet
  scsi: ufs-mediatek: Introduce low-power mode for device power supply
  scsi: ufs-mediatek: Fix unbalanced clock on/off
  scsi: ufs-mediatek: Allow unbound mphy

 drivers/scsi/ufs/ufs-mediatek.c | 116 ++++++++++++++++++++++++--------
 drivers/scsi/ufs/ufs-mediatek.h |   3 +-
 2 files changed, 90 insertions(+), 29 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
