Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4218EADBA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nPrVetYFj/sI8kFqGGXdF2hYs8HSkWP5XgIZYKqe6KI=; b=HAnZZSiQrh6vFD5uFrLRcRzCUC
	DYZndvvT/7cWHhiQ0br8PWeSzetS7jWlrNvbwpc/+OtxlCdSXNyopwMm7lqTKo5Ts7r1Kp7nrd3nT
	U2psfiNeKR3563tRrIogspxCEUixxBNhPHI2Ge3v7Xul5XlBZhhB2/YkUkHE/W79ACszUDfBqEb4f
	8Jmg/jVp/9Cu99oaPqEGIpHxilGcafWV5OfeVCv4/PGv/QfpvEJPwUMUwatnOiyzMZP6ScyVU7qIP
	nYGzDKNB3xxjxZujoNvrviFpgQg2tI74uT+XvHMd2UAonzKAf75hyhafBR9aWRzL0Eidpi/1Z2jbL
	KFWIEADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LBu-00019S-Sa; Mon, 09 Sep 2019 15:02:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LBQ-0000y0-Bv; Mon, 09 Sep 2019 15:02:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id l16so14181787wrv.12;
 Mon, 09 Sep 2019 08:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J0MIJE6Nxl1hvH3C3OM5A0UBuuL5jPZmEXEDYcWfZcQ=;
 b=fOaUNBRlhtO421tZqNgdsHqwo014RGWh0CMAVSwQ5rfhfe8a2p7xbpi1RA9tPyhC/0
 b5S5vsZW2TM5ZWJvrbOZFXCSWTNpPz999UoQaVE5JZbFwnxNAbC8M9culoQkDkZYNMAr
 nXBfpc8GVayo9sNH6Ij6wJ5OtB6g5llsTlVRjzHPtRn8oWLxkRU8qK9n/1qv2kGTbJwU
 p++1sD5l1rSTJZbsI/CzpZsyTwQLfdcSlHxeTqcTbbQ1CGOe7oyKdu0BTF4Ql8YJwC8K
 zyjEXNI4pQZouYiVqeawgtV7a5ObmomZcbWfUF6YLdH6IGp0RVfpN09WG0IEDbvrIDkZ
 c5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J0MIJE6Nxl1hvH3C3OM5A0UBuuL5jPZmEXEDYcWfZcQ=;
 b=cC9Ui/JEj9NZOufrNjrvHe4zEqHx2sERR32RUz4vB1daCJf+HXLHFx7SHNgzUR6Hwj
 Zzc6KqMPL7i3KXh0tUNYRul4u7q8p8hU7AQjkp9ffizstizN722WBZD4kpiEcdVPDspn
 TUiDn47cznY07wdsJFSEMj9yRrMXWAOgoWHerpQZqULAPa/mIDkQ6OTZt9se0eZxu1Uq
 +nd6H5J7b5iF9MjC9soFnMHKRi72ynoaoxx0qZEUxCykfTajikWSrRyf17tqwr9uo+MC
 tZtDvoih4ySCoWAtND0qFbJPg/tacwx1cCMBpNeDhMGzpNZDjeXPXYtlBZ2ZnXgwzbVd
 w+mQ==
X-Gm-Message-State: APjAAAW5fXSANq9e70HzrVn12iP8Vb+x8JGgpFYa5hrkyTKY5L3Z5a7T
 WNOIttyzClINYy1l05j/qjs=
X-Google-Smtp-Source: APXvYqwj34JpLBvf3nmmw4XC7VmKPtc9nqNLZYzTIOYcHNTEyllsd+TvEekzhHobqk3HodljNgJ0gg==
X-Received: by 2002:adf:f011:: with SMTP id j17mr19674585wro.131.1568041342945; 
 Mon, 09 Sep 2019 08:02:22 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s26sm27755397wrs.63.2019.09.09.08.02.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 08:02:22 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] arm64: dts: meson-gxl-s905x-khadas-vim: fix uart_A
 bluetooth node
Date: Mon,  9 Sep 2019 19:01:23 +0400
Message-Id: <1568041287-7805-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080224_403410_917CB579 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: dd5297cc8b8 ("arm64: dts: meson-gxl-s905x-khadas-vim enable Bluetooth")

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 41be2af..2ab7d84 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -190,6 +190,9 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
 	};
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
