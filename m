Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EFACB43C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 07:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zUTUmfoLTXXMk1smNmZm7lLbgm0mLUKCQo/fUIgMfkg=; b=tYFBNz5fixpHMi
	YkNbBtPW8vXrMj8+YAl6ink8sqnG01HJ45nh4DFO7oDgm3mBOVf1nAOV7gjgzhE4zCGjExcl15rip
	2TwzpX5PHNXjzTcghKoUimbOuk5JufI3KynGnSgBH5bdTJmlUnBCjotZo2J6P3j48POUuF9kg5kOE
	AaSCHYK3GvONms+5HlzlmlecPnOuDZopTXGwAQhrXR4AoNd/Mt4N440EGmYbMmTN/+JdYnQEGxCgi
	FDC1e0cF/OQjfRGybXBcKV3RipMqTDNcKtXdewCIgMPJJ5DKRRV0cQYl5yUJX2cyDyepIfJi4UWhR
	UlSDInZBOALWul1nUtxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGGLW-0000Fs-Cu; Fri, 04 Oct 2019 05:41:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGGLO-0000FT-L1
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 05:41:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id q15so2592556pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 22:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GKVLI9LUqHPEjp3RS7mC+DCEnq9WI1TJleS4Dvszv8U=;
 b=iSiBR/IZvtIKmtKsBEg1fXjUd7BM/mtimLVfxJcmzcJZHuweE259D07Hmy+3/MWnQY
 Z8RAYJDJepnKC13JaqVKO6RfkeuFBbR28+lOoc7cnadTlpS1XI2DTtgZTEVPPd3bhcD4
 C9ud0mFDJHUXpXGFYStQm8qqh5djbXa/nrYYRMTUmB/+ZNGJTw2zwYaPkQcdDDhgRx7C
 9c2AZCjEaD8lI9wXWwqDF2jVYflssod3yWyFW9OpmFD+fEED/wZfNbjrALLGNxw09Uxg
 9g5RD7Jmz54At0evGtvhSxKGa8G8Bl2y1ALwgOOQthJOEA4PsTFVi0FH3CqURhb9Znlb
 VPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GKVLI9LUqHPEjp3RS7mC+DCEnq9WI1TJleS4Dvszv8U=;
 b=BRW5K85oFNKJwoj9cmc0Jm2ndecIGtlYqrV+DOmccyhYB1QiJnJYhOS90b4yT8xHc2
 MG7Vo4LGWZWfzKo20k/7dZARju9K9JtyB0plyHnC9jzdPpLpfROcNTjNVkbQSpVrLeBE
 iHoCyf24YKjIDXaNnZiwGoDOMjjk8OJeto67Wt9kHCxSUH0bFq2yXxr7bRp7Qg69uQ3/
 WSWWqcYZi1Sjfn2c8DHOxxYR4f/stl3yNorTXHPGLLplE8im68+et1P+MhUjvfg2/Ggk
 jBO1F/dyGlG2BYxMr99SUKlHO0ic9yeXhCDv5UdvuiVq7v/XRyrWb3Hu06Yl4igDyojp
 5PdQ==
X-Gm-Message-State: APjAAAV1iVcYJ0eMhVhazoStKi833eEudGsVeaw7i9JmpK5cgNH28IfK
 M9VPVXbuK/TlfJoI2ZemRxE=
X-Google-Smtp-Source: APXvYqxq2ZMNDYaJCoOc9QDAeCL1dkqqeXLO4Zk30uye0zXZCYarwbW9lkud/Ozlu47vWdC7smk5jQ==
X-Received: by 2002:a17:902:a418:: with SMTP id
 p24mr13411978plq.312.1570167692424; 
 Thu, 03 Oct 2019 22:41:32 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id o67sm5651892pje.17.2019.10.03.22.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 22:41:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] ARM: dts: vf610-zii-scu4-aib: Specify
 'i2c-mux-idle-disconnect'
Date: Thu,  3 Oct 2019 22:41:15 -0700
Message-Id: <20191004054115.26082-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_224134_714124_2D7D8F88 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Rick Ramstetter <rick@anteaterllc.com>,
 devicetree@vger.kernel.org, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Jeff White <jeff.white@zii.aero>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Specify 'i2c-mux-idle-disconnect' for both I2C switches present on the
board, since both are connected to the same parent bus and all of
their children have the same I2C address.

Fixes: ca4b4d373fcc ("ARM: dts: vf610: Add ZII SCU4 AIB board")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: Jeff White <jeff.white@zii.aero>
Cc: Rick Ramstetter <rick@anteaterllc.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
Shawn:

If this is possible, I'd like this one to go into 5.4.

Thanks,
Andrey Smirnov

 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index dc8a5f37a1ef..c8ebb23c4e02 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -602,6 +602,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
+		i2c-mux-idle-disconnect;
 
 		sff0_i2c: i2c@1 {
 			#address-cells = <1>;
@@ -640,6 +641,7 @@
 		reg = <0x71>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
 
 		sff5_i2c: i2c@1 {
 			#address-cells = <1>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
