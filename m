Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884CC24853
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJLox/fWAVGOKEb8a7aXkMQb8V8v/2fJWrLIY50pO1k=; b=REIUrQivyuZxID
	s2lkP4M/M/Nebx2TjgAfP3qyuHKcoSau6wQgab0JLaJ5rzfT6BbsvPq+X+JXsZKYetqo5pLfj0Cmy
	5HxFuC56zHNzyW4jZsapAZCG0uly/rZ64JwuvPbucz3oSDBk9cob311aM7HunbYZhALcKzCcQ/M/B
	O6NheQDGRts/oVVkppvcIfub2aEMkXfZ6rl0eoFh6aqU/3dQGYQUsiWMwEL4cN0kRwnmWC5hmlpg4
	YSqYvLa2osIA6CMl8twEvvDwz2+N9tpJ0CFwZwRiJbipslQCD5ynJ+29JaAVQFGsjwcNZTiS4ii/T
	u2QTcf8z/kuRwK0b8mJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyXG-0001Jl-HQ; Tue, 21 May 2019 06:46:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyWk-0000jM-3m; Tue, 21 May 2019 06:45:35 +0000
X-UUID: 5506ed965b224078bc70834e6376a746-20190520
X-UUID: 5506ed965b224078bc70834e6376a746-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 991889183; Mon, 20 May 2019 22:45:08 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 23:45:06 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 14:45:04 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 14:45:04 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v5 0/3] scsi: ufs: Add error handling of Auto-Hibernate
Date: Tue, 21 May 2019 14:44:51 +0800
Message-ID: <1558421094-3182-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234534_154786_4EEAA440 
X-CRM114-Status: UNSURE (   6.47  )
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

v5:
 - Also re-factor checking of Auto-Hibernation support in other places, e.g., in ufshcd_auto_hibern8_enable() and in ufs-sysfs (Avri Altman)
 - Change order of patch "scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()" to #1 as a preparation patch of whole series

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
  scsi: ufs: Introduce ufshcd_is_auto_hibern8_supported()
  scsi: ufs: Do not overwrite Auto-Hibernate timer
  scsi: ufs: Add error-handling of Auto-Hibernate

 drivers/scsi/ufs/ufs-sysfs.c |  6 +++---
 drivers/scsi/ufs/ufshcd.c    | 35 +++++++++++++++++++++++++++++++++--
 drivers/scsi/ufs/ufshcd.h    |  5 +++++
 drivers/scsi/ufs/ufshci.h    |  6 ++++--
 4 files changed, 45 insertions(+), 7 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
