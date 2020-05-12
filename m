Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED7E1CFF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EH1v/GIdJ2YqlPvjmBcesgeigNySIzZ15DxpmrMh/BY=; b=SOL4o3khFjBNdp6ii87JN8KCfU
	INSMjzcy50tpqG2eFvNJfErWU0EYqC2+Ooc2hVb9LBejg0i9uHlDr2Ay808R8NOb48WvrjbSEGgZH
	JjpPNRq3lx9z3/QMA5MTPCll7vvQ4Ikwpldvm/QOEoBIz6Eq7Wkgi2dhmNuJnJNg+PSXBU6jxJdRz
	Vk1apDR8jZbjWHM7EH72vTLYUhXAA/zczRaq9Djch39UhQiDuB54C3leC4B8hyyAx07cg2zdvsfqh
	0I1P4YhE91/JZz/0VQT7jFxOAt7v8xdnVQbHi4a3CN2Va1x4+upz6inF1NvL8HsFbk1ecNYr4R/be
	eQq8/pUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbdT-0006aa-V2; Tue, 12 May 2020 20:36:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbcn-000649-JX; Tue, 12 May 2020 20:35:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so3599988wrt.5;
 Tue, 12 May 2020 13:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=B1auPUCQJ6jnhcwlo7ZQktJWdnEzk2MQBv9Xkb5qeSw=;
 b=nceJPZeojs6qraZ8fSw/SYQJlTdlVDPgIYgLp301owRsMMVQaScvhpVAbEBY7DoCen
 hM6a+G6qSjNbGrcDnjjcTJVIOaUysZAmQi5H/IFhXPUL82iFLfqDtCYuocwh9pXjU/Dc
 2g2Noow6pWxBbO/xkfGqnDoUXDqtf+EkarqnDTP5Ob4t7zFEP4nu850SIu8tX1gRL31d
 Hlxj23K5dXKqFmbKlaw3c9/AIOF83gCJgyq5LY+nYIn6SXGYLavTaxRPJ7HUoqQZpPLn
 6PONYfvWuCpA02crwLMom9YiLzUOXwRmFlhZ84fQdsI/cgNwjgTFs1hOanrSQzkktKMy
 HjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=B1auPUCQJ6jnhcwlo7ZQktJWdnEzk2MQBv9Xkb5qeSw=;
 b=H/9p1ACKhY7ncWUrMmGRmaRpk0JjR1i+DAcRt//ptEnM26FLxYsBfinlaKtpsaJPPj
 ETQ2PSOZTN4878BI2jpWnVAdiRpuTZVw9Dvx1PQksfsqBQ3GOE+lUuaPrsvq+byIp5l8
 MO41VSefegRFZx+aAybL+p7lm/OANK8aKSnTUEzkhqAYNXpnBdbiaP03YbKXb6J2YyHE
 Ht2vQMrJ+LPglbV9TPYFqPDcFUsjtgwj/4Py3xEuhYG0P0T0UYIvDb723tgq1a7pYW73
 CFqWuwqMJpjB8c2kBe9/6Uin77iYgcxwChMMYr3vtnZ9YGU0dZq2shCPD4ZLjmPUhe69
 3izg==
X-Gm-Message-State: AGi0PuYYC+TZ3/bZ/cGDSsvBWp46zdgdRXg6u6ZOB3d1+Bcib6NRoPsd
 qqyYszBUNFnPUBylHrjBScAVfctaLuY=
X-Google-Smtp-Source: APiQypLmrnkToJDCa/tZNLkmV4SRoLb0lnQbv6DphIFu9wMNPlB73GP2mZkrvbhGxQJldgXB7izfsA==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr15743833wrp.419.1589315736169; 
 Tue, 12 May 2020 13:35:36 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k131sm418219wma.2.2020.05.12.13.35.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 13:35:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] include: dt-bindings: rockchip: remove unused defines
Date: Tue, 12 May 2020 22:35:24 +0200
Message-Id: <20200512203524.7317-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200512203524.7317-1-jbx6244@gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133537_638884_9B3215F3 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Rockchip dtsi and dts files have been bulk-converted for the
remaining raw gpio numbers into their descriptive counterparts and
also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
mappings, so remove the unused defines in 'rockchip.h' to prevent
that someone start using them again.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/pinctrl/rockchip.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
index 6d6bac1c2..5f291045e 100644
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -9,13 +9,6 @@
 #ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 #define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
 
-#define RK_GPIO0	0
-#define RK_GPIO1	1
-#define RK_GPIO2	2
-#define RK_GPIO3	3
-#define RK_GPIO4	4
-#define RK_GPIO6	6
-
 #define RK_PA0		0
 #define RK_PA1		1
 #define RK_PA2		2
@@ -50,9 +43,5 @@
 #define RK_PD7		31
 
 #define RK_FUNC_GPIO	0
-#define RK_FUNC_1	1 /* deprecated */
-#define RK_FUNC_2	2 /* deprecated */
-#define RK_FUNC_3	3 /* deprecated */
-#define RK_FUNC_4	4 /* deprecated */
 
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
