Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AE7EE725
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kxXTlQxYu6omdVIgyUd8EbWlY3vvOPYzk92/PmVe38Q=; b=QFNv2Nk5H5me7XY61Fjs0WdV4I
	trw0EKIXIJp0iwR2T5aWrvzn4NK+yB+9NwnWlRt6Vf1a3ogaBgSCHZ0FlPv9btqLLJZep9EJKZUo7
	k2PeRrRlqnqa4g2FJGr5f/GnP3EnY8WB8ITR0ENt89tCyeS6zmtp1HXHGFzaXNcOVVNqWrd0i4nMo
	G1No5Xdp61hPSUjF0jJPJZLpID9qWtmhYaiAvEa5HUVIeYqwjHsnt6wdUqjTY45LwhDIYg1eRg70g
	4EsfTzequeUHEuRoedzbW/IowB4M+1+9MJoX2E3Ld0kq7pdsl37w8qJ7QIv1Ix/bBUb0qgHyyEUdo
	6H47wVXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgto-0002m8-MP; Mon, 04 Nov 2019 18:16:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqh-00076q-Hm
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id u23so11881864pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I32GagO5xwpjaCvYA7jwVW7GwjuY4NbR5b26Ld8w57U=;
 b=X6kZP/GvXomxJTpONdRTjc05uKXG60V6KmAFh5sdmFw/KfM+oijNNCl2oUL5CbnjJD
 bZ7fCXsjov868pGwWXolsD5V2kCStDPw6mIa/4CVypZPHYNENWm6bZ6r9+gu5oFKbMRR
 BqnsYkoJg6S/ScRTH7LQyZ948THS5mscenYO2Bc7fthtzq+9iHb17I5dcr+4egxIkjAM
 8IvalnEp6sE3Eb9ZhupQbObuTPvb59awJR6zpiJ/gDmi/q1nxfMiJvCttciyJpccXbiB
 1+OiRYaS+i3nBuhwvhWsOU/IrxT1rBjWGbWxjGEjOvYfbU02a7Y62IYwBlAOfm336zwp
 GFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I32GagO5xwpjaCvYA7jwVW7GwjuY4NbR5b26Ld8w57U=;
 b=n9lbrNR2bNyseu4cJtG0V0UKQ1DatEr18gou7G/W5VnJzgFF+B+dVPdGeGenbTc+T7
 P8I8oV7arINntwIm6hzzdSGTL3TP4rRD3h9oB5FvlK9HsX8iuyupiSIqdHmq80PVV2Um
 7f/+ZhE1IgVpVnOmuf9taPvOqFpPJQEaxlU1FIYPmHX6slQXIMgO1/d0nynLngzF4XuL
 fkD/yGRc7azVZzRH9yQByUT86l9sp0He7nIoV0qRHCjqkWTrbl8auVmmbCi2O7zoQBw3
 ypCbRhgVsThc0COVhlcQawqroorUhukp5k4SKv0LTkQTcLD/DsEQTCnRGzFmarEdiLzi
 /w+w==
X-Gm-Message-State: APjAAAUkkesprqkMI6OAYuz1wVljQPKuiZGlWZsNxASHalMXQ6v/MSVL
 WvGWgKFG6R80LOrFVwYl7xv9SQ==
X-Google-Smtp-Source: APXvYqxi1HKTpbkTjiBtFMOwP27EP8SelMqiVXqAq1C7HqrzqeV35j9Au8LOkmEJ9k0ZpssoJK2vOA==
X-Received: by 2002:a17:90a:f496:: with SMTP id
 bx22mr547355pjb.101.1572891186044; 
 Mon, 04 Nov 2019 10:13:06 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:05 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/14] coresight: Add explicit architecture dependency
Date: Mon,  4 Nov 2019 11:12:49 -0700
Message-Id: <20191104181251.26732-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101307_754013_024B4557 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Brown <broonie@kernel.org>

Coresight hardware is only likely to appear on Arm systems and currently
the core code has Arm-specific barrier operations in it so can't be
built anywhere else so add an explicit dependency saying so.  This will
make no practical difference currently due to the way subsystems are
referenced, the subsystem is only pulled in on arm and arm64, so mainly
serves as documentation in case someone wants to increase build
coverage.

Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 7a9f5fb08330..6ff30e25af55 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -4,6 +4,7 @@
 #
 menuconfig CORESIGHT
 	bool "CoreSight Tracing Support"
+	depends on ARM || ARM64
 	depends on OF || ACPI
 	select ARM_AMBA
 	select PERF_EVENTS
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
