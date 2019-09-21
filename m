Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D52B9E9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CStIxR0/I4Re1v8eYbuAjDiPZuwd2jDyyTDM2AmeGY=; b=VNdivPtyOzKJHi
	zG5GMiaDDsblZFFZFkLB0cNIDdZ8xYVGvJeTQXGJ3pwW8RLX2eVPGorsf7gjaIBSFGkk1c/QLs784
	JX5mKvTpVT/ZL7eh1fgcE6s4aofysfmqMB8rVuSE7L27sLrG70GYHt/vtJReo50qoqFiWbjNjyvyj
	ij9jaqnYKWT0xG/GyTlGQhl9k2bbNvM5lAotoM6o+oUOBxvp/nXIuwU0jdc2t58+RpRRhud4QCS0K
	tMIOHg+PRCbuQcZea6qx86z/opfi0581lUKei8+TgG8S45n2zBaZv/TBgUn0SxqvNXe0CV6R5bKLR
	RGfDC4wARx3AoCjWsQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBhB3-0002r1-GU; Sat, 21 Sep 2019 15:20:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh9w-00026D-Pe; Sat, 21 Sep 2019 15:18:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id x2so5390949wmj.2;
 Sat, 21 Sep 2019 08:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sYgvwAlg3z2NoNGVW6A6jmGOMPpzZ3tKhXpaeUm/O6Q=;
 b=CcvR8pSUPE/CqoIlscC6HHjjbhJBRA6cR9rHqe2tXclN/aDu6ORrc9GbOHt2shnNDw
 X8o92SZ279Ko7roD9VfxYfLnfiCRmnOclYH1rCYuz74nLUNWoJoLp05p1mNvOxcPzDus
 nUThR2EC83Mg0L2YYSGgRhE9T9JUP9ck2uOXjklXYVCi7I3WbJ+gr7bFDkYk5DZ9Am6M
 tHm/tBRkGjF5twCXQrVrrROqe0gSvW7V5JGfUnBQZGe8qW4DIID7y6NoLFBifg3U8wHh
 GjW5SsOvTiB4h7M4mds6WpQcuhvm1Yro3evPpjFzRh+/rY2Ja3XXIW19MiBtB46s2PIv
 UJYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sYgvwAlg3z2NoNGVW6A6jmGOMPpzZ3tKhXpaeUm/O6Q=;
 b=UqnMLfWMGgPR/SzuYfZ0oGyhwAe0qrLZU/Cgapjod6E3n4btdvGRz4IQfzrMYxPdyv
 t8nB9f/jNzW9frVhmS/vgchP/Kf6121hgl5jVYxVPwofsL/5wz0vRGBomyZO818qrkTO
 9slM0ivofnXym4I9Y1/cgpgh8xQL/JvkVq9jDc+I7JnTDT2Jc86NWpr3DG1aVvR/YNdY
 9VAEQdDlajWXm8jn4wDvKqNgTrVRg+u5ZiGWGYuAPSn1nG4trkuGkKXTqiTwJ9CANGky
 0BaB+r6HoYQSJTW31sNsA9mGCXjot4MOpHBwL2wR/+wf8Z27RWP6qWE9SbUbQeGag5YX
 DKMA==
X-Gm-Message-State: APjAAAUZ8QiP+p/f1RA+tGESzMeewwcGvoI+rZ38ojk0G7w8d3IdTXKr
 d/+nIadbTkrmt2H5K4jViC0=
X-Google-Smtp-Source: APXvYqy+KMsgdqfL9HstYrcK547RRLoZc2AyZT4uPxQ821/58EolgipnHxjUr/qst/LC5Kh4PrlJzg==
X-Received: by 2002:a7b:cb4e:: with SMTP id v14mr7303964wmj.159.1569079131119; 
 Sat, 21 Sep 2019 08:18:51 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id c6sm6003120wrb.60.2019.09.21.08.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:18:50 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 3/6] clk: meson: meson8b: use of_clk_hw_register to register
 the clocks
Date: Sat, 21 Sep 2019 17:18:32 +0200
Message-Id: <20190921151835.770263-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081852_847275_809F7B18 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch from clk_hw_register to of_clk_hw_register so we can use
clk_parent_data.fw_name. This will be used to get the "xtal", "ddr_pll"
and possibly others from the .dtb.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 15ec14fde2a0..fefb4b7185d0 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -3696,7 +3696,7 @@ static void __init meson8b_clkc_init_common(struct device_node *np,
 		if (!clk_hw_onecell_data->hws[i])
 			continue;
 
-		ret = clk_hw_register(NULL, clk_hw_onecell_data->hws[i]);
+		ret = of_clk_hw_register(np, clk_hw_onecell_data->hws[i]);
 		if (ret)
 			return;
 	}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
