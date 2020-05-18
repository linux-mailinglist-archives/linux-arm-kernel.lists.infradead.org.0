Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD561D9255
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:In-Reply-To:References
	:List-Owner; bh=JcjoApPoec/O+9WM+L8T3ICoNXypuOir/ixR6fH4rDc=; b=qelTA5/NXsiSP
	am1YZJZmZQ4z9/sxlcMdsyXYuY+Rlw7+5G/aH3Mqr0ZNYdHBV5jFPNIUAZH6koA6kaBrTisq6P5I0
	lEPpxMR3HTYbNnPPBwoKp4v0mNzGtNFQUJrNpLdqFbi0oHa77TNNOTY5O/h0tmadPcynwxF064Q1P
	mwiqm3wjnuVjNuYCACI7m7E+GCKUmfqjgNVkiSNzxuzqIX9e/EluQflCag43+e3gGMMr+RrR7g38P
	Jen5JJgdaa1rr2bdsVlcyyFC4BmgXnaKoLl5NHUeNs99GBbKOXXkaTacFzBHjmMRQXJcjPQSwPii6
	S5vEnrY9cfyM/dCtMLAkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxsf-0007yB-DS; Tue, 19 May 2020 08:45:45 +0000
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxsV-0007x5-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Resent-To
 :Resent-Message-ID:Resent-Date:Resent-From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Sender:
 Resent-Cc:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jJIjBXlG7IUX19DcU/q8Cx0YzyqRNE0zmnPm1XRvWis=; b=a2JcQAl288XQ7yl0+cwMPizIyj
 LvRV6vmc3VIXoLLEy5bN1O8Bz5g6QXE3CZf5Jz3JWLQ27SUZBSBIRBioTCz5xmuIeqv9NN41HvSBL
 diNtV9I9pRNJDQALRMDa7tF8wRckSX2HUMIs8W0xw32TyY4M3qSNQ+rDDF7oNeBcT4cPUk+g1UUnE
 D8r1iR4BTKpG+fMilM5zxr2Fi4n4JiRp0GWm369wsao7qFwd+EHfjzblqugZoMK5qKxiVznclMWTx
 uXfoE6sdBcpc5YmWC8dkjoohvJ9N6+vNttvYIzkUn1d+kzVr/MXBuSr38l2tSyooKcUxB0yWShRBs
 ilH6OzQw==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>) id 1jaxsR-0002pX-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:45:31 +0100
Resent-From: Jonathan McDowell <noodles@earth.li>
Resent-Date: Tue, 19 May 2020 09:45:31 +0100
Resent-Message-ID: <20200519084531.GR311@earth.li>
Resent-To: linux-arm-kernel@lists.infradead.org
Date: Mon, 18 May 2020 19:09:10 +0100
From: Jonathan McDowell <noodles@earth.li>
To: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Add initial support for MikroTik RB3011
Message-ID: <cover.1589824955.git.noodles@earth.li>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-UID: 2044
X-Keywords: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014535_872947_87294B92 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patches do some prep (device tree vendor addition, missing ethernet
definitions for IPQ8064 dts) and then add an initial device tree for the
MikroTik RB3011 1U router, which is an IPQ8064 device with 1G RAM. They
are sufficient to boot with an initrd, the serial console and the first
5 switch ports fully functional (the second bank of 5 require some extra
patches to the QCA8K driver which will follow later). The bootloader NOR
is also supported, but the 128MB NAND is not yet enabled.

Jonathan McDowell (3):
  dt-bindings: vendor-prefixes: Add MikroTik
  ARM: dts: qcom: add ethernet definitions to ipq8064
  ARM: dts: qcom: Add MikroTik RB3011

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/qcom-ipq8064-rb3011.dts     | 308 ++++++++++++++++++
 arch/arm/boot/dts/qcom-ipq8064.dtsi           | 108 ++++++
 4 files changed, 419 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom-ipq8064-rb3011.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
