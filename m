Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9A1637DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 00:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yXNZwL3SW83fVyt5eNuQ0IySYTXIA0D8sZXl6nCT1v8=; b=Jqx2p0UUswROYfX8poDZylWO9g
	lQlrGMz5VWxB3lFGRDtw02x/fXFQtt/s1Dvn0QRckRhrHTAvFZNN14HWXr067p3Ocylp0zuxb/zKc
	7Fg+VUAngpDtPmM2s0+DhHJyRED9vIrcdXi93GGXiWYjbSKCOij2AQnv2gsOsA49gV32Qlkc1PCrx
	XAZJ/BVrS2zPI25z2P4Y1gJWVTn4LXdgio4HSIKq7/DrwjTd83gT1MnFQTKlB8JHxx3GOtZzF7St+
	ghLf8CisRB4mwkkUx419KPCSLmYuZZbi/JTG2etHIOjCY7U9jBkNuCbwVq3Fv1jMdgg/2jgx9jWRP
	2w2yYEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ckm-00042h-H8; Tue, 18 Feb 2020 23:58:12 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cir-0002KB-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 23:56:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so1714922pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 15:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i3Cj6jCmg8Re6HCriaAPvQ8Bt49I/I/XDNaSdtPwqac=;
 b=iRujqTRISwGHP3FrC4HAQHsTqDffJ+OB/WFIZ8dqRIiGjwCWFYx4CFAxupO5MWnQXa
 d3rVvJuJ5l8SnEwqdviSYlBmdGgcTPNrJ+HoZjxBX3FD5N5KwNg6Uf6tqtQXnUncRDOq
 jLIj/xFZWknt1R9cPThVquMLLvfvrcYv2Uf7hJeZvSTPJhIDGCqxRfPs2bnTyR2epNpd
 UEgRa+bMcUOxFlXK1TxWRcNJZ4NPwbm3OoPBi0oKhBT+TiNY9TualZ12pSy/JimnF80b
 ZlgWdEDQin+GsFR91+qUeWx8iM7XRGb92vgjdn/oUQsUiZ2adrDA3p3WXLX9iW+rZHR0
 dbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i3Cj6jCmg8Re6HCriaAPvQ8Bt49I/I/XDNaSdtPwqac=;
 b=bcO1OKXNCZmJlB227jVnfVVp68unQbbhP87hGu8Hv3zMrCCruwqCxvPFAs8YqojusW
 /ZTnf+JXu4O3wzwOS6mkDNhTzp2BphngTtaby0Cb6SeJQJTxAhdqkltwGO/1Zm9ZxlkE
 sCE1bsiVcP6qUB9EdyDvtcbUBMI24W6iZj6jAzTUU2IGI3GcIkvFSpbI4rrtWXVSzaeP
 3ibdLK+JhJzaJmtr4eUVoChTbMWf7iQEq5gQclpRknmPk3ieDaYmoiOm5hUf39GGdqpS
 enKy8CzsO1bm3/inVegG/lXShs6ErdFlNbJ886ABImiAEeXfW3Ud5iezso+AG8cq2n7L
 VIAA==
X-Gm-Message-State: APjAAAVrteywKehL53ui4uZ/NN9naI5iekkL20Vg5eAozNKQozyIUAWg
 /nQAjlS9jHCGg4z53CCY6k8=
X-Google-Smtp-Source: APXvYqwisrukoS6yd93rdtw5m0FL5P7Ha4WhyctQfgcrYnU5l7WoT8AAOrF4pDzWWvOMx6BXpKzm0Q==
X-Received: by 2002:a17:902:aa0b:: with SMTP id
 be11mr22317242plb.181.1582070172122; 
 Tue, 18 Feb 2020 15:56:12 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::5:1718])
 by smtp.gmail.com with ESMTPSA id d3sm80558pjx.10.2020.02.18.15.56.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 15:56:11 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH 2/2] usb: gadget: aspeed: fixup usb1 device descriptor at init
 time
Date: Tue, 18 Feb 2020 15:56:00 -0800
Message-Id: <20200218235600.6763-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218235600.6763-1-rentao.bupt@gmail.com>
References: <20200218235600.6763-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_155613_443233_8760BE42 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch moves fixup-usb1-device-descriptor logic from get_descriptor
handler to "ast_vhub_fixup_dev_desc" function so the device descriptor
is only patched once (at vhub init time).

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 drivers/usb/gadget/udc/aspeed-vhub/hub.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 4e3ef83283a6..b8bf54b12adc 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -76,13 +76,6 @@ static struct usb_device_descriptor ast_vhub_dev_desc = {
 	.bNumConfigurations	= 1,
 };
 
-/* Patches to the above when forcing USB1 mode */
-static void ast_vhub_patch_dev_desc_usb1(struct usb_device_descriptor *desc)
-{
-	desc->bcdUSB = cpu_to_le16(0x0100);
-	desc->bDeviceProtocol = 0;
-}
-
 /*
  * Configuration descriptor: same comments as above
  * regarding handling USB1 mode.
@@ -316,10 +309,6 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
 	if (len > dsize)
 		len = dsize;
 
-	/* Patch it if forcing USB1 */
-	if (desc_type == USB_DT_DEVICE && ep->vhub->force_usb1)
-		ast_vhub_patch_dev_desc_usb1(ep->buf);
-
 	/* Shoot it from the EP buffer */
 	return ast_vhub_reply(ep, NULL, len);
 }
@@ -878,6 +867,15 @@ static void ast_vhub_fixup_dev_desc(struct ast_vhub *vhub)
 		if (of_str[id])
 			ast_vhub_str_array[i].s = of_str[id];
 	}
+
+	/*
+	 * Update USB Release Number and Protocol code if vhub is running
+	 * at USB 1.x speed.
+	 */
+	if (vhub->force_usb1) {
+		ast_vhub_dev_desc.bcdUSB = cpu_to_le16(0x0100);
+		ast_vhub_dev_desc.bDeviceProtocol = 0;
+	}
 }
 
 void ast_vhub_init_hub(struct ast_vhub *vhub)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
