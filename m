Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852F7245B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPRPNg1b7Z0UJ4WM8kO4UvFSttvIl7iRZJQ091JSAoU=; b=qdqW3+4a/pjT0E
	70AiSBJsNHjU3n5X5wl4jN8qUafIMFZLKAUq3RJNkiYackBecRer/8pT96ZGin65iXADFkjPNTvBg
	k6vphm/eOlSbMvMtjPS2C7I6YQtqc2KgY+KtGtD2Hb0WoHDusdkAEVjQYl3/0ZdbVCkLsAJHvuOHv
	Izqit3MoR3IPB5Vbe58cboMne5H5DGVVrWoNTQxE5Sog7XcdNl7D8Vz4EQkl3NBH5pFSxZXPf5BcI
	oSRh7cAkLO+KGhcNp72h28/Eft5OGHTm/GG2XNzQQTcBFEDgUKGjmj45M70C0Q9mnunqjHZUcGgNW
	xNqAO2S0FGyCLFTDNA/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStqS-0002Bs-5b; Tue, 21 May 2019 01:45:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpo-0000YT-Nh
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:45:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id x132so11770802lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RK6ndkRTWz8BRsPXZTsaKWRwNL0f5R2SNYL8g1PubVY=;
 b=m8L0MhneslWfs8zILaKLkvnV4qkG+9Dr5TR3XOk4BbPIsBj+2s2F/fIPUly9/riGwW
 9ZdXSPGjyqTn4zR1JiIRGIsYjof7qOOl1oNbPoArps16o1dgLIrUoGUus7p5Vda8V/Bi
 2TWN/7VoSGtBFY/RjRn8YscvSEiMfxH0KGMo6ZOK9V7k3OtThebhJBR6bQwkGGT87To/
 mUvNVRoqnhvvAcjdTY56XFQObKFNkj4pgzHwfvoggAcqzkX7Mu8U4UytRO24fiaE31aM
 5jbyWd2+JmDlpIDLdLB8aSKtRTvMEVCdOR0e56P59uZu6vDSk/wtAh9p2XtNWyYSNMkx
 OisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RK6ndkRTWz8BRsPXZTsaKWRwNL0f5R2SNYL8g1PubVY=;
 b=GU/Yz1i99VJFQbojNCa/Y1PSVLm2C4trbfRHeJ7TPdBZiPqSmS3THTXqbfU/rkiFVP
 92M+QsaAK/UlDbkAbQ/brJZVIGn3GzS4NKp2wTDignm932K0EHoY8lr0ECYtzzkp61dT
 eIiQNzf285TQNWfE2t9boLYLIMQhcl8SdsNnveIRFqT1a0eC2qQFTz9HyemwyunzCz1x
 xn2wJYPLp+bq29pzcvF26C6DCsTkyAmFF/jg2tZ1DPGJQC6ux7/XjEBg3bXxpzV1Rk/1
 6/rq/Xv99wn7Q/cMqdazr0Pw1TDbwVy50bC7MQ2TBJSwZTYVFC/gDTHGsNXQz+dgPE/f
 ATiQ==
X-Gm-Message-State: APjAAAXKbHbsQVJ0WCOTNcGyazbsCFX/p6nocJ/jeM6VlXxquiVWPkWv
 xsil20rl7Ktp9y8f36NFmO9uzSLeDBU=
X-Google-Smtp-Source: APXvYqyh0GHaGr6jFlY59jHI6P3TZiiQcsggMhFvMNMzX6nENf2o57g3xCY1vLyirMuN5R436SZY3g==
X-Received: by 2002:a19:f501:: with SMTP id j1mr17459564lfb.156.1558403094683; 
 Mon, 20 May 2019 18:44:54 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] ARM: dts: versatile: specify AFS partition
Date: Tue, 21 May 2019 03:42:20 +0200
Message-Id: <20190521014230.18463-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184457_096235_C75CA93A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the AFS partition parsing on the Versatile.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/versatile-ab.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/versatile-ab.dts b/arch/arm/boot/dts/versatile-ab.dts
index 269e6bf99ccb..37bd41ff8dff 100644
--- a/arch/arm/boot/dts/versatile-ab.dts
+++ b/arch/arm/boot/dts/versatile-ab.dts
@@ -161,6 +161,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x34000000 0x04000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	i2c0: i2c@10002000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
