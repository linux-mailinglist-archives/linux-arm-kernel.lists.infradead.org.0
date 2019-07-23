Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0499F717D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7O4L3B71GAa1hXIzHZ1rJbGMKdGmh8Ud9rJu66eUVcs=; b=knH
	xPQGa6VtJQAVQVfqHiXwqb8lAiHjkHqa1vmBVXNVYEL45GeJtEKBvBRsXSVJ5y2E9bnrMDxLYPdW6
	eKyKD/O29J5nrnzbNfDZhXV01JYWhAQEu7TzoLly6BwoznIMQm+07zJFKDepZI4R1CpBccVdneGUo
	8JEF/l/KvAnc9y7ZTXz9awWt9dwhSavGgPfTmE7zEhuyohvJqE9PCDYVAmskwW+jZHQnZ2Lk4Q1xD
	5HdLOp+As0957EIBd12o0GycHB/Rj2+5OLT4Ikde2tY544490kZ4pCIqSPq381JHCkReYQRMQvJbE
	W+qnWR/8WARab2rovHYMpts+rj5MYFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptdZ-000682-7D; Tue, 23 Jul 2019 12:11:21 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptdL-00067C-O0
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:11:08 +0000
Received: by mail-io1-xd42.google.com with SMTP id z3so81313222iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 05:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RfcQDeXv3vi4x+f0TWtpD+QCoOrOE8bGEkTmKPL9PsM=;
 b=qPkyr+PHSqzeDPM0m6/PNEJJas7OaoN0n2nFK8voa4Ev+5xSfB+4F6dk2pLlcf+9SD
 47YTXzrFDZYE9z5UPwms31LN578noNIRHJ1j656eV2gUYqu171V2SAoP3p4RDjVv8yOC
 hX+pyDhufX8wiqNxJolSSKvmmwtTbS5dgM9r7ls1tGgbrX5+gFtm/fhMm5x28eB4KOMD
 PtxA/fx5V+AcPfIQhqJJmhDXUsMPZ7QBPnPPEESul+cH0psWJ9igkeNKRLPjmOScrP6B
 9BL5So9kdxdQ3hGt7IA+D+NvSlo/cb8PGK7Rdr7GrfgYh5cr+ylx4jeJNOM2GwDAs7RM
 r5rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RfcQDeXv3vi4x+f0TWtpD+QCoOrOE8bGEkTmKPL9PsM=;
 b=Z8o1BBeTL4Zsn0ycQ+INitdzUWv7Vntjm1jW479OZ7jX+5YNyELhvDHOT4y0F/9I7B
 BXsHOkPqE+xE6pubCM8Vz1/Iuio/az2c9xYVTbOOq9qEoF9jOmCYd671IvGsJOL0EKct
 sFZlM2Yq45Nh+q0mhWUE/xLxtu51O8YLDMWQ5dYUN2Nw0y3oRvddng9Er/vyZsNPowFM
 SPuKYgGDoRr8EDkktdIzD9cvXP0G6oYJtisq7QBcz9BmD3uxUjgxn1eznksNHeRwO5nG
 nyQ5rDyRPOMxe8PcLaAzNviLjgdhz6TOubtMrA0pB+3fqm/L1B8kGVbpP7HNHAtCqv2L
 86vQ==
X-Gm-Message-State: APjAAAXxtnFk2DjtGY3Nqp4XzZF/0lvGDwKmbjV4jL7eqiOSh4HiPMPm
 0eZ/SEtH3vdPjZsSn4fjjvAzqm99
X-Google-Smtp-Source: APXvYqxkztg/xfJufiOkhmGbLxOjIO5U47Sjx6Mzk5DuGLVff8s8gwJqzW8JPIUDEY8r9zVDS18ZsA==
X-Received: by 2002:a5e:9404:: with SMTP id q4mr8566734ioj.46.1563883866034;
 Tue, 23 Jul 2019 05:11:06 -0700 (PDT)
Received: from aford-OptiPlex-7050.logicpd.com ([174.46.170.158])
 by smtp.gmail.com with ESMTPSA id k2sm36656076iom.50.2019.07.23.05.11.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 05:11:05 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: da850-evm: Use generic jedec, spi-nor for flash
Date: Tue, 23 Jul 2019 07:10:42 -0500
Message-Id: <20190723121042.28634-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_051107_806799_EA97F1A5 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 adam.ford@logicpd.com, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Logic PD re-spun the L138 and AM1808 SOM's with larger flash.
The m25p80 driver has a generic 'jedec,spi-nor' compatible option
which is requests to use whenever possible since it will read the
JEDEC READ ID opcode.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/da850-evm.dts b/arch/arm/boot/dts/da850-evm.dts
index 5b2b1ed04d51..f2e7609e5346 100644
--- a/arch/arm/boot/dts/da850-evm.dts
+++ b/arch/arm/boot/dts/da850-evm.dts
@@ -281,7 +281,7 @@
 	flash: m25p80@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "m25p64";
+		compatible = "jedec,spi-nor";
 		spi-max-frequency = <30000000>;
 		m25p,fast-read;
 		reg = <0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
