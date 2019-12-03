Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4404B10FDC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaE5d/FXJFu2fBM/YNovEzSoBvkjlAOr7444TgJZjO8=; b=hTDG+sgOcQpclL
	q0zeKD24IfBXdpP94MceID+NtZbCnYUhgNoLRNyJASFaa96n7fQSszjEpYt6nCxv3g902+Wtk9t56
	82KAo8tO0EoVTZ9Q5aLVjhzdUHjAX0WnY8+kkybHY/iMUMZ18dVnYZd+TDYMypCCt1tyLADI0Z7Ua
	lArMC3X7uByyOUSgzycCfqoImcmlaKoLV0cNibonj556s0Q/+zheEtochg4gDXBBf8rgMdgyVsYJR
	8ojb7Zoz29wSO2uj/M1/nssVCHDIK0WwSsr/4XbBxOxZrwgCGdrSI/yPkgP9XFH0khVmCzvARL0J6
	sTpeX1a343xGhvbtdtTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7Qk-00051A-BU; Tue, 03 Dec 2019 12:37:26 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7QC-0004i1-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:36:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 977F26E85;
 Tue,  3 Dec 2019 07:36:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=AOngRiTxh05CH
 c+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=K6UKXHMtMTt+v5izg/FIaaOlfWIFx
 QKYJDjdBLuiPwveORL/Z7ZLqKLtMCxJRHJKBFe3S7YTLYkgPg/R9XF3ttt8hME1d
 kLuIRvmd3jjzfMNKPW1r8sYa7MY6COKm9orTx3D8AmY7J3UcU2FucQwOhZ4D0knV
 4ZjtQ8WcDbtBnak2CZlWdq8m+1oACZ5YoWtxKlkjNxuhFrzc+AEdljhYu2A1DMuz
 JZcYpkC2e1TDhX/s1VZ2N5A+DACFaKATb+wwD7miq7Kq03T3vsLwQK9G6+3rI10j
 U5+DhpevETDEW5Kj4BY3H6eXQNs7/rFf3VDPk4nBIwfQKtfcPMD1isIxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=AOngRiTxh05CHc+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=x/m6vK9v
 aD6N1e8pg1RiacnJjH5ClB/vRaIObK4ns/1Mshh/9q+gTrY6xvBV68m/xCwRabYz
 rnoV0eUwo+4Idx2DmWz+mC0NHAwE6k/Ko/DiNNBNvPVKTrNjQA/zh4J1O/kzhO+A
 b2W4eYJIUrdo+m6xntQI7fGRV7N3Ms7sFGq69sXPQte9iel94Boch5XOmjLcprlA
 2QeHA+g8JyVU+dX3/QHb2/63vC1ddaIvOcYi6qGzwkNvQZGIRT5TnfrY8R2TTH58
 +oYynpoIXNYE1AI7rvcmU36W1wL8G9ZvOoNoZOvoRjcyWXz3LEz653FoYfwlylNr
 J1/+YV9rYFuSWg==
X-ME-Sender: <xms:41bmXdQPNfT-Xk4pNrzu3Qjh2adO7GnC3PcHJVIAreIvMRD2wuac7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:41bmXaMRxaaCkffEGZTaXDhawKltHxAWoW13bcJs5prKeWvjuLuuKA>
 <xmx:41bmXfkNoPeEBXK_pq_cNSN9vq4AV9NiwPQQyMm2rcVPBlUORF_4-w>
 <xmx:41bmXYaWfX9VanLCyYhINZjLp49kbbTNITPv3c8bN6ujn9363MCGrA>
 <xmx:41bmXWIW2rkDzbb1WnNe4fcZdtpq-Qcr4VMMMJ37_w4UQEblksPOXg>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1C20430600D2;
 Tue,  3 Dec 2019 07:36:46 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: [PATCH 2/3] ipmi: kcs: Finish configuring ASPEED KCS device before
 enable
Date: Tue,  3 Dec 2019 23:08:24 +1030
Message-Id: <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043652_487326_6E3EF8C3 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, minyard@acm.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The currently interrupts are configured after the channel was enabled.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
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
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
