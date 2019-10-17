Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552ADDAB79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+JbvWLOTcP5kHM66jw4prAmv0vVh2sctyf9NvHRkZTY=; b=AwXxVMs1r+QdOJ
	sGUBuT6OZp79e+Qmz9P7DL6WC0R+TkpffIC8d+FJGqbw8msOtKrbYJMhLHQ2aKP7QSJGQ3uWUfehT
	0ZNQOdT5z/QWSOSUas6RgGHy4jSE7GYt3AcIcfkWdiKSqTF4lX1WEQ5rqLTo19HQEOW4lKLXW0Fu8
	erj9XoUV801DtQndveY/9OkTllHonuPyDvbKKYF7iITL9hjMwGwJ+r+pCxk2VsltF7H1Fev9dlsDO
	wKDLkXjOYZYFPSoUoroOnaWd/3kdUAd+gur5wD/8gQGTOUskV/5AFu+TMgFgxOf3kPygtGG1THZ1v
	P8VTIco84g/5cGYdSgvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4HZ-0001jL-2Y; Thu, 17 Oct 2019 11:49:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4HK-0001hj-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:49:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id j19so2229883lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 04:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6FKEoEtksLya6DHfOc7QmWACPInBFdwWglmBKOVW/8A=;
 b=gN0FgcFxl2+5+hNzCLQKNZ+X4pOQQM9SBjx677F3aDX4O0rtkz+RphkO6cJCy+mBAc
 0ZyHC6PtJYSEoEc/hhKZo/uOv5MVIbWrZLDQBcgbDkloQSuFjDZveZPbz8yFqHY6ZEwy
 ExdRwZA8QDfxsuJ5ehuLJdfQE/JWdxOvHpaPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6FKEoEtksLya6DHfOc7QmWACPInBFdwWglmBKOVW/8A=;
 b=YpWG4VAc3U6tI2qIKJPfDkAKDDhBAetoSIj47kr+nzIwbaIs9JgDtrk62SFMFM09Ka
 4MucjLdLfmyA+VpnuVSeUcmxjAScq0vNKbprP14emuG0cZuzrQytTZxf+Rer2+qRzYbr
 CL2Fso4qaJW/8AoyjLCmluG5goAV+mTYs1UAwOdc80G31+VklFlA7ms6eEPRzU/Ddm7u
 o/291/DyvkHUBEIN+VOMHqMFZFoEqh1W4KKi6N1+M+XH0jNprCS2bnfWSouxD2jNCtcj
 sGkVw5Zc9Jaofbfepl4pgUUJ0vN27PfNvZ2ulJHK/bk0MCYPWa4B1lmehQLOQ/P6YuX5
 LeVw==
X-Gm-Message-State: APjAAAUZFEDMEL0IzHo45q5dfgwhYL0ZUBn7S73aC48ij56rRER6LYYP
 sAk7KeI/RKCHcZ0ZNSSecygaTg==
X-Google-Smtp-Source: APXvYqwH6z0knFVZlzhAapP3XmtyBWwtK8p3HKnPSfyD6SY6TZlHYAgXjnEmvcGqR/wJYI5Uw3DWfQ==
X-Received: by 2002:a2e:858d:: with SMTP id b13mr2011262lji.71.1571312952464; 
 Thu, 17 Oct 2019 04:49:12 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x30sm920772ljd.39.2019.10.17.04.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:49:11 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>
Subject: [RFC PATCH 0/3] watchdog servicing during decompression
Date: Thu, 17 Oct 2019 13:49:03 +0200
Message-Id: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_044915_020611_9A0006C2 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel@pengutronix.de, Linus Walleij <linus.walleij@linaro.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many custom boards have an always-running external watchdog
circuit. When the timeout of that watchdog is small, one cannot boot a
compressed kernel since the board gets reset before it even starts
booting the kernel proper.

One way around that is to do the decompression in a bootloader which
knows how to service the watchdog. However, one reason to prefer using
the kernel's own decompressor is to be able to take advantage of
future compression enhancements (say, a faster implementation of the
current method, or switching over when a new method such a zstd is
invented) - often, the bootloader cannot be updated without physical
access or is locked down for other reasons, so the decompressor has to
be bundled with the kernel image for that to be possible.

This POC adds a linux/decompress/keepalive.h header which provides a
decompress_keepalive() macro. Wiring up any given decompressor just
amounts to including that header and adding decompress_keepalive() in
the main loop - for simplicity, this series just does it for lz4.

The actual decompress_keepalive() implementation is of course very
board-specific. The third patch adds a kconfig knob that handles a
common case (and in fact suffices for all the various boards I've come
across): An external watchdog serviced by toggling a gpio, with the
value of that gpio being settable in a memory-mapped register.

Rasmus Villemoes (3):
  decompress/keepalive.h: prepare for watchdog keepalive during kernel
    decompression
  lib: lz4: wire up watchdog keepalive during decompression
  decompress/keepalive.h: add config option for toggling a set of bits

 include/linux/decompress/keepalive.h | 22 +++++++++++++++++++
 init/Kconfig                         | 33 ++++++++++++++++++++++++++++
 lib/lz4/lz4_decompress.c             |  2 ++
 3 files changed, 57 insertions(+)
 create mode 100644 include/linux/decompress/keepalive.h

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
