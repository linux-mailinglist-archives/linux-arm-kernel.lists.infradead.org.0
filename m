Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781FD55B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 12:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+JvPjPH9RcEd4Z6nN3/F7SvTSKN1adsaPNK0oSjk+4Y=; b=LLR
	4hHYm9QFLPpQWvfnJHN4fNEcS6kc5PhRuFbLrp+4nCN+rKTxOYkvlzx58LXjQMaC4nq5drbaPHddP
	J0Pn0vsPdV6A0ePFu2PEryQ/mbEllwU/uDpDdo2rqdqj3T1yZZyXUE189JeLoNmsoQsIhkn8lDOJV
	IAGvDHQEYjstvApJAqgLyZtU8HODHDqndbxvN/AoQBIS34ozIE/mOXM33E4BO29ElLSkQ11zpIi0H
	aUHnajci2JFEMO057zmwmis4dtolZpHGq2jmY9yAC02rMrIv0bdhhUJsPdOW7HpxxuGlwIbOCkaa8
	/YRy3+gTcJ4stWlycSseiE/3m79enFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJbWG-0008L0-0Y; Sun, 13 Oct 2019 10:54:36 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJbW8-0008KS-Cd
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 10:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570964044;
 bh=P1UgswCUcghz6yIDHCpeyknx90qBZRzXKgVlFd7eCdQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Hazt7CS8w6v7l3PeNig4oBTVsQl+5I8ySOkCGte5W+gEnNzpCKMkb1dShKpoGAKCW
 ns+js783PPeaES6CUDQ9WCawQ0osxmfnZ8mBk6U/lfw3/mDQO82KaMD3qK769L0gZo
 91NtoEYrT08hXbMtIdcQ/9vNHbFYU+YsUxvJYeTU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M1Hdq-1iLGCc1IeQ-002km6; Sun, 13 Oct 2019 12:54:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Pavel Machek <pavel@ucw.cz>
Subject: [PATCH] ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue
Date: Sun, 13 Oct 2019 12:53:23 +0200
Message-Id: <1570964003-20227-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:rD0/Aj9OsYtuwDKTD1Asm7wvmhiAAdzSvgHj2hhtz4zJHwfn8gY
 eQEqPkZg4HhyshXGfuuE5EO6kpFG5C4oBy5q6gGSXfR06cp5r4eBApjjJYja0GR98v1WSqm
 zBGi0NiTAm8qgOCOzqYBTvYUEz8qdiuQIfxv+idJ1wtdVdVipSxYyMxrdwkMZ8hp64ZNZT/
 nQGx5ZFIng+B30yOE2ZsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uxI6S7LwlPs=:mmtcYysXtk12sBd4sSpTyK
 sH5Rac4tKDW3Jjzp9lXc5qGXFOnZ2xOoiS9WZTl1M7FvGTAzqg9WyHtVz3dQ6PyRRmGE6Aqzg
 Wvj4VYE/Bxvppf3Cn1Qsa+zrguD5TbN310rcuNu8pBTSGwKuY/R+DB/H2mwc4jU8paWIeZOPF
 AQ2fGoHT95vD5FLUgfe1/TqSxSdqxxW+1lGuJfoCHAjAtLpWbpG8QLjWCTq0O20lFJuT+XqYG
 u5pJhG/S8d8spGPGacajBXARG9vfWjGHDJ8X0lBmuHJytInQI62IjDuQCJJONFqRfkJQb6Dj3
 /p+4V1qwetdvUICCy2bZGwJOezGuhGFNwOelsZ5REg/x9huRfxDm8CWC0wdhFnAYO06xSwLEG
 adIp3E1m8P9p7HV0FgKixZPI1Tw4rJi/uK2B+SLS6oXF8kHQ2EdpuS7WDVH7rK7bqHi/WVKCH
 KZMkfKZnjgh4pAxK6Gp7Du2xrwL4yL22fg3jQAq9lu06QGU+taBKLRGP5FQksadz5hmKM9TIM
 aSAG6buNXs2vnwUdZyYwwzfJRP/vsKBBbA0F75mtn4W7wiKzKg73EUfNSln1+Zg5TJ7mowVEz
 k4dkVA7/wR8RcP2ZN7RZdB2EqWRWDp4VMIx/ok9rgzBzW0HWBvBdh/P4oICIoD+BK/sr6a9HZ
 2LvvcfcFOVi48EeSWuM8R0RDcxCEl9i9SHIIgz6EjWiZz9GgnCYX4lOK6F7Xw+3o7+0Jg8Y7z
 79B8WjdSNYAZsSFLJm/8X8jONQNmWPaL6K3fbv7Ai2r9pqmD/k0b1lftYXWU5wmwcpBvp+WUC
 sbxo+5vAWGbJFKb+vPUPW2GDNqt59yfnBOf9gYT0eME7WARqv9T/pSFH41X6FLUBAksdjE1ZU
 q9qs2nW1fkGwbgEVLS7UwVJ3sqUnB6dWjq6WRYmVyf+siRSu1yz0CI3dVz0u37IWEwxip3yUr
 hqOkrsDCWQIUPTCpbkYI7NiEdztz3W51QygBPrewVwdCZLa+/8Z7+goJzZndlyw1hCJkdmA2c
 jzk39CEEoSI//yOFlSc5ZBGMIKqup3laJoepfcsq3GoAnh70xl0I5RTkSVbRswd/AV/C7ItAb
 YocSC3OqsqusQfWqgvhBeNKw++ksuAecLIFGZCmkzUk/OZ/PZ2HVcnIGPeEba/WE4opnAEjPD
 NJ0J/Sen2FyL/1fp0VOx88AmhYlkbMx+StHX7JrPHbOf/zlAjCTZY+CKGISyQLBrM8YxpRJFf
 KfKYVNWqP7TQmkSIN5ybCminYG6OcGq0itehPDQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_035428_764147_748770E5 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bcm2835-rpi.dtsi defines the behavior of the ACT LED, which is available
on all Raspberry Pi boards. But there is no driver for this particual
GPIO on CM3 in mainline yet, so this node was left incomplete without
the actual GPIO definition. Since commit 025bf37725f1 ("gpio: Fix return
value mismatch of function gpiod_get_from_of_node()") this causing probe
issues of the leds-gpio driver for users of the CM3 dtsi file.

  leds-gpio: probe of leds failed with error -2

Until we have the necessary GPIO driver hide the ACT node for CM3
to avoid this.

Reported-by: Fredrik Yhlen <fredrik.yhlen@endian.se>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Fixes: a54fe8a6cf66 ("ARM: dts: add Raspberry Pi Compute Module 3 and IO board")
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

Hi,

i'm not sure the behavior change in leds-gpio was intended.

Regards
Stefan

diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
index 7c3cb7e..925cb37 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
@@ -9,6 +9,14 @@
 		reg = <0 0x40000000>;
 	};

+	leds {
+		/*
+		 * Since there is no upstream GPIO driver yet,
+		 * remove the incomplete node.
+		 */
+		/delete-node/ act;
+	};
+
 	reg_3v3: fixed-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3V3";
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
