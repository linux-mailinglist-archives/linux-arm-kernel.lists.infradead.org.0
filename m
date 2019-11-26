Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F80C1097CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 03:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qkGlm0fuFh8EW+RTxx7YtbdLL4PMkIwgIdYePj91rVc=; b=Jx9X2YkjYiW18G
	oVq23zxFeAMBnp6o1BCxIBd4y4oaS8BNMshyAOMFMG8BjAHcU5rgbO8xFKHGs7Ox+Jkf1d6qScWrX
	KZWAwu42OAXh1GKGJUwIFwxQhW1Ee+NtjzBZS+dfEbs56eH768ywEawBXI7B6PfwpBCluQurbxwjW
	KkUrNvxXNePeyiV/hzGfstLDCZEFuxJhTP7hp2UsMiYTkekUU8bA469JvHucIYqjqAWhAxaFbTuQm
	b9+MYp+AVVszTuPRluApsq3IWhL/h3rvvIzo5ppnYpB9EdrZqkdaMqMuU6Dw1fRWETLQTa5laFPzg
	BuIXWsgXC5aGrS4Z+c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZQVS-0005Na-02; Tue, 26 Nov 2019 02:23:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZQVJ-0005NC-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 02:23:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id 207so8165499pge.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 18:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=unlpuGn7nivFmtiJp3WUnntkjXJ1id5sopgjYo1qU0U=;
 b=VSE0u60gyPELRZ7JTOR5++7SEE4+hwPzwj8nOy6OaBgAzsOLBGclKbilyUk3B5pC9k
 IEzwPawCG7UUP568XdzUhj8ybOQV9v3iej2HLaCJfDF8JNx3N8bcejQEZdS9q2c2gBNn
 uUrpNZMrooqkIfjyHZwgSMnv4hiAjjs7xgZCy5SuNAz7IxdflkCfEu2JzFJe1FI6TFfs
 ZDnAnaWQMH8DyWf+HaHhWJsgThUXbfpMy1lqCFJWaxK0hRWLzA45PK84/A702SAQUPlT
 rJy8+lZu7joBEVB9ksp6OQLpSTedhctHgTDMGFw4EK0j0PcF9MChPO9EQTX9cUNRvRDf
 Z96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=unlpuGn7nivFmtiJp3WUnntkjXJ1id5sopgjYo1qU0U=;
 b=rXcau+2Y58mUny9ugqmKxh7ejVeIkyPN+XuwWkl9fSdjbzZ/lEsAUhx8OPOvA7BANY
 4yNcp9sQsxcBj62TPSghBr5bDQpsl1mb3kgFOe57TSiR66v++yh2C7fS9Cv6Hx+Ulk3y
 t9wljk+T06Z1sZgDMqKD+giBwC3PER0+Su71kcr400M8aGq6Yh/2fICC9BpAeAxjpEzv
 OGLP7XUN2YeZvBUfn8b4SqoizSZ4SJOsE6kZaot2uLEwZ0xakXOq6j8XKdPE3zz5CkAN
 Puzx+cZv73S0i/HlE2L3yqcgm3VYZeBsdKKC0ao3pMPhpEoW4Lo3Tc8WMWy1hyTZPzvj
 7jhA==
X-Gm-Message-State: APjAAAUe1Hy1hIPBvBWLrEpLRmIqmV0om5KAIry9uUhwIUpBzLxXHv0X
 6OmDKOJkHYaT3P/H4+DJBYKtPh5vSXA=
X-Google-Smtp-Source: APXvYqxhb551eaPvYW3aHcS2Y2jrA1e7OdTeqm5liDBTjQRChx9CJ8uw7qBXhW4MO/M8m/PZNLTKqA==
X-Received: by 2002:aa7:9abb:: with SMTP id x27mr37012105pfi.150.1574734980360; 
 Mon, 25 Nov 2019 18:23:00 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id q70sm666568pjq.26.2019.11.25.18.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 18:22:59 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 0/2] reset: Add ast2600 support
Date: Tue, 26 Nov 2019 12:52:41 +1030
Message-Id: <20191126022243.215261-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_182301_649465_5A545ADA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds ast2600 support to the reset-simple driver, and updates
the device tree documentation for the LPC bindings.

Brad Bishop (1):
  reset: simple: Add AST2600 compatibility string

Joel Stanley (1):
  dt-bindings: mfd: Add ast2600 to ASPEED LPC

 Documentation/devicetree/bindings/mfd/aspeed-lpc.txt | 11 +++++++++--
 drivers/reset/reset-simple.c                         |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
