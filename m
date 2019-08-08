Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894268682E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6iI670HL94f8PoIjXLsQRiGG2umrtqHgA8WAhdHjHNQ=; b=slokmLlo5K2oPO
	j4kjS5mgKNq8wfUPmwvGNrocxv2pjb7g4wMfQTDfVfU+M5iXFvXuVqAlGOJ2S/J+ARzMEIQdSFzmU
	tlaJYx7XZMG3EH++f6aeYMlrBt9ftExbG8ZNnWjRMqj2ODdu0RY7g3nIrdsi4AlCdkdQBmUQr23oX
	M8so6dxF16jIr/+7wU5HPA/qGMY2MFAeZJ1K7/sgRgYEUbsxFAH6mN7HsixzNA3Ah7WcXztWmEmEW
	MbE2DGRgmMFuyDmB/P9VIVGBavDKzWekJfhRFXJq8P/LlDmeGo0A/QTAfrzB5MMZaeS4579aPsf2x
	vWuDK8QxokcU8vsu6Idg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmNL-00074Z-9q; Thu, 08 Aug 2019 17:38:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmND-00073W-3q
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:38:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so43886630pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 10:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
 b=COUDedRwtZm6LlO/ywHqvn2wwXNY3IZTGWBV6xNe2xG4Crw7Fhk7u9L3ANNxa1P98C
 yBSEduSFO4ViTrt+XjUDLtc743ouZ0U/cgE//QoRuyh1NpsIb+B7hKR1H8w+vPmNKqn0
 bAtUGeJahiQ064aUtaeNEwHo3WNF77jbWmfJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a41tlxI3deF8mBQyeJjNOoUyGsQDaLWBbpsll/2BB1E=;
 b=qKvFK/5IQ1C2qDm5Bmv8cvpEBzUhN2pdkBUV9H8eUaElPT9fM9e66Zfpu94VVJVxD1
 jBy07fBv3u6cIDjEP1kZ7GeAS+S0hBWYqT71tsTBj3JD/QBKVEN8XQ+6cMqP4dxQ/wHV
 01C+JjE0V19jYNapeYwFpv/Y2xoTOnizFDCrcOQqtCBKetmQNz0e42IZ3IQFbEdeUdrw
 jYdzfSaymn30lMjiR300ZkICyOkSOx/lJuZYhSyx04YpcJKCZtNKzk1K+XGg4edMjRyf
 O7ZbkybAO0aJkPk9gnasdUfhBOsiH/7TaqpUcxx+OnEl/E8hs9ofXVvnlEuI3DA9l62G
 fCog==
X-Gm-Message-State: APjAAAUUwlm9Xxqohl6AY4Q86+L8uv4qYM2oE/egcfYKwA247rQ9k0NG
 t9CoUUsb4zyePIMq/2c8DqlFryo2tHjyCw==
X-Google-Smtp-Source: APXvYqzukKzjnXNyRjVrrmKd64p/hrO0VojaqFoqt9ky2UmsMCqng+ge5obvAHGId9pafhXYqfiaiw==
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr15153470plp.18.1565285922983; 
 Thu, 08 Aug 2019 10:38:42 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y12sm105824412pfn.187.2019.08.08.10.38.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 10:38:42 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v7 0/3] add support for rng-seed
Date: Fri,  9 Aug 2019 01:38:01 +0800
Message-Id: <20190808173803.1146-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_103847_161056_8012AA86 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
