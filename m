Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0685185F6F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/19IOnfZ63p+HgdAfXWIpQfoJ4S979k85YOHndNEgBw=; b=L8Hh3Aua/dePt2m6S8LjnWqgvF
	DPROH+GrDTkT8hWdIHFRMEjKPeDNfgn4pLQa5SooNXed0MbIs4Eb4xOPl3AG4H1mw5M/sFvgnTMQl
	PrWaPv5ZzWBTFLYTSTl70jmNcbky8+fMjfndggB4C30p4RzCUbxOusXca6uhWNPoqxAfO+Iq2epwb
	2ZRh0LVMAM5eNMDXMCageMNI0SXlzmtPKYH83E1jZceC1VDF6QQcoGstiB0CqZpuXnSzPhpu4hKv1
	BQIOab3E+xKvwQEflAfATwRnfeFnUa89OC01EgdEo2XwsbTbbcV+2Tld+XsPcKfpCPN1ZQheEo0Uw
	ikLJw4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYlg-0004fO-EE; Sun, 15 Mar 2020 19:17:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkf-00040K-Fk
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay11so6906188plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eovzZ3kqQ8LWP7qRD6GFAmQY5h+MQlshBlGVHRZ0WS4=;
 b=RRcNDYRssy/5F/i6fSsXIrzZIurGe7f0t/4Mw66MPPKQffthBAgpxwOksDd9+dfgaQ
 he1hqnwJw8pX6Ae2IXDZ5BqhMoAP75d2X6iQ7XcyCaaxX69+gWFGmBOB0iZeLA0UVMrw
 hiFXCEsTh5j3aQv5+oe4hbvVchgdBGB3bKSFAQN5Da5ytD5w3yciM18yjVivsQfnPRUd
 5Jlu8e4+48mHQUELnWlqVAVetxjKJ1J4pDHPgZQVE9XnBtKeAZ5lQjNlgMBAEFQaNZlM
 Dh5dvjE7eY+FJm9nhWYEe8pkYfHmvZB9mR2zl3De3Tn72c0ffbcD0+cI/o/MG8MxMe8c
 djdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eovzZ3kqQ8LWP7qRD6GFAmQY5h+MQlshBlGVHRZ0WS4=;
 b=Hyb73FOIdvVq7lvhP/njDDPqN1IJ5n1/T8YY+U+rM8sCaNyAW80rCuH1nfn1VFpG1C
 1uwOQmm+nCYPDLrMGdvhXeHt92z8/FoDBlRMWoKk0ooz4/lAb4QNokFqC8KO8NugQzQA
 novVEqVw6+bB89sW4lE0B8Opq7sNVHBEMIFCZqaqUAte+zcvXbG/qHWez55m4YPtXoQL
 BCBflrpduAOqfFe17KaSWx+P5B9vQffUGv7JGkIMiZVDeD24mj6QCgShZgsB9xbE9gf+
 OeCw5GERRgUmBkP5c+2BQKiMPnXmXRyRRgY8Vq1vldIhZ8ct/dA3zQ/d5DjUmXbdsmsk
 HbNg==
X-Gm-Message-State: ANhLgQ1ZGN/N8ZhF5a2I7bpm0bW50wwfwqhDwiex8FdbdV10gajgm8n2
 N6h7trd++RDybNYSGRayXWQ=
X-Google-Smtp-Source: ADFU+vtGG84O3T3lRIFGnx5viv8DsI8lcGdsQ6bREhmqtjVIuQIaYeJAZgzlqOUyH0BhSNIlodiyAQ==
X-Received: by 2002:a17:902:7c02:: with SMTP id
 x2mr5325875pll.30.1584299804620; 
 Sun, 15 Mar 2020 12:16:44 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:44 -0700 (PDT)
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
Subject: [PATCH v2 3/6] usb: gadget: aspeed: allow to set usb strings in
 device tree
Date: Sun, 15 Mar 2020 12:16:29 -0700
Message-Id: <20200315191632.12536-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121645_554531_68F2FA9D 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

If "vhub,string-descriptor" device tree property is defined, the driver
will load string descriptors from device tree; otherwise, the default
string descriptors will be used.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2:
   - the patch is added into the series since v2.

 drivers/usb/gadget/udc/aspeed-vhub/hub.c | 58 +++++++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 35edf37553f0..421631d86a17 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -941,9 +941,61 @@ static int ast_vhub_str_alloc_add(struct ast_vhub *vhub,
 	return 0;
 }
 
+static const struct {
+	const char *name;
+	u8 id;
+} str_id_map[] = {
+	{"manufacturer",	AST_VHUB_STR_MANUF},
+	{"product",		AST_VHUB_STR_PRODUCT},
+	{"serial-number",	AST_VHUB_STR_SERIAL},
+	{},
+};
+
+static int ast_vhub_of_parse_str_desc(struct ast_vhub *vhub,
+				      const struct device_node *desc_np)
+{
+	u32 langid;
+	int ret = 0;
+	int i, offset;
+	const char *str;
+	struct device_node *child;
+	struct usb_string str_array[AST_VHUB_STR_INDEX_MAX];
+	struct usb_gadget_strings lang_str = {
+		.strings = (struct usb_string *)str_array,
+	};
+
+	for_each_child_of_node(desc_np, child) {
+		if (of_property_read_u32(child, "reg", &langid))
+			continue; /* no language identifier specified */
+
+		if (!usb_validate_langid(langid))
+			continue; /* invalid language identifier */
+
+		lang_str.language = langid;
+		for (i = offset = 0; str_id_map[i].name; i++) {
+			str = of_get_property(child, str_id_map[i].name, NULL);
+			if (str) {
+				str_array[offset].s = str;
+				str_array[offset].id = str_id_map[i].id;
+				offset++;
+			}
+		}
+		str_array[offset].id = 0;
+		str_array[offset].s = NULL;
+
+		ret = ast_vhub_str_alloc_add(vhub, &lang_str);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
 static int ast_vhub_init_desc(struct ast_vhub *vhub)
 {
 	int ret;
+	struct device_node *desc_np;
+	const struct device_node *vhub_np = vhub->pdev->dev.of_node;
 
 	/* Initialize vhub Device Descriptor. */
 	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
@@ -960,7 +1012,11 @@ static int ast_vhub_init_desc(struct ast_vhub *vhub)
 
 	/* Initialize vhub String Descriptors. */
 	INIT_LIST_HEAD(&vhub->vhub_str_desc);
-	ret = ast_vhub_str_alloc_add(vhub, &ast_vhub_strings);
+	desc_np = of_get_child_by_name(vhub_np, "vhub-strings");
+	if (desc_np)
+		ret = ast_vhub_of_parse_str_desc(vhub, desc_np);
+	else
+		ret = ast_vhub_str_alloc_add(vhub, &ast_vhub_strings);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
