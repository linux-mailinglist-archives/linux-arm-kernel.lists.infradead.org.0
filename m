Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D33F180B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:13:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3CQ/KrmbjoIOBMMQ1Xkqy2nN44+LuuNS8nUj0OzWYG8=; b=tz6
	+l7iI2xKphVcdEY9TVKapsZ+DfruG9i8tBg7ZJmCce+CC5+twM5XZaMCC7Cjf+N8NHp3gN0xEkn3x
	YOw/MvzFWzvDE1/X8TftBtzEkEyF50VWx/00mw0h3HPeWKvTUKlhdT05E2dvB7efu9iuSZQIKN8AW
	g9emBKYi5h5OSVVu1/GaaIla4xfnjbcgrODkt1EvGow5YZHiJ5nTy7r4LgnS6HxQCyjVIfv2dgKgr
	i0wfRUhrv5+Zspg1E7RKUsGltFFsul86Wy9LbVUgaTu48tS0m0nRBAtuY5SB9eE/WELp8EEc0Mfe5
	XIHgXC5gG5IbaTjP1XU8fbcXlPDSRUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM3y-00089T-G4; Wed, 06 Nov 2019 14:13:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3o-00088Q-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so3546220wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5J/Ofk6ylx2fNP9WdzIRZXeA0e3ywJAg5ijroGTIp5E=;
 b=tKY8u23aHs4/HPdanAkyFxDTfKUnmDGznwlyn9XjBCxK/OLl/98xLhDrlyXoAOfIaZ
 MTBKdzqlKcEi8Yg41n3F5ev4DIFFQCUugd5VfyB2HNWmoU4XikzTEDyANulDHbwvbcGt
 xDbwaS0xj8NvMvT+e/hpqaCLf8gOoFmdK/P02ME8aqM1f5ZIJy6RTYY9NhG5l3KDA+Wz
 PKOJOKmxd+5yxjo8fgNIlhqZK0EwwkMOR65hNLRR3VHbZAkOsiDGtqkOuLP1c2k9yL1F
 S4Ldyo5DpLfVAkoXEkLbUX6dB4/D40XNuTz48F2pAWJ0Ju6Z3ObFK2KYX4cDHUyK++vo
 VXrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5J/Ofk6ylx2fNP9WdzIRZXeA0e3ywJAg5ijroGTIp5E=;
 b=tKDQK9y/XIL0mRZkkWqH7zwNzk0haK+PQb/fpI7FkDYfSMclwMZ0HktXZv4hJqH0zE
 bWhkWPFoX/VwU/eteAJqeTqBeSdnuEF+iFz6TmUdpFWV1qVfC4k0rauY7sKxR2lxyCdU
 qK8egANDhqhdiJVCawnhU7eQDcflQX7KR+nz5YflM82l9n+0dNPfxCMauAZSabOODOme
 pZQ+T7CNAuXNCdbdmEFkyfhuAtqokmPjpzoujSJesKBAmXVhNJYWn3CJRsOcaCh2qXmp
 QD5S8CiGmnlTKAXoKxqRwFatThq4IP3YB13fwwwZwJYUGSuHVRcIf7e7m8+7uQwh/+ET
 hRCg==
X-Gm-Message-State: APjAAAXtBGmV0uJYzQUmwT7lA4ZvUFQHfx8XQfGsgj2BDz/5wrx7uUd4
 fwuBT68drIIaJAb/OXJi9UOCKQ==
X-Google-Smtp-Source: APXvYqz5N5+MuHewN3HtZf0o/tcihZPJ2fkIuNFxsMWdBRetpBqj57Ix1x+D/JGw4/oRNCMLLNTfOw==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr2938042wml.115.1573049602083; 
 Wed, 06 Nov 2019 06:13:22 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:21 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 00/10] Improvements for random.h/archrandom.h
Date: Wed,  6 Nov 2019 15:12:58 +0100
Message-Id: <20191106141308.30535-1-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061324_522276_001AA46F 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During patch review for an addition of archrandom.h for arm64, it was
suggeted that the arch_random_get_* functions should be marked __must_check.
Which does sound like a good idea, since the by-reference integer output
may be uninitialized when the boolean result is false.

In addition, it turns out that arch_has_random() and arch_has_random_seed()
are not used, and not easy to support for arm64.  Rather than cobble
something together that would not be testable, remove the interfaces
against some future accidental use.

In addition, I noticed a few other minor inconsistencies between the
different architectures, e.g. powerpc isn't using bool.

Change since v1:
  * Remove arch_has_random, arch_has_random_seed.


r~


Richard Henderson (10):
  x86: Remove arch_has_random, arch_has_random_seed
  powerpc: Remove arch_has_random, arch_has_random_seed
  s390: Remove arch_has_random, arch_has_random_seed
  linux/random.h: Remove arch_has_random, arch_has_random_seed
  linux/random.h: Use false with bool
  linux/random.h: Mark CONFIG_ARCH_RANDOM functions __must_check
  x86: Mark archrandom.h functions __must_check
  powerpc: Use bool in archrandom.h
  powerpc: Mark archrandom.h functions __must_check
  s390x: Mark archrandom.h functions __must_check

 arch/powerpc/include/asm/archrandom.h | 27 +++++++++-----------------
 arch/s390/include/asm/archrandom.h    | 20 ++++---------------
 arch/x86/include/asm/archrandom.h     | 28 ++++++++++++---------------
 include/linux/random.h                | 24 ++++++++---------------
 4 files changed, 33 insertions(+), 66 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
