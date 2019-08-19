Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6698B91DA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Os5hY/ay3kFTMlw9AH0LvQsoux4znBufAkHzmM8vhEM=; b=h93IQEqjAanbjy
	QIE6te6nXG8l2TGa95Dgbd1rLocQ2WJt1VoqLDvV61FHN9sgcuFvn1IxkUPqog6kYHLN5e2EMePSQ
	PP3s496v4jjrYxRbuOJ5kWzozbTVC7cFcXS4EealvfOJrq3liKNDtOqOTUvewkg8FN20d7gKHq7FO
	vGllQ9VobiZoFdV0z4PWX2ybLMp9WjavEPZXv7XPuyWF+0U2+8qzIRaf5nemy4Z6JCnSxUX0OlRtd
	ju0In012GzBNuJSo12i+ucRhw+pUNkoHWhPgwMNMxe6hEJIlDHCejbJT8BQiTQcdhGA0Xu1GkRuMi
	vo6XGyOeCQHm5wz3xL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzbuL-0008Tp-1w; Mon, 19 Aug 2019 07:16:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzbty-0008St-BK
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:16:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so676621pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E4I0nwbB40pqeWHoV/798x9f0gje8qISbA2ysVwPz/g=;
 b=nKH8wqmjGSa2ybP1nrMEitKF8FD0nmeXRfyTNl2aWZ9u6orHOZerLfF6cVI8dyN53/
 ns2EXlCQSbt15jD3SyExGoFAU3mP0Ug5IEksWy9KuNTa7ImbdIVT7foykXMHqH7dzpBE
 oMEaq6R/1HyNCKI9vL5mKiZOm/BJbj3bFOj6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E4I0nwbB40pqeWHoV/798x9f0gje8qISbA2ysVwPz/g=;
 b=M0S0hhSFA0vllUI6uuYlLpp5WHyCUkVhkFuArkNrBz+lakhMlDizC+vz3LhitgFolP
 sKIelSiRG8R4J+TQobEmlx1dQC5ruRZWpx54sz+Jos0Au0d1nTEAqgNR4N1ZpEJQFHz8
 aGkO03LYhhqaTT24RVO2evmeiCPsXStTaFc9qmUIluFyrnaWZILC+NITvUexkGJYJ2Bh
 9J9I3nhqmwDCcpsJGj1CBLpu7qBz1dCAp2/9nWVmumtHgWzV0SkR6/ic9vwdBqJhJnKI
 IX1XO6mEDQNduXJILTIxA1N436RoV90+Z6hpX/viyIHoIsOOsLbMs8kk76HJ3wbe4IB/
 tbSA==
X-Gm-Message-State: APjAAAXj8lWhoFwc7NTIo18AlWoaWXs7Or7eUXMJONUzd8K2AAW9vAbn
 RpxIh+NaunKQT+HrzagD81c49xt2CUM=
X-Google-Smtp-Source: APXvYqzQ5bCb1eZQOlrkKJIooCdpG5H+MgNCs58SYiUsllABkx5wib5s+woQ+/e0gQTMuER2i7x9AQ==
X-Received: by 2002:a62:5883:: with SMTP id
 m125mr22570389pfb.248.1566198984026; 
 Mon, 19 Aug 2019 00:16:24 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id y9sm14691341pfn.152.2019.08.19.00.16.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 00:16:23 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 0/3] add support for rng-seed
Date: Mon, 19 Aug 2019 15:16:00 +0800
Message-Id: <20190819071602.139014-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_001626_414192_AE7C160F 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/of/fdt.c                       | 14 ++++++++++++--
 6 files changed, 40 insertions(+), 23 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
