Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF404F6108
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pxnXavg/zY5Pr+PDGdL0I8xuW4v3GwraWjZ1xS2C6Z4=; b=log
	iNjk0eLLmjJ/4RaKUQeIBKGU+mCRbWma56cFDNcx1M0prFK3lWuPn0IJ5HdWSXuNq0cmZxQTlFSoj
	GcP4i5zhmuK/P7yg3+5Me5FV4dUOGQ2x+oKkvpVXSwOadOYCcT64mi4FD4ahM4NBranaapz7vCZv/
	doaqAkv5A2ugDJbxQOt7M9iOEt0NiPmISOKL6E6MYqRqCtjVVGmnFwqpHXW9GtW9hhmVqi1OwUEDZ
	nKMkCFPrQukV+Ybua38uKqvipaYSgYj6mgXRKuKFVgthIeJGb6RVh5XVfrBIRr1QTFnVipmGt+EJz
	asArPvjacGHaHEhMRG5rVp7/ck3wvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW1k-0008MC-1E; Sat, 09 Nov 2019 19:04:04 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzw-0006qY-OC
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326036;
 bh=K7CKH2sFHfDimmW1dIbo69c8oSLm5ez1U7M3pM6s/+E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dW6JW4Ob+mqjTz46lOUHJX1v+0S4LkxRQRVOj2Wbri+Rr3qP0uKYxOze2JwKKYO60
 vuZd1KkCdHq6YZMCDSBgUXz2Ew6cf8NgdkLUpTFVDJMfFsDud+E2AholP4nhkeC3fP
 +dhp4oSYYpcxFSqYDx+HzMfsXRr0+M59le77pp2o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MvsEn-1hazuV0LEF-00stL6; Sat, 09 Nov 2019 20:00:36 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 0/7] ARM: Enable GENET support for RPi 4
Date: Sat,  9 Nov 2019 20:00:02 +0100
Message-Id: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:OgFDCO0NwXvuJHy+Vu+h73awi0XbS0g0wqaxOoCfcg6M1laaqr0
 42WMpGs3AOwhMdR1fBhvUbb5TFyk20DV7l/TL5hZ0vYJypBqkuBTym/6BIIYZQedzi6jc7O
 SsdVWY4+RAHJWI9+LCWmt5YdJGHx6weJsESvw1u3d8fX8GqJeve499d7ejAJydocs8zlhUX
 WwWlW3ZTVtX4dtMANBHEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cib+r+eNvWs=:/uhI6kKPMUNqdQMoO4/yG2
 ZCp5Za+V80fsbbFDY6WK/xAFVYennLWAhHpDw+JO4A/4Bc81M8vX27o6hPTgJYwdb3PUcR7oR
 TGsFXkrAQ8UAJaC+JxrNJQFzqaDtdOlulZ2q0YtTPe2zXzj6Har6goypTugNGaDnLCAJPLplc
 h7jtXElDUVdCBcMK5wzGUmGts/rzLN8ppvE3jDst1bWUIo5FdZDDGeOlZ4lu2t8ZS+0hyS+KV
 iIoPcgzB+l6Q6ltxsCbpPbUG7h33fBLYDXu4sb6GTt5pi4LEU/BuxbiWhPdfjfwUdRbDhCu9n
 4dwZ7lJERqEczy672tPXGxAMQ5eGhPX+ZEyT/yHM9GnuA7HFIHt3k5qnKehBZSKI3iJAIGbor
 ugkMRTasIjB2Thl4QFjYeMBGqEKJ1pYwRUpISrT6fBEKly8VvGl2xQBG8+rPxmfhf38xGG7MA
 0JHJKwdcLNk5fwGikclfVyHHKWd8oCSKQuMwTpwdga0BeSUfUI0cL5HXPkp+D/mR9Su8jru+x
 J1IOLG6XHkezIlO+LzWA1/47qbgffe5cDoC7pkSLZCvIXKCcU4C+mCvFBBOBZrXbyYmzk5GZW
 uQT4VS2sVRhsxaOqT9jtC942aSzuZGnnMYhZcYzHxOD7iCr7euefq/bNun5Xj3CjOcnX3SDDs
 MZkRI7QDuqQTVrMS4dLf8/jFFOILLxr7FMwxP62dqWCej8FkbtkDoo9YthyE5rrQLPY/igbnj
 Xe2G18cdSlAH1eMRoZJgJlqNf/1CVcn23SIL+OrvyD3JFCzC567IPFlYDWhpRry/3vRuZcFmS
 AJ3bOERQImA4WcoBFqWcTq+wM0ZUki1Pl6vLcHt3wc4tCx7weqSt1b6TfPzVw1+LtFg9wKE7E
 M0yLP3R2cEfVWDhVQOSSBNFJiNmBRJaq/yhRNf8wwGpHbHc+CARxwzwWEgWNa5zW6dRyPrsim
 rvaVmcaapIGVTkGQE8Xa5XD7mQi7xZBc3z1dhz8a9YVtBgAZJlb4w0/ylA4YDTGT4nz8tgkhp
 0K0QEcVGdEP1W+8+LzBG6atdFPv26lml75vAPVWYByZ0JSzAgNW0RWFueEVmA6DC6EeYCN5sz
 VcJJ6AsMBx8r5f9sEKo4v8SivF0AruA2NQ9+mK0kUFeLvo9qbRTWv87S7iydq4lO3jxuSzJKw
 w8uCmT1f6lc2Ebsud+CneJJYcFtSuPLJqb2B9EqYrKVzFXij+27mzAA7T1dxB7677PXbO8JNi
 4Baau5LFAXOqKrGLV9eOf23rkjkx0Q/xGHFSh/w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110213_119649_DC5A7C71 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Raspberry Pi 4 uses the broadcom genet chip in version five.
This chip has a dma controller integrated. Up to now the maximal
burst size was hard-coded to 0x10. But it turns out that Raspberry Pi 4
does only work with the smaller maximal burst size of 0x8.

This series based on Matthias Brugger's V1 series [1].

[1] - https://patchwork.kernel.org/cover/11186193/

Changes in V3:
- introduce SoC-specific compatibles for GENET (incl. dt-binding)
- use platform_get_irq_optional for optional IRQ
- remove Fixes tag from IRQ error handling change
- move most of MDIO stuff to bcm2711.dtsi

Changes in V2:
- add 2 fixes for IRQ retrieval
- add support for missing PHY modes
- declare PHY mode RGMII RXID based on the default settings
- add alias to allow firmware append the MAC address

Stefan Wahren (7):
  net: bcmgenet: Avoid touching non-existent interrupt
  net: bcmgenet: Fix error handling on IRQ retrieval
  dt-bindings: net: bcmgenet: Add BCM2711 support
  net: bcmgenet: Add BCM2711 support
  net: bcmgenet: Refactor register access in bcmgenet_mii_config
  net: bcmgenet: Add RGMII_RXID and RGMII_ID support
  ARM: dts: bcm2711-rpi-4: Enable GENET support

 .../devicetree/bindings/net/brcm,bcmgenet.txt      |  2 +-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 17 +++++
 arch/arm/boot/dts/bcm2711.dtsi                     | 26 ++++++++
 drivers/net/ethernet/broadcom/genet/bcmgenet.c     | 74 ++++++++++++++++++----
 drivers/net/ethernet/broadcom/genet/bcmgenet.h     |  1 +
 drivers/net/ethernet/broadcom/genet/bcmmii.c       | 51 ++++++++-------
 6 files changed, 133 insertions(+), 38 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
