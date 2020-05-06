Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A981C6E76
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Md8uxVqonudcpdLUU8MIu6pmC16uGJnTfLmxTgVrsdg=; b=OyVHkIuNx4yuXe
	4mAnPW10DJ1Fx7vaW9hXrqWl1Arr15/aeW8KCqOEzJOrGblAhKJiy6LJfcfWpZ4usJ+UO/K6lIoAz
	LLWxKPPitgmV2rGlChEZOpBPRp5yc28CHykIWWqOY9Mo6GD33gX8vImGWPRu0Qn+vR7ulaSI6RoMk
	69ouiAUo3qTeiH8Zs+rBdhM4M9ViU5NZJYlgHxBCE0vWOlQV1DVTdeBhHGjslHL7ahAHZ0YIkPGg4
	4c5SP8z/GDCf25fhTsgvnXo3Rgg7SAtOTurn0zHXdPGHnM/PHcQ4GuKclUowY30+Ayw3g1nfVQTO/
	/DViP0EPL0f0vfFtjHVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHOx-0005BK-SU; Wed, 06 May 2020 10:35:43 +0000
Received: from mail.secom.com.pl ([213.216.87.26])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHOR-00035N-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:35:13 +0000
Received: from debian-2019.secom.com.pl ([192.168.192.41])
 by mail.secom.com.pl; Wed, 06 May 2020 12:34:46 +0200
From: =?UTF-8?q?Rafa=C5=82=20Hibner?= <rafal.hibner@secom.com.pl>
To: 
Subject: [PATCH V2] dma: zynqmp_dma: Move list_del inside
 zynqmp_dma_free_descriptor.
Date: Wed,  6 May 2020 12:28:45 +0200
Message-Id: <20200506102844.2259-1-rafal.hibner@secom.com.pl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <MW2PR02MB37705416E18413689BFFC7C3C9A60@MW2PR02MB3770.namprd02.prod.outlook.com>
References: <MW2PR02MB37705416E18413689BFFC7C3C9A60@MW2PR02MB3770.namprd02.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033511_624039_834FF3FD 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Rafa=C5=82=20Hibner?= <rafal.hibner@secom.com.pl>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 dmaengine@vger.kernel.org, Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

List elements are not formally removed from list during zynqmp_dma_reset.

Signed-off-by: Rafal Hibner <rafal.hibner@secom.com.pl>
---
> Looking at this, i think it would make sense to do list_splice_init() before we
> send the list to be freed.

Moving list_del inside zynqmp_dma_free_descriptor fixes the problem just as well
and avoids INIT_LIST_HEAD(list).
I still don't see how list_splice_init would help here.

Regards,
Rafal

---
 drivers/dma/xilinx/zynqmp_dma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/dma/xilinx/zynqmp_dma.c b/drivers/dma/xilinx/zynqmp_dma.c
index 931e41a72..df0403335 100644
--- a/drivers/dma/xilinx/zynqmp_dma.c
+++ b/drivers/dma/xilinx/zynqmp_dma.c
@@ -434,6 +434,7 @@ static void zynqmp_dma_free_descriptor(struct zynqmp_dma_chan *chan,
 	struct zynqmp_dma_desc_sw *child, *next;
 
 	chan->desc_free_cnt++;
+	list_del(&sdesc->node);
 	list_add_tail(&sdesc->node, &chan->free_list);
 	list_for_each_entry_safe(child, next, &sdesc->tx_list, node) {
 		chan->desc_free_cnt++;
@@ -604,8 +605,6 @@ static void zynqmp_dma_chan_desc_cleanup(struct zynqmp_dma_chan *chan)
 		dma_async_tx_callback callback;
 		void *callback_param;
 
-		list_del(&desc->node);
-
 		callback = desc->async_tx.callback;
 		callback_param = desc->async_tx.callback_param;
 		if (callback) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
