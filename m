Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9DA494F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3K0G8L7LVC2rpj18go8Fv+Z904e6imG0VnEwxF2Ryz4=; b=nHJZJ670H7QT2ynGmgJ9UEBxHc
	PEnIzcmq36K3A7jqbr6UJoKoitnT5L2bzvjgSxAmx6ZwNS+Ef3Rujv/sVKgXml9ong7Gd4fr0GYSe
	nGpaecJel6RoA+plGZjDgw5+Od2KL98DEYJmyHtThFGYdY7sfDwngnYy9ydlP/29XuR/K873PfrVT
	wUsPDRza2/ubiCwvzVdmwOnNBvttckxvzlP0lMNZLcejxnjiKFSaG2oV9noO0JcFimdu3T5js1kmp
	DPZ4yAYNQf3pxwlfhYYOQ07KXTOV2MizMeU3/A76SAl9obkWnps5+LkD0SNRbWZWRkV99a/xwSxM0
	H0+tsWDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczt4-0003NE-MV; Mon, 17 Jun 2019 22:14:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczr3-0001sp-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:11:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so4744500plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/VaXSLpZ75ORCB1zbl4hdNQEjbM9Qsyda80h69PRSPA=;
 b=HsMQvlLIq0OP3L+FNIJyK0J78hvT1oQovohPXn1CRaD6VJCWPJiDVE7KaumvwPCqPI
 Kejd+2gug/XQ+dNQmZn8ot3iXedEbK/uf+uCWp4vrklRf18r/7wuC36QXr3aC2I+yPSn
 3juO07q/f4tTVJwdeVZeS+cbKvuPVDA2UKZ3y9lNhUdSG9QP7k6tD56pNJfmIEkIqJk2
 sKiiEmKP2oqEo16lJeYQGSdpJTVjAM+5d4O9IfYuxLMdcrGY6tZdFU379hSKXMadpcUH
 BFHBZh5uBpa0YpPUJgjJR7h2ZfTw9qFlGiq/GJX4ri5ptBDGBx/oc8dwS2ohZf26tdUc
 95nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/VaXSLpZ75ORCB1zbl4hdNQEjbM9Qsyda80h69PRSPA=;
 b=Y15/rRPPMe+Dc/22HO+zc5jlXbNNtil+WZ6Y9dsC4V2ddby899NpAtANlazqGwJjRX
 BUoieBtiaKlpWu6wngS1tTp/yChrMn2zS9iS8E9LGvug5RpGHh5ezZzJsppercTMT7+5
 3Z6d+rLKc+u35/oht6a8IJ8a72KwTmq0AC8+0KkWcHr/b5boEaZ22nyGK7b8c2Blm2JQ
 SdYZv5f/ccaVcsAwRH0e5AE2207Tu/HsFpLsb7H1Ys6ABY7aV/6O6yYipmQOie8MLFuT
 g0P8u1jdspSZ8BEmxPiguWyF6fND/DHGfM/Qp8krq86p1CO++fUkMvfQWLTm0A/nio43
 zKiA==
X-Gm-Message-State: APjAAAV6NrOsow+8KLQDgGzjoONobBkCcrMuw79ysCuzkjMgytEFlL9S
 tygfBvhoa3IQVWHBUHyby8FL8KXS
X-Google-Smtp-Source: APXvYqx55+qVC4ZdfQ7ba9JDRhraTt/q+1YyyqWzNGimZEtBjgZOCXen8WCKjalGTR2c2HmM9y+7AA==
X-Received: by 2002:a17:902:8696:: with SMTP id
 g22mr84220867plo.249.1560809515479; 
 Mon, 17 Jun 2019 15:11:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s129sm12551020pfb.186.2019.06.17.15.11.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:11:54 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 6/6] ARM: Enable KASan for arm
Date: Mon, 17 Jun 2019 15:11:34 -0700
Message-Id: <20190617221134.9930-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617221134.9930-1-f.fainelli@gmail.com>
References: <20190617221134.9930-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_151157_433118_8F7853D9 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, corbet@lwn.net,
 Abbott Liu <liuwenliang@huawei.com>, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com, geert@linux-m68k.org,
 drjones@redhat.com, vladimir.murzin@arm.com, keescook@chromium.org,
 arnd@arndb.de, marc.zyngier@arm.com, andre.przywara@arm.com,
 philip@cog.systems, jinb.park7@gmail.com, tglx@linutronix.de,
 dvyukov@google.com, nico@fluxnic.net, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, christoffer.dall@arm.com,
 thgarnie@google.com, rob@landley.net, pombredanne@nexb.com,
 akpm@linux-foundation.org, Andrey Ryabinin <ryabinin@virtuozzo.com>,
 kirill.shutemov@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <ryabinin@virtuozzo.com>

This patch enable kernel address sanitizer for ARM.

Acked-by: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 arch/arm/Kconfig                  | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index b72d07d70239..a9cb1feec0c1 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -21,8 +21,8 @@ global variables yet.
 
 Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
 
-Currently generic KASAN is supported for the x86_64, arm64, xtensa and s390
-architectures, and tag-based KASAN is supported only for arm64.
+Currently generic KASAN is supported for the x86_64, arm, arm64, xtensa and
+s390 architectures, and tag-based KASAN is supported only for arm64.
 
 Usage
 -----
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..5c98431ddaea 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -59,6 +59,7 @@ config ARM
 	select HAVE_ARCH_BITREVERSE if (CPU_32v7M || CPU_32v7) && !CPU_32v6
 	select HAVE_ARCH_JUMP_LABEL if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
+	select HAVE_ARCH_KASAN if MMU
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
