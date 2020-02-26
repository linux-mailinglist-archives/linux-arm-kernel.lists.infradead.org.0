Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7216F733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ZTFzWMkd0YbeeMNPSAbiQdQnnUEM+lodljdrmvkOZA=; b=XKjqyWIfL9y3iH
	fdQM8adFCZhFusQDTn41kJpCJjHI+V6rVJ7hRe+MeiuVZ8ox3ohbpDoH4wwC5DukkCFO84N+ot1T8
	uJ9+UjqRtabOwrVIGS5NkO4ljl7s45+f4qEnveMxcp16ux6yH3roOKZ/7s0dM2ObahwDsONaF0W9W
	92Cy8d1xWiw5MAdvmnmA+uYTR3IaRWjdTjujvsOyPWF8gGZkYjJvy+p6m5bib6So3+7RyMmSfJmaa
	nlw8xvM+B0IZssZnzaCBgzteMOc7vPAFqaxHiIVZcC7awAtpkG06zF/i7BArT0L5jWUBOK8Z2vdyf
	gUk7dneubNTMrTGesoqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pDI-00007M-D8; Wed, 26 Feb 2020 05:26:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pD5-00005s-Pi; Wed, 26 Feb 2020 05:26:17 +0000
X-UUID: 5d6a6ce6beb7430d928efd602da2ab9a-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=49qv1PxTKA63h58GMIBjrRHNQLNwM95yAfup8dmCDng=; 
 b=jQpMKKDnON1BIjVmK8G3Gvz0Q+xcannVAC/8pxT34o/1hrQiAeL7OWetAvP3v9EuOa303HdR3ezVOUWIKo/X/C/RethaZrh/CZptLwtZBBLR1RhefiDdJSHDxzhDqyPDXJUK4JDx/KTigbj1e2mX7jJ9jVm+lc/3pn/89tzoKco=;
X-UUID: 5d6a6ce6beb7430d928efd602da2ab9a-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 21920225; Tue, 25 Feb 2020 21:26:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 21:26:11 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 13:25:18 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 13:23:53 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: pull request: linux-firmware: move MT8173 VPU FW to subfolder 
Date: Wed, 26 Feb 2020 13:26:02 +0800
Message-ID: <20200226052603.22768-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_212615_840005_589B8A5F 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

for you to fetch changes up to a8a18d1ce5920bc0cfcf320747163cf13806b568:

  mediatek: move MT8173 VPU FW to subfolder (2020-02-26 13:08:15 +0800)

----------------------------------------------------------------
gtk_ruiwang (1):
      mediatek: move MT8173 VPU FW to subfolder

 WHENCE                    |   6 ++++--
 mediatek/mt8173/vpu_d.bin | Bin 0 -> 2977184 bytes
 mediatek/mt8173/vpu_p.bin | Bin 0 -> 131180 bytes
 vpu_d.bin                 | Bin 2977184 -> 25 bytes
 vpu_p.bin                 | Bin 131180 -> 25 bytes
 5 files changed, 4 insertions(+), 2 deletions(-)
 create mode 100644 mediatek/mt8173/vpu_d.bin
 create mode 100644 mediatek/mt8173/vpu_p.bin
 mode change 100644 => 120000 vpu_d.bin
 mode change 100644 => 120000 vpu_p.bin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
