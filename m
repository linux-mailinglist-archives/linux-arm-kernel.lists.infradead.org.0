Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C112F68FA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 13:44:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dwdz0U3glN4zUDluOzHgADJXq/o0zA03NCeCWaHDQrE=; b=A2m2GUJ+NqaP+w
	x263ookRtM2Iq9/oQ4n8TKxgDqvYTZPB/RxmOBro8T2GjiHFfEt0wuTrCKl48Zy7nnB0h7tAr2eHB
	OBzOMYR/gcsO977JoqddKxpHuBaF4t6P+B8UgRy0keVq1MtcJ4Cw4Umq9Bi99Uq5wS6ERsnfUWEri
	naHPSpwmr79/UcQx8GvqsXQ/HK41mHNky+nz6sfwguBOgblPv6PBYmdO3dlt8ROfHmUS7HHxSvU2o
	+Ogfi95xoLA2cwuda/Ehh8u7gOsxyxqimxi5ujNzISH9eN0sACFEKI0IB4KRhKYznpG7f2JlVGDYx
	Ew0vOsawm2b3/kXlKiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTmZi-0000os-Iq; Sun, 10 Nov 2019 12:44:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTmZb-0000nf-2Z
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 12:44:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id y23so10826401ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 04:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y83C4uV1+CMS9qXxIDGEDkXZDlFcKiUT+tBB2iKcZ/8=;
 b=S5tCu1Q/bUWUzoqui0dPCRpuzi6ZO6mnhyySQUfJ8Wq0Sw21KjmuAhUeqMLtXFQIgp
 /CuDTn6oX6LgJcIkQQW5NO0JEqDaHfh8mS2lOf/KCLK8EERkNsE44C3on2wsOQ6pOjYl
 H1P/W6x5qGi+QAJOrQOiqlj/I9dcvNEwyBzIkvDXGk66zCb0DfYWInfROuSUe+q3W1+o
 0Q6umV52sYXfDemaam8ueHnzdPNcWnEbzjGUDisxUgqNSmQ86L8i1l5CrRSN926q04c/
 CAzAkuvfZm0OCMYchvxZJG7l7F2PDMbngOIXDx+prmkP2nYs6q7J7LhtafWXJgC2yANx
 RzPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y83C4uV1+CMS9qXxIDGEDkXZDlFcKiUT+tBB2iKcZ/8=;
 b=TmyD6VGWrTrXUqcY7FX7ImUFTvoZHL/QA6VOa8+hxfHCGH6Wwd0k7d/CjCVDGZJhEk
 iPhArW+p0LAbC0oWu588WTr6SYRyG5SHlE2LFi1ymqQ/D0dqJ6FZlNHX4HE2pYukXRy2
 xL6OD/UpzONQWktShA2ozI461fPatWuufx6vg8fD3eE+o6yNFfSLxIJARGi9IS5de2Lq
 /XVJblylk1unAsopE04KhASreUa0AF28gRkudWj1HAtr2JIVh2r7BU74T04KFFtljN8c
 1i25djoYKizM4P04sX2W+5kr3UfkoeLi2orM6prmShpd24HoWAWmrJw0CqQH5siS7lvg
 6+6g==
X-Gm-Message-State: APjAAAX2oEa5qqJEa4FsHEHRKo72lX6m9chON2RhtSretOPafTJcRQ9H
 JZIVyhm7QE52Al+6LQ6NnVY=
X-Google-Smtp-Source: APXvYqxUIUlp45THMZfcuhEJlbzNkjAeA1+yMttaZdWaX6nYzo2jbjepxuvD6mbt0FR9mIQCgtKtxA==
X-Received: by 2002:a2e:98d4:: with SMTP id s20mr13111304ljj.128.1573389841582; 
 Sun, 10 Nov 2019 04:44:01 -0800 (PST)
Received: from localhost.localdomain (h-98-128-228-153.NA.cust.bahnhof.se.
 [98.128.228.153])
 by smtp.gmail.com with ESMTPSA id r7sm5377486ljc.74.2019.11.10.04.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Nov 2019 04:44:00 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: megous@megous.com
Subject: [PATCH v2] phy: allwinner: Fix GENMASK misuse
Date: Sun, 10 Nov 2019 13:43:55 +0100
Message-Id: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191020134229.1216351-3-megous@megous.com>
References: <20191020134229.1216351-3-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_044407_144126_F792E628 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rikard.falkeborn[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 tglx@linutronix.de, wens@csie.org, linux-arm-kernel@lists.infradead.org,
 icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arguments are supposed to be ordered high then low.

Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Tested-by: Ondrej Jirman <megous@megous.com>
---
v1->v2: Add fixes tax. Add Ondrejs Tested-by. No functional change.

 drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
index 1169f3e83a6f..b1c04f71a31d 100644
--- a/drivers/phy/allwinner/phy-sun50i-usb3.c
+++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
@@ -49,7 +49,7 @@
 #define SUNXI_LOS_BIAS(n)		((n) << 3)
 #define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
 #define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
-#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
+#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(2, 0)
 
 struct sun50i_usb3_phy {
 	struct phy *phy;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
