Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FA2E2F1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBjYahvsr07TYr2W6wL20XKN0fMkcUpZX7c80wOIMgU=; b=hs7GM+PPtDSKEV
	lHBernkQ7IKAuu8V61bJtlbWoYSL4iZaiVF+yOV6AG2VXjV0Gc1z0Htyc8FnR0zrGkU8ygywNHugO
	7DIuq0sgm4DCY9gq6/HSEWo3te/5HTmjqXUieADhtRWJkGwP/iDS+WFOHMxfPqXRfvn/XGWW4wpun
	GTkxLPLIFcWo/DULBHhyIIVDrBrm8NTxb28Xm4CV9Hsf0MvT6WO2PIhBt7WLdNPqhmUBT4QbTF3nt
	FRklzMuJl8Tb/+rb3jbuugYEK6x+BnaezNk2h5965EsefpQYuH7YXZrqbcPerIibpBv0pFVYj4LGo
	n2qwvqdT8994tHvmKuGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaPu-0000cJ-1H; Thu, 24 Oct 2019 10:32:30 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaPD-00008j-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:31:50 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id A35873F234;
 Thu, 24 Oct 2019 10:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1571913104;
 bh=LJ77z04oPHnTQ196HzGAyUMjxpEEXbUu/j6tV9O9FFs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RJqIvTxp+2Rl+TwcrLlHa0ns1XtBISRsjRB8RShqf9Z8RDuA0uwiFJMtjSuIjEQPQ
 np/0OUrTeOh/374+mpmwx8j3FI6Shh88dLnMzslzvLVX8rWrGSmVOFggHsUA48yScw
 QeYrcB/q/6XaBJ8gaAWoqhGn758xv3iKjDjZ/Fms=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 1/4] ARM: qcom_defconfig: add msm8974 interconnect support
Date: Thu, 24 Oct 2019 06:31:37 -0400
Message-Id: <20191024103140.10077-2-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191024103140.10077-1-masneyb@onstation.org>
References: <20191024103140.10077-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_033147_747165_51CFCE47 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add interconnect support for msm8974-based SoCs in order to support the
GPU on this platform.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
Changes since v1:
- Set CONFIG_INTERCONNECT=y since its now a bool instead of a tristate

 arch/arm/configs/qcom_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 9792dd0aae0c..cbe4e1d86f9a 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -252,6 +252,9 @@ CONFIG_PHY_QCOM_IPQ806X_SATA=y
 CONFIG_PHY_QCOM_USB_HS=y
 CONFIG_PHY_QCOM_USB_HSIC=y
 CONFIG_QCOM_QFPROM=y
+CONFIG_INTERCONNECT=y
+CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_MSM8974=m
 CONFIG_EXT2_FS=y
 CONFIG_EXT2_FS_XATTR=y
 CONFIG_EXT3_FS=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
