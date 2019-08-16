Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4E390515
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 17:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LXmv470n1rDyBft0eq52vZnglOQ01lEJEzEJKQs8bVg=; b=sQK+G50viJYG7B
	rvddzBQ6JyCixHMnWkFhGgFNSmZXCqhsxp50hYM2FMq3ikX/LNYtUIQVuzlpkTq9SLkI8AY0yS1vz
	HUVMi4BadjZR0X1QiR+VGwdrSfvj+78X7Ppcv9a+Y3lOARuTtJg7xb3LTI1De8ONWKxgUK8SP8t8i
	jpn2JTwlk0GQHQ2kuRyvCOE165srlvyQoyrFELoHZRwG9PAvRTcvTNclORkDxJiwK1jAnWms0/my0
	bMSAOv6akm/t+wTaXpSRMi7aEGofs9jq4G9afmpSJXIrxc9/CWeFSAuZJqQAlF/bWFYAUzWh1mT9S
	kwz3hhVHLL3kQ7t+KBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyecY-0007qz-Tp; Fri, 16 Aug 2019 15:58:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyecM-0007qe-JN
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 15:58:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id c81so3313206pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 08:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PoloVULM911anludKTQHYfSvmuLN6FTBR2hjXpDeBXY=;
 b=vTW0wZ3ZuNxw8rzOf7RKNLMdbJDK9Gz96Y1tf/keYFne0Sz53pJtgzLdxZG+sfluOX
 PosHcRRZxxTLnFtYkrtPUG/2bx+OOjICVlI+ZGngX20OncUlOi9p0E0WROb0yj7wP05H
 mv8cE1G3F6wzNiiasfpemOgmrTDKs/8LfQD2/p8NZ5scPd1CBrxlUoJNSafvN5ikxFHj
 HbfpKOU7sksv/B6NAmaT3X05oT6xBqlGydkU4DjRGtucdN/ERgH3zrpmrzFveHm7JGX1
 sq4CPUN+qZTLLxs3LpYB2LzXx/ywcNWbhipakKlwTByqmYrvDxc3m74O0IuX0VnVVcR9
 V/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=PoloVULM911anludKTQHYfSvmuLN6FTBR2hjXpDeBXY=;
 b=sce3Fzv/88r80X91QEX0VgJlVcNfqJRi1HJ9KGqvSAz3rf4uJJuJJNaRaWij6WaEk3
 ICWairgPInvnjCUUTRjMb6K+V9bp6+2j6Fw7QW8Zfet36h3vRm81UrBS4riv3mdKz011
 Zkh0scpCXpRzX/sPFd+hn5nMVe9ABFX0F+w7VYgiWdelDsovwL+btRhOOfeUrKKhBjVD
 p30jp/4QY6PQMcVFTtxAxCtrYGZ9xyDYe3CGh7UY8mcp1qaUSE/J7idLJ7AI21j8QNOy
 5zik4KVhql5uucoOczmNhOo+8jdE3SRcyW77+LUyDOaKj+jBdQ7JZYSWsz+6GPuRp15Z
 c/Ww==
X-Gm-Message-State: APjAAAV4o0KfHRzx7Hci2mkmP1isKoo/odXSGN8A1Ea+CT8jFyMBmz+8
 YLgqACMJQmOJPsHa6vJhWNeEtLVO
X-Google-Smtp-Source: APXvYqwO2QPstr1atjcPz6YfyQbIQS/NHnTkmgQZY8GHgLSuWsv1jS7yJiG0Xt0T9Ay9tYauuz+M7w==
X-Received: by 2002:a63:fe17:: with SMTP id p23mr8368278pgh.103.1565971097219; 
 Fri, 16 Aug 2019 08:58:17 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.19])
 by smtp.gmail.com with ESMTPSA id s24sm5746052pgm.3.2019.08.16.08.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 08:58:16 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 0/2] clk: Add driver for ast2600
Date: Sat, 17 Aug 2019 01:28:04 +0930
Message-Id: <20190816155806.22869-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_085818_664214_B53B9634 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello clock maintainers,

This adds a new driver for the ast2600 BMC's clocks. It's a separate
from the existing aspeed one as the ast2600 changes enough from the
previous generation to make it hard to support with one driver.

It has been tested on the ast2600 evaluation board.

Joel Stanley (2):
  clk: aspeed: Move structures to header
  clk: Add support for AST2600 SoC

 drivers/clk/Makefile                      |   1 +
 drivers/clk/clk-aspeed.c                  |  63 +-
 drivers/clk/clk-aspeed.h                  |  76 +++
 drivers/clk/clk-ast2600.c                 | 711 ++++++++++++++++++++++
 include/dt-bindings/clock/ast2600-clock.h | 116 ++++
 5 files changed, 906 insertions(+), 61 deletions(-)
 create mode 100644 drivers/clk/clk-aspeed.h
 create mode 100644 drivers/clk/clk-ast2600.c
 create mode 100644 include/dt-bindings/clock/ast2600-clock.h

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
