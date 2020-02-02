Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201BC14FE57
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 17:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HfGNfmOumo2ObxwmDGtvh7HtDtIsmAEBBJzCjkQnYzM=; b=f6V
	WGV66it69IeCXsI9J9Uu+mQtkHbHjxPg8VhVGr3IaD6riDY+1yRdIWLGE63rJMZqbQtvQqFny6icp
	VYXpcVW5OASDZInA0tieDaFaqgcjlg7lntgwJTmKfZ95kmKtx+Fq/go12/i78N1Vf1gGQQHRKFty4
	AYBDQ39mfklJjFdDu4Kr37G8aZJGsQbQ8I+UQcOMoUAIWwZW0H54jVhyq8IfnZCLSxi7QaP116gc7
	TBqXNsXk6zMrp+jkb3Q9B88cH+ZLNgdiD2kwA6ZQ0It3aqcbB87pUHcycCmBGnqFuky+3XDyATj1h
	4JEHDv+t1dnP6el7EXeCLgZF3kjR9PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIHp-0008MA-3X; Sun, 02 Feb 2020 16:39:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIHk-0008KY-Mc
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 16:39:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so4863861plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 08:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=Gk+4kc7bcxmwm9qBtI8zt+2lMveHew9wDQSMTXKODNs=;
 b=u340iptusySS+Qerd7xdlTZcG85z+DOqIyNwWblPk+wKd/mjQdeyRPNZ7tBZILZJIU
 nLV87YzIrIaRUKOelw3zWhxGoxtSvfreF1prYR5Pq62u0z8YNovPC9zt6nh2cwbjH/xU
 CghTk52t3ZfZA8TdMu+FpUYi0PWJGQ4TMEGJ7kX3M0Daqaj/hkxY+FE65VS8OoZyUCut
 j1ag2/RLZSbf270ZAbGE1fAavbl4+qN/li3DtKCKBYrz47bzgIM1fQN9UTVdjA/2sG6K
 wExtbreSjQ/f6DMKTK6vwlgBuwBWv2F+yMOdtPnvi/bNPyBoJmFKblFcDAxiEpA3ndUt
 sAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=Gk+4kc7bcxmwm9qBtI8zt+2lMveHew9wDQSMTXKODNs=;
 b=FALN8ABihGiv8W4RZpkp65SKmvBb4mfYPbgKF7jO21Yqx5V9hxsBo26qVfau1Ro0x3
 PpGhBHU4/6hhX/WWyOG/BEJ+a+7YRxjoj+x4fTJfaaMpdIT6X4m/9It9xJeUq9es2zuP
 Y0rOF8nM9gu6PAYS5e81gmW58haDU/Re6WR9xKPyty4P35+g2f6fomd5/BiaSO0MRTwY
 2NMN0y6LoyLfjzWN9g0T6cc7VRK1kHhhB/cDeXqcW2ltmjFJpoyiawAnlPwkji3gsHhg
 iUrzHGwpMnd0TwqioD8ygEBSUFjdMP3aw1MclYjvgLQQ8e03akfLyVgEudR0FCjjduzT
 sVRA==
X-Gm-Message-State: APjAAAVTJrr1LtnId/6nF9XMWwieoRvUUOpeMYC1cIEVJPIoIsDGGAEU
 ADcuBk5EVvXFnsbvv2wCA24=
X-Google-Smtp-Source: APXvYqwHyC+cFz9eR+nX72AmYJ9CsrQ2dTwB0OTb/PsM1rItR9jKyRyX+djyVfGzuApXhbffE2IlLA==
X-Received: by 2002:a17:902:ab81:: with SMTP id
 f1mr15266267plr.5.1580661582239; 
 Sun, 02 Feb 2020 08:39:42 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k1sm18045122pfg.66.2020.02.02.08.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 02 Feb 2020 08:39:41 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Joel Stanley <joel@jms.id.au>
Subject: [PATCH] ARM: dts: aspeed: tacoma: Enable eMMC controller
Date: Sun,  2 Feb 2020 08:39:39 -0800
Message-Id: <20200202163939.13326-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_083948_737676_A6B44E90 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enabling emmc without enabling its controller doesn't do any good.
Enable its controller as well to make it work.

Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Joel Stanley <joel@jms.id.au>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
index ff49ec76fa7c..47293a5e0c59 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
@@ -132,6 +132,10 @@
 	use-ncsi;
 };
 
+&emmc_controller {
+	status = "okay";
+};
+
 &emmc {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
