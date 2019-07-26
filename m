Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C775E9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZvW3bYYY2+kPDU/XtsKLYw/JBHFtH/dGP408HWRYLE=; b=u8qrfmrgubq9d5
	dzwIOF/bvOcyizbcnaLPja+t6wRo1k/quQN5Y2j9zGDAgV4ZjeGg7Jm3QLkls/ashcWbLoJzk3V1K
	m++r4GTS58/nCgDSIsUjM1kAWFRDdPsG6kTtPKXWnRf/QqEqOFZMJiWHJvn766ilyU1Je0VGdBh36
	wlEyIO2hs1AFr+tGIs/ZcpbJb9GiJ5Cn9LpgHEALQeipolkxBZ7uURBs6147wuMtcTd5aRpvEy6Js
	TUDnFsoCri5ehkP/UwuNxEtRZ3lIoGqdfDYcEierbxgkKpFeXVkHXedhBbiPFXV7rC9E5SOLEGv51
	/UeVLfJJUEowfbuyYeEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt3L-0000B6-6K; Fri, 26 Jul 2019 05:46:03 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsyO-0004A7-5e
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 819A1433F;
 Fri, 26 Jul 2019 01:40:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ySR7cLE+z5RVR
 IPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=cV4yADjLkVVUORlObYa6LqQigb3lP
 xz+qQc05pQI0ZbOeucEGtpYDXdvQlNFDB0CkM5+puib71KA8eqD3+NGnqdpQNAne
 Erms0L7nbfiLeTVqe5vgugdHQw70uLrRzjfrH50Klr8BgnZuCBERcLJ+q+bVlK38
 WhExg1eOwV9pbPnXeC/bu9ywqBUOIFP5bG2PRE16pQZLRs4o6O1VniBjLIQztCVk
 2OQdEwrhRAYNDCVPHmt4KhZK7SCQdsl6108fDrYS5+HXDcITAHsJnucE4afUlMop
 iFSOmniBopp09pHY3uefeXQgaq+0tYnfaZH6HosvcIoT/Ov9xGC933X9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=ySR7cLE+z5RVRIPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=006pBoW7
 iyoZZ4nE/Bt5esVJlv/ekNGTH0kuhMtqXslqmby5mBpAO7txLV7Wdov+gyDpGZjr
 TXVC5a6+8qDMtz+WFQGqKvxfn4zNhQYkvDggx1a11zH3hMFCcdrhxNumu1TqXKJl
 R2smEzDNM4+9kpfZ0bR+S6hLl8ZMxCBa1Q2UrJq0dBC8IhA37eMW/RpU1OzUCoIZ
 H2CwPoBX32Mju5P3GVUjru/XSsGdya8fZ+oN9fbM1XZMEIwq6fwMSWp1Q3gOVTxX
 P2GdRlE0Vpn0z1KeFs9m4AoaqKwtrYme7k9hu1+YE0YXYevsHKGNWw1nmj85FD9m
 3aivOTxmmJQ5+Q==
X-ME-Sender: <xms:Z5I6XaFHRxafrarr1iPEmUFdrZKsXMX5hiGQ50a-VQRNzbw1-cRMEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:Z5I6XV4zCpvKdsrHzhEHoL-oLdwWkv7ntI6qx3oXTQij2sLNxYnT3w>
 <xmx:Z5I6XQthRuUbBA-7JLsoIdW6k3gHo_EL33IHu0o6j85qDBCtm2pvrg>
 <xmx:Z5I6XW5pjIdL65NXdvhBZcZYaTAkXhAOTednvp4fUCZfxAWOqTtdcw>
 <xmx:Z5I6XWKu9VJh8QbcBYRyIAlxH9OsPjZb2ZB8gtiEEWc21QJ4pWKPqg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 49AD6380075;
 Fri, 26 Jul 2019 01:40:51 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [RFC PATCH 14/17] ipmi: kcs: Finish configuring ASPEED KCS device
 before enable
Date: Fri, 26 Jul 2019 15:09:56 +0930
Message-Id: <20190726053959.2003-15-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224056_499218_950F1E0F 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Haiyue Wang <haiyue.wang@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The currently interrupts are configured after the channel was enabled.

Cc: Haiyue Wang <haiyue.wang@linux.intel.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 3c955946e647..e3dd09022589 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -268,13 +268,14 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	kcs_bmc->io_inputb = aspeed_kcs_inb;
 	kcs_bmc->io_outputb = aspeed_kcs_outb;
 
+	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
+	if (rc)
+		return rc;
+
 	dev_set_drvdata(dev, kcs_bmc);
 
 	aspeed_kcs_set_address(kcs_bmc, addr);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
-	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
-	if (rc)
-		return rc;
 
 	rc = misc_register(&kcs_bmc->miscdev);
 	if (rc) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
