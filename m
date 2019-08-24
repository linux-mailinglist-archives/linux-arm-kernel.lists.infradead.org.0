Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ED39B996
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kkiKXcxX71GnSG0R7qsPKFKhR7bXkqxSW6Ovpee+8fk=; b=X6Djym1l46RLLX
	joF6lwRpQgDQwuSXPpfLY4uk0BjoX536E7ytRBrxTF6ovkw3Qttp0C6Ul0qMvvVV/qaJGmRt4HK0p
	N8DoV1hMWaQx1oWXUJWQh46lCyen8C+DRtSIVVsqgfcd/lKXU31lmdz9iaW7GhkKStQawX2kneJtc
	xgbuUv0D1rplqJsGqMziJv3+JjfA0ZUdg+1yn3E98KTSsaLmmytMaaLudque4YhpFXHm7Hh/QYADT
	vsGYD9VITlCKXgcvc7UAzelAHIaTVFX7aIXaid6BK/oHmSCtbTrt6QZuAywBffQLQI9DRmYRusf4x
	D002D0A0WvhKc2z++HFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JuB-0000aL-2Q; Sat, 24 Aug 2019 00:27:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Jtr-0000Um-FO
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:27:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so7554960pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 17:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VP1f8HZAKr0tzKIISPkmMNb7FYisHg4ALq7z2Nj4r3U=;
 b=bsFYDaWn5ODG2D4KejL85Am/pCDbwuA16m/seUKTZdnhwDzhgFoICV4vTYihcI5XHV
 4B/93/ZTjr3xZYLg7f9nmnHO2TfZFR11NG/bhJ9nt1RbGqVFwp6TfjfzsCMKLnxYV9VB
 Ymahtvefc3UO6y7EmHjW0meIOHtwYp36U3RVErGLG6l7+bsaK0pgATneQgICMX5H233X
 48ECLzKEphuzi6kh8qoKaN1dj42npRrZMBx1XJgYGEKFE0HkXJ8Zso8/AM5Nuos1Nove
 9dNd7XHJWBwolzzLr49ymBEBax52Jh0s03tQYpzhgcRhjZ1/CSkzh1BmrgZqZaNjMD57
 12og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VP1f8HZAKr0tzKIISPkmMNb7FYisHg4ALq7z2Nj4r3U=;
 b=nvtiVk7OSLJXKSuybCBH/P5f7ldZPe8JExCq7BxV2MD4g7kl6YWMp0Uv1QjWK6YZ6A
 pIBqbYvhLrbS0UCQdCWAsCYL9JLwSiBpRn8ukQD0YqEPCXrX+P91Y7NbXcAQRmSLXM60
 Gty2Ry0OcKlUx5G3O8wg3ku6iRqvKqljO2++m7Uef7tKwn2s5QkrrPwGWUN7nsjcZBwF
 5XJ01K8CHNidG9KmiAX5MQRpsSKzKlwJNwZHtT5Bix3Y5NtcZnSHLdv8C2oFEE9QIpao
 va2Ac8Yu+PU7l0qGTuBdGFveIkhb43XYOHTaCagVzHhExf7Qf9ynGJpwf/e8+xwZbWNt
 bJyg==
X-Gm-Message-State: APjAAAWtNeL6RXs9NMuxvJH2G10hkbYemSTyytXlcMpgWi3wxycg3pAi
 WEvPgtbOOCFvjsKRmG6JzqzLeRVkfu4=
X-Google-Smtp-Source: APXvYqwv66UnDIdIf+qUtP0SrN5iezU05RBtgXdSLuMxGX4NzBEJM3XILGRnczj34lPR6qqYumEFqw==
X-Received: by 2002:a65:6458:: with SMTP id s24mr6185430pgv.158.1566606442055; 
 Fri, 23 Aug 2019 17:27:22 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id j15sm3681399pfr.146.2019.08.23.17.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 17:27:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: vf610-zii-scu4-aib: Configure IRQ line for GPIO
 expander
Date: Fri, 23 Aug 2019 17:27:03 -0700
Message-Id: <20190824002703.13902-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_172723_537287_6FC9A2B1 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Configure IRQ line for SX1503 GPIO expander. We already have
appropriate pinmux entry and all that is missing is "interrupt-parent"
and "interrupts" properties. Add them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index e6c3621079e0..45a978defbdc 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -570,6 +570,8 @@
 		#gpio-cells = <2>;
 		reg = <0x20>;
 		gpio-controller;
+		interrupt-parent = <&gpio1>;
+		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	lm75@4e {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
