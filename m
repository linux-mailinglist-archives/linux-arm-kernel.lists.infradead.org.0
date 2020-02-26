Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C9E16F629
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 04:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W92ipUoUYhaA3IT5faG2TS54MBYnRH5zMkHfChdcN9M=; b=gWWTrCpreD30+D
	bKFiC5XkuokAnE3bqooRbJxfjrf03clONOyCg3MGnF1NYBR3/KCzPXM8mXIxpQeC3kgd6FsWcFU5X
	g+9amk5G83PySGwaxPHT2SGCn4FyQVtR8M8eZMIWwbGfB+LV5ivyXLFLNkqTGYXMaScAFAQLUIBER
	z8oyakG4Ug8YdeBkt8RcyALPEqGCTkmDxHUsoj3zvsHrn2DMFXnlvJh6HKYvJzQC188U9sVDfxgnM
	ahWaZyfSo4z+GKoEUKvtMiqtTVYwhi0TiErqAA7kjFxsYKIIjJBR3uzwHhzI5Y27pLAjKG1FlKqsG
	wJuczQd8wU5pCuF5QCGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6nWB-0005EN-OL; Wed, 26 Feb 2020 03:37:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nW0-0005Cv-VU; Wed, 26 Feb 2020 03:37:42 +0000
X-UUID: 7f55703d4e334b648e6988c1aa81e03e-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=cgYMAr+8MfT+9oQtPueYQelaIVbakgIZFZ6xAha24GI=; 
 b=SxQOgIVOLRjIF+gK7VXGEwRNrXa7ujVEynNqJRvggUXr3PxzQQAQRHoBN8v9NHpM0A4jqhaiNUyDyJRY68gYviAlBVeTT9ULT6vZ1YFbKPVVgj/V/69s3l89/MH0cyRVuPKDrkHG/TA/NmClrKtRNBEmhui6cYvxB8oXFqFerMQ=;
X-UUID: 7f55703d4e334b648e6988c1aa81e03e-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1215638783; Tue, 25 Feb 2020 19:37:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 19:38:38 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 11:36:43 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 11:35:09 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: pull request: linux-firmware: move MT8173 VPU FW to subfolder 
Date: Wed, 26 Feb 2020 11:36:45 +0800
Message-ID: <20200226033646.20949-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_193741_022220_A9A93129 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gtk_ruiwang@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 Alexandre Courbot <acourbot@chromium.org>, srv_heupstream@mediatek.com,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 PoChun.Lin@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi linux-firmware maintainers,

The following changes since commit efcfa03ae6100dfe523ebf612e03c3a90fc4c794:

  linux-firmware: Update firmware file for Intel Bluetooth AX201 (2020-02-24 07:43:42 -0500)

are available in the Git repository at:

  https://github.com/ruiwang-mtk/linux_fw_vpu.git

for you to fetch changes up to e5caf7b0f56350704836ec63845d398a9faca506:

  mediatek: move MT8173 VPU FW to subfolder (2020-02-26 11:02:00 +0800)

----------------------------------------------------------------
gtk_ruiwang (1):
      mediatek: move MT8173 VPU FW to subfolder

 vpu_d.bin => mediatek/mt8173/vpu_d.bin | Bin
 vpu_p.bin => mediatek/mt8173/vpu_p.bin | Bin
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename vpu_d.bin => mediatek/mt8173/vpu_d.bin (100%)
 rename vpu_p.bin => mediatek/mt8173/vpu_p.bin (100%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
