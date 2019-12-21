Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4001E128AC4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 19:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o9KZPn7EyLoYPafZ1Jn61QumYi50o2UsjAojQo6MyQU=; b=OjNDjfqEcS056mKRnNEkndZIz5
	ezUy5QlUlO9qbTSwWhamzaWdCIGlf0J9B7eqhp98FpxLNc1R4CK+0r/tXVvAFSNKZDtCm2KI/2D9b
	HTWSZHU2/sL0eCQE7HVGCRKhRUg25PM9dLkmd0g9DMmb5RANXh4Irqwmmid4IaYZafjArJGqKU1Uf
	yznKOec8g0i9vDXago7h0hFa9VMYkcnpOd6uekHAAYqIX9vxwoWM9yn3XYw32Fg034Zvuu4avZd4k
	I3t0ss1vB78Il9HFghaPjNe8zRWitPMsVd304HH6y6rL92DUhiIM9euczOhIwV3ANmzCwywIjg/EP
	1mkRvLHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iijLb-0000wz-1F; Sat, 21 Dec 2019 18:19:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iijLB-0000mD-2p
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 18:19:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id w62so7014527pfw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 10:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XZWzStVGaglhqJ2FheU5GU3236NOGrsoSxq0qw1NNLs=;
 b=EWrwVgjB1N880JC615Xe0QmqiK1DQhoUA0Hp7hkEB5XECyH1lHU8eIJ9wt4aaLKkYj
 Ff4+IO2fv/ON7kJ69aMVwra2254836TqyJMOTFrekhxQCEbPBFLHeHdvMfMU8iJocJyZ
 WvWVm2fMO+YQ/fJGOxv7HoyS5i2o6aoj/cie/vHX46P5xzhWE2D7xIRvd9jOYx6XEITD
 vIeX9JdPd2cF/mSaFYkKatXdGhJsSLMd6ZlaipCKhcbvkNe2yKXyqCp7IjnxF2iVDQ2N
 HHzZOSLjweiYJZ3e42ryJ73Spizat9uCbHl7SR7lQ8gTnyYGBmDQNgbwitXgcdqVzGj5
 9TCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XZWzStVGaglhqJ2FheU5GU3236NOGrsoSxq0qw1NNLs=;
 b=mP4Xg6xDUhPdnBBS5PwdKGoQp+VH7ZOXZ8fPgch68kZrJ/fRrwgZ6IK0i+4HSt8oYK
 RY+2qD155I2PPlel5rdbi0d/kDhFvGBOs6pIfq1EeSsWGqhoS2OsQgjhFdSGGiBOySC8
 Dd3RffVtB6lz7ctT7970Dz4PgySemMXLc96WHGvz4gAQfG7OcvO7HTdwu4nBXXRtLvBk
 1fLWjLdN05ezvkvC45PvztdhinbSWSjg/32BOsSODafaQYIw4AZHMkiJRU2xYJzF6X0P
 frh6VXnd7C6XR31fsvfR9p50zITd2ndz1O+cWnqU+r6vX2+hwjLfI+zmSMTMvcEutc6A
 GToQ==
X-Gm-Message-State: APjAAAXvNGGQWgHwPSu8QUzAtXBj1AsD425C3jf6K0NihCrvl9ZeV6M7
 UKT4X+FnyQLRpFHfnlO3KVg=
X-Google-Smtp-Source: APXvYqyrZNXewNn1mnkCPEBTGU7duzlk3FmQh3qSjs79aeT79A47u+NvapGKMDjawXbiMXYzw/LRMQ==
X-Received: by 2002:a63:4287:: with SMTP id
 p129mr21803975pga.122.1576952340297; 
 Sat, 21 Dec 2019 10:19:00 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id u1sm17467435pfn.133.2019.12.21.10.18.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 21 Dec 2019 10:18:59 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, krzk@kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] PM / devfreq: exynos-bus: add missing
 exynos_bus_disable_edev in exynos_bus_profile_init
Date: Sat, 21 Dec 2019 18:18:55 +0000
Message-Id: <20191221181855.31380-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191221181855.31380-1-tiny.windzz@gmail.com>
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_101901_122003_1DA34DB9 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The exynos_bus_profile_init process may fail, but the devfreq event device
remains enabled. Call devfreq_event_disable_edev on the error return path.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/exynos-bus.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 7f5917d59072..5e54eaf3cfc6 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -335,10 +335,14 @@ static int exynos_bus_profile_init(struct exynos_bus *bus,
 	ret = exynos_bus_set_event(bus);
 	if (ret < 0) {
 		dev_err(dev, "failed to set event to devfreq-event devices\n");
-		return ret;
+		goto err_disable_edev;
 	}
 
 	return 0;
+
+err_disable_edev:
+	exynos_bus_disable_edev(bus);
+	return ret;
 }
 
 static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
