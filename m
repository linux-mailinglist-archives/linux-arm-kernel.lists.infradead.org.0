Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01F51F785B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAFqctHqJv0p4W31A5tzuh9vl/EMeS3Ez9F7d0IFYHw=; b=nswdwOkHbGCRMd
	GLt6io3bZ018UI+X/NYb7ugvSCYtXlqAq8UmS7fRnRqIY15eqjzDY+9oqDJm2w1oegqAeMD/5miGu
	LejuFYtagk9ZPHj1o7/0wOL6r8K7EwUZll7BABVJO5Pyx2GRajro+vqIsicJNmLjFRCqOXsEyxkFV
	rkYHHR29HFcZoKnH3IazrEsI9kzqSVDmEHVnJYF31Fdip/xkfiUsSlmuTjLwAJ5S5V3GvOKT4e3Yg
	zGSzNTEeSPtVsT+unrmyBBE2HHtTBPnsaNd+IaxNl012bdRDp06GXs24VRprEU6Vq/WQCu19+vuSV
	/xRuhUskOlHDpwkMcFlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjLb-0004tC-AR; Fri, 12 Jun 2020 13:03:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjLP-0004sO-8l
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:03:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id n9so3734299plk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XChjBh6npquWu7Gds/Y31/zFut/MusA/6k8uIHJOBp4=;
 b=UwmU1clazf1waXMz2OfDw/fqAyqKGnXsGLQHKoJk5sAMUGUzsciCh2kAJ0iuEN6Lzb
 ReioL9yEqg1Ha+7Pr0XfBTJcEkT+oV9ipOE6zPLcBxf7823zdTx1UlbGY2cskpoJb+Kz
 3Z327x+cdQ1rDGNwnRwxu0/YY5vppwsSsNeq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XChjBh6npquWu7Gds/Y31/zFut/MusA/6k8uIHJOBp4=;
 b=D7KXOXsZKbMDjdguPfLkJwuWeii1AndV9Z/pXOtlWVLGHnONOHM9IVxJaXKbcEu/Vk
 tZOseoedOmHOb0x/AomLCynqBWEhkSEbVWX0+vPmxAwOXIbHOJt6Oh75X3VIV9e9vxWz
 TSgC4fFXiDWC5i8/Hz5hSNwvQTIxVrk54jDaYp1ujADfaXCgGm/XIgkgGzIVAsYEb3HE
 unoN1pcLEGslZ+FWWzwxKTt3fdoS9QEvBnMd9b5icIOpYfc/ggoLqCcWsFcreVPv70/a
 sUVdeqRMQ+rqtT6+/pHD+iaPrgCFCh+F6zDz+FiHKJigKBvgYTc2bo8vViFIkRws+gUu
 5HmQ==
X-Gm-Message-State: AOAM533zT4d5kteRCSXhg6XBYFCtFSndm8leFE/G9sCZeKYwfs9CcExj
 mPOVtbQ1fZsei6vf4HzGT7xaUg==
X-Google-Smtp-Source: ABdhPJxW6okryb1H/Wb2uZlId7rrSe/g6oANSSlhoWqGcCYTWG7bqOaMgoczORRgsCUTAJlZ0SskRQ==
X-Received: by 2002:a17:902:d889:: with SMTP id
 b9mr10724178plz.206.1591967018698; 
 Fri, 12 Jun 2020 06:03:38 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:03:37 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/12] dt-bindings: vendor-prefixes: Add sstar vendor prefix
Date: Fri, 12 Jun 2020 22:00:02 +0900
Message-Id: <20200612130032.3905240-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060339_338297_81545E72 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for Xiamen Xingchen Technology Co., Ltd

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86b569a0c008..314a2ddcb6a0 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -984,6 +984,8 @@ patternProperties:
     description: Spreadtrum Communications Inc.
   "^sst,.*":
     description: Silicon Storage Technology, Inc.
+  "^sstar,.*":
+    description: Xiamen Xingchen(SigmaStar) Technology Co., Ltd. (formerly part of MStar Semiconductor, Inc.)
   "^st,.*":
     description: STMicroelectronics
   "^starry,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
