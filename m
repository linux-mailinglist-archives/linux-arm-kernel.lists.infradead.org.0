Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BA31E391C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NxmXbUH8UISAqV1NyTV/98W1Hz7bluxovvrwtKp9qBw=; b=FHgmA4+LGvK6cK
	1MkxKO8sDcNCCFRwy3Q8Dxnnt5hl8ix6zFnEX8Z+IYBHhJVwYbJyFAQ0FCFEsvMlr0N1H+LYGmZPD
	tK20l4HIO9k3dDBnGB6r81CxaP6UxWJGbBT/JTCXf5QRvPm2imgPO1ksMnoqb0/GL/0buUo/qtPca
	xr5NG+NtTd0U0AsWCygi/zGYgfWWhkWrK074F1mzYh9J37K6F0KpPonVtwGxuJfNRq32KxqraIrwT
	7of59SWz8pSsfDd6F7JzNIvUVvPdSN6LgC0LnUJLsYkAPTlByofS9/iD268XhMmD9KTW3BUfLEW4V
	4iNOzu4foK8mPyhYyfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpW8-0005a8-Pm; Wed, 27 May 2020 06:26:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpVy-0005ZQ-MG; Wed, 27 May 2020 06:26:12 +0000
X-UUID: f015e84058bb43428e434ba0bdb2fae5-20200526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=3JgPtKgRdy8ddR7xtaWXijDFOHGnyaGurBt3CDZDbJc=; 
 b=qa3bSPrvl0ZaXE29kjfi/OCbwK/CBns3iU/bn193BTzTIC8m9KXM7e+ODSYjAyw4m/MhHBZ64uESU0j3wJdPRzr2SXv3k15qGdBMpe6favG1RWr12y3QHPawBEzy0oMy/v1gokoVwDoouJLug0hDk5423JdQnefmWRUEb6k0DFA=;
X-UUID: f015e84058bb43428e434ba0bdb2fae5-20200526
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1518370596; Tue, 26 May 2020 22:25:54 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 26 May 2020 23:25:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 27 May 2020 14:25:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 27 May 2020 14:25:52 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] clk: mediatek: assign the initial value to clk_init_data
 of mtk_mux
Date: Wed, 27 May 2020 14:25:49 +0800
Message-ID: <1590560749-29136-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: BFDC40E46F0324815F4D3721A56AD387881A75494A619CD8E2BD5B4CD48C0DC62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_232610_731022_FEBD8D5D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Owen Chen <owen.chen@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When some new clock supports are introduced, e.g. [1]
it might lead to an error although it should be NULL because
clk_init_data is on the stack and it might have random values
if using without initialization.
Add the missing initial value to clk_init_data.

[1] https://android-review.googlesource.com/c/kernel/common/+/1278046

Fixes: a3ae549917f1 ("clk: mediatek: Add new clkmux register API")
Cc: <stable@vger.kernel.org>
Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/clk/mediatek/clk-mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mediatek/clk-mux.c b/drivers/clk/mediatek/clk-mux.c
index 76f9cd0..14e127e 100644
--- a/drivers/clk/mediatek/clk-mux.c
+++ b/drivers/clk/mediatek/clk-mux.c
@@ -160,7 +160,7 @@ struct clk *mtk_clk_register_mux(const struct mtk_mux *mux,
 				 spinlock_t *lock)
 {
 	struct mtk_clk_mux *clk_mux;
-	struct clk_init_data init;
+	struct clk_init_data init = {};
 	struct clk *clk;
 
 	clk_mux = kzalloc(sizeof(*clk_mux), GFP_KERNEL);
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
