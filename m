Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39C0185F74
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NW0nHO/Q2vD9y30dp3P83seMFMNZip5jTE39KWIL2ew=; b=TZ7+plhdRWsWEq/2FnCuL8lt9H
	duSu5slmd3Beyowy8aAZ8rvuVU3mjIm60iZ9Bqm72F3RPqSfXjQJF5xO4pqsC7pb3X4uVKQaczxGn
	rqkRyfTo2M7CLe515DkpfyCxvQFnEuIIqRQW1TE/jkQNX2SnBlRXZveII++vLMnVE+k8H+R9jGkk4
	IczChubickEN3+xYIgkY2lq57LRSffp4aATdotD0qI+sBCbtCyJz7aE2ZA+3YF5Fk7FhLC7PeID7m
	vh8hFbORMPkwoP/SDTecteIr39JkEZJ0COk/d1rFwy1Lvj7yPEcF4TQC5VkQpdxTs6mJ4GMsd1h5A
	4LJAlqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYmL-0005NF-T2; Sun, 15 Mar 2020 19:18:29 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkj-00043M-UH
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id b22so2357957pgb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3ftgzhaTcHumF1wl+zxzORyRVylT4QiROgG963NJrxE=;
 b=hdX3ezZpi2YDHwnAS48I6J3zhHF57KyVQEBULjcqbwkHFINN8RzdAuYHF+cUFowEes
 mdKXHoyh+/52Pe0RTFxqWSExz0pu/J1uqEIGvu19LZNHKRFNhFNrAjO0vGFl7ju3D8N8
 77cefLPQeOOi6MRIAHATQ6Av1T4CfP7YABlRNQ3VuqYtLcHIensCUFskH3AjIFmx2/No
 fGKi2qeuqm79wR+0YyTzJx+aLGCbK/llUxsSLHGJ1DP2USQs7vPJ4jdTOmPbFlxHNCgo
 jKyeGjUFj/HvPHvWh6CeAiC2JdKCGtyNRN6JWKOVXQOdGlv8azQgRm7fvYfyDcK+L3sy
 iEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3ftgzhaTcHumF1wl+zxzORyRVylT4QiROgG963NJrxE=;
 b=R+sr93FSyUJsBDJR3HtBpE4iYeV4bRXzG5VxZpiNe6KxO/W3upo2XJtAabmJTBnScX
 PAmG5L9b/jntUa9vuKvaRB7+8UHLCH6Qwzw/UqyGIUNoBg1OXbDODLmo5mgCLRWtwU1W
 hgGoseRVtD2sWfuJ9qi7koy/jQHMr5XUOd8Y/uPh/Ub6vLALaQX4Il3WZP5GAkB/+xH6
 pMWTFqPWpeCO/wCWFSKz2AhSHiutQ2gogkSKdj28mNQF3chZi7mrJ+eCgGbxKSmcCjQM
 WH425AhBsZzx9aQV+ifSYPyLzX6sORdsT1gaiqZq0OckOLq3PhGtuKXaWMiU+mKFO3bD
 iPsQ==
X-Gm-Message-State: ANhLgQ1Wh4YXsqz2+XpoQmiGkyMH+NaNWF0ebXetcdJ5sP0INA1c7goC
 ffko8j1ToLB4JgxXrgyAVQQ=
X-Google-Smtp-Source: ADFU+vsIuGJ6NC3/lmhKrZurUH9P1d3lFbOZv5wVLK0E+vEjIvVQ8KXp+19oTFLLGwyXkL+Y/LD/kg==
X-Received: by 2002:a63:3d45:: with SMTP id k66mr23203589pga.56.1584299808334; 
 Sun, 15 Mar 2020 12:16:48 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:47 -0700 (PDT)
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
Subject: [PATCH v2 5/6] usb: gadget: aspeed: fixup usb1 device descriptor at
 init time
Date: Sun, 15 Mar 2020 12:16:31 -0700
Message-Id: <20200315191632.12536-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121650_006436_4C7189DF 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch moves patch-usb1-dev-desc logic from get-descriptor handler
to "ast_vhub_fixup_usb1_dev_desc" function so the code is executed only
once (at vhub initial time).

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 Changes in v2:
   - update per-vhub device descriptor instance instead of the global
     default descriptor.

 drivers/usb/gadget/udc/aspeed-vhub/hub.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 13fba91aad6a..6497185ec4e7 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -73,13 +73,6 @@ static const struct usb_device_descriptor ast_vhub_dev_desc = {
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
@@ -303,10 +296,6 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
 	if (len > dsize)
 		len = dsize;
 
-	/* Patch it if forcing USB1 */
-	if (desc_type == USB_DT_DEVICE && ep->vhub->force_usb1)
-		ast_vhub_patch_dev_desc_usb1(ep->buf);
-
 	/* Shoot it from the EP buffer */
 	return ast_vhub_reply(ep, NULL, len);
 }
@@ -907,6 +896,12 @@ static void ast_vhub_of_parse_dev_desc(struct ast_vhub *vhub,
 	}
 }
 
+static void ast_vhub_fixup_usb1_dev_desc(struct ast_vhub *vhub)
+{
+	vhub->vhub_dev_desc.bcdUSB = cpu_to_le16(0x0100);
+	vhub->vhub_dev_desc.bDeviceProtocol = 0;
+}
+
 static struct usb_gadget_string_container*
 ast_vhub_str_container_alloc(struct ast_vhub *vhub)
 {
@@ -1021,6 +1016,8 @@ static int ast_vhub_init_desc(struct ast_vhub *vhub)
 	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
 		sizeof(vhub->vhub_dev_desc));
 	ast_vhub_of_parse_dev_desc(vhub, vhub_np);
+	if (vhub->force_usb1)
+		ast_vhub_fixup_usb1_dev_desc(vhub);
 
 	/* Initialize vhub Configuration Descriptor. */
 	memcpy(&vhub->vhub_conf_desc, &ast_vhub_conf_desc,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
