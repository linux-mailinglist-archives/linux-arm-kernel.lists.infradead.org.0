Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE963D9420
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RbnU0a6/d6R8P6uapuKjsoTJpxXQJlJL1EgSU4XRNkI=; b=YUS
	U1aGFLHWQVcywepR8q0peQXEEzsaxjbmTzFH8TReVyBBy2jlLG8m5lYk+9SREU1QCalfXfZMpK5NP
	EAq4c22J+ELgIorGOwgM/qREe75hrsR8oiL0/zjyevA5LCqYeV1FazOfW0SQGFlufGuirWWjSVywS
	wjJpFX2H/bHiyRDl9pv6Py2sFR7ODlMppPavDalj+v8FIkcIid+joMsAc7R14nLKsNhKzKlM2zcBu
	oglLKs0ECVl1rb0zucsySnfrZfFrRjRaO/REs0Ao9ETxxF6W2ZPZauUEAswfVeXLiIeJ4Gw8s+Mpd
	m/cL85BK/sdgQJBa7q7s+DSbdvu50Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkTd-0005A4-69; Wed, 16 Oct 2019 14:40:37 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkTG-0004h7-Rz
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:40:16 +0000
Received: by mail-il1-x144.google.com with SMTP id o16so2846229ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 07:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=F4KpRCphtdIQOih7zA7wyNTEii8fpVd38VbpBCCqits=;
 b=KNl4Wp0os/zfSE3mGGHwH9H7k7l1az689glcED+KLLYDXtO/JI84rorQIkEFCNvBM1
 BZn2wtF3XK/9iypI7FJfCUBSop+/2Fe6+lclKR6EQsOKUscTMEjxo61WmTLOuOgAI2s1
 vNs+hfaV+fe2b0ZmHMSkUu3dfEnv/cctrdyAqBuAZvh6k7YLCaX36KvmgL1oM7IMgOWv
 8Wi9QrnN3/FX8+rEcbBvg9rWyQZfZ6/yZNGWU8VTE88r2V3Wg8qPtqvT6/Z1jp5R8OOe
 Uj1NIR3YG1fNvMmMw8ZjMWJjKN73M4mNuqW51ejK83aBHFPfH64Jpz11y/+/ho6rSvxH
 3qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F4KpRCphtdIQOih7zA7wyNTEii8fpVd38VbpBCCqits=;
 b=Vtoh9aRYf/bDvpkFEnW2gU76Cr2ZUvOYSyjB+bXrgjA+lVqnoTN3FedTXZ7WNHZ2OB
 0SjhkOLHRgyBRypLAWy+hK5k1G94u8YbxLAcSfAl2rJj3U7AWOlitWvXp2VUCLoP0AQ6
 nS401PJ9KGK0n538aSj8DHnCGNmpnPU4z+B3/HyGzxAeFuB/Sh5xONYhUMdGL7BooAcf
 ddewuKGiSrpkHcsySs0Kq0zurjJmRg3+A/NBITg8Zv1HLudJZK1uMUSTx5PU52PqtkrC
 X05mEAhwmzcGB3ghTDc8VqufWubU448ugWxOyxMwT3vyXpXdrhQUOO2gFyYX432fFMyI
 prLA==
X-Gm-Message-State: APjAAAWI6GQfXJr4hCPehHtmbSOaYywlbF3dK6Lq9q0L+rwvskMPhoDZ
 hBxnxGmUNxxH8QPW14kEx+1dENx1Yj0=
X-Google-Smtp-Source: APXvYqzVFOp47e5GYuEKGNzZtGyGxBnqHwcB6U9SdRarISkIvacLzPBtNUL4zKSI4DDp1UtHN9TuEg==
X-Received: by 2002:a92:b314:: with SMTP id p20mr12316552ilh.80.1571236812822; 
 Wed, 16 Oct 2019 07:40:12 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id d197sm19160630iog.15.2019.10.16.07.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 07:40:12 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6-logicpd: Re-enable SNVS power key
Date: Wed, 16 Oct 2019 09:40:05 -0500
Message-Id: <20191016144005.9863-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074014_989844_20BA3CCC 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 adam.ford@logicpd.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable <stable@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The baseboard of the Logic PD i.MX6 development kit has a power
button routed which can both power down and power up the board.
It can also wake the board from sleep.  This functionality was
marked as disabled by default in imx6qdl.dtsi, so it needs to
be explicitly enabled for each board.

This patch enables the snvs power key again.
Fixes: 770856f0da5d ("ARM: dts: imx6qdl: Enable SNVS power key according to board design")

Cc: stable <stable@vger.kernel.org> #5.3+
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi b/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
index 2a6ce87071f9..9e027b9a5f91 100644
--- a/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
+++ b/arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi
@@ -328,6 +328,10 @@
 	pinctrl-0 = <&pinctrl_pwm3>;
 };
 
+&snvs_pwrkey {
+	status = "okay";
+};
+
 &ssi2 {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
