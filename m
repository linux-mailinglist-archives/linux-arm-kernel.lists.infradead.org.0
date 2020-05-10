Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0E21CCC4D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 18:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yjA+0k5QBZEIZd+KI5GWRTEBhskaOx6FOm3gRD/YzLo=; b=m0b
	f0smK7ZbXJtQq1lkjrYiTJzrJ3DpC4JV/DKFQsJZAwEM9iCIKsm82d3YWyc7tqz6lO86yUscOEy+2
	2DQ7die2zvKsVq6BTGsjJKjYCzUql08KLVob1JYOco3YUicJ/dIarvD4wWW3ndajknoL00GQj0IFW
	mPNUjeLCBRitR6fTgghRcJLmZrWMxH8Ej5+E4WzGP7Ss4hTKQ43hpfMQrFlfgDZ8lNL6DU6EBT/sr
	zBnw6/7xYdTuQVIC8g3942p+W92/pl6A0BZ9IkiB9xWx6Wgl68MRz4VerNSM92vUTAgw32DJGt3w5
	S5pW5JnCG8pgepzEf1l8VdpdZM5Wtdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXp3D-0005hH-2O; Sun, 10 May 2020 16:43:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXp36-0005gp-46
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 16:43:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id b8so3359497pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aigOg5gQEpwZX6TVcV43BjngoPeN7YUDWqGIdn8mcQ8=;
 b=khq4y1hNRG8OhmyNn7NvMqv9a7mZw2wukaDANjvDD99BDCNpEudypJkqqNEHUAB8RG
 tVq0ec1g0LGQzn2y9MS13B/btoXqlmCWXwyjbuvMVOqWDFhejoRRaTx2O7TcN+gq+m9E
 shjUbvxOdHJ7ug6xffGiwt9LvJ1/CjWtB8NwcrcJhQlrKJoDpmbFOJQTp4AvowSzbaz7
 8+zjKTNhkA6rlMnF2l16/x1gYXDG46MUuq9TrpTL3XpWk4M1UQCcg8M26vrUZhqLFt3P
 lWmmPkce1BQmzH3W+hakWpNzdohOA1LKS6rV8Qr1UJ+grmkzU4c6H01MdEEggxv2r+pV
 2XlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aigOg5gQEpwZX6TVcV43BjngoPeN7YUDWqGIdn8mcQ8=;
 b=CFyxpQNyZMmKTZ6/aBPY2Kjah8VVxT71d/0IHKTszxambMafMC06D3EN+fI30xH0uM
 zUgW7u+07OB5MrjkfEfN7ndD/dWa3VpRR7f3amXUe+yN64mPO4bg55nqdxJQ1ufp7jx/
 uxVIzi10qLcyGC1asX9qsGhCsUcwGPeqA3jHhk4gqkRkGi9/Nxay9HN7iq3d6ifQMCKy
 ZWjwGwaCHUuPf3ylvW58QgDfI8VR8XU99I9oJycwa19xBpSp2gN4t8Anz+k6NrIlNCe8
 0RXBIK1VWAnmU8Cvft00+cnIQUEdIohqSDPdFpYIERzbEIzFvsAquhqbyzhdAKBJPnk2
 Cg9w==
X-Gm-Message-State: AGi0PuYXlWCNvJE1d75gfzQcP7bs5wsBmv6ZD9HfbGYUruaq8YOW3nya
 AIOZMYoxaJbXEywuWNpdIT8=
X-Google-Smtp-Source: APiQypLMiEuEZZF4ah053NY5YQxO2V/O5GK9TcDNDi2axL6JLtXnF6naxJ2CzlC8oMNsa7cdRFgeEg==
X-Received: by 2002:a62:1bd0:: with SMTP id
 b199mr12327968pfb.283.1589129010366; 
 Sun, 10 May 2020 09:43:30 -0700 (PDT)
Received: from localhost.localdomain ([150.242.175.127])
 by smtp.googlemail.com with ESMTPSA id q6sm7047745pfh.193.2020.05.10.09.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 09:43:29 -0700 (PDT)
From: Harshal Chaudhari <harshalchau04@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] misc: xilinx-sdfec: convert to module_platform_driver()
Date: Sun, 10 May 2020 22:13:08 +0530
Message-Id: <20200510164308.31358-1-harshalchau04@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_094332_186048_903C27C8 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harshalchau04[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [harshalchau04[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: harshalchau04@gmail.com, arnd@arndb.de, dragan.cvetic@xilinx.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com,
 derek.kiernan@xilinx.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver init and exit function don't do anything besides registering
and unregistering the platform driver, so the module_platform_driver()
macro could just be used instead of having separate functions.

Signed-off-by: Harshal Chaudhari <harshalchau04@gmail.com>
---
 drivers/misc/xilinx_sdfec.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 71bbaa56bdb5..db16a42c66f4 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -1484,25 +1484,7 @@ static struct platform_driver xsdfec_driver = {
 	.remove =  xsdfec_remove,
 };
 
-static int __init xsdfec_init(void)
-{
-	int err;
-
-	err = platform_driver_register(&xsdfec_driver);
-	if (err < 0) {
-		pr_err("%s Unabled to register SDFEC driver", __func__);
-		return err;
-	}
-	return 0;
-}
-
-static void __exit xsdfec_exit(void)
-{
-	platform_driver_unregister(&xsdfec_driver);
-}
-
-module_init(xsdfec_init);
-module_exit(xsdfec_exit);
+module_platform_driver(xsdfec_driver);
 
 MODULE_AUTHOR("Xilinx, Inc");
 MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
