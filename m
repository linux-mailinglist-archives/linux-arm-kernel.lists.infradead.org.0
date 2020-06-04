Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C131EDC8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 06:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=62XlEvh3c+d2k5KqGQAefCqvA9BIwMBTGJRaOtYanoU=; b=Ou0
	aOH8efWbU9I7ieWaKSlL1OK36MQ/BiBuEVMDDOa+DHn+gaYye0msiIRv/c4vy2lPtgUAr9osJmgul
	r8f5oinHnY4klamnJkMJnuXjC5p/lwABYyaCJNWFV/m+RPVK1Tvcu8wrnWc+qeBDAgi/tiPnhTcXz
	bs33cYWo+TN4QtIXVYKxYbVBmPsaK5IgxYeN6DgMgUFYhKQyGNHbSwHY3ISTwAMaE88D5Uyu69XRK
	78YmgcR7wz7UiF77hAZ+7tTyMtbGFHoXz8eJPAzdNffIBwdqLV3oq2NvQ2fB3ggkH+mriwFdu6u7n
	TcEh7xU1J9EwLip+LQ3KXqX/PP8z/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jghnj-0000WL-9f; Thu, 04 Jun 2020 04:48:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jghnc-0000VP-TR; Thu, 04 Jun 2020 04:48:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so4184601wmc.1;
 Wed, 03 Jun 2020 21:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NiqkpM/w+JZs4P0eo38xaVvQUC+7sYCnFp9tM9zgNlA=;
 b=RJpHUHZJ5rtlH079jZ34c9Ewd/nRRN5UOZHSp+yOrq7oq1X1YRuhV/xC7y/GC99ETN
 r1z6+NUygzg7z4z1CLlUN9iJJmDnj+BY6uVNX0GnLjF39TbIPRHpOt9NUNfZ78ZATKLl
 FnXo/Iy+OfVPLILhSPfkm7QIo7ipgGMwRzhPY/DOQ3fvPTW7eYZJy3Q2fKiCxszTLNGB
 sQqjU2wy9G3k0eEkBMpb1pYgHZtU1XUhHKPFSP4hjPlXj3fX4c8A4XUAx+cqjMUzhyM2
 eoMKw8uGEDBYEAil1sOLx5tdSMuGeJIJCEQ4WRNMetTUl3HvVEOGycjqNOA70ecj3F85
 ulMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NiqkpM/w+JZs4P0eo38xaVvQUC+7sYCnFp9tM9zgNlA=;
 b=cuoD5xHaFJrf7PlhVqCBoncW8/xmLedywsBHY5Jrxsbq8wiUiYIpBVzo73cw/GqX6e
 hUz6LEXKHjJdBuK12oiHbTPwY+EE/6CH3LUQOPqbR4smnX5pd0ct8Q7TIpZwCHvQeZGG
 e6pbAKfeVB318qA2zs6C5iyEjm6rBnLU9vQRWmmr3sUGeShCAm//L7NkrXF8FfWIEcpm
 nss1BCNzr8hnrYhbv6AKMDO9GZQo7MjZgD05drc2k9Ud2KJD1Jj4tfR5EekjEKXV0J8p
 yxtjhRMckggtvSJbSNWSSoseBJ5UtDVQScApH0TDzXPPVDadF6xgiLFUh37WDO2elu46
 0cnA==
X-Gm-Message-State: AOAM530whcxG/Ap2FcUQbZK7ksYkos/qKX8dIdXpPN9TPFWjF0GlDtU9
 rxK/1xvJKMZhyz0T/dPHBnA=
X-Google-Smtp-Source: ABdhPJzYH0zI5Nab6ZoyXhJ1nGO3ZWVm28otZxnBQpZbtdQXXLh9do4Nkd8vrhaCUrRwpae8ziyN0g==
X-Received: by 2002:a7b:c353:: with SMTP id l19mr2222544wmj.187.1591246092837; 
 Wed, 03 Jun 2020 21:48:12 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id a15sm6349708wra.86.2020.06.03.21.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 21:48:12 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: amlogic: meson-gx-socinfo: Fix S905X3 ID
Date: Thu,  4 Jun 2020 04:48:08 +0000
Message-Id: <20200604044808.30995-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_214816_949843_DCCED42B 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current value is taken from Amlogic's 4.9 bsp kernel which appears
to use the wrong ID. For comparison, here's before/after:

[    0.152237] soc soc0: Amlogic Meson SM1 (Unknown) Revision 2b:c (10:2) Detected
[    0.152463] soc soc0: Amlogic Meson SM1 (S905X3) Revision 2b:c (10:2) Detected

Fixes c9cc9bec36d0 ("soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs")
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 01fc0d20a70d..c38a1e4db28b 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -68,7 +68,7 @@ static const struct meson_gx_package_id {
 	{ "S905X2", 0x28, 0x40, 0xf0 },
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
-	{ "S905X3", 0x2b, 0x5, 0xf },
+	{ "S905X3", 0x2b, 0x10, 0xf0 },
 	{ "S905D3", 0x2b, 0xb0, 0xf0 },
 	{ "A113L", 0x2c, 0x0, 0xf8 },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
