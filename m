Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE17E1D3458
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CSWiNOEiZANN38VA9TCFD0/GVb5x2Ea9zRSiSxiS57M=; b=fxQJu/E9YtoBHl
	9twYm42aE3rX6NkudP/WnYzybKB9MnNel7NP3ZcIV9zNELog2ArGuwgK99IJT5CHoTGG6QZD/sNgU
	TtTMETRzxsYV05jWw7j6n+5DATVQkVC1+/0LCKBabH2cVKNsDabnWyE5TrdaVgO1xKyDdiiCC+M5u
	wZoNaSGon2joGkUe8N7FOD/wv2+zq8jsIbBkxcpLBK0cnyD1hDuK7Nf9IV/ft86uXD/mCbfiOY6sq
	JH3GVACwc/Nr0ZBKUShPflA3aK4YFTJ6CGQPNzGdFpun0W68HdYc9cQBRQVWxYACDL5f9oU3hzIeZ
	CSEBh7FAhdWPy1fxU/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFOi-0008CL-1d; Thu, 14 May 2020 15:03:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFMe-0007D4-SQ; Thu, 14 May 2020 15:01:43 +0000
X-UUID: 3fa5a61dc5c6414188ce228bf50b5266-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=oQJZc3MeYI2g59uaOgNPF1yMp/cTZbERUuTkSYQyTrQ=; 
 b=q926edJ2JqFC1RyS5iDL2Vl2ac5uA/AtJqQ8RYzBUSNILRtJLmlhnhqlSKalpgvx+yfsyghsj8QZ1eWStdlbqUlkWmAnkiAabUi6vi21GbJLH+DIukVVFcfrx09oNc+pNyFCERKzdEqGSzvil19CJvnEhwX/ASmtkOyvN71UWHE=;
X-UUID: 3fa5a61dc5c6414188ce228bf50b5266-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1489654614; Thu, 14 May 2020 07:01:33 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 08:01:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 23:01:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 14 May 2020 23:01:20 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 0/4] scsi: ufs: Fix WriteBooster and cleanup UFS driver
Date: Thu, 14 May 2020 23:01:18 +0800
Message-ID: <20200514150122.32110-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7A70CB63B83E9314C8CEA15F10C51D8DEFD06F744864204F25234DFCB60B92172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080136_917641_979FDF07 
X-CRM114-Status: UNSURE (   6.85  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch set fixes some WriteBooster issues and do small cleanup in UFS driver

v1 -> v2
  - Remove dummy new line in patch [4] (Asutosh)
  - Add more limitation to allow WriteBooster flush during Hibern8 in runtime-suspend. Now the device power mode is kept as Active power mode only if link is put in Hibern8 or Auto-Hibern8 is enabled during runtime-suspend (Asutosh)

Stanley Chu (4):
  scsi: ufs: Remove unnecessary memset for dev_info
  scsi: ufs: Allow WriteBooster on UFS 2.2 devices
  scsi: ufs: Fix index of attributes query for WriteBooster feature
  scsi: ufs: Fix WriteBooster flush during runtime suspend

 drivers/scsi/ufs/ufs-sysfs.c | 13 ++++++--
 drivers/scsi/ufs/ufs.h       |  1 -
 drivers/scsi/ufs/ufshcd.c    | 62 +++++++++++++++++++-----------------
 drivers/scsi/ufs/ufshcd.h    |  2 +-
 4 files changed, 45 insertions(+), 33 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
