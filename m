Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5C7119116
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8MKROnRxuk1PzvfQ2XmjTD26QWvgg0TExhHMfQ6h2NA=; b=cNdDegY0C0fc5A
	Z1rfjx7246TewTnKTRv9dtGo1oHJQGDZGM83whlGF9W9awl3QJc73L9BUB9l5p4cGt87SINgTluB7
	zUNc0wX94J8LWHH4KGZjQX7Mr5yMuu/tP1zLDC3Fw0IBal/K5EPYQsOLkj4tvol0ZCQjDBhHwyaJO
	TNwjOd3NsCt+YFfPpEMP00X2FRkiqJfC7ml0RdylSCNQDjzwy4UynsTzxpdooguktiBQjxXT7acsv
	YAbf3IXtVDyzzlzoQEfHJjqsC4DKlKIgFn71FQCwfvfITz56NViDiaU8PptxhEng9upIpXRcSCQdr
	bfVEWE/sDUN+xj5I3MRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielas-0006f9-0r; Tue, 10 Dec 2019 19:54:50 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielak-0006eX-QU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:54:44 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N336L-1hbMDX22vd-013KWw; Tue, 10 Dec 2019 20:54:18 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH] gpio: xgs-iproc: remove __exit annotation for
 iproc_gpio_remove
Date: Tue, 10 Dec 2019 20:54:01 +0100
Message-Id: <20191210195414.705239-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ViR4DlsLfm5z2iRq3mTNYVk27TUrhxY06rvnZvn6AHxtb0Apv0z
 4e9w9BqtLQi6Qw6gQ9xQoi2nXSUcB/7vx4+cw6R33qDkF+b0xmxG8eNSJXNbJsWfVgqGJ64
 8x4p1fC6i11hD8F2rivD2eq/nE8IT731gbb1xxNeEzsGxuGk8zxQioL00K/1bEATXEAY7Bf
 p3r9pBpxe7yJSWfbcnpkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pmgS5U1eydc=:xvG/qPdehBWt2PvVfZW4ud
 KlyDQmCyrjE4iKkSzfdIT9hJcLWGPzN144l7Z9BwKCTSreDoLLHLqG2I31JYTddlkBsmqjcg3
 r93e4fKiBBTaQej3N/h3w7MItzWjKGcp/TsyCUbZKVTiMy1u4WOFN6Oe4lsTvZkpkssbJvzid
 N90jgAMRpYhX1Mte738oeU+VFRdieJYtIx5o0DGjF+o17YJUDNB+fiZ6/sbqRi4oX4PmyQsyz
 ODuzphVORVBcXFYTPjyxIPKyy8oWPXn9qmQV6QlrEGAMFNPHr4aQ7n1uLcBBMVbyJaeL+LesG
 7lwmxeDNo4GMmekHkdsanJNZLvlqTxLvSx8E61r1auB4IBdmAMPRiO/MLiw8AaAGDzkoyo1qJ
 OS9MLxFxfuwgo/n2ruUPEDG9ic/BmdGhAkLY3ky31jSv9cxjlU1VUIMHuw/sXprWCCrsQQVQM
 95PR8UwH7G5APK8IZ28/wJGqp24m9FGM9WuzydJ0+VaJdCMlhT6VELXdZ3NAhBpxqwgmp1B52
 0dx9jat9gtZDwxPLl7dYYxBTNAgxWACteKtalqIWfZd+KB487IzQFOB1heZpYS/314uvEfykG
 S+T/TxCaRwNk3C1WPJDPvHeXr7ZZw02nhDF//5rAOHYe7IBxHpbdqNissm6x0zvKEyBGSVnfX
 /zdOgNN3CA4dkQ53qYq38uyOblz4F7RoOGo3ZGXb9IM5DotVgYaUWJ1+FdM0UM/9ZVkRht8wZ
 sveGAYYhip5Lphx2als+DMz4g5G7zDl/mHyua2WzogxuqA2bgpUm+fGDCgms6fYe62CchbU9V
 jtu48Dxee/6lwEupPpuD2iE59n1TCuJJ63a4aBhch+sVpznDppqBWhB7AcbhkyiSKvhd26Qrr
 2/CPCb9uxNeX//437iCQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_115443_150100_9D739F00 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Scott Branden <scott.branden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When built into the kernel, the driver causes a link problem:

`iproc_gpio_remove' referenced in section `.data' of drivers/gpio/gpio-xgs-iproc.o: defined in discarded section `.exit.text' of drivers/gpio/gpio-xgs-iproc.o

Remove the incorrect annotation.

Fixes: 6a41b6c5fc20 ("gpio: Add xgs-iproc driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpio/gpio-xgs-iproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
index 773e5c24309e..b21c2e436b61 100644
--- a/drivers/gpio/gpio-xgs-iproc.c
+++ b/drivers/gpio/gpio-xgs-iproc.c
@@ -280,7 +280,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int __exit iproc_gpio_remove(struct platform_device *pdev)
+static int iproc_gpio_remove(struct platform_device *pdev)
 {
 	struct iproc_gpio_chip *chip;
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
