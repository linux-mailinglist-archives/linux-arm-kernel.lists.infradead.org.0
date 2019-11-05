Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3377EFEE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/vKq2zPwEuIAROJY+xNeZQOvJrUmsD+NutqcjNEgZcs=; b=IZs
	h1Dyg9Doh0nW4QMOnuWkjMcaCdrG1cY2EkLLpywaDMHE9ITzW+8wKlLiY4Nnx9VquV/wL7Rr3W84v
	R953vrgFQePrmijybbYyJlaHoVm0X60a1BEQTiAEi3fC/oAK8pWWzVFe0kUcAN+NxHSmUPMI1evoe
	dYsfiz5Oez3iF4Htg6eA+xma90Zi0LfFmI1cwC6Di1CPYvOPP0RnvFXV9b6vdOAPg8rc8t1KgOj/a
	1LLdRkfu56lZNOIN+uT6FWSnrefKIS5bscskwzg8XeW+8rfgLpjmFqY00KEGgWBTOkfRYVfAs3lyk
	i1x0+dEg8zhzjG1VB1+ufpyxVUbzJew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz70-0006ns-Jc; Tue, 05 Nov 2019 13:43:10 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRz6s-0006n4-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:43:03 +0000
Received: by mail-yw1-xc44.google.com with SMTP id a83so6856892ywe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=njeGNBuVFQ43NI4DdNgIJL31gMijUvEBHfE4Xmmetwc=;
 b=BvXGUDs9nIxDhMeJUhdvT5Mrkk2WJyzK542AKZFQUaW/ATM//VfL8Iq7pR9VcpInrH
 nMZXU3awfM6KLv7i2Uwrbxo0Od9JNV55xhQGK2p0SqX7bVoaXRWACVTBRwroflPvKvbA
 TSMnUaTfzakRXNgz5z2iPZV/GqxRbkjgogUPz+XSr0GHX5YzAVgPGoraW7JmHlCkfvEu
 RybalO/nMyZ9qLjIZxFCYOUIZP/7HczjKYDtYqspSOKY6zSSF3PyDWFLi3zUSX6idmus
 PoZVXbf82wTBtdTUHhOZN3EEBK7H6SP98iNkAcm5QfObC6OKLJlJn8GcW6emah+DFHZ4
 Uv+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=njeGNBuVFQ43NI4DdNgIJL31gMijUvEBHfE4Xmmetwc=;
 b=F+JM2WErM0nxsxwBqpqTMsNRgEYkbiTrNFWWW/vRjuRZC9Qw62EjdsSOto+QGOzfMd
 f6spq3yvlKccxZb4QfC7xocNZ+sQ2alW7WqJ2Rc1gEeKfZEW3jx/ShgxOpv8cmk7/VHH
 GIEc+rMB7DL/cmTGILSvTwrt07IeAoRjXt0pRkysScqbhdjqGTKVgoKbtLE7nXJ8/NC2
 mfxKFTOxnbFMzD9+rwV5oyrT+Y98Th/HEpImIf/JiIWgdEOtwheD4QqbSuFP2EkCaHFW
 CvcCgv8IbcrDckJZn1+dubZ5VxgdyCnxC7Qr8bzC565OYr+Sga9U+noQqbPsOy4x+gqG
 ZWcw==
X-Gm-Message-State: APjAAAVQ2E57cDeZC1d1BgkCf6bDHCuYi6dVYLkdOZPHPj9CmMB8WcMj
 QH+36Ve5RvoGml+4ufUG5aAFlvC9
X-Google-Smtp-Source: APXvYqwAZps/+Nk40M2NKxBJ1i+2bdSbJSSirVXkegeUiIlBNzUhi+OGLaa5kFersS+OrE2WTQf3LQ==
X-Received: by 2002:a81:1ac4:: with SMTP id a187mr1397999ywa.5.1572961380383; 
 Tue, 05 Nov 2019 05:43:00 -0800 (PST)
Received: from aford-OptiPlex-7050.logicpd.com ([174.46.170.158])
 by smtp.gmail.com with ESMTPSA id g71sm5088366ywe.90.2019.11.05.05.42.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:42:55 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ILI210X
Date: Tue,  5 Nov 2019 07:42:45 -0600
Message-Id: <20191105134245.22568-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_054302_229350_435E00F4 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, adam.ford@logicpd.com,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx6q-logicpd board supports an LCD with an ili2117
touchscreen controller.

This patch enables the TOUCHSCREEN_ILI210X which will support
the ili2117.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 0f7381ee0c37..d1ec6afe4aee 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -181,6 +181,7 @@ CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ADS7846=y
 CONFIG_TOUCHSCREEN_EGALAX=y
 CONFIG_TOUCHSCREEN_GOODIX=y
+CONFIG_TOUCHSCREEN_ILI210X=y
 CONFIG_TOUCHSCREEN_MAX11801=y
 CONFIG_TOUCHSCREEN_IMX6UL_TSC=y
 CONFIG_TOUCHSCREEN_EDT_FT5X06=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
