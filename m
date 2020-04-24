Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3571B7B22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=35a3rpYckp48TIBx5IvMdzvmzfNfWIOwvERUCkBhvCY=; b=UXqsTG0j0c4Ew+KYQSSXFjKomi
	uB2Gauiv7Irj+D7oefYfGetX0kakvcHJJX6UjAWkWMB2Zh5sETdi51fzK9vtS967B32DsBCnL3m9e
	V34U+tKM5up31kh7RK3gqqfYRSvqHqTUd2nu0eOgR++DBs0ON5dVgT1J2oQuNUJNoXrXWpHy2lE/d
	gLekR+J+BeXlyt7Rc5z/s8mpwkvH2V5as1h/reKYmRDl51KmqTz38NZMycO87WSzegBuGIoKqItnK
	TT5sdx34n3mBbndr9w1EiIEgmVxkFUw7w+vVxFKPLrs04NPF7KeUx1CEMGi0+F9TUeS5tdTdQpABh
	OKirGiTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0tm-0000ys-9w; Fri, 24 Apr 2020 16:09:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0gU-0001QE-ST; Fri, 24 Apr 2020 15:56:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so11503882wrx.4;
 Fri, 24 Apr 2020 08:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LMnKTgYizjQYQHbi1ZpBIx1xnhgktjhs52v4GyB7fLQ=;
 b=HeP/cGfIyufIW9wiSVZASG+H8faBOnYGkZeuuX8lcrLV/RA+Z3hdVabjguxnzE2hH6
 IXVDrqtY22lJnHDNvkns4Ugr8C+8LkFPTVtovjS3HVOkP9GINr5fm2zQDi6nva/3s1kk
 zYY3/PU+Iek3YfHx+J8MiNhBMF74t4w9NV4VBjafsxEW6dVnO73qGQiNTwXWaDk9iVwq
 U/X32BMSa4JKryPjwsBMXqZxQwcgELoPwEzGtjRQ3GBtPXcopt5ysz2Syny0zdiHIkCJ
 rYgp9tZ7TYbhoq+eK/VqcmPchE/TCrrsMlnd9VXJfZSWzYWyxOKrJRv2EjemvCTHv0EQ
 mkmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LMnKTgYizjQYQHbi1ZpBIx1xnhgktjhs52v4GyB7fLQ=;
 b=sKvY/xcnJ2yksvr16ffer/hzDXAc0/vwst4UZ1PEZz4/YhlV8t/Tb7VOfGAr2O7qWB
 S4Hxji5XS0cBufwfRVYV0vs4N1SoKXjzCWEeBGb6zYSAC8VlXGseoEjPShKlenkvZxJf
 Ac+SIwVwioEout1vk6MDL4vp6ho4hUVsCEfqlSVQCCXTvfpsZsaqYo89ODAoV9uaWJgX
 QogemOqdNQO92LW7ceO2qp9hRKwivq8m44dxdflriZJhUMiPCbEKxg5bwnGBAURBvoJg
 htFoSQoCztxXO0I7u0XmYMIYq0pY6N32V28pldNxfyU+ASs3vtHpl7wojlqqZL+QhffP
 AVwQ==
X-Gm-Message-State: AGi0PuaFToXSaQmgYQEqMzbbNl/2foOG1Ed67GsYVx88I/N12BcYVzev
 74F/HdrGSwq7foEHrzoWfVg=
X-Google-Smtp-Source: APiQypIFGp2HYCo2gcn+YalZiUnrq9m/w4NKwBICcKEBQYFdnMqEa1TYJsHxg0LbWqA6+ptq476qnw==
X-Received: by 2002:adf:f750:: with SMTP id z16mr12537928wrp.115.1587743768929; 
 Fri, 24 Apr 2020 08:56:08 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g69sm3554317wmg.17.2020.04.24.08.56.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 08:56:08 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: remove #sound-dai-cells from &spdif
 node of rk3399-hugsun-x99.dts
Date: Fri, 24 Apr 2020 17:56:00 +0200
Message-Id: <20200424155600.24254-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200424155600.24254-1-jbx6244@gmail.com>
References: <20200424155600.24254-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_085611_700388_E0507296 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The '#sound-dai-cells' property is already defined in rk3399.dtsi
at the 'spdif' node, so remove it from the '&spdif' node in
'rk3399-hugsun-x99.dts'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index aee484a05..4b4a38e59 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -633,7 +633,6 @@
 &spdif {
 	status = "okay";
 	pinctrl-0 = <&spdif_bus_1>;
-	#sound-dai-cells = <0>;
 };
 
 &spi1 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
