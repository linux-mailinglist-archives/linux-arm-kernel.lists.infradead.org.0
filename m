Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F615082
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yG0bwRXl4DBIF6hB8cydvmK3scrCRHcJX+Z/5KN1naw=; b=FaY2aVNlKu3nYM
	lNjZNR9M5Ub0PLaLyZwCbGTG/DFaCd9D00kRc7En3zrxpVFScTLCRsyiMyU3SJu4dAkFN27EzgTfJ
	b9JAhX+CCmJO5QXKav+fH4xP29Vqj/8p7fgD4E3/eTSuONxmnx84ck8atA7Pha+/o7XlwiZRltgQX
	qkj29qRJPH/de0r723qieSukq69YIepvkFi1bYCMRZIIfwClezOGrM7KCmwcQol8Qc1WxMNUv5ggZ
	J+pq3p80YRw7ytWz+lpkMs3hWRoieVagmno5aIv+G1gw6RTWBVIxGBxgWoz1OwESa2sUITCyFw9CG
	aOGalCkuopAZq/y1UgGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfl7-00036y-Sl; Mon, 06 May 2019 15:42:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfkr-00030V-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 15:42:15 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E55D321019;
 Mon,  6 May 2019 15:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557157333;
 bh=ECz6xac/fEE9lYOfUwyEcUtHgm3dtLMrW0hHWE0Ymlo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2CjYu+KGY5LBEL8Lkps5/D2LFRd4dQUQmvz5rRkXRtSLdQdpowxP8rLTiEkdXxIt3
 jHQRRrMlJILLlSDrp1gNPc8j6xik3llJeSdQk0tJ+yoS5agemaj47zQUL8hUU/WTDi
 be3mPrh6K+c+dttvpQggwO6HxKRszJxgiunsEzTo=
From: Dinh Nguyen <dinguyen@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL LATE 2/2] ARM: dts: socfpga: updates for v5.2, part 2
Date: Mon,  6 May 2019 10:42:05 -0500
Message-Id: <20190506154205.32759-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190506154205.32759-1-dinguyen@kernel.org>
References: <20190506154205.32759-1-dinguyen@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_084214_441963_07B58144 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Please pull in these additional dts updates for v5.2.

Thanks,
Dinh

The following changes since commit 4b36daf9ada30a66c93f8701e8c6f23bc3ce94e2:

  arm64: dts: agilex: Add initial support for Intel's Agilex SoCFPGA (2019-04-05 16:36:07 -0500)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.2_part2

for you to fetch changes up to 2b88976d4183aa9416d8c4efe5d4da98f48a5e3e:

  ARM: dts: arria10: Add EMAC OCP reset property (2019-05-06 10:26:40 -0500)

----------------------------------------------------------------
SoCFPGA DTS updates for v5.2, part 2
- Add the two ltc2497 devices that are on the SoCFPGA Arria10
- Add EMAC OCP reset property for Arria10

----------------------------------------------------------------
Alan Tull (1):
      ARM: dts: socfpga: add ltc2497 on arria10 devkit

Dinh Nguyen (1):
      ARM: dts: arria10: Add EMAC OCP reset property

 arch/arm/boot/dts/socfpga_arria10.dtsi       | 12 ++++++------
 arch/arm/boot/dts/socfpga_arria10_socdk.dtsi | 19 +++++++++++++++++++
 2 files changed, 25 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
