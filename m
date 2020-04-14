Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A5A1A71F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 05:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z6uMDbAIYSFRG56l0kyxl2F6K4og814NbwVMgxKbmA=; b=PT1QXc7KBBJI7d
	tLrczqMaeT+KyTHlEmhst465S2B1ZnX8noHDfvvACS2RAFiXXcwUmUoBsqLSXYYfp/jaiR7RVQjEh
	Xr++5/oFZZfTK4dpmXIPN6iaGyidekLlBy7xZJSTeg4GAoLw5B+0eYIG6f/fFu4EemjKTTx5p9L+s
	pI/e9jR545cqE99H+/p+9/q6W3hviHd8j4wBlH/seaZ3nqFeOJncC6G6YycARVQSc3uZ3uAEDX8lj
	1L5NxUU5iKtVV91ZEiLZMqB1q/ENWfdtUCUxlcK238xo5B/m6rZziWQp8ge8n/D86NZljCMg59Vl6
	9zO60y2bnsy5jiCkpJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOCSe-00046I-B3; Tue, 14 Apr 2020 03:42:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOCRZ-0003Fs-Jh; Tue, 14 Apr 2020 03:41:03 +0000
X-UUID: 0d821055f4ef4820b4b9259eac5052fa-20200413
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=SkuybeaYmadFxyJ4GbnzpSoKVqrqaPzUzjiC/dZm8Jw=; 
 b=hkvI7C/dlEUsEq1OtfZDTkkdZYWqJRrvmDlVyaNOzUUgfMFRs3x87M9ol+nyAEx207mmqnfjd8XdDA5P5g1wneraCwvjb7gQnhQyyfXkNQ8AAz4qJphyricLL4AY2mrD6ZySm0KKvesrFlKCLpctnN3ZGCnENaAduj2cP4HmkMo=;
X-UUID: 0d821055f4ef4820b4b9259eac5052fa-20200413
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1235827447; Mon, 13 Apr 2020 19:40:58 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 13 Apr 2020 20:40:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 11:40:55 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 14 Apr 2020 11:40:50 +0800
From: Yong Mao <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 3/3] mmc: core: fix mmc_sdio_reinit_card fail issue
Date: Tue, 14 Apr 2020 11:40:11 +0800
Message-ID: <1586835611-13857-4-git-send-email-yong.mao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_204101_646891_1BADA3BE 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, yong mao <yong.mao@mediatek.com>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: yong mao <yong.mao@mediatek.com>

If SDIO device is initialized by UHS mode, it will run with 1.8v power.
In this mode, mmc_go_idle may not make SDIO device go idle successfully
in some special SDIO device. And then it can't be re-initialized
successfully.
According to the logic in sdio_reset_comm and mmc_sdio_sw_reset,
invoking mmc_set_clock(host, host->f_min) before mmc_send_io_op_cond
can make this SDIO device back to right state.

Signed-off-by: Yong Mao <yong.mao@mediatek.com>
---
 drivers/mmc/core/sdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
index f173cad..dc4dc63 100644
--- a/drivers/mmc/core/sdio.c
+++ b/drivers/mmc/core/sdio.c
@@ -850,6 +850,7 @@ static int mmc_sdio_reinit_card(struct mmc_host *host)
 
 	sdio_reset(host);
 	mmc_go_idle(host);
+	mmc_set_clock(host, host->f_min);
 	mmc_send_if_cond(host, host->card->ocr);
 
 	ret = mmc_send_io_op_cond(host, 0, NULL);
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
