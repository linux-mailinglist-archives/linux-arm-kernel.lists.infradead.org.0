Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D73C12ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 05:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nnhZOwO92Tb6XESIjSbFReIvr6KIEHz1nmgULOjKLNM=; b=flf
	YHKpQeSNKbp04OpEOiIMOOl2fcKuaihWAqR1cuJhWGIDWhVWhXz8oWtQr5ktmpH8Z8houUNOWDEM2
	/q+kmGPHMNJeZbon1Z9kOCrfs4YOaE3l8MsLYPlMn4zBb6ohUFDdddm6i5pUCwVkCCstqNG0x/cXJ
	dVTWxzQb26bFVScV5+SiOMHbTvI25G9F6iB0Ol4s2pmG4xyH7KkeHheUDZbiwHHlOFzEzd8lBTPeR
	QXgLB0u6iGPDvXrOO47uxYxYZlnjh81bg+waVwstPvu0Ser+1M7C6BBkRMzkOk28CgxQaGXsh/0nR
	qzXYIZKpSnNtZQM+087srHCMsHU2eRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEPnM-0003Yo-H2; Sun, 29 Sep 2019 03:22:48 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEPnC-0003Xy-CL; Sun, 29 Sep 2019 03:22:40 +0000
Received: by mail-qt1-x843.google.com with SMTP id n7so12441133qtb.6;
 Sat, 28 Sep 2019 20:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cmgjUEReW2xgJs09ruxsgF5mBs1jh3iGvI+ApLc1M98=;
 b=DDn481rcaHW2wEdm6rTXaOSklaJ3ldJqF4LS4udfLf2riCgFkUp71wRYXePgR0SaR1
 U7keGNoAqVdPPLmLH8rQNF3Zq6rt5gMXUYUobgqyJL6zcHp6+J6ZsowVaWChCCH3Ijb/
 VRSuLKluiRv8egd0xKZ2Drl2ljt8G8a7B7oNb1cgebYyCivO5JLoCljr7lFWZWBzG9gb
 D1b9cMw3+bcmzolCe10vmTGQAeqF+2k4C2bp7DBskRSl9gX5MXJixAOi2J9fcqnIDAmq
 8cZU0tPHAgP/jQGKlp7ckdZOTz+srH47d13OAqL2huJOEXiyBrO4cbRCqOC2TQ+rI+nP
 90XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cmgjUEReW2xgJs09ruxsgF5mBs1jh3iGvI+ApLc1M98=;
 b=G1vHRyvAQpuONsEpa2PuaxeKsmyVA4rylLBZ7PKH4DEIkW4UR7QevoIajgNoZa3rPk
 t61s3mw6EaGYApMlruumaDsauCsg/m/yBJVIgt6NjKNq1a/40ApjrnChPBOryrfmCMR+
 pwHPg8+3RSR01vhOrohhyROjCndjgLlpLLjJi2YR3RfHXe97aUBFHfYnGGP+wMuqR5Qa
 5/+G/PGDMHbmI7prM4v4I6jxa+9xY1P1c4znHutnfUPKxP4+XHbaW19CaXeciLd+QiHb
 JCmIt0P/dq1NlKdLh88X0jIh9Vp7lzNSz/fLf8i6bZXyr/jKKKx3oYEc62quR5QKYy1s
 sK3w==
X-Gm-Message-State: APjAAAWMQisNuSiedp3HBBS8C1OvJDEwO/4dPdOVnU8PuF40aENkSzVJ
 0nkkqxihSi5hlDrp3+IpBTI=
X-Google-Smtp-Source: APXvYqxUMzBmTKXxdHnKbBW/2lvalxXZXzJo0LqFLfXYxRG7wIaRk/3MJ4PaeHYHDvAc01DDxBLC5w==
X-Received: by 2002:ac8:6982:: with SMTP id o2mr18722488qtq.143.1569727356636; 
 Sat, 28 Sep 2019 20:22:36 -0700 (PDT)
Received: from localhost.localdomain (ool-457857f8.dyn.optonline.net.
 [69.120.87.248])
 by smtp.googlemail.com with ESMTPSA id y58sm5086733qta.1.2019.09.28.20.22.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 20:22:36 -0700 (PDT)
From: Vivek Unune <npcomplete13@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 ezequiel@collabora.com, vicencb@gmail.com, akash@openedev.com
Subject: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Date: Sat, 28 Sep 2019 23:22:30 -0400
Message-Id: <20190929032230.24628-1-npcomplete13@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_202238_445640_79A2C964 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Vivek Unune <npcomplete13@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix usb-c on X99 TV Box. Tested with armbian w/ kernel 5.3

Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 0d1f5f9a0de9..c133e8d64b2a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -644,7 +644,7 @@
 	status = "okay";
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
 
@@ -712,7 +712,7 @@
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
