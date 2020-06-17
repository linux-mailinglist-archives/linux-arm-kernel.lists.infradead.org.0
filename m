Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F76A1FC442
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 04:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNA55HHpoPPsI/bJfkeqA45JJPzwSpP3CapVcuwjZf4=; b=VaEhDZEZJIBXno
	chixF9VK3AX2xp+FJmRbF1YdXo+lFEKR+RvYEnNQRrAoG2DsK0+kyEfkOXmQ5wsb+zwwzeKN3DyVV
	Q4C/qMF6tiPw3M3uLFWAcNprX+yjVP4MMxwBDioY1uZ1zgi5jBRYfjjby9l44emIZZ0SYm08tY3Ld
	hTWUH+ofSEZdnPIt1w7r2JHCcPCyqLwjtKXOQQhy5XycDnPPqhUCD9eMQ4qxF/lOiRvh99jCfCLGr
	5Df2pI7I90TcFb9SEW0w6k14wWhs1kz8B3tcn+bef2Mr2dz5bLAAd2Z4jkIT0Zo/Oc/MsV3PKCqN+
	x1isMfXCYpRDdQYGkHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOGP-0006ZT-EX; Wed, 17 Jun 2020 02:57:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOGG-0006Yk-AR; Wed, 17 Jun 2020 02:57:14 +0000
X-UUID: 18ebf655ae5e496d986a4b1957c55d33-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZB3PDgfcBojaJ/fPpU6l0md70bnLTvLTU3jl+XWvIfE=; 
 b=HHtqY77AKdEdRl5uRlzh+xBaDieKv9n3wLZ7vxZ/3F77PEfWNqIW1WWu/u4+NxP0FxRfH1MVvBLMY5OOpIBdAP5i894qcpT5D4VqEgj+4weCxqnq5M0qJuWUpEe8HbOeHxfQw/lgWNBQNhdjR7CckXA+wVAEJU+kGTQhpNHvttI=;
X-UUID: 18ebf655ae5e496d986a4b1957c55d33-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 576697989; Tue, 16 Jun 2020 18:57:05 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 19:46:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 10:46:50 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 17 Jun 2020 10:46:52 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Alan Stern <stern@rowland.harvard.edu>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Felipe Balbi <balbi@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>, "Sergey
 Organov" <sorganov@gmail.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] usb: gadget: u_serial: improve performance for large data
Date: Wed, 17 Jun 2020 10:46:47 +0800
Message-ID: <1592362007-7120-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
References: <1592310884-4307-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 341107C8CF0BF6B3E6614FF7FFDF49CB2287241339A1BF5421EE54432FA9522B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_195712_371596_90FED3A7 
X-CRM114-Status: GOOD (  10.06  )
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
Cc: Macpaul Lin <macpaul.lin@gmail.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nowadays some embedded systems use VCOM to transfer large log and data.
Take LTE MODEM as an example, during the long debugging stage, large
log and data were transfer through VCOM when doing field try or in
operator's lab. Here we suggest slightly increase the transfer buffer
in u_serial.c for performance improving.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/gadget/function/u_serial.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/function/u_serial.c b/drivers/usb/gadget/function/u_serial.c
index 3cfc6e2..d7912a9 100644
--- a/drivers/usb/gadget/function/u_serial.c
+++ b/drivers/usb/gadget/function/u_serial.c
@@ -80,6 +80,7 @@
 #define QUEUE_SIZE		16
 #define WRITE_BUF_SIZE		8192		/* TX only */
 #define GS_CONSOLE_BUF_SIZE	8192
+#define REQ_BUF_SIZE		4096
 
 /* console info */
 struct gs_console {
@@ -247,7 +248,7 @@ static int gs_start_tx(struct gs_port *port)
 			break;
 
 		req = list_entry(pool->next, struct usb_request, list);
-		len = gs_send_packet(port, req->buf, in->maxpacket);
+		len = gs_send_packet(port, req->buf, REQ_BUF_SIZE);
 		if (len == 0) {
 			wake_up_interruptible(&port->drain_wait);
 			break;
@@ -514,7 +515,7 @@ static int gs_alloc_requests(struct usb_ep *ep, struct list_head *head,
 	 * be as speedy as we might otherwise be.
 	 */
 	for (i = 0; i < n; i++) {
-		req = gs_alloc_req(ep, ep->maxpacket, GFP_ATOMIC);
+		req = gs_alloc_req(ep, REQ_BUF_SIZE, GFP_ATOMIC);
 		if (!req)
 			return list_empty(head) ? -ENOMEM : 0;
 		req->complete = fn;
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
