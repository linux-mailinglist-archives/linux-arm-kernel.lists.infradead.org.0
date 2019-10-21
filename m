Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E516DF693
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 22:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oqVN1YM3Y358NRiAjbqmUxnOgF3FAd7sSbJ0hYOWEk8=; b=EHp
	roLXDfzWWfCmsK17ag4AENw8eGWJWDDVxafA9l/k36Hs/ynH80U+koF4mmC64D78rPstZqtldpkB7
	FmMjuad3kNVjcTXqxaFPnF6w03DKvUqZk24jYJSsrHPV4KSg7lgl5gwmErtZ/fT13pbuKuQ/UTEAJ
	CFohuG5U47uzuZfYHI95cCvYCOzVo7PBZ8KEKlgPsSZUeV4ULXUrWjkC9o/TvMpzb98BNdjqUiDqb
	kVAWDLiiKqSGEG/T743hzycpWzN/bXLQx8yZjubwMrsjztrvziq8hzRYfdsF+jrXDgn5hJ0c0wzIL
	HO/BSGyaO15GbEU32X75rYFW/yIr5jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMe4I-0005ZR-RT; Mon, 21 Oct 2019 20:14:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMe49-0005YW-Kz; Mon, 21 Oct 2019 20:14:11 +0000
Received: by mail-io1-xd44.google.com with SMTP id c25so17486899iot.12;
 Mon, 21 Oct 2019 13:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xEwJBNto9KAcWmpasBhmnl15oU+oNgu4Rb5htYycPys=;
 b=KVsrrGiu1YeYehU1az8RKsFfg4eBcY0CtUIjyUZtduksDidivB9UnrJlWVUdLlgOVA
 QruyywfTieWlIjSakbJuEMbtHqpEz+RmjFcyVRZXI4V7gCBdIJSFyWk6vSbOPSowIqi2
 +h/HSnECp8fmcx/QO4dOEdxJEjzngN34tmF81nWZgjBExEt4bFLV47uopshlr03ufNao
 +y215KjagRkRaKyww/tDc7H+j8LWHltqQhQvpW5w1nUFlZsvvhEJGiTZBsS/r13ch0nL
 60aYw/d567tToTPYr7qvJYiG5Cl2tIJZAMaIuSe0NkIsLUN1pKnkanpMJ5U3BRvD3Saa
 1f7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xEwJBNto9KAcWmpasBhmnl15oU+oNgu4Rb5htYycPys=;
 b=WT6QPwA87L5McJNzpsgAJxcAZBGA/1T5CbCGywuc+YRudH3OnXlIARf5pYeuRvf9TS
 vd5KsKG2yWV4h4SnvxSlxeyaZlsqR5MR8ufK5N1oV3n96zNsquzrabVgWL8vUDBp4v6H
 1P0t9luKI1keFT4vuYtWuyf07utAmxYdCs/uNaaDFttuVzPzpv7DLQPIhI63mN2RPMPH
 QmQcLml+1wS4FSEcCPvnmSkU/L0440y1dSvnoVSqtw5y1LBS6rf1RWYCj4w139FIiA7q
 VmTAwsLIitlBe6R9eJkXF9qNpJPH9dFZfgQthaD2f9hXJ3u7d6oe2I+3F6pcBOVy9q1f
 B7+Q==
X-Gm-Message-State: APjAAAVZS8Tfpu69Bg/u8WBzmRfp2OV826cDsN3uCvQM2weOcXCbnX9U
 Ukh8cuBy04gWURMfsPmu/zo=
X-Google-Smtp-Source: APXvYqyMysdRd5UuHT5ueyZwzA8prHNYS/S+jS9DrWr/U+gd47kIsoBaBz9G54WFClKzqAEAM+MQAw==
X-Received: by 2002:a5e:8219:: with SMTP id l25mr16723iom.292.1571688848028;
 Mon, 21 Oct 2019 13:14:08 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id m14sm5995877ild.3.2019.10.21.13.14.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 13:14:07 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] locking/atomics: Fix memory leak in bcm2835_timer_init
Date: Mon, 21 Oct 2019 15:13:59 -0500
Message-Id: <20191021201400.2760-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_131409_714069_C192A6C9 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rpi-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 emamd001@umn.edu, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, smccaman@umn.edu,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the impelementation of bcm2835_timer_init() the allocated memory for
timer should be released if setup_irq() fails.

Fixes: 84c39b8b7d46 ("clocksource/drivers/bcm2835_timer: Unmap region obtained by of_iomap")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/clocksource/bcm2835_timer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clocksource/bcm2835_timer.c b/drivers/clocksource/bcm2835_timer.c
index 2b196cbfadb6..7b27cc53ce9c 100644
--- a/drivers/clocksource/bcm2835_timer.c
+++ b/drivers/clocksource/bcm2835_timer.c
@@ -121,6 +121,7 @@ static int __init bcm2835_timer_init(struct device_node *node)
 	ret = setup_irq(irq, &timer->act);
 	if (ret) {
 		pr_err("Can't set up timer IRQ\n");
+		kfree(timer);
 		goto err_iounmap;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
