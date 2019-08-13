Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FA8BE69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/l8Ep5d+vTUZ9X6J+nXTjGZanP7/V3CW6y4tV7I1lwc=; b=n4xaamOlt9hv8w/QQoDI61Icu0
	/GUHGVSozgNKsTDS6ztSPVuZP/6sgkaxUAqwd58r3/GWUZgOH2h5ZP3g2gESAlJZ8EyTaFJbEzcyY
	iHhmi98Hvt0PzjTGMBbbffNAUvxjpmzrX39wSYObnyKvn8HKdDNj7lTFvmuOEnXMitp9IXsemM/gS
	ZIcro9B87yseutG+LUEY/jx3gzimy0Pl8Ks4CRnn/9A1bU3Y9ZspwOo5B8rDnYqkd4fd4GVMapS0s
	mteMrYOjaGCxx0qNEZf4T+WxZegXqY55AqI8vJkktABx6lxttepUcALxocL9Q3lqe5QmUMYbu8sqa
	H6IzZHtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZbR-0002q0-Gc; Tue, 13 Aug 2019 16:24:53 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXp-0008Ov-B9; Tue, 13 Aug 2019 16:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713263;
 bh=mk1t8axBSu7Iis10B+6pFBh8hZLr+xH3FZwDc1byKUc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=DlHq/dgfHdubCcFkek5nvmD+0IXDcWxMBesB/Jm8s/xZyl771PE757O/MWlJ6IuFZ
 ZIdL3Vgxm4ME4Kr7+hCLDFs5C4/ISLxawzLRKn3ck3qjI/ZwOPHO+7C1cshCiwo+FA
 ie1dCFmx9v+2gEHAof2Mk40hEX23TaqzHGFZsCko=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mr9Bk-1ibZFo47eA-00oGiA; Tue, 13 Aug 2019 18:21:03 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 13/13] MAINTAINERS: Add BCM2711 to BCM2835 ARCH
Date: Tue, 13 Aug 2019 18:20:48 +0200
Message-Id: <1565713248-4906-14-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:cayvR/uheIWNxYHm5e3pr7PKq9+WmnbRouCP3lNLUJCKQ3k6XG0
 /WefPCwMSh9iL5GYsHo5zipRtHFrg/Y1etR0jeGC/jLrdXLKxpA3DomoG19bFJBzokBa8Eu
 pPTQdhQgLzzfaqmgAvjAhNxQxV3WaFRz5jwCJkvhn1VvTtjkoOFsTKrrcY3ZWvNfRwb6Rbx
 zB84wH6ALdi8C+jjW9K9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L0YbU3sLpSo=:OeI70LLcBh0CDJzTaHVBO1
 tjhK+J5B193bRTAVTtYaooTH1xXMikebb4tDhlJrME1FusXgayqOVnST3vq1FNTVtBFaV02J6
 pTJTCs8xKYjDdXoII0dBs0FpdQs/aI2zIRU5bdjLA422CV7+KMbeBBGzvkB5BkuoHxUZC/HSV
 Zd6fhYRY3lcItpE0dHAuoOWwnn+c9Faa4Xldm+9jGheU5/rwA8shxgiu6oCI/N7lBSUqmnYoG
 +n/YoGFfRCYc1MnQtQo4QWhoornVujNjol7Kn07h/iVzyEq2f1uUqdcFNw7JTirlBLwuXC0ON
 M++U0fiBdeEGzSK7Z5jDyeSBg8D+gMMYO+QT7RtuIHH0rGCiHfwzlOnnhxVIpZP+XbMfvYJq8
 MDtePnsKPXXgaaWzi3jnMobp0WM8vKA63XHkBmRxpnQE7htAXnu7qsTjYYidSjdyiQP7FThxe
 m3sKVd9OAO+s1fflgK9xpZRUOl7f3lENJplPHe43fdcJ1Ob7+FswR3vhlR1sdSUwwcz3f4Jsx
 J0K3/3Ib3ztoxYAeu3XmZjhfpv7OAN9KzR3D4KILqSuYB1enhW1yBH+h5/p/7SEyzRLqEhuYm
 tvjmjkNjsiQC/jOQAJPDeNJF8DcP18FAcy8BT+DPXXyqHPaeMBpPVk/h1pd0+EWjpRrgbgtIA
 l2SwlqcL9gj/4TeNKRz1zYxLcudkBiyQB3yWfm3d0TSley+fhQNoHCHv4ew4UKHbwEh/FM1zw
 qoP+Or3ug6JpHNWGQ9jsWwTAgZd/e+cezTM4DoKBwzu2NyDG5JAO99FM0uS5wGmzdZ9vUkc65
 inutHqbA5Pwk6/KT2ZAMoxEaW07bUPACc9DfUGhU+q2QL7mQECWdkKYPws8GILzoXuLQy0WnV
 NAawSGyo90BjtPlBgn0S8QUudCXqlu4KOKlUm2MKJUJYOjuH88jYCXMuz4j8o3+9YxZtFfuCD
 cIRjHxaE0LZIK7HANFmP5bBAMdP/fcZwiI07ph0oGLm1jsHLYH5i6b3IddruDg7VnkeH9eBGt
 3NjDGEO0X86iBbZ/z6PgrH5M/fELSvUDZBb0UTjZ6pW7cFmV1od3lpIE5TRdBEe6h939+K4+s
 cDDLK9b4mLpFGGWF5pBrfK4GHevfUT4buYSv9Qhu2234td7+O8Wc1GOCw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092109_671042_08F8E744 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clarify that BCM2711 belongs to the BCM2835 ARCH.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5..13c7c64 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3168,7 +3168,7 @@ N:	bcm216*
 N:	kona
 F:	arch/arm/mach-bcm/

-BROADCOM BCM2835 ARM ARCHITECTURE
+BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
 M:	Eric Anholt <eric@anholt.net>
 M:	Stefan Wahren <wahrenst@gmx.net>
 L:	bcm-kernel-feedback-list@broadcom.com
@@ -3176,6 +3176,7 @@ L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/anholt/linux
 S:	Maintained
+N:	bcm2711
 N:	bcm2835
 F:	drivers/staging/vc04_services

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
