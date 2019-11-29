Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2110D01C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 01:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m/vCjo/mjgvrDKYlE2LhtK4D7jPm3frsm7Cg1gz2h2o=; b=QtDQG+XaXjqoMg
	6UgubrGm/xWtkaqfE7MxOJMb+GQ2AaEzgmZ2GfJ6YnwoOQ3OKqhdgqhMA+BkEVAwpzJ4BdRZftGLq
	b+xNqeJANyrrUcCXvI2nRqa/1vJ7PrXkNDNEvGoIsHXS6KojJtfwMLQzWpUhOTAFy+WDvJn9wTEqe
	U6FGZKqvnE4LJLvglv/LqY/0v8/SQta6fHMVQFdnBgisCL+o3rByj3Xm+nY8sr13CFUQc2C5KnF/E
	aAwNuD1MWL6hiLg03TIMRorEZxxhmVswh8jJT2X+CfaNjbGmDGaE7RDYNvZJnJCXRHw0Ldp0D5R1A
	bGV4ZnLOJ03+wBuDPdfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaTq3-0001qc-60; Fri, 29 Nov 2019 00:08:47 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaTpt-0001q6-Q0
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 00:08:39 +0000
Received: by mail-pj1-x1042.google.com with SMTP id r11so4639314pjp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 16:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PzWN4cL1wf43O1PtpUjZOF/nWFYMcUCUfWytZsUUyVM=;
 b=dSi7tOORl2Yu58MKpmTJaZq8PC6pMrxWZlc3OrbfzabvskelxTZoHB06vlTrnU9Bfn
 vObC6N6DPm0iY1OwThGpe2g5fXDvIecJOoZaTQC8IlmTASyCiTH/O8lS1PpvWI61zTx8
 O6cEiOKKdWoUV6IAl7fmO4uFrYKs9WYuktiGMTtBQ2j9g9q4/fjcV3cA3BHgy2jnzJuh
 fk4H+hPQgfX6VWg5VCPLTZx8UJPyLdy6pOq2eaCffPuUSnDDuxGTTG4QwSyxp7ln8hnD
 zPTOiPliJH1UVmPFPsLrVz3IwL94xHiQXmuroN0SawURcRF6ImWYphHDbjo/u0QuEa7/
 ngYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=PzWN4cL1wf43O1PtpUjZOF/nWFYMcUCUfWytZsUUyVM=;
 b=rEKcayhNWgroiOk3ogiWtspIkhA0rOlcSXN/Kjs3NzwrWtD/pGJUcXGaFl//QDecit
 /qLVvx2SUDRZ7Vyi0govQTjHbYPmGWn0mpjJEhw9zAM7f30bBZGxFqvmcXUdeVNgu3he
 GcCrDKuS8sPCFOf4A6yLvTz2WjJMz9F+CZOcE5yR5+AeLmeEfWm30y0O/GxlVxqBdVb5
 fxxZrmhA4tapReofS5VTeUTjKc3luUz6murXA/0N9bvU3GiIqjmjQ2Hu+kCHzHmLBMzw
 ef8PnttvqJ33MFK5pL4L8v47fplq7o7uJWd2i1copejpBp0jh/Vg929JLbz7PgvNGoRF
 yQCQ==
X-Gm-Message-State: APjAAAV12kMNsgVJ45HDWvKn/pNcriV8agnpqLv9x9AeSqYuLFFpfhmg
 /6zwthUAXJx2+erQ3GE3MRBjsP88Oyd1qw==
X-Google-Smtp-Source: APXvYqypDkqlvQWSySZaKfJe9FNPi29JX9+IyoO2gKYaFImONyEaQ2/LCAsDEoHGbHnhMZNnjhuHtg==
X-Received: by 2002:a17:90a:cc18:: with SMTP id
 b24mr14709846pju.141.1574986116875; 
 Thu, 28 Nov 2019 16:08:36 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id d188sm21302075pfa.157.2019.11.28.16.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 16:08:35 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 0/2] reset: Add ast2600 support
Date: Fri, 29 Nov 2019 10:38:25 +1030
Message-Id: <20191129000827.650566-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_160837_848439_F6D0A605 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

v2 fixes a typo in the bindings that Andrew found.

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
