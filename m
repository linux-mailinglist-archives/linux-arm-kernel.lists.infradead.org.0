Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0605711AC6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Hj+ozJqO1PEIqTz6PwcyunwTcB5dfKVO2nZqkm4GI4=; b=W55wVCE6hBxBKt
	C3PQ9TtZRO5saXRBv1fJWIoZnIaE2ZA/PPNXvl34TsWLLE4bxYkHfa6MSV+7gst4SMEOJEN+9oPRH
	8uTP4j1YkXCBSt91ZRKS5i8Cxkz9ElP41iYU9adtXVwnZ0IZfOGzGWH5cnS4KAfDFl4Pjqe3JF0O+
	Vn1bxsNu1/gVV+5Ljbxo1/zK84bG/59TffZGDbrVPpf2r7+VMdzT2Fb/T3rjXfOFN8VCfFerbfl89
	ANWqYrEHI2skOceXVMAUMakpYeZCh+3HlKhc0WcY2B1XJF/svQevbX6Ly9xoywd03LF5xmh9ZFy1M
	KonhYA0JgWiIICyK4JkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2No-0001X7-6L; Wed, 11 Dec 2019 13:50:28 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Nf-0001W7-8I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:50:20 +0000
Received: by mail-pj1-x1043.google.com with SMTP id v93so8970354pjb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 05:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vwhN/yt2WmtrREcyUuWcQxe7CbFit8CvDpGIHKC3OU=;
 b=hZdxwmexnI6K29c6yjOIdnCuBaZYA8NWSass4fzFRgZPrBpxbcZ28+YOvnRUKpiERz
 J6MijJuv8l40HNn+/PPucW9ktHd/3pkFlknxAviQcC3NYr7UF6Nw6Fl0/KhLoiLchrZG
 pJ1FlCgJKsBQE+dRQAhhxkNhKXIW+Sc64Pc50MmhjTH6cnO0DE1tRyaY7TDtL01HQ4qr
 FTELqs3L7qJd7wdv8bpgRA7UHTxJTstqz8Knqt7YLdU2kpHombgT5MDNWUnzb5iAJQfj
 q8zMilSD/gsPGgHZCVIIlhZaomzp3Le/r2rK6BfoyolPf5ruCuRtfoxMy8yQ2/sKJVId
 qbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+vwhN/yt2WmtrREcyUuWcQxe7CbFit8CvDpGIHKC3OU=;
 b=IGsOxH7o53NEpeskZc30VtffdsXKLEopLRRpILupEdgSd1EOY3LPKAAJPJrPx9DSgN
 zzM18yR/yINKaBWwqj6mfYRbqTot9nQKBQzFNKbtB33ItOENSxwdJWM/kg3vxS/6OodI
 ckjbpMR6VLWgtSBSDEL8ybWCBAlZqiDuUWvA2uF1TYc6g6xEkF7UffMJOx1TESgs7/Nt
 hmRwKteH1CZiOkQc8Czk8047wqGNY1lEnXHO1a1vERHChXebuE5Z5QBF/EzWcotBLgFo
 78r5yDvqFHhK4CKskHwTq4l4uuAloNVU+ZdT7sSNXvd2R2ow6gwCmrJUpIeCvUzD0gVz
 D4og==
X-Gm-Message-State: APjAAAUlmYUf6QOpCj0BRh2WMjLY5YBdCpZzOXobek0GtoPlCdAy6r2f
 BNmt/c0uzI93eH0tvtvfut0BdsXGJ4Q=
X-Google-Smtp-Source: APXvYqwsAxWfBEIFCjAdoGJMeISx4//0Y4VVHxiemo0DsbJ+gpBr4l1g18HvOPw3aD0BYmKFgyfHmA==
X-Received: by 2002:a17:90a:1505:: with SMTP id l5mr679336pja.73.1576072217460; 
 Wed, 11 Dec 2019 05:50:17 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id j3sm3294596pfi.8.2019.12.11.05.50.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 05:50:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: vf610-zii-dev-rev-b: Drop redundant I2C
 properties
Date: Wed, 11 Dec 2019 05:49:57 -0800
Message-Id: <20191211134957.30587-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055019_295422_169A5B47 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZII VF610 Board Rev. B is supposed to have exactly the same I2C config
as Rev. C, including I2C bus recovery settings. Drop redundant I2C
properties that are already specified in vf610-zii-dev.dtsi

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

    - Reworded commit message to clarify that I2C recovery setttins
      are supposed to apply to both Dev boards

[v1] lore.kernel.org/lkml/20190820031952.14804-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
index 48086c5e8549..e500911ce0a5 100644
--- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
@@ -323,11 +323,6 @@
 };
 
 &i2c0 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c0>;
-	status = "okay";
-
 	gpio5: io-expander@20 {
 		compatible = "nxp,pca9554";
 		reg = <0x20>;
@@ -350,11 +345,6 @@
 };
 
 &i2c2 {
-	clock-frequency = <100000>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2>;
-	status = "okay";
-
 	tca9548@70 {
 		compatible = "nxp,pca9548";
 		pinctrl-0 = <&pinctrl_i2c_mux_reset>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
