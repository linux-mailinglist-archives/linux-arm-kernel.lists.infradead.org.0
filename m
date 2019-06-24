Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1433351A8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOBozFvU23fHec1xAphvxkNXYvmKcLkx3pzruUC9M2I=; b=aplSq3YGMLBuo2
	sBDGsJ49XauMJFeOVuW2hDM/foGa8d7Emo+cSnML2xWvK3/S6bDRn2IlylWhUtaU28AeWGOWtu9Ed
	fWwt8EXEds8ZbqR5NewXeX7xqlOt95sO1E7ozit0ArMpRmELfUdteIWlVg6sw0wC7fE0Lk1v/TI1C
	bmT+2GuDhhUpr17o92cI32A/KIGdJD2yRWBsvb7zB22yv/Jm3Pb4ZlHhqySacv7QnxlG41bTb29C4
	nle/DZzJ6GRKxsDHd7XlG5mi4EQvAiRZ7Cxtz4JvL1g6bMd4Ghs0Ze1eh+6Yobi2ikesgruEJV3ei
	dhzlLXqrjWJZpcLeyt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTkr-00035v-LC; Mon, 24 Jun 2019 18:31:49 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTkP-0002uk-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:31:22 +0000
Received: by mail-pf1-x42f.google.com with SMTP id q10so8008209pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 11:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N9k2pKjZb54DMa5kX/oQwQ3xn0qUY3cVYn7J8UKiKqY=;
 b=u+01cCsoBn0eTF+qRKLgW5kpdZ8s3lQnk5Kmp8Aba10JTlWkVKp2VoNMSKVgNAPiD5
 e1HXWNZPMnSvkH37mgvSroZKJPVkMHZFN0YRfz4KJU7tRWTkwj9xKEUsnsdmrJjKfLub
 CFuaKTgl65F+l35kFjTdxy7zTQPRGh4iUU07e82i7HVuQc71DB19XAQ5S+mTAQDGGZZk
 jJTUEOvEyvrMsXKiktrNJ306TF6uYhH3j2HJPwzi6DWuaikQFUcBdJDm8CTFfxTL5YIP
 6dsUMPbH/iZcD7p6PURIxWRA6ghT29qyvq/mklVG9aPSoyGq/aHgXGiESuMtbt9kW8BD
 ugLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N9k2pKjZb54DMa5kX/oQwQ3xn0qUY3cVYn7J8UKiKqY=;
 b=CdKW7XXWQAG//OTUeVBxYITiTdiOsLGujbix+1KYp4P7910Q0cb0K1DO5+RFS6pygy
 68SBmoJa6w83TzCv2TuUFL9CorEl6dAiPaMrVDhTaJvM67uFAvO3QRmTl6n0VKj81aVm
 v330QgcaVGFl239pc8imkS1xd8OiqXkZFt7LEj+Echxc6NjoTUvr9L2YBFQqPT4JCgQ6
 EHd6FJ228InWoxcLhh+fDb9eFcDfgWGoIBNV/itulT1gOnikPdcRFR1nHjjlKxs265Ze
 PojRJmCvdLOvVaTAFybqg3YiZBOgDigenbY5vwmKjlUijq8F/xx4ZXI61u13Nt/CvjDj
 G9YQ==
X-Gm-Message-State: APjAAAXOaTig6CosbKhkPLqciRFkVkfls7jF0bjde9DqdParCW4FqLGj
 6r3hbyWIZn80M/ebSzHCsxTFXZSYUik=
X-Google-Smtp-Source: APXvYqzt/EgsBU2koGwoh0sXdF9NT5zTgPCxnFKt5Ea/KmHPijDgxcFo+cdzJLicisOJZ5+o39Jm+A==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr26260371pje.125.1561401079707; 
 Mon, 24 Jun 2019 11:31:19 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id p15sm206601pjf.27.2019.06.24.11.31.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 11:31:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2
 board
Date: Mon, 24 Jun 2019 11:30:44 -0700
Message-Id: <20190624183044.30240-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624183044.30240-1-andrew.smirnov@gmail.com>
References: <20190624183044.30240-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_113121_101437_B24947E3 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Bob Langer <Bob.Langer@zii.aero>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for ZII i.MX7 RMU2 board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Bob Langer <Bob.Langer@zii.aero>
Cc: Liang Pan <Liang.Pan@zii.aero>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..91519cb24083 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -157,6 +157,7 @@ properties:
           - enum:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - tq,imx7d-mba7             # i.MX7D TQ MBa7 with TQMa7D SoM
+              - zii,imx7d-rmu2            # ZII RMU2 Board
               - zii,imx7d-rpu2            # ZII RPU2 Board
           - const: fsl,imx7d
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
