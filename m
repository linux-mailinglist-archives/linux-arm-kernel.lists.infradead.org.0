Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A764370678
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ee2iZJSx6hBMwQrwjiD5FadMMY/warejptsruUnG+Sk=; b=FVvG7gb8s1IDfthJdt8QB9vfSz
	PnR/GEQxA+c2tZSYJs5rxyl8awFSSSuxCS7GRC12mKWoQ0OwS318W2NEc9IvOr2cHC7Ch9OqUZ/1g
	gwME0/ePxmb5758qVr1uGpQf5507noM1qs8sJj5aNUPeBXHE9zk9MI1FYIvwrO1rKnngUUC+WPktX
	7zwiDIBSuZbOxc9csTzmgg85SunxTyt6cwVmPuzUz/yEmy7qDVWyU01vPR8cTH6HLES2ZWdDv25Rp
	wilD8OexNR3EWocGxDQb3k/V4unaRGpaagSD5wwdwzaFvHS30sykxPXFCKC41NF7Co/dM6M59sXQu
	NaAiRDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbog-0003AL-28; Mon, 22 Jul 2019 17:09:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbnc-0002dX-Dt
 for linux-arm-kernel@bombadil.infradead.org; Mon, 22 Jul 2019 17:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8sdkT4OAPenNxPhRZpPZN+HiHNk8KYoVvmXdGGlXZts=; b=nvD6/jqZ1mcFo26N2fBhmKTcdp
 7lFyZaektw0Qn12/rzUfFkrCl9OKBlf8/hhUHHmFo/B/N+9diAhjwj+7N8HmJKuvnmeJM1cwvAZ3G
 kVGVdEO6mHrlJpFZc177vhH5wQ2KztHd1SfmQZSbZwgin/j4S9A77fn35zpEh2IFYXCTVoyM9dURO
 pR1hCZjJRAl9dSUIlLoojAoGRWG7wUTbbsOvE03L9veaGv4PmjBOM9XVzT0AEiyWrJj/8u7t4l4Gh
 ZsYm49btU2+bigMMMilbDOT8nrU5VJcw97FduiwdEvsdUap88Yq7zS1KA2H+W8uxi0uZhXUM7BdOZ
 SqczcrfA==;
Received: from mout.gmx.net ([212.227.17.22])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbnh-0000Gt-H4
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563815284;
 bh=6nS7Lf6FNdVUYXGMd00gzIso1Z3I8h5vATfhDbo1HWw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CwL8GCHtNFhZegQ5GJpGixfEKuZAW3OvKeo6E8p1XLU49IO/VtcHztedrkMhfhcG/
 wSWePnRucp/is/KGyfMub4XAW7F93RWzU+CwSLAMi4UPHcihzYKxdwP6YwzIzGO0pd
 hIZHZvczmZ8AwMOvkP9ZMBlh9P4C8l3myls8HC0A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.131]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MSdRI-1hxCTY1BPo-00RWdx; Mon, 22 Jul 2019 19:08:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 15/18] ARM: bcm2835: Add bcm2711 compatible string
Date: Mon, 22 Jul 2019 19:07:34 +0200
Message-Id: <1563815257-2648-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
References: <1563815257-2648-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Ozi+ow31HYFixm+4tvpLjYLuEY8a4Oa9cmfUylPS1EPl7hgn+hu
 b/GDHJJiJIvw67knfV5u6EemfRwXcCus7QkJ/+doBkq1EH0ErKqEItVtvRu0wSP5wE6MyJN
 RtnKax7+8pku7MuqFTOU3FH4yQwcnYUzscDM5w2yyFFcka2Yr2sVvVD0WYmvx6sMCpcsRCX
 miPEpEqAyUCkLZ8K8Dz1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8gfPkhoX25A=:wSjmZWPeWuCf/BgF5Ueu/h
 gwIst7D0FoUnVfKeiJgl4xzL+WE5aLGhk0armELJB1K1NMR9tla/hP8MCu7Yuz4QmpygAw/ud
 B8ZnAEf/pDv8peBME+XreO6t4IWQ7PkJkWnnJMrOfSPfDqykk1tv7/7VjfagqvzmfUxlCjotU
 kVJbDhkvRUDSF4OM8LE81vsdv5Rybzx+Wu2+ubAP0l2FjBvIWkWoRv9IAMPGgMy0qhIkGHCAg
 oEPyaT7C19sW0PPstUnqRJvLinZbY2o/bbZEjR5LFDnRefyYajSD5Z7yedBrqr19qSyKEgYZJ
 lF5edJmbMRDIEAhtSewjwhi0RCRtYGVYNj+TBNB8zzmcXnCOYes+aI6IJtAuacupM4iRE+2cD
 +D91aSEZ7vTUUM6dRE5OHfj+rKDMm57IwTRkNySWzko+pBy2vYFvTZ5cT2g+kYkYTFrfwropc
 egaal02UXqU9xrH31HXixDwtsSO5SQ8OyN+Kgu5VxRqmMmpXOLNRC9t6/h3Saa6Dxl5vzBWFV
 sJJCKcDKLzZDR9e1nGH0IOFK0ABtESI1TzKutKHL0KWTGBlIxBI3X0tP/QzoOoJ00zdoJ3AHo
 dGACzjLnfhNQ0bqMv/pDJRpFy1OgyLJtcly/xT0yrw+SKGCqarw/SIAMlUsdO79v/ktDBlE5B
 AgWKeJEP02QbhzPZ8IsONhMkWw2vwbGCYXAtw7B3g8g2gT2JTbLuDosgEf//dmf/ZeXH0WLKl
 GFdYVyB9EjSLRyaMtiVd0IDsEDpJD2V1ZGDat6x6gI8gErcmhXjEo1yz+Ut0tKFN7VlsNFQ6B
 kaA+K2whJYcv1H2MiX7zNtA4AdwDRTBx0QvJOfnf12/ucS2yX+GR0XVLXc0c5RJiAiWVsKkGY
 E08e3Tr6rlI/T4iDafFsd7ey1sLd9JwIq+mpL6OdmSzEqfgq5GhBNYzVBhbMpJGinovfdZZFK
 4/j9umBEY243or8RCOY9iiGb4P+VWbxppV1mrMwzekVPA3mlk8Zv9ilcyWJdHqqNSpRqc7twM
 Rco/Jz3vCE3c/yoGNf0PMwzgJpGLB8Z8P1Xj/5qXzi5c/T8T1mTzRjTPFjgA1P8fgdTT94GDs
 jJFBthqHiXNC+U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_180837_646711_554708EC 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the new BCM2711 SoC found on the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/mach-bcm/board_bcm2835.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/board_bcm2835.c b/arch/arm/mach-bcm/board_bcm2835.c
index d2b31a9..c09cf25 100644
--- a/arch/arm/mach-bcm/board_bcm2835.c
+++ b/arch/arm/mach-bcm/board_bcm2835.c
@@ -17,6 +17,7 @@ static const char * const bcm2835_compat[] = {
 	"brcm,bcm2835",
 #endif
 #ifdef CONFIG_ARCH_MULTI_V7
+	"brcm,bcm2711",
 	"brcm,bcm2836",
 	"brcm,bcm2837",
 #endif
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
