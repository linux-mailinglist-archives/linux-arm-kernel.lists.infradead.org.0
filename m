Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E23A55E63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uuJi27SEPwquqIhbAicuipIxdsyLHW2EnWSiDk6Lqc=; b=DY88hbtBFfZF9z
	FVki2OfOhSKLCVrC2jm+7Z1xRA+s+A4dw306NIJoin6lGrt4b2/jLhG0NU8rDh7lUZw6gvw+uKD7J
	KC+QyIsuk1DbXSWbBNbeyi+zOo8xSFtFKxp7x28HKbS8nA/rziVY8nVZsskgHkO1KnKhiqlnjLiE1
	+H32T7vXzarwzR1HjNibKN2LcIDJtT4oWlBt3prVjtPZW3tIRs+bOwQXSXRrOJ+qDlXp2SExITUiJ
	0Tre3h+BiKwTltKGRpVXgH+fD9cX1SBbzd4j1qYdUl6KiII9LT3S7KuIr4H/XDUkhyCnMIe+8cs/U
	kS5wwihRs1yipaV4YcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxiR-0002Er-3Z; Wed, 26 Jun 2019 02:31:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxiD-0002EX-7Y
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 02:31:06 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B97C20645;
 Wed, 26 Jun 2019 02:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561516264;
 bh=I6shpHQqgxN0S9QleDkpaXGcBeakVmIr0bXuBUYoVXk=;
 h=Date:From:To:Cc:Subject:From;
 b=LveU3DHOW1EfmWgPt46lUv6dmDmVKkKXSKqUzwl+kIVZMVfMEYLlPVqNL2sX4cKdO
 ggO16pNFM3fRjPH1qvdLpnULlajM8wmuDdB/pAfsr++fxGgoFtkLH/vafdjr7EDkWw
 hSwL8PGpV1W1jhDTC/DVAaZebOdkhbVR0TH++75k=
Date: Wed, 26 Jun 2019 10:30:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL v2 7/7] i.MX defconfig changes for 5.3
Message-ID: <20190626023047.GG16146@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_193105_288682_134090BE 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes for v2:
 - Rework commit log of 'arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m'
   to make it clear why we would like to enable it as built-in.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx=
-defconfig-5.3

for you to fetch changes up to b576576d6591f60f2f3ba0ac360309a431b69e55:

  arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module (2019-06-2=
6 10:24:07 +0800)

----------------------------------------------------------------
i.MX defconfig changes for 5.3:
 * imx_v6_v7_defconfig:
   - PCF857X GPIO expander
   - SIOX bus driver
   - thermal statistics
   - TPM PWM driver
   - OV2680 camera driver
   - SNVS LPGPR NVMEM driver
   - i.MX DT based cpufreq driver
 * arm64 defconfig built-in:
   - i.MX8MM pinctrl and clock
   - i.MX LPI2C driver
   - ROHM_BD718XX PMIC
   - OCOTP NVMEM support
   - i.MX SCU based SoC bus driver
 * arm64 defconfig modules:
   - i.MX SPI driver
   - i.MX system controller watchdog
   - SNVS RTC driver
   - ISL29018 light and proximity sensor driver
   - MPL3115 pressure sensor driver
   - i.MX8 DT based cpufreq support
   - QorIQ Thermal Monitoring Unit driver
   - SNVS power key driver

----------------------------------------------------------------
Abel Vesa (1):
      arm64: defconfig: Enable RTC_DRV_SNVS

Adam Ford (1):
      ARM: imx_v6_v7_defconfig: Add GPIO_PCF857X

Anson Huang (6):
      arm64: defconfig: add support for i.MX system controller watchdog
      ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
      ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
      arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
      arm64: defconfig: Add i.MX SCU SoC info driver
      arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module

Fabio Estevam (3):
      arm64: defconfig: Enable CONFIG_SPI_IMX
      ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
      ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR

Leonard Crestez (6):
      arm64: defconfig: Enable imx8mm clk/pinctrl
      arm64: defconfig: Enable lpi2c for imx8qxp and sensors
      arm64: defconfig: Enable ROHM_BD718XX PMIC for imx8mm-evk
      arm64: defconfig: NVMEM_IMX_OCOTP=3Dy for imx8m
      arm64: defconfig: ARM_IMX_CPUFREQ_DT=3Dm
      ARM: imx_v6_v7_defconfig: Enable CONFIG_ARM_IMX_CPUFREQ_DT

Peng Fan (1):
      defconfig: arm64: enable i.MX8 SCU octop driver

Uwe Kleine-K=F6nig (1):
      ARM: imx_v6_v7_defconfig: Enable SIOX bus

 arch/arm/configs/imx_v6_v7_defconfig |  9 +++++++++
 arch/arm64/configs/defconfig         | 17 +++++++++++++++++
 2 files changed, 26 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
