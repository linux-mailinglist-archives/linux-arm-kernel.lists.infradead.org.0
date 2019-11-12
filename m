Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585C0F8892
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kh91KPubho19DIaBOdwhHXyzDSzDfEN9M4apDDr9Nsg=; b=pGUwSidLbI8gsR
	Znu+7nLH8WiyNSldq0mRiA8T8sLVhLqJKMtIoNJicbGU9ciJ+2iQDqUZGlPDT1HuzCacPF8ZuaucK
	jBiC9/0V8uFBCSQ9jA5sCS815PA0aCEvkjIbpjv39Pr/TxJPufkknXKMidhDtcpEVzD3hI/gshmge
	r6PLRWMJmcK490Rp7ExpNNOEK7sUr+jrrM5ukGl9hCi4TDYbRdpURD+NsfckiGNTzmyYSVqBRFi+k
	CnXAHp6b3QmeyKaaYw6/rk5Lr+SpZSbYVc6Normw2SAMHMcNPcyd9yQu719PbD/En7HzREAFyd8d5
	NMzElQfzyydBir5mp2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPhI-0002wy-LO; Tue, 12 Nov 2019 06:30:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPfz-0000w6-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id w11so11132018pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dNvJ2cs4tAGXPExkj7A0Re52pBXDxSxw0BIjvNkjJu8=;
 b=F7OVifkjIrygr9D4R4XtO3tVFDVrpBonHzRqGyS2DVefX7FsMEa/jf8CMjIxiynXFB
 LYIfmNyzluotu/u6ostkZaTt6uPbqCvj1Xx8PrVWCmVuCsCjAnzvCz9M1L6jaiHdiFoT
 oJ0t9lPpK1cdAL68kofm0RehcQstgxKSsYY75CDIYV3u5SGhgH3ZYyDcI9guNl3SGiCv
 KJ9a3oxTci6V8jblG99MmTgQtYaIaiisdoOWuSrRdvQyfRxkpj85THXTDnqDxLnvmyzp
 M6t3Es3v9k0NsRHGcHc0k7QhVz/7lwLQFEwbXiL1bUwOKSK2rqpzVK4GmKwx34joI1s/
 Y2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=dNvJ2cs4tAGXPExkj7A0Re52pBXDxSxw0BIjvNkjJu8=;
 b=epuTo6K4NK2vkwxgyhkXlx7j4ebovri1NFih1nDHXzyIXyYibTkdUA8ScDRi3kVtsF
 LwBwio8f2Nt3qNZBRaCaVtp1BcOd1rDBpEZUyvEe7G9pwbomDSO9kwKN/bdCCr7liMDn
 1DYcg2nl3/2SluKGeABgPvFcMHtJpOnbZmMd+aS3mroTJ7ESvguGnNkq0+dySN+Q1r6q
 AtoOAAIbZg0apx6N6mnXSPFl+poJjcSz4ONuxrV7WcpfHHvqsV4HKLcJAAuRhcL6dtiq
 wDwH0ZTH3W/k2WRxgruZP/t1dJC8hKhzLEm+6cT3zEl8J8J37fL9cvxnbVcfP4v1g241
 D4qQ==
X-Gm-Message-State: APjAAAVeWEkEPCk+A4fgK6KjMQfhOLaNI9/k+dzJb11fSldz7eNPeQnz
 da2sZCQ93wh/WEbTtCCSW0M=
X-Google-Smtp-Source: APXvYqzqXFq5V6oZb0+sSrZU/+YjVel/HfInYAtocN5GTsK1ZEzVr8+r/pAY5LYYpaa1Ss7xWmUITw==
X-Received: by 2002:a63:e647:: with SMTP id p7mr14590379pgj.47.1573540158249; 
 Mon, 11 Nov 2019 22:29:18 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:17 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 4/5] ARM: configs: multi_v7: ASPEED network, gpio, FSI
Date: Tue, 12 Nov 2019 16:58:56 +1030
Message-Id: <20191112062857.32638-5-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222919_598173_14FB84A8 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable drivers used by the ASPEED SoCs so the multi v7 defconfig can run
on those boards.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/multi_v7_defconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 13ba53286901..124f50dc9cc7 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -244,6 +244,7 @@ CONFIG_BGMAC_BCMA=y
 CONFIG_SYSTEMPORT=m
 CONFIG_MACB=y
 CONFIG_NET_CALXEDA_XGMAC=y
+CONFIG_FTGMAC100=m
 CONFIG_GIANFAR=y
 CONFIG_HIX5HD2_GMAC=y
 CONFIG_E1000E=y
@@ -437,6 +438,7 @@ CONFIG_PINCTRL_MSM8X74=y
 CONFIG_PINCTRL_MSM8916=y
 CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
 CONFIG_PINCTRL_QCOM_SSBI_PMIC=y
+CONFIG_GPIO_ASPEED_SGPIO=y
 CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_DWAPB=y
 CONFIG_GPIO_EM=y
@@ -1041,6 +1043,13 @@ CONFIG_ROCKCHIP_EFUSE=m
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_NVMEM_VF610_OCOTP=y
+CONFIG_FSI=m
+CONFIG_FSI_MASTER_GPIO=m
+CONFIG_FSI_MASTER_HUB=m
+CONFIG_FSI_MASTER_ASPEED=m
+CONFIG_FSI_SCOM=m
+CONFIG_FSI_SBEFIFO=m
+CONFIG_FSI_OCC=m
 CONFIG_EXT4_FS=y
 CONFIG_AUTOFS4_FS=y
 CONFIG_MSDOS_FS=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
