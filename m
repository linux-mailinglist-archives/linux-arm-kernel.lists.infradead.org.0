Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA8CD792C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J14HKF9qoOG1oEug3h//03TGSsHKwIbhEZl/9Bj80YY=; b=iWwxXUWSeKQfBr
	Bz70wBW14hB2JDBjluev0IhHfSkvtMPiM/SlBcMu3umPX6JfhOZBNQZGvZS/C6PR/HfMp7sBCV9tK
	bKWHBnNhvNtjkO7oNxIpU/t3u9Km2P7x2jErmHA1yHPHnLz3yXoPajNYrWedjYOTcp6QSfdZ55wvV
	eV+hcVxvfMUQ/yddFAGBSGaDHnvohae8n+VjnQUoKRWFezXbQ8xlRPDVoh5Tz0mfIxTAPFjvsdpkQ
	aqNQMX2eIFPCUC5xee08ND5+JnOnGU1SvsVkUJVayxt6YYmxNHnESv+MrtQ3nStFSxhkwX2rKrvZE
	ANRzMN3mbNVziz7C/c3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOBU-0002F2-LM; Tue, 15 Oct 2019 14:52:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOB0-00026A-Aa
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:51:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id j18so24232485wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sOwxqSgHZxMZdu9ssMgHTsDS+mnGgiLSMmbVloE6vbY=;
 b=ZXZGHlL63ydImQPyc4zgxHXLABtnTrA0ujmNUW/5fSN9oX2fgDJSdZct1rKiZq7U6w
 qK7ocDo8F6PsS3WS/8igClWmBijsp9y4xSSGTu2SDlfrwYyfYIHS8JSOqblUoAmiR65+
 lnvQvkShhanpn9Zi6Yl+6rkavRryE3gcMiUXT/irG7lJavQQr8AeLFoavXaFugKAvE8B
 /UzwRDzUCjBeORDi/EQ7rvWvuw5xQp9ytTFZhRMLxGNLfTlc30zm28e1cFAVH30R4xlr
 QIBVMzo5EwnXWkwhWgqcRGuEJeXdcq0BbrQ2zk0S9iLZuQJQhaWm98vxgoH5M+UfEmrs
 FG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sOwxqSgHZxMZdu9ssMgHTsDS+mnGgiLSMmbVloE6vbY=;
 b=FHDTFisx2SGw3zMrZEZDO5VDRBAsOOoGr00pq7KjjB19hXo30MK0CKDwz47wW8vu3x
 mn/ncUDKAsLbP0JnZTXuengXXmn+ofTUODTeqeiIvqE9aXrWPw8gNBOnBLBECEH8mh8C
 Q0vnlBszRjxBYFlfuUMD1opVooAAjSOA4duQPQ8mX/RQYhRlPSdwDDlwEmvaMBYip5Lp
 nWB+8KBRoMypcN4Xdf67RCX9W/BLxfR2/K6vGoKP9SwB2G/Px8f1mB8qK+xa+s/tyqhW
 U1EcI/pAvhMCjQnw/xBgS637ImSloisQHCbUXP6ljjufb6mapfTqZh2KaVSKVmMRbUYt
 SLGQ==
X-Gm-Message-State: APjAAAXAqlz2L/m1Hys8GmbXaLkT4wyGWMEPBYcCQ/M2rCS4GS4Jn8DP
 IV/M4hkupoWGltSrZsmeCP0=
X-Google-Smtp-Source: APXvYqz/BdsRzyqG3XrQgmIgTu/QqiScZaC1zr9bB3ppKgDcu54YcJ7GSRiIiKWZTmmy2eliI4ExaQ==
X-Received: by 2002:adf:a497:: with SMTP id g23mr14202920wrb.135.1571151112765; 
 Tue, 15 Oct 2019 07:51:52 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id n18sm19111771wmi.20.2019.10.15.07.51.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:51:51 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 1/6] ARM: prima2: Register with kernel restart handler
Date: Tue, 15 Oct 2019 16:51:42 +0200
Message-Id: <20191015145147.1106247-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075154_364384_77EB8D16 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guenter Roeck <linux@roeck-us.net>

Register with kernel restart handler instead of setting arm_pm_restart
directly. By doing this, the prima2 reset handler can be prioritized
among other restart methods available on a particular board.

Select a high priority of 192 since the original code overwrites the
default arm restart handler.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/mach-prima2/rstc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-prima2/rstc.c b/arch/arm/mach-prima2/rstc.c
index 9d56606ac87f..825dd5fcc37b 100644
--- a/arch/arm/mach-prima2/rstc.c
+++ b/arch/arm/mach-prima2/rstc.c
@@ -64,11 +64,18 @@ static struct reset_controller_dev sirfsoc_reset_controller = {
 
 #define SIRFSOC_SYS_RST_BIT  BIT(31)
 
-static void sirfsoc_restart(enum reboot_mode mode, const char *cmd)
+static int sirfsoc_restart(struct notifier_block *nb, unsigned long action,
+			   void *data)
 {
 	writel(SIRFSOC_SYS_RST_BIT, sirfsoc_rstc_base);
+	return NOTIFY_DONE;
 }
 
+static struct notifier_block sirfsoc_restart_nb = {
+	.notifier_call  = sirfsoc_restart,
+	.priority       = 192,
+};
+
 static int sirfsoc_rstc_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -79,7 +86,7 @@ static int sirfsoc_rstc_probe(struct platform_device *pdev)
 	}
 
 	sirfsoc_reset_controller.of_node = np;
-	arm_pm_restart = sirfsoc_restart;
+	register_restart_handler(&sirfsoc_restart_nb);
 
 	if (IS_ENABLED(CONFIG_RESET_CONTROLLER))
 		reset_controller_register(&sirfsoc_reset_controller);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
