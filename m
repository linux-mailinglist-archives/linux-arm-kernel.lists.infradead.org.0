Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3679D0B23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjHFiN59lx+cknxEUNIdYI16+MWYPQX+sjpEHJSyKfg=; b=fsqe+4Da0aF4PH
	OAS0zWf6/JBAW5EVzemfje8UF5DoiNeWQB2k3jZZlrpW1kyn60FApzhmCT3OsTPE1gV3Ajwpz8mhj
	tto+pxqQdw+Vs/5IrmRM7iTsf3ZpJXHg1TYl9OPNsmSR0R4H4abZ3xhxcsds4SJnqmMAfp+rNsjWr
	UDFwYI8/8cEpnz1VkP9yxCNjnMTTNlj2HK82evj2AonW44q6OKroh6UhwK4xpd8ndOhF2f8SrzRQT
	2upDkq58azMX2ZyZdbblAr/4YoXUhw7GEtm88L7yGm1oDCmkHldJWnZToaNwp1iFlCtwrNE9trsVE
	+t0b5pJOryld6qpmVJAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Gy-0001C2-KL; Wed, 09 Oct 2019 09:28:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Gn-0001An-KK; Wed, 09 Oct 2019 09:28:34 +0000
X-UUID: 56460bb6a7054a489efe7a5e57a62a45-20191009
X-UUID: 56460bb6a7054a489efe7a5e57a62a45-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 658979371; Wed, 09 Oct 2019 01:28:30 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:20:16 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:05:05 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:05:04 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] usb: mtu3: fix race condition about delayed_status
Date: Wed, 9 Oct 2019 17:05:00 +0800
Message-ID: <1570611900-7112-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1570611900-7112-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1570611900-7112-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1984517D90B470CD343F26B3BA7716B584D48C68D26AABCE3CE16C6BDD6E72ED2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_022833_673152_4688D0F1 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

usb_composite_setup_continue() may be called before composite_setup()
return USB_GADGET_DELAYED_STATUS, then the controller driver will
delay status stage after composite_setup() finish, but the class driver
don't ask the controller to continue delayed status anymore, this will
cause control transfer timeout.

happens when use mass storage (also enabled other class driver):

cpu1:                               cpu2
handle_setup(SET_CONFIG) //gadget driver
  unlock (g->lock)
  gadget_driver->setup()
    composite_setup()
      lock(cdev->lock)
        set_config()
          fsg_set_alt() // maybe some times due to many class are enabled
            raise FSG_STATE_CONFIG_CHANGE
            return USB_GADGET_DELAYED_STATUS
                                    handle_exception()
                                    usb_composite_setup_continue()
      unlock(cdev->lock)
                                      lock(cdev->lock)
                                        ep0_queue()
                                          lock (g->lock)
                                          //no delayed status, nothing todo
                                          unlock (g->lock)
                                      unlock(cdev->lock)
    return USB_GADGET_DELAYED_STATUS // composite_setup
  lock (g->lock)
get USB_GADGET_DELAYED_STATUS //handle_setup [1]

Try to fix the race condition as following:
After the driver gets USB_GADGET_DELAYED_STATUS at [1], if we find
there is a usb_request in ep0 request list, it means composite already
asked us to continue delayed status by usb_composite_setup_continue(),
so we skip request about delayed_status by composite_setup() and still
do status stage.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/usb/mtu3/mtu3_gadget_ep0.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3_gadget_ep0.c b/drivers/usb/mtu3/mtu3_gadget_ep0.c
index df3fd055792f..2be182bd793a 100644
--- a/drivers/usb/mtu3/mtu3_gadget_ep0.c
+++ b/drivers/usb/mtu3/mtu3_gadget_ep0.c
@@ -671,8 +671,16 @@ __acquires(mtu->lock)
 	if (mtu->test_mode) {
 		;	/* nothing to do */
 	} else if (handled == USB_GADGET_DELAYED_STATUS) {
-		/* handle the delay STATUS phase till receive ep_queue on ep0 */
-		mtu->delayed_status = true;
+
+		mreq = next_ep0_request(mtu);
+		if (mreq) {
+			/* already asked us to continue delayed status */
+			ep0_do_status_stage(mtu);
+			ep0_req_giveback(mtu, &mreq->request);
+		} else {
+			/* do delayed STATUS stage till receive ep0_queue */
+			mtu->delayed_status = true;
+		}
 	} else if (le16_to_cpu(setup.wLength) == 0) { /* no data stage */
 
 		ep0_do_status_stage(mtu);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
