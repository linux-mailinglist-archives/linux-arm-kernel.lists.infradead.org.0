Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E1D1F7854
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9doF4HHVhLuc+Q0Sb9aOrYndLbVKl+wbiJ+HJMp8Gc=; b=WtEkyHauvINwvL
	MUAUAsSxLeqs5Ri5kQTS3sLdnFIJiRCGiays5LzFJeg+KUdrfkoKntv4tkLecor43A/+ox5sgWscO
	eTL92bU5aZL0+N0+1YBUHD/alCAHxDwvtRnOjWKZlKFS+vGm4lgBqiNlcFxm3h5UopV1O3tHqIYyA
	dVlIyHEHbEYHMnv10Bb+726h3LHyEWRR8Pg+44VC2Cjh2809XnGcsAtiM1ACslPsX61HjsY/C26/A
	OgA3sNkTLkDLNjEjEA26TwMhyfCUj3obDr0zlMlV5qs6ReDXQMpK1O97hcsR0zmGkR9eYzkLPU3tE
	sBctLlNh7gVYoDYEURnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjLB-0004R1-KE; Fri, 12 Jun 2020 13:03:25 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjKy-0004Q2-OI
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:03:13 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ga6so3630414pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zFVtoiNjl4oNMGacca0AXJ3/iXBsqOkayEm+1Qa1zHs=;
 b=Bp+EnSjPOUJ1eV1lT+rQ/Iq2sJb89w6XMqQP1w1VdqIElaVRV2saN62kX3v9tOC2Gq
 GIMz4yxfEZ53TxmZTGwpc4J1DFsyc6GDl+nv9YpIYmSe31OXVi4s6wTEyNxKPWeD0Ncd
 Cz1Ba9KkwWGJpAkXZn7nedykAq6EDC/g6gR6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zFVtoiNjl4oNMGacca0AXJ3/iXBsqOkayEm+1Qa1zHs=;
 b=kd978qElKhONzCFHAa7e58ue+RpKsdzdsaS7fpS0Wn4NUfPh+rBgELqAa6wzruF0OH
 vwe/whwj0g1jYKTYFp5KHXXlL8cWFRaUrIGnVfRtBiGqPMVfimrvO1PF32Wy+DVzfoXJ
 2yLe3r2qmOCeQCELK7haAWS2cMSRHbVTjp5/r6PVCy8ldWGPI+e94DZh6op1fmouzv2L
 gF+suSrn1RfLrIvQtUma4R4LQQ1dt46t4ioNWpFMBb+Cy+BbCDRUjQtdwcYy3pVo7uzO
 0EKWEzPQ6W3nzCLnluG9UO250S7qbCOPBSzLaQviNYx1rin8gF6f7aKgTvzVbOPmyB4E
 zf/Q==
X-Gm-Message-State: AOAM532Hi+x5PHIeKZ4Tt7pBDINkzUmYncuQLkONhX/zb4aa4DmBuJ03
 ge2EaYsueRXbdrxvrFxpqf+k8Q==
X-Google-Smtp-Source: ABdhPJxLhwaoXhyApJdmwU+cJ78D3efrWpzxB05a1uevQvfO0cfy85Cc2vgBn1EEb0keJzGjIWtnQg==
X-Received: by 2002:a17:902:7c16:: with SMTP id
 x22mr11291382pll.244.1591966991703; 
 Fri, 12 Jun 2020 06:03:11 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:03:10 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 01/12] dt-bindings: vendor-prefixes: Add mstar vendor prefix
Date: Fri, 12 Jun 2020 22:00:01 +0900
Message-Id: <20200612130032.3905240-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060312_786187_841CD91D 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 Will Deacon <will@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for MStar Semiconductor, Inc.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ef6d75b9113a..86b569a0c008 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -678,6 +678,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc. (acquired by MediaTek Inc.)
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
