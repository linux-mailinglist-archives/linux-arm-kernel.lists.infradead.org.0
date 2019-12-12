Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050A11D9D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 00:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/kVK+yY/cG+cacUCg8utaHvvHR+CZMghk3wIYD6Xyk=; b=gIy9JOJgkmGGEpVhSD8i+QO+wG
	GM9/aJa9wIH2X/LLcASSVAYDX1ZY0Xm83QOW3JB1yWmjcXSeM9ubgazA2ntx05hx/ev3lGzltlVj4
	QXPEp4ULbN7twoXnRZ5uPTRR3okFqSq0wgiACcmS49R4mU/Xy9rcOKHyOt3IzLGf4zE9jTlGhuaCw
	oJ0Gj8wve6KqRzPF8c6wXcbNGXsrRESj2woQi3WZDp3NodI0+zdI22gamQ+HQ1datso92LDnpujGS
	cDVHIESMS7XPK1JYJ+eZUwhl960CWCR6/PDBg09f6HwTyT0D/bDIy7c03zwntXD5gduir7XGWOlaT
	J6lxF2WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifXhr-0007v8-Um; Thu, 12 Dec 2019 23:17:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifXhS-0007jF-P2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 23:16:52 +0000
Received: by mail-pg1-x541.google.com with SMTP id b9so399268pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 15:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JrcLTUya6tKmBDv9fbzxQOHC8CSLJLBRuOXylw/H/LQ=;
 b=OUwsSXv1ozwid6KtPLBhDJzii7BoCsvW+6+6VCvLOV2j0VWexXUXp0+6+s2V28nw5c
 +CDD1soqsV4bmZ882ggwY07tSBjH4mvBJNiWOB2mlvUN4dnbJdLEb8jx4Ng+hiOHwY7E
 ZbL2ReILkbwf/vZ9TSy2t4UDjeDw/yDRLAujIP1lsgACnGCH85Uxn1OexduP+b1FHyXS
 B8B2S1l9RGYr6chkeuTfD+ZCVCvVUe8li1b46/Ed5W0LEhkCj10AY8dGxeHEmT7nFF0O
 BeApaieC1GBETt+WJ0h/x6azsE/RuP78q6/n811NPRaMngJDQiwfdx5mFll3YHyebXhX
 wkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JrcLTUya6tKmBDv9fbzxQOHC8CSLJLBRuOXylw/H/LQ=;
 b=N6Wy1y7CDclfQZZ88JEbRbgU+Csh0cXXSA4VgRHSf7YHwW8w5vAKPOe3hSLurBAbgK
 8i7llWZNEqQ8pqfsTCaLp6XnAdSTFJdFNeTKS8E6zYQQ23Lox1GE3D+uC8pHYJiNOjwm
 kJ22S9IlvWs3Bl7lxNXReDZHkeAYR/w40DtHeivjl7Xx+NxjLon3Z232U8XO98aPRF+7
 hRAqJywUBxx6HK/nTQEVK2x2sQvLQNMx0sp4OHL1BsHlMv38vYlrYVU6L1iGrV+q9mt2
 9UEDF5q3KgCXANvCZgcB6J5QuaD5TKn88geme3aHTlf+Y82zCjhHEfXn3zXOUmPzm5uR
 2Bxg==
X-Gm-Message-State: APjAAAUNCEseRBF6wdkhl/DOTnci8vrN+vezMiAp+MbSftXPrwL6JIVO
 9NWgaNi8/nYTGXqnIOaMOOw=
X-Google-Smtp-Source: APXvYqxi/4Uk21EguLIChFfr3iDaBRkRE2ol/JFuqs6f26TAO/JO2iEOAe4DA0rmARfaTHkBSX7sGA==
X-Received: by 2002:a63:2063:: with SMTP id r35mr13926813pgm.120.1576192610054; 
 Thu, 12 Dec 2019 15:16:50 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1072])
 by smtp.gmail.com with ESMTPSA id ev11sm9423307pjb.1.2019.12.12.15.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 15:16:49 -0800 (PST)
From: rentao.bupt@gmail.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: [PATCH 1/2] ARM: dts: aspeed: delete no-hw-checksum from Facebook
 NetBMC Common dtsi
Date: Thu, 12 Dec 2019 15:16:21 -0800
Message-Id: <20191212231622.302-2-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212231622.302-1-rentao.bupt@gmail.com>
References: <20191212231622.302-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_151650_808748_4BBBA5E6 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Delete "no-hw-checksum" property from ast2500-facebook-netbmc-common.dtsi
because ftgmac100's checksum issue has been fixed by commit 88824e3bf29a
("net: ethernet: ftgmac100: Fix DMA coherency issue with SW checksum").

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi b/arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi
index 7a395ba56512..7468f102bd76 100644
--- a/arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi
+++ b/arch/arm/boot/dts/ast2500-facebook-netbmc-common.dtsi
@@ -71,7 +71,6 @@
 
 &mac1 {
 	status = "okay";
-	no-hw-checksum;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
