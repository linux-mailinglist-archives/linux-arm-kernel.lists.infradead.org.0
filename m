Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806F714A99D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 19:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R/GT1Cy9BpR561hrXPX7Hz4/rnF/JUzUXh+GjsCKeao=; b=dpq
	xtoNNiFQ727LOkdV3+R44dJEscpvB4zNe+zSb1Sr5AVM+toyVkfpAS4HvNTAqplMJWKWQ2d7IWp08
	Fyjdhm48MYbL88Fx+mD9eVORtXBhyrBssyWYYLEphERo1XbMMdXYKVqEI8SBrzP2oftSz4OFHkH5L
	XwL6qGsCEPjkf6x13z3l/isifhTWwemVgjUlQbcx6J9OAaH6/TRaqrQvQNaE1eQQilGsPfyfC8P80
	xq7b3idjKMnRRDBAwsyqb8cjsbYATSK+wZ5ImGY/UmZ1n/PXux0uLbwJmPw9RUrFOJ3SOaZqe6KUq
	GWniLDBdyvpHGSCQH3HTT/NjSx2+BPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8vj-0007yk-Rj; Mon, 27 Jan 2020 18:16:11 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8vI-0007pL-Pc
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 18:15:46 +0000
Received: from localhost.localdomain ([37.4.249.152]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mvs2R-1jlEAl0Ixr-00suja; Mon, 27 Jan 2020 19:15:40 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC PATCH 0/4] pinctrl: bcm2835: Add support for all BCM2711 GPIOs
Date: Mon, 27 Jan 2020 19:15:04 +0100
Message-Id: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:yg/rb5wFqWdXj81dOcYj28x9Nt0riCHuDWx9306t0g0mf3IueD2
 uizd9G/+uVDXYWmIGnORMVPQmXYPlJXE9Wf+2H9FqFAmDXZewNCVUYtJhIpAxL3wwzisGXn
 m5pWiDAL5AFhnCxhXNMHoKtYE0xDj0Yb4ewhQ02Zij986KKCtKd6zffB0ebGiWzGbLHw7Au
 2IVOQAFWeuXw2VtlMpHqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aKF8x4iqoY0=:9uBiIsisJ6lNO1jewQmFmR
 L5YZJPkXOqZn2cu9arXDiuLsXqQpWc8sa44MTl611OCZgD1nQQ2znlss/ub+ooNaDDdtUSok8
 BvBk9BTkVoRSvLwvkwS04p325ncEk8w39vHXwAq4uyG+B+o+wXuS8Qd1u78j7d+89WywSQ2gk
 A8wLmmZ9cIyS0d436/S7rxxK+OR6BIbJ2bOi0JCbW4vzBAkdQzsvGqY51bbEMNB9ZptSpJ9Ws
 RcNjs+ILuQy0pcBit8vCxAeiO86FrayGXp9CVMucwIPVqoz8UwJFHZQjHiK6xsfiJaeX6Yioo
 jra/rbGmAPhtpn5oYdzjPr/SzTtFQNgW4eYtNS/SzXchPkqZwmavTMrV+8drNfH7fhT/Od9tP
 G6kCVIqgec1rpwy/g09DjkcBqifzgr6vKnXPd5ILGDMG5vpGwvZkAm0XFnrGwxYa/cfOEuLeh
 QXJasanJHX4AmSGOWbdEUqslUeKyhzoBCBG6dAOkKK/n2jyThf5ON+lfRUPY2PZHvuGqctFTN
 jZsxE2B2ARlFjsNNezJQD1+3K5WGocqKkHJWmurhW3IgLwq8UzKmMPs/FGIWbFKOhJmprrp4R
 OiXIAQhjHvvkdmwlGzb7mYDsrPLVkNTQ1ASSWkIQvs2it7dRlVXNIoUtTG3y/ekAlr+6P9jId
 hxU9yUu47d4QwbA0hLDd6pPbWO4MiT+6faut/LySNrn1UjsH8wADsraNamTjy26aHW6vDzwt7
 xacbJod8O+urUArV0jkO9/dUXzvv4Xl2oWWCJilgc4vVOknZqIYCAPvW3nAJ2GGl6RGlaF55r
 hGSXgYkdGDByZTZUCymfE8iMGn+a7kDyxqGFR4p3gqnVrKZCYFTsJfY/H2AwFuFCKE9Rp5T
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_101545_115379_73046A86 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

[1] - https://github.com/raspberrypi/linux/issues/3101#issuecomment-573092294

Stefan Wahren (4):
  pinctrl: bcm2835: Drop unused define
  pinctrl: bcm2835: Refactor platform data
  pinctrl: bcm2835: Add support for all GPIOs on BCM2711
  ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  74 ++++++++++++++++++++++++
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 106 ++++++++++++++++++++++++++--------
 2 files changed, 156 insertions(+), 24 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
