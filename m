Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53342D61A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3op82Svdy2JkGHJ4nn1NWgz8oAylC+jiNrz9FD8Fags=; b=IB7PqsvWyXt4qy
	QGLpFJimsPDBVo3y16l5Ps+IuSrQUi8cvsHAQY9gVgmUERmC5kMWuvYUrSVYHtM8LdVMWrvtRD9AD
	txAMi5nDp3a2SriD1g4LN0tfZ4tTUmDWJx8LQiyvTrygU/QoSRNLJVHsbmsLee6Fl1AqBjRvcIuVF
	duJIHUVC6K3aWsEzsg8BrNlmrJ3nYNmS6CfE2KD0pIWowmJ12W4J1flaFISnx3jQ6+5fSB9TXKR6x
	+DQSmcyY2hIQZJh2j+yv8kS8bkJP0Ejf7xLzCLrgSlOciHw3EResqDN4Dt6OeJSqot1l9QaWqvRxC
	c7Tot2xZEJSTGv9Z4m4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsrv-0002q9-Ok; Wed, 29 May 2019 07:19:27 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsrR-0002Sv-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:18:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id t1so822344pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P57cGd5au/pxCm3dCI4WNXQPVL3URAglM9O9Pw3PXWM=;
 b=hdY+eLvGd0/CiM306UIlYlfWMtUD0oWi2NeJfCEW3M1nQmrICpgsesO3HyKaK0tbMj
 y7O8PIRyWd21oU5g3cMRc6Gxyx92OfRUBsn71b9hnJu6eT07pqeokrxViFiwgDeWo4L1
 X/moRRWJHWBUiWe4vLXQdDybRCaFLogvlPCkpZ+ZvIUI2nzXy1/sSUYbz4rfPBjKWc9v
 jWg6cDG40Ivb3snKohS5Ql9LxbXYFmfycPxxU0G7m0lXW4VTpxwqn135c6cJ//RXUZRo
 AzYd9iebs3tdOMni2xVMMRAoe1UdID6Isza4RXCzaR1GPNhEcaBfFh+uqFXU7mM5SdCu
 HDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P57cGd5au/pxCm3dCI4WNXQPVL3URAglM9O9Pw3PXWM=;
 b=LX/K5BIfHYTibyiRotKFpjo+AqqKw3Bndihp7zDNtdakaoQE0+NpeOPxDgGEiXk6q9
 /aznxwMo3nj9MtoBMpJWLmU5fOThs5PCDttCVIcMFdrUZxxZ29E1hOnsrWnUB/sZBTmM
 eqf46pmmHU5qm77oxHcntiAlo4nsSZJdLZgopub8R9C8Yzfui1hlo9bVxrq5F6moH7MP
 YotYnRxINhlyINdjFmXpvG/Vm7AeqHzPQuIOXt4Fj1+g6qTwXGxysp5tWlO4V0fQ1FG0
 fsgRgjp8rRCBswrbABhFHUrx4GeCvIMLKdenaRDQmU/tsXzqb3nQv8UyNoeqBejkftJz
 S55w==
X-Gm-Message-State: APjAAAXfGOR3BH6q2jKHREobv8np/FjqyC3lku4yiCIm+hLaoKaC3HDJ
 3k9uJm/KEMEgu2KAEfpEo60GE//51+A=
X-Google-Smtp-Source: APXvYqzU/O0hkTUNdjazxjZSJmGmSvPWTsv6ggb+I3Z3g8OtTH+Y8bRN3EaXebun8KSunjKFkkaCpw==
X-Received: by 2002:a63:2315:: with SMTP id j21mr42017705pgj.414.1559114335066; 
 Wed, 29 May 2019 00:18:55 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id y16sm32038938pfo.133.2019.05.29.00.18.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 00:18:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
Date: Wed, 29 May 2019 00:18:43 -0700
Message-Id: <20190529071843.24767-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529071843.24767-1-andrew.smirnov@gmail.com>
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_001857_202133_DE6D1369 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cabling used to connect devices to USBH1 on RDU2 does not meet USB
spec cable quality and cable length requirements to operate at High
Speed, so limit the port to Full Speed only.

Reported-by: Chris Healy <cphealy@gmail.com>
Reviewed-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 04d4d4d7e43c..e1d8478884f9 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -805,6 +805,7 @@
 &usbh1 {
 	vbus-supply = <&reg_5p0v_main>;
 	disable-over-current;
+	maximum-speed = "full-speed";
 	status = "okay";
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
