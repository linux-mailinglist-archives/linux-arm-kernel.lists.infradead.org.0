Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E501A250
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 19:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S8fYRKUyef+ix6bf45vtVAWEks49gdRHYXY26r0zUrI=; b=UDaAXV9LgoOebjNLgKEyWpZvxt
	Jlxnci/y1g9dbqzAtGTDRyGJSjNoUbCXpwLEggtcFvWY7DT4qA/kb7R4R11YxdrElIcpFD3u3LpML
	k7AjEp/bz8TtDUHOXwF7316+lUG2FS2fdRlnDwJEGWSynA7bRmt9KUOdP3NvRX0mU/6uvNFcfH7hf
	0P9kdUHNkn+81L1++MPJ9uvGZO3pAwg0mX8Ouu+V+yxxI7dtQi9AM8N7ngZkNc3DLY6nEmTGo6LJd
	5S8asvKK+LQscW/MiKofeuj46Bp0qvkGilQD4v8OkBdA0xQ0YV+ej8HmLvuhiptIX6L5dXF8nEAMU
	KdCXMGGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9Nb-0008N5-Tw; Fri, 10 May 2019 17:32:19 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9NN-0008FA-F2
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 17:32:07 +0000
Received: by mail-ed1-x541.google.com with SMTP id b8so6103622edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 10:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7fV4hVAmAbFHfY0I1yQlpwpkvQ7JKHa98NLgnJBiZDY=;
 b=LknVoO4tUQQjtIggBo/z1KGMKMS9lVmlRSLDduxaz2IEGKOAGot/nDYmGVDJqPEFjB
 LI3cDUwXpOPOTn04X5/Qd5m1rLMbLyf7gRWIb4WTlS1/sonhA2fRyp4UbZPNyKPyiNRx
 o1JRrS7aWOwvpiiQX/86zQJ+1/gIx1sIyU856MVVv0ETgz4wLsQgmvClhOA8jAb5G2kZ
 E3o60yNHm1eIBc2WoGcEghCpDdemPiqLcJ+/Yb6SUQ3Gf9OphElXCgpVhpW42a0FiUew
 7jeTPuFsICH9sQmVBXYbtZMjbc9P+Y5MzoBGCAeXYFWGhxoSnMey4yNGAvBrQPhBkl0U
 Gfiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7fV4hVAmAbFHfY0I1yQlpwpkvQ7JKHa98NLgnJBiZDY=;
 b=nTaaV0S3svCLS2EzB+Z6q03EtGBBvP3wpViPV5TpQC9WzSA3LKXH0enppkFHF1cKDK
 3eyTd0Kk2mRLeCvN9S1ePEIacqxBPsPRNCdar5i3Hm9sw1bZpEpgZ3K6ci3BZ6YAOt09
 tZbJhonhayzkqnMaUzBdFODXkY+AL1tW/vIfaIBMUUBw5P/CzVDznAF+gNMZwOk9edJZ
 oukYXiSoPuMZIJB28/2UgTB55jP45K+n1o032FM6eUAUPMg5lUp7pSxWu2XxOjsFuCAt
 o6EyKWuu2NlmLC8503dFiXnqf4/1vVt4KwEFSB15Z1PGxZNpS4qM12ZUybJp6cPRvW2f
 FSQQ==
X-Gm-Message-State: APjAAAUL3FQ201su8Dn1XHSsj+OWDQgc116OxQ+fevoXhpgcHNct3rsi
 tRGvIz3X1emlsKoMhnDhl25Vixm5
X-Google-Smtp-Source: APXvYqwRhkB3mljJJBOeVkEFqSYiYAhAJbm6CP/YaoYopxarV4lEGAnieQB3w+eNnM5by0z1/qEGVQ==
X-Received: by 2002:a17:906:cd27:: with SMTP id
 oz39mr3292112ejb.73.1557509523669; 
 Fri, 10 May 2019 10:32:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id v16sm1599567edm.56.2019.05.10.10.32.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 10:32:03 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] hwrng: iproc-rng200: Add support for 7211
Date: Fri, 10 May 2019 10:31:11 -0700
Message-Id: <20190510173112.2196-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510173112.2196-1-f.fainelli@gmail.com>
References: <20190510173112.2196-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_103205_590286_A8D86088 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 herbert@gondor.apana.org.au, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-crypto@vger.kernel.org,
 mpm@selenic.com, "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, wahrenst@gmx.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 features a RNG200 hardware random number generator block, add
support for this chip by matching the chip-specific compatible string.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/char/hw_random/iproc-rng200.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
index 8b5a20b35293..92be1c0ab99f 100644
--- a/drivers/char/hw_random/iproc-rng200.c
+++ b/drivers/char/hw_random/iproc-rng200.c
@@ -220,6 +220,7 @@ static int iproc_rng200_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id iproc_rng200_of_match[] = {
+	{ .compatible = "brcm,bcm7211-rng200", },
 	{ .compatible = "brcm,bcm7278-rng200", },
 	{ .compatible = "brcm,iproc-rng200", },
 	{},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
