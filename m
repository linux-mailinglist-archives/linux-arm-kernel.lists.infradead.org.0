Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01711F9A3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pOwFFmjjldnHDjhylaJ8qOLPlMsU1nSF6lDfIZwOY1A=; b=ky7DQcXxavnTcv
	Aicrq7IHRkeS/WAA3/2/9m9E2ocUQFH2Gro3HUfBaa+26SIpxyse7lXgieNXcrAUZB86XkL/gnK4H
	5JfLdV6LANdv7PVL8KGJmZaPwt4rgCMOWUBuI9uoSzTe259M80i3n51relgG47gzmgKAgmJvCFUjK
	nN54cjTaMqK/TVDrf5fi5Zm33YAmjE687HtlB7p2d6ZoPCbuY6BXtjzJR0AOtN2GeKUtMPgc6Ju7o
	pL4sW/bw7QD0v7hnhKOs4LteKokfSQDSJLljl8EhV8t8ckisOopsTbpXXeERWSi2Ge9W1LkvlbwjY
	vF8Y9s7hU5G250PzhwYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkq9R-0000UG-8C; Mon, 15 Jun 2020 14:31:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkq9F-0000RL-Gk; Mon, 15 Jun 2020 14:31:42 +0000
X-UUID: 8c9a3113ea104c6a840de1d28b8e4f25-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=nisAnoc7mvlaGA1pizlDXlUzsDkZZeGHJrykO92DJN0=; 
 b=S6ajybk2DfDg1YRK3IOl75f0smY0hXt0B/w3F4KOpVO9L/elgTS7eNdz2s0HXSpJv9g8NqnV+4w2iqdKpNXfpZO7wmZWww+hxAw3qIf2OPPdIr4CkBU7J2AqljClttyapA6UGBbN+oejsLM5IMjdtAMi2YmGseP7rhvbuD4ldd4=;
X-UUID: 8c9a3113ea104c6a840de1d28b8e4f25-20200615
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 955987532; Mon, 15 Jun 2020 06:31:25 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 07:31:22 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 22:31:21 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 22:31:22 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 0/3] scsi: ufs: Export UFS debugging dump for vendors
Date: Mon, 15 Jun 2020 22:31:20 +0800
Message-ID: <20200615143123.6627-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_073141_558402_E4691E16 
X-CRM114-Status: UNSURE (   4.14  )
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

Stanley Chu (3):
  scsi: ufs: Remove redundant label "out" in
    ufshcd_make_hba_operational()
  scsi: ufs: Manage and export UFS debugging information dump
  scsi: ufs-mediatek: Print host information for failed supsend and
    resume

 drivers/scsi/ufs/ufs-mediatek.c | 16 +++++++----
 drivers/scsi/ufs/ufshcd.c       | 51 +++++++++++++++++++--------------
 drivers/scsi/ufs/ufshcd.h       |  8 ++++++
 3 files changed, 48 insertions(+), 27 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
