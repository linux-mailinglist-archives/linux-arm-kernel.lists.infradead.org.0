Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB50134E36
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:59:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dN5OQtoDOVUXFC3ksf1ghoxy7YaD7iXuTf4Dy/nL7tc=; b=eDBnCEJpY33Ka2g3wvBAhYyJsw
	h51n1dVhEhWIa0QEjMfGuLJa42GBhog9zEXOPwjFi0GHdIRBDsjIm1S0Gl/87LdSxZSPjIz8CEHsm
	kIMYQ5xXA4QtabmyJmR//mqUhukh4F+344hQ4DxStGw1q+nk1HzQwxyouqasaB5HObb2RZdXAmgZh
	9gC2jddh1n9+hl62e30/7m3c4XPLXFYQmGWuR3zx2/185mxUXkFFCQYgxDFCNSnwOCXFLjzK2d+XX
	cRl1mB+bleW/J4oIv22B6XEzulR0zwj+zibadnKjWEhhqMl58qdGb8wR1cxF0cPUZIrzzjX+PeYjs
	3wIiEupA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIQ7-0003Np-3t; Wed, 08 Jan 2020 20:59:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIL0-0006Rr-FM; Wed, 08 Jan 2020 20:54:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so4921921wrt.6;
 Wed, 08 Jan 2020 12:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z9FpZJlsxfrtEhSFDySWhmw47lo8JbRtU9wLQFcCMME=;
 b=U5rGatZe//rnw7LVs9WeUyct2qy98AEqNUq+h00gKjRMmzUpzdKhHvMsn7GIEgXN7v
 d4ZvQYcSJjIvbv5jT6sso1Y/r+OjO7J9wyD2HSjInh2ZmHYUbsWNIDiky2JowA3yfLZZ
 LK2ZCes/u2fcKMGKO3BZw/fq/gI51a5LyGKcP83TIOENNnvKWwm824Gs++okVFTRDSPl
 GUpsSp9AfHziV5XY7P1fvMxzAilTc7NgBqHbH0lr3AQVjC/V6nNmwuH+E7KnAYmlZZka
 A0sxOEgo1F8MVyu5OhDr+lLjfZpb1gxbOu0YNEWGBRIwABrW+NuxPDU+PsyQkFHyeFhK
 wwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z9FpZJlsxfrtEhSFDySWhmw47lo8JbRtU9wLQFcCMME=;
 b=onqUrTQPvNsiDCvh6CcDlEvfH5JHrb1TpD2H9BLieZwHY1wZilPqpuhvKdQ0iO/P2g
 hsV1MS+7uP2FaTzKhFXz9wckymLj3lVXmXJ4D35Gc1hafmUXxUkGhH1rqRgns/xcHFfp
 O7EKG9bYxEHryNf7TVqJDF3zSEv1PcbDrIUq8LbxsFzVVjPPOtF0Rn0MQxMKej/uabF2
 vd2JWN/kb3bV+VoYetgIqNaw5AocQ8tjtSkscr89f3rek1kaCZFHWcprQZSwXaiY1gsH
 /CkXqDTS5DAEAWSTPBWNaZ7wU0TxwDFef1jSTZsvKMWDBBSUfYGh1rV75Dmp27w/IL7f
 xU2Q==
X-Gm-Message-State: APjAAAVfvB7CcHBPdDJdyEYV212UVH61xBpWcO2cBdoeCLUi8IWkvZFd
 PHZAamBWggA2bpK+FA7m9Vc=
X-Google-Smtp-Source: APXvYqwXzXwExy8tpSUlLOAGKe/8f/hfhE3ktWZZB/KjAShEe9kZZVaRqFTuXVzm07LUOTs/i9R4VQ==
X-Received: by 2002:adf:f80c:: with SMTP id s12mr6734725wrp.1.1578516836849;
 Wed, 08 Jan 2020 12:53:56 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:56 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 10/10] ARM: dts: rockchip: rk3066a-mk808: enable nandc
 node
Date: Wed,  8 Jan 2020 21:53:38 +0100
Message-Id: <20200108205338.11369-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125358_540115_C6BEA4E7 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the nandc node for a MK808 with rk3066 processor.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 365eff621..8928c9345 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -133,6 +133,15 @@
 	status = "okay";
 };
 
+&nandc {
+	status = "okay";
+
+	nand@0 {
+		reg = <0>;
+		nand-is-boot-medium;
+	};
+};
+
 &pinctrl {
 	usb-host {
 		host_drv: host-drv {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
