Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3B46DF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 04:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2NtmTJJJjjYmDNzH/75lMzo9MbNNCRNi3vwfvrlZCP8=; b=M+CWWMj+SUxvM7
	sCEo+nHss5mIYDnVKowgQ63prCzhWP8ATsnSBhaaA/LJW83GvefU96hH8IdpT0X7li5xpyLMrFmCh
	+Z0y4ixDobtUf0UL1GGTqr/8utZZzkxSMBC1P4SBIupLca9tmf2S6+xoQUbEzMNR2CNWUFAyQAufD
	KSFe1Tp+w/IrhTdV4YxOfS8Yxfs0SRm1MY1EWICMeJV1OBv7b2fMZhE9pstgdczvoIuK8LFrh9rHQ
	nqotrnNiHtoIu3fy8YRIZp8vJtje+ryi3kXGSdO/HlGcaXEWqWbQN+D7p7/tj70c9Jw0SSWMvc3Ak
	SqQ+ZNpf78eoq/eUZCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbytC-0004hK-JW; Sat, 15 Jun 2019 02:57:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbyt4-0004h1-Cl
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 02:57:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id go2so1744888plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 19:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Hk9/rZ5IrrvyieyUT40Z8jtQcnNXuEHhlbj1tNc2gC0=;
 b=fEP03OVWpozICesufQ36bx6UeijE1T/zB8Be00A488QYvCO/KibQIdhloQRoT+rsKa
 ciN0Nu8NLXNVM/7SObKjsr8N+8wCyCdRHy0iMyMqFvEoyWepGN8sUAW6HlQuJwNyJDyG
 Ezv4Uu+WpWhmqZqAI5JMnW/Ny2VIF/l9unpiEJRYYkzwLFQwRMsnIuqDSpqIgEu/zJrJ
 YV4RCC0RkKcpqPDPvNYkmam5njVkWzUuVx3SKQxaYK4CgRDQ3Z5h2HOZoXKgtkQ4Ftgb
 BL9pz68S4/MZNJO3DCBJ9jBwKhmtRaFy3BZT9PBYLligADFfd2Akt+kmk4FbJc0Y+f82
 +2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Hk9/rZ5IrrvyieyUT40Z8jtQcnNXuEHhlbj1tNc2gC0=;
 b=b05FJX14zhSOjvM7mRVLhNjlvkoZ9I2YHcLuRGgA+OFcJVsC0/hRL3GmOcAlo9SmGc
 W6uOzsvpygdftHq/cV3TW+7K0VxAArWJeyj2tEJTMSMOkPipeG/tRnzlvwVL3DvHg1+M
 jEbzyaXraGt+V+82P/YVJ5cQRQsaBE9ne4HLtAVySNX8mROCh2Oqm75GYyhk3tR8ouHM
 G8CeD5RnkARvPneBe7elMgs8ewkBlNlvr6fh7kwndf6OGlraOGfuIEbLkYNnKarfB/Qc
 +1gU5Ez1E9sZ+TFbv8TMoLleo1RUXeXCpwC7CjQVjdFpKjCBikmS+HgimWaIH3/SmHnb
 LCVQ==
X-Gm-Message-State: APjAAAWgD8BDfggCUQoDo7zEiGY7rNy4UKWknTqMNymxfuy6pi4/DaFD
 tmb06E2mDRk7k+mwyUZWug9NI/63InI=
X-Google-Smtp-Source: APXvYqwtBSm7wnA6d9emV81aKBlj4yxn9/JIKKP9jZ093cgUGTgXE2+6t1q7G6+h3dwGVBeOMG0N6g==
X-Received: by 2002:a17:902:e58b:: with SMTP id
 cl11mr75302758plb.24.1560567469410; 
 Fri, 14 Jun 2019 19:57:49 -0700 (PDT)
Received: from nishad (p3261240-ipngn21201hodogaya.kanagawa.ocn.ne.jp.
 [153.202.122.240])
 by smtp.gmail.com with ESMTPSA id h21sm732297pgg.75.2019.06.14.19.57.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 19:57:49 -0700 (PDT)
Date: Sat, 15 Jun 2019 08:27:42 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] fsi: cf-fsi-fw: Use the correct style for SPDX License
 Identifier
Message-ID: <20190615025738.GA29870@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_195750_436838_D6680220 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header file related to Drivers for FRU Support Interface.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/fsi/cf-fsi-fw.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/fsi/cf-fsi-fw.h b/drivers/fsi/cf-fsi-fw.h
index 712df0461911..1118eaf7ee39 100644
--- a/drivers/fsi/cf-fsi-fw.h
+++ b/drivers/fsi/cf-fsi-fw.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 #ifndef __CF_FSI_FW_H
 #define __CF_FSI_FW_H
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
