Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA91730E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oFS0z/5DxzyCX31Fz4IO80RRlbJv/XX5bLuMwAodJIQ=; b=b/jF9hN+0eQJA3iD681KDUTS23
	wGa01QkIKATZfraJneJ0+E9t5YeCyGPGxfWhYqv5CVMKp8ZT4TID9lm9vaW0OfB3Zy4Jq5ydDvRox
	B8sy3U2T0Csc/3sgrHTSdcs/Mgwx8XGTkJN5tg/rXg75gqogBsd4v2Hn2JIeugwQDKn8jlEt+uU2r
	8ZMw8gNuI1WbFS/1E3+2RL+WSc8JFa8BrExPbAsPQ2/hJDYJ9E+OVOQStY8gLzTzJWJwxV20ESYTP
	zMor0Fnbp+7L+4+r6/Y8yhvH0e44V9Xe7w/cN++/Jlb6/Mp1WW8tR1qSVJKN9hsHUeysjiWcuPjz2
	S70WmRIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7YwK-0002N7-20; Fri, 28 Feb 2020 06:16:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yv9-0000L4-AW; Fri, 28 Feb 2020 06:14:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so1916813wmj.5;
 Thu, 27 Feb 2020 22:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K8JeMMhWRctus7267Io0iVJS6S3sXLRQ7sAyYhtTk6U=;
 b=PkDQqn4IfrkR95joYJSIQr1vwu7N4tEy3FTCOgp1MASfZ5B4eX42l22pSHvNDg4VbU
 Aol3iyfGZvpV8jVhb8BUxnoeo5XhB69R9gyJq+1yjs+ss8C7tx7C+vkU5ZNwCODxsF5y
 s4k3V5ilGwWxveBymFNnuY2EgK62sJwV9UCqmW53G3QjtHcw6ltNNQyHdrFl/xmSBmRY
 XbSL6R1tzE+YRAu8WzJJaLi5npTnknfmEnCy/zpf6XbZwskojtSS9rcbtF/AZlz3bCTu
 mi91W/HKUn2PJhK7IWj75/V9Zi7CXnnCCr8Wkk8MHy0Osh7sSbNW0ahbB7uC5PFjhO8Z
 NfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K8JeMMhWRctus7267Io0iVJS6S3sXLRQ7sAyYhtTk6U=;
 b=j0gk84PkXHcZBWW5ExiMOmgOP9c4pPWK4WYothWJHjhfADZYdWsk/PMKT2A0eH6K7K
 1yWxihEs8an6PgFjcK8LjUZb4xaw5ORniBNqyPRTThjFXvvJeAIa4k4CXuIeuxnbr3MY
 c2t5I6/4XUjjXvcluqxkt71RU1ak1635BAIOh1gZhPasiCPX4EwQELtCDh5nRDgWLWdA
 BI3XEbIcD6SaqEjZ02nywOZHVgY63f8IwsZCznS1Q8HG6G+QCII3OHsdjJfT1YTv3O2g
 E799fVr0cYxxWq63xrUFRbs7swnlfDejdqS8OQT3Pq1e2+NQB8bbTcxOaQgtMQsyiVxU
 ewNA==
X-Gm-Message-State: APjAAAVJoAjIeda4I37KLlNrs+FWpu+9QhYyZ11/eJIee7XBWiFfDpLq
 GHEp33trcvFWBQyRre3RFuc=
X-Google-Smtp-Source: APXvYqws2FKIOQBYK5QacYbEvACBYX92jzAaAdc8ChQ3XWXBMBbvIC/43wn818U5yWZfpS4kmKMSKg==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr2876961wmc.145.1582870485825; 
 Thu, 27 Feb 2020 22:14:45 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w7sm682554wmi.9.2020.02.27.22.14.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 22:14:45 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/4] arm64: dts: rockchip: fix compatible property for Radxa
 ROCK Pi N10
Date: Fri, 28 Feb 2020 07:14:36 +0100
Message-Id: <20200228061436.13506-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221447_358921_7FC21E9F 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: /: compatible:
['radxa,rockpi-n10', 'rockchip,rk3399pro']
is not valid under any of the given schemas

During the review process the binding was changed,
but the dts file was somehow not updated.
Fix this error by adding 'vamrs,rk3399pro-vmarc-som' to
the compatible property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
index b42f94179..a1783e7f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
@@ -13,5 +13,6 @@
 
 / {
 	model = "Radxa ROCK Pi N10";
-	compatible = "radxa,rockpi-n10", "rockchip,rk3399pro";
+	compatible = "radxa,rockpi-n10", "vamrs,rk3399pro-vmarc-som",
+		     "rockchip,rk3399pro";
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
