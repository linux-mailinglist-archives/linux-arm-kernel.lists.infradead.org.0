Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E081E4B968
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VuwMfCoH66UWzLVa9XU5gYS4KlC8QBUgRoLHmtRYy2g=; b=Bkt15WRvWj1tM3
	IjRiEUfWmkqOyGSurBlcRryrlrJoaw6LNRJ7Op+XYEd+jV6G/84hky1BifaN0SWlMAAZ64vZh62I7
	eZt4GX78AeEM4sH8047ZYIrU4N/47JLTff/tFGaYBXRplmgekZ54YbMwYz6OK8sxKDJ9iLkCIIqqk
	N9YpulN5Z3W/u9x7XXy/5f32wc65/5YKZ9PODNp/pBYyDAtDtBs9Kqv+2B/c0DEfkB20sjIF00I4K
	DaSMhubEp4aSakCLTj86CPSWIscJKj+vEAKMqucYdGXt8VoLgCwo6IbzM7M8RFsGo2ub0GYRwcY3e
	uqOI8EVQSw29TNLtXFAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaI1-00033V-2b; Wed, 19 Jun 2019 13:06:13 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaHc-0002vB-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:05:49 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M7s1M-1hhPlr438s-0051Nk; Wed, 19 Jun 2019 15:05:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org
Subject: [PATCH] ARM: omap2: remove incorrect __init annotation
Date: Wed, 19 Jun 2019 15:04:54 +0200
Message-Id: <20190619130529.1502322-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:dnAraIqnAFKO4Ee+PXPJF/LL3WFx+kBCx35hS/zH3XPenx1T9Ys
 kgXaZ8E4MOrxh9YQWe2g5fxpnQBAjZAJiNm8/rhI/Q9x58NdE5suxhAdEY176sJhbxqO0ZU
 0dwSTg4Gvhn+nxBMPKr9Wz38owbJx2ueOa5DEA60MCmTAC8sdf7kVmXLR/nWg7mc692p9Le
 BvoIQPBnyZctUKgIRs8/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0mRlXBkSslw=:FoLq8ELxMpa2ObJt7RxxZ7
 QQJlQ/XyvjcJchlJGmvbu+7W4CFnMm5z4zxQ1TwUtjrpriuekVOwMyX0PdzUFJ7fXpmHcF/ZW
 yjCB7+ZOpMJj+0ECdwIc0Pd9O0t3fYDc1ahzT9prtfhu/uu4/kd6/jSuXvKKbcE9IdoX3iIkA
 ZAFlq9IT9R+8iOEvGQG7iGZiJAjbBA1MfTwMuxlvDkv7tBZR1ezHdDQjwg4shzvEvIDVl7hEg
 WlPAfmpIvWKIyqR7KHkYlbjHCHvt/gmpzfzsCYJQIEHKW9LSAESmDmoVDV7v8Om9kXBh9BwQT
 ZH0bhfooDV5RhLKH6euGrIeQEl1DeNKGp3DP/huqIiEYezEH0k1KCdkBRduZr9EHFAvEUJChY
 rhMi6qLhqnzdUHUcdc7jpaunWTtFbN7hvCinLppWvCEUCjxHfnlxnoCAIHhBTSlIjusySXLhM
 jftrcky1AQcVoBAgxOGxxnvT1B9qA8y0R9PU/Tfdw34KZ9oUz2P3n0heMcClgTD/qoDKorXGy
 Z27RxBCvyruSt90PIPKW5mSl7huKCyW3u4tDQWwATKwZlHvA3nt6aJtxeAawRaHn6rITq5JXm
 FvTuguSX2tcSG8yNuTNTJ/6iE45AJ222Mr4tj+JbceubmXOsFyceBnZ5iNa5efEIAdwW7oJu9
 Wvj8eI0QnD9UHilbLOp7yk63PY/iCCHOOWdCc6VQoyE460y7ceIEvWFYYO8F86sTz1OjTNA6B
 FxGgg1lfBa7KgEULX59U37Mgu4FH1j2G2JzutA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_060548_568308_BBB6A365 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Paul Walmsley <paul@pwsan.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

omap3xxx_prm_enable_io_wakeup() is marked __init, but its caller is not, so
we get a warning with clang-8:

WARNING: vmlinux.o(.text+0x343c8): Section mismatch in reference from the function omap3xxx_prm_late_init() to the function .init.text:omap3xxx_prm_enable_io_wakeup()
The function omap3xxx_prm_late_init() references
the function __init omap3xxx_prm_enable_io_wakeup().
This is often because omap3xxx_prm_late_init lacks a __init
annotation or the annotation of omap3xxx_prm_enable_io_wakeup is wrong.

When building with gcc, omap3xxx_prm_enable_io_wakeup() is always
inlined, so we never noticed in the past.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/prm3xxx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/prm3xxx.c b/arch/arm/mach-omap2/prm3xxx.c
index 05858f966f7d..dfa65fc2c82b 100644
--- a/arch/arm/mach-omap2/prm3xxx.c
+++ b/arch/arm/mach-omap2/prm3xxx.c
@@ -433,7 +433,7 @@ static void omap3_prm_reconfigure_io_chain(void)
  * registers, and omap3xxx_prm_reconfigure_io_chain() must be called.
  * No return value.
  */
-static void __init omap3xxx_prm_enable_io_wakeup(void)
+static void omap3xxx_prm_enable_io_wakeup(void)
 {
 	if (prm_features & PRM_HAS_IO_WAKEUP)
 		omap2_prm_set_mod_reg_bits(OMAP3430_EN_IO_MASK, WKUP_MOD,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
