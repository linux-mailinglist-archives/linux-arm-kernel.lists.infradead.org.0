Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F95416F63E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 04:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9v1IU6kyl/rATqeRbY3NFOv8dSTgzTeFj9Y/79k4W0=; b=mexVR7mYXrcgXy
	URBmx9PxpV0L08vD46DAqdHQV5lhBcsAm+a3fQXeBHYNxWdo0VlduZDKHm4Wa7FwaScnuZVkbmWw6
	J45LOySyqpdLlnh4GoR6/IUnVtOv6k9gksmqfft/JusYXMEk2vcrYd8xWJbO2lyZnCsiI3WTRy9OK
	c4C6JhyNJyZjFOSjViAYFph4Wa/c+9BIX/Im06wFwy6fQM+WkLAmeoLXjch2pEElCHDb/vMx1uWDh
	+crSjpNPVBAYV44WDzs60rsWMajcSIFO/+Vs+hE9oEyCUrEvYiUjHZ6EiJLENIM+KTluIg7L2jgwq
	ddJ+148eliBaIR9U/vRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ngT-00010H-Sl; Wed, 26 Feb 2020 03:48:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ngJ-0000xB-Jy; Wed, 26 Feb 2020 03:48:20 +0000
X-UUID: 7ed3760767e84e878af8faef6f92256b-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=nh2s25XhkWJkMUS7wIRow/JMcFuv2C5dPCJ4XGFkezc=; 
 b=opZEQT5BmAxmywzC0NpXMzvnI2sSr9jKbSMe6cNzIb8fJZrqRshudSyGVNL8eqMFaGbbgy3kLycgkg1Co1+N5nTShtnVxWBQ7vYcDY4kE/EHHpGMcSeteOQhVrwARuLFgmyAYMkJQpy1vVeniLW1Vk3IZRzUJQKggrh1/+irW1s=;
X-UUID: 7ed3760767e84e878af8faef6f92256b-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 581682116; Tue, 25 Feb 2020 19:48:17 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 19:38:53 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 11:37:24 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 11:35:56 +0800
From: <gtk_ruiwang@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: [PATCH] mediatek: move MT8173 VPU FW to subfolder
Date: Wed, 26 Feb 2020 11:36:46 +0800
Message-ID: <20200226033646.20949-2-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200226033646.20949-1-gtk_ruiwang@mediatek.com>
References: <20200226033646.20949-1-gtk_ruiwang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_194819_667841_DCBA8065 
X-CRM114-Status: UNSURE (   6.23  )
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

From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

Currently vpu_d.bin and vpu_p.bin are at the root of
linux-firmware git tree, it's not appropriate so we move
them to subfolder mediatek/mt8173

Release Version: 1.1.4

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
 vpu_d.bin => mediatek/mt8173/vpu_d.bin | Bin
 vpu_p.bin => mediatek/mt8173/vpu_p.bin | Bin
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename vpu_d.bin => mediatek/mt8173/vpu_d.bin (100%)
 rename vpu_p.bin => mediatek/mt8173/vpu_p.bin (100%)

diff --git a/vpu_d.bin b/mediatek/mt8173/vpu_d.bin
similarity index 100%
rename from vpu_d.bin
rename to mediatek/mt8173/vpu_d.bin
diff --git a/vpu_p.bin b/mediatek/mt8173/vpu_p.bin
similarity index 100%
rename from vpu_p.bin
rename to mediatek/mt8173/vpu_p.bin
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
