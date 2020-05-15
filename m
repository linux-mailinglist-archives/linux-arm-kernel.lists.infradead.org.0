Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B15B1D4E1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vOlQIm6mRnt1DZ7LAc09tfQi1FvN3Y7wqEwyZIY7Bkk=; b=BnVSiYPPedgFKixxsFmhXOgSwn
	WdtFb8qaCdfFnz/X3oO+KD2po2oc602rXQw2QGyiAc1/bYnlf7I92sQLpPuzI68JVLxW4vrTPKCKd
	wLPH5fYATNWcqN2A7HNFFKjA1zRhV420gunMRhoI+BaNfNqameNOPBYfeAVJmzkyLdzPmFvZNV83o
	5JGvShYb9HhDGpWuObJCVkIr41Q1/5Ktap33xLqkcC+r3XLK5g95epO+roaynqBSR0zCWgLPLLGoB
	DfrJfY1zaLPiYKlpflTdvC5CkLRK9RkXOCHsYaW42UmIRPJgAarZYaLP6L21pWMxfe0wj7xiTKz0E
	yjfdhjug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZos-0001Gb-DB; Fri, 15 May 2020 12:52:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZoe-0001Fz-Ih
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:51:56 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04FCpiN8025088;
 Fri, 15 May 2020 07:51:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589547104;
 bh=j0ez/mPe2k0Ujtd8WLu8IeafJ4g3FP1LQ8oEjhPwUxw=;
 h=To:CC:From:Subject:Date;
 b=Xqqzf9L+aTWRWsq3zKxxgq817B23mOryc9f3ASmGjUZpjLR0ibSUKwbL6tmHdKdfP
 WjGdaBvp/GDNKF4RhYk09bnJgVx2yb40h2VK5bXP/AqUOMlFY7nu5n7ZpkwR9V2Zhz
 cOXxNa3vMlR9A7T57LiEn9u9W1W87zqi3S4+QkRc=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04FCpi8h009140
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 15 May 2020 07:51:44 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 15
 May 2020 07:51:43 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 15 May 2020 07:51:43 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04FCpdK2051634;
 Fri, 15 May 2020 07:51:41 -0500
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, <soc@kernel.org>, <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] TI K3 SoC DT changes for v5.8
Message-ID: <7484d3c9-323f-36a3-f0df-1287586f356d@ti.com>
Date: Fri, 15 May 2020 15:51:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055152_718172_E61B48CF 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, "J, Keerthy" <j-keerthy@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Vignesh R <vigneshr@ti.com>,
 Jyri Sarha <jsarha@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM-SoC Maintainers,

Here are the TI K3 SoC DT updates for v5.8.

Updated google doc based on this also.

I will probably send a part #2 on top of this later, there are some 
additional DT changes that might be coming in but they were not ready today.

-Tero

---

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-dt-for-v5.8

for you to fetch changes up to cae809434da10402b0fdbd395c6eb924d7aa46f4:

   arm64: dts: ti: k3-j721e-main: Add main domain watchdog entries 
(2020-04-27 13:39:48 +0300)

----------------------------------------------------------------
Texas Instruments K3 SoC DT updates for v5.8

- Add DSS support for both AM65x and J721e
- Add watchdog support for J721e
- Add EHRPWM support for AM65x
- Add Thermal support for AM65x

----------------------------------------------------------------
Jyri Sarha (1):
       arm64: dts: ti: am654: Add DSS node

Keerthy (2):
       arm64: dts: ti: am65-wakeup: Add VTM node
       arm64: dts: ti: am654: Add thermal zones

Tero Kristo (1):
       arm64: dts: ti: k3-j721e-main: Add main domain watchdog entries

Tomi Valkeinen (2):
       arm64: dts: ti: k3-j721e-main: Add DSS node
       arm64: dts: ti: k3-j721e-common-proc-board: add assigned clks for DSS

Vignesh Raghavendra (1):
       arm64: dts: ti: k3-am65-main: Add ehrpwm nodes

  arch/arm64/boot/dts/ti/k3-am65-main.dtsi           | 104 
+++++++++++++++++++++
  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi         |  11 +++
  .../boot/dts/ti/k3-am654-industrial-thermal.dtsi   |  45 +++++++++
  .../boot/dts/ti/k3-j721e-common-proc-board.dts     |  20 ++++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          |  75 +++++++++++++++
  5 files changed, 255 insertions(+)
  create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
