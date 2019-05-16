Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E9620DE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VU10LLbjDTgAQXl0QuZu6TkgqCMiK5/xYLS5X0eFC5w=; b=SHZnhxCkToG4uK
	K8CsiSu1L3wXeLALIN+hswx5YjX6i3mD4CWv0oTnIoKUwGYgtXzOEzSERRNtBJuCBrRI/C+8/lk4U
	9Znk0Q3oMahQlMdYlNcjyEAnHDO01/Lwiu0mI+jn+zjRF5rwpgRajE8UbnbP0yoBlko6HDr6dPSE5
	tegLlXR7VEOJF3NA64BIdg14o9+nhCpuOYOJY+rV6Z/wsQcO4lB3aHG6HXKX7Sqz5/H27qO9HKs7b
	M5oSl4c71zfJMdYMcG8Zu+KtWfOYEAx7nmKA6hRZaTSbd2IjEnl71AJGKqAeO159EJDn+31eGR5pQ
	YKEn69KzVr23DJhTWgtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK8b-00032P-TM; Thu, 16 May 2019 17:25:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK86-0002a9-Qe
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:25:21 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so1949596plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
 b=lm3M7Abais25GdMpfAmlFd1RXZxXFphbeQ7jGJe3AKBVsknHbMxhyrH4vT+MBb28A+
 xP4nQPC5QkLetlEYajhKUsKHtuJITm+LT9nnHbWlAddEHLklQyGCAK0zKonDIjCHRuRm
 n0incRdHOE8Y3OOvZzwBzlqIvRx1Z2ohANK2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lMSAIsZhKZG2h1JTrxIG+7d55aHOlT9g/JHuAffMChU=;
 b=RxsNTN5H1mafpUWBybrx6Q9axgDtjs0oq0RACFHXrQkA+tNU2QOIWhWXOcEjBel/dE
 MRUOtX07t72Q/Pe6fCImg4bJ+B25b+KxZyhRXkvuU+iPMhJEBjbIDFawmu0vxu10nvbf
 Tn83T+zRXaGGhbc6n1SDWriAS3YKnh9T0wIT+YYpawrXObkgL38lUvBrDSXmulz/4lkW
 npQ7Yn6wir4uLL5WTbnGJZ5PeCJ72lhxJAAxZQCzeA2+JajkOCqDVx+lEKDt4l+SsTwS
 Q3Evc6ZdLx540cXztS+ZgNoB/R+FIEqMkcF03Vl8d22BHnHUWWqpIw/4h9CdebeMrv55
 MMng==
X-Gm-Message-State: APjAAAWNaytxJgcbX/XlsEHs0N9qIK4CaAXsjjPpHpz0/1VK32QP3tD8
 vW/1ceyEI0IxT6vRji7pZolQLg==
X-Google-Smtp-Source: APXvYqzIUsVmhUrS26/6IMXbb7QozvzV4UhQf72EtAlcEOaL7o68fTla/TZNzSHlTZB49FW8iDdDfw==
X-Received: by 2002:a17:902:6809:: with SMTP id
 h9mr51869145plk.129.1558027518307; 
 Thu, 16 May 2019 10:25:18 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id s77sm13264216pfa.63.2019.05.16.10.25.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:25:17 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for the
 GPU thermal zone of the rk3288
Date: Thu, 16 May 2019 10:25:10 -0700
Message-Id: <20190516172510.181473-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
References: <20190516172510.181473-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102519_056363_8EBCCE8B 
X-CRM114-Status: GOOD (  13.04  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the CPUs are used as cooling devices of the rk3288 GPU
thermal zone. The CPUs are also configured as cooling devices in the
CPU thermal zone, which indirectly helps with cooling the GPU thermal
zone, since the CPU and GPU temperatures are correlated on the rk3288.

Configure the ARM Mali Midgard GPU as cooling device for the GPU
thermal zone instead of the CPUs.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- patch added to the series
---
 arch/arm/boot/dts/rk3288.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 14d9609f0b15..988555c5118d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -547,10 +547,7 @@
 				map0 {
 					trip = <&gpu_alert0>;
 					cooling-device =
-						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				};
 			};
 		};
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
