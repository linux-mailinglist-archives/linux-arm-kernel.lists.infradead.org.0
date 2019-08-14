Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839348E043
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vkSr+4kK0h0lGsB2F4/gea9thwHA8+8tWptpCXBIb6M=; b=u7aM5MGyzUChCE
	PKYp+PtqnUrl2oQXHQ1LgUGfjkJ/n7K1f1QV8uoPAaely4W4D7CmM6WxPwj7RP1BLZZyIRvbWhu8l
	j6e+b/1LauJrOYbF4GEZQ3m2NZDtIYyI9vPf8sQcAG7t3MaT0sHYDd42l6MThCjia940/scTArhDH
	Nl+egwgMu21dGwD4xf1o2ABF1mzvErdAcnFXUGnr4huJTTMU0R1GP3GDEp50eNDkEWopRPw8ZxqTx
	Ce2RuWc15eKqdXAvjBW2UwhFLSb5OdOi9l++pAkMBzi9yqeJMUtCoZG/iV+zGx/HQz0jYQ09Cwpo3
	YBFtOIIMYm3dpzNI7ujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1Ly-0001uH-Fc; Wed, 14 Aug 2019 22:02:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1Ln-0001ts-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:02:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so196090pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3oPlzvlPf3Rzc4cpgcIkobJmF5pbYWdwPlsySxjkAj0=;
 b=QsFDkKjaHSdT6ZUi+JJ7HPBAsxs4M45zVvakOMVd/f1v8yDy4Pe2ktVQIi6TcbQGs4
 +0rdap1k9RPnLJwD5sJG3RNHYDxiRp0DpzJa5rPFrWQYYZMFBDR8URhlW4LyWGSqLgDi
 v3nOVWGRXtObRIix2efxPL/FTSeXBV1Vh2bbPdS8+IInFkXk++Du4gd7sLVkXZIY9UIM
 oYSDp2D5AqVVqNwWUutnIu0wP3/+nwxYcTorj1iRwjtVLn7UIscolWVJf7FLpK6z/dax
 WEJZB9Z60/rNmcFNC4/QIfBMeYoSOqxs+6j8XIafhDh0BI51LPUU+2Cx0JIDhTMJ/+No
 RmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3oPlzvlPf3Rzc4cpgcIkobJmF5pbYWdwPlsySxjkAj0=;
 b=P7hFqHDIcPbyUPkMvfOCIjTkxsl5lgpCpJXuPlSCYTaFAuCjPwHdt+sN4gyrlDiGxs
 H3oX4aWlKxmBnJ1N3iyabPltOqrn7bTOlnAzPC15KesI6YpN44m+5IWxrvkhDCPxvmvR
 SfjCoG9TvQG4oNCxARqnowwLM3AEdL44trKHy6pUI4vS1cWvcWCHuegLos7JrMchgppQ
 PFiziMRlEFDp+pQC0kjyc06YLzYrAodc66Bw5mX3ETtKBe4nLlQK3bs33xBStIHMQ6zk
 o+7ApXUgUlcIofeQlFIu8fHRizuq0ZmkpNUrN0+KpDRZ/5IT6K2wq/7nTIXt2WSlsSwZ
 lKfA==
X-Gm-Message-State: APjAAAWlczcjX9Fu/MwGSNgDcdP94nbFkvOA+dR8k0lV5b/5Va/0poEa
 5bR1ww6k0hAi5PjIwZz1mXw=
X-Google-Smtp-Source: APXvYqzCBQPKmpeFEXKLaI6VKfcy6SgcaxLxPzYa/x4WSu39Iu3WSkxBPKAcusu6di8joy6ZTM5XDQ==
X-Received: by 2002:a62:4e09:: with SMTP id c9mr2268787pfb.130.1565820153895; 
 Wed, 14 Aug 2019 15:02:33 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id d129sm896504pfc.168.2019.08.14.15.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 15:02:33 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/6] drm+dma: cache support for arm, etc
Date: Wed, 14 Aug 2019 14:59:55 -0700
Message-Id: <20190814220011.26934-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_150235_341602_A1CED8A9 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Clark <robdclark@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT AARCH64 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Deepak Sharma <deepak.sharma@amd.com>, Joerg Roedel <jroedel@suse.de>,
 Arnd Bergmann <arnd@arndb.de>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC 32-BIT AND 64-BIT"
 <linuxppc-dev@lists.ozlabs.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Paul Burton <paul.burton@mips.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

This is a replacement for a previous patches[1] that was adding arm64
support for drm_clflush.  I've also added a patch to solve a similar
cache issue in vgem.

The first few patches just export arch_sync_dma_for_*().  Possibly
instead the EXPORT_SYMBOL_GPL() should be somewere central, rather
than per-arch (but where would make sense?)

The fourth adds (and exports) these ops for arch/arm.  (Arnd Bergmann
mentioned on IRC that Christoph Hellwig was working on this already
for arch/arm which could replace the fourth patch.)

The last two patches actually fix things.

[1] https://patchwork.freedesktop.org/series/64732/

Rob Clark (6):
  arm64: export arch_sync_dma_for_*()
  mips: export arch_sync_dma_for_*()
  powerpc: export arch_sync_dma_for_*()
  arm: add arch_sync_dma_for_*()
  drm/msm: stop abusing DMA API
  drm/vgem: fix cache synchronization on arm/arm64 (take two)

 arch/arm/Kconfig                  |   2 +
 arch/arm/mm/dma-mapping-nommu.c   |  14 +++
 arch/arm/mm/dma-mapping.c         |  28 ++++++
 arch/arm64/mm/dma-mapping.c       |   2 +
 arch/arm64/mm/flush.c             |   2 +
 arch/mips/mm/dma-noncoherent.c    |   2 +
 arch/powerpc/mm/dma-noncoherent.c |   2 +
 drivers/gpu/drm/drm_cache.c       |  20 ++++-
 drivers/gpu/drm/msm/msm_gem.c     |  37 +++-----
 drivers/gpu/drm/vgem/vgem_drv.c   | 145 ++++++++++++++++++++----------
 include/drm/drm_cache.h           |   4 +
 11 files changed, 182 insertions(+), 76 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
