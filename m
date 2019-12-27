Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1FB12B0AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 03:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rk07xdJd05NgtSWWo8TzGFr52KJ6NPGi8ELMDNRKC88=; b=nXMAUwdjTqJaXO
	8RVB/uSzARHKR/BpwJ9vjoCahKNMJ0q/ouGnGgjldCcp7y/Aoz8YaXEBzqMZLzPqRg16v231rYJAP
	S0Tvbak7i62X5sxBEqicZjLnpgvg63bOxxb7rcpfl0wPVIlM3KKizwZ2JxyYcCVDLSb2sGIO6Jzqt
	z3YsuUJAF/DqU7u0J6Yn0y63y79C2ZUFEXblWHitoc3KJckX8KvZFXKob+N3+kcln97hm3WkwSes5
	jzCQGpo2oNnQQ4Gl+QbtAgtschRIORDJ73ek3yceL3TB9TmEZipw/OXMHPUglBOnNSUcj/yXhxJWI
	mVZW4Yr/vEPBYwLbuIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikfXT-0002q0-Cb; Fri, 27 Dec 2019 02:39:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikfXI-0002p0-C9
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 02:39:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so7073106wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 18:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=lNlw2hvCqhTrh/hZvwaoyx35sWfAeV4bWBqxx7AGW0w=;
 b=F2dPTR2AStguUI0ZR5BTvAtM2jM+BLo5sQxmbXTSSJlXPEQQ3GktJ6lkZ5oYt89sOV
 zB3Ni790ffOppqiBjBCnN/Hg3BkMX4Xlw0drIGqguSuIriiMYFxGllaetqKDkZsYspTI
 YYJS571HnR+MNI6xs/xYaeOqgnPfdnj2h8PdNjmdJcrcHAwujiu8/VV6SpS3/wy/sMAv
 ZCvGGSnfBWFGEb4hHSXKAaBXzaHoJ5f1MoWLNKmcUfgVlyEnFa8wahVAOn/S0sA5zgKK
 EI6my1UCUKT3/xv81m48pJXo/4LUdFtmfe98hTijeCe+DVhlzhmDQZQRlYy8iWhQmAhP
 tA7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=lNlw2hvCqhTrh/hZvwaoyx35sWfAeV4bWBqxx7AGW0w=;
 b=QOI6LKP5pziwL6zKiiiba3K/+9s+G2WSK0MLLekTY252BemcOtwoYK9pZOAeDpBKq+
 TDVCaYuz37oArEQ1oIIYubCA9/cJoVf+czpw9wU7eA8D2D+55Ny0+YkPKt52V4OHNCbZ
 sBVjWx9K4vx5968apGZ3U4T1vlFA3tih9zGxYcsAf17LhEU+bpy1cn4RIfs8469MBaFH
 X1V6QnyCLGMjeNrkhNCwTR07sDJev88rdLdQxcipKRucvIkjoDwWctJKuM+Uz6R/XZpa
 xV+hGAqlrJ4vLYhuTG34s9zG30/e9q+z8sl6DtIx7T3bOP006ZVkxuaHga1Oakd4+H4l
 pDYQ==
X-Gm-Message-State: APjAAAUCRGVbqi1UX69CaJ354OL/GmARq8pRCGOxjdd8ZiJ3toAe1G+j
 +1it3bzefm6lv4l1JdIdVJw=
X-Google-Smtp-Source: APXvYqx5WlxQynErEfGANcFG7+r9Q10F6BhK86BjHYn2T+iVZVD9jxFpM5SEG6hdH91wW3UV673v7A==
X-Received: by 2002:a7b:c151:: with SMTP id z17mr16595270wmi.137.1577414370684; 
 Thu, 26 Dec 2019 18:39:30 -0800 (PST)
Received: from zhanggen-UX430UQ ([95.179.219.143])
 by smtp.gmail.com with ESMTPSA id p18sm9733931wmb.8.2019.12.26.18.39.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Dec 2019 18:39:30 -0800 (PST)
Date: Fri, 27 Dec 2019 10:39:21 +0800
From: Gen Zhang <blackgod016574@gmail.com>
To: nsekhar@ti.com, bgolaszewski@baylibre.com, linux@armlinux.org.uk
Subject: [PATCH] board-dm644x-evm: fix 2 missing-check bugs in evm_led_setup()
Message-ID: <20191227023921.GA21233@zhanggen-UX430UQ>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_183932_418241_C4E1E400 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In evm_led_setup(), the allocation result of platform_device_alloc() and 
platform_device_add_data() should be checked.

Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
---
diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 9d87d4e..9cd2785 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -352,15 +352,20 @@ evm_led_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
 	 * device unregistration ...
 	 */
 	evm_led_dev = platform_device_alloc("leds-gpio", 0);
-	platform_device_add_data(evm_led_dev,
+	if (!evm_led_dev)
+		return -ENOMEM;
+	status = platform_device_add_data(evm_led_dev,
 			&evm_led_data, sizeof evm_led_data);
+	if (status)
+		goto err;
 
 	evm_led_dev->dev.parent = &client->dev;
 	status = platform_device_add(evm_led_dev);
-	if (status < 0) {
-		platform_device_put(evm_led_dev);
-		evm_led_dev = NULL;
-	}
+	if (status)
+		goto err;
+err:
+	platform_device_put(evm_led_dev);
+	evm_led_dev = NULL;
 	return status;
 }
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
