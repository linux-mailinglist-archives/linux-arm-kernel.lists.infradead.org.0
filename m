Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA05311BD03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysH2p46NonSM2QaTL7ewbsBJOzft3/X/+7ClzYApQoE=; b=Jt3y5WVY4GN4ea
	hB/m1lafBnMP1JcyN2tiA5pypuBR+IInc817SYpYjbsnMZ4ISaZ0+B/PPMY5z4KiiGjh2bu5BjFv3
	xWmlOT0lqu/ZmBhnD89qKnDr21FAYwYs65xhOg4J1IUJMpzMX6Sze84sY37MGzZiV3StGq0VAk9gs
	yq4lyR+yxFhHgHMLRe+QsgxAMm8kpjAInbyBH5nswhLQT3n3UwLdkWvM+m1oyo/ykyKdvdFhy0AvK
	Zgn028nphkFo+fXWRXjRyL0wnr/y5NH09DxCEsUBAcxFKTV5zgAfF2hXmMStrkXYloTBH6uxnqlTz
	xv36sflAKeXvOrEvJvRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7fs-0005Lk-BU; Wed, 11 Dec 2019 19:29:28 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7eq-0004Uc-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:28:26 +0000
Received: by mail-pl1-x64a.google.com with SMTP id t3so2258515plz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Z9cyJ6q/dRKwszgWPK/I6HD4udk/HngreENNBBFw7AE=;
 b=R4J+hp7ameLmcKBvWd1R3GHgVQMiqDLeCk+xK86P/IRMuh6UmJa9Faa5uqjS4kWyFg
 lL/VL+0yiQSVCjjou1PYLwUk5n8YWw+5HFdP2a92aB7l5OvSR7njVCuEuEU7ILdNksTE
 2IpI6glhHVDy6eNg96ttbF925uLPxi+VoHZCb7VWblcUGDkMrvhzGjACHIWT/UqDBsaz
 ONTjf5w9eu8EeVbm9tB0FOcag12BKE6rhip+RYd5P8VyZ62mxl0MZ8QED5kQRVYL1c0H
 UQ1HaAdchOoT2M+AZajZrwAWD8PvQ9W1PwBcEmzwoAJM3GxLhGO1mshgQ2QK1+Gs3kcV
 wa7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Z9cyJ6q/dRKwszgWPK/I6HD4udk/HngreENNBBFw7AE=;
 b=BdyGSfmNOknAV/yjmFEPq3qlpeTP40K608z+6b4OYK1LVGw/AMJl72qKRu8PKF6YlN
 BV1w7dpr+XmUIHzbOMNCElsCJbCGvfYo84TXJ5ZNMYoJIUIGIYMBltIZu+fM9MJIn1Px
 FZ+YixnaD3k+CuYrEowG+Stncx54PCUh7F0tOTVPTg+0MSPwPyXMO7fdqWe2mGisNerY
 kIOZGZ/C5sBdKzzV/+YukeePXlaHKJas1kkTqtjm5XascGppZd63lAl14xEJDbhaGQFq
 YObRuzdJwZVGpUkeCizdE281Mt/FWGDfmvbFJaicx8NA7YH46rbltUNDvVgxjd0+fsaL
 ZToQ==
X-Gm-Message-State: APjAAAW4a4qCl/g7uSE6oFvbmoWA/Dl1eBT/+NDx9vr02CodFx0/8IrM
 6mUmiL07YwL/8Jou0csRqfzkvS0A2rUm/ZAFlF0Jhw==
X-Google-Smtp-Source: APXvYqyYij4yV+DXbejSHZeng6BXYHuLudblK+kNmIhwXq4dmlZ+ZGkXmoMKknhbAuxQ+DE/c95Qal0IVJbWFYYgdCBmMg==
X-Received: by 2002:a63:28a:: with SMTP id 132mr5883273pgc.165.1576092502945; 
 Wed, 11 Dec 2019 11:28:22 -0800 (PST)
Date: Wed, 11 Dec 2019 11:27:42 -0800
In-Reply-To: <20191211192742.95699-1-brendanhiggins@google.com>
Message-Id: <20191211192742.95699-8-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.24.0.525.g8f36a354ae-goog
Subject: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, 
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112824_792551_CE5083DF 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-aspeed@lists.ozlabs.org, linux-um@lists.infradead.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 davidgow@google.com, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CONFIG_FSI_MASTER_ASPEED=y implicitly depends on
CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
the following build error:

ld: drivers/fsi/fsi-master-aspeed.o: in function `fsi_master_aspeed_probe':
drivers/fsi/fsi-master-aspeed.c:436: undefined reference to `devm_ioremap_resource'

Fix the build error by adding the unspecified dependency.

Reported-by: Brendan Higgins <brendanhiggins@google.com>
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
---
 drivers/fsi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/fsi/Kconfig b/drivers/fsi/Kconfig
index 92ce6d85802cc..4cc0e630ab79b 100644
--- a/drivers/fsi/Kconfig
+++ b/drivers/fsi/Kconfig
@@ -55,6 +55,7 @@ config FSI_MASTER_AST_CF
 
 config FSI_MASTER_ASPEED
 	tristate "FSI ASPEED master"
+	depends on HAS_IOMEM
 	help
 	 This option enables a FSI master that is present behind an OPB bridge
 	 in the AST2600.
-- 
2.24.0.525.g8f36a354ae-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
