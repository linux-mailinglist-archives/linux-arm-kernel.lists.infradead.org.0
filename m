Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AF9ABC4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S42IlCmm9kILcPpRYSD5gMMsF6Igo+qcW0ktoCTkVA8=; b=PuzNJI4KDqfTJD
	pjXclGk8yT06dAZMRXCOX4QEsVlJM4L0qDsvzCWr8+s7DxNmIvjIhb3KQKpddRKGNkl4bE0/xVqHF
	u37Xjv3qa9tyIwR/KcaiLx7jSJH8I3gBhfaLtaSfr05GJShLhmM2zRRJlBgbxtjestimH0DKrfyG0
	PoV2scYIOovygLhY/6Iyj7/ssVVO5+zJStjjziCcEMakkDYpU0v9IYMA1YHlw7w9pK6h7HfUP//r6
	QmjRCd71izZeHSQX5FydgnDLEUJaweH1z8kHGZ5Kl55EMZQHpUqS21KOzdDdPXV7Kb8K3hw0aTgTF
	WinrgIg2djNK8ZeSt0Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G6j-0007ih-Fg; Fri, 06 Sep 2019 15:25:05 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G6V-0007i9-DB; Fri, 06 Sep 2019 15:24:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MgNtR-1ieCGu1yVr-00hxJq; Fri, 06 Sep 2019 17:24:39 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH] rtc: meson: mark PM functions as __maybe_unused
Date: Fri,  6 Sep 2019 17:24:29 +0200
Message-Id: <20190906152438.1533833-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:iAXw4+juZQ88e5MCxf8CxgonumKHmdb38haLq7aNwoHTl6DtoPC
 Z9GPHNRp0w/tJjiEzrdFIfQtJ5pxhtRdL+pDmwoKrwYL57eprTQvOXgSCFQPuyr29o4PnGW
 kZim5mMmM/k12IdaDCvf5Chnxe+5bimHjJ3PUFNF7AFhOfJDEx1L06QWv2Ub1xM/gCDNYFb
 FEXmyJk3f22Aen5NN8QMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZlbboHLS25M=:nbSzMGw1TiiBYTW/Jn2ABL
 t6bsPlq1T8uhQiCGjZelLsQ8maUrd4/3e9VeJPNzuzACOgz38aM8zpjxcUnsTsOSABK1eubj6
 PwFWvFkSTZcFXV245vVSil93R9kfP9WnmMoGIZPNUT8PXlGp5AQw8v+YPYZ3v7WNCAld1AMD0
 ywH3pNCp54V5vLICDZPZNAM0kTguEV2kQ5EDE2beAPTQG7SXArH/9ZujIR2vhaC5LCY9pD0BL
 tmJSPxv/zYa/pdUE6i0rUABlEyngw4SyACVDHeTKd8/ZGmIJNm3rVy8aeRVf6ZKlcshiPN8Cf
 t2GAoZmq1P74mkbcgYaRAybt8RR79Irw9igE659MjsXorLaifnVinOauDka3WJJaKEyeEoZoc
 pc9n8fI2QS0S6VPpqKnnlYDM3+hezWY9NHiqUGrl4EQRtcn5AK0Fxl5ZvV/ZPJ8b6GPYntIp3
 /VDxk8Ss6T8AoZysMdHSF2rkFNJKiq/9fLYY+dGX5vFrerQBfvOl/AbA4pCnd15UYAqWFt3Le
 yH3C335gyPj6YQ3UQBIgwyyjJTn3o+aMOd53ssfQQ4w27aKbrR7QApt9OCP/g3Kv6dId6DF/l
 NPPQ5Cxfl8djMyNhzSMiFvL8TDxYnN7w3s2UHoFz8CFL86I4/pzBLTxy3YUz/+TIGy/e2/HOM
 PW1xNwI6q+Xb/Fn6ieQ/n/4Y3ww0GJ61hLyCrlEGlSOjMFWuTLHLrqmPleglq7TGov8OdyvX1
 G5vhUIbYZwMd0h487IPYU3jfG9z59wzVrap7c31npIvjd9hOPhWMtg9T22MUML2qoRmO/hA5P
 teP6FLOBRvCXWDX0xjfrMvf1dfA1wLAUpcFjxeeXHyk8yiYIsc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_082451_745534_472A7204 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The meson_vrtc_set_wakeup_time() function is only used by
the PM functions and causes a warning when they are disabled:

drivers/rtc/rtc-meson-vrtc.c:32:13: error: unused function 'meson_vrtc_set_wakeup_time' [-Werror,-Wunused-function]

Remove the #ifdef around the callers and add a __maybe_unused
annotation as a more reliable way to avoid these warnings.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/rtc/rtc-meson-vrtc.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-meson-vrtc.c b/drivers/rtc/rtc-meson-vrtc.c
index 4621a4715179..89e5ba0dae69 100644
--- a/drivers/rtc/rtc-meson-vrtc.c
+++ b/drivers/rtc/rtc-meson-vrtc.c
@@ -91,8 +91,7 @@ static int meson_vrtc_probe(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int meson_vrtc_suspend(struct device *dev)
+static int __maybe_unused meson_vrtc_suspend(struct device *dev)
 {
 	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
 
@@ -121,7 +120,7 @@ static int meson_vrtc_suspend(struct device *dev)
 	return 0;
 }
 
-static int meson_vrtc_resume(struct device *dev)
+static int __maybe_unused meson_vrtc_resume(struct device *dev)
 {
 	struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);
 
@@ -131,7 +130,7 @@ static int meson_vrtc_resume(struct device *dev)
 	meson_vrtc_set_wakeup_time(vrtc, 0);
 	return 0;
 }
-#endif
+
 static SIMPLE_DEV_PM_OPS(meson_vrtc_pm_ops,
 			 meson_vrtc_suspend, meson_vrtc_resume);
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
