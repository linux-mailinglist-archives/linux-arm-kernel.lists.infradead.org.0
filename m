Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FA6481E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AFg8n89pTQiGUxTeSKTGjZAeP7lZn0DDKDRXUAVk1l4=; b=LFaAM7zug70Q2J
	ca4c709859juw8Jk41qwK42VUEj2ZbTyjODQ2GYD5cIY5FXVvDkrRhqAPL36OEXwmNf8ensFTSLfj
	DWK/yYR4sS5DkFAMi/fXvrSOPtZ3n53fo+kijH75Xb9fZNhddWhyP1OJlq7zHmBy1+lA/sHsU4Yx8
	mfkkKfIYpvXMtYRWYqvCGbrW4AncV6vBRnRto6VZSQ1ACIFtK2Lu5l0HkixL8Oth3WwJ81auFBvRp
	xQQ8y4IDmR2Mz75OJctOX7DFQwGA44Zc5x6sgghg3fztz2JdeF0l4qU3vZAcAHvIGF9NGpksjdMrO
	rj/z0VpSQityUQWlT3xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqhF-0005nL-Cc; Mon, 17 Jun 2019 12:25:13 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqgz-0005ma-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:24:58 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1My2pz-1iYGtf3Fa3-00zX9v; Mon, 17 Jun 2019 14:24:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: arm@kernel.org, Linus Walleij <linusw@kernel.org>,
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Halasa <khalasa@piap.pl>
Subject: [PATCH 1/3] ARM: ixp4xx: don't select SERIAL_OF_PLATFORM
Date: Mon, 17 Jun 2019 14:24:30 +0200
Message-Id: <20190617122449.457744-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:izgkkqiYW3AxUHIzeLBlbI6TmUm8js3/ausmRdZTi/CUk41VLa9
 9uUs0EqvMRyhEz1jdbrH9qH6zS/8Pv0IwVKAIGPqTim15RwAqastjBBINHUBtpf6wRpDBxi
 zHlpMkLW2JLoBoUvgxkXY9brNtuux8UgfBUD697Lg7hwF3PomP3zhb6GmVPeN41pSlV3Urj
 2tZu7AQ/6U54PeHUDxzLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z6sxF1MZXgA=:hBHpgT3dNHS17k7G+0miEh
 5X1qSU25Zi9I3CfnGXHI7EKElzzgYmsLcU6gQ5sDSrd46KHOz2hiNOzxgxGPKDPiSv9+tL9Fb
 1mD8TTqBwbjAxrXxJUlcbeas8LZGS4n5CtoI4FoKrHzup3aAalavHvsGYrSWewu/zUvHx8LwP
 CWNIDnOHKgjQNb7xqXkTDyyXuNEiQ6RW08PI/p4gmPo16QixkrruddPAml7iebWL1iEEszmla
 N0GzFkPDc3iJrCXKGF9ttu4nE+NpwfaFzQK2iPR62rGqDUT5KdRiFMFzVbZK8AkNGpekv68T4
 DGpYRQv/cyvtkRhaNk2lSV+lJzq/abF6yvvxTF/l6+w2g1C+k8IQlxw11KbAOjtJkxmQlEh9J
 BPcm9SPKGiHEDRMst2B7ggYJt1g/Xgia/XihoNueRTx5N3ek8mxcZ3LHxbBj5mpGvmB2Nwfl1
 pJNQEn+428ZqhT3x0Gv5jGQk1vnRzPahdV+7CGlFMYwypb1iWdaKfVsietcY8jEoD5NEQBjci
 TeZakT3nauDqGyWFd6TVNcmbz+zL6nAZkHsbM11+sp0TN2gTqDM6T8Q5TAxRzwFLepkT9yqV3
 oc1RpOW779Drw4pScIlWNVG6mUkxyhp9QkbDxroEdmyyy4vvmQVsFmR9N647EMj/NEg61gT6Z
 MUKd8v4gYWTD28wszdMT/qH5IizeXpEwjlykTnPDAkyDt27PhYxPPfmLXQE9HSCdp28XP7Z5P
 6hteye4loSfIIqcazkMN7/3VUyK8rRTlFFL3nA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052457_379000_98A64348 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Platforms should not normally select all the device drivers, leave that
up to the user and the defconfig file.

In this case, we get a warning for randconfig builds:

WARNING: unmet direct dependencies detected for SERIAL_OF_PLATFORM
  Depends on [n]: TTY [=y] && HAS_IOMEM [=y] && SERIAL_8250 [=n] && OF [=y]
  Selected by [y]:
  - MACH_IXP4XX_OF [=y] && ARCH_IXP4XX [=y]

Fixes: 9540724ca29d ("ARM: ixp4xx: Add device tree boot support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-ixp4xx/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-ixp4xx/Kconfig b/arch/arm/mach-ixp4xx/Kconfig
index 2f052c56cd9e..fc5378b00f3d 100644
--- a/arch/arm/mach-ixp4xx/Kconfig
+++ b/arch/arm/mach-ixp4xx/Kconfig
@@ -13,7 +13,6 @@ config MACH_IXP4XX_OF
 	select I2C
 	select I2C_IOP3XX
 	select PCI
-	select SERIAL_OF_PLATFORM
 	select TIMER_OF
 	select USE_OF
 	help
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
