Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7438241CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p640+Qj0ePraDY1SPYlz0JRhSKaVoUEjU67xeO9csxo=; b=MtJqn/SqAOvm6T
	Xy+megXJZNKrZ3k8Y8rwjANb9i5tohZP0EXCeKPlMyIYVdGPRbw1CHLGQCzp7XQbOdCegMZr938IA
	Fz8J144DEoE9S3TvL2dTfehShzwJLymXu1CWnkA1xIGPvxl3dh6zHQFi6slTP9COmQYzDsfLIcnpG
	qHjyhjtEdyxsj5tSbVVESztmReFMCuCGxChs8G3i/vD6SacZurwt78Tl5nwjb2KJ8A/jV+3mpPUW2
	CHGPXmwEcM9kMLyfXk9DPXvK2QuZ1yvYsIQ3590whA2sV/a5gk3ZNrGyzCCdJk9e0EC7i+wnUOtEV
	FRCNs5ikByhnK0RxuCfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoav-0004sy-Hu; Mon, 20 May 2019 20:09:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoaX-0004XT-EF; Mon, 20 May 2019 20:08:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id g12so15706812wro.8;
 Mon, 20 May 2019 13:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e0VqE+rZMvBKHIYBXL3p+1cgiNolIPVKif3ndVE931w=;
 b=fAwHIQTNJ7LYfS+npQAVAly5KBNMIBkvINFdruuroIDO75vDaATN0YQ2foFWKpHzu/
 DSawlpfon0AAuxAVzkGqqLRAx1FfhXEyPs7azowQLJ3KSjmEd/Xcqd5Dq2PaLRMasqUG
 2hATUsp1o2StoIAtb7ijeSqNElRx/atHKiFy4BaN9tAgWgTe+MrYVuotpSbKKY8LqUmU
 L9Fg3pKbeMpAtHI2qKWyZ+om8x6v49RkQmW5mrsyk3WFtd+Z0HvrUNuCL9AbAz4d9hmg
 atEN0Y4vmdFCjDbs9ixH3va+1vSF3XTXR97RlQ/J1DPdem4pFEuQpNSxqLIuz7fQyOSe
 NsuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e0VqE+rZMvBKHIYBXL3p+1cgiNolIPVKif3ndVE931w=;
 b=PRNj+RvQf0I1uPYVYKdP7/gDIzLS3+JwmMWGHyMxyVbdZMRUSGAUNC6N+CBqwFrn/E
 nAMcrhxfnfNjgloVeXQfAIrz9o46cgJQhYSTkXl0JyRrwCiM8R0EoEotl96TOFCvk0kD
 GAT7yRrJR3L+XjsK/9WHII3PxNvr09IlsrTgZGSsew0Zm7fLu7du/5mTcKFq1nbulRPL
 zV9ydzR9PkDhs3BuI5mT48EiK90nByu+nSkzC7UQgKMZ6MjLOZZHA6wOUMB7vmSWIB3k
 1gfAK7DD08nAdjBkOgiX1eGgQi4AJIJtDvgEbag16XgWrcnsox5mUQKd4pRR6BvXDv0v
 Gx7g==
X-Gm-Message-State: APjAAAU1wfZMMP4s5WK6hvsozkVD1j/ZTk+4+iUMls0HktgY5KVTeDTt
 Wz15bBQtq/mwx9CFzk08jng=
X-Google-Smtp-Source: APXvYqzMIgHXiFAjB2iqJtd7q4ohra7zn99jfRowf8TpuHE3QE0mc1sJ2+E0VGNp4HgzyiK1FT+wcA==
X-Received: by 2002:adf:ec0f:: with SMTP id x15mr46678862wrn.120.1558382927766; 
 Mon, 20 May 2019 13:08:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id i185sm918627wmg.32.2019.05.20.13.08.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:08:47 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: balbes-150@yandex.ru, linux-amlogic@lists.infradead.org,
 khilman@baylibre.com
Subject: [PATCH 1/2] ARM: dts: meson8m2: mxiii-plus: rename the DCDC2 regulator
Date: Mon, 20 May 2019 22:08:38 +0200
Message-Id: <20190520200839.22715-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520200839.22715-1-martin.blumenstingl@googlemail.com>
References: <20190520200839.22715-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130849_474286_F7E33AA6 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DCDC2 regulator output is actually called "VDD_EE" in various
Meson8b board schematics. This matches with what Amlogic names it in the
most part of their vendor kernel (there are a few places where it's
actually called VDDAO, schematics of EC-100 suggest that the regulator
output is used for both signals).
While here, also give the regulator an alias as it supplies the Mali GPU
so a phandle to it will be required later on.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
index 29d830ae4bf4..c7d9cf035e22 100644
--- a/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
+++ b/arch/arm/boot/dts/meson8m2-mxiii-plus.dts
@@ -114,8 +114,9 @@
 				regulator-always-on;
 			};
 
-			DCDC2 {
-				regulator-name = "VDDAO";
+			vddee: DCDC2 {
+				/* the output is also used as VDDAO */
+				regulator-name = "VDD_EE";
 				regulator-min-microvolt = <950000>;
 				regulator-max-microvolt = <1150000>;
 				regulator-boot-on;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
