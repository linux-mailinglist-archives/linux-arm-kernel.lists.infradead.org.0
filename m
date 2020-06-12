Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F0D1F7863
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zhrXeo67x+d5pR6I66PzanJlMgu7vwHpOiNi22RTDA=; b=pBAl/oCV7capsB
	0L4bDprSgcqh+PgoY6MfgwjmJZ1LskN3yGIAExTX8+/17jvvHrelbLv+LQQ6SnsNqWlRBOYpsnbnl
	YeaYm7Z4mBSsuQq7msAuNA1ytSnQPpm5qQesklUMrjEgo4gmEjI/fcjeeoa9BF2Ngoyp+E8ToKYBl
	h99+64jvOK7/muNviiL01PAJKQ+L5KNvvO4Dwir4opo4QQjMVzxFBVjvrO6alHN5/Vp2kVWmctDtP
	0H0qQePvc5pfDO/AoovhOvtg3TF2Ne1MnyipHj/Qyagf8I2VqDqNfT9bVnCT9FnEd/l2eh25K/S/3
	kVWQTmRzOYyq+A0kH80w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjMS-0005RI-Ml; Fri, 12 Jun 2020 13:04:44 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjMJ-0005Qm-Eg
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:04:36 +0000
Received: by mail-pl1-x630.google.com with SMTP id n2so3703885pld.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5vxKjtaR9J5KXw5QvNfVo9XkT2kELkwD9L/tBPahe7I=;
 b=AefmMVNZ/R+ZqcrsoxXAe4nIIuONGTsrV7IQ1oz2RDMIshK+C621Y6I6MwPTR7UvBe
 HTqpxVp0yg3Sv4F8pKf5X4XHgrSGA/PlMqqKjvzcZ6+dLlOAnwv4rLV8cfKYTWalwLtm
 MeF9TU73seMmRuTndpqMJ9IoeFI6F7+aCVqxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5vxKjtaR9J5KXw5QvNfVo9XkT2kELkwD9L/tBPahe7I=;
 b=MsvpaVFvuJ1Q//+edXV7u5/kgVU6XX0j8kPZJI66UYqXDKArnKvYsIgQIOa32dXEjE
 Kp81MxFOmPV5rFNuE4zRK4Agval6RCDxw54lxngFaM9g/jg8pU+jykkKhKz387+lFWeW
 Z6FK2krDz/aDxqCpi5mTzqPZlPQkZlnlNS4j/UElR37kmXuy9OIoX0Z5x6bE3C9+ALGf
 bMLJPhFhW7S0ew8AnkJVGg4zEwE2JHaNRPuPkeL7BYxhoyrBumM0e6fXtxTJfHgv7+Wz
 V+Kghi77uaIwq4uzzxR43gdcXjFrHN4aMa0AwUyzmYnCgp0AHKoDrMMO4yhBnhqwgk6Y
 K/Kg==
X-Gm-Message-State: AOAM5321iQI1wixoTefo9PqvA/RoqfynQWBfqP9j9kOXykI1TELx7GT0
 cG17ByJlfXZuC0i+oTC8XKYq4A==
X-Google-Smtp-Source: ABdhPJwg76Eyt9sWMuI/3fYjUtxebHMP7gP8S+d0oooT1BSuAMCR7x5yEpWVIIRXwQDocI8k8yXCYA==
X-Received: by 2002:a17:902:82ca:: with SMTP id
 u10mr11301620plz.294.1591967073370; 
 Fri, 12 Jun 2020 06:04:33 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:04:32 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/12] dt-bindings: vendor-prefixes: Add thingy.jp prefix
Date: Fri, 12 Jun 2020 22:00:04 +0900
Message-Id: <20200612130032.3905240-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060435_488887_3235BC2C 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
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
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for thingy.jp

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7c45b4c6fe40..70a8f2696427 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1036,6 +1036,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
