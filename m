Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299471C5849
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FMXS64gTov3RqFWWsQ9qldeU9fqF8T/zSUBUVzH1/BA=; b=AOMo/ZPoeRvsza
	qe59EB9EWzJgv9FQhRHYsxy+G5Tg9piYV4BdHqVfJLzdBylnCW10w7Nmp087/LOTyt0h8MoMLZI23
	DuYp3IhkGI78h6eSu42ApOmNauVLJSHh5FTNVRLYMtneqrEVZOAugWOiUt1JoAcGQAtJ13ocNbS6A
	aw8npHL5PDHR0+MQgx29lLAGq9iQkfUQmjB8X6Uk2ih7JP7kvS40q556gxR5JmzJX74MuzhRQgEny
	b0gQJM4jWsK9FckSGiSdykSh3NkiVNgK83CwY6Xkty24UID3eahvzIAbLvEbMA9UF9yd3mwLjdJl+
	5xrt+mRlQ7JWhiLynnvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyJF-0003e8-1t; Tue, 05 May 2020 14:12:33 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyJ7-0003dQ-LA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:12:27 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MPooP-1jjMYw3zMZ-00MqB8; Tue, 05 May 2020 16:12:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: use ARM unwinder for gcov
Date: Tue,  5 May 2020 16:11:56 +0200
Message-Id: <20200505141218.684079-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:xYF4bWF6ZBT8Pyevxjl7TuHwrRpMUeaWC2ade9WpKlAo8vN+BLm
 5NYEooCfRPujRggbxVIeOPf1it9oT34YwaSKvZLx4zh1Mfhw3zzT6Y67uyTAI7izRBYyIbH
 HDnX7Aqnx6wJdexU7I9d9IkEDRelLi3/xo1y/LZ7OWdkJM5ICcrjCfBLbnJlGHsK7Brk22w
 VPiIPtIVo3hVudvHHOilw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hcOUmx89Pao=:ORC3xGKBYI8iWGf6iU56dM
 IWOLCS5ZkjFI9dCrUtHFQ0k2f+Dmmy669ljCEwKvg6LHATZNCa0VuIDVwJL68A+PZJOyPq6A5
 iL3xXsjnCHos+K0gdqh3nKqTk8kEJFKIaFppmhvFP0X8nAc7bfF+lHSY0lMpt0ZuWSyQPBHNt
 2Mb5akhUSpSlSTnKRxq1xV1MojGzEwfqkgrGy/+NRkQlXQ5wIVQZCVgZy8R05Qov7Dwq4w8sx
 Uzc7zCt88Z4IT65oVp6DFa+4qiV9pUdX/ujF9/MejBiBfLEQJhlV2JBhFM/rtsGlXp1mYl40P
 emt1EMa1fDqmZK7RsNO4jvA3Gg9peIxDNCh0dhadFCvONg1nuiJtuhJewfODqrttyfz9/zv9H
 coH7/be7/rZv6D3CHB28sK11ZuuCBissstLRibs0umsQCszOJ6F68fOeRjMNkO0QlRWOIEBu4
 /FubQg6OALzjsjYfUPLBqk+Yn0oGfflvrK3oYVfPoEAk2IIIQ23av5eombjwyxHgWUSvXnYsm
 zi555iu0Qh4P/7/Und7k8uhh/X4by2ULb0WBfH+RD/qBmTy6eT9dSorUuPQXs+LsknoK5OB4C
 guO+1D6OugrO6LlrUzC43cYAekk5PG6bTsx/CeL5NL8KybRPlLGVRIiXaAlG8gSBio1n8RGtJ
 a427JdifUZ+xlWNLC7sBWH9/VPrwP6dw4EHRBL5ac8BdivGlhpydUZgXyrgOcna1FxugNUt1P
 ccde1FtN8fjo3qNX6E2zMbajPVDtHvdq1rAuduFNNgqGGQFAuGJR1V0B2z26w7pvmPg0oLhR9
 jcBnb2ONOBsE9XYMONjrPNuuB0c778z8iUZh8Og52BolAv0nig=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071225_989479_D6BA1453 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nathan Huckleberry <nhuck15@gmail.com>, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using gcov on ARM fails when the frame pointer unwinder is used:

arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow

This is likely a bug in clang that should be fixed in the compiler.
Forcing the use of the ARM unwinder in this configuration however
works around the problem.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index a1dfb04231fd..41ef58acabf7 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -56,7 +56,7 @@ choice
 
 config UNWINDER_FRAME_POINTER
 	bool "Frame pointer unwinder"
-	depends on !THUMB2_KERNEL
+	depends on !THUMB2_KERNEL && !(CC_IS_CLANG && GCOV_KERNEL)
 	select ARCH_WANT_FRAME_POINTERS
 	select FRAME_POINTER
 	help
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
