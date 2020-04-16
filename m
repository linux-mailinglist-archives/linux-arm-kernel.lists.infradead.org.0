Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2401ACE4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AGMO10IICr343uDn1lQbT9sJ7vFd13t0yDtUuq2bAtY=; b=NpXCyAuHGmt8IlJzzeyhQgaMNG
	03tj8BHZHXSh5QNffCvUkuwmZVqBkWjPgywrSo3MAEKFzXuA97/4NEOMNe8X+au8ie7OCUHTrHaQt
	TETSnYEXNo7HirZbhyOSeD/GKZctOeK/ag4rNbfEDCTl2fx8/KBeRap3xIu8BW//sRiZwFn8G+PK/
	uduTQsoeK52wWotNIETSPSSXBCykXrPl7KW4sZz+ichyGg/0ld8ttqtYgmz9Q3jDyEiYIxxg2k1eG
	FZLTW+4cXsEajyCzjCGGgKTLOzayUQA8FDUD5uZaHldqC3sVOXoBcT7pUIMPfdWUB6k6XLexMcX0T
	Mi5ER+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7ve-0000M1-Sg; Thu, 16 Apr 2020 17:03:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7vI-0000DU-2a; Thu, 16 Apr 2020 17:03:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id h26so5709542wrb.7;
 Thu, 16 Apr 2020 10:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=998VS9NQrf44xyeybmnR7tkwj8PiFEeNjnEnBJHx1Ko=;
 b=etEaeasSiSnGiMygaw1TlDGQZ5cuMJRKnWb8gWIaGHwyAXZBfJeejm33AX4ONaR8aI
 JxtnLBp+/eySPyxInci7beLJ4a52M/l9P5oIPnZIWPnk3E/+YPJkf1D28FRUYTewa3gd
 jpgUngG5usb629smh5qO5gW8bxf5/gSYukgwdSU9/cG2PyZJCP0WeNbbOt7zmuLALD/B
 lF/vnL+ODCRBwZGOX8dtzV9+aiKO5gJu70kFoO7oPWBO7ck8UQbkCUqvVL9DbSE8OkBy
 3Wl2foDhlFoaaT+DXs8xvh3hVFeCXEg9Aa/5CqjGoV1OaCiJPCA46M8FFylgz6pFLtqn
 yPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=998VS9NQrf44xyeybmnR7tkwj8PiFEeNjnEnBJHx1Ko=;
 b=iuZSfYKofKMgt7bokKK6eM9VRC3OrNXQsT4R/ubnlyPs0G54yI58hvG6K1bymfypZq
 CW1AvUdM7EnXo3SLnA5hwitR7TvKxA5qO41pUNLYADFbHyefm6ZeDM5WP8MnIJio+dl7
 U5KZaoIYxWeN/vyc166CyNOWMvKuPLUr6tz8d6CojgVAbwD9v8NDE+Yeto5Jnen5NiTG
 4Pp84OJdmNjdZp1jj9ifUMVfdl24jdNQOBsOiWyMHf1Bx0RbcxuuAJeCXkBU3aep5X0c
 pSteili6RJDB/iOu2ImgCqmZQc+QG6sIsXVisN1wdrKEe4BKVsjFzoI5szRPREpFtCQK
 PxbQ==
X-Gm-Message-State: AGi0PubQaurjBx4GiL3KYaVv57OjuA1v0/L8TjDYfVNiTZCsX/ZLPrDj
 1HCsWfhPt/+ABPvy/DV11EE=
X-Google-Smtp-Source: APiQypJ4BZpuLiC8lmK4Vpk0+VBIqECGuTW9aEjV8pEaWUoRQYlq6LDI6LbwtVgS38F2ll9IB9SpLA==
X-Received: by 2002:a5d:49c7:: with SMTP id t7mr34097581wrs.22.1587056609264; 
 Thu, 16 Apr 2020 10:03:29 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm4339600wme.7.2020.04.16.10.03.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 10:03:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] ARM: dts: rockchip: fix phy nodename for rk3229-xms6
Date: Thu, 16 Apr 2020 19:03:21 +0200
Message-Id: <20200416170321.4216-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200416170321.4216-1-jbx6244@gmail.com>
References: <20200416170321.4216-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_100332_114841_C99F47D4 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3229-xms6.dt.yaml: phy@0:
'#phy-cells' is a required property

The phy nodename is normally used by a phy-handle.
This node is however compatible with
"ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
which is just been added to 'ethernet-phy.yaml'.
So change nodename to 'ethernet-phy' for which '#phy-cells'
is not a required property

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3229-xms6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 679fc2b00..933ef69da 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -150,7 +150,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy: phy@0 {
+		phy: ethernet-phy@0 {
 			compatible = "ethernet-phy-id1234.d400",
 			             "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
