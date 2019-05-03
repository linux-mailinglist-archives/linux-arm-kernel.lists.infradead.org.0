Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D3612A48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2QFUHG+iSKm9FalgybzfDUTJq9SBfHciQLUQAdhRlhs=; b=HJS8oJjwlraEZV
	0ejubiWN6zKNUAXdbyf8R+d2NOax60PU0wGG9nafvUuaN4Kk75T7lx3eEWAMPxs1EXG0HIOwMMi42
	6ddiCDNcpv2BMlW59OzLYf7jYXb7L1waBzy293ZhjhcHKVxyp72bSOFzbTlyBXmmKkuYnx3JkDF09
	2hc1jhhIQPw2zXVPtMS8x1xy2CgSt/cjgQo9sVrxx1vKKH1h9y3PFM6q0Xt9pk9NqRcWPcJQ8LNvc
	MfA4SOR8PfUN2dSxcHyrDPiB+zl/J3fz5H+8W90bzbYYYjmn5cKa5DZkoIAe6/ot7kfOe0p0VdP7i
	2KQNqrkFikE8L2Hc2edQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUI9-0004xA-Bw; Fri, 03 May 2019 09:15:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUI2-0004wl-Fg
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:15:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id n25so5816173wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 02:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H4MP2EuBBV8F+L87gAV+VVeC6FuZ7A9Ie58x77Jd4DA=;
 b=fBegs+czbUd4cenk25abmkj/0agBb3A83K482HJH/V539eZouzfSyBycDHcXG4dfu0
 P/5c2oTcJixd570WZfnszYWUsYnJKTyZ8XtuP/ADUHh557rpY0x6CteczGxL/DvIQLZB
 9N97pJ5rwot575rN64NnzcJJndxpDpkDolnmtmQC9WSKsKlpjbXBSZKWRTEeYQ5JynJr
 XGV6qA6W29e48iQ3QNeQHeY/IHOi0wbIkptlir4ym0Hg9MsD/DXk6bODFuquvHIhrmv3
 xucbWDEm1HJpQnLolIlb8fH+MJSF7K2P/cd/sbC6u3QXlmVh98SBRtU7yF6BVLSPW2cT
 Mabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H4MP2EuBBV8F+L87gAV+VVeC6FuZ7A9Ie58x77Jd4DA=;
 b=oHBZ8Wzumo6xCX4wlOdPl3oDcwUX2L29sqQAbB8TLE0J9JekJutaayG/A4GlQPRN3S
 YfMxqvMnE/Q+A3Mvww6sBvcNGHX/8cBsqOweTWDGli76XP3t70yedZMJhoPZEpxYXgzQ
 7gUq/HDE0RlJqy6kDVo/vrZS5yUK9fz8l9xAmxhZpBnZJbucO0HeLsF3NRkqULcu7zng
 aSJj8Iyli4UjKjp7sk01MlLXFu636eJFmnkIIMFI031SNhZpMkQ13k3ukUZTdHu4qnat
 S8GDfJ0quTw4yhA26jyZrep3Qtx0SZCm7GAZEoi55LPXuXtqchDu/gHdg7c72+Fsdwxt
 OTKw==
X-Gm-Message-State: APjAAAUrK9Z73ouNy2a84u5kFxU/8cdb6qKlXtuU0IU/7ie1aZmhhWCz
 anWI7bAKWz9hCxfh7D5gZKY=
X-Google-Smtp-Source: APXvYqzKgaVg7lZU8MuOZ4oIJ3hk0VTUHGSAvvSxK3pM6tKCiX+o0c0tdOPuyhL2EZAzTQj9BIXXaQ==
X-Received: by 2002:a1c:1903:: with SMTP id 3mr5385920wmz.103.1556874932134;
 Fri, 03 May 2019 02:15:32 -0700 (PDT)
Received: from SiBook.guest.pepperl-fuchs.local ([80.150.243.190])
 by smtp.gmail.com with ESMTPSA id v184sm2346870wma.6.2019.05.03.02.15.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 02:15:31 -0700 (PDT)
From: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: [PATCH] arm: socfpga: execute cold reboot by default
Date: Fri,  3 May 2019 11:15:07 +0200
Message-Id: <20190503091507.6159-1-simon.k.r.goldschmidt@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_021534_572156_A2D1EDCD 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (simon.k.r.goldschmidt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Marek Vasut <marek.vasut@gmail.com>,
 Dalon Westergreen <dalon.westergreen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This changes system reboot for socfpga to issue a cold reboot by
default instead of a warm reboot.

Warm reboot can still be used by setting reboot_mode to
REBOOT_WARM (e.g. via kernel command line 'reboot='), but this
patch ensures cold reboot is issued for both REBOOT_COLD and
REBOOT_HARD.

Also, cold reboot is more fail safe than warm reboot has some
issues at least fo CSEL=0 and BSEL=qspi, where the boot rom does
not set the qspi clock to a valid range.

Signed-off-by: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
---

See discussion in this thread on the u-boot ML:
https://lists.denx.de/pipermail/u-boot/2019-April/367463.html
---
 arch/arm/mach-socfpga/socfpga.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-socfpga/socfpga.c b/arch/arm/mach-socfpga/socfpga.c
index 816da0eb6..6abfbf140 100644
--- a/arch/arm/mach-socfpga/socfpga.c
+++ b/arch/arm/mach-socfpga/socfpga.c
@@ -85,10 +85,10 @@ static void socfpga_cyclone5_restart(enum reboot_mode mode, const char *cmd)
 
 	temp = readl(rst_manager_base_addr + SOCFPGA_RSTMGR_CTRL);
 
-	if (mode == REBOOT_HARD)
-		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
-	else
+	if (mode == REBOOT_WARM)
 		temp |= RSTMGR_CTRL_SWWARMRSTREQ;
+	else
+		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
 	writel(temp, rst_manager_base_addr + SOCFPGA_RSTMGR_CTRL);
 }
 
@@ -98,10 +98,10 @@ static void socfpga_arria10_restart(enum reboot_mode mode, const char *cmd)
 
 	temp = readl(rst_manager_base_addr + SOCFPGA_A10_RSTMGR_CTRL);
 
-	if (mode == REBOOT_HARD)
-		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
-	else
+	if (mode == REBOOT_WARM)
 		temp |= RSTMGR_CTRL_SWWARMRSTREQ;
+	else
+		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
 	writel(temp, rst_manager_base_addr + SOCFPGA_A10_RSTMGR_CTRL);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
