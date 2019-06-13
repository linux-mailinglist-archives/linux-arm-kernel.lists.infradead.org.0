Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE9C435C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hp/ffVTGG76/7GEfGyBiprso3hHHA0sINKHMlcpZeOQ=; b=RwKk37No70SsXB
	w4Q7k0HRQmOaqFMy9ID4sZbI5i2zfbhFbX3ukEldRdXY22OM3Sx4YqyHHeFP6UfM2snK3BgNgFn7s
	mnMcc5mGxwe5IiRyKg/hYdjaxqm4i6oeYjT3Mskkl8Z0rknMXuxi+80a7DMvplAyO19XWRhS9/IKo
	lQZyFHwKCRFOrVvY5ZmYvJ0U7ToSs7Zb2QlhdeUDi0Bmga7LD3xlP2gvia3xlbNqybIMQ7XEEG67C
	M+LbD9I6r5ipTKz0SfhxysfsMkfo7I8cwGQwwi51hUvVnbJcC5IIoYMpm4KErbS/VIVe+TYKV40WD
	5vY8scmIUyK7Z3mEl/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOfC-00067D-EK; Thu, 13 Jun 2019 12:17:06 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbOer-00066j-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:16:46 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 8603020A7E;
 Thu, 13 Jun 2019 14:16:42 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 6D38B20732;
 Thu, 13 Jun 2019 14:16:42 +0200 (CEST)
To: Matt Wagantall <mattw@codeaurora.org>,
 Mitchel Humpherys <mitchelh@codeaurora.org>,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
Message-ID: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
Date: Thu, 13 Jun 2019 14:16:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jun 13 14:16:42 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_051645_382079_FC7476CE 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Douglas Anderson <dianders@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Chopping max delay in 4 seems excessive. Let's just cut it in half.

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
When max_us=100, old_min was 26 us; new_min would be 50 us
Was there a good reason for the 1/4th?
Is new_min=0 a problem? (for max=1)
---
 include/linux/iopoll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 3908353deec6..24a00d923c15 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -47,7 +47,7 @@
 			break; \
 		} \
 		if (__sleep_us) \
-			usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
+			usleep_range(__sleep_us / 2, __sleep_us); \
 	} \
 	(cond) ? 0 : -ETIMEDOUT; \
 })
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
