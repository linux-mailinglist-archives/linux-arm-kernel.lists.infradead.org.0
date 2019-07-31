Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75A57BB7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzoZbGVM2kw2JHLz7eQNT1MycIOP9hccqLkMsO5pQ3Q=; b=V2HTJG2VcaICrk
	eByHOS7uJQMRr5bo45NFxma04VtctjENcE8TH1PDEOCcmDF30pRci/uRkVJbpXGbJBjgHEYKAJbN0
	VGICg8vvbhewr/Nl47XPG0ixubE67/ioExQ3OI1n9CbGbeO0wR4AMzYRAZyhCsAlBPOA5RmiIZCwT
	eHgucAU/RAiUwZxY2waNJnDEM3sMU17skh4m5XWh5X+sVeSuN5BmSK9Pa/GovHxrwkzuxPnPm59fs
	tOanw84fGP8J18M+M4L4VYZP2vP2MxsmnrdOX6dqTt2ywXQVMGrnl9W2FmQB1p/PgH4FROUEVNzjn
	zch1yINhmrKT/O4JmUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjuZ-0004q8-TH; Wed, 31 Jul 2019 08:24:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjuD-0004kc-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:24:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so54853936wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0irTfRWSZ70qNvhsiExUstYrNfb3pdmbXdiGXd5JhF8=;
 b=hw80V/InTiJxJH2AH3UWZZ4CUq7Pa/utyGT/q458WHSiUT2ppY7hAAw3/vbHpL2pzL
 K0BuME0L2K/rO30XimBliuprG32Q4+ZOf4s5RxXy0T+VJe5ykeJSwd2MS9ikYUYv9uAg
 YPnUxK1ctCQ5m0Q9iDqG/FMWHMg32KRn5i5hAwe3pg46DMGw+U1N/L0AJOlNEE+q1WBU
 muZlxc7aLEeWLAuGYeFCKYKWZQRK7cfze8F/Yaiu3vEDbdd4S/srnmdzYUV4oCfWLMib
 BIXuCS8AbzXqdNTb7jTfQk2XIiI3mNuPtp+cxw1FRgLlrqskcyfFM9JbohIGDBbKHj+i
 c9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0irTfRWSZ70qNvhsiExUstYrNfb3pdmbXdiGXd5JhF8=;
 b=dXuaHjAD3zRCUQqytL2KcoiQrdwddd+6o8+pGNUowE+FqgLT5HbaxhzbUAGnf2QbNu
 TPnwJPf7/6M/Pi8UzdqoiviqoKFM5DuNYSGW5bipJylvn5uxZ1QiaJzS8FX8RqO7WV68
 tyhAPlz/fRPVy1KlOAe6Do2zaBOKkgGIiTsF3NC++jWu2j5tII+TRq4E5x1JGhBFHl9r
 LRwzTp3Fll9n5obS6vZZn2AcnlxN7ieLWt/Rz4328E6322EvkcNKEqJ1WMbe/y2hIZ+p
 RYJf+KBwAetHTwVf5BZwXZA65TRww+pTfiIaIhFNsHsLOP9+1m9F4Ke/ar0sWoPBERqN
 rLbA==
X-Gm-Message-State: APjAAAXF7UhuGXhzGegzwkc66LIlMStzX6q6k6grBu/JkvYT+u3/nV/M
 1CCeWbO9ckOcQx0NX86ZxxUNhQ==
X-Google-Smtp-Source: APXvYqxwqKJLeF0A9W2Qb4n3Ft9qKIilrEwYAsvkxn4OL2mk5QQMea6ic1fnLlRUSXtJ0oMq56TBkw==
X-Received: by 2002:a1c:f90f:: with SMTP id x15mr32073741wmh.69.1564561456060; 
 Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
 by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:24:15 -0700 (PDT)
From: Carlo Caione <ccaione@baylibre.com>
To: srinivas.kandagatla@linaro.org, khilman@baylibre.com,
 narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] firmware: meson_sm: Mark chip struct as static const
Date: Wed, 31 Jul 2019 09:23:36 +0100
Message-Id: <20190731082339.20163-2-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_012418_178229_95B6E4FD 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to be a global struct.

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/firmware/meson/meson_sm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 8d908a8e0d20..772ca6726e7b 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -35,7 +35,7 @@ struct meson_sm_chip {
 	struct meson_sm_cmd cmd[];
 };
 
-struct meson_sm_chip gxbb_chip = {
+static const struct meson_sm_chip gxbb_chip = {
 	.shmem_size		= SZ_4K,
 	.cmd_shmem_in_base	= 0x82000020,
 	.cmd_shmem_out_base	= 0x82000021,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
