Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC381F6DC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 21:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vSF4O/2+Ssiql1d+WnsUq0XuaZ54NlouvOVxHmX8GA=; b=aMqg74rcKN1NC6
	xVsdjS1O1cl3F5wiXIv1jEbfAp5EuoeK2/WcleT9UweoDDWEYFo3lVk/cM8VquvNQng0D9S1hrYF4
	3jIvCWRcHVIOJ7B+K8wiJiQ4E6VviqJg97zQGN5vhk7b1xT/EDfcFzWYvaK7txFzalNnXAxoc86iM
	kwCG//4KJmCnER88prhF46Rl2CnSGdh7QKv/WnCcbgH9huveog9uiSdcsjO6rMVaxcwaRmmaVp9Tm
	N8ido8jS5x8aB4fJ8CCAeGQiUknzog4lwYxE33mp4u0cjFu0V7w+KFJBnMOgEkgLC4nC+g66Y4/En
	cPw8RbiWdu0vhcaVNKag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjSbR-0003EI-87; Thu, 11 Jun 2020 19:11:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjSal-0002pW-9t
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 19:10:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so7338326wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 12:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IDjXCIQ6oy9AG2/pAkYufwb6REFjjpJ4B8gnt4Zt3Qc=;
 b=roxDTnsx93wtEbhdmNp/ObyGhmi+f3+VAw9dB/+c4wPouQTJejpLzI43QCaztDmC76
 FsQYssZM6YdWtBpc/xye5/PPeT9fkympjTFzq2LlJzFpQWjy/NMhLZLRqNmIAwuSLdl+
 0XyU6ubyiAgi5zkeNVhRLVnIPobMvU+jyMKAt+oGBme/DkkLKL5A6GncPcRLcHPI6JpO
 KXBhng/PcNI/BBcMbs+RAD45GuBtOZcICXDRZ2RqV1cnEsgS+X9K1K3nUB5XHYCioiG5
 3ARROCFXZ4ay8C1CJncLXslWG6uk2W3/pf6uTssMvCu6AoA8e3vjPGw7MSJ8FkpWN1At
 ufhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IDjXCIQ6oy9AG2/pAkYufwb6REFjjpJ4B8gnt4Zt3Qc=;
 b=J6Tv0fw7yAmgAPwvejD6RkBimOS9S7P2GexNYKMLwd33xTGDS5i7iV9lEJT5Fq7FKP
 dHclBpDp4WL3P1/Jvg2ytJseAkce/7n3H2a05JQYrXaqvCBT/RC+hA4Gf1u13zi7Fwgx
 BQJsDz8Uuem3/bZMage5LX7tsNEkUJSiBZit2z6QXCnmSM8slPf+GFwcdUiZ7lTvbIQS
 8Z+PbkGWKEOTRGZtkPyw1YEQ55wLa5JF5hdJSyzgnwRxRYmlc5unZqUR+/bRhXuf2US4
 7cmdoxHkqO05u/0cv/7EnYK4uKvqf0QupYJHN0RvWm5oFs+5+MDUuNaglfgAaS4jy1w9
 9xbw==
X-Gm-Message-State: AOAM530j4m7PaueMd0+wsV6+3y8GYv3f1m3oEVx5u7reDKLJKIfhrsbe
 0q/gAQAs9Mk/DC6g564/kZzmpQ==
X-Google-Smtp-Source: ABdhPJxIRvyeatyC1UQ1W9xf4a6D082xrhYZ0Tc1eoIVTbGiHfuzVmpVOlfwI45cj2a0wndw/BO7cg==
X-Received: by 2002:a5d:4008:: with SMTP id n8mr10771319wrp.82.1591902621670; 
 Thu, 11 Jun 2020 12:10:21 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id 128sm5658097wme.39.2020.06.11.12.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 12:10:20 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: andy.shevchenko@gmail.com, michael@walle.cc, robh+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux@roeck-us.net, andriy.shevchenko@linux.intel.com,
 robin.murphy@arm.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/3] mfd: core: Fix formatting of MFD helpers
Date: Thu, 11 Jun 2020 20:10:01 +0100
Message-Id: <20200611191002.2256570-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200611191002.2256570-1-lee.jones@linaro.org>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_121023_407977_91BC17CF 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unnecessary '\'s and leading tabs.

This will help to clean-up future diffs when subsequent changes are
made.

Hint: The aforementioned changes follow this patch.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 include/linux/mfd/core.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
index a148b907bb7f1..ae1c6f90388ba 100644
--- a/include/linux/mfd/core.h
+++ b/include/linux/mfd/core.h
@@ -26,20 +26,20 @@
 		.id = (_id),						\
 	}
 
-#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat)		\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)	\
+#define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)
 
-#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match)	\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)	\
+#define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)
 
-#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id)		\
-	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)	\
+#define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id) \
+	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)
 
-#define MFD_CELL_RES(_name, _res)					\
-	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)		\
+#define MFD_CELL_RES(_name, _res) \
+	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)
 
-#define MFD_CELL_NAME(_name)						\
-	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)		\
+#define MFD_CELL_NAME(_name) \
+	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)
 
 struct irq_domain;
 struct property_entry;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
