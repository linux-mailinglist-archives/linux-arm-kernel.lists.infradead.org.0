Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEA51178C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYFCeaWfr8rrjXVOzLPBBFuZDVlSe8uewS+PZd5+SW0=; b=MZkfEZAurTQJuJTX43SeEoSE2+
	T6lti6YukmECTFN7qs0K9XC7F5kUJg3rI7cWuLpNXV6jsvNwlqh//VTVKFmxiVpCgatOfpKUUPUE6
	IZq+24N+YWhKV7gwOKhOJ2urBZXA7nfWXqJEEBrEt8vvDgWvzSF7OI2yJexAZmvIdSVvwOwO6dORr
	UEufKFWbAMu2VfuxYd8sm3btCqaB77L5o1JBv2hXMPLsF09r/HbbdTpWom7CmX2dvdNl65lN+M0g8
	qtPhugJgdFN3Pix81gWW/WL1MvJLfWYOAZJTlhit2COL/291hYcqwqcMCkt0Ke/dOOEhGr5mqpYrS
	SEJxKxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQrG-00031C-Ej; Mon, 09 Dec 2019 21:46:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQpB-0008Dj-5j
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id a15so17794822wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=j6gWVo88AgDxvn8Yg1lfCN5H7CC1Ea+lVXlph5sRy19Lt4qYZl6aawRuIylGJJPYJf
 GPwfGrshGktY58zsulGkoiQIxbcJocv3r2qimlFTGT4h1ZCevNkmownscbhDEJtfiz3M
 aJA3rAZu35QT5flOX3Vj6X0RNi9+fQjfr8rZK+Iy+HvDZWfWOgCMSRh5sLfFmnncUN3M
 dADuTVjvJRbYa/BHWLikRJaDRTvt4XKCHu/R8ZvdQGN63qWfnaSKf5PUhONSLx3s+qIw
 hv8HI0o5hNB5squ5hEYcALwvMI7kkfDCMa97gH6Enc+pgMV2WtCFnya5iroVHPt4fJZa
 RFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=C4ehxlYKASmIc5pbSoP4RoiQiF7xjbO5+tJjHxMTMspGii4MZuY6f40rrv9fx5piC9
 /2QLxrhE60xCmo8a/vCFcGiXZuPgadinQlwjAK5wlnsfkKE4vWdbXsfZTuZXwHoV3HZU
 FDaLTXieAoauyZb+i+UHuDFs7S3nerhAcv9R5fN14RA3hKwzEGM2AlXGOrkhsHS8FPz2
 abNvev7QoH6NRa/B1FSnT0qHZWKtC7nceC8BAJmo5jVvhme/yiRPjk0VZU7Xg++yNxC6
 C90FhYlDwJ+GWp2M8JyFccBXFChqSJUbVLQ1OQPPvqZ5XmnwveHb1y3ACLN+kLRbSn2z
 V3bg==
X-Gm-Message-State: APjAAAVswBuGpQNDNRffAAub2k1gbvdT6nviDAtnQp0IDC4hDB018tjS
 Y2vWBXrxt6BDLLnO9F34j1c=
X-Google-Smtp-Source: APXvYqzHKNJxhsgEgBmDpf6YDlxQL4fag49V+/Mo6/Q7hSiO06N+Z+cQhgXoLCPxrONDXyr3WVpr7w==
X-Received: by 2002:a5d:4984:: with SMTP id r4mr4154420wrq.137.1575927851869; 
 Mon, 09 Dec 2019 13:44:11 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:11 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 09/13] phy: usb: fix driver to defer on clk_get defer
Date: Mon,  9 Dec 2019 16:42:45 -0500
Message-Id: <20191209214249.41137-10-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134413_278958_3B12A9B2 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle defer on clk_get because the new SCMI clock driver comes
up after this driver.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 5f7bfa09494d..c82d7ec15334 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -341,6 +341,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
 	if (IS_ERR(priv->usb_20_clk)) {
+		if (PTR_ERR(priv->usb_20_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_info(dev, "Clock not found in Device Tree\n");
 		priv->usb_20_clk = NULL;
 	}
@@ -371,6 +373,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
@@ -382,6 +386,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
