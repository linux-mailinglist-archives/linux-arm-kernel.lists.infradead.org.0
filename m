Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7678B1F785E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dw9rWxXcm/AJUmGwRQAQTRUi+BGqovvGU66Oir+BfVo=; b=VqjvchCB98AhzH
	gJwe6uReN4eqxYcc8nY8unfov2ENQF4gBzRypkl6+5XilFyOvGy3vkCVsI+dmVifTmKoy7YaHNrZv
	lw5AuC4i+YgaDwm6BCWoUnk4Jcm9iDDU0OD89dIZj5TQ3L/fYp+sYYakF/BESli7Z496RitN5hn4m
	l5PS1iSfMgZSSBAvsENmnhRFV/LtJANVOZmB7y4P/AxBcKducwTR+XxFMDwjFyONsKg2HsBIXQeKE
	zXXX2sJ5d9PlYb6Uz64Tig5vZZJ6cLmij1rs7VS7o89dbwi/tx9VWapCaGIodl7TH+AIUlvyD7MU4
	+AKSNEKCvzLJlk435Bpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjLz-0005Bx-2E; Fri, 12 Jun 2020 13:04:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjLq-0005BV-4s
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:04:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id z63so3348114pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XxDkda8O67HgHGJSLFTrtV7JMSfXrWrn5BJlGMpDUew=;
 b=v5LIkUnUnF2+bxJwj82k5O3Ugtx+V+dOnpssvRtDYX+KsvElv43rxkxrOOUV/zuGnN
 bm54gsNjWwVP4WCpw5aBqG3GjMIVZH6QB6WYJ5fJk0Ri2vbBVR/ZWwoE775ZJ2mNzs1L
 Xi9bznFrxDfQwG3cqR4VwmgWt2Y7PJNlj0x6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XxDkda8O67HgHGJSLFTrtV7JMSfXrWrn5BJlGMpDUew=;
 b=SwiqF8BzDM5bzx6x3xVrgy+L/x/00VXkRi8rKskLN4INNq9marY0F5iBACcjsAKgy3
 z/00mUPCnDbY35bbzYM+V//fPCeU1ZuW1EcOi9UvKQGJjO9qOAUrAz2jP0Yxmhfc/LkV
 ogQcg1oR3Oq6z49bZ5/JH1OF1u/P3mRWNdtE7p2KntZ9eLA+L8Hey2sLV0h4+gvtZ0U9
 qLeShkF0fv/moazfuQpRJ6ZL4CobxStO2oVcuTrKxIccvckXqzfrh08iRXyDTTEx+IwS
 9wscdHo54fnHHO68dJLedXGNBroO9Fwz08QwciyNpa3SrV3I4BIv12angYSKhu+vnnth
 oxLA==
X-Gm-Message-State: AOAM530Y3uKOrfsBZYOPRjypaa0XPqhxO/K22tRmK8kXX3xnvWce3Zx8
 msixWqd238OHkkMfgtIxlSe7Cg==
X-Google-Smtp-Source: ABdhPJytiIJDeVXmChbd5bb89VuMarC4J8a0f2CzkWR4+onp+oE0ehGtriSY+VxWyDm+C4WNZXHdkg==
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr11840277pfr.47.1591967045681; 
 Fri, 12 Jun 2020 06:04:05 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.03.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:04:04 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/12] dt-bindings: vendor-prefixes: Add 70mai vendor prefix
Date: Fri, 12 Jun 2020 22:00:03 +0900
Message-Id: <20200612130032.3905240-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060406_185087_36CDEE8B 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for 70mai Co., Ltd

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 314a2ddcb6a0..7c45b4c6fe40 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -23,6 +23,8 @@ patternProperties:
   "^(simple-audio-card|simple-graph-card|st-plgpio|st-spics|ts),.*": true
 
   # Keep list in alphabetical order.
+  "^70mai,.*":
+    description: 70mai Co., Ltd.
   "^abilis,.*":
     description: Abilis Systems
   "^abracon,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
