Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3021858AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T9tJWHIECLTnWH3JHDXmv42SpfDUMBCyCM4vUOlIJfg=; b=AKGtgZB4dyohliW26S14cpAUDN
	0ZAXM5R/A5bxyh5a4EYwlIvm8M3goyLG3uYxmhVYMQaHh+K1s9kTHl/g4yaFklDfCBZZfifQsU6xG
	o0rxwMFr+lo4+5toYoK3XWZK/zCQ0hAsNxVTOwlmiAL9MFGNoC6u5UHeMErD6h4LchrownbcKfl1D
	eNrn/LteIGjpL9GPwTvQMLnOz3hW/8IExQGRGrWNcofCT3mHYmxp/JhDukocS0xmAIpx9ocJnoiXJ
	EXX4E17xsxCIgXK8WcLqag85afb4hxceFPYIEuDHsi4CYP4hZaDdtWWLt848eDZOt5eKLU3s0+rxN
	u/ny893A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZKr-0001AT-3d; Thu, 08 Aug 2019 03:43:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZJf-0000Ui-Ds
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:42:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so43273781pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sYG6cpuEWkiuiZSTjJ/tkE2X/s2syaTjG0yfloKLSE0=;
 b=Zqb+cgi2hDsfXgHlecgHReUK5105u+oAXv7BB+DCZY/hMGx1sxb1+EqfxhA1eSd4nU
 T8ave2YfqpukyF0QuRTjjIMXAFtg8LiYpJFs4gEXLcC3R7aRfBBZ9lVDN5XTHA7eWeAS
 SRt87N9Rucv13ptk0JnoNbOxRZx/Oixb5iacg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sYG6cpuEWkiuiZSTjJ/tkE2X/s2syaTjG0yfloKLSE0=;
 b=OF49OU5KBszm/Fa/jgD5Q8ZP9RFKARnKIy3/cbC2feoGY4dB3JUKUVmlIWVE5LMpyw
 HU/cFlcUFCSyJ5VHjiQ5sE8UUvlAiAp569JL3MYMIif7xjee6tzVynUpWufMDy0FXswO
 iBQjVEB4NWGK+DNOIsz9qr19yxBo0+7nt/PgOxmYK6Jg3D//zXZZ6gahYtCSAfIlJsL9
 LGTMtt2hyOVkfvaVSJqMvDwF7ckuyNg+O9vN60nP1SAtkOeV4HZKOmZaDs8SnzycOYdW
 oDGGCymZUdyQFOV/oZBPboVpHMEA7V5RA75vDxhrWWoh+2xVIBiPieGrC7U31NS8yFDy
 AVUA==
X-Gm-Message-State: APjAAAUfPiQayL7Jh/eq4y49XPPEx8K+QP33yrb1YsPDADKL7qx1xoI6
 Z0es6sEZETY+r+vykYcg0QrtJo6B/pZ1sA==
X-Google-Smtp-Source: APXvYqw0VyrLw6SijXdgxWzGrWGwlkTeqgHtcpsU3gz31hb34TRSE0lX0YnaKNOSEsTbHd6OT+XIfw==
X-Received: by 2002:a63:2b0c:: with SMTP id r12mr10684315pgr.206.1565235734462; 
 Wed, 07 Aug 2019 20:42:14 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id y14sm46425482pge.7.2019.08.07.20.42.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 20:42:13 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 2/2] i2c: iproc: Add full name of devicetree node to
 adapter name
Date: Thu,  8 Aug 2019 09:07:53 +0530
Message-Id: <1565235473-28461-3-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
References: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_204215_617899_2671F83E 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lori Hikichi <lori.hikichi@broadcom.com>

Add the full name of the devicetree node to the adapter name.
Without this change, all adapters have the same name making it difficult
to distinguish between multiple instances.
The most obvious way to see this is to use the utility i2c_detect.
e.g. "i2c-detect -l"

Before
i2c-1 i2c Broadcom iProc I2C adapter I2C adapter
i2c-0 i2c Broadcom iProc I2C adapter I2C adapter

After
i2c-1 i2c Broadcom iProc (i2c@e0000) I2C adapter
i2c-0 i2c Broadcom iProc (i2c@b0000) I2C adapter

Now it is easy to figure out which adapter maps to a which DT node.

Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index 19ef2b0..183b220 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -922,7 +922,9 @@ static int bcm_iproc_i2c_probe(struct platform_device *pdev)
 
 	adap = &iproc_i2c->adapter;
 	i2c_set_adapdata(adap, iproc_i2c);
-	strlcpy(adap->name, "Broadcom iProc I2C adapter", sizeof(adap->name));
+	snprintf(adap->name, sizeof(adap->name),
+		"Broadcom iProc (%s)",
+		of_node_full_name(iproc_i2c->device->of_node));
 	adap->algo = &bcm_iproc_algo;
 	adap->quirks = &bcm_iproc_i2c_quirks;
 	adap->dev.parent = &pdev->dev;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
