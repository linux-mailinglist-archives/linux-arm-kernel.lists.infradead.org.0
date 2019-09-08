Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67ADACB5D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 09:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S9vc/10Fi6ycpuEd6Z6aHQYvl3T587zWwPPDMXm/64c=; b=OER
	2HD9tFTMv0bSviH47o94lFtgZbb4eLKIL5x2vuaDmqsNvfjbxHiIiScpzrAQj3XkXUBaQHeeT99uY
	Pv0BnSHl/LF2zH8ET8QwSaA83Fio/qbHNwQfs8gwM+lxjXf3m6SN4rjyeAuC379SIaHpHmet5ZBdw
	pcgNZk0zn0IWTpU06WNsq/LHNm6UfUAoLY+5QnBxdTCk3eQKCTCn8HeUJ1ElU5iLgyereFT/2C45f
	5+taR+9hxsJTccwoebLzQDvfiTJMZT1DyY7lAc0Ag6+uAEzJ7y9hp9RoxPuLG3R8SUG7Kt7rl9xiv
	C2c8f2azpm6b6UY6fECy/ooes3J0sWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6rul-0001HX-Up; Sun, 08 Sep 2019 07:47:16 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ruM-0001HE-C6
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 07:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567928796;
 bh=6F0QummU8imcXMVMrHV6+BZ6LAb4e7PC70awvqL69uU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=aFXc/C/jjspa3E8a5GfmVYXWb7qxSARK4wdrzPrfOobAj7nFr8KoGrUcxN6y08pl2
 gN5f7pdHtCyhcJxFSqWzA9lrvXzTjO0JWwkA49c9DJhdMdtgOga4xOYfcn9Y9gV3R8
 Kof7KAsHVnhoYByvxnhKZ6fdh1CxfGgYRn0koMw8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.90]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N0XD2-1iIswK0UUO-00wSFT; Sun, 08
 Sep 2019 09:46:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Ulf Hansson <ulf.hansson@linaro.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Lukas Wunner <lukas@wunner.de>
Subject: [PATCH] Revert "mmc: bcm2835: Terminate timeout work synchronously"
Date: Sun,  8 Sep 2019 09:45:52 +0200
Message-Id: <1567928752-2557-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:VwIaAgaE77BXr/OK8ymof3uAGLOUwsyBEkzyr0AbfRe+SAK6zDU
 V38GQU5finceBHAa44KL9PSo2iPyW9hAJ/PllzN7PFdXC3tEeYfcvSNEaXhCtXbWzzA9rBl
 CE2WuWLxEpfsm8XZekOsu+W2lll5TTsganOt/n1ZeJ2Vc4jZVWIe4qpgJnW1wmJQZMXG6St
 cKo+1rp9nrblsX49+AssQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:quBeLoVv08c=:KPB0k4C+t3kzBH3NJ1NLE/
 16Re7YIMzT5wkuoJi+8mXU+2yYQ/EJ18Wh9H0V8EDvdkn5Eycw0CbEF4SxfeTadiR+Qmzq7NJ
 nUFw5XmJzKKU9l2lNTn6+W7pszH36VHeWW3ber5S28h97QdiQUH0u/I5yY/3+3uToSUrXQTmy
 FWv7Z+cWljSc1dVGe3BCMyEcZqiqdNAEfNAmRNBcrV+XcIlf9UhEpsnxoUOupg4BFlNF4Ngyt
 NFyxpLwgPtK2Ay3exIMHnzPI1lk4pItq3OQ/0EJtA5obu4sfjkOzEr4WL8B2wSicyXYXCtLOc
 h/x9X6VFeXw6/ffB+/gtOhlY+dgMKnTcQeqXY2nWlg2Po0003KdRxxjMCnJVpzBXkVfRkYIgd
 o0z9tYgHAeZFTYtjJVP5rGB6h5QGNu6mKUqQ2YFQVkxtHG7/dkSdUfpjAXMksxKt1E+FK9eAc
 kFwShhyMJEv+gvqFh1I5zTLpWS9eYIfxpulEBibfN4D1In6mG5aedxmkX+8OwqbWlCHUbHvvg
 SmgtJLv7I1eUdAU0Rzvp0bn4TgAGufTqVeOwjyJ3SzQjpJR0HMtFz+Pcy/6V0NeRyfXcQp3C9
 EdEMzjYYm/7ut9swjacYShk7A20sfRXKDbieiGAWz5Es7Ams2RRfVU8EnB+mS3QU8QGAbjk3W
 v4Q/es6UUJKhs4QIspuCefnrkaP2EnOhufuYhnzOxsuyHIPt4LHqH4PrnzHw3f+LAtE84dSlU
 K2Ff2258XqdJGgGw84qcq4XkeCMUeZcL56Hq07MrPrtpWZjzeXB6IVfSgQa/+AQJoTS0qc+LX
 7ybr8Z451UDb9B26SyjpKQ+4ryV9RDLYQcORUBAn0++g/6i1vu7fo/78Aak3WqGEVT5XCclFx
 gsdHD5pSITgscj5iH7ppj85cbfsPXd6GXNjjelkVvx3sgcwQ72yBvl0cbM3bOwgeuZS9/yYA6
 WD7SQwMD9+xcFNhnTMeajvchWD2JX7/h16uI2FnZWdkky7gH/LKRVTd7Y0Wi6aeAWpeWUQAoG
 PKLHUciPUDlBPwqkivjAZIMDAycQZ3aOaq4f+XWjuixTukCSNRVkPHH35ygEj2oxpH6bAqs8k
 EBxt2hm+pKJTYQR5NCPrFq1E/Q2fbWfBD+VXYuuaXxOWf8iG6pNHI1+9J0yi+Qx0KRRAEEdwv
 NNa9A+4wr3OFO7hRxlf3EFSoIwOlXg5XpBZEO+3TQHncJkiRizdXrZNbf9o24fm7d4h6w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_004650_747072_BCD5E3E7 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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
Cc: stable@vger.kernel.org, linux-mmc@vger.kernel.org,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 37fefadee8bb ("mmc: bcm2835: Terminate timeout work
synchronously") causes lockups in case of hardware timeouts due the
timeout work also calling cancel_delayed_work_sync() on its own.
So revert it.

Fixes: 37fefadee8bb ("mmc: bcm2835: Terminate timeout work synchronously")
Cc: stable@vger.kernel.org
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/mmc/host/bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
index 7e0d3a4..bb31e13 100644
--- a/drivers/mmc/host/bcm2835.c
+++ b/drivers/mmc/host/bcm2835.c
@@ -597,7 +597,7 @@ static void bcm2835_finish_request(struct bcm2835_host *host)
 	struct dma_chan *terminate_chan = NULL;
 	struct mmc_request *mrq;

-	cancel_delayed_work_sync(&host->timeout_work);
+	cancel_delayed_work(&host->timeout_work);

 	mrq = host->mrq;

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
