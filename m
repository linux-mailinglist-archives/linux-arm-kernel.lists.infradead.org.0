Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40ACADBBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AFBWd55TcPTVsJtIme3NQiFbZQeLtem55cLnAEhwVeg=; b=uwqfQ+yaVfPqNHkfkAXX4u/JHE
	cvXrF2RGOqLQxJzedqmbEralqrzhwJCLX2M7rU+ygUCFEOo3o33WacDY+qqsNcgUeYTUeUIYJjBsu
	26R5p3FlHesv1NDjafcAjbypfiAnWOLkSD4x/26oyZ+LhG1B/0Jp41rgw3LQRsuimTHTX2+MmE6RT
	eSwBMK4HpYkI/KLC6U3/JYK+IhYT4jQqjxPdyA8lLyKl2AK3WiXrE/IXE1XydzBvaGHPDgYxWjfhE
	GbsEd5FlvA5uPwas5UYhSQaTMfZHzfGPI5KVMJPofb+0KkkBRvlM3NcjIHlmvxDGnxO5keAOMeOi3
	udl0MUuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LDR-0002dT-I9; Mon, 09 Sep 2019 15:04:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LBZ-00016E-KB; Mon, 09 Sep 2019 15:02:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so14227237wrx.5;
 Mon, 09 Sep 2019 08:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PZPdLQeLOEyJtkoSAS2YhSEAdoTAaUvZCMb2Qa3U3f4=;
 b=QFAKdO2+MqvIwbO2LZ8+o2T69rCPUwEqSgPmIkPR9J08dm02Y84WAZidtVqsBtLIxd
 /fIKRGSbKAkpWXv3JMLBUGprFPFZVhI1aSVS/VCa8IVxMWoET8/5PaZZF3p97MMWn3lZ
 2sw+5tlyHn7fv1pH7nGrj5e0luBJtq4a3x3QHsp0xXiomSEKj7LVJ4+PC8KwAyHMLTAA
 hMF/eo+znis+fYXcM/HkLLbLCe7CMqKiAs5t7r5Pg03rJuulmXXGEs9qPLuTzOssKN1F
 yl9jpIzXnl/soAYoonErCvjQfwHRQlegZgQHo6nuCUyQlnGH3MhCjzFaPf8yc5TLevc/
 /KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PZPdLQeLOEyJtkoSAS2YhSEAdoTAaUvZCMb2Qa3U3f4=;
 b=HP3k/jcM0vUjcF/bqTiyecxG5pLQbuxOhbNQnFQ5Osw0/ymmI03CK1IPu8OOiPRJ7N
 b0qBONlfj04go+VW6SQzlHpF/D6mR/h0q7LAiN0FIk5ILOHMl5iC98l03Pb1x4I73PIr
 yMdNo0fUzO8cgr8t0NXVBF0UTOT+4SuJFkYKLYewaVTs8RW01TDUb+V7nhJoxOuopbqR
 lN4dTmddVeysHrdSGxj0X4b0uOYHEh4VPCR46C8DmkTVA/9l+xlkfk5vg5hp1qK+oUUK
 FahSAVVOsIGNji5ZXpWyCfuHzlwvRH9n7pB3PLhl3sG8Zcz2cNzTmukmYHSZqEBIpo6H
 nJWA==
X-Gm-Message-State: APjAAAV+O41fc25FffMKBEZ2RUppd+BwzR7h0HIHbq5+6dEmb+GalIUn
 XT9aOI2ag+4SdhGZYacg1hM=
X-Google-Smtp-Source: APXvYqwkXa05gD+0n/Wm1U/GTv1nqjlBkf/38URHAZzWapXaKegLzhdiBoCJMBhOXltgJda6pNiYzA==
X-Received: by 2002:adf:f3c8:: with SMTP id g8mr10269237wrp.58.1568041352095; 
 Mon, 09 Sep 2019 08:02:32 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s26sm27755397wrs.63.2019.09.09.08.02.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 08:02:31 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: meson: libretech-cc: update model and
 compatible
Date: Mon,  9 Sep 2019 19:01:27 +0400
Message-Id: <1568041287-7805-7-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
References: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080233_834196_CEFDD44F 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Shorten the model description to improve readability in some app GUIs
that show the string. Update compatible to be more descriptive, using
the format of the LaFrite board in meson-gxl-s805x-libretech-ac.dts.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
index 4b8ce73..e8348b2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
@@ -12,8 +12,9 @@
 #include "meson-gxl-s905x.dtsi"
 
 / {
-	compatible = "libretech,cc", "amlogic,s905x", "amlogic,meson-gxl";
-	model = "Libre Computer Board AML-S905X-CC";
+	compatible = "libretech,aml-s905x-cc", "amlogic,s905x",
+		     "amlogic,meson-gxl";
+	model = "Libre Computer AML-S905X-CC";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
