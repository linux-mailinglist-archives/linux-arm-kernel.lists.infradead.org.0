Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E50EE416
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tDZxLLkzjesvgQAVYRNLQlmE87kzdjvH/RrbX5bykI0=; b=o8wAP5qs3LcvcY
	YE+ICEa2LXJvM7B2rnODhqk31QJQ6JKjaeshQ7bC2Eud/CA4NeztsPvTHz/fpuYBH0eHd1KoGd/vY
	TuCoeyu8qi7YFCBkoiQNQvMs68x4aXhfGM3RBFwYPgYZnWagb2p76Sr6ks/d42mA1m3VxbrDHrMC8
	a8b/WqYtkAkeWdU5hxjD9YPiMg2p51mfTUCoB31wdxPitJatrUcUCGO659sDriwEmqqSSYcoRHrOA
	ZNAPVjAPDHl+DpBsvVY4Z1/fqxrP34iTw5XYXswy/jJ7VJkNlYFc02/uL+ULdKaftFloC6ehZVyMr
	OFQP+IGhH1OigVLNXDSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReVU-00018N-Cw; Mon, 04 Nov 2019 15:43:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReVN-0000zz-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:42:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id y3so18160411ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hu32T7qcZ0u0JC7oNX5YgTqXI2FkV77lexVaCcOwQZ0=;
 b=BIHcCh6qtVlZ/Ni/TrMcHbpHgUKC/FnYPmq28SSQBmw/3MO/kvzzWfTlyZdjAP3qCw
 B+mo7y+nY6e0KUOogJSm3Epd6mFFfcGUcgdJWGIxYMrrvjFVoj+hazSF37dSMHdjUW84
 KW30pdQLQaqiBFRO/y8NVq7CksblSuC2EScKgPHxTxWdx9HPqp82L5KLuBf5q0C3S+qY
 R/MYyA9u8+aF+6Fs7RiR2Kq2S/glLpfcyzUmEZhblIiDPk4v/7uA0ZiyLuBElt+NqpIv
 oriFqfuXhZI0g05tkVTWLjZDUCvfpxL9cpN/rXXr4VdVa2Iw1hMeSl7y5XbhFCMCTFHt
 z86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hu32T7qcZ0u0JC7oNX5YgTqXI2FkV77lexVaCcOwQZ0=;
 b=nPvPIf5rvFzKde/W32bc4uanWjgtcloSDkfpPM0/f1x6jbcAKqxYQENluVmV3ngQX1
 WUP5Lk4sGNbrdfVT9HrX4eX1jHMD6/LCUhx6v1yKmLCUgCbY8GseCcQH7MM3vvJlLpJv
 zJ90n/PcklRc8AvnAIks/Rr8KIGdprpbBvUIy4yN+LpZW5DGpBVpajZ7huk/EAtqUiV0
 vP48q0wJNafVkGVNFZg7De7M0hVnNecNyvIzd1eSEu5tJ9N7kGAL6huTG5x9lx6E/ana
 zkWUza9KWtXF/Kka3crhxfun/zQzmBLZuZSL1steS02FvVNnN8DhtsZHt9KvQk3TTYpB
 li6Q==
X-Gm-Message-State: APjAAAVm1Xb/6v3S7LhVDVPQ+uLkvtt3vO7G+8vv7tCiD7drrxuvPEC9
 tyefrTvO6utnG9crLX17v7biyKcAckk=
X-Google-Smtp-Source: APXvYqwsbpuHtI/gw3gDdXmDBKT87aWRa+/HI/n2yXyYOC0LkWfSJe77cPX7Gqvw2UOon6R2TKBQWA==
X-Received: by 2002:a2e:87cf:: with SMTP id v15mr198347ljj.79.1572882176481;
 Mon, 04 Nov 2019 07:42:56 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id u7sm6059850lfb.80.2019.11.04.07.42.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 07:42:55 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Drop double-assignment of mcde
Date: Mon,  4 Nov 2019 16:42:49 +0100
Message-Id: <20191104154249.16887-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_074257_890205_0C0454C3 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Markus Elfring <Markus.Elfring@web.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's enough to assign the member once.

Cc: Markus Elfring <Markus.Elfring@web.de>
Reported-by: Markus Elfring <Markus.Elfring@web.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index 9a09eba53182..31ab3c136e2d 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -343,7 +343,6 @@ static int mcde_probe(struct platform_device *pdev)
 	mcde->te_sync = true;
 	/* Enable continuous updates: this is what Linux' framebuffer expects */
 	mcde->oneshot_mode = false;
-	drm->dev_private = mcde;
 
 	/* First obtain and turn on the main power */
 	mcde->epod = devm_regulator_get(dev, "epod");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
