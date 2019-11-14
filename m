Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52D9FCA38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:48:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E5UXHzUfuhG1viShJ9twaYN+qBXhXc17ahHt+/6w/6g=; b=Fdv
	F1webu+vpB/zbjYa/jP9y4YvFIwa/4D3nuGeK01ATHsu27R/bpYX/4tlAt0EDYG7EEc/IjNm744yY
	EmuZUOa7WHa08DdlPqlbA+/pFwFi9AMw9o2WrInNb3lUtz5roZP2o7A5zzzOIPSHAnTIZvzsmSTKC
	5up7RkBSKU+Q623+mmb1ifgSK24PeO2jpkb38IlUecLttTnkePtuHgBgu7iJ6DL26x5LbGVKSakzX
	Xe9TaOSXFNXBnDnfBA4FdykoXV/qQitYUpSrwkHR5Dw2zKo9/AAaKqPaxMjQrzo7qdMdhRHCA3/FU
	GmjzFXzyrYOp4Vxybch8yv4Ump7JcRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHLd-00007d-Bg; Thu, 14 Nov 2019 15:47:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHLR-00006i-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:47:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id a17so7809927wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=imGdJFRY185pAjfBUWLyckhXCcG52iE7peF0ICno/F4=;
 b=16ljNnZZ3upX9VKdbIxvnGbmp3ksWorXodwuEZnI0eJMUoR/Azxa6ZKokc6j/yFYps
 yVDo39z9pyaxVEOZxpNxgPCctOMcEjHLC4kqwORp7Sc1a93fmpMCUTxjtbe87KroWh3t
 JNOufYpWTeBKlutEqIbAupCsod4OaDc1A4QTMCWCJeefaaOlYsP0wRVTZnKfQ6c0sBxo
 OXUSdslWFm1yzScrWCEq7l1+fz7s0kzHL63eeQ3CfO7aPEOQQUIw2nJGoC4x+THgjrGl
 0Yn0mnrewajEi4TZcv4v4ICQ97/j7DIFtnrNd7p4GIPVnY1eKkMSq5z3DObgHVYmdKYQ
 WLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=imGdJFRY185pAjfBUWLyckhXCcG52iE7peF0ICno/F4=;
 b=FYQyvRpT5XQrSTGDosmiW0T7/9huY6dOv0xR5fsd59uzS+oPNxQOycFmGEFJg+pQcM
 5zFsg2AQgUTRATwq1juUFa5tmD622lT9PqJUzCJ1bHaJ+zUulWkwFmpuU1HXZhMLEeHq
 H0Z2t/RKUb2tz4c+YZSUgguaBqdP+SNV0tcXYNrl97R59b0rAHFqyQ6FR8Ce4g5HbQPp
 5g98s3Zqg4FMrO6NT3enOnG4TF14oEfWdkKL0HWs3Ia4mPILFQc2qTC3wtrn49yrGYrO
 1cey8L3kKW/4SpvitX+RpVh2wNQ5isOjCyYQD8GvLQzoSkMtT1qzIMHgXexc1wFJqrX6
 kPmA==
X-Gm-Message-State: APjAAAXk5AP9R6du1vb213ttYgY14OdC+o6DQEs4bPo1lHyro3SrtYnm
 BL+GNrubEymHc/KrS+fOa7B0Sg==
X-Google-Smtp-Source: APXvYqz7knAPH/YcnLeF5r5hBN9NhdC3ua2uUlCCJ/XubBMe9FwhaqiZw1YHW/Qo3Wdwd/M0eILyoQ==
X-Received: by 2002:a7b:cc8c:: with SMTP id p12mr8336719wma.82.1573746459863; 
 Thu, 14 Nov 2019 07:47:39 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l4sm6428629wml.33.2019.11.14.07.47.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:47:38 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v5 0/2] ARM64: dts: allwinner: Add devicetree for pineH64
 modelB
Date: Thu, 14 Nov 2019 15:47:31 +0000
Message-Id: <1573746453-5123-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074741_930903_0A14A2A6 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

Pineh64 have two existing model (A and B) with some hardware difference and
so need two different DT file.
But the current situation has only one file for both.
This serie fix this situation by being more clear on which DT file is
needed for both model.

Regards

Changes since v4:
- reverted compatible change for model A
- renamed compatible of model B

Change since v3:
- state the current file is model A and add a new modelB file.

Change since v2:
- Added the HDMI connector node to model A

Changes since v1:
- Added the first patch for stating which model support the
  sun50i-h6-pine-h64.dts

Corentin Labbe (2):
  ARM64: dts: sun50i-h6-pine-h64: state that the DT supports the modelA
  ARM64: dts: allwinner: add pineh64 model B

 .../devicetree/bindings/arm/sunxi.yaml        |  7 ++++++-
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-model-b.dts  | 21 +++++++++++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts | 17 ++++++++++++---
 4 files changed, 42 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-model-b.dts

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
