Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881EE41B32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K+OF8djwYTT+tKuRSqtP73u5jLEWK07uj2p2ye2ZX+E=; b=S0ud0U4+RW0BLO
	80IC50UZxBRBnmFIAdQMkJF1BQvO2YWXsmmXnAvXersg4+fz4OAJ+4OSYk0ps58Al3xifWQrYYnv7
	vt+SaxpIM3U98tOmOQKQjs02NZoSSobzTlGRwj1mJ9DeSvyMOFFcVeE9isGDojmPdbPYSQu8Uo7K5
	qSO0IvkM/bAgzz3dsXadex5B7aHV0/JyfsPhp5nH5kLEZ6Wc6WDpDYHRoQb8uEZnyWd41hY5t2Brb
	6gFiJnVsBf7G70dLuBr6KAdTDX3GxDKgqBx8ye+DDHviW5JPCQKOTzCjUz1ZbagxPIIl3W3R0ERvK
	Aij9d9aX1pOyKOhuVJlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hauxc-0005mP-8w; Wed, 12 Jun 2019 04:34:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hauxU-0005lp-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:34:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so8816709pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 21:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBsKt2KANme/JOaDCF19p+x3nQ6r/cZjZD0p0XOtcRA=;
 b=XR5LMhR4dWhA49NOiuns+aK4QrV/lto9XTcVrVO75nePd55lQKThU0DWL1/fhyhpPQ
 uZqQ0DJjMLAKLed+Jn1qYvp2NrAf4dmQ6YHWcz3wj8Rchmi6ud/YFwKdG1ttdZExwMWF
 NI2E/s8wUgv+GXSy1jtSQSCGn/o6LO7iy8ktQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBsKt2KANme/JOaDCF19p+x3nQ6r/cZjZD0p0XOtcRA=;
 b=G838jlm5CnN1FoyhDlDrfUFmWirudVmNk5Y3m2kqASM+pD5J3UQykXd4nlercK3ziA
 AKQbeDTETcIsrUbnFGOIqKcaif23HhmvKYJoVjqKO4GmExb7KEGS7UopOAFAVy/9spfI
 rmjIj11nou/X/EcPPzAjQfOvthplsr7SGlIXtOu2IHaiim1HtqZHp+mbf8GbULzMMOT0
 LKcxjjUJ8yXqBs9ff2Kb3Q+/xeDonJCHYInCa46y7icqOAVxm5KFXmN9prIIO8C75ZUL
 XWFWvtR4XEZh5VPyOU0qDL6jjiw3jdVB2SprZdPZrjN4Z2QniBtgmUyQODVeVXizIatX
 zXew==
X-Gm-Message-State: APjAAAWePlAzrPBmQ6Gl8wyxk8JA7ANpiuYt64THfPpT3LioDXnTIizr
 K/eYjoTer2PKoXiVWnKdAuOSaE0M2rUymw==
X-Google-Smtp-Source: APXvYqx/41bl7EzQ/YdXQSxExzoTiwXpf+pMqfvDDMtli/3cshz845GRC+rnDzNoeKjMdXh1FqX72A==
X-Received: by 2002:aa7:8394:: with SMTP id u20mr72672175pfm.252.1560314038527; 
 Tue, 11 Jun 2019 21:33:58 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id k8sm15285998pfi.168.2019.06.11.21.33.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 11 Jun 2019 21:33:57 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/3] add support for rng-seed
Date: Wed, 12 Jun 2019 12:32:56 +0800
Message-Id: <20190612043258.166048-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_213400_568067_FAAFE233 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
randomness.

Hsin-Yi Wang (3):
  arm64: map FDT as RW for early_init_dt_scan()
  fdt: add support for rng-seed
  arm64: kexec_file: add rng-seed support

 arch/arm64/include/asm/mmu.h           |  2 +-
 arch/arm64/kernel/kaslr.c              |  5 +----
 arch/arm64/kernel/machine_kexec_file.c | 22 +++++++++++++++++++++-
 arch/arm64/kernel/setup.c              |  9 ++++++++-
 arch/arm64/mm/mmu.c                    | 15 +--------------
 drivers/of/fdt.c                       | 10 ++++++++++
 6 files changed, 42 insertions(+), 21 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
