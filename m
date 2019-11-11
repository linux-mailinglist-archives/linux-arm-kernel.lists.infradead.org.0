Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C04DF809C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=74fKaaXdjAfjmkkhbLE2Oct9+stdKMDXfiNgPlDpQfY=; b=YFI
	HuxyD8xju7LBtFRg+fOz4YO0IH61pmM4Kxr1/XNLVVHCW53//PA+wpKf3rmppNtf2B6XnVluhFUWw
	alGuoq+7LR3j3ka3ckf1T64yIfZ36t9/M0ym5+MfMGA1af/2AUHTMjnyEA2tEKboY/8aSGHZVt4AK
	tJCYtngwKm4TbPBnZRrrS7ZtEyymoqCafgA0+h/ioprHMsLdLnesf17ZS8c9F7iNXvR/e/NvCd/DS
	vsDVZY4o005V6dZWPsKoHad9n+GmygTmortkjrHL2PgRX8Faun4PVbSlDCsnPoyCGn+x4hM3vOatt
	2IzTIgwpxas4eRXwoBjcVDKs/w7i5Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFk6-0002pF-7Q; Mon, 11 Nov 2019 19:52:54 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cw-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501790;
 bh=xi27iTDjcDpnSMVKDfT12Ab/Na1O4J3NDmJZO0y75tU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=kY3FqCT7Gl0cbyXCF81zKfL++TQWx6NhtCRrEtvb0KAAqRydkfgoy8ckrn5z0izza
 yQbK+9M243Lku6pp40OPjWrQqSDgToSg2PWMBAJBvcq8vLMktyZI1PTEoyekRgHmLt
 fzPAZ+YViqlT3lTDSHshHj1M3UfyY2eGuEsSiu9c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N9MpS-1hrdfu19O8-015ING; Mon, 11 Nov 2019 20:49:50 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 0/7] ARM: Enable GENET support for RPi 4
Date: Mon, 11 Nov 2019 20:49:19 +0100
Message-Id: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:sjjegBo9YJ4+FLoHPimLpHajqn+WYg1I1Rp8rwOjLXsa7L/nY7q
 oTpQIHadPsrmBmEnpRdl1CUiPy85n2bqRaBFQFGo1wc93JCv5PbLe6OJ0Rd/nf7HR0/nRiV
 BqB1PmNXYZ7zKSaz15G5R86QIlR2bNB+5uJ+uZpQ8TE+m9RkKbWDG/k9xDl3SVeVcYwQwL2
 AiE9AhJIUZpNSgaDeEf5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5rnjUq1GL6Q=:h2srEYoWauvk3KmY7i1/z5
 D16sVhzBFyhW6kZvltK/ah5N6QJGmqoQ5IcPqRfIIrJY6tJWNes75FYgyUqJ19Vyj6SIm/aNq
 MBcEVKxPiGsIJoCoXCde60zAspD++Qctu/Tv+nP9cXSjAVu34PCUH08B8bpTp92denTakOMqU
 jIo4OEkTH86xrR04RvRabLNLclmN2rm+ATRMRe/feNdrGgehFET7jkcryliTkuRXKmtkad4Cf
 xkQAQ/mhSApq2rAWoJO6Gvt4cqQrBv/qvuNDc0+h85kywi29RqDQLe1/e1A7T148BbPagDok0
 xhX9NlqrU2Gk2YA4wv8A68xvhOFEJBmgJrqi5WeoHKs6JNphC3st1yWBYAs8y4aYzEypgABhm
 9yvYdsqbu38BOts0vwDVX93H4bCgdtXLoYMTSrzVO4lEG1oRwJeKN8esGEDwONSkRgq6weikJ
 Y4V+b+WGSRrB4DJboswb2mvJ3l86pg/5+dSfz/SR5eqOx1juruKXvhCqYXR0nhtUlGPe4vvSt
 gcNHQawN2O+LS8N4i/Vef+E9zyf8gX2XRioxmQdlVkBXKCd9aJzqAuhPSEnSxYSG2wfFrrge/
 BcPjLtuOLE8RgxK7uq+Rr/Lunc7XBW9cx6S62VlEHARWW1/vnrBju5Hx9RzSCxPMyzr25YwTA
 gG1z+cVjpLr54/4aGMD3DCV878cnHjQwuXX30Gl/6zOWWfHX+gnraIcg+emaUmyHq9xUkQbpl
 knHMTJ7feFMRsx2iN99S1q+lkkXx8O7nOvlya79ME0PdjBiS+LFs4O6qHMhQ0u3xmEMNbjNMK
 JOUVJ26xqf3t80kX77SRa2aohmtzj7N0UwA/MGw7iWPV73u/8dkRQFiHpoOw8La/Q7fkMxEAj
 whJ43wwDoKFxAmCruu73mFM3bDDgFsGawpnsYTqDU4viuxhHa9n6JehtupsVS0gM0HDx98sWY
 qE+Um9GWD8R2Cae/izH8s6PNYPM/yw2gj7SaIVF+Vm2mI7j4OHuH7m7y9di6DfeULH8+Jdn/Z
 tOe4UUIu3ve6zKL+cv6oD1mljxyz3PBn2dCel0F6TRUSeHt3ekCEOWa+UFZduWgpV4zXqhcxS
 vxJ0c3yd9/wo5IrtdsSYV+2Cum3t1uf08kOQaQvS1TN9fFryVr7HMbf6clKVy6Xx9jvRgkEAT
 gjPJstZJ6WOU3MahlQ91hU4iGLIFKsb0XzHHo5ijJbA8PGYDuOS2pu7x2f8aoqsGUjXHsm+qP
 22FT4TYAzDyVMEfDh5tX90dvpFC3cTm9UTFVHww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_350644_FDF21DBF 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
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

Changes in V5:
- address Doug's comment

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
 drivers/net/ethernet/broadcom/genet/bcmmii.c       | 47 +++++++-------
 6 files changed, 130 insertions(+), 37 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
