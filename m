Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CACB974EE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jh8lkdIZDg6Tu9CXpQUa0bL8M00AbLQjZRiiGQFkCLA=; b=HqM7YdAng9H55i
	jdTQjXilDW72coRneMJa7WuLv4waZ6gVHEy+W3rsakBkJWsM5oF5mg3VIWHRVh3dsS11MmzZ1sJm0
	HuCoQR9Xqh3laxYP/Rd+5FDlwGFKxHC67dJpDE386E+mjpL9yluhGgoxlrAXAlNvqgOmvB8nre/VV
	zn8dZuakwl5+kzKvl57OsDqWNBoXVff4c9eepsCKavrkba2YwV/YN2SvdMGFdzUGi30UlSs2fIsHB
	v06lPBbPEHveShWCQ2CuRc2bUR0s1MkUHkMKWfaxb/Z8L+aSLt39EaWzXgdCL/z0qypTHzR06CkFb
	CSdYafM8pe/4BUdlj4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdZH-00039n-QF; Thu, 25 Jul 2019 13:14:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYQ-0002ig-VG
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id p13so50712417wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J5s3N85M9ajD/urZFm5P9YAai+R4ucnPihB3UAQSabI=;
 b=tr1coZsTvMfvRar6herRh/Wc2zp5wCgiRIjYDHYlrYoW2EcVtkoWaSrYBBxU6UmWj+
 TNqkCYXH4+gdbK+EXPYJpQzisO6k5q9QXm0XuFrL7rLmfs7gSnVx9gnvMHFmcSe5mdup
 iYBvtVasBieDcGz+jDGrmItNb34TcQh5OoOW9lIFMKORlPixWZCR1YmsCUbFS+LMiR+M
 4+qhpOggSQurUfwusBWvK69/ut64/VS2SiFg0yKbCedE7SKxenCCLkJO2JgcAXCuYqco
 h+BsCgbKYph0buKQnFjztstk2Q15uHzJoxIcFv5UOXJBD1Q21UcZKIciFA2xSgsvMsJs
 gjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J5s3N85M9ajD/urZFm5P9YAai+R4ucnPihB3UAQSabI=;
 b=FngtnF9lHr86LFz+6CekKGoayOJtisV6YqiVM6T+B98PD3fJg05Nvx6BO6SerELgIh
 RPoWm/xEfwslKaPANfxiZu4nE6AyBvOlwqfYGxn7DvZ18zhGznQuk4Vq2sZv3RIJy7Tz
 N765+x6xsOtAhf4GK/U8nbHodiJLO+WXGfIWX7bHZiNdKkbvcnvVdjMKSQmIvDDl0gcJ
 d1QD4VBkwwYyroS7AXP/JtEJe1x6bBrC/hDF0UW/GLxXmqqs0dK5ZC1Adj9tm3IiEJy6
 w6+IFAsqmF5CMtdWnbE0AXRvQfIN98szY3MYvCDFsUk+3JuXlNIiqp3umOZFpxVL+DuS
 Jvwg==
X-Gm-Message-State: APjAAAW5U7VDauPXwwM5WyilGChNdLrAcB7Wx+Ns8YVIEnfzTSmG4JoW
 Hu4WxNjcvL4pc9fzX6jFKsk=
X-Google-Smtp-Source: APXvYqwyJAeQAkUdSaoWLc4JL7+dV4O4TRza3CWK++OFI6pcP8xs52IFKl8D+EOxx5Qh4MPLVJl0sA==
X-Received: by 2002:a5d:63c9:: with SMTP id c9mr59005945wrw.15.1564060385843; 
 Thu, 25 Jul 2019 06:13:05 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 3/5] davinci: fix sleep.S build error on ARMv4
Date: Thu, 25 Jul 2019 15:12:55 +0200
Message-Id: <20190725131257.6142-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
References: <20190725131257.6142-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061307_077127_C35DF95E 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

When building a multiplatform kernel that includes armv4 support,
the default target CPU does not support the blx instruction,
which leads to a build failure:

arch/arm/mach-davinci/sleep.S: Assembler messages:
arch/arm/mach-davinci/sleep.S:56: Error: selected processor does
not support `blx ip' in ARM mode

Add a .arch statement in the sources to make this file build.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/sleep.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-davinci/sleep.S b/arch/arm/mach-davinci/sleep.S
index 05d03f09ff54..50c180acc680 100644
--- a/arch/arm/mach-davinci/sleep.S
+++ b/arch/arm/mach-davinci/sleep.S
@@ -24,6 +24,7 @@
 #define DEEPSLEEP_SLEEPENABLE_BIT	BIT(31)
 
 	.text
+	.arch   armv5te
 /*
  * Move DaVinci into deep sleep state
  *
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
