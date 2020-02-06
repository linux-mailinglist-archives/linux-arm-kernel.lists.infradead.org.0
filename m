Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B2F1549E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 18:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY04iURyebig+Uufgs8R0yfNVENdD3DopdfdUYLxZwM=; b=aY61rxWQv2f6JQ
	k8eEeQWtiR5UAbn9khxASipHdDjCK7QkJ4uBEoRPu6cx3w4zgwClKIGTgHZjuL0cBSIf0rufBjVuC
	cqPK9Loz+TA7sU42GpKR+y3W9+uZo2RxLoPpL2mV4rrrKAdddFFogPImNOJfvujMDM9fl/yy9E+hu
	Uymg1isxXqWKpbBzKZ7e9agJNaLoGZl7v1ik7W/b7zbMxuEsgH8VK0Xy/fiMSFu2KFG9DiV6QMt5m
	1IPKyNNPXpiy62NmZFypw7er6fA2Un9qhQP8gOHZigDpeYemhkwymT2+zR2wiAS7MYANuqpOC2utd
	l31m0nO2PIaotp4WFXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izkYn-0002sj-TS; Thu, 06 Feb 2020 17:03:25 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izkYe-0002s3-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 17:03:19 +0000
Received: by mail-ot1-x342.google.com with SMTP id b18so6190095otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 09:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IeTZrdBP9Hf13GH1UBDM8f5f9+rl1pL1drtOnzJSoEE=;
 b=Au6nzfnD9JbIjuoL9LmDt9DO926XEvDDHsqD3l/D5SC7ZozTSJ+f4XOnJpbkDsYtG0
 eg5KT4+bF59pq5e9sDR4TQE74ywJzQpYY37KE8FlsTyf6aeunElkQ4SgL9N8tMkYsaN8
 ZVG5x3SZdso7y0fWUJMwFfL6OpB/8UCT8soltYwM1BXWAfWoFR9hg0bJZFTN6HjibXSp
 c95t2C/tXP1ot8+8xJOO4Q2koHI0WlH3RQ7wV5EWwZF6PE2qWyXqLDyz6EArzslT8yK7
 5+rBsMTNPoW/clqZnguEvtTjFDjVm3rHrfJRNuGsT3bcY/y/L1PKgxGhrMeJap+HJcZ5
 IFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IeTZrdBP9Hf13GH1UBDM8f5f9+rl1pL1drtOnzJSoEE=;
 b=Mc5W1iPUDumCXrrA/qHd0CrGyykNGMvc0dwVzc6TUfPLYm1YOvjW4vcOZOdQ8OHtWT
 SxJgm7ynmptplxv26T1m8V7/n+ONhq2Cu3B4H8G9t6t1wzay2BinEA/8wO5vJHUyMMAh
 g6VrsRbGY4K0GkdZHWfyyi5tvmsoLCYVSg0xWR8ZP42bRi8kULKkKHj7NZ0bdAkL3TZs
 htQthpk7AJI2n5BoNmfGOPDb7H91abQbCzv6FC++ts5J6DIOrv7AT+om2xazRo03cVT3
 +CStpiKf/z5O/3q3qHD4p0nVHA95awBcPIZTJTU1uNGViQ650EyMxrXHJy/yGU+LvMKh
 licQ==
X-Gm-Message-State: APjAAAWglZnFWsbZ0E/ph6M9Nu08Xe9uKjzlodgD84QLQYCvDxtEwHO1
 gtIGscHfUANi7iz7qWUxVMY=
X-Google-Smtp-Source: APXvYqzojO5LxaWz5TmWr0czHWvxHCGQ25CU390Jrs7j5DnAUB0SRjmiKdacElgXeHOX8NXFZ1Dt6w==
X-Received: by 2002:a05:6830:50:: with SMTP id
 d16mr24338717otp.166.1581008586834; 
 Thu, 06 Feb 2020 09:03:06 -0800 (PST)
Received: from Andrews-MBP-2.attlocal.com
 (45-18-127-186.lightspeed.austtx.sbcglobal.net. [45.18.127.186])
 by smtp.gmail.com with ESMTPSA id m68sm55687oig.50.2020.02.06.09.03.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Feb 2020 09:03:06 -0800 (PST)
From: Andrew Geissler <geissonator@gmail.com>
To: openbmc@lists.ozlabs.org, joel@jms.id.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: dts: aspeed: witherspoon: Add gpio line names
Date: Thu,  6 Feb 2020 11:02:34 -0600
Message-Id: <20200206170234.84288-1-geissonator@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <FMfcgxwGDDpcbrVbWGfkMRbZCLSZqpMM>
References: <FMfcgxwGDDpcbrVbWGfkMRbZCLSZqpMM>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_090317_529114_35ED992F 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Geissler <geissonator@yahoo.com>

Name the GPIOs to help userspace work with them. The names describe the
functionality the lines provide, not the net or ball name. This makes it
easier to share userspace code across different systems and makes the
use of the lines more obvious.

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
v3: added more detail to commit message
    removed linux dev-5.4 from PATCH header
    removed redundant status from gpio
    removed blank line
v2: added upstream to patch
    prepended fsi- on fsi related gpios
    prepended led- on led related gpios
    prepended presence on presence related gpios
    dropped pin_gpio_a1 definition
---
 .../boot/dts/aspeed-bmc-opp-witherspoon.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index 515f0f208ee6..2269c73b8987 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -193,6 +193,40 @@
 
 };
 
+&gpio {
+	gpio-line-names =
+	/*A0-A7*/	"","cfam-reset","","","","","fsi-mux","",
+	/*B0-B7*/	"","","","","","air-water","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"fsi-enable","","","","","","","",
+	/*E0-E7*/	"fsi-data","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","","","","","",
+	/*J0-J7*/	"","","checkstop","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"presence-ps1","","led-rear-fault","led-rear-power",
+		        "led-rear-id","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"","","","","","","","presence-ps0",
+	/*Q0-Q7*/	"","","","","","","","",
+	/*R0-R7*/	"","","fsi-trans","","","power-button","","",
+	/*S0-S7*/	"","","","","","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","",
+	/*AA0-AA7*/	"fsi-clock","","","","","","","",
+	/*AB0-AB7*/	"","","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+};
+
 &fmc {
 	status = "okay";
 
-- 
2.21.0 (Apple Git-122)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
