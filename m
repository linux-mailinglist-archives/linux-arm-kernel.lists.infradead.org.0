Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0B81D25AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 06:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W0haJee68Z9btvUBhMz0MpbCPzS7Yiy/sKl5+52WJXs=; b=EzWSMzZ631MI4Q
	q72lCzKgX6Qy5i9w8oFYQ0r8j2kpDSMKoELBOSMdB1DOJ9CINzNASNyMvkjkQz48ZkBcSvlXQSaVd
	XK41GjBclPTPoUSmyFROPefgPUB27Es5zORFoTcySJunTPzgeq04dTHRDHfZzYJj3C1AlLQgSDm2A
	qLDbjPW4O+eQUTwJ2XR3qqI9av61KFSQBwYmblLKlm+O5ljbMt9DHOqVQbhUlQMMPo+aCfFcwZKdf
	Zs8/qjxLl5RYsH3/EuQ/2HGdyNWN4iK2LPPbqB/8X3H4EQclJTnxS+deSyYcaejRhp+OrWiZC6Amu
	zi5U6jpzPB1dfIBy4VBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ5Dt-0002xD-Nm; Thu, 14 May 2020 04:11:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ5Dl-0002vo-C1; Thu, 14 May 2020 04:11:46 +0000
X-UUID: 27342437d645467c91b496b6b36dd4ec-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Vq25CpGWDu4hIaBmnMbm4KOdW3U78xl9MWNuHHP8T8w=; 
 b=nFstotdNa3SfFlRGyKRvIvFXNVdmnoEjdudl25XUI4akzKPpTw8ix0qR6NfaeJbn9tQCq+Sv/TWIHQjyGmogyAFLgFljRKPN0q8yJo7JB8UbzGseJ9dWOJbb71w8uKeCG2TPl/j9wgSt7nSgmjliu6ycZp4yqSYYSqzKflfVtYE=;
X-UUID: 27342437d645467c91b496b6b36dd4ec-20200513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 335795387; Wed, 13 May 2020 20:11:39 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 21:01:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 12:01:20 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 14 May 2020 12:01:19 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Hans de Goede <hdegoede@redhat.com>, Bin Liu <b-liu@ti.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH] usb: musb: mediatek: add reset FADDR to zero in reset
 interrupt handle
Date: Thu, 14 May 2020 12:01:12 +0800
Message-ID: <1589428872-29282-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7786936E7E97A400A420A3B5D83AA16F375A89018EEAA40ED48FEFC21FA816762000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_211145_435823_D774C057 
X-CRM114-Status: UNSURE (   7.11  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

When receiving reset interrupt, FADDR need to be reset to zero in
periphearl mode. Otherwise ep0 cannot do enumeration when re-pluging USB
cable.

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/musb/mediatek.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/usb/musb/mediatek.c b/drivers/usb/musb/mediatek.c
index 6196b0e..eebeadd 100644
--- a/drivers/usb/musb/mediatek.c
+++ b/drivers/usb/musb/mediatek.c
@@ -208,6 +208,12 @@ static irqreturn_t generic_interrupt(int irq, void *__hci)
 	musb->int_rx = musb_clearw(musb->mregs, MUSB_INTRRX);
 	musb->int_tx = musb_clearw(musb->mregs, MUSB_INTRTX);
 
+	if ((musb->int_usb & MUSB_INTR_RESET) && !is_host_active(musb)) {
+		/* ep0 FADDR must be 0 when (re)entering peripheral mode */
+		musb_ep_select(musb->mregs, 0);
+		musb_writeb(musb->mregs, MUSB_FADDR, 0);
+	}
+
 	if (musb->int_usb || musb->int_tx || musb->int_rx)
 		retval = musb_interrupt(musb);
 
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
