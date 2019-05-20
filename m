Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7846E23977
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+NMd/fYcSc6un2UdxxDFOkEanBEeoPM9VC9nbbOVXro=; b=DMKZMg+ZPRQkgm
	cpw9MJOO/7I6p0xdmLyLu4y8vd4TsbLBD+ROhoLQ2V92Etk3rrZvg990hd6BGqEbbCMUxPoOd3wCc
	gEnOzpNTfQKav1fyLQV/YGFVceZ7gOnbfpX+JGpdQNJWf1GnqGmqHB91nEkZwex6Z0A0sRWyXw00X
	DFPWN2rDhUSo82cy50EsObDrzIfZpW7DKX1Mc++R/IzgcSXJEjgVzRubRM1jUX3NkVn+tGYt9xQfm
	ScbWQDCZBJ6h/9/EpmVqEwVFzMXojqFJ8rq3MXKyjFSrn86uYpEGlIo4FSF114E5B4OKtKoYeP1PK
	k8QhpRQg4Ey9KzzxXlAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj0m-0007UC-1q; Mon, 20 May 2019 14:11:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj0S-0007Ad-SE; Mon, 20 May 2019 14:11:14 +0000
X-UUID: c53b5ba47ed849a49d5e02409cb5a420-20190520
X-UUID: c53b5ba47ed849a49d5e02409cb5a420-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1728799133; Mon, 20 May 2019 06:10:49 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 07:10:48 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 22:10:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 20 May 2019 22:10:46 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v4 0/3] scsi: ufs: Add error handling of Auto-Hibernate
Date: Mon, 20 May 2019 22:10:42 +0800
Message-ID: <1558361445-30994-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071112_910881_C75372AF 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently auto-hibernate is activated if host supports
auto-hibern8 capability. However error-handling is not implemented,
which makes the feature somewhat risky.

If either "Hibernate Enter" or "Hibernate Exit" fail during
auto-hibernate flow, the corresponding interrupt
"UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
according to UFS specification.

This patch adds auto-hibernate error-handling:

- Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
  auto-hibernate feature is activated.

- If fail happens, trigger error-handling just like "manual-hibernate"
  fail and apply the same recovery flow: schedule UFS error handler in
  ufshcd_check_errors(), and then do host reset and restore
  in UFS error handler.

v4:
 - Replace original patch "[3/3] scsi: ufs: Use re-factored Auto-Hibernate function" by a new preparation patch "[2/3] scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()" for re-factoring ufshcd_is_auto_hibern8_supported (Avri Altman)
 - Refine UIC mask definitions (Avri Altman)

v3:
 - Fix typo in patch "scsi: ufs: Do not overwrite Auto-Hibernate timer" (Avri Altman)
 - Rebase to Linux 5.2-rc1

v2:
 - Fix sentences in commit message (Marc Gonzalez)
 - Make "Auto-Hibernate" error detection more precise (Bean Huo)

Stanley Chu (3):
  scsi: ufs: Do not overwrite Auto-Hibernate timer
  scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()
  scsi: ufs: Add error-handling of Auto-Hibernate

 drivers/scsi/ufs/ufshcd.c | 33 ++++++++++++++++++++++++++++++++-
 drivers/scsi/ufs/ufshcd.h |  5 +++++
 drivers/scsi/ufs/ufshci.h |  6 ++++--
 3 files changed, 41 insertions(+), 3 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
