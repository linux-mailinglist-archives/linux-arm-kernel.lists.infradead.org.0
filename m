Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EC93B860
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ciGObLBFsrG2i4fP4DLV+KYm6+0CuGfGC9xowhFMbB8=; b=iOmD1CqcusmrBN
	7YvPEArcEo75ciDBKgMgyrnd1G/+CRjPGzavaZtex44DZ34g08vpa/OvJKOWEqTimpVwMi11gwBRa
	EiaolgQWONvCMbPp9izfOUf/7W4rut86wZIyj7fgr563FKYf4xQ7a/cXaHU7U4Wa9HHg7u52Cc5I4
	7Gacit7HINPqPGZLXb/gFaNowb8hyMLb2+xHD8jhMR+Iabw8S0bJo3muAasRPMjL5aYC75fL7lqmA
	/o0iqqelfFxqwzvji9bD0En058yytDiJP2Crpp4H7jOWSlN7mNNcZ0Lyjy8pNoIC3kj3a835dNiz5
	ZLwmNWIc73WsDp15KRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMK5-0003gz-8S; Mon, 10 Jun 2019 15:35:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMJw-0003gg-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:34:53 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82964206C3;
 Mon, 10 Jun 2019 15:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560180891;
 bh=TL2DhEgOgN0D6DINeYv6DAML1Q5HNQ/kkkyx5kXjuGY=;
 h=From:To:Cc:Subject:Date:From;
 b=P3V5Lg2Kcq7bKfKLtbTE4BzQ/3hZDQGwlY65oHhYZmNcowFzkDkNw1mZqwLSRgpkh
 NgU6QY9maBdVS574+y04zDHRe6rDXFn2CIvsya//ssOwVPlMLYzF5yLXPc3BXAu9Sb
 gpykw4p613R9Ly9rfiTXEGZtK2rT3vl5O906Gzr8=
From: Dinh Nguyen <dinguyen@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] SoCFPGA DTS updates for v5.3
Date: Mon, 10 Jun 2019 10:34:45 -0500
Message-Id: <20190610153445.17215-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_083452_639069_66105693 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these SoCFPGA DTS updates for v5.3.

Thanks,
Dinh

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.3

for you to fetch changes up to c946feaabbdd05b949756cd209ac3937f98aa148:

  ARM: dts: arria10: Add EMAC OCP reset property (2019-06-10 09:49:37 -0500)

----------------------------------------------------------------
SoCFPGA DTS updates for v5.3
- Use the new "altr,socfpga-stmmac-a10-s10" for the EMAC controllers on
  Arria10/Stratix10
- Add the ltc2497 i2c entry on the Arria10 devkit
- Add the EMAC OCP reset property on the Arria10

----------------------------------------------------------------
Alan Tull (1):
      ARM: dts: socfpga: add ltc2497 on arria10 devkit

Dinh Nguyen (3):
      ARM: dts: socfpga: use the "altr,socfpga-stmmac-a10-s10" binding
      arm64: dts: stratix10: use the "altr,socfpga-stmmac-a10-s10" binding
      ARM: dts: arria10: Add EMAC OCP reset property

 arch/arm/boot/dts/socfpga_arria10.dtsi            | 21 +++++++++++----------
 arch/arm/boot/dts/socfpga_arria10_socdk.dtsi      | 19 +++++++++++++++++++
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 +++++-----
 3 files changed, 35 insertions(+), 15 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
