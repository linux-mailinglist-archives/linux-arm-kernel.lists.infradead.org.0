Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DBD15F502
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Wn+HeUA5Iu2hLlWNRLL8Ta+nPsYq3e1k0r8arGhEoI=; b=OCYmiog4u2UNTG
	Vg+et/rRxIWXECUcLlAFTKQf/Jmw3FtYtXHilah2VUy8lf1rp6zEWzls1olgwmKEoubG0iNPjbBlG
	Ih/XFyTUmhcRewRgwoojyu1W655fKJwWvIkFOUTGlt81Kr0Y04V8skY5IkvkfoDUSAdfxwHZjut/S
	QiBVLB8IX+JHoj1kwHKFK0jD4Ih1rs3AccBeUFtICHar2HI48DSr8Kc0gqRdZzR8JBmcvCpYFrTYS
	/qEwQt8zI3bUmvrLu1mFdf5Qo4icbRzqRlsI88vxkVXMxUMLp/xe/B+1cXL15Q3Sb3MPk5sFAD1QY
	5HrgqBT5xfw1V5807mNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fla-00029W-JL; Fri, 14 Feb 2020 18:32:42 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2flF-0001yA-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:32:22 +0000
Received: from localhost.localdomain (80-110-126-226.cgn.dynamic.surfer.at
 [80.110.126.226])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 9C714C1FE9;
 Fri, 14 Feb 2020 18:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1581705136; bh=UiqpIIbkbNmB5wRq46BoxgcEeQU9um7uzDZLMQ7F7a4=;
 h=From:To:Cc:Subject:Date;
 b=Bnc5+8xdmKl4YtiCnfMs/5Gt8uj7Tg4pt2PA2oqWACud5uinye6f0EPHY8nhWcdAM
 jIwOdXpLTHLYXPhIP3BQ1Np1XyNWoh8UfTjdAdn01vdzWRd7oMQtrxsnB/WT924LzH
 w4thPaHAcOazAB2wOPn87XmNWAFNbUCZj0dj/sTw=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: qcom_defconfig: Enable QRTR
Date: Fri, 14 Feb 2020 19:31:11 +0100
Message-Id: <20200214183111.50919-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103221_369696_FFD3F972 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: z3ntu.xyz (xyz)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 2.0 FROM_SUSPICIOUS_NTLD_FP From abused NTLD
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Luca Weiss <luca@z3ntu.xyz>,
 Jordan Crouse <jcrouse@codeaurora.org>, ~postmarketos/upstreaming@lists.sr.ht,
 =?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-kernel@vger.kernel.org,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This option is useful on msm8974, so enable it.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
Changes from v1:
- set options as =m instead of =y

 arch/arm/configs/qcom_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index ad3417a63cdf..4702feef2cc9 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -44,6 +44,8 @@ CONFIG_IP_ROUTE_VERBOSE=y
 CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
 # CONFIG_IPV6 is not set
+CONFIG_QRTR=m
+CONFIG_QRTR_SMD=m
 CONFIG_CFG80211=m
 CONFIG_MAC80211=m
 CONFIG_RFKILL=y
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
