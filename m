Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3088016
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMP3bf/OmK1i5bpC0zEs0iVSczVYROy7U5sMZE3zLy0=; b=PW+yjf9IUnKqpv
	yu9LnYzeiEvO1iq5kZx7cDW2EY/Q+TdVWEunayo0jK4/q+vWThk0MtW5NsALGtqEssK2KPEyLPn/w
	kBiEdmMu1xk0D5TUnhteF5u1mkY+OKDNW2mc7Y9XWgcq+74l0Vq+uujjO0TcrWhx++rF2mvs6fYu8
	yjowRHwOmofglUhFI7NIKDdFrN6cXewojSGZFMXK4ZvjXoNl+68GdJYXvUHNaoOLN2xbKdAWmoCbN
	s1Li1lkd7iKPo2MneCWE3xdwSYT9YA0S8Cx6OFVdJUktqSiOQ8nfWY0PQJr0e87ywGYgVZdoGM7I7
	yYYxgwHXj5FrO32VOklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7q7-0003p0-2o; Fri, 09 Aug 2019 16:34:03 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7pu-0003o4-Lj
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:33:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MYNaE-1hsKSU25II-00VNep; Fri, 09 Aug 2019 18:33:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 2/7] dma: iop-adma: include prefetch.h
Date: Fri,  9 Aug 2019 18:33:16 +0200
Message-Id: <20190809163334.489360-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Bh33ykmcy9xC7bSgKe5HpMvYyRBu8+rYYbrInIRFMtFJWkiaYiw
 WkUwer8jq/UzOidzEA2SoYi8Cby4xXUV7rj1mrrTA9Tyw2wfzv3Z/MWd5Lqbvhp558XUBip
 jgMrj+QezZpI3n5o6cFazIyoZ8oAk+Mf4GFmrn8xzYXhBaPucLOSAzl1X0tOzqPkzR7oH4x
 cXZXRBV+RIzmlMdUMm03A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6RfzKM1WAow=:uRVERwLffrlsRjNFOt+pi/
 o4Yzomyhusb70fgqKxK7mCVPktO6DPJmXP/KoHG4CqGpBCzcXM7+WBSKpiHoLwTisX0GuKMOP
 USXv41Z27HZ2NpBieQROias2ZqVdiZQf3cyOpzSinyBbHjZp5K9whhaTUGFKaPFcIbDa0Sl5F
 E+uayFQhczgS4r5YsgbfQhaK1pXGWrEB98+X8YtM5TJQ3tYdYmN9vIGMMPsmz6O3ObS3C+fB6
 YbVmwjlqFgwEphEHMZk1FNozIkRcLXcx4g7lq4L9PYBaBborbA6OquIuQ6ZsZ7W5HIDwJ0wmK
 EaQuJgjaQXdHxltzpjT3KzXxn1ywQwtFOxjmqgrl4XDVouqp5TIanotlqyh5tAScihZaDBNiF
 BJL7+wC3D+rKTHlS9UAjeMy5YWvaMZ9mOc9IIs81L2YrLKzpxzwZ/J5WCYnFizUtuRIaAUSfD
 5qqs+SLcebKIS3173uK16zA8mgNOrMysSnLYv2xYz7KEDrTPS/q2Ruwztim9M7RY4Yqn8eU95
 kgZoWtFhYpWG9tydQEVO/Q+9urJOK7FYWi1QvixiKrudFBkQkXsNGdHXA7L7JME/nRbprrpE/
 qDE+hxr2Z5DBy50I7lUQrZkf2aJls+zc7PVokBNL/BVXzYxVUXleQa5qNjjk5IH6OJR1wvtda
 w2dqwGRfE1zjjv4vAcWplfNoVImcKYxRj18CqNmbufCCrCx4V54IsFOfXRAaihabdu39gRPT0
 JHKIiuxSzy17u+JGUIk78ntBZ7qpurTzJuKlyA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093351_002265_12C7DED8 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compile-testing this driver fails on m68k without the
extra header inclusion.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/dma/iop-adma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/iop-adma.c b/drivers/dma/iop-adma.c
index c6c0143670d9..7857b54770d1 100644
--- a/drivers/dma/iop-adma.c
+++ b/drivers/dma/iop-adma.c
@@ -16,6 +16,7 @@
 #include <linux/spinlock.h>
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
+#include <linux/prefetch.h>
 #include <linux/memory.h>
 #include <linux/ioport.h>
 #include <linux/raid/pq.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
