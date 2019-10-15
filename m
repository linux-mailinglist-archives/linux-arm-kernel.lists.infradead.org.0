Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D9CD8402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CdAVUur1E3w/yvcEG0etOodxXC0dxr8Zu+oErFZP76E=; b=g/T9egyM7DpTvfzNK3PBMtlCzx
	xoTpCy87FKTp7se4+r6k2+LQSgQhpOiRGW+Yd15NrZhoSf0t5A//+rWSG5yXrCe0Qf6LrD/fwMuFE
	5SWCNrHfbGpD2xxzILyOQWjEggv/E/WabqvW8IQvfAQ/AHoSetUNUsXULKP+4BJcWxuzFUOdEtks5
	ADk0xMsykNlOKWHyQabaSwrRYmh369ga5x7G6Aj2MqJNyoHmvA+QEvbWaSDkr+jylV0ViOV81FRH0
	F1msPsrSQ4r00bi16RTqz3pkwIrq7eMO7hfpay8Zb4j9NOtTJgWTlsDdz3TdFs4ry78MBnfwZA0Rl
	0Vo9WtNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVbi-00059w-22; Tue, 15 Oct 2019 22:47:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVaa-0004Jj-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id y72so13384125pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FOMQpcJx9WLEQcHzJj2vCQvumfDCntLeUlPVA5hJqrQ=;
 b=dYXNPokICSJIdpzlnwflztTsqQBC4kNfuc+VmWx4wKj1PkHyDjkK5TL9Wuvtm1jDE8
 1ub/6CL5SaziCg3EIexfzRmFwjR8hn/ig42+Doi5BIoOmV+rlU/t93TUgxMYEykOJxq5
 1TM2U1BcI8/xFKewkS1FCGwFtEP1ZZcExlksM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FOMQpcJx9WLEQcHzJj2vCQvumfDCntLeUlPVA5hJqrQ=;
 b=a3mqx9TVhMzbaOHlrz5Oo9uEokzZdhVPai+/QR1cwYTQDP6mBzopdxqcqkFwVqgaSb
 irnoxiJJ3GhvlvUI0QtYcH08NZNm1MlFe9u+QZt5FjZQktzT44n/jZMvS5q9QeFaCfw1
 BZVYMk2i17Yf1b2Yuvycsv9O9yflesmhuCCezJ0ApMt+eY2+Kw/5Q4c9c+iWs04Qf8V1
 ASf6laSpdKtvd9ta05DS28UZRLQjyX5lhvUALTMBeKXKRoopKg+Xw2H83HGdAY6KuJg6
 DyBk+EFRqUJVcgylwWGYAnsjLyJa/uXrqNXdflKwz8VTD71ZNRdhXihDH1/HqmVTbIdk
 ORkQ==
X-Gm-Message-State: APjAAAXNUickkAEpROS21gncxH0lBMKSsP0MHB3aGBn4TNNY7i1tksDT
 KKTQR3xLOz0NcNEXWYuehSwauA==
X-Google-Smtp-Source: APXvYqyeU+5PF0rfqF0aya2jb88UqawwNLErMx5GDxFdrR9mfGt8Aujh/8Fv0HuVyL4JsjEl1rXhOw==
X-Received: by 2002:a62:1c82:: with SMTP id
 c124mr42377410pfc.163.1571179607065; 
 Tue, 15 Oct 2019 15:46:47 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e127sm23019837pfe.37.2019.10.15.15.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:46:46 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Brian Norris <computersforpeace@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>
Subject: [PATCH 6/8] memory: brcmstb: dpfe: support for deferred firmware
 download
Date: Tue, 15 Oct 2019 15:45:11 -0700
Message-Id: <20191015224513.16969-7-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015224513.16969-1-mmayer@broadcom.com>
References: <20191015224513.16969-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154648_673572_4BF41AFC 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

We add support for deferred downloading of the DPFE firmware. It may be
necessary to do this if the root file system containing the firmware
image is not yet available at the time the driver's probe function is
being called.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index f905a0076db7..cf320302d2c0 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -614,10 +614,13 @@ static int brcmstb_dpfe_download_firmware(struct brcmstb_dpfe_priv *priv)
 	if (!priv->dpfe_api->fw_name)
 		return -ENODEV;
 
-	ret = request_firmware(&fw, priv->dpfe_api->fw_name, dev);
-	/* request_firmware() prints its own error messages. */
+	ret = firmware_request_nowarn(&fw, priv->dpfe_api->fw_name, dev);
+	/*
+	 * Defer the firmware download if the firmware file couldn't be found.
+	 * The root file system may not be available yet.
+	 */
 	if (ret)
-		return ret;
+		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
 
 	ret = __verify_firmware(&init, fw);
 	if (ret)
@@ -862,7 +865,8 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 
 	ret = brcmstb_dpfe_download_firmware(priv);
 	if (ret) {
-		dev_err(dev, "Couldn't download firmware -- %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Couldn't download firmware -- %d\n", ret);
 		return ret;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
