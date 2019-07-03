Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FA35DD39
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 06:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6iI670HL94f8PoIjXLsQRiGG2umrtqHgA8WAhdHjHNQ=; b=XPtDdHFUv3s49q
	g0r7i2Xx/vKRGtTK4Okl/fhrzZlyKSH5LJsYJnmyx7+LQu4K7itkepdgmWAIXBxPbZKgsPslU1k3H
	Q+qHrCw3y0tAEq+BzJk4Dz/CaBNT0xRd8dof2jrAbqnJlbj1//JGABTbD474hOxdcl3EkaP0FDIo1
	7HBinpQ7dH6273cyj4T23ElWa4gJOYYOhUsLNqPF1oBLxhKRX8Kb+7CqhglwjhdRNnEYnT+S3+EWB
	roUTEukM9YEIixdAHORbjBtSlYDqu+iIWlDhSS6xGby6MMydLIh8eUkTh+q8fD65yttyG/nY/cGjC
	WeaCZvcdj0N6CudsbEbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiWTH-0004Yz-9j; Wed, 03 Jul 2019 04:02:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiWT5-0004YJ-5w
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 04:02:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so513095pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 21:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
 b=ldPEePY/CSRIya7EensPhLGU4lCTQEgvlymGX4fulaJJueDcrqAClpz98u8ShCieOH
 wQuKqaTBPgis3hItv/X/ASArP5S9nZGG3UrQCadBI24PjbwGjqciD7qCcFJXXTFOWQJw
 vPnVAznon9sBK9yHagHb33xIyG2/HAT/2qrpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
 b=IY+fznFhDem1YjAj31sHFlXlGtLqZR2tRKs1Qa7hRD0+ynZfook3DfCR5fREP5m5Gr
 CwuOq0gXJ9pQDjumPw9j5F69lGm+4IRkZKaHaZXGF9mAJUnqQNuscnkIn1soG7Mqlt9B
 chuvXfrmQt8F30ItGR2zi0PhWmiIGA58SB1NguMjM737xcXwumNrOgDmm0vVGb84b6ju
 nCmbfkvPQ+ZLcC9jg4cBWNDcXxljmWLuKrtCdN4dpdk8s9dAbEJ87Da3pGoZuvBAes7I
 2OZKiBFUS8aOwj7KZ0/dYtF91BYTh2qdXiSkg6JS8g31ukLNqrcdFX5kItPC5czBORWq
 dJCA==
X-Gm-Message-State: APjAAAWiPSyxRT0mAilLtWy0DBfFV/GobpbeD/3n+e+N7jq1WIDI6R3k
 BygD4YmM3dSdj3EOWg576iMP5QmjVLUGVw==
X-Google-Smtp-Source: APXvYqz6wOPvZSwaSd2ffeykekDPUmq8VZpbTmT3TXJqMwHRgWoE5B6ncXviHzbITcLuBwiXeYDhdg==
X-Received: by 2002:a63:570c:: with SMTP id l12mr35802901pgb.25.1562126521378; 
 Tue, 02 Jul 2019 21:02:01 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w16sm608327pfj.85.2019.07.02.21.01.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 21:02:00 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/3] add support for rng-seed
Date: Wed,  3 Jul 2019 12:01:33 +0800
Message-Id: <20190703040135.169843-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_210203_248497_10C5F10F 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introducing a chosen node, rng-seed, which is an entropy that can be
passed to kernel called very early to increase initial device
randomness. This can be used for adding sufficient initial entropy
for stack canary. Especially architectures that lack per-stack canary.

Hsin-Yi Wang (3):
  arm64: map FDT as RW for early_init_dt_scan()
  fdt: add support for rng-seed
  arm64: kexec_file: add rng-seed support

 arch/arm64/include/asm/mmu.h           |  2 +-
 arch/arm64/kernel/kaslr.c              |  5 +----
 arch/arm64/kernel/machine_kexec_file.c | 18 +++++++++++++++++-
 arch/arm64/kernel/setup.c              |  9 ++++++++-
 arch/arm64/mm/mmu.c                    | 15 +--------------
 drivers/of/fdt.c                       | 10 ++++++++++
 6 files changed, 38 insertions(+), 21 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
