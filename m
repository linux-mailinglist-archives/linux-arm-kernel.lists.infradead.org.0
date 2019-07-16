Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F186A200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 07:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=35eIJI9halIv2J3JV5/nGisKMLhlKJcVFsIGpcOFqYc=; b=WJkfeOCSDG/1vY
	diWQl471x5r3QRSt55qgbKD0wvVYPDor4uek9qvOC36ZSikcWr07rDcVWdLvmHIFQygJeks8sMQ4y
	P5WYTQsxv2VFiQoNwvmKCYWBZltWXuM4QuIRPsdveFfgTxvS8j5fywTW6YiR/71ie30BvGTjF6u9B
	9ZIX6Ug2NrepDNmLIvtYo4mfv7EazYxi9+RkJUAdJFXjLW4zwycFjTVVJr+KKaTFt0U5ECsHAqxqT
	xfyofvWHvzcVFfPbez9uCeL/q3915VQyxUzAdQk7XpEg+QJQA6tj/aHBTc0WxJZenyFNR+74KA/YJ
	VbUpmT6UPCSADDUbDA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGV4-0000aR-FS; Tue, 16 Jul 2019 05:59:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGUm-0000Wb-Gj; Tue, 16 Jul 2019 05:59:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so9505455plr.12;
 Mon, 15 Jul 2019 22:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6l7dCx5edcO6RwvaAinlu+M2qmX8TDyHV2A8jZAyY8Q=;
 b=i92Tmb+Bal3+8XJqpnTg9inAk6FNoZv4I/FihJEuFZXhnG0D0D4hIXa94lhe2KJk8k
 rvezLDbCgyNbFMWBT8O/kz7NRM0+NvzV+dK9jHUq84WKoH9MmXv0O9dS6FtrjrQEMBNv
 r3JTgsWg+opPqpMkWhrVmE/J7WoAa20OaMig+ySUDxe8JiPwq4Iu+IGE/F5Dvyhk6ftN
 RQhS2Mr6EX2d/Sbh0124BIKBWJzqR6ixjL1+mqT7z3rTZCIlhPfFcnM39luo8HWToCD/
 wGWVfxRQIuUCUniBGYzLSCEx0T7prZ/sn3uy2isSCd1OiORZTLi/S2stcMv6OYx6DY5V
 8LDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6l7dCx5edcO6RwvaAinlu+M2qmX8TDyHV2A8jZAyY8Q=;
 b=VvbBZ+456iRw7qLb3HMSG4Vo0VQ9dc/JhiWIjN7rCRJOfCkhqLBQUb3Hu+SNyfrYcX
 EfKmfiuTDrGyW3YmXgABvUF7POZkZnmZltdDGyPNMNkI5PANQZC+95L477rUXC6SaR6C
 Tf4P4/L7KNWSekvTDmjvPpB/NjuQ1YGfd1jR9XGNKHhN/N0xAIkMcTl5epG2VgzY5hb/
 831BWsXfxgPmnk2qvZM7IxDRKFnXDz0HlvrSgvcBDp3xuq0oTWO5rXOP0J58vslqQKlE
 EBJUtx1hyajp3OmH2NK290p3P2dk8o2dtDM/+NybFjz0KSIMg3XuiBqvS+13qQvIgXbB
 XS3A==
X-Gm-Message-State: APjAAAWXN5TLt9A4vLzX96VWV5je1ln1c76lJnQx1f8aOi3+sQ1bZlPd
 eCU0SNhHKzf99ke0BrBbNbQ=
X-Google-Smtp-Source: APXvYqwCf6KtHt2GyDgvCvteTRTOTBdHkHuk8xPTjXlosefuw+fShIhw1w8zMJCW1TlCUQJEM1N2DA==
X-Received: by 2002:a17:902:e512:: with SMTP id
 ck18mr31355635plb.53.1563256763728; 
 Mon, 15 Jul 2019 22:59:23 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id w14sm20801735pfn.47.2019.07.15.22.59.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:59:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, matthias.bgg@gmail.com,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] staging: mt7621-pinctrl: Add of_node_put() before return
Date: Tue, 16 Jul 2019 11:29:08 +0530
Message-Id: <20190716055908.3183-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_225924_867867_FB94557E 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_compatible_node puts the previous node, but
in the case of a return from the middle of the loop, there is no put,
thus causing a memory leak. Add an of_node_put before the return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index 9b52d44abef1..d0f06790d38f 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -358,12 +358,15 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 		gpiobase = of_get_property(np, "ralink,gpio-base", NULL);
 		if (!ngpio || !gpiobase) {
 			dev_err(&pdev->dev, "failed to load chip info\n");
+			of_node_put(np);
 			return -EINVAL;
 		}
 
 		range = devm_kzalloc(p->dev, sizeof(*range), GFP_KERNEL);
-		if (!range)
+		if (!range) {
+			of_node_put(np);
 			return -ENOMEM;
+		}
 		range->name = "pio";
 		range->npins = __be32_to_cpu(*ngpio);
 		range->base = __be32_to_cpu(*gpiobase);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
