Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C93C16304F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aDUl6vnfjiRibEvBY+8IxGsigqxRrCbAY6xxTVnOiXc=; b=tf3h5qL0XWBH6XhgT+RIW9PI6v
	/4fauKzc8oWVWGA0Ax2h5bYra27bXxjhi2X5Req9s3lQeqZDi7UXwVeF6+18Gx8LeI/V6TRuQFmFm
	Ep+9DL1qH9JWu9YBbGOfLcjICcgjXudaVNaaI3IsBufR3pIeCPgqaGxh5//QWij8eIQdSyu1SZKTg
	2k0Zpo7Xs99zUBKX+eloxmFV9BK3mPFG7qMa95/VIE7SkyJwbHh7mStz0o65vVrzjSUIEUJpB3lSf
	Tj4MvU22X5I9QhCFvIOPnSO6eN/CNas+YPm7ceG4oO83R/+P9eKL/+S6/reWL+VUB8o30QHnPF/CG
	MRezB38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48hN-0005KH-J9; Tue, 18 Feb 2020 19:38:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48cg-00080L-Vb
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:33:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so25372378wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 11:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9BZxWx02OP4buIGB38mrXrqxMYCE34rX+OIKJheO44A=;
 b=vHu2+iekn6Oz45OTWnDlijL1xIyW4xkjqGKkztYOlh+VqZjEXxOUZogmPjm0uhL3/V
 gJav+pFLI7bnwITiXHYBTJOQCt1H18pQPE3Ji7+43gVecfGmcg27f+q5JhGAiwl9bXgb
 Qxll7KGR+q+tUJ9rBM2IMx6DMbSMEDNR4z+B4NQh9q+qvRk1d3gwZ0gN43pQkfCocdWP
 kSqpMOKEQC/fKZQ3XDc7jWmKUngekWsp8nTHflds91EXP+wpw1qdJg9DedOwHzg8ttPs
 6skwhW9aMZq16dU+dI+RSXH0UUh+6C3E1q1QvVPxYFSptHKzp4O6B0vVsRRgsjuOdTXG
 2hDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9BZxWx02OP4buIGB38mrXrqxMYCE34rX+OIKJheO44A=;
 b=UHUgBeLVBDi1vO3GYet4hA01ThsA7qGFPdBHnZO7QB4c5QH9p1sgyhCNKrrTil6tpp
 o6MxYn+tUVmOr59DFC/7JbC/dbssVFEXrKBvecsb6LLuSOZrPhHmpUZgGYS7y0ubee4g
 AHf5DtyLeniXK8n7PP25NgPACbkrb188AQDAkUadNOdqkxRPMaAbhJl02L814vemVo8v
 zdZEjy0t+S26BGzBUNCR4tF0TgqChhtCzwsov7NIo2UBoizV4TNGEcLzz+gM88JDB1Wd
 WGoM01zfhJmcivPsvksrx314Nxbz/5N7BWEhGQ4O+V09nANyUS/vrrg5gyq52J5BuRsO
 2Z3g==
X-Gm-Message-State: APjAAAU8u/5OK+nKsg1bJWavlEthWfOITjBz7zUxchq7UfqROdPSvWuU
 x/0BKeuvepU2PZMlgWz11UsPgw==
X-Google-Smtp-Source: APXvYqxAXsDdhHT9Ljp22hJpRE2F0hVTr7iFO7n0ITXn4kLzmd5GWP72gHNUHkKcm9jzsYtEYezbWw==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr32460635wrs.213.1582054413698; 
 Tue, 18 Feb 2020 11:33:33 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id k16sm7649266wru.0.2020.02.18.11.33.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Feb 2020 11:33:33 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: alexandre.belloni@bootlin.com, b-liu@ti.com, balbi@kernel.org,
 gregkh@linuxfoundation.org, ludovic.desroches@microchip.com,
 mathias.nyman@intel.com, nicolas.ferre@microchip.com,
 slemieux.tyco@gmail.com, stern@rowland.harvard.edu, vz@mleia.com
Subject: [PATCH 20/20] usb: musb: core: remove useless cast for driver.name
Date: Tue, 18 Feb 2020 19:33:03 +0000
Message-Id: <1582054383-35760-21-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_113335_224552_B9A188E8 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

device_driver name is const char pointer, so it not useful to cast
xx_driver_name (which is already const char).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/usb/musb/musb_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index f616fb489542..d590110539ab 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -2945,7 +2945,7 @@ static const struct dev_pm_ops musb_dev_pm_ops = {
 
 static struct platform_driver musb_driver = {
 	.driver = {
-		.name		= (char *)musb_driver_name,
+		.name		= musb_driver_name,
 		.bus		= &platform_bus_type,
 		.pm		= MUSB_DEV_PM_OPS,
 		.dev_groups	= musb_groups,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
