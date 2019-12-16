Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF9B11FCDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 03:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k3MsQ6Za/0h8Iam6ZuVeRfFojd321mgLwhev9TJzX8=; b=GJFi7JTRjWbpzR
	+/yL+9raM6EGYEt7pkB2G+DW7YUlNxiBs6kNuHtMETe9ZNL45G3c69ISJd2vuiDZXVtYIy1tAA6BC
	yQfkR7p74jT+k+z5VvpIIO6a8nI9wuLqNzy4GIQcF+TZX0UuylJC0le9CuPIIQTFcb2RvKGtyRzaW
	wV/xqKXarhAZMInpGhbXKWorFeCi582iKWQNduyARvK6Kj+aPKiyEYgvfD0KpPgbUC0ACORFaCOrT
	5Fm/NsjJyIEVkASi7cmkjf7q6uDsiKiB5TCNjTFcF7Wf3q234vbjFlZxqoOBNCgc2R/KkadcRPr7y
	XMiiX90AH0e1eIp37dNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igg6K-0005e7-Lf; Mon, 16 Dec 2019 02:27:12 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igg5c-000590-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 02:26:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 689E067AB;
 Sun, 15 Dec 2019 21:26:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 15 Dec 2019 21:26:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=LMvNcL8FAR0Bl
 X1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=pA+cRFbnpoLewByXQES392IPTTQSc
 SoDYUpKkgsRpJ4jCjKwJcJIoRtHUxfyPxvjFZOptkQvDAJvvGpBG9eJrWsg1rV0y
 uHnap82HcG2n2JffaTn48i77ec9m4/LXYD8EMHrJmkIuTwq+U2W6M3ljcqPiuaUQ
 AFG7vmIL/0SKnrKIiSOdc4coq8JVMF4Crbe6OPQtezw5pQ75gYztO7dEFwAXWCGC
 sQLGJv2/BFF4Gjl56xg9AHkqhBI6+Yp4Evh1XgxEcBbXt5n22sClND7VQXB2S+Vo
 zkORhdd5DrLogFqssQJ2SD2/0LUIkPpI/RkA9OReJaGU9RlgSRPpt1VqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=LMvNcL8FAR0BlX1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=sAyLaezl
 nVDa7nWa/lv2KmmTKv+iVaX8/aBXtMuolc6l5o7T+rKwjOUb2HmFlOd87KBTNXRe
 phiIRXjTjiUBg6BC4TVWARHUEeLcvRKxwXTb09ot4KV/7TC1Y+rR6Xtb/NXtlOu+
 Yy0pRqUVYfBDD0JUEREi1gJm/ooTzCS7g4KXNvquwEuHE4LKI2IVtco9GjKEh3ET
 AUQoG5XaeshjGjyDQrF88EmEnsnqbTYQLoeqGiqkXMa3sG+O6zGlEKN05TS3UdQc
 3G4ZfNB+o+CJhy6D6ugZ+Rr4sFPJnlzj7UoVtB/RiUp86I9r9bndxMuI7fs2L6gk
 ekvHRHeCn2CJBg==
X-ME-Sender: <xms:U-v2Xf6AQiqUufcV_jnLE3Avuin4bP9kxxMx6EGXAYfVauVzIxsdeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:U-v2XZIVgo2FIv_cN7HNg_92Z50Du8rFRhcsbl8TgYMkuSF5y2dP7g>
 <xmx:U-v2XRdIB2CrZYlEGDY4vtG4NIhf_Ia20TdbuERk-Kaq_fnbudT4tQ>
 <xmx:U-v2XUdlEeSWBqbRUI8D7nJVJqBkpo97-8vloDnZHmGfiUlLnPOdpw>
 <xmx:U-v2XXL7MmRPmlLBoMOoJnPT0zvIzjCkvyfY85Q0fWNoBnH-iacL4w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id D5B4980059;
 Sun, 15 Dec 2019 21:26:22 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: [PATCH v2 2/3] ipmi: kcs: Finish configuring ASPEED KCS device before
 enable
Date: Mon, 16 Dec 2019 12:57:41 +1030
Message-Id: <c0aba2c9dfe2d0525e9cefd37995983ead0ec242.1576462051.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_182628_284207_70C2133A 
X-CRM114-Status: UNSURE (   8.08  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 haiyue.wang@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interrupts were configured after the channel was enabled. Configure
them beforehand so they will work.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
---
v2: Update the commit message based on Corey's suggestion

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
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
