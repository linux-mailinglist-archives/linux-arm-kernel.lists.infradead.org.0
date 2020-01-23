Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE1146981
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NY+6T1OxFpby3mJj/8vkHleHSQnzCo422wUJi2UjQKE=; b=UNQ8KztGLjZNFR
	Nn2jLPr4MJYjr37gHUCnp5PDxeNkiNy1fhu4iKmpL8sSLI1sYKrYMz0G8PU1HTm3SMaRu3w78iPZ/
	tZu4v29ugCxKHBTEOeCyc8LQUJFHuQDj8LkpxJcLJgrPPrC07NXPSLETb0hnsofYp7DpIrYbKJSKe
	y274nZf2kLCT473ZrKYma++IDeHDGj3AWYbZJP5SqEdb7mHqk4rOE/5e3MV7CADRhf/JNyWlYz3MM
	zTLAmhSynEwALAwuqXlas/cO6MKJHhWuGDlu7KwWkpw0UTHA8EuUR752q+LOQyuak2QRhJB7GXocK
	KDoekgE6Ek1nywr1xP2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucpM-0007uV-Ie; Thu, 23 Jan 2020 13:47:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucp4-0007iv-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:47:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id x6so1560886pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ztEalupp6BA2B+aVvucMD9r9wzMzPi+seVlAfbkGBSY=;
 b=r2TdoJh3xNcI6aPSASEmM7iVrVjviU5MeW5jnthU0vB/kcfqFr1FiiRWiPbmfx68SC
 KB+gldgRCAcRl9GljoTr8lfedMt80CfwxE9rqrcVUwFUFTApepBPwrNSU5GpvlBbTEnf
 jQpTUp3N0cyod2pFFZDcpGDcBCwTPZ8tTu7so=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ztEalupp6BA2B+aVvucMD9r9wzMzPi+seVlAfbkGBSY=;
 b=e/GzTRLhNq7qSVIjstOm6OVGCme7F9GCVmU81XrM2MVOBA7ckqaUVdJFV8fMIK8dIy
 if9SJY26EJ1vFiD4csVvLXzcZ3xL8e6S5ITMSRUR247580wBSiL5LTsYcfbkROHTUp9b
 mxe6TPLAGXVax65GnEHKjdJQesIjBnKWzxQLfZXRYZjP1sbeEJ6KPcJ8uFD0t7IwYjQG
 o9twDVvnBGHXYvBOIKAPyyzr1Uph/42qN3MRlBi2GJzy2LaYzwYUxKj48lR1OfXf8JNk
 ltUsTW5VFc0kXZdbNCzOMCBxfc+wFpycuQeev8p5w09Qd/V2tG60zXt3GzQJhFclXIMZ
 Vkyw==
X-Gm-Message-State: APjAAAXCmk2Yw9k7nleGxU//ukpGcaok/NgIDlDY3kKZmAeyLLp/CDru
 eGT+OlxaVV4jjpzsEPCHDZMvgA==
X-Google-Smtp-Source: APXvYqxFydOJhKTAqNJ/gjtGiD+8xdXtBtmxRScl0NEraMgo7kIjEDWa7r9V30TPrrfAY7WNIg7mcA==
X-Received: by 2002:a62:5544:: with SMTP id j65mr7702003pfb.121.1579787221444; 
 Thu, 23 Jan 2020 05:47:01 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id a10sm3119275pgm.81.2020.01.23.05.46.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:47:00 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Fix ddc-i2c-bus for rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:40 +0530
Message-Id: <20200123134641.30720-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123134641.30720-1-jagan@amarulasolutions.com>
References: <20200123134641.30720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054702_779478_4CA0BB60 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ddc-i2c-bus routed for HDMI is i2c2 not i2c5 on
Vyasa RK3288 board.

Add support for fixing the same.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index d2f79e5bee87..88c63946f2a3 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -150,7 +150,7 @@
 };
 
 &hdmi {
-	ddc-i2c-bus = <&i2c2>;
+	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
 };
 
@@ -347,7 +347,7 @@
 	};
 };
 
-&i2c2 {
+&i2c5 {
 	status = "okay";
 };
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
