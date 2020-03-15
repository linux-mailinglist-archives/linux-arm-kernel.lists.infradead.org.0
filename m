Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B94C185F6D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pm2h8kmpsJOAKCL8wKPoX4IxUf3Qhll1cOpkhbzACMQ=; b=SJM8uK+90qzEti1bD72AoF8zsl
	WWu6fwE9SYaD+YNmHhEoNY5imJvMkKm2+f6rVXxkAsZV0rAjbH9kSDQVelXmsiw/OxWBhB4wf08kV
	mbdgqHUSsUQYvcKhLaYscmqOa/kxJ+6n7oXz8Wnc05/bH2S5c5dDSlJe1p6Sf+RG52WRm0Gr6R5dc
	QoD/WtdXyL3AIwjxU72ehWeKu8UVap4YNWG6oEY2quadYmNl/sdS2AdcqXAbkeHQk4Kt5wsFF42bb
	/To23EUGYZFz+UePL496vuSobdWqSSp8sIHA6NKU8PABDNCWeFI8dyO3AhOYv9htbsXAemeFGwuHV
	qwEdCa0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYlB-0004Bv-Ev; Sun, 15 Mar 2020 19:17:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkd-0003zF-Pu
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so6882268plo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5gxpV7JB+0bFUt/kU5rYLHIq/2ry55hJR4QU1nC9mRw=;
 b=rjbNEwM/XgZEinoND9gGIEJmVXVX0IanV6iiJpzvEKbgkrF/FYCqlwIoWUXcBa2+c/
 yIYS7nZrQpACubLkCOlWVSzJcvGltPWfy6osRa8MiOCJFO74iwIYa5oAq2deqKWDAgx5
 vJIwK1bDlkX8vEKx+6vXlGCoz+VaAiKCmyBGkVphf8x4yOueYmEXIfKIxNm16CN5cwv+
 FN8kwokDMxYMHUGamnUhx3PK1KVr2j2v89KLITk1XOPZNqYqEZhBEkX0hDlHGROA/nV+
 lztSZKFuoprzHWSvFf7mXNvbijq/sQRLZA2zHQqdbfuCJ8Bgw5MiF1ijls/NIobvhsop
 riIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5gxpV7JB+0bFUt/kU5rYLHIq/2ry55hJR4QU1nC9mRw=;
 b=q4JCniaFj7hdb8FIfAkTj4LmVJfHBWbgL0piWxlhYO4eLKpxoJhgAO3Fx8S8KJGgYX
 xggHop5HvQarGPXb70KQpturqBrT6vDXbVqma2JDL4CxDfSjPKHqr8HwYJrclvNb13UR
 bzOEK/NxDD71xmFwbW0ubPbZeDy5mUhwmyQOewNT0cuxhBjf5YPpWSUdoaqQK5nkOmN4
 kYI3BFBbfeGDbv5Q8wvfmIzLH+oGn9TXxVtX1uk9llb/obt1I8Y+GMqQwS71P1UOzqz4
 HXi5Y4e8ffqU6Gv/PODp+KV/k6ZxkoWokAh972F96pRWZHaG6xuYX0d11HMWccSXJ7yU
 67jA==
X-Gm-Message-State: ANhLgQ0CNBVfaU3ej8wd/hMeKBw08aVN5KCkULqrhfB5gBR2LRRRg29c
 XRRZNb9Fjcenf2/g6vH7esQ=
X-Google-Smtp-Source: ADFU+vvPigWemmbDaZCwov3VlDQsV3Pr9WZu55/E9xaVXXoXBXL4qctLgdHRc/GF5GsrKHAcIT2RcA==
X-Received: by 2002:a17:902:ee93:: with SMTP id
 a19mr11882497pld.258.1584299802773; 
 Sun, 15 Mar 2020 12:16:42 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:42 -0700 (PDT)
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
Subject: [PATCH v2 2/6] usb: gadget: add "usb_validate_langid" function
Date: Sun, 15 Mar 2020 12:16:28 -0700
Message-Id: <20200315191632.12536-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121643_871899_085A7350 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

The USB LANGID validation code in "check_user_usb_string" function is
moved to "usb_validate_langid" function which can be used by other usb
gadget drivers.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2:
   - the patch is added into the series since v2.

 drivers/usb/gadget/configfs.c  | 14 +-------------
 drivers/usb/gadget/usbstring.c | 24 ++++++++++++++++++++++++
 include/linux/usb/gadget.h     |  3 +++
 3 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/gadget/configfs.c b/drivers/usb/gadget/configfs.c
index 32b637e3e1fa..822ef0470c5f 100644
--- a/drivers/usb/gadget/configfs.c
+++ b/drivers/usb/gadget/configfs.c
@@ -13,8 +13,6 @@
 int check_user_usb_string(const char *name,
 		struct usb_gadget_strings *stringtab_dev)
 {
-	unsigned primary_lang;
-	unsigned sub_lang;
 	u16 num;
 	int ret;
 
@@ -22,17 +20,7 @@ int check_user_usb_string(const char *name,
 	if (ret)
 		return ret;
 
-	primary_lang = num & 0x3ff;
-	sub_lang = num >> 10;
-
-	/* simple sanity check for valid langid */
-	switch (primary_lang) {
-	case 0:
-	case 0x62 ... 0xfe:
-	case 0x100 ... 0x3ff:
-		return -EINVAL;
-	}
-	if (!sub_lang)
+	if (!usb_validate_langid(num))
 		return -EINVAL;
 
 	stringtab_dev->language = num;
diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
index 7c24d1ce1088..58a4d3325090 100644
--- a/drivers/usb/gadget/usbstring.c
+++ b/drivers/usb/gadget/usbstring.c
@@ -65,3 +65,27 @@ usb_gadget_get_string (const struct usb_gadget_strings *table, int id, u8 *buf)
 	return buf [0];
 }
 EXPORT_SYMBOL_GPL(usb_gadget_get_string);
+
+/**
+ * usb_validate_langid - validate usb language identifiers
+ * @lang: usb language identifier
+ *
+ * Returns true for valid language identifier, otherwise false.
+ */
+bool usb_validate_langid(u16 langid)
+{
+	u16 primary_lang = langid & 0x3ff;	/* bit [9:0] */
+	u16 sub_lang = langid >> 10;		/* bit [15:10] */
+
+	switch (primary_lang) {
+	case 0:
+	case 0x62 ... 0xfe:
+	case 0x100 ... 0x3ff:
+		return false;
+	}
+	if (!sub_lang)
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(usb_validate_langid);
diff --git a/include/linux/usb/gadget.h b/include/linux/usb/gadget.h
index 124462d65eac..1a05227bdfae 100644
--- a/include/linux/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -773,6 +773,9 @@ struct usb_gadget_string_container {
 /* put descriptor for string with that id into buf (buflen >= 256) */
 int usb_gadget_get_string(const struct usb_gadget_strings *table, int id, u8 *buf);
 
+/* check if the given language identifier is valid */
+bool usb_validate_langid(u16 langid);
+
 /*-------------------------------------------------------------------------*/
 
 /* utility to simplify managing config descriptors */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
