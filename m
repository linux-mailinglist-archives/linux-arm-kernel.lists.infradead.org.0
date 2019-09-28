Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16F4C10C3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bjIUaec9Z2m0xOWVd3Q2r6+IUINQzJ2lG8RXgDpcMNg=; b=EoXjGCWRtgKvFvXYBDNh5FQK1V
	+LU4b7L6E5qkglmpe57Xa+kbM7yqK+okMfcxbIpVYphaFYJGvOtet1pW0DFxYMCh1M7FCFc1GNPXU
	+y29WmQHhvLLWh4fjnP9q4DFTcsKGXApnhlUmO4ZB/nV34KfLar0g09XZ57N/rVSZ4EloiKTFxs5V
	SYS9PGlqxFL2hZ7f1Jk/kQBgGnx8C/BDgDfHJiaXDZDakt1cC8kcLd9WqobHZk2xm9DAg9Y0wyGcT
	z9AAB7H7hsamFMqbNKODziWtjH250Nu+WAlA5nQEpyBx+cstvx9Uz4aEWfEoQeo+egJ/ucJ5OC8Nd
	CaVggWOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBXP-0007kZ-I1; Sat, 28 Sep 2019 12:09:23 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVv-0006a1-UY
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672458;
 bh=hfLTzkanvHdv0805iskYFMrxghx9/3ubOyaD3u2YZUY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FtEJEaY35SSLY0AJoBw0G9Ie8oJOAWqcnInt5Ic5QKMqyKjRuwA+ONAavEgU1Rgr1
 zy+99Ag/jSTgjoIWBiKCQQbjBBRxu5hY5KNOM3xilQ5xTWWA3x/sNvGk7rqbGGcDMk
 CntXxdJ17OKRBtV2xzMucFyrjENsw8g/tpmYEGqQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MHGCo-1iRR4E0xoe-00DDJd; Sat, 28 Sep 2019 14:07:38 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 5/8] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT
 schema
Date: Sat, 28 Sep 2019 14:07:11 +0200
Message-Id: <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:oQxad6CfBtrzG7FQm3rKGx9Rbi/ZJs5SyFOtihvCF2Dk9OnwMHh
 tUmrUo8XmcrRCWKTKT62nO+g3zr5MWkifkP643JLzGoeujJq6eGOYKrsR9xcU55sQt+GwGE
 8xLbrN1ppl1rpLhRwTWERXm6pXpryf4kLYOFEUQWnWOeFayq6kdAUnpFiitX9MPhZKVLDFr
 jaN/2aQTjxBXkLwvBl/Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fsu58mNrVAg=:9qi++y7V/ZSNUId2RpTSc3
 +frP7M5zoAMAVppp6iLSmNUSpc3g49oTX2qRpFgc1z220BfEiD9ASea7dxbLhh3RFu5XM8LMs
 +Abgl6+DJ7MU3sBEAR0cTauk1bnm0nJ+dflAkpr1SEBR6vtxqkAmx8+80GNw8iaDnE/R+a4Xy
 09e1BCdk4laVvMnAIlzcQHqCBnx8unLAdjHb9yLyx8ucBNQkdbz7YIwsU6cds2Lie1I+X+Iqp
 NHqBrqy3RLTJ4mxCt4fwi8ONASZGNnP52OLOUj2UJkkKhPWiYfuPGX74dPyThvEQZM/IPTRq6
 KrVmOcmca3UT8gQRpmMZCTWHsIs3kNhclIO4S9p7aYwfuy6lXkCJboCY+R2A1f5Spdnr4xgi8
 rNU5Bb55vCDgg0chmgFn7wlbHE6lTtfQmLAyMmjJ32YUIGPrcNGOcdANepoz3ZolExKF19nkw
 NfQZcyFvW5GOKWGBHPOWMy1LyWnYuShbGMbXp2VmgSobwLpjnMuGU5fLNmMCPJVTVE9Q41w4x
 mCVB4/reD81DQswKlNjk1mSxeTf5qzQgfW2qsNGd8NxlkAFg7IjY92TfsiB1x2mvDmBi88EqN
 8QHQZnJnst4g3us4+xbv1Ye8hsMxz32zS7kLBUNLRdFm+jBAT7dWrUYi1lQMqNSI30zZpSxIG
 TNbZ0bTYzpWTBbKlntg60yHp5ACHiSfwtL14nuNgJcduVXPDREk5rWlSno7CB7jWCQ/jnU/SX
 cq9C2NjDyIwAU6/6H32uAnoMNA2Thx9bh0uhNP1t0XTIsUMVH0iGULDDmQKriheYBLNPT8hM9
 YBXDbmxCDVl4dvYoB/BiG/OwByS6DbjDRWlRpWFKREE9aYgcb++W4QziJPgXUMdtrNStAq8KT
 IVfvsvfup9NjObbHrHGmA31ez6BgP3OEd74qZOI1Jb8svUdjWeF4JgFsG0UbYraYmWXgTQBjt
 CI34cJwp0eV7kkg4iccK5gTUr0Bi3bMNpVKPeVda/wjKeSPCW6QxYx2DbKCt/rx1Rfd/LvPvv
 0HAv7iZ+L2rKAm56zjMohOGNa056EMIrQBy892of7oxkC+SSNgqph1tkva5vKWReuq5YzEPE2
 xx9pcLf8rC9lNmrgHzd410jo3d4QvL68tlmXHMXS1JFV6pL6e+VNK1qOCJUanQ3F9f09tabxg
 2+z8AJ+YrtUoOcbDXgK5B/Lsz9aYD01ErkOndStLeJiLeB44myFj9iyxrHVzc+bbSOS8Dor5n
 JrP5Hfrmh5zT45ufe0eeQxKJpx+9CC3ClRKyZSw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050752_310518_32959526 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new Raspberry Pi 4 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 67bf9e2..dd52e29 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -15,6 +15,12 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BCM2711 based Boards
+        items:
+          - enum:
+              - raspberrypi,4-model-b
+          - const: brcm,bcm2711
+
       - description: BCM2835 based Boards
         items:
           - enum:
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
