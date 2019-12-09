Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95AF117229
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qK2fLwh07LWcVHbEvSRsXB833vwIJH7YtWDWXCq3q8s=; b=RNWsIk3USfwpPk
	jix0Kqz3PMiYuFucZaqKSUMs/ZrYgdlWl87Z21Bf12GCjlI/W4q9szACuseEpyEJU7GPUGmKeRzIb
	LOjp586A5ju4OI3++T39PlkyhF8P9g/D7uzFrxOVB89LtAI2KC/PDXntUPBL2q0KBTVbT0KyzKXlM
	G8iWAMR7uzGHADAWw7SDcCPs1ZNtg9dMa3n570hYbQh+TUcGs+56C8Kb+T03UaZ1mJw6c38As6s0X
	9m45VM/VVHYlMLJyIaTJ/RI7k99ISZ4nrA1Gl1Qik/PoXUdmBbV6mpz4dZwgICo40OJw61/LcVL4q
	4fwfnq+elMZ+UW2R++PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMFk-0005j7-KY; Mon, 09 Dec 2019 16:51:20 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMFC-0005Ll-Ks
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:50:47 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r11so6131161pjp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 08:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7j8A/bmJ0tivsU1R0/vbl49gfES1PujVpawMqj4L0dI=;
 b=iplkALAZMx+B4uudUY+CyOprIn5iQJqyJfp73EPWgJt3f5iTj/qSpIwRdArrIDAQ/q
 yCnhdG4xKbW/AUUVaYED3jlGQoTcWI9xdpyV9jN5begCp1ibEK0NSH2y5JtNaeSDSch3
 PxWcatN0Sq9JLZh+9qpJ2fMGREq6DL7ZFPxhZ95hyfckkDafiIy4FRtrXKEQ0oC5lUgh
 Y6NZPMKmmr3xRQtnY6FXmDmd6p/kLSCKwK7fqH+KMg+klPCRMwc2AFOANV8Dz13UIWav
 Gg0xJUb10//xoqyfU3OYaHP2YXwDGenQxGDGMHAEHdLUcj9KITsT/bsKMjfNA0zoDNyT
 r+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7j8A/bmJ0tivsU1R0/vbl49gfES1PujVpawMqj4L0dI=;
 b=oDXorsfwAhcYSHkp/RkdoRijMHYzGVJBKwdvS+LkTBqTxrcpQM30QHEEoAXR8D260x
 LpFRImWo4JioN9ZPdFNNKE2lX7VxG6gfRczjc+vbSxg6sU/7VzAXtNcl/uBFLRHS+YG8
 QaLHJB0Cp7Afg6O5HQ58lhNbiI4oOw+DO7ZLz9r5feOZDfZIXX+NHxO+CSxDyH1hFdsP
 qU45IR6l79yqm74pOXcki0Ea3YIIw0gpjMc/XTs/bnVMNLhZ10CB0tmEs50QU6Hcj1dx
 I9hLX37u7PgqhrKu32nsEQJjqhpX8ufdYxnABxYpU/BlqfPK3KkeyXQv+noYdvchapuw
 mVdA==
X-Gm-Message-State: APjAAAWZaodbChpVNMN7VhyS4n1XYxWAvxXlbyuq6KoeAg752Nc84WnE
 1AKmLMCCgIkiOwrP2qbGAIEqgueKtAQ=
X-Google-Smtp-Source: APXvYqzQjCtuiV7fSG1wIeHmk2lOV/ALk5dveVljihJCp6vzBXm2UhInYMiasdvg3HGwQmtmb10w1w==
X-Received: by 2002:a17:902:7d98:: with SMTP id
 a24mr30813869plm.321.1575910245353; 
 Mon, 09 Dec 2019 08:50:45 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id c19sm18299294pfc.144.2019.12.09.08.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 08:50:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
Date: Mon,  9 Dec 2019 08:50:18 -0800
Message-Id: <20191209165018.21794-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209165018.21794-1-andrew.smirnov@gmail.com>
References: <20191209165018.21794-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_085046_679800_B31FEFB5 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
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
index d062c86e0762..ca0b81c41998 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -890,6 +890,7 @@
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
