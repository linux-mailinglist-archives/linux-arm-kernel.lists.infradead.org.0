Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146971AFC83
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVMHKHH9SYTmsK7o3C+wllqvdEHnuHanvRNsJNAudQ8=; b=nIfBzXbn3gdiAN
	ZhS7sfVg1XsyhjmXjvOPcYprDfOsL+IPQEtNrMnFlIawD99e21b9xgKCIo5n9p7dNTSu9frCqieRc
	WrIx6JMgxTOMq91YHvJGzCB9bZdGhclCsh90p3Gx+sctP1HniwcOujePh3U3q6Hn3wIVCs+yoX4vh
	ORv8U3lYn+ltTVxCJZUSdB0Iqkz/WUdauKb62t7359rMI1Ed46zmnfRIQi44XhOpC0ok48pNk4Y2h
	SlupZj0I9G64RQ6oMu+rgx0YNuchWCyxF01h20ap3vcWrKtispnuHPamwpUPWKWyC1O0x8vQUijOk
	BtdRdMX6HOfPs7EghZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDUE-0006wM-Eb; Sun, 19 Apr 2020 17:12:06 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQj-0001rk-FZ
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:31 +0000
Received: by mail-ot1-f65.google.com with SMTP id i22so5945840otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HpigmDdLGgTxwi4cNTPUYj5dEoa36081Zy4k4zJz1VY=;
 b=rt4sbBQdwfVkKHRvBjsnIrEnvcAkHVBIPrPXYh3bUHErIoIrtI10gDYo0YIc3y/PoD
 yEAU59f8atFiF3kRXh/B7lNyxKyyCTk0xZp3otgmJmz67mf+xqp2JzliGyV6pkFwWERU
 TJXqxEPWfqe9tnkDLTnvojSVF+gPktTrGOl6eCkQvkqLi8Zei6F3mSoUmbpzyT+K+qNE
 w8ANCui5xXw32WR8eNRahiHD+Zy8cqwEUBfv+D1gzcMMIab69bMWcvRUwqY9lrcMHI30
 IAFtsUgg206OxuStxz07CN4i1Z202SzLbvIb2IMPvjvBcqsclrqDMbCr3EmZnNFe5dkd
 ZS4A==
X-Gm-Message-State: AGi0PuafVRGuZmL+OCZArAi4QMxYkvLW6mEAIDuBYSNcGhBoYTcbbL1v
 mf/h8F3v3yk3VkOenrd4TA==
X-Google-Smtp-Source: APiQypJgZQt1Jy5vrd9fOU0cBVwNlY4pfSaPWLayv3NzXhAUoYJ3R81Cc7lBObtyZw4FxEChoAE4fA==
X-Received: by 2002:a05:6830:1495:: with SMTP id
 s21mr6391348otq.38.1587316108297; 
 Sun, 19 Apr 2020 10:08:28 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:27 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 11/17] mfd: vexpress-sysreg: Use devres API variants
Date: Sun, 19 Apr 2020 12:08:04 -0500
Message-Id: <20200419170810.5738-12-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100829_662897_3BA96754 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the managed devm_gpiochip_add_data() and devm_mfd_add_devices()
instead of their unmanaged counterparts. With this, no .remove() hook is
needed for driver unbind.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/vexpress-sysreg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 90a4eda2ba2b..9fb37fa689e0 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -140,9 +140,9 @@ static int vexpress_sysreg_probe(struct platform_device *pdev)
 	bgpio_init(mmc_gpio_chip, &pdev->dev, 0x4, base + SYS_MCI,
 			NULL, NULL, NULL, NULL, 0);
 	mmc_gpio_chip->ngpio = 2;
-	gpiochip_add_data(mmc_gpio_chip, NULL);
+	devm_gpiochip_add_data(&pdev->dev, mmc_gpio_chip, NULL);
 
-	return mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
+	return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
 			vexpress_sysreg_cells,
 			ARRAY_SIZE(vexpress_sysreg_cells), mem, 0, NULL);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
