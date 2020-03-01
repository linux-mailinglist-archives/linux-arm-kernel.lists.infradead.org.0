Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEACF174ABE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 03:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rDm/c0LTNs2718W3HuAWoJrAOigGgtYk/hbyBS46GPM=; b=pmi1URycIH41/QvYO0R7nsu0O
	VdyiWy1NhjlX+9IVKeAvyraCPcHhHmNhvE0LicbHVIpJL0bRoD4JL5yL0gS3elxLWZHAoHXDcnU0t
	rSaLWf27PYja7HuKf5+Xp28iYxHk8CLE95f8KPddIgLHKLXLr7j0HxjjvcypehG/MUejXjy7nnYAc
	bWmhE6hAB49qEGXdNdw0hRRr70p7PLOtty9HzWXZ8v61Tg9wXh2WenA7YJJzdKd6bEl6aNZL6BfvB
	r+zCBn3ZlcGT+gH7W9LBqJ78+29cusKJxLXL2PhJe3yKPiHVgugP2v5J3CLqlpGBxH2u7OYsNGIGf
	z4dTscuFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8E0Z-0002M5-3M; Sun, 01 Mar 2020 02:07:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8E0S-0002Li-M7; Sun, 01 Mar 2020 02:07:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so7547870wmc.2;
 Sat, 29 Feb 2020 18:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=mFMK4D+LnUKRd/F79nEwyUOb2aPeDQ33LhkUgHUmiGc=;
 b=WxqEXM8LNzUi/E7hr0gNTnCsdZ3nu91HgDePZERGtz3W9noXE+0ktjuMCq5ufbOiYq
 T8rXIsM/gYs6Eb4CPv0RE7G7jyOzqpE9I6Do9tnbZ2b20Hj2l+5lkGdt17BCST/BU77Z
 zpwE6Z5GZ9PaJk5ovCzdQ+H3SNzV1BOhOkVfpEwDUWJ5Ur2oweOKLRGGwXbEViHuamKX
 mmT7nIeWRgad4+IfBfSvTjsEVj9AzZIEr1DpKrryRclGh9lWAq/Nx9pORGuiXjDl5b44
 NKHzxUVU/75XqVjK2BZU/x5YbQcO/EFzmjmOvkAm6BbkihQCnwHRBj3+MUgvdcIbe2HK
 R+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=mFMK4D+LnUKRd/F79nEwyUOb2aPeDQ33LhkUgHUmiGc=;
 b=Y7S3SYZXKdjKWW4kw1JTRA/P+I0jdUvKB6MqQzJ0Ld1MJJyEHX36iB32G9/sTdFE+o
 om4Ta2jHgu0/4DGTUlW1G6OkJdnNBWOdMIx1aoNGUzLu+J7E4FKKINhivX7YBxFDHtuw
 E81AhYsf701BRv1xq6/J2kqYKcm+EYSXkyEStytN6dpdkYAgObwaxT8X+h7/+BxlFFF+
 /sbyZqpw3feYqZLMkN35N/Ikq4aemdEyfEoU4Z/uK55hCVOf6sapDpBWaWmMPiSlzHDC
 TVzRuLZbabTrTs5x6F7baXYC4jDSjVgGDjf+8ORtGwoiMbooBn5XCDPFQISbdwcIleNH
 +wAg==
X-Gm-Message-State: APjAAAXIuJsjumWEe9H5aumJ7dii+x3all0RSXaEgDaz9dWE0h0GbRwa
 F8CY931FHAJMk0DsQj+G+vo=
X-Google-Smtp-Source: APXvYqzo/NeLjiWLx17CFDKlODf5uCGNKaEDGv01jvjeA8hCO8or8bNmA4KCjZe/q9m0WsEFjEbPaw==
X-Received: by 2002:a1c:238d:: with SMTP id
 j135mr12374607wmj.165.1583028418492; 
 Sat, 29 Feb 2020 18:06:58 -0800 (PST)
Received: from [192.168.1.6] (ppp141237210022.access.hol.gr. [141.237.210.22])
 by smtp.gmail.com with ESMTPSA id
 f195sm8614206wmf.17.2020.02.29.18.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 18:06:58 -0800 (PST)
Date: Sun, 01 Mar 2020 04:06:54 +0200
From: "Leonidas P." <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
To: Heiko Stuebner <heiko@sntech.de>
Message-Id: <1583028414.33600.0@gmail.com>
In-Reply-To: <6132615.msM8OCcsVu@phil>
References: <20200218221040.10955-1-me@carlosedp.com> <6132615.msM8OCcsVu@phil>
X-Mailer: geary/3.34.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_180700_750798_E8FF8F07 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [papadakospan[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jose.abreu@synopsys.com, Mark Rutland <mark.rutland@arm.com>,
 Carlos de Paula <me@carlosedp.com>, Jonas Karlman <jonas@kwiboo.se>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


I am also in favor of this but I think we should remove the line that 
specifies the txpbl in the rk3328-roc-cc.dts gmac2io since it will get 
applied here in the .dtsi



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
