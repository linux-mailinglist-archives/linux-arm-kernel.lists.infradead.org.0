Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A681F7386
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 07:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEeecjZfL1UfNRx0W0qj7fm95CZ+GoQ1EL0MLUPi4xo=; b=jLApTDQguQlSB6
	11SMgbXSwiZsyLsp+IeYN8+TvFi5Naovi/PtnG00Cnwit8Hb5HDjIJlXQxPIpy7Y9wycmVXiIYwJS
	HSUdbyQGIH/hWH90oLgf5d6fSVWyM9uLxaWLcZXBhNES4sSvuFjrfb3lOq5Ar87RMKwMSeiG0gvQ1
	eAct5Qoprm2psk0OAnCMB7rlqCaBuzAXGhNlNAs36rs85uRNrqwZsyrDQ9Doq9Bi0teBdcLpI+1EA
	djl913e+m5sMCe17ov2RTkjscLh22NpTojc1RfjgdLvHfDp88ngKS8/OKKfdOhGDh/UNWiRnvG4rn
	NM5AeF8AJzskxfKttRAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjcJS-0006nY-FV; Fri, 12 Jun 2020 05:33:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjcJJ-0006lH-CG; Fri, 12 Jun 2020 05:33:02 +0000
X-UUID: eeb61f2007444f559b9eae272d2482d6-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bDIpgkDQG7YLT+F0rsdng9S3ADGmLirI0hK3z/BZOuY=; 
 b=kNYQIaTxVSeR2OoLWSPVuYo5ny3mIuwEwPFcqRNW1L6Cme2nqtm44PF8niJRfA/vZJsHqos5PzR8Bde6+6hjDU1rMQFJj784KxD92LC2v7llcZQMTw4jhQvxxkbmVwp+ilox0FbKzAfNrTr3DEyRAevgvYytmAykm7XDnnJdUPQ=;
X-UUID: eeb61f2007444f559b9eae272d2482d6-20200611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1353793439; Thu, 11 Jun 2020 21:32:58 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 22:32:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 13:32:51 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 12 Jun 2020 13:32:46 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 Jim Lin <jilin@nvidia.com>, Siqi Lin <siqilin@google.com>
Subject: [PATCH] usb: replace hardcoded maximum usb string length by definition
Date: Fri, 12 Jun 2020 13:32:47 +0800
Message-ID: <1591939967-29943-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <y>
References: <y>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_223301_420905_B28B276A 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Replace hardcoded maximum usb string length (126 bytes) by definition
"MAX_USB_STRING_LEN".

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/usb/gadget/composite.c |    4 ++--
 drivers/usb/gadget/configfs.c  |    3 ++-
 drivers/usb/gadget/usbstring.c |    5 +++--
 include/linux/usb.h            |    2 ++
 4 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index cb4950c..d0de016 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1041,7 +1041,7 @@ static void collect_langs(struct usb_gadget_strings **sp, __le16 *buf)
 	while (*sp) {
 		s = *sp;
 		language = cpu_to_le16(s->language);
-		for (tmp = buf; *tmp && tmp < &buf[126]; tmp++) {
+		for (tmp = buf; *tmp && tmp < &buf[MAX_USB_STRING_LEN]; tmp++) {
 			if (*tmp == language)
 				goto repeat;
 		}
@@ -1116,7 +1116,7 @@ static int get_string(struct usb_composite_dev *cdev,
 			collect_langs(sp, s->wData);
 		}
 
-		for (len = 0; len <= 126 && s->wData[len]; len++)
+		for (len = 0; len <= MAX_USB_STRING_LEN && s->wData[len]; len++)
 			continue;
 		if (!len)
 			return -EINVAL;
diff --git a/drivers/usb/gadget/configfs.c b/drivers/usb/gadget/configfs.c
index 32b637e..c9d61ac 100644
--- a/drivers/usb/gadget/configfs.c
+++ b/drivers/usb/gadget/configfs.c
@@ -4,6 +4,7 @@
 #include <linux/slab.h>
 #include <linux/device.h>
 #include <linux/nls.h>
+#include <linux/usb.h>
 #include <linux/usb/composite.h>
 #include <linux/usb/gadget_configfs.h>
 #include "configfs.h"
@@ -115,7 +116,7 @@ static int usb_string_copy(const char *s, char **s_copy)
 	char *str;
 	char *copy = *s_copy;
 	ret = strlen(s);
-	if (ret > 126)
+	if (ret > MAX_USB_STRING_LEN)
 		return -EOVERFLOW;
 
 	str = kstrdup(s, GFP_KERNEL);
diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
index 7c24d1c..c125d59 100644
--- a/drivers/usb/gadget/usbstring.c
+++ b/drivers/usb/gadget/usbstring.c
@@ -11,6 +11,7 @@
 #include <linux/device.h>
 #include <linux/nls.h>
 
+#include <linux/usb.h>
 #include <linux/usb/ch9.h>
 #include <linux/usb/gadget.h>
 
@@ -55,9 +56,9 @@
 		return -EINVAL;
 
 	/* string descriptors have length, tag, then UTF16-LE text */
-	len = min ((size_t) 126, strlen (s->s));
+	len = min((size_t)MAX_USB_STRING_LEN, strlen(s->s));
 	len = utf8s_to_utf16s(s->s, len, UTF16_LITTLE_ENDIAN,
-			(wchar_t *) &buf[2], 126);
+			(wchar_t *) &buf[2], MAX_USB_STRING_LEN);
 	if (len < 0)
 		return -EINVAL;
 	buf [0] = (len + 1) * 2;
diff --git a/include/linux/usb.h b/include/linux/usb.h
index 9f3c721..df4a9cb 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1815,6 +1815,8 @@ static inline int usb_get_ptm_status(struct usb_device *dev, void *data)
 		0, data);
 }
 
+/* USB String descriptors can contain at most 126 characters. */
+#define MAX_USB_STRING_LEN	126
 extern int usb_string(struct usb_device *dev, int index,
 	char *buf, size_t size);
 
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
