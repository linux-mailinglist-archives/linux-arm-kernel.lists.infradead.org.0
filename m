Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB784D83F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+G3PQMlTWp2tA2a0U8Ux3LJuimDPAdGw3mmWLUV/Zm8=; b=gHcSP256Aum0YX5UziPxfBmbKZ
	bKuKtsOXY46zolQjXkXRb3aL1ZdcmTsHjiZp9shs0QkHPGOj6hjkDfTOwv/IyUk6yFNKpvufv5YhW
	Xg0oQmOnNV7zGWpuZuRz8I4+aqNWxZTfUtq26dKZDpjvW3otF62DEL3YangHclZ0sWAJ+SAsMEzbk
	3XjkRd6d+txCcIMi6fPG7A9ADVyJUQkBgEJb8NHx2hf8L+S2dAlHoLoS1+upUJ7c5OJ6c008wuwI8
	HTwpVtQSZ0aqDb5JHULmbP80YnB/FdeoJDRKXXRiAPKr/ED8nJ7VIuvbuEuMyaZTPbHfmiP4ZIZqN
	4oo0D7LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVZz-0003cW-9B; Tue, 15 Oct 2019 22:46:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVZi-0003Zu-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:45:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id j11so10283216plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NszovcrmeizweFufzZjrkW8f6hhK6QnYuVsht4WHchE=;
 b=MiDaGBSUt8KaxANsMCLt/lqC4wjaFlMnpMkUl7eV8BUrp00yAkHdwbpj1MErqfLbtd
 IGrR5a5ucjrZ0ZgOFLgMqVDre1osREK130TeFuIfWhqNhOqezR7cbbCrsvot70LZah4f
 ekQWx4vDVJkOHSiuYF12fYV/JxInqNfT6FcCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NszovcrmeizweFufzZjrkW8f6hhK6QnYuVsht4WHchE=;
 b=OipoDMR2UpM0v4xrl0bjVLIA9WIh8kkwfrJjfmvPLcXShZLU7AX3Dz9IPzPlj7shtc
 1h8S56q0uHXgZzMrKqs4vcB8lJtv4YQqq9HGsqD1WPwOpl4i3xVqcFBLBlAynSpNvNew
 nl8mvpiC7chtnWymWPMV2ZleZnedG7RJzGvYrjsHUQJ7Y8ugqsgu87y8zaaaxMMJ/aMo
 HQV9W5prAta76E2rjoU8+y1qGj6gnUXy4MAhrIjcTMJabYkZH32f5Dip8CiP9IiqllN7
 sVfwn6lJruV068CAzZBGaiQ69ay9ktD1ii3xX10ZXIG0aA3UCFBB2epDQd9Lpc6V/DN4
 0JDQ==
X-Gm-Message-State: APjAAAUxptXHz70V7oQNXQ5Ba4iVAhTBD8aXecT9ZouF7FnDzUvT+vxU
 5XcV6Dwg6ev/iVcwROp3J4+umQ==
X-Google-Smtp-Source: APXvYqziY7vPjk2T010iyMGZDzq6jJCb4rzcDFVf3OVxNv8oL/5/7Ll+wdzceBfFHS9rEv4TmwI94g==
X-Received: by 2002:a17:902:d204:: with SMTP id
 t4mr35234943ply.253.1571179553270; 
 Tue, 15 Oct 2019 15:45:53 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:45:52 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 1/8] memory: brcmstb: dpfe: rename struct private_data
Date: Tue, 15 Oct 2019 15:45:06 -0700
Message-Id: <20191015224513.16969-2-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154554_602598_32CF4952 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <mmayer@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To avoid potential (future) conflicts with other data structures we
rename "struct private_data" to "struct brcmstb_dpfe_priv".

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 6827ed484750..0c4c01d2bf48 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -180,7 +180,7 @@ struct dpfe_api {
 };
 
 /* Things we need for as long as we are active. */
-struct private_data {
+struct brcmstb_dpfe_priv {
 	void __iomem *regs;
 	void __iomem *dmem;
 	void __iomem *imem;
@@ -343,7 +343,7 @@ static unsigned int get_msg_chksum(const u32 msg[], unsigned int max)
 	return sum;
 }
 
-static void __iomem *get_msg_ptr(struct private_data *priv, u32 response,
+static void __iomem *get_msg_ptr(struct brcmstb_dpfe_priv *priv, u32 response,
 				 char *buf, ssize_t *size)
 {
 	unsigned int msg_type;
@@ -382,7 +382,7 @@ static void __iomem *get_msg_ptr(struct private_data *priv, u32 response,
 	return ptr;
 }
 
-static void __finalize_command(struct private_data *priv)
+static void __finalize_command(struct brcmstb_dpfe_priv *priv)
 {
 	unsigned int release_mbox;
 
@@ -395,7 +395,7 @@ static void __finalize_command(struct private_data *priv)
 	writel_relaxed(0, priv->regs + release_mbox);
 }
 
-static int __send_command(struct private_data *priv, unsigned int cmd,
+static int __send_command(struct brcmstb_dpfe_priv *priv, unsigned int cmd,
 			  u32 result[])
 {
 	const u32 *msg = priv->dpfe_api->command[cmd];
@@ -517,7 +517,7 @@ static int __verify_firmware(struct init_data *init,
 
 /* Verify checksum by reading back the firmware from co-processor RAM. */
 static int __verify_fw_checksum(struct init_data *init,
-				struct private_data *priv,
+				struct brcmstb_dpfe_priv *priv,
 				const struct dpfe_firmware_header *header,
 				u32 checksum)
 {
@@ -578,7 +578,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 	unsigned int dmem_size, imem_size;
 	struct device *dev = &pdev->dev;
 	bool is_big_endian = false;
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	const struct firmware *fw;
 	const u32 *dmem, *imem;
 	const void *fw_blob;
@@ -647,7 +647,7 @@ static int brcmstb_dpfe_download_firmware(struct platform_device *pdev,
 }
 
 static ssize_t generic_show(unsigned int command, u32 response[],
-			    struct private_data *priv, char *buf)
+			    struct brcmstb_dpfe_priv *priv, char *buf)
 {
 	int ret;
 
@@ -665,7 +665,7 @@ static ssize_t show_info(struct device *dev, struct device_attribute *devattr,
 			 char *buf)
 {
 	u32 response[MSG_FIELD_MAX];
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	unsigned int info;
 	ssize_t ret;
 
@@ -688,7 +688,7 @@ static ssize_t show_refresh(struct device *dev,
 {
 	u32 response[MSG_FIELD_MAX];
 	void __iomem *info;
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	u8 refresh, sr_abort, ppre, thermal_offs, tuf;
 	u32 mr4;
 	ssize_t ret;
@@ -721,7 +721,7 @@ static ssize_t store_refresh(struct device *dev, struct device_attribute *attr,
 			  const char *buf, size_t count)
 {
 	u32 response[MSG_FIELD_MAX];
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	void __iomem *info;
 	unsigned long val;
 	int ret;
@@ -747,7 +747,7 @@ static ssize_t show_vendor(struct device *dev, struct device_attribute *devattr,
 			   char *buf)
 {
 	u32 response[MSG_FIELD_MAX];
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	void __iomem *info;
 	ssize_t ret;
 	u32 mr5, mr6, mr7, mr8, err;
@@ -778,7 +778,7 @@ static ssize_t show_dram(struct device *dev, struct device_attribute *devattr,
 			 char *buf)
 {
 	u32 response[MSG_FIELD_MAX];
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	ssize_t ret;
 	u32 mr4, mr5, mr6, mr7, mr8, err;
 
@@ -808,7 +808,7 @@ static int brcmstb_dpfe_resume(struct platform_device *pdev)
 static int brcmstb_dpfe_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct private_data *priv;
+	struct brcmstb_dpfe_priv *priv;
 	struct init_data init;
 	struct resource *res;
 	int ret;
@@ -867,7 +867,7 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 
 static int brcmstb_dpfe_remove(struct platform_device *pdev)
 {
-	struct private_data *priv = dev_get_drvdata(&pdev->dev);
+	struct brcmstb_dpfe_priv *priv = dev_get_drvdata(&pdev->dev);
 
 	sysfs_remove_groups(&pdev->dev.kobj, priv->dpfe_api->sysfs_attrs);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
