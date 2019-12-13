Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15811E6D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 16:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MET72S+fOrXz+opY+ixBGYXl/sFq78qrI/cd2q/pM3s=; b=HV6wYBgSBhFuwF
	NkRUDMpVPZWg5K8/GjYZSJRJHzlMb8/dbi/O86iaS9Oxr0e8BTwj5oJ91PMs/vqdDoeUhLwzEbb87
	f+omQSW0S46EnvmnE152+W5B/vj7QxLpuDc6Man3so0eKN9YG4XY7yqdOk4pKID+nHMj54uEs1IAO
	nt+42yXsouvvoEktNaHt+I2+sKGVgmz9f5idBThyvygRLRZhFp3x8MpZah1xdybIpoBpuiQHpX5Sk
	4bE4JhYglzMiKsb/ytLjQyWuU5KN4tBaaAIMXOqLOOLgjPQ6Z229FYKUE5IRSkRWVubmOhhsIkwAk
	tp8Vwk3MY8pqibWnfO7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifn2R-0004J6-I9; Fri, 13 Dec 2019 15:39:31 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifn2I-0004Hv-1W
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 15:39:25 +0000
Received: by mail-yw1-xc42.google.com with SMTP id h126so1414520ywc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 07:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=66dDxa4JQshR1dxJN1HCdA7FRTIVML1Rl2L0x4gBwBs=;
 b=IpwWQTBzg9+efmz6zpdHlpW7WO6Qb2rzpNyjAvojL6elJWNgpVqmZyQ+VOA2jRdCEh
 jGyplAdiIPO/JftjYxUO7sovgTvepNOw0lWV1MT9dznUOuusPMO+j+Z13oroUaaD5bil
 1piYhqNdzEdfXdqhnE+7U5kCEFqfJ8zhu7wceeOYtYpgS0QKCQ+RML/u0oe6npp2nIWC
 Cc9nOT5KsyorY2X5unKnHKTIQ8r9XxZZz4ec1HolS6nH5SjuT5MeeuFP3YXKRzxK52KC
 2LdZ8O6EEN/aQaZn8ExiHvWWt6aJrAMgVOeJJTI1AxGZbbtQSCpn6u9Ib/Kn3pQul97X
 ebAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=66dDxa4JQshR1dxJN1HCdA7FRTIVML1Rl2L0x4gBwBs=;
 b=RLNxUh1DxHC5wV7CvEKofDjFWehzY5lIspk+OXUEKysSHOG9Q+9ct+mx5tcdT4AsQh
 /V9vBkq3Y+kgKYlUeOaH4Tn6IdrKQgEmXJK5pOMe4mH69jvKpT3KFSwTJ69D4HSjRtVL
 fExgIQ3bpTJkO5xxWK2RhPvRIY3wgcqg56Qg/z07GfcALLmWY3A34+S1PD+p7qtUni9A
 sIL/SvnElKQ6I9h8MEj6vQRFhYCBqOmOOv9zzFWJ49iLWVG+a7PwnSL8K9Bk0gyhU1tG
 TqmZr/Z7dsi28hSHxZcDXUEgGydcWpmt1cfxMOfAJBz6lXuf+Ul7L43cjVaBIwbObE7x
 0EUQ==
X-Gm-Message-State: APjAAAXR4lV0BgAfWYrKVlRLp0wmrNpL8Mvpf0LM3bwoV2C7Ikvv3jzW
 z7HtStRItykKjrqU8slROnNwadQlkqg=
X-Google-Smtp-Source: APXvYqzO7cb72G93h6pc42x43nIgubOr0x06bTe3Kej8fCH2doIKLJGdJ8weE8MbHkaf+/uMF//KeA==
X-Received: by 2002:a25:b007:: with SMTP id q7mr7626962ybf.193.1576251560130; 
 Fri, 13 Dec 2019 07:39:20 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i17sm4300474ywg.66.2019.12.13.07.39.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 07:39:19 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/3] crypto: caam: Add support for i.MX8M Mini
Date: Fri, 13 Dec 2019 09:39:08 -0600
Message-Id: <20191213153910.11235-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_073923_747364_23D71DD3 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 horia.geanta@nxp.com, devicetree@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
the driver is restricting the check to just the i.MX8MQ.

This patch expands the check for either i.MX8MQ or i.MX8MM.

Signed-off-by: Adam Ford <aford173@gmail.com>

---
V2:  Expand the check that forces the setting on imx8mq to also be true for imx8mm
     Explictly state imx8mm compatiblity instead of making it generic to all imx8m*
      this is mostly due to lack of other hardware to test

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index d7c3c3805693..c01dda692ecc 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -102,7 +102,8 @@ static inline int run_descriptor_deco0(struct device *ctrldev, u32 *desc,
 	     * Apparently on i.MX8MQ it doesn't matter if virt_en == 1
 	     * and the following steps should be performed regardless
 	     */
-	    of_machine_is_compatible("fsl,imx8mq")) {
+	    of_machine_is_compatible("fsl,imx8mq") ||
+	    of_machine_is_compatible("fsl,imx8mm")) {
 		clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);
 
 		while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
@@ -509,6 +510,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
 	{ .soc_id = "i.MX6*",  .data = &caam_imx6_data },
 	{ .soc_id = "i.MX7*",  .data = &caam_imx7_data },
 	{ .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
+	{ .soc_id = "i.MX8MM", .data = &caam_imx7_data },
 	{ .family = "Freescale i.MX" },
 	{ /* sentinel */ }
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
