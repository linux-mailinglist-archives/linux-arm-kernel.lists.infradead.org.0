Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C34ECB178
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lFYiMYcBMxmyphhrNw72C/NN1znHxWUoCJiED50SPC4=; b=urD
	Y/XN+2WA8vvyESWBs6m/bzLBWZSG2TrdRGIEtY0TIXn9YXWd7vRkAWVm8GrT8FCC0eFXXfrnpBljO
	x9URr69wRs5c3rgbhPO2Ayx1T0WcHFNAzIW6SffEJKnrsbUPYUE1wQ5BrAaUEVHCv0XWcTeKzg26J
	mnIJaqoHpew22YkkB/8M4LGCJVaZxeX/gAd7I2FeB6tBzmBgKvKvb3P1010X4zK2POVVxtd8dAlLb
	lRKl+Vj0dcjGL/WOqrDIy3vABg5Av25akdGM3SrWI0y/YOVGtSi/glUyQ7gI8pDR3uR/456zEGRjy
	cVc9Y8QganXtR/CoNbBCIpll/ZAGZng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG903-0004iz-LH; Thu, 03 Oct 2019 21:51:03 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8zt-0004gY-Sh; Thu, 03 Oct 2019 21:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570139445;
 bh=+slu9oigrifofLBmSnoGBXNUCdUs8UMw+gAQMYZR/OU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=mtJWe9BfGLpk166deIOWv6NwNSVtqNu4zEFmltWTZO+Quufhq50MugB4t3PI53Dij
 P75Ixq7hozzbk0+FHdq9w1smAfhLlT6WCPVlEGLVmzgVIbWf+qdMbLNHxgkPW11OH5
 mvpxatuhvRgzbIbSTYrf6MF+3Mcs9GpROLzrOyrI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from platinum.fritz.box ([89.14.73.200]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LdVza-1hpIko3M5i-00ikbu; Thu, 03
 Oct 2019 23:50:44 +0200
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: fix RockPro64 vdd-log regulator
 settings
Date: Thu,  3 Oct 2019 23:50:34 +0200
Message-Id: <20191003215036.15023-1-smoch@web.de>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:sVWSznPIdgTeGmxS0/KuK5sR3zlLN0yEjQwtifgjotr6sUlPGeX
 SCaKNvjkY2xrsa2JwfaH4KWsSiYOkozaZoxo4JmqSc/EwguMpI45EebjNI3cQkwrCfPim6b
 02b5Xj+b3kuMwjLS4tqXGFCniDNAIH3qhHOEWovdeCy4yOGDuzQye7qcb011wpp5K3Y+zv3
 u+KYJmttKbwcJdT8JijcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vCe5hpyJPR8=:disR8f0omoqst11p1fIKAh
 iBAK1nFXc7AmOcAiFW44MeJNXdocthJHRd3VEcy9/B9yqK/hTjhNCgBGLXvhk3UzVzVTDK802
 kBf9cEBdt34sF6mLB40sUD5CXT7PaMoPa78w45lA9C3+dF/9UxU09+6fr6SVTgU3mu6Hn2JqJ
 nvfqFZiqINBWoePt9nqRkkTUrqgEyMT6qHHfJUTadp6PJeCXCeirRPUqFqdJ8vx+tsSMrD+G5
 fmZlzpPnl8Ky3j1gtFkLLcEAOMtAgzPfeEONvZiwK5J6n5MxwprBNRT7E07hW+xDfcQbQE0rD
 8RGbx1mkzr2V92lpYcIRTNqde+Oh+/V4C4s6rQGxN+x/xws7iNpUeU9Rpv65WHyiheHZUcHs6
 4n7JmhPiZXUCFzWUrmM6oJB7O70rL8WobnNCWQmNtYRuiqGautEew+TItXYvKBCtvFrALXdM+
 vb1+FrU03VriEuoHeRWwPEsO45SGVwhYIsolu6CRDFU9G4a0WdORqWZVYVP+0JvpMOe/lA2zY
 2rl2QFH53x1+BtBVK20hHOh7W3xtLH+WzZFsAzmnNe3+61mRhxIzHfDY3otUHd7hUG+pyyhXw
 6RI9YNTvxF2AQ1rzSvvCNNtPkovfmdPvPTfO2Sqig4TRyAE9/Un4zf1wnoho8+Hqw2w2gvh2g
 lFdajNupo7PiibkssZMeWpi2Yyw+Ql484vPZldLOBFiuDXWRwYHJA7n3CWPRqu4FkvqZI0woF
 iWwuOPIyYV09g8L2UPq4YiXXvNXKdJWpQh/x59dBhs26HHmbaZxBvFHrUY7FWo9HRjA0t8hvE
 oDTTozWqTW6xzbFzIwp0E29Vp6mciCpjiqoLv7MMTbg0U9pPnAQecIk11U33l0ZqVQyKSxq8G
 Fdwl4gLqiQcP6Y/Zm2wBLvnsSffYrkTmqpiQ6RjPOPPy9GxZHTglNZP6Cr4a5N3lHKv4+rvUV
 pKvy7jWH6ub53Ne6v/8q//sL+wQIbqfuTNNpvc+MI28YX7YthEldq1GRyRKJ5k4z6o2nrqUik
 oRx5AuvdO3oPcAIsUwKaeuXqRrTtC9M6kdubTFXOZ8EZzZtj1unz7h3zRztMQu37AvKSyHhxt
 k56zCWlbMOjoKO97tb/lVKVF80M81PnaiIOXQ9I9E3UIF2s95Wg/VbtVzkWi4oF6WwrqqO44y
 sthchBfNPGC/jUAm3c9UeqBDY4lM5Ilus4dUpjvn4gcHDKMGS6iu/KEEMEuL56mRaMcwg/xXM
 L5sIsGmzM7HYTjE4fJFm35NicLPlNwOqZLoaMsg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_145054_230248_23AC2987 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
additional note that the pwm parameter needs to be modified.
From the schematics a voltage range of 0.8V to 1.7V can be calculated.
Additional voltage measurements on the board show that this fix indeed
leads to the correct voltage, while without this fix the voltage was set
too high.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 0401d4ec1f45..845eb070b5b0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -173,7 +173,7 @@
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
+		regulator-max-microvolt = <1700000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
