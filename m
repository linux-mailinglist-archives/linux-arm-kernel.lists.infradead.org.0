Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485101E52B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hy9ZPB1R15fWyJnU2aW3EyFoyUMm5hNt6NdKwhmVS2o=; b=W4h
	6qWNZ58tOp+Rx6HEfQU20YNY5sFFWXmymM1GUGYX3B+n8nmKtfGAwvEAcrYdID/BLscwpxfGYoVxQ
	Wz0e8trop7tBRWUQzkpX9PjMJ9TS/TS1i31/6GT0dmB/LbkKCfxzgjqavbFbkCFFF8rw5H9Oz5u6U
	LOLNi/H/0oeYDQxF6g5Lz+eb9ABFVIXjONRsdozkv2+Cj6AR32HdJlawUV4YriLAAUgjEzbjuHvB9
	E7MFeRInM2V4zaFowP4K408yL3UFvDXISxfMAP8lzL2wISyG9p5R7jRYcDYSDkLv2N27HZLpym4Xb
	wd5ele7cnE+JcsEZ+ZHbNX1YnLNauCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je75o-0007c4-JM; Thu, 28 May 2020 01:12:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je75d-0007bg-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:12:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id k22so10850735pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 18:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YeymCYJxoRhG3T4Xxmf2TbPWXKoHneVDsox17Vc/EmI=;
 b=SF0kMaXBitrTfXs4ZYGL0gj3rU3facXD9Z2fTnLLHkcmaelUp4j2JlQxp0kJdzFUjc
 MFxy8X0b+8eBqTreQbnNvD1iIZjyLpLsDWTMXyrR9oFv/PhAbPXcLSGAgh0MnZ7mh5qM
 5kq+IwiSeCKTtTNiKSv6Ed1nL43SC+4g0HY3BT0kgs3Hdrssj46/+4FGcbAre1o5of1T
 bl1yOBNY0mJhv/nL+NVWjIbezYFYztnlEd18gTY/FRsl0gn4cZtTUpVHu6rZ/C3jxrzs
 rqHH1ko28u+HcZ3UNrY2cTskl/pmAlTvOCtLGF/zRlsWA9YWkdUJoHvY1SFbDlSv6Rza
 3VDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YeymCYJxoRhG3T4Xxmf2TbPWXKoHneVDsox17Vc/EmI=;
 b=eHmqRSknRJbqs9D5WE1KM7i0bOAybNH70+qWDnww+DKx8kuiif4XSqLhF7PbHEUkv6
 mh4ca6+N0RsHTIjvSes3LTezIeLsA6Z1vdlFfv/3n6BbvkQdI2SqdQHnuaBzSa/BFs7Q
 +MsRyiHOTDxRT5a5vaiX4SmvP9S/9dz7mSLEmSW8TvmG3hvZv9NWaY0/GeOIP2Idz3aL
 QxXO5qZ8v/v2CgnNuL2p2WQov9jX0HEWUOOL0EZKb3koZPFEeJLcNTY2UJtz6Mh2e0H1
 paAxzce9SJzhcm9+RZ8cZCOZl+rzRKFH1iQZ6IV4tiQA2xsrzTV6dDNeWwNCJqaxA6tW
 4l3w==
X-Gm-Message-State: AOAM533ajjm3No7mtQcSDfYQkaHI5rzfYGD9ooQL2uVuYlbVVSiMj0+Q
 YyRZScbEon7q18DR9uWLXOY=
X-Google-Smtp-Source: ABdhPJxiQddCciww8Rxr4ZOsS/vmlkqh3e2YpWcsPfwemQowQSJHNJrEY+SgMOJGI4e8h5u4/A597g==
X-Received: by 2002:a17:90a:dd43:: with SMTP id
 u3mr1018695pjv.221.1590628327909; 
 Wed, 27 May 2020 18:12:07 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:400::5:ccc9])
 by smtp.gmail.com with ESMTPSA id gd1sm3570640pjb.14.2020.05.27.18.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 18:12:07 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH] usb: gadget: aspeed: fixup vhub port irq handling
Date: Wed, 27 May 2020 18:11:54 -0700
Message-Id: <20200528011154.30355-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_181209_851463_37EFCA52 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

This is a follow-on patch for commit a23be4ed8f48 ("usb: gadget: aspeed:
improve vhub port irq handling"): for_each_set_bit() is replaced with
simple for() loop because for() loop runs faster on ASPEED BMC.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 drivers/usb/gadget/udc/aspeed-vhub/core.c | 10 +++-------
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  3 +++
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index cdf96911e4b1..be7bb64e3594 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -135,13 +135,9 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 
 	/* Handle device interrupts */
 	if (istat & vhub->port_irq_mask) {
-		unsigned long bitmap = istat;
-		int offset = VHUB_IRQ_DEV1_BIT;
-		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
-
-		for_each_set_bit_from(offset, &bitmap, size) {
-			i = offset - VHUB_IRQ_DEV1_BIT;
-			ast_vhub_dev_irq(&vhub->ports[i].dev);
+		for (i = 0; i < vhub->max_ports; i++) {
+			if (istat & VHUB_DEV_IRQ(i))
+				ast_vhub_dev_irq(&vhub->ports[i].dev);
 		}
 	}
 
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index 2e5a1ef14a75..87a5dea12d3c 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -67,6 +67,9 @@
 #define VHUB_IRQ_HUB_EP0_SETUP			(1 << 0)
 #define VHUB_IRQ_ACK_ALL			0x1ff
 
+/* Downstream device IRQ mask. */
+#define VHUB_DEV_IRQ(n)				(VHUB_IRQ_DEVICE1 << (n))
+
 /* SW reset reg */
 #define VHUB_SW_RESET_EP_POOL			(1 << 9)
 #define VHUB_SW_RESET_DMA_CONTROLLER		(1 << 8)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
