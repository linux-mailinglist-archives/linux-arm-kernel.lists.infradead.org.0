Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144208DCFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hbtb2YyT+Io8i4BhTKoixIRTdegwkbheswZ92Y8/llY=; b=EKsMol6ajODY2A
	HVTj6T60br96Q022Epezeq5MpIeqzJ0ECQkORI4ESqgChxk+f1o+z/245hg+H+0caM6LBZndJ3gDA
	w+obvC72gVOLTSDhtZP15gDaNrpS5dMHv1pFE1wxhnyY84qs7nVh97XhATbyK5EexY4nl7x3lx8Cs
	4k1Nbe/E7EGL2EDYTzPjb6mJXHeRdDMqzlTrFiLDFNWSOvgTTttvLMBT1LypKZZKVvdNqADng9Ju9
	GN/l6LO3hspYLO6YXBhxJSEa44xA4udu8GuqwBqZDP2oMiATIF7jwALZqk+lzmRDlHHoZ4+Kyx05u
	aixdwGNgOUbPeNmijimg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxy3i-0004yE-Fv; Wed, 14 Aug 2019 18:31:42 +0000
Received: from mail-wm1-f98.google.com ([209.85.128.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxy3H-0004oe-7g
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:31:16 +0000
Received: by mail-wm1-f98.google.com with SMTP id v15so136291wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 11:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mp7iJGynhOmrjD/EOvXoUD5fALwJ3preiOjjN1ca68E=;
 b=j/nS0H4XZM6sdFhuCgK4TDv6KpfX+1Ioz1IjL4ydZLx+yc6fqwjuACjRVOBFwJ5piM
 xz+1y/w4UEzvjRqDrgPOr8WGRIhAZoxntqsnXzkW0MmXSJdP3Yfn+jHmYylH4NRQIhgu
 OcYfCDfpE/U1w9b03apfU4N/R5XhISF1Hohy3e/jWNUKYosWiuGYyH2m8TYibQCUU59s
 /evOATm+jlqt0HJzLYPvGZuP00fG8R/W+8AbhKQLcn5BjmCek8WApRfuRMUkVCVIVHDJ
 EMG3cQDRINifUrEkIMCaEnVOoKokPTgHCg8nhYRGLyvAhIcvgEAd/DIGM8YkxZxguWHb
 dTnQ==
X-Gm-Message-State: APjAAAUHOngLp5Zee6lngcva+22ZwrxsH88LURIX+tXjMijXv/L+wC/w
 Jxpup8Fu1cLtLRtXO4IREU8jBFgfL6T7seME9jtl46SbJa9vpcScwmS2txJr1r15Kg==
X-Google-Smtp-Source: APXvYqzvgNf2lOXICaLM3UmYozih+sezMfotFq+5FClNWdbGSZfptYO1e57/ReVlEZUzYmrYLRK3BjrIjGQt
X-Received: by 2002:a7b:cf09:: with SMTP id l9mr506480wmg.20.1565807470837;
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id y11sm3354wma.14.2019.08.14.11.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxy3C-00070X-Es; Wed, 14 Aug 2019 18:31:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C79952742B4A; Wed, 14 Aug 2019 19:31:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 0/2] arm64: E0PD support
Date: Wed, 14 Aug 2019 19:31:01 +0100
Message-Id: <20190814183103.33707-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_113115_274959_74A7692A 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for E0PD. We enable E0PD unconditionally where
present and on systems where all the CPUs in the system support E0PD we
will not automatically enable KPTI for KASLR. The integration with KPTI
is safe but not optimal for big.LITTLE systems where only some CPUs
support E0PD since for them it will still use KPTI even on the CPUs that
have E0PD, I've not yet come up with something I like for integrating
support for them with the command line overrides.

Mark Brown (2):
      arm64: Add initial support for E0PD
      arm64: Don't use KPTI where we have E0PD

 arch/arm64/Kconfig                     | 15 +++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/mmu.h           | 13 ++++++++++++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 29 ++++++++++++++++++++++++++++-
 6 files changed, 60 insertions(+), 3 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
