Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C011F4DF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 08:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWmmh1XiKYErHd0DOS9TIH9GJHHgU+hfr8MKEXd/G/8=; b=mBoNFtWEoIZR2H
	qUzI3COQmN20WEh8K4YA6L89mEherE6TptwbakRgJJCHarImDcgRiSE47taf+BeX74USzihuvHgWN
	C6YL24CUEYaUsypT/JNAA8xzumboBs/+58h62BqMHuA68FQhX/sMBsDC02lR8e7OCgUi8aEyGibII
	9tBP6ekFC1VnfEKPE9lJyF/xWOmrNm3ZuhpvIEQjJoFqvANvbMo1e/vSjaa6Wb/s2rk35C3Nt976D
	cLrcLizAgRNTUpZXyfDSPzdAJiArB+3Zmq0uHczUVaiaq8NYz7bnQPbA6YmEq7py/gCAT0lxT+WYj
	OEtd1QBcALM6GTSDJmIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiu1R-000357-Ds; Wed, 10 Jun 2020 06:15:37 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiu1J-00034X-W0; Wed, 10 Jun 2020 06:15:31 +0000
X-UUID: a37832d9274740ba8227c34d907b9767-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=81Y2fVdBy50AQH7tnAGVr/bbzD+zlTSuDvNwyWyE3pk=; 
 b=Uqhbu+tJhdgfEJnGWZCyu9qloDy7XxwiYGvJMaUJ9vvFN8mIdfop007UBV03F9ZFbVoHRrB+FM/z2706FauRAlT96n/O7l53FDikFRk707GgdWu07NlFGnrtqYktOUQZEEpgu1pCbvTY81a6Rd23HXHexSS7YtVgGVYRUSo29FE=;
X-UUID: a37832d9274740ba8227c34d907b9767-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 355590611; Tue, 09 Jun 2020 22:15:09 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 23:15:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 14:15:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 10 Jun 2020 14:15:23 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "Alan Stern" <stern@rowland.harvard.edu>, Bart Van Assche
 <bvanassche@acm.org>, "EJ Hsu" <ejh@nvidia.com>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Peter Chen <peter.chen@nxp.com>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v2] usb/gadget/function: introduce Built-in CDROM support
Date: Wed, 10 Jun 2020 14:15:18 +0800
Message-ID: <1591769718-3287-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1591756349-17865-1-git-send-email-macpaul.lin@mediatek.com>
References: <1591756349-17865-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_231530_037209_414DF663 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Macpaul Lin <macpaul.lin@gmail.com>, Justin Hsieh <justinhsieh@google.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Hakieyin Hsieh <hakieyin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce Built-In CDROM (BICR) support.
This feature depends on USB_CONFIGFS_MASS_STORAGE option.

1. Some settings and new function is introduced for BICR.
2. Some work around for adapting Android settings is introduced as well.

Signed-off-by: Justin Hsieh <justinhsieh@google.com>
Signed-off-by: Hakieyin Hsieh <hakieyin@gmail.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
Changes for v2:
  - Thanks for Peter's review.
    - Fix typo in commit message.
    - use variable common->bicr instead of IS_ENABLED().
    - Fix #ifdef CONFIG_USB_CONFIGFS_BICR.

 drivers/usb/gadget/Kconfig                   | 16 +++++++
 drivers/usb/gadget/function/f_mass_storage.c | 49 +++++++++++++++++++-
 drivers/usb/gadget/function/f_mass_storage.h |  5 +-
 drivers/usb/gadget/function/storage_common.c | 23 +++++++++
 4 files changed, 90 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 4dc4d48fe6a6..686ba01bedb5 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -188,6 +188,9 @@ config USB_F_RNDIS
 config USB_F_MASS_STORAGE
 	tristate
 
+config USB_F_BICR
+	tristate
+
 config USB_F_FS
 	tristate
 
@@ -357,6 +360,19 @@ config USB_CONFIGFS_MASS_STORAGE
 	  device (in much the same way as the "loop" device driver),
 	  specified as a module parameter or sysfs option.
 
+config USB_CONFIGFS_BICR
+	bool "Built-In CDROM emulation"
+	depends on USB_CONFIGFS
+	depends on BLOCK
+	depends on USB_CONFIGFS_MASS_STORAGE
+	select USB_F_BICR
+	help
+	  The Build-In CDROM Gadget acts as a CDROM emulation disk drive.
+	  It is based on kernel option "USB_CONFIGFS_MASS_STORAGE".
+	  As its storage repository it can use a regular file or a block
+	  device (in much the same way as the "loop" device driver),
+	  specified as a module parameter or sysfs option.
+
 config USB_CONFIGFS_F_LB_SS
 	bool "Loopback and sourcesink function (for testing)"
 	depends on USB_CONFIGFS
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 33c2264a0e35..9de1cd465635 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -315,6 +315,9 @@ struct fsg_common {
 	void			*private_data;
 
 	char inquiry_string[INQUIRY_STRING_LEN];
+
+	/* For build-in CDROM */
+	u8 bicr;
 };
 
 struct fsg_dev {
@@ -369,6 +372,10 @@ static void set_bulk_out_req_length(struct fsg_common *common,
 	if (rem > 0)
 		length += common->bulk_out_maxpacket - rem;
 	bh->outreq->length = length;
+
+	/* some USB 2.0 hardware requires this setting */
+	if (common->bicr)
+		bh->outreq->short_not_ok = 1;
 }
 
 
@@ -527,7 +534,16 @@ static int fsg_setup(struct usb_function *f,
 				w_length != 1)
 			return -EDOM;
 		VDBG(fsg, "get max LUN\n");
-		*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
+		if (IS_ENABLED(USB_CONFIGFS_BICR) && fsg->common->bicr) {
+			/*
+			 * When Built-In CDROM is enabled,
+			 * we share only one LUN.
+			 */
+			*(u8 *)req->buf = 0;
+		} else {
+			*(u8 *)req->buf = _fsg_common_get_max_lun(fsg->common);
+		}
+		INFO(fsg, "get max LUN = %d\n", *(u8 *)req->buf);
 
 		/* Respond with data/status */
 		req->length = min((u16)1, w_length);
@@ -1329,7 +1345,7 @@ static int do_start_stop(struct fsg_common *common)
 	}
 
 	/* Are we allowed to unload the media? */
-	if (curlun->prevent_medium_removal) {
+	if (!curlun->nofua && curlun->prevent_medium_removal) {
 		LDBG(curlun, "unload attempt prevented\n");
 		curlun->sense_data = SS_MEDIUM_REMOVAL_PREVENTED;
 		return -EINVAL;
@@ -2692,6 +2708,7 @@ int fsg_common_set_cdev(struct fsg_common *common,
 	common->ep0 = cdev->gadget->ep0;
 	common->ep0req = cdev->req;
 	common->cdev = cdev;
+	common->bicr = 0;
 
 	us = usb_gstrings_attach(cdev, fsg_strings_array,
 				 ARRAY_SIZE(fsg_strings));
@@ -2895,6 +2912,33 @@ static void fsg_common_release(struct fsg_common *common)
 		kfree(common);
 }
 
+#ifdef CONFIG_USB_CONFIGFS_BICR
+ssize_t fsg_bicr_show(struct fsg_common *common, char *buf)
+{
+	return sprintf(buf, "%d\n", common->bicr);
+}
+
+ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size)
+{
+	int ret;
+
+	ret = kstrtou8(buf, 10, &common->bicr);
+	if (ret)
+		return -EINVAL;
+
+	/* Set Lun[0] is a CDROM when enable bicr.*/
+	if (!strcmp(buf, "1"))
+		common->luns[0]->cdrom = 1;
+	else {
+		common->luns[0]->cdrom = 0;
+		common->luns[0]->blkbits = 0;
+		common->luns[0]->blksize = 0;
+		common->luns[0]->num_sectors = 0;
+	}
+
+	return size;
+}
+#endif
 
 /*-------------------------------------------------------------------------*/
 
@@ -3463,6 +3507,7 @@ void fsg_config_from_params(struct fsg_config *cfg,
 		lun->ro = !!params->ro[i];
 		lun->cdrom = !!params->cdrom[i];
 		lun->removable = !!params->removable[i];
+		lun->nofua = !!params->nofua[i];
 		lun->filename =
 			params->file_count > i && params->file[i][0]
 			? params->file[i]
diff --git a/drivers/usb/gadget/function/f_mass_storage.h b/drivers/usb/gadget/function/f_mass_storage.h
index 3b8c4ce2a40a..7097e2ea5cc9 100644
--- a/drivers/usb/gadget/function/f_mass_storage.h
+++ b/drivers/usb/gadget/function/f_mass_storage.h
@@ -140,5 +140,8 @@ void fsg_common_set_inquiry_string(struct fsg_common *common, const char *vn,
 void fsg_config_from_params(struct fsg_config *cfg,
 			    const struct fsg_module_parameters *params,
 			    unsigned int fsg_num_buffers);
-
+#ifdef CONFIG_USB_CONFIGFS_BICR
+ssize_t fsg_bicr_show(struct fsg_common *common, char *buf);
+ssize_t fsg_bicr_store(struct fsg_common *common, const char *buf, size_t size);
+#endif
 #endif /* USB_F_MASS_STORAGE_H */
diff --git a/drivers/usb/gadget/function/storage_common.c b/drivers/usb/gadget/function/storage_common.c
index f7e6c42558eb..8fe96eeddf35 100644
--- a/drivers/usb/gadget/function/storage_common.c
+++ b/drivers/usb/gadget/function/storage_common.c
@@ -441,6 +441,29 @@ ssize_t fsg_store_file(struct fsg_lun *curlun, struct rw_semaphore *filesem,
 		return -EBUSY;				/* "Door is locked" */
 	}
 
+	pr_notice("%s file=%s, count=%d, curlun->cdrom=%d\n",
+			__func__, buf, (int)count, curlun->cdrom);
+
+	/*
+	 * WORKAROUND for Android:
+	 *   VOLD would clean the file path after switching to bicr.
+	 *   So when the lun is being a CD-ROM a.k.a. BICR.
+	 *   Don't clean the file path to empty.
+	 */
+	if (curlun->cdrom == 1 && count == 1)
+		return count;
+
+	/*
+	 * WORKAROUND: Should be closed the fsg lun for virtual cd-rom,
+	 * when switch to other usb functions.
+	 * Use the special keyword "off", because the init can
+	 * not parse the char '\n' in rc file and write into the sysfs.
+	 */
+	if (count == 3 &&
+			buf[0] == 'o' && buf[1] == 'f' && buf[2] == 'f' &&
+			fsg_lun_is_open(curlun))
+		((char *) buf)[0] = 0;
+
 	/* Remove a trailing newline */
 	if (count > 0 && buf[count-1] == '\n')
 		((char *) buf)[count-1] = 0;		/* Ugh! */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
