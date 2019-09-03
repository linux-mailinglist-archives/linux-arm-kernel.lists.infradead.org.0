Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6326CA73A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9sxf3ceZsWKHg8DYyG97647g3GvrPR5+aZ/JoBUsCcA=; b=fFyEUPKpuSc98g1as/3mDlHE9P
	J4nLkDRdyC8FHr2zuwLt0+HmzbxHldGbLIjAo+rtMtrasxpJE/PbAqZ1INnlap+XIO+bCr3tYuqnl
	CVHLjF21dJ++KFhLn1i1nODVXI/3vfP1Od09X0phgGZ2Gpbav2Yy4pTH1/d6Szh7kRC4pH63znD7h
	1toRxAXnMenj7RWGO6DAc/cV9D9k36gu8aZS8Ql8fz0HLp1ooGG43OoetPnY5CrY9NxlsochcNr15
	qMmhanRnCzmfl6s75BonfY44o2tyGeQ62Gu5DhkRqg1NugA3qGooWbpxh0ZJDYgCmrxfid1n009QF
	m2WW89qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ESE-0000jT-NA; Tue, 03 Sep 2019 19:27:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ERm-0000Xy-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 19:26:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id s18so18740225wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 12:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6JUyP0FdNo/yk/uL3/c0mgRsVP/O4y/TCGkUF765JIc=;
 b=yCyz9slh7ju286ICZKiNE8G0tYYk4BqAgeN3XepsFF8J72rIrhdVWcokpykTFH1wmk
 yJJCAq1SFBpgjq+t+wC4ycnlGSfxrkTN0CPSyiAE3Uxzurj1UvWhHKZ5xffH6z0Mt2XC
 exPPAHwtwHy2q5kj/mAqxsEFoHd86due2Y4MNi75WLFubFbTOChff9gM9meN1waXSa/A
 SETKYwDpRhG97zCf4+FuUQkXX9q8wM/wJCQKlsZQdKgGiCPP3gF5+BcKGQ3MTMO149sd
 Brg55ngi0l+p1VxdIfso7K/PWZmDtkSHBOhdO/x5PZSb9Ka0aSWe6VyH7ZaPhRwC7+0/
 yHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6JUyP0FdNo/yk/uL3/c0mgRsVP/O4y/TCGkUF765JIc=;
 b=MHqapHSBmD7kjPCSme75khmTeBLc1wWbI2kgNd26ze4eJh4zqJT8//65hMmjz3Hn7o
 dCWTC74kx+/GG53HNrDsJ9Ok1zNMDT6Q5wEFNlWoivZQ8m+JOr88llkx/8liBks2cTYa
 BWIGozMHyPhRMa2qPMOMiYww5sBReM9ComPoE4OjrrFRo7nq0uRZWXXUugt1KZosqrBa
 XWPuWclLe/YV0A2rduPKnObKcu7lq8u24Lt6mQ4JTSlld7c4eQFrRFzlcqzjSW4Cfsiy
 +avCJYvC/+iteE+AkX1X46kxBddjcDrcygkMS+xZQ+kooj9FzMHpWGVuZixusE3XYiCJ
 iobg==
X-Gm-Message-State: APjAAAXQVQ1gnjonccBg5kEJhOGhMonJInwxs0i7Gmva/xZ7V69v2YrQ
 nxcK3h3qZzjPVL/l5nv8W3ycaRkH09G3PQ==
X-Google-Smtp-Source: APXvYqxOFh4+JKlJkxxoUnrPJXNBF38dWEShmyG8xO/kat2UmctwVVTrwndd2ahi1ifNhfhkGcQhuA==
X-Received: by 2002:adf:db8e:: with SMTP id u14mr283856wri.50.1567538793233;
 Tue, 03 Sep 2019 12:26:33 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id b184sm473895wmg.47.2019.09.03.12.26.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:26:32 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: soc@kernel.org
Subject: [PATCH 2/3] arm64: defconfig: Enable the EFI Framebuffer
Date: Tue,  3 Sep 2019 20:26:24 +0100
Message-Id: <20190903192625.14775-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190903192625.14775-1-lee.jones@linaro.org>
References: <20190903192625.14775-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_122634_763704_B47D4E38 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on the Lenovo Yoga C630 where this patch enables the
framebuffer (screen/monitor).  Without it the device appears
not to boot.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0fe943ac53b5..af7ca722b519 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -540,6 +540,7 @@ CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
 CONFIG_FB=y
 CONFIG_FB_MODE_HELPERS=y
+CONFIG_FB_EFI=y
 CONFIG_BACKLIGHT_GENERIC=m
 CONFIG_BACKLIGHT_PWM=m
 CONFIG_BACKLIGHT_LP855X=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
