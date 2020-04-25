Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761701B867B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 14:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y/pN06lRGmA5lIPhXhNEHe9diYWQqQHOYgpGNzYGgBE=; b=XryLJNvZek/yIDkqg3jydH7rhj
	gpu0R7ozmjCtfHlBuWWaLxCRDGdf7GiRO1XLxIOSwF2N9eF1myHXh1ltMJqLWG+487pvQuaIr4XCM
	SUl5qjYKZ7EGEMsk48TTB+8q0nmD6Igij+I5+rIMjp5v825LipermyyeCakYSSsdtIEUbhdZyH5Fm
	V3igxjSfAK7S8I+rXp+BrPdYJ4KZ1uE1Wd46IoAP4JIDwFlHswCGr2ITlpS3s6HrzB9EF5DVlZ7TD
	j8XWyROQJbJnv+MKTEIvoN7HvLsgoZCoaYv5vPaZ5LPZYaVlxEquHWLuBd2njMdA1w/dsgsP4z0Ub
	/SXllvXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSJr1-0006KA-Sa; Sat, 25 Apr 2020 12:24:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSJqh-0006Bm-QA; Sat, 25 Apr 2020 12:24:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so14713699wrs.9;
 Sat, 25 Apr 2020 05:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dAhthcMUJWS2ryatnNvAlRrirnhiWLRrICwYDcnU0fU=;
 b=OgS4LoLMviUc9jZmo5CSUiyC5d06/R2NSa9J963Y+HkIKq5+pRtOFC/HoVz26io9Gm
 XXEVsl7fFl/F7kmcMCLu3KXY9ShPMruVjZjopmR0FyVRKHbr1lqueJQh3uRuVbp83ZlH
 nkKTRBggeC/ln0K4h8BKr9S1OqKBlA6gAZpT3YmB1krU5g86L3BAEBaXOs7W0jhMB6SP
 QnqEOsp0MEvIJwliL4bprN0KQInkKwK9VTBETZkEQzMhHo34BTbHvzsmEfo2I3SheNDc
 GG2jBRVjLRdtxGx0z4ehEiMMgXHSZjwDRwMTQxzzTy2EwYA9nfihxRbvEpXHZFa/IhdN
 xurQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dAhthcMUJWS2ryatnNvAlRrirnhiWLRrICwYDcnU0fU=;
 b=tcO1g9OJHFty+id2Ds2PkKNq1LoDT2PRigSRE1pQVAGjT5bCdqc3hFjijVANx6iKcA
 HobvEBkKbAbZd0Yn+3BBwAjE5RGp5mOaDr2mIFVd7tmTi84BcvUwd+R6vH0xkEhbYMlw
 YJcovPByJYy3+fSnCgIKfpVAl9V0SNgcUmS8D9gdSzrC/n6TmpVkKx4hCFUEp4zkGQGR
 px1TeiSMLmHW1SaIuO9WYIdsmiCEw5pKr8omTFES5Pv5F4gLbyoTyOXQueDasPq7u0qd
 0ynFcA/agi3lcdAJvXxAc3fsvUUTTBh7UcAjw1pld/3U/b9CAt0zvoqSM8zqGwnf7AW6
 Ed7A==
X-Gm-Message-State: AGi0PuacEIxa0fbbWYtFj99pv0YJBDbFsoYWZDMBVhcc8l2Swl4npODm
 M2OPp73sCZPRlT4LRSzo4zM=
X-Google-Smtp-Source: APiQypKQLmemHLqJ6Pk25SKVqUP6thUl0EKreCGpgy8kTT3VtJXfWo6ASj6ee9VF9buJyhEACMw7AA==
X-Received: by 2002:a5d:408d:: with SMTP id o13mr18100044wrp.249.1587817433437; 
 Sat, 25 Apr 2020 05:23:53 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o6sm3248461wrw.63.2020.04.25.05.23.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 05:23:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: fix status for &gmac2phy in
 rk3328-evb.dts
Date: Sat, 25 Apr 2020 14:23:45 +0200
Message-Id: <20200425122345.12902-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200425122345.12902-1-jbx6244@gmail.com>
References: <20200425122345.12902-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_052359_849350_B7E8DF7E 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The status was removed of the '&gmac2phy' node with the apply
of a patch long time ago, so fix status for '&gmac2phy'
in 'rk3328-evb.dts'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index ab69b493d..ceba9f8d1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -85,7 +85,7 @@
 	assigned-clock-rate = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
-
+	status = "okay";
 };
 
 &i2c1 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
