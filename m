Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F42ED7D3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7xUWtyfaIC4YlbTxRsDUVdS8fRVsUwxO323H7IMFhHA=; b=gGD
	mxoUthsYetPuf+Oih/i29slgIYuTUJIvOjY7jPGifaEMFl/LyYMfOVk3Mdh0RFndyGL/0OH0hfq72
	MWPCk0SukoqRz6T5mQN0JJ2VwHglc2cC5M1yh+Cu70yFlWeBBUShoavkry2EsPKHxGHVK105SVOWO
	ewzVpphIWFQXKCjat6kLgoMJLjcO1XtTN4Hqq2En6UvCX45q8LnuFkGVc79U4rt/fjJ3AgwKwVI5z
	74XjertenNpRqez5RedhzQfv8MrCo1jI6UiHCNSvJ0nQHQqYwKAMLcHKUc82poxt/9Z7qiafMxOx5
	oLVtZ/BlBy+dV9FchKz2SuGgADI1+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQRd-0005iT-O1; Tue, 15 Oct 2019 17:17:13 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQQq-0004xX-7m; Tue, 15 Oct 2019 17:16:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571159776;
 bh=pWV8t98N4Fo6WzlbK05g/TVgMxifM1N6xBHlNciUcE8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=kSR6/xH+HDHvrO3CO4SQ/kQOCfer1nNoIp8hFH1MfZaC2GVbaIZfFXT6mXxMFMAa7
 jTfmm3fq4Qa4GRx/fqXkan0YnhZ/Exm0SSBpYfajTU09gG56+qXhrT2oBgkiJCcQlN
 lTvgdkYLRebTrVqKPmhNFzPBK+gIg5V4hkMFMrm4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M7sHo-1iPM7G0QNO-004zt6; Tue, 15 Oct 2019 19:16:16 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [GIT PULL 1/3] bcm2835-dt-next-2019-10-15
Date: Tue, 15 Oct 2019 19:15:23 +0200
Message-Id: <1571159725-5090-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:dfZx3uAk0vysgtmYoY6k3UPO7+uWCLJU/YbcuOWHM3bUaop1Kfc
 FdW5t1UZI4gqdAQSn7/POzYMdoPfZ+Ox6/2uHh3do52Bcx0lLROu9rlI+a5II62DuzvRmUG
 6cYs7xrKRSWAHRACx8eCiYvDfSP8DvtsTWlc9mFBmHjUfK+G9pJpycZeRt3vu4f7YskTHe/
 +ykUGtHcFwPt8sXHOpFAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wyIlnAb9bcA=:RB4gxlwT01gSsq4Bmz8/05
 DlmkjBB/Z9cOI2zys9IFQNgv2YbZBUovkOoFl0EjDkHUdGYKtePogDa/2CtfAmsH/0Z1l8OUW
 zQlevcJQkviYadwRxcMy7FlU5lYOEQqTZVQVmMbchWicu4876i9Etwx3BK3K9tH/erziGQZBs
 6gHGDSi9Ca2a7iJxYvGP/MhwEOiBWwIYhGKxBQk4tWZrvvb8VpbExhS/RarSQVcopi7fwi0i8
 ALu8nowNm2PyU4j7ufap5qO7/e9A4REJrG6yQx30s4kgcEtu1vFjk/gK4qRZahrVTUzuJqBkT
 2S95HEjUAriCT7Ki6jQF7CAK9VWxBF651li20hXsLhABZkfhXp9L2Kpqc9zVJYKvDPKSicArO
 8UaHyakTvVDx8z/Dy9fCkea+by/AT0pFzh/z1s6XjFAsY8zI1NMID9vF8Am/A20NB9US7V/z5
 EbQ3C7vVf13MIlOXE2SSSfXzk31IoeIW8UkcXeOiuHW3PruEDoLFIKt7KyLWvWE3AAOegmRNc
 LCK99P1CSe/nSR+7h32VpL0L8Nw40fDHhWItwObcLRbWMavig7HT6aWOXBR6/q08I1dwE8i3R
 uCMKgEzbp/fn8ZvBF963HCkAGrQbtL3vh1X3RSaBepkVK4dfdNUrAG+W/Wrcoop2ax0xiH7hQ
 WyKItgPxxGOBJIMJu8hqcrUMuODhZiOAcUWWSGiQNooDsj/2X/cpww+bz/PH39942Z8Y9JJgH
 B0mSsZRJ7qOIEZcAxKdVdf2zEwft3O3ND9gHorwQur1YzC9mrxxAB3P5jYnPEor8OZiGmKf3O
 8pYjURdHxcjfDPcXCTlln0M6wC8UUa6ZtqYQNUxJwO9YVNot28f5cvkDfvTjMOGITgmccdpxF
 JjWejq09Nff/UBUeVVHq/e92KMdic6czcHAFZP06qs1JcG4cHivCqFaxRDxjAoQiBeMGrf1uI
 eybHJsBBdIF66DbXzSIKFer9cLsikiA3Rgq6j3ENoICZFfuORQplJsNTNYGVaBKffmPDi0hTD
 TjTD5xcqcu/Gq5XZGZvBYUEzIJbq6AIgwvs+P4do5JI9b4Ikh45bS4XZ7CAOxBMJ01fWU/fhB
 Uy1oC7ulH7zulaT47AUY0GdEKJj2N8WYprxyQJ5e8zpaIC5oOH4fPYpL275yjx7vesC0wzJQV
 9Rzj/lHDsNdOlVkQqtkDUJEgqrL0HmNZRrWzzmW7Mfz/Gd/+fNjCfn65lEq+UN4qobAk+As+H
 fko+Wqbh+gnpIHer4TU5Gi5+sJ+fbeurRDsw7QA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101624_575457_756C1243 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://github.com/anholt/linux tags/bcm2835-dt-next-2019-10-15

for you to fetch changes up to 46fdee06aeefedfc62a4c33b2c4a7a74682ac755:

  arm64: dts: broadcom: Add reference to RPi 4 B (2019-10-10 19:14:28 +0200)

----------------------------------------------------------------
This pull request introduce initial Raspberry Pi 4 support. But all the fancy
stuff like GENET, PCIe, xHCI, 40 bit DMA and V3D is missing.

----------------------------------------------------------------
Stefan Wahren (7):
      ARM: dts: bcm283x: Remove simple-bus from fixed clocks
      ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
      ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
      dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
      dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
      ARM: dts: Add minimal Raspberry Pi 4 support
      arm64: dts: broadcom: Add reference to RPi 4 B

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 123 +++
 arch/arm/boot/dts/bcm2711.dtsi                     | 844 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
 arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts   |   2 +
 14 files changed, 1236 insertions(+), 256 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
