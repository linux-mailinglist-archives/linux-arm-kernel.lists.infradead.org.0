Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0508A1A2D62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 03:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nydOwblGo8rxZOQxNVNiWk3Rox08dFKtvcjnIhMBwlc=; b=DhWJ9/unRs2m24
	nwgWtP5NDa8wgVc9voqJlgyyzSBO5gq3wFQrBbSveVgxVelbI+x7Jp1FBJiYbhx21sOghiVKHyA3Z
	Wj76+XYg9PCUIUQO3abvQ88yOfx7iX1B0fNpekyolaBcHHhhDa5faYVHrvApbGzfIR6aVAUWKGZzU
	gwTLm0HCSBHvN980LHnAKwlXGcZCQ5pDYQHplXapJDrNDXFXukvDNv42ZhXWrC3+PHc5CdRJ7/Z0v
	5a18JwWbVguSAjd5r7uEDNViyIFwwcwTtddiqH9jKG2TYSl+vS6YZwlZYOcOS3Xu2E04V5Aj+rykJ
	XymFB8giSx+GmbNrjmUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMAg-0002hb-An; Thu, 09 Apr 2020 01:39:58 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMAY-0002gZ-OW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 01:39:51 +0000
Received: by mail-io1-f67.google.com with SMTP id h6so2194644iok.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 18:39:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fWDtvzED0lGSPGo+9zQhZMEn0s7u2892xq9rMZK4Epw=;
 b=borNtxlTr0WQvVSqJr3yKQ9VoBU0/2YFzKJOYwLJerWlxNRzwLZLFEVUrDtxWYxlSi
 vhddwPy/Gw92P1UZByNUMiulJS/lac+T7fCZ+t/N5uaEr//nbmflBaeUt34ip52WVa9X
 CzFjuSEZx6/lAHVpbRXcY+uS36RugJ6WqQW2Y8e4FOzEsmHYKX2Y8+P2VCtkhwGzgY6S
 UM4XEP4jrIGJS2pC9V+yAdJYnhDDyU3XW18c84X5dwcNjUFUC4yk0iSVJ5LisdmNIfR3
 L2hMFedOBLWUntoyVN0Ft9+FZAM7juLotE1x7mR1c3RRQTtDfZXFEPNrM9TNOVomqFuT
 XRsg==
X-Gm-Message-State: AGi0PuYXNYpbLWyeOAwsv1OwVqvapbLMqwHTBrfzerskcJPgvP020KLX
 s4C0gjKR48HIIN0x1yfmYA==
X-Google-Smtp-Source: APiQypLJV2BLuijCX8BAXR8AyK2zCmx5na7ThNTRONc1ewYfbtOZ7PmEs6nsg53rqrrUbe4vlAmwEA==
X-Received: by 2002:a5d:9ac1:: with SMTP id x1mr9660130ion.144.1586396389059; 
 Wed, 08 Apr 2020 18:39:49 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id b5sm2353026ilf.23.2020.04.08.18.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 18:39:48 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Eric Anholt <eric@anholt.net>
Subject: [PATCH 0/3] drm: pl111: Fix module loading issues
Date: Wed,  8 Apr 2020 19:39:44 -0600
Message-Id: <20200409013947.12667-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_183950_795320_92784B8D 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is part of a wider effort to fully modularize ARCH_VEXPRESS. The 
pl111 driver has a few issues with module loading and unloading. The 
setup for VExpress is more complicated than it needs to be, so let's 
simplify it.

Rob

Rob Herring (3):
  drm: pl111: Fix module autoloading
  drm: pl111: Simplify vexpress init
  drm: pl111: Move VExpress setup into versatile init

 drivers/gpu/drm/pl111/Makefile          |   1 -
 drivers/gpu/drm/pl111/pl111_drv.c       |   1 +
 drivers/gpu/drm/pl111/pl111_versatile.c | 135 +++++++++++++++++------
 drivers/gpu/drm/pl111/pl111_vexpress.c  | 138 ------------------------
 drivers/gpu/drm/pl111/pl111_vexpress.h  |  29 -----
 5 files changed, 103 insertions(+), 201 deletions(-)
 delete mode 100644 drivers/gpu/drm/pl111/pl111_vexpress.c
 delete mode 100644 drivers/gpu/drm/pl111/pl111_vexpress.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
