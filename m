Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDFA15FD11
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 07:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfPbu0QTReqYbw5wyPqTeEg5yDoc+VFYBY4i3uIOBbo=; b=ByCVJcrsW+JSVX
	f4fuyeCy/JAOBM0HtCKM4bs2LaRQpuPY7FUbFhcSupLyHMyF5dHXWOECddXOAjryZjU9hij3QaBMs
	sDTRq3qm5k4QxNei6XBfibX1KS82yxmBdF/zFsSssC2jNzo4GEe7qVDA7aD8O20uMySKyu+k+kQ8z
	K+3mbgfsF+dRnsaqb6dNuGkJnm+GyC3R/Qm06ifLEqTqHRiG7sMemq6yLnVCeLpTQpda5K5FlWX2j
	acL/WuU07qUuVMZ0BZpbmUBzwGKTTrYbqp/jmzxG5QNanP+ldj4l3VTE1hNwJNg/eAISV7aJAxpQG
	8cPkVKLEsCK3ySqqfVnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2qoI-0001ij-VX; Sat, 15 Feb 2020 06:20:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2qo6-0000xz-Pf
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 06:20:04 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2C36D63BC;
 Sat, 15 Feb 2020 01:19:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 15 Feb 2020 01:19:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=hSouSsobAjpXD
 JaLkOFL8Uc12VDY8WT1xUChd1bBKcU=; b=gv/O6tdl9sBP7jCtfkxkDFrwgjAph
 YddeeE8QyFfunM6WNW6WDhp6dKRxJ9ZSS4ElI1PjXuTL+C1dGpnsJWCPmV6FLPTx
 oNFzQSG2JSgsxyhnT1y7RH4bj1nDWQlc6zcL02QFTQOPi6AKljAZe38I+dfWjLoU
 hS+ivdXIGEoaXFLs1iOIm74Ob6RnQB8QGBKYoUXEh0rUP5UuQI+pKWDGHP0Nu82w
 obz/2eAtLNk+jsoWvWKFfktYwuOW31JN0vnf5l8d7baNQmZUazEolpiumy/Y/mPr
 JAn6TLgkZDQBDDuVHZZoJsS+ynEtb/Qgxz9d7x9FfDpmN60PxzntCPe5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=hSouSsobAjpXDJaLkOFL8Uc12VDY8WT1xUChd1bBKcU=; b=Pknkfcus
 VEhmh2/e/67xrculb+Cf1x1qh08QQ3jqF/fTLvjLtcsA7LGP00bxKeMosbWEwoSU
 eFZdxQAfr3UDcdEYdH6aWckCN2JTMCFDKoEDQ6jxjqf8NakV4zVfjZfYqbUIbbdD
 Ye+l/eym5Ug+xN91gQM4b7+42KhQMNDQSzQ4YEUmdHRmCh2SrbdOkx6HvAMV8P/g
 jLUhL4jAJFDuF7yxfdeNE63Vc10ipmLEwn1Ml5L+CDZBtiAPKKSPOW12fAxR8EFZ
 hHMC0v/gaJsHYeyF/YqbgeduDTHNP+jhy2DjaOhpOwVKjCUCttVHeeHp9x2IsHub
 SIA0oRh82zsukA==
X-ME-Sender: <xms:io1HXllp69IbqtJ9lpATLUNQATSoDiBOkHH8zlAMmRaeX3ISPP_R6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedugdelgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:io1HXsinOja78dQD1nBmUXgITMcFwhP7cQgiZKK6Jbd1cgluN8IzPw>
 <xmx:io1HXigYibKXVHcRJAPs0k5iRmasKioU6BBjBalgfWKvcOGKyg2gOg>
 <xmx:io1HXqb533JF4gzO8q94uxezXd3aHn_7W_79tEZnf2i6uw4l58P57w>
 <xmx:jI1HXtqHGJCqWLrw1TUkGQnqZm7zRylMPOYJilxH_ZsXN0uoEqOalg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 061CF328005A;
 Sat, 15 Feb 2020 01:19:53 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH] mailbox: sun6i-msgbox: Remove unneeded FIFO status check
Date: Sat, 15 Feb 2020 00:19:53 -0600
Message-Id: <20200215061953.55300-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <CABb+yY3T1cL+E6Y1tGb5cuKLSY5m_zi=VOx4AJzuX40TMOSQTw@mail.gmail.com>
References: <CABb+yY3T1cL+E6Y1tGb5cuKLSY5m_zi=VOx4AJzuX40TMOSQTw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_222002_991954_CA7347A6 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A transmit FIFO can never be full, because the mailbox framework
waits until mbox->ops->last_tx_done() succeeds before sending the next
message. sun6i_msgbox_last_tx_done() ensures that the FIFO is empty.

Since the extra check here is unnecessary, remove it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/mailbox/sun6i-msgbox.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/mailbox/sun6i-msgbox.c b/drivers/mailbox/sun6i-msgbox.c
index 15d6fd522dc5..ccecf2e5941d 100644
--- a/drivers/mailbox/sun6i-msgbox.c
+++ b/drivers/mailbox/sun6i-msgbox.c
@@ -106,12 +106,6 @@ static int sun6i_msgbox_send_data(struct mbox_chan *chan, void *data)
 	if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
 		return 0;
 
-	/* We cannot post a new message if the FIFO is full. */
-	if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
-		mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
-		return -EBUSY;
-	}
-
 	writel(msg, mbox->regs + MSG_DATA_REG(n));
 	mbox_dbg(mbox, "Channel %d sent 0x%08x\n", n, msg);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
