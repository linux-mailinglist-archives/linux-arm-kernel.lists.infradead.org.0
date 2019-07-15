Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A662E699F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfEIcb40voP4NnRjQoQpi9UG6ZtylcJV4cgI6gOEMNM=; b=QLNRzf3E/ZOU/0
	PFAL5B5vwSVP6pam/6AMe/eo0L6JQEFvcib1Y9uBBMe/G3YjL/jzhge+oOGBCtl/BqiWG26XDkmu3
	XYBWl+raIHqBx6ts+dYSgUO3sJpV5K/Had5RcQRpQxRRikQ6YvepPxKHmDR0UeNQAjQN/zFm3RFew
	TahzOWZqw48/EVwyRb1zUf/nPK7/kKwIqNKXgq+TptT7Qrm66Jo24Xx/uxU7AqSzL3s70uMlGMuI2
	dehKGJDwdPiU8llmd1Ivo7WpsgMfm0oqmtP1VIKGkUadp3l6ZrcVmZX44MqbCzaIa1PgTXXSs5uZL
	jEHSOhiINM3mNkLIULOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4qJ-00039H-6w; Mon, 15 Jul 2019 17:32:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nS-0008Go-E7
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:29:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id h10so17104590ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YB/K51J2yBjrGqQBOAGlFNTt2rdW770Na58VRvSkzkE=;
 b=G9r1UpHe9emFel8CP1Z4Q/bhOOyPPtMwUPGjut2D2WJ5X7sg4agszqUKUO42WEeXxO
 1P7iKfqH87IK9lPCUtqFtNDS7Y7ETgi9VOuufW9wEt0GpnZzfvUgQIczex830SIwXAQe
 tgAppGVlXy7vn1hY6MRXISj6MJH0nksjUdyEtOtf+oG1AbeQ3HgTr8BiFfwmNxx2Q0aT
 +k4pdY/TSo0M8pbgIibURbNgg+Czv6saq/6yVQlzWO5VnMDYV77Im8fdJnCKkfaKceJy
 HKmHmt/U/lii15n2Cev059HpaEWR5zxR57bEnrPjRTNJqxiZ/n3rHPFHx6RSnZjzDSLi
 MmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YB/K51J2yBjrGqQBOAGlFNTt2rdW770Na58VRvSkzkE=;
 b=F/QrXbKGElPeLvaF3WjcNSyaAPKb2/M0keTJ7mUnW+OVryDR+UVpJlgEQ9mYjMNHnW
 nAGAsskFGJrQhwVK+5ggQr1FOXxvK6c7G4BSrl7xLpe7i5JOyJXy5AI/ajnBJmlwhMSO
 nS5MGsTk1pj7/2SIKt9MZZ93zCdIEqizwXm9+g1WDIOctS3w7+O3h0Gv4XT0KHXoUHKq
 ubtRGpxe3aauPqtkoHvjfA5uG/xlOJYQlX9LLq7dzmXxDvJOnKeV6FIRso9q/aqaONhs
 MoLh3nol/XL7kGnQmimSl1yQ3BSIbudA5y6mMRgZHziICacTrC6ZZiiITxRAvEo8V8Pl
 W1rA==
X-Gm-Message-State: APjAAAW5GDX6wKmQTSYlf75B8Gi+cBl9VHe1rE5bXOWM6IZijKIfMnuy
 qHbguAvojTZsPKTFcB8A/xU=
X-Google-Smtp-Source: APXvYqzYar7cir4nEVfsw6pDWLzHKGGrWy3yMbYTr6PHAK+wnKscoo/k7Aj37D/0aOCGiOjSrG7D/g==
X-Received: by 2002:a2e:9213:: with SMTP id k19mr12089693ljg.237.1563211792709; 
 Mon, 15 Jul 2019 10:29:52 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:52 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 08/13] clk: tegra: Add missing stubs for the case of
 !CONFIG_PM_SLEEP
Date: Mon, 15 Jul 2019 20:26:24 +0300
Message-Id: <20190715172629.4437-9-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102954_686587_1D1FC5E6 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new CPUIDLE driver uses the Tegra's CLK API and that driver won't
strictly depend on CONFIG_PM_SLEEP, hence add the required stubs in
order to allow compiling of the new driver with the CONFIG_PM_SLEEP=n.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 include/linux/clk/tegra.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index b8aef62cc3f5..cf0f2cb5e109 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -108,6 +108,19 @@ static inline void tegra_cpu_clock_resume(void)
 
 	tegra_cpu_car_ops->resume();
 }
+#else
+static inline bool tegra_cpu_rail_off_ready(void)
+{
+	return false;
+}
+
+static inline void tegra_cpu_clock_suspend(void)
+{
+}
+
+static inline void tegra_cpu_clock_resume(void)
+{
+}
 #endif
 
 extern void tegra210_xusb_pll_hw_control_enable(void);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
