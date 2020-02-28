Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA258173633
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KGZh9FI89bLDE5fG9LXdUynnqiYtIvH+WrXAUBDdxVM=; b=cQn
	Ch6l0erQtPL20aevemzCy8xMLVgy27Wb3Aozs7TAlomtRj74wR0dBcCaNpS5IQFj1NzP9fbeBtoLs
	C7ptVVyONB+2/2mhzz1hBvwwSOeRHGPl9xFSovY8wx5NX/AoTq84XC9NxLvSA61iZfTIVYyYtOTHi
	2+hadh+e1nCs3Nans7Xy8g11bo74DJygUbVCwTrYXMt7G6bekyMPKyps2ptKeHrJMzqlBreMMreg0
	1CWhV2Sj30EoGyzlUZDVqtxzhohOyOf3dt5aV/d+nGAtnqpy9jzaFbDSH+hZXp3umUK7NQ7b6w8rj
	8ajERA4efbOT+9dwsmgVU75vh6Ny5KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dza-00062l-Ty; Fri, 28 Feb 2020 11:39:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dzR-00061w-Hq; Fri, 28 Feb 2020 11:39:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id n64so1517030wme.3;
 Fri, 28 Feb 2020 03:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1nT2rygpRjcW5Hc5nEx4+QR4Y0c2ZJTbeTcqfJuIxf8=;
 b=Kqc24jvgOU22EK6INyCirOks2OzBu06s3R229MgyxZlaO9KwA00EYavqHNtqMuhU37
 ZiGekBb6KP2Ovyu+ihydi+f0LrC/EjezkTbIzbAClYGMe+0/enh0qgPePsV6ybOBXbww
 0ILwtqR0otTE4mjqS0m7vd8Yjtr6PvVWIrMmavPdV8KJLRSu88YK3Q3wzK71tZffUftz
 w0vVxuoPAbgR1dYb7fmHNohJXdeRq2vAWCowCI3h7CjjwJ+xS8FxjvAjxTeg5iWzcole
 zB3TTxUX4tQcz6qFEE0QYfc2VtTYYmwLrqxeaFnX1I+L9l4UKP5npgDqKCaLSdvSrscf
 YZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1nT2rygpRjcW5Hc5nEx4+QR4Y0c2ZJTbeTcqfJuIxf8=;
 b=bGHrpaTjeOGop+gsRni7Q7dsciOwuk9NlukZJBjRp6AIg0qyQo3ue51BaKL1ocRGZC
 wi6RsEbarOkLwsIp+xCRnLJGPXw/h2qJ/qkIaQcEqGnIrI8uUk4gnYkuRgdJJHBSsNQX
 /XnrSGGpRbFPCjTOt+9BbnI9b8tEnoKnKTCT6Tw64c0EVXgBi4bsFSmbbCSuzL7wBoZ2
 ZbWfzoTM/eQkWZYv+DWKfqZj+VAo+QzlaJN8lwSOiI+AYHaxAOVDrwH9nc6It3Spd0VX
 YCDI9de71yp+hprkl+pDBqCQTA651i2jbf58iDe4PDtGiUu8luUoO3tW9RtRNLGq09mZ
 PiZw==
X-Gm-Message-State: APjAAAVKqf81ym0IKZssvy/rxo1YBRuEgX+jk8qEMmQCRsdMhF572da3
 unexn+SazLJ65ObfxQk3WDM=
X-Google-Smtp-Source: APXvYqzl/ZY5TQUvn+/CB3/RaLjU8StBmIRt1iV97hCR5IEM+O1KSpKMioYZFHvB/LGdaLFAWtBYbg==
X-Received: by 2002:a1c:3204:: with SMTP id y4mr4362124wmy.166.1582889970418; 
 Fri, 28 Feb 2020 03:39:30 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q1sm11554294wrw.5.2020.02.28.03.39.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 03:39:29 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: remove g-use-dma from rockchip usb nodes
Date: Fri, 28 Feb 2020 12:39:21 +0100
Message-Id: <20200228113922.20266-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_033933_590557_2EED7351 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: usb@30180000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30180000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rk3228-evb.dt.yaml: usb@30040000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rk3229-evb.dt.yaml: usb@30040000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rk3229-xms6.dt.yaml: usb@30040000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'

'g-use-dma' is not a valid option in dwc2.yaml, so remove it
from all Rockchip dtsi files.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 1 -
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 4e90efdc9..dac930be3 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -718,7 +718,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy0_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 1fd06e7cb..9bb109d66 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -527,7 +527,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
