Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB66517E40
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cu+ACo+1QrA+AoXjU/gVuNNnK4kSi/bk+gRvsU0F3sY=; b=HvsdWhVAp3S2pRp5tJy7IAD6N2
	nbwz5OTcvWvhZGy6h2j4dXFgXWM/sFf01kIm49kahf9rhupJUp6jVVS4Trj1r6wQYHaoVOsy7eUKn
	Ik2CEYfCMy6n8Z1oavCdpzcpXFWNQGewgwgTT6ygka5+qq3PMirjieyrF3c5g3VD4YFuQp7dFtq+U
	h/X3z/TzlMOPsxtOciZ6+eTvZgDdThv5MDUYEP3Uihmo8yMPVbYsoS5ICGovGFuMgC2lQkR3UTMG0
	XFc2ZldNozfiXRr5g7tAXRTJiEu+PrqQ4MT1QYX5qsFtmgWHVKxX2rejTJ4Kn266EI/i06FgHa/UW
	rQ0gKEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPd7-0005Kr-2r; Wed, 08 May 2019 16:41:17 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPcq-00057o-0P
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:41:01 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n188so16779172ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Xa6DtNP/MsKA3xKlWUlfMOa1BuQnbHXWgUsbk88eqkY=;
 b=GcFcfdz920X4hAX7aP+vIaiyEOWH4ow01gaSLiNFw/lkDgzf3WlT0694nzdDi/gyFN
 Fc8v+7pLhnyHv2+P+5XPjJnwYWdmqdr85JV9OFtuv496D5IUyQgG7lZpBoCeTxt53pw7
 PXnXA/FoWK1dK4Mwg211m0vncobkAkEZctTw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Xa6DtNP/MsKA3xKlWUlfMOa1BuQnbHXWgUsbk88eqkY=;
 b=hR2O+4MeZuOKtX0ESIED+tgXDmyOYrBbrPlT0/fcGbnS0uFmRoxj9jrrpSFoqzDjEo
 zj3JhjoXuCF83WuotYtwEMFgucHuf1D4tteV9YVD5EoZOxEBuqDDOosSMTq28C/bbq7b
 uM8Pao8aHhhIi7SkIVbEQS54sn8bqSbO7Os6wmCZfGWoyeQHZmVtXI3F6cRoDFmQaMyy
 pRhuKqy4v0rxXggfgBDaora8eV+FVXnPgB02VtV642OT/wT7h7WkqXlKa0mB3IEAuUq7
 TS2kggDMIOqNP6dQIASoAk6kjtq2vYbH5z7CYwjXWnbpyqFi7NNbp9osSylWpnP10fj1
 eugA==
X-Gm-Message-State: APjAAAXgHx1hKZtrSL6XyRaw6KVimvHp4V437HnItkUsbwXXUoBlWWmQ
 Dct77iqIcHXRcylwm4MfbPUJIQ==
X-Google-Smtp-Source: APXvYqwwQ/ZXbeVOvDJBMAyLP+sfNNNFUcrgESJuSZJO2anvG8yUMgG4YKbZW8WAbZQhc+gylFARBQ==
X-Received: by 2002:a81:2717:: with SMTP id n23mr12899509ywn.511.1557333658983; 
 Wed, 08 May 2019 09:40:58 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id u6sm4671081ywl.71.2019.05.08.09.40.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:40:58 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH v2 1/2] mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50
 data hold time problem
Date: Wed,  8 May 2019 09:40:43 -0700
Message-Id: <20190508164044.22451-2-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508164044.22451-1-scott.branden@broadcom.com>
References: <20190508164044.22451-1-scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_094100_046053_ADB6B845 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Scott Branden <scott.branden@broadcom.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Trac Hoang <trac.hoang@broadcom.com>

The iproc host eMMC/SD controller hold time does not meet the
specification in the HS50 mode. This problem can be mitigated
by disabling the HISPD bit; thus forcing the controller output
data to be driven on the falling clock edges rather than the
rising clock edges.

This change applies only to the Cygnus platform.

Cc: stable@vger.kernel.org # v4.12+
Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-iproc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 9d12c06c7fd6..9d4071c41c94 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -196,7 +196,8 @@ static const struct sdhci_ops sdhci_iproc_32only_ops = {
 };
 
 static const struct sdhci_pltfm_data sdhci_iproc_cygnus_pltfm_data = {
-	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK,
+	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
+		  SDHCI_QUIRK_NO_HISPD_BIT,
 	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN | SDHCI_QUIRK2_HOST_OFF_CARD_ON,
 	.ops = &sdhci_iproc_32only_ops,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
