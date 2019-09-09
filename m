Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053FADBB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f0UXRItUTPsjTQewmmA5i+HEO8DreOhPBXcdX9kNgrc=; b=uPUYbN3YFRsW1CW7NTnx+EyKFX
	xhvwpEzVliLaiWc/rJoYOyrOoMSnt8fjx1UqZyQ2wf+hLsaXyILCUkAW5hjlM/XQpeqF/odf4aCtv
	zTbJe3QsgMF5VCzqZbVAF3p2MzHgaCbl+99gyQHQXNHMnaVjpvC4zyhxtSUXwzoAWWFEqWIhDEhjf
	zr4ZuzpddhI2oGrq1A9OLneT2wn/JZjPWjW1aOrKIWLucwmU36WGjIYipgNEr2tgmkepih/0LirVr
	uHC6JMK0lROn1YAnE2Sui2wHovc1jIZ9v6I8o+8d7cw6xlrIdweFUAYThaOQJ5eu/qEtkY0rDECVK
	6FurTlFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LCH-0001X9-Mg; Mon, 09 Sep 2019 15:03:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LBR-0000xb-0L; Mon, 09 Sep 2019 15:02:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id l16so14181627wrv.12;
 Mon, 09 Sep 2019 08:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zWgZzxa7s7UwpFTcQ3sR+RE7GhMC4HUd7wnY9usj7WY=;
 b=rl13LvTv5slN1ykkacXuDEJNq+bmzXb5EzXmYi9NdskTB6cCmAcQUe23M1VAslyAmM
 P54wSrgR1lnaXYUb0911Auk9LS8tRdoxMSSqVGdYamzMjW6xxJwcZSiDfSgP50P539Qd
 0aHCsN9xLsYX59bvrfq+qPpV4/U33dEurc5EsNDykBROYO9bFIpLqcgZ5OJ5tnV2szuy
 OxQ0Q/FsPiYQcrK0CPA5DIJjeayTi9l0E9i9ynz5U98FFt+YhjHRdRPOpIggGqsMp3dn
 J2JNtgttzshsG+is6ua0vXmuExa/F8G7wTSwBIMRrPDokAf5EBMfEFVBSN7pPwAvUibe
 lJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zWgZzxa7s7UwpFTcQ3sR+RE7GhMC4HUd7wnY9usj7WY=;
 b=tMrj+l+fgoTEIYrch6Izjnlz4mejqgdUjtQgna1CwquE7K5p4XEPg6VgPcArlDY9W4
 9dGle59PKQuBdGlKPR/4UDMYhX7fOB39UubcwSkSW50JXSKACz4rpIJAKbwDXNaIS8On
 6cSFJby4TQouJu/nsuGtuZhFpcFHOg6qXpdOdkLs5cfnG5sOGDVaQgaUBvld9eFWdy+x
 Wp1NIz5qZ7KRas+WVTUH7smPpw/nQY8VJ+j2O4P/BX+cygJH9vL+HpTOJcsq8FkY+Y0/
 ii6PIYa6kFrkkOjKHPLg+HZG2KQgOLf7k5D7vOZvkBSYTO/inDnNTql2hgNAVIPykh/5
 +s2g==
X-Gm-Message-State: APjAAAX7SLlt4aFNrkEiWViiz5CgqJt/bo8irJmSnFmHS3DYotyzaPbX
 q52lDTO80sK9ZSfSwb+o/bM=
X-Google-Smtp-Source: APXvYqzSYVyCPseD4bxHLDkzFaDr/7JihKFccFWxN6T2kst1FybqCjxiTv6NGRRIjFWDi138SQXwjg==
X-Received: by 2002:adf:f812:: with SMTP id s18mr20612825wrp.32.1568041340822; 
 Mon, 09 Sep 2019 08:02:20 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s26sm27755397wrs.63.2019.09.09.08.02.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 08:02:19 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] arm64: dts: meson-gxl-s905x-khadas-vim: fix
 gpio-keys-polled node
Date: Mon,  9 Sep 2019 19:01:22 +0400
Message-Id: <1568041287-7805-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080225_046986_1E5B8676 
X-CRM114-Status: GOOD (  11.64  )
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

Fix DTC warnings:

arch/arm/dts/meson-gxl-s905x-khadas-vim.dtb: Warning (avoid_unnecessary_addr_size):
   /gpio-keys-polled: unnecessary #address-cells/#size-cells
      without "ranges" or child "reg" property

Fixes: e15d2774b8c ("ARM64: dts: meson-gxl: add support for the Khadas VIM board")
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 5499e8d..41be2af 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -33,11 +33,9 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <100>;
 
-		button@0 {
+		power-button {
 			label = "power";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_LOW>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
