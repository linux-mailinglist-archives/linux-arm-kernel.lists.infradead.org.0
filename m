Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BA217E323
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 16:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7YaJ2VY5uKO0q18dqbOYBAzyHDevC7t/1V7KtIeQUcM=; b=Md1
	3BZ6NOmEYG5wVzj5cIsUyh4riIyvx5efyQ+XbXSJHW7PVdUPRy/Oi6KKNy1Pkbe+p/E8ufIpGz4SP
	izMh6gFMu2YJ/JN9l1Ceb/IJv3OWOPEkjoVlmrBVEtctLXZKRRjNTkNk8ehwbXNKGKVPs/GGic2w3
	o8kO/KttfJKB89EU6Uuf6E/g29BJBeraD9IkVs1pPqmdeVoG07TEVHGo0YUN0t2yo3va4MN4oD/0S
	qGfdtWzBBzVll8SrpeghDPaxPj0Q0XF1Rx8DFxnChbA69elJA74NmzVjkSpx6vVxGENYLnZYJ4JMg
	PlwXLwvLFv/q5QQIzTdsBiVU69/DelQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBK2w-0007vh-Lr; Mon, 09 Mar 2020 15:10:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBK2p-0007um-Rw; Mon, 09 Mar 2020 15:10:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so10365808wmb.0;
 Mon, 09 Mar 2020 08:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=U+y57M/rwky9fHeiAUJqwYXLvMGk7Mr/fhYU7FCY2u8=;
 b=tZTrZa0oNuLyQv11zAAcrtq0grxpPYhp1zxIKI4a0VIs8CL8ZLdsS3z8zCRsAnfvD1
 Fh2B/GNWvhu4MK7xZI8iHZDz6EyMT2KsbATqZuuZEYSSzpf+uzf/dklsVS5ske/33bOU
 n03FPaEswHbiQ3crXKvQh17YXognajHPvTACDe/zyzsiwRIvJYpYLGLak4KiYjvei8nN
 89h4Gm7U67nwWgnmvW3mjBctNi2T6O5ECa+NfmmOZB+0QE4b+c3wLtyZ2uxUDNdHeZIl
 hbgEyUUIElBp2CPNd9z8RJejneRPkAfWYQTXZeOzbv4Tq2GSt6ttGxVeng+g0GPVvlU2
 gnpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=U+y57M/rwky9fHeiAUJqwYXLvMGk7Mr/fhYU7FCY2u8=;
 b=pMCd7k1yoQxFaqCB52hS0vrHnch/oBW1tsJmUoJsQlgj5zoSOpvdEdVEJzWxxlfw4i
 TlQ+AJuI5cmOZC6zou8grVd9B0DP5X8hnqDQCVgOCHu+XNO+aAuez1y5ZOXdNaN6vABp
 DdEZy4vmIzTpAubaP8u2WJMUMbLPzuRx16ftR8qvL+n1l4MJUQoAealSm01Y4To90pim
 +jxb3wSuLGlZTOb5hpilp6HBHb/unlYO38BNRlTB/iL7wM+cpOowlTtykqWeMYVEsbD1
 fb2zVkhoNqryKBvHdG+Giga7sC87LoVhDSUzrL61us2mt4z0PdrGMzmcojWzdCAQnoF2
 gD2A==
X-Gm-Message-State: ANhLgQ0G7ejMmSmnurRvvDgE1KYmlDfyXuMCwYKloKwVxafQOzlBR9rW
 Wy5pF1xYtHtp25C5dXhVbww=
X-Google-Smtp-Source: ADFU+vuIh8QwHVhJYbv7DsubaXn6DdBzZV5DDINm8Si5KimyjUsAHlSO6/pgcWLTb0gby2sl9svLyA==
X-Received: by 2002:a1c:ba85:: with SMTP id k127mr18161799wmf.63.1583766612973; 
 Mon, 09 Mar 2020 08:10:12 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q7sm7969813wrd.54.2020.03.09.08.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 08:10:12 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH] spi: rockchip: add compatible string for px30 rk3308 rk3328
Date: Mon,  9 Mar 2020 16:10:03 +0100
Message-Id: <20200309151004.7780-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_081015_929279_CDC75D0E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Rockchip spi binding is updated to yaml and new models
were added. The spi on px30,rk3308 and rk3328 are the same as
other Rockchip based SoCs, so add compatible string for it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/spi/spi-rockchip.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 2cc6d9951..70ef63e0b 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -843,14 +843,17 @@ static const struct dev_pm_ops rockchip_spi_pm = {
 };
 
 static const struct of_device_id rockchip_spi_dt_match[] = {
-	{ .compatible = "rockchip,rv1108-spi", },
+	{ .compatible = "rockchip,px30-spi", },
 	{ .compatible = "rockchip,rk3036-spi", },
 	{ .compatible = "rockchip,rk3066-spi", },
 	{ .compatible = "rockchip,rk3188-spi", },
 	{ .compatible = "rockchip,rk3228-spi", },
 	{ .compatible = "rockchip,rk3288-spi", },
+	{ .compatible = "rockchip,rk3308-spi", },
+	{ .compatible = "rockchip,rk3328-spi", },
 	{ .compatible = "rockchip,rk3368-spi", },
 	{ .compatible = "rockchip,rk3399-spi", },
+	{ .compatible = "rockchip,rv1108-spi", },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_spi_dt_match);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
