Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C211B86C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6h7z6t/Efk9IV94ADG3ekhVKQEp8uCY30zCaU36G3E=; b=EaR3jJ3kV/bEF5
	LHGSvpE/CxIXNzwCPsh4yrGoZ4zYqSU+jj8YWs++PNtTVgmt7Gmw8c8eT79s9zpRtRLix/TIeyQ8c
	yeacFIsvPZmT29dsFpyFk7+0wa9rCTgv2bD4CfAJLpPSj+CM/+JMEPcfJjgS9Tl1y+AX5F5EnyulH
	+3FxDDGjYT+5zLUs5wTkGZ9IRp8Ph1MhveBJINX12ysAOqAqZxsomJRVnWsD2YjU1OerCwaV2AdLA
	bSVZuL+AYypCMvWIx7vU9xB5+C98ruVHU46HkLyYdGRukiEmjGZeg8L/I3McSySPUstrwqP3O+V+4
	iPgDcIZCXG//nGOg8PqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQC4q-0004Iw-3q; Mon, 13 May 2019 14:37:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQC4K-0003n4-9K; Mon, 13 May 2019 14:36:47 +0000
X-UUID: c2e2e28ad84340de8846f6f261eb8a5b-20190513
X-UUID: c2e2e28ad84340de8846f6f261eb8a5b-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1869661129; Mon, 13 May 2019 06:36:35 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 07:36:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 22:36:31 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 13 May 2019 22:36:31 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 0/3] scsi: ufs: add error handlings of auto-hibern8
Date: Mon, 13 May 2019 22:36:23 +0800
Message-ID: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 39CA6C07C08CE177DC88ECBB8CB28A6623BAFF398AD66A25D1994835AF4110302000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_073644_570907_FA9F1896 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com, sayalil@codeaurora.org,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently auto-hibern8 is activated if host supports
auto-hibern8 capability. However no error handlings are existed thus
this feature is kind of risky.

If "Hibernate Enter" or "Hibernate Exit" fail happens
during auto-hibern8 flow, the corresponding interrupt
"UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
according to UFS specification.

This patch adds auto-hibern8 error handlings:

- Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
  auto-hibern8 feature is activated.
- If fail happens, trigger error handlings just like "manual-hibernate"
  fail and use the same flow: Identify errors and schedule UFS error
  handler in ufshcd_check_errors(), and then do host reset and restore
  in UFS error handler.

Stanley Chu (3):
  scsi: ufs: do not overwrite auto-hibern8 timer
  scsi: ufs: add error handling of auto-hibern8
  scsi: ufs: use re-factored auto_hibern8 function

 drivers/scsi/ufs/ufshcd.c | 16 +++++++++++++++-
 drivers/scsi/ufs/ufshcd.h | 13 +++++++++++++
 drivers/scsi/ufs/ufshci.h |  3 +++
 3 files changed, 31 insertions(+), 1 deletion(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
