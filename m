Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94131FEE6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZ+K1rdfMEf0eAKq+HDK90NZK9lmOxDAwo4pwcAQvjc=; b=tYvcu9z+6US3rB
	cUfMADNiJMUjVHyzYQm8xzRetIBkEIFOsPD7HDZxcHYsTFg5fx2Szrd2BowtBHLwgU2bH3+1hGgTV
	G1bWgbJX9gxUUIkvX+PePiD9ZNck0Xp8CYqqvsT7fpnpTf4ee6rZcdxr2bSf2rvLFa1Zr1gX8Ucdb
	ZF+cAE1/yYNOY9t9oyzDU4GRpkJX0/j79HgC1YYK/AYgMc+PxiymY/KWZsFlcE3f3qGMuX8ggpEcL
	5bvqs7w8ViGr5tYcYk2jzIl02zYMCp8mcVoGP9aCznM2gXWwrnj9b2PRgs1GW3ZSGRCUYppAa+yC7
	lkkJTBnIRjmZCELwAUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlqe3-0006D3-7X; Thu, 18 Jun 2020 09:15:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqdp-0006Bi-Di; Thu, 18 Jun 2020 09:15:27 +0000
X-UUID: 1b16b2177ec54973b3d323cb56490067-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=4XnqJ20IExga/K0IhPzstjZ7zg9Stdygd6pci2+yWAc=; 
 b=CVo1LLaj/bLv/34Qw0lYsCGE0OrALjDzYWCBKeZGuV+xQ3RmI6L5eX5nOpqEgjwIT60kNz8sSV28Blwn0dABSfY1j1Xd3CGF8R13DcZHX70JHXxH4cZQx9KDqjPb7Zst5NkAxNaojoqwBS2YA8JWMZCM6E+2OhnNNzZK+QZFAVQ=;
X-UUID: 1b16b2177ec54973b3d323cb56490067-20200618
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 470742135; Thu, 18 Jun 2020 01:14:10 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 02:14:11 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 17:14:10 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 17:14:09 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Alan Stern <stern@rowland.harvard.edu>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, <linux-usb@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, Jim Lin <jilin@nvidia.com>, Siqi Lin
 <siqilin@google.com>, Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Macpaul Lin <macpaul.lin@gmail.com>
Subject: [PATCH v3] usb: replace hardcode maximum usb string length by
 definition
Date: Thu, 18 Jun 2020 17:13:38 +0800
Message-ID: <1592471618-29428-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
References: <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_021525_472553_F392FA9B 
X-CRM114-Status: GOOD (  11.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Macpaul Lin <macpaul.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace hardcode maximum usb string length (126 bytes) by definition
"MAX_USB_STRING_LEN".

Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
Acked-by: Alan Stern <stern@rowland.harvard.edu>
---
Changes for v2:
  - Add definition "MAX_USB_STRING_LEN" in ch9.h instead of in usb.h.
    Thanks for Alan's suggestion.
Changes for v3:
  - Rebase to 5.8-rc1 and resolve conflict.

 drivers/usb/gadget/composite.c |    4 ++--
 drivers/usb/gadget/configfs.c  |    2 +-
 drivers/usb/gadget/usbstring.c |    4 ++--
 include/uapi/linux/usb/ch9.h   |    3 +++
 4 files changed, 8 insertions(+), 5 deletions(-)

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
index 32b637e..70dd4ba 100644
--- a/drivers/usb/gadget/configfs.c
+++ b/drivers/usb/gadget/configfs.c
@@ -115,7 +115,7 @@ static int usb_string_copy(const char *s, char **s_copy)
 	char *str;
 	char *copy = *s_copy;
 	ret = strlen(s);
-	if (ret > 126)
+	if (ret > MAX_USB_STRING_LEN)
 		return -EOVERFLOW;
 
 	str = kstrdup(s, GFP_KERNEL);
diff --git a/drivers/usb/gadget/usbstring.c b/drivers/usb/gadget/usbstring.c
index 7c24d1c..8a8d647 100644
--- a/drivers/usb/gadget/usbstring.c
+++ b/drivers/usb/gadget/usbstring.c
@@ -55,9 +55,9 @@
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
diff --git a/include/uapi/linux/usb/ch9.h b/include/uapi/linux/usb/ch9.h
index 2b623f3..cc02d05 100644
--- a/include/uapi/linux/usb/ch9.h
+++ b/include/uapi/linux/usb/ch9.h
@@ -364,6 +364,9 @@ struct usb_config_descriptor {
 
 /*-------------------------------------------------------------------------*/
 
+/* USB String descriptors can contain at most 126 characters. */
+#define MAX_USB_STRING_LEN	126
+
 /* USB_DT_STRING: String descriptor */
 struct usb_string_descriptor {
 	__u8  bLength;
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
