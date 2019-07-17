Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2B6BEBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7GPUM3S0XMfO2fw2DEAoUKDT4dt+1eQTlC+MO67uD/A=; b=i6C6QGgPSVa7N8
	sp3RoK5ROyqCyHHyTnR6gfd9lf98+QNOUQKjXEs5HqDhSI/5Zde39+1/r8GOrqSy3GE8rZ2ny42Vp
	0Fcpe26PdP+XMyRXtyDo1/x0HN+cCcfIKOKsLoIWNrTFjQxicoXSQb9XcnfXE2CXL3CmKXor63gw+
	/hUzhRqVUIrKl/EXgNwwCY4PRRBwMzB0+MXuSlwlmL+ltnh225SIQQVtd7Gv3XxpG7lFfeq25jb6I
	Kxbba0NH2+u9kuaPclF73lPEALkQCucleZW6mv7ayJ+6UKVC8N8Sjr2nkjldA0AOqgwieYzvKewSZ
	52xf/e0WbJKahdL/fYTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlSe-0001E2-C6; Wed, 17 Jul 2019 15:03:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlSP-0001C3-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:03:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id az7so12109249plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+35wY4n6TRGBA25+7fjzjSlCN1Rhjq9o1vYnjDLMlM=;
 b=VkkRlIN8iWWTBSr2SSVDfUDbi3S8rHZmETaBALoYvm0uoLEHS9lTpx7rWdKPwUYCll
 cFSr4ZMYCOp8bo/BprPz75j5hPk7X6rAjE5geNVNx+xA2L7B4oz+sNo5M0P4t5N6LX58
 TVtHHSXyMuQozCIOz4kw8aCVkeLalvCcLnRNRoSckmEPW9Ts2+UjfcDD4TWX2s7ryWa/
 j3aM6FhZuFP+riAQ9K/aIhSuvet42KUH+t2KiOWUk/Zmw6sDKkpKaH9YzWDDuH6p0IOb
 6omt3KOrGCEo8GKuhsPmIyGgFt+dd/rS7dMkMtbyfe86a2qCMpU2gXZYQWDjNngKMwar
 AMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e+35wY4n6TRGBA25+7fjzjSlCN1Rhjq9o1vYnjDLMlM=;
 b=YHISjFsXcHEwMUM5sNQwSw49u8qpcG0fnbp6jV/duF50N8J5WXkkEP4jg5m0+jquzG
 yMSYSGsxh5nPOR+Qpcv4m/HLBrPrPHH+csrmgTsb3JohwRVxc6zMy3ngLhEt8et1bh+I
 VvakFQfznwCRkxfgMogJG0+X5mOlXDrKsrM8LFgDxHlzgnCiRNI24WoS5Fb2VPqy/JC5
 r7ApIpWEqfgUzzY0LPsN/P9J2TCz/B7c/yy/hoIdJidsGOXKSnDcixy98aK2cKfo14DL
 TpUFuoitsayLhz3u2B4ACCgyc179CwD7fHNvhmeIL7VJvl3yGeTJQj1YgTHeABf6tNlg
 McWw==
X-Gm-Message-State: APjAAAXX5q7MLqvHumn52atMwtCMCaIMm/PVl06QwpSobW8ZXZV0kN63
 EmIUPh4xNzEAWr3gVd6WGdkyuyPa
X-Google-Smtp-Source: APXvYqy7mQH4W8sbb/Iy1eG7LeTPa5Sk5gMkSlfKVdCrI7UaDwrnXGmpietbpJAA8uI8R7gBpbiDng==
X-Received: by 2002:a17:902:bf09:: with SMTP id
 bi9mr40905784plb.143.1563375779825; 
 Wed, 17 Jul 2019 08:02:59 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id b37sm44728961pjc.15.2019.07.17.08.02.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 08:02:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: vf610-zii-spb4: Drop unused pinctrl_i2c1 pinmux
 config
Date: Wed, 17 Jul 2019 08:02:51 -0700
Message-Id: <20190717150253.20107-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_080301_259704_36687C0D 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pinctrl_i2c1 pinmux config is not used anywhere. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-spb4.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-spb4.dts b/arch/arm/boot/dts/vf610-zii-spb4.dts
index 9dde83ccb9d1..77e1484211e4 100644
--- a/arch/arm/boot/dts/vf610-zii-spb4.dts
+++ b/arch/arm/boot/dts/vf610-zii-spb4.dts
@@ -316,13 +316,6 @@
 		>;
 	};
 
-	pinctrl_i2c1: i2c1grp {
-		fsl,pins = <
-			VF610_PAD_PTB16__I2C1_SCL		0x37ff
-			VF610_PAD_PTB17__I2C1_SDA		0x37ff
-		>;
-	};
-
 	pinctrl_leds_debug: pinctrl-leds-debug {
 		fsl,pins = <
 			VF610_PAD_PTD3__GPIO_82			0x31c2
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
