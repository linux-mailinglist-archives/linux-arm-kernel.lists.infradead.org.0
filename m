Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A636659162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAO+LzKJel0gKNtFGk7DjNgCg7ejcsHA82QipKBlnVg=; b=jz9dCEhlm7ABgZ
	qJWAngjnjbc//8uP46fcBNu9HaketK9vsfilXMQOFRVX26UIEohUK0TvO8gee+97Skp4wk2OJvcYE
	qkfQr7R1GXi3zNPANX9A8YPp0Cecp3StI0PbdBTek1h+eI1Ba+YOA1Vcn8TtoT9V/NllzmvdeDiph
	QVpogFzl2Wxa1wb3zpHXm7vXBcwSTjEXaSzHKsuyvZjmtGGuNwc0gLwGPMkNNBg+H/Nb9yY1uFPLJ
	GmvTtsQStEYr3G9tJnWPtqhFGGANbKZ3/xs22qehRvh10di5Y88pscw4O0m5HoYHT3U+OXkZkX59/
	YVfAEO6qn+xMn+vPMAow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggpE-0004qH-QM; Fri, 28 Jun 2019 02:41:21 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggnV-0002co-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 962742CC1;
 Thu, 27 Jun 2019 22:39:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Vxe60SKdB2WFg
 jGVqqAUJGIE/TPQst4OsGPOazQgikw=; b=izlOUc3a+lMIgJWtEXH1fCPZPSGiR
 frzSLRRScqsNZk5IA8LSdtAUsN9ZARKu+Y/mbNbU0tD0wvkt/diP+S2u5Ur4YS4j
 DYBIVyLQhKbETCiEdKJUD6LhRLDm9oHkbgovFYkjWTcyMs2mYd4dBjoFge2D4hzE
 RIL6XJ1Mdc0V4XUgRP9U+cBmmwtKXb0W+VILTJL3LqEwcjF4msDyTISoJF8cd4Wj
 htKZurh9mQQh84nJWb95sMvGWMXZ/zJY3PtB4PKYDv2mk2qCxLR2j43iGvHCAuOn
 aWeIHRyqYh+JTp/gdGNfi45KHW//P8suD9WU2B6D144auGVc28mIhE8aQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Vxe60SKdB2WFgjGVqqAUJGIE/TPQst4OsGPOazQgikw=; b=nEXq/PW1
 1EcDFGipw58cj/E4dAvTUnpAflLQZ3l5JPSBX3StWuWPaNhDFOXFlbQQ9HRLRYLD
 XH9tDRhlPhssw1PAgvpesPdDArqR8UrlGyZkWJc4o/QG2yuITEhjb9SjJci95CHO
 Mza2OqlOWqT/BFSpV3gYVvUDBZ+CntP75XLU2Wbeax6c+7fHPi+Hc0A7Zzx/v6V6
 TkCP600pjFcVKza9QRGJM/H7oGx7cy3HxT+o3XGB0+4vEqlr8QcZJz++vYP8TT0V
 pPpg/XBQ5+yi94QU0w98C2Gj2FGvl55njINky28BT6Troh+IYha9zcxFwZiVH+O7
 SO1mWdYfv661bQ==
X-ME-Sender: <xms:5H0VXVNXUktQZDZYl5FaR7NIXf6562Zlz4P4dUvYo_yICLcZJ3FbhA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:5H0VXdPJBpagV_nPMpmlekY_zdy-Kf7o9Makcr-oxBgOkhhjvlcyEA>
 <xmx:5H0VXV8gT9uGmlEsmltmTlXjcG3zpTJmvRBfcOjNud8adRROA7Jn5A>
 <xmx:5H0VXZ4Yo-XX-MLHvG2Kf20zyilMY2Fz22421lIcHbqaA_VQky7NJA>
 <xmx:5H0VXc4OTLlXa77WQqQZoiyAVItR4skjs7xM7fOWaRfUk7VFmVRu8Q>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 67981380074;
 Thu, 27 Jun 2019 22:39:28 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 4/8] MAINTAINERS: Add entry for ASPEED pinctrl drivers
Date: Fri, 28 Jun 2019 12:08:34 +0930
Message-Id: <20190628023838.15426-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
References: <20190628023838.15426-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193933_580288_8815C076 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add myself as maintainer to avoid burdening others with the madness.

Cc: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0ed735994a5..e70fcaa56094 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2586,6 +2586,15 @@ S:	Maintained
 F:	Documentation/hwmon/asc7621.rst
 F:	drivers/hwmon/asc7621.c
 
+ASPEED PINCTRL DRIVERS
+M:	Andrew Jeffery <andrew@aj.id.au>
+L:	linux-aspeed@lists.ozlabs.org (moderated for non-subscribers)
+L:	openbmc@lists.ozlabs.org (moderated for non-subscribers)
+L:	linux-gpio@vger.kernel.org
+S:	Maintained
+F:	drivers/pinctrl/aspeed/
+F:	Documentation/devicetree/bindings/pinctrl/aspeed,*
+
 ASPEED VIDEO ENGINE DRIVER
 M:	Eddie James <eajames@linux.ibm.com>
 L:	linux-media@vger.kernel.org
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
