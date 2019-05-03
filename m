Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3411328E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMtrPkQ/d7tCSF6+ZUtdObydtYqrmOzD7TuyX741oFY=; b=NRTd1b2TgU+b6Z
	PNZrAEi2OJX6C8+RgsIM2V1EOJCD140S3SXGT06mVBXUxYlAEEkvB9aaRc+oGJfAS8sL7YLlX1+q3
	3KAcriey3NRMBzHikcnyq9pIdli4dq57CJym89DC8O5O1FpnMELpmqN+w3dR8dB045S9s4A57fQqU
	mVSPAkqidO7mwX+K3WD09Ae+ScuktWbUBOypdf+gBj6ggtm2D1eiCg2fXNzYdRsT9Nsm+TlNTK4/C
	FC7SfaHbeRTeandUkMJf6jexIz7109SAjvMfX/qa/s4rNbmKgXW5q4lFrRDcMCzcXf3g4cL2D4t8O
	l1yS5Wnfoqkn9A8ACVKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbRy-0008F4-Ro; Fri, 03 May 2019 16:54:18 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRV-0007nh-5Y
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:50 +0000
Received: by mail-ed1-x542.google.com with SMTP id a8so6777050edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GntDUdRv2LjiXWw6FhKRuwz7o/K7nJhCWNMfoZ1WUyQ=;
 b=x6GI58E6YgrnmtqjCH1kPZW2BBsuxyw9ohXw5am9N4qq3QzQctsXyMjI0luedcIEJR
 NcWcnsHyT64T2/DvRMEQuajZjP9BARR/A7K3kZdnBJ+H15g4UaG2RYf9idvDoT8JdkDH
 QJ1XxUUzLnSE5nEMMQY0pL3gpTKBVC0kuenzdbXsZJByl0i3hUnEOpwjVN1pSnneVsLV
 vGNdxOGvjJn+3zA9qPztRprOblJTAZlrp8nzZ7/Rz8k874O1ppBEP3+6o7O4D/qCq/rp
 8/PN4mr4lEw46KLkA4OC7RNcnxf+irJ8EHyM4tUnDUGI53xrhquXUSW8vkVDs640IjHt
 rZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GntDUdRv2LjiXWw6FhKRuwz7o/K7nJhCWNMfoZ1WUyQ=;
 b=B1Al8XtpaFK/x22FWbahu7LyMUZakIx/eW4ioEH/R+plhg5A1HrTCER0oalFKfJJOX
 N9SxhXmk3dSgnS+SZxAM3dWLQ7G8XSwzIHm5r8vwcJmV/8TrZ2WMPpNMUwCyrSLs+sJ1
 3/38/H7hZgFdHNTNoUykp0KCBNhjxS3Yk2VXSCS1+RwQwjOjTweaiz4O1J+KuNW5/PSI
 vakTNMFXgeCv2d+CzhylkGqcARls9atmxXbadZAkH7swZv3t2zya7DSf4ibq3kUfsX/t
 /YpK+mYUJc10S0XKu68jhZGPWko6KDvUPax/iqfPhohUzg4D5MOgSdoDj7/BawQ/bNuj
 xMVg==
X-Gm-Message-State: APjAAAUXT7XiydW/ngGryQTszLLcdmOx2dehHgYvqMkO+bxjLJo+znNv
 SYMkz4VcZPSxUU3b2ux53MEXsA==
X-Google-Smtp-Source: APXvYqy/S6hBgD1axyPUFRCSenqSo8RTxJsUTA305zXcKyF+vXq2xcw1P5WE8Af6j0WEm//K2YdGFw==
X-Received: by 2002:a17:906:4cd6:: with SMTP id
 q22mr7326058ejt.14.1556902427513; 
 Fri, 03 May 2019 09:53:47 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:47 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 2/5] nvmem: imx-ocotp: Ensure WAIT bits are preserved when
 setting timing
Date: Fri,  3 May 2019 17:53:39 +0100
Message-Id: <20190503165342.30139-3-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095349_205763_A80FD061 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

The i.MX6 and i.MX8 both have a bit-field spanning bits 27:22 called the
WAIT field.

The WAIT field according to the documentation for both parts "specifies
time interval between auto read and write access in one time program. It is
given in number of ipg_clk periods."

This patch ensures that the relevant field is read and written back to the
timing register.

Fixes: 0642bac7da42 ("nvmem: imx-ocotp: add write support")

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 6600c4ddeb51..85a7d0da3abb 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -189,7 +189,8 @@ static void imx_ocotp_set_imx6_timing(struct ocotp_priv *priv)
 	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
 	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
 
-	timing = strobe_prog & 0x00000FFF;
+	timing = readl(priv->base + IMX_OCOTP_ADDR_TIMING) & 0x0FC00000;
+	timing |= strobe_prog & 0x00000FFF;
 	timing |= (relax       << 12) & 0x0000F000;
 	timing |= (strobe_read << 16) & 0x003F0000;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
