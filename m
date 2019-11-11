Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61B0F6ED4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lkaq3vfauJx2uDPgoSWKySofNQdurdrOlagkzOZ9ea4=; b=RKC
	SHJWb/txLAhGzEf7+3ielrlpTUiOd/Jnv0j7etjURy0pmXN39y8jbSPcZ5EDvSq0bwqXcfSZHrVv3
	lBAzXi3sEhd/90AQH6ickTCTZYbTjZTQUprtUgb5l0JDWizWk/DKo5WrtV2NTLJ9nSfQLzsyXrnrf
	0DTxHT3SVpq+W+eHOnUfk7OfdT4EYZFW4kCp4okHFGbB9RZgVSWxxKpRwunP33+AthVFkgeN1Eu8s
	Wxwr9HHDfRoBfnvFTAAuPDNGaAN8bpv54W2iWeg/xPUqT5yZxWbOdAs0+9/1NxwV1rCik+a/S0O+Y
	ldLiSfwHXsWwwQXZuTDeQkjXTAm5Fiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3eo-0003xb-Mt; Mon, 11 Nov 2019 06:58:38 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3do-0002yK-6d
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455360;
 bh=0jxMWIGkU7ewd+S5xOOJEHPXWN5shKLBSrDpJeIk3Ok=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=G/bDu3kid608MB+4VMhpaVTuFo+QDdN1yTRgHtfgu0g9NCmk7wnDRJrPqtPm/tMk4
 iAA2eh9qGgU1nKm2Um6TPYMbkjI7ifu0khAEchLvSWNdQ464UxIEQSIXm4cfWccPsc
 bzM4+7AI9nJ2a/+eYt2tH/iY7+/uSQGM2Fa51ewY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mwfai-1hgF1W33SU-00y5K5; Mon, 11 Nov 2019 07:56:00 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 0/7] ARM: Enable GENET support for RPi 4
Date: Mon, 11 Nov 2019 07:55:34 +0100
Message-Id: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:znXwmQUr89xRFl3D685WuGsnPrIB78BhmrZCKjB1EDElWQ6BhYV
 MKRpXC5HoIaGo9FQBMcjkLPzNxbM0hzKlIYZYmnU9WHhzSp8KRNJIEO1Csaws0k1xo9ho3p
 tJ3FjIn6op0kWCoMIVFqLd+H87Nt0/zKsRmvTu0yjE1OLMLSC3JaWaOd9ybulG8lBDtmiiL
 6OcI2dYFtn2J+uJxK+7aw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1OM2d/R61Lc=:gLr/jMRGG1jJpIJpHIGUCl
 eT38XH3MsLhTitOBBf2SBlcnYUSRQ1YkK33soot2vtOsCR9d/sS+NN8ME1pgGGMehudYrXjO7
 rl0mtnCfWrPVFFQp44SjsFE66hsWmSXXrbp1JO2lE8KKJvdTTGyGzaohBZqBphz7zbLPYS6LL
 PcrVK7Oqcpr5SWxMmPRcJzxy8TzBnoS/b/0UkI4fge6cMLXAGy28Y9Yr/1UkUf8Hyv0NDVbWC
 rE0+0FX3Rteju2yIfBOf754ac9YMNjjl+wJT1HM7Syizinb17NafKy7OKgPz8kStvfBACjSej
 aE4hTRZaUsPKnAKBG+W0mZ36nrwzIOSXPwtUH0imKZP859UAKAzusZlsydu4hEVpjqJkb01Te
 qbU62K9B9t9BUhtIlNKatjGC6V8A3/tppWgkffG7kqn0zFKeb6ZSriUdxG3/ZZbeRZ3y/zUTe
 h67lT2tZ2iyfamgskA5IhJ5RhKT4f2YZ8Ar7ICu1pqvAW8i3ZmSgmp1sYFCXJfew9NdZ+rN6Y
 jVZjGXKwi9wVVt37QRMc6pF6zUW0NxR2dcVlZQfQEFiEfmdnO+50bRUDPzopHT1OxS/DYxeG0
 jJezbcgFFjTPB3fLuq1GMlVNxuMQg+W54smbKZgBQS9lcMVvuu7H+67+Xk+thc1rtqhG63dgx
 tYgvi4UCKxbZ+Cqqo1JONqpsMZiTRFrcdXp+ICr+G2x5eohB2BGGqF4kZ+GMlcCVoKylZsTqs
 ewCPof7RL5IePis0C8eis3DgFg8Dug736CC3L2IqFUmYSxWl2pYufz6sZbRguspq7lqM3YLFm
 IW4tIO28f69m4igNos3TZYJWaj+liRfxmm8Ponlv/xicQoJpLrekw/8qJ44cdyj6qZVfCRg2Z
 97Z1+R4H5DVxhogBZWoOWU5nprsee+rBH2t/Ft5bW8XmqVjHcY9UGllV70aFrKXRALfqv9a27
 RFoP9Pi0kNFhRn7Jq9FLryWyBoAurTY/nHq7gNxdZF+CU7qC90O8EsZxjb7brGlVNx5sYHyVi
 5bM3HwAtcFsSUsr4MY5BM0aiSz1DIYPrtP8fGHWkOT+MeKNfRxKcXvbl4IE1mAxK0aBTrAyur
 A31PuN9rmik/jSBJQzeCnNHfEr0UOvRENW7bkRflsCUn5hOzEVoqdvAmxGTiNiMidsj4G0TXS
 mmzWTnwF98JkeeZ9sceK3HoXo9NkaGznrCZFmZWD5XCRxo5fvhIk+nngkkOOzM4EGb3BQt6aL
 Bb5J8eQRAwvr1ffG6VxuI5lBb+9ixOUcpZS4xfg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225736_573940_A14EA282 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Additionally the patch series has some IRQ retrieval improvements and
adds support for a missing PHY mode.

This series based on Matthias Brugger's V1 series [1].

[1] - https://patchwork.kernel.org/cover/11186193/

Changes in V4:
- rebased on current net-next
- remove RGMII_ID support
- remove fixes tag from patch 1
- add Florian's suggestions to patch 5

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
  net: bcmgenet: Add RGMII_RXID support
  ARM: dts: bcm2711-rpi-4: Enable GENET support

 .../devicetree/bindings/net/brcm,bcmgenet.txt      |  2 +-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 17 +++++
 arch/arm/boot/dts/bcm2711.dtsi                     | 26 ++++++++
 drivers/net/ethernet/broadcom/genet/bcmgenet.c     | 74 ++++++++++++++++++----
 drivers/net/ethernet/broadcom/genet/bcmgenet.h     |  1 +
 drivers/net/ethernet/broadcom/genet/bcmmii.c       | 40 ++++++------
 6 files changed, 126 insertions(+), 34 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
