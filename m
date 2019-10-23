Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9FE187E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wM5Kf1Y8hKSmWivI2QgCpU2ERRwFog5vyFy1yWk8yBg=; b=kll
	j6VwKw3HaqKh3c7032gf1i8GtFPuz6p+4nMEYb62S75otytrXcOQioZpFI3CjqgrSRib8ntFdwQ9P
	smHNMP1k13ZGWviLi0L3HcgEItcwE6QIMIyDR+/ehPNeWfm7WrlolC/irto6DTO6RkmvHxOp4xe9V
	kBytuvZdyzzBYjgGO4W+MV+Pp/dniZP3vciXafazBT5y7GbuDEmCa1lvLN+W1WdOFEe6IaftpR2Nn
	DD592H5UXTFfIRSLcmPfnLB7OJcQCUvhowfiHSbNL1RuAUljXKvOu9W1tMpWENPKf9uEepEf8kQca
	V3oxDYyjhHQKdDMJ4ZlBS4OBwlMKViQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNETA-0001t3-Nl; Wed, 23 Oct 2019 11:06:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNET0-0001sl-KV
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 11:06:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id s17so9910496plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 04:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qPpOdZIAHDcQDrpBHTEE+DHd+oPdwYCkPle0TB+oIr0=;
 b=p3MKCf8wTny1eS9+WPg6KOdbGDAsoT4+mmQ/bB4oIdKy1EGN/uexUzv2N6TBs8n0EY
 m7hssrUIb+/WSqvEqhdbUhZeUJUlI8wmbxI1D4tYuGKWlavl2peaFC1guqcEhtvTFZOE
 ccBz0AU/19tolt7kAyLX5NTSYSzXqMKzQZg7id7A1B3YVpS8wqZglTvTfMvHs7zBkVl3
 5OyjG5TJIC33F5tRek+T9wO8yS/zOWHMCz1mBHnlfcrYMg7l0fJWQ6Ds8smtZyrS1RW5
 U9Nw9FxVBivygrSN2t2x8CMo1pFKPpxLXZiXO1y3mib6P3EBO1/76FfNkkpwya/yyH5t
 UCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qPpOdZIAHDcQDrpBHTEE+DHd+oPdwYCkPle0TB+oIr0=;
 b=BdHyby2NExiOoSjvM5zjoTuhlF6Lx9qn9KApCsb0BzYEgq2ksycpWS777hv6OTGo1z
 bKwHadxo+Py6zIkfLP5AGTzd4ldYQHCtFSpvojSimPevOLUqx+yC8s9/YADrCPM81+/G
 Zib6RTzy/Puh9J7lZeccbGapgjrix2+We1YVTrSLnFvQob+6SWYkVbV/HPXcmbMypsQh
 uJtO8I9iIrhSW2VNU3vC3kLci4VDladwlKgYBdpPBcZEcgPGs435MVGVXXBjKziJJBGD
 Rd0qmUBEtCyMcn6cJdiQFRo2IL6LpIrCp7xr97D+jfAPy4mQNZfjcIMJDhfse2AH4ozF
 o3lw==
X-Gm-Message-State: APjAAAV7LBJk6nvdVt/lAdr4Oc3dQwAlOGdIdJQcUCgF/K/xvpwVE5XM
 aALYXQ/A9i1LKIxqiV35NS9AbQ==
X-Google-Smtp-Source: APXvYqwfrOgnuHFr7yKLUeel5YnP71QVIOnjIksynYQ+9B7+FuzJo2MjfhTvfAHVg7D8MpdMVYNLXw==
X-Received: by 2002:a17:902:6ac8:: with SMTP id
 i8mr8498933plt.164.1571828773442; 
 Wed, 23 Oct 2019 04:06:13 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id y138sm23388684pfb.174.2019.10.23.04.06.09
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 23 Oct 2019 04:06:12 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: arnd@arndb.de
Subject: [PATCH] MAINTAINERS: Update the Spreadtrum SoC maintainer
Date: Wed, 23 Oct 2019 19:05:27 +0800
Message-Id: <2e3d8287d05ce2d642c0445fbef6f1960124c557.1571828539.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_040614_693495_4F9E6190 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linux-kernel@vger.kernel.org,
 baolin.wang7@gmail.com, arm@kernel.org, olof@lixom.net, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change my email address, and add more Spreadtrum PMIC drivers
to maintain.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 MAINTAINERS |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef..7e6fdcf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2327,10 +2327,19 @@ F:	drivers/edac/altera_edac.
 
 ARM/SPREADTRUM SoC SUPPORT
 M:	Orson Zhai <orsonzhai@gmail.com>
-M:	Baolin Wang <baolin.wang@linaro.org>
+M:	Baolin Wang <baolin.wang7@gmail.com>
 M:	Chunyan Zhang <zhang.lyra@gmail.com>
 S:	Maintained
 F:	arch/arm64/boot/dts/sprd
+F:	drivers/power/reset/sc27xx-poweroff.c
+F:	drivers/leds/leds-sc27xx-bltc.c
+F:	drivers/input/misc/sc27xx-vibra.c
+F:	drivers/power/supply/sc27xx_fuel_gauge.c
+F:	drivers/power/supply/sc2731_charger.c
+F:	drivers/rtc/rtc-sc27xx.c
+F:	drivers/regulator/sc2731-regulator.c
+F:	drivers/nvmem/sc27xx-efuse.c
+F:	drivers/iio/adc/sc27xx_adc.c
 N:	sprd
 
 ARM/STI ARCHITECTURE
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
