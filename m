Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67627156466
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 14:03:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nYDtcytMJRDz1FLvW91yGD9lS3MEzvpQbhA6ammx1hw=; b=Iud
	Qq+dbMCN0sS2cNLW4tXUv9+blYdrrOnjRoVCvpRCY/gcY12TOc56ZAYrVgOaHxn/QW43Pbx7J96mn
	kb6r44sdwHFQRaBP5g9L5eGCrYTDEw0asHW4rzivMXsiTJBzZh+tdiJZP/q1eFtHld3gi9D9JAlvJ
	dT6XTUsbrSHV5Fk8nNLhFG3v444mOa8pd3pKUqg3mjoIkmEl+bnynCzxMsGNs7WKOHFwe4PfvBuri
	0U7k1aaOrXy8a1ynLxiBc3U57QBYQ4YHhXwIFjordtGMuVSFOOVo7U+qbYls0ZQ/+/jW/2nJ7FKLY
	hDCTzoVT5HHpuZVE8bWPAhgQVJ1CX6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Plp-0005pz-Ql; Sat, 08 Feb 2020 13:03:37 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Pli-0005ok-FY
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 13:03:32 +0000
Received: from localhost.localdomain ([37.4.249.150]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MZk1p-1j3Sio3D9j-00WpfZ; Sat, 08 Feb 2020 14:03:17 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 0/4] pinctrl: bcm2835: Add support for all BCM2711 GPIOs
Date: Sat,  8 Feb 2020 14:02:51 +0100
Message-Id: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:icI8YXP26Zm+jBjOn2iPvYMPgU0dU1i3GPi3xK6L9n7Yvhg1ZFl
 2ZXJjVg90vdegqoIZVCbPcf+ByYk0vLlEF8GeQl2Agc8+wOd1AgKlUtzLgFzmsS0odZe677
 OGXXBRKaldCx8rstZO4BRwxB6xoXpOxgQv5tPOPSenhIhwh5SFXnq6EMC4jYIYWQZCBC3CW
 yYqrjHKPVENorBY1SlBXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9x5HXLGv2j8=:QGeYjIQhpdk9eJVt857SY1
 lvvRiYKmpxh7u+Zy5EW8Fq04xcZhkaLQEB+Mkmw3SRc1L4qMTGIzf6/DzNieXG3pjIZImbOJj
 DPK55L3eAGE9R5iPpqR7SBOpkgDigDpEv8BRePytI2ex9CmrciCcyD+R/uTEjNHs3QF1820E1
 lnPNfK2XzruBVTHfPTiXG/ji9i3ZqUJyd/sdE9SrXvA6BOQpp5xdOeNUi39i3vtXuBu1GJZv4
 O3GOGJj5FllwnRmYsBjMP/RCF9I6z6ey0TvWh86Tr/Xi+ApwSGI08fc3kFR/m12WQfGQyqUSa
 A9Guj4iMDzlt/B3ynBuL4Vw38KMlKSzttEAmm8kvwbWR+zlw4su0lg8XU96ZuEupA18CKIS3w
 LbjSllhtjDE9u736WYEo2haGVAOoY2cTa4CKBYKiz+DPaOMGu1HHd8aapMLypFZHYgr+2Y6ju
 TDMNV4qE4PH5WgJCgOogP50NXfJIDirKCDhq1RZi3j5l7KZN+uwO50GBnlfgZsCU4hKprin6z
 uY0oOol0j7fFu6Ezk+1ZTMyCCxmaski+vcLUaeaHyBBk6Ac4em/OpnzuQOxhFl3b7X3eMCPcR
 TkiDjE46juSuJtMn1ebMjS3OG54CRImI8iBE7FUVe15MwtwNk1QNozunxuj564a/aOmdAbYzo
 NkK7ViN1FgIaWR1yXjjl70EzqixlbBOfAyipDjq/Ip1ZPCOvEqfi3RFhBQVG1H+yJ3HHts0do
 Pef5uy0sXFzIzkJUHWSmCv3ex5zPSEPlMum3As1YPrD0aFyDOjQoa7TLn3lAWtXxasaMKYCM6
 EFwLIndM/0GQic3NXe631UiV+4anz45dHcjRVBbx2m84DwyYh7b9/LW6w9vNDIu9/TEhUxY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_050330_812936_7FE21110 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 supports 58 GPIOs [1] by using the existing BCM2835 GPIO registers
completely. So there is no need to change the binding.

Patch 1 and 2 prepare the pinctrl driver to be extended to 58 GPIOs in Patch 3.
I didn't want to squash them in order to make review as easy as possible.
The final patch 4 assigns all SoC GPIOs a label as we already did for
the older Raspberry Pi boards.

Changes since RFC:
- avoid using memcpy as suggested by Nicolas
- drop unused entry from GPIO label legend

[1] - https://github.com/raspberrypi/linux/issues/3101#issuecomment-573092294

Stefan Wahren (4):
  pinctrl: bcm2835: Drop unused define
  pinctrl: bcm2835: Refactor platform data
  pinctrl: bcm2835: Add support for all GPIOs on BCM2711
  ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  73 +++++++++++++++++++++++
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 106 ++++++++++++++++++++++++++--------
 2 files changed, 155 insertions(+), 24 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
