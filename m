Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC74E91259
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GXsafRz6KK6GZ6kvuvQKbq2JQxuguWGjcTNjh8ZdQKY=; b=XTWH0q9NtJaXk6fFW4j6XRJaRF
	Wrh/VdceJXgSdqGdl8/IXH+w24uy93Vr7WwKTSdO3Vgy48p16lHia6B+QbF7Y/iXhg5eDqVXCR6qw
	xARXf6bz5abv206+hhuECQpcTtGX5X2B1B51QvF3EH7oQ3v5234XvBKMRrmGcMLgSpMBC3QslUxlP
	5Qjv3R3ErT32PKNiSOHSh0YbzYxNQXDN+yrvEm+QdH3m88yoQreez9sKYVpFx8SoA7B04XD8God2S
	K1GYHSRlb8QnMKbO8CxKxvKwYXImwY2XoWMxswFI00dDCrZbBhG+yaMldP6TzC61d1GpDfUxvcglE
	uTIoZPrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3aq-0002nx-6e; Sat, 17 Aug 2019 18:38:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3ZY-0001tr-Nw
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:37:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so4782681pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 11:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=dqguwweGv8m3jWuayl4ZIpq5unEXOopx/JAA/LfCxYiy9ROeW2F9g9c+65zQR5QPwB
 9CIN004auoeyYJTCT7vFNVgWqtJCaKHi3t/sSswuwQlv2+IOVxbQltyLVHe962wvKUnl
 JS2iIPVwDoaIkZ55RK7mxUwoOOLZxHpjnwrryQIcrznqxk7Ye1SdNSzfCqrI2mTtCi1C
 EKm3qhWNnQVYpGM61n/jCF3PYQcBnnyAfPOoOFFZK5UcM6Fm8/swH/zKlrhrqMenB9NG
 J3KtLdHMGMfVvdZUq1ikT1b8Eaf3EfuVQaaGP5Hqhfu1M83iWm2uOMVn/N8i8p0pyaIC
 GaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=l6pJFKl7ejEkDzDZCpEw4UWcdL5MVXUFQ0KlTzKMhr+YyPnsCe+55XSkej+IObiqf7
 B1JcYG2jzIkAhFdSTwm8SwefFKSHbUn44+BTDbkiu2zcMz7kElfMy7LDgOF17lVCVdIF
 wU6CX3kfOTuiSwdLf6KqqiP4spWp634QRC/P52yG+DUyaiX5fkUfXdA+ZDAHgfx6nYxJ
 n5FresX+221FQTUbKFWRDruO1TKGkBf3PUkiqbdWlIHhr474CgjKV/ivBnsi0wM/gV+u
 rGd1K+N0suzh3hBeXaUxq8v2XaYNs3RHFFv1j0w4/2LiNcR4ah/m1Asgx/MIaU3Kh/Wo
 Sprw==
X-Gm-Message-State: APjAAAXsURct1+UHLr9UslnbuiOVUBx1/O6Tj47gaZGEw+uutxfUR+Nb
 EJMi08Q2K/XmjqGUqh13L/gd
X-Google-Smtp-Source: APXvYqyNYDKZVgPbO6xvWKY8Qk0vt2+wG3ehY9XlYnpkjyxRyqxyasCLT5TPNa25fa8LpeGDa6KhLA==
X-Received: by 2002:a17:90a:2629:: with SMTP id
 l38mr13445995pje.71.1566067023939; 
 Sat, 17 Aug 2019 11:37:03 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 11:37:03 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v2 5/7] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Sun, 18 Aug 2019 00:06:12 +0530
Message-Id: <20190817183614.8429-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_113704_869780_742B2AC2 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997a4f8fe88e..280defec35b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1503,8 +1503,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
