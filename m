Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6E01328C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CUKis94Z4VwUcU5WC/Z9XGEsPov03XFl4H9Ol0rUhs=; b=PFwH3sq9O0pVLY
	Mt37lex7WkqeEqNb0hScHpcH0lDozDxx9uyeFXxwc/goxvavstQX6w0XbtwLvmKqjqJEwlshxrs6X
	OZn6ZXK4bsDBqPNNeGy6z6AbhcIGLV3gv1B+kT/AWZ81vOFgTBdPPgrwWfOFWjgNS3J2QdCTRPaiG
	diSbBdiVxGRjkr72g67JKg1x8BSK/BlOaVfuyM9tARSChOAjUtS10YhxBkXyIP2G51hKR694TmtVn
	qFti6dbCBMvMbHlN7455a7Tn/Fq//S0G0gYzEaBFnw0CysBEQFCOJxaQ/FLRqBz9yZ/B5qMBlJLrc
	gs++1fvboTNRRDHKwIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbRb-0007oc-5p; Fri, 03 May 2019 16:53:55 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRT-0007nf-KT
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:49 +0000
Received: by mail-ed1-x544.google.com with SMTP id b8so6731032edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a6vJY+AhwqgrhoRy0OW/Eo7CkRwV/mSGUibAYlqkZ+A=;
 b=RsaKlqlKUpyB7O4GF2V/3l97KYu7v72h82kAH4IptCguxeVTXCwhBlqaIZugcWXyY+
 dXXEoIo3C0/WUaK0JvbH12JcVCGrlVoc9539pNW4OUuxiI00xkG1Er+GU6N3HWD3acew
 SAv9qK6Qv/vPFyP8JtEGA0GpbTKhz6LKCAFMUDqDCkhynPsbjPyN2wEvfLIE4BWLUIrN
 dd3EBUzOQgPnCWEAuOA/Y1pApp5WpMgjFi6jiBMEeZJanjQ7Ub8of5sbaXQ4P3feWpeE
 q1dKSlJiJvCn5r5q3zFxOChwFtIzszQTKchBoS0rRuMvnv8H/Vr/cIG2iCTM8rGGdl8Q
 AR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a6vJY+AhwqgrhoRy0OW/Eo7CkRwV/mSGUibAYlqkZ+A=;
 b=b3tbeDwbykOKiWyQMiiu3bgdhRcc5d+3ddECT4uR5o07ecTOHJK/vaauWuWpKuRTXk
 9/rN+aUjgB3LQ42h/LG8BSY1BaPmrlT/Da4LeA5/NDcErYOU7dTqrnOZ/Z+SFCqHeTS6
 Zw1kJXrzTCw016KRQcF+NZBEaMK8ENDGHE3PHFf/vyljP02fIgTBa4NuHcwUeji18koa
 hgtVdSZrJygRHdxvwxnxjke6UzhirF2wNxwZTnWOyEo+TE9n5tgOxf9+B59SpSkp3lRE
 Mjbu9RT4ZxFnJmppMsMl0SYDi7T7ibcotztErsmYLjvwYRO11cpRaQfO5Z9TsD05rmPE
 DyJg==
X-Gm-Message-State: APjAAAVymDonf6oc5DaqDxj/ye7dgOTxGyuAdm12SBhlZnn+4DTG3D/N
 kPca0VKbk1uRYx42nLrl33IajCuUXRM=
X-Google-Smtp-Source: APXvYqwEkwh/tG36hhpCXh4Wto5Kt7IJFz5ingegOp008Tzt2WHGUNZmVpNSz9irGvTywbQNPQ61Kw==
X-Received: by 2002:a17:906:2583:: with SMTP id
 m3mr7222447ejb.74.1556902426396; 
 Fri, 03 May 2019 09:53:46 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:45 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 1/5] nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to
 eight bits
Date: Fri,  3 May 2019 17:53:38 +0100
Message-Id: <20190503165342.30139-2-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095348_008941_4D10BAC5 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX6 defines OCOTP_CTRLn:ADDR as seven bit address-field with a one bit
RSVD0 field, i.MX7 defines OCOTP_CTRLn:ADDR as a four bit address-field
with a four bit RSVD0 field.

i.MX8 defines the OCOTP_CTRLn:ADDR bit-field as a full range eight bits.

i.MX6 and i.MX7 should return zero for their respective RSVD0 bits and
ignore a write-back of zero where i.MX8 will make use of the full range.

This patch expands the bit-field definition for all users to eight bits,
which is safe due to RSVD0 being a no-op for the i.MX6 and i.MX7.

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 4cf7b61e4bf5..6600c4ddeb51 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -45,7 +45,7 @@
 #define IMX_OCOTP_ADDR_DATA2		0x0040
 #define IMX_OCOTP_ADDR_DATA3		0x0050
 
-#define IMX_OCOTP_BM_CTRL_ADDR		0x0000007F
+#define IMX_OCOTP_BM_CTRL_ADDR		0x000000FF
 #define IMX_OCOTP_BM_CTRL_BUSY		0x00000100
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
