Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF4B11C070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wsJCOqivCi+aCvCE/P6NBkOanVBKzSG1LoE4Du08iUA=; b=e9+
	Kxie8s7712YrsGGsa1v49MkYJqdSP/vAXEDfHgp5f05oUCapj9ZLEC4Bi/N87/siPlHLgXJ3J0PbH
	JefwUgFlQkMGwl/s3KCZUVpZUNQREryc91yMXuWDH5ZyPZ2D0pa/S0PrpDxAfEYWQ+05uqodGVU6h
	47CW0Ysdc3AaHCd71aVuLdIff3vPcS5IFzmC+91RCANGCkF/jPsLUt5YIlYmV9Zv93r5YjLwFEeWR
	RxlBQ1/Yv/6wcSu0uVkVKW6U/1d+D1Va1jrHB+k3bUkBW0bbXcWVN0yRBtlLQy7nDMDTu78vuT7yB
	AyrhqbqyuY0sBbSamAkdQR9PDTznxxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifB9j-0003gB-Ap; Wed, 11 Dec 2019 23:12:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifB7s-00021a-Gy
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 23:10:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so175269wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 15:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Q8etfoWT2jfX9dgh2kmChcjY+MdQxMMNc40Nuy8WnTw=;
 b=oKrnK8jsvjw9hggytMGAMmAm5cCCGkE3Zx41qkQAyVEOEBmkO4NIzFJkr4cOvuPzfu
 I/cZeCo4WrjXbN0laLHRrHQ+DhAh16/pZKIQlwtZ3L9rrCYGj02qr/MOiWXzee2OfL5N
 h0XoemUMWYERuAXDmCWzRrx5WDa6pUxQearo4lIm5ZvfWQOfvqhagGVxMHpVWXaFtdoF
 9olObx/q502WqaG7k3Vd5rjf+SlU64zeiYowU82PZKXp0w4wxyjCxRsM7TwtPMoPBxEn
 Xs5+x1kiorkavfTX8aeVe6GgWI5ebN35iUiQV7nEzjpMmA/Y5GExqgymcjiGeRz64AkC
 aMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Q8etfoWT2jfX9dgh2kmChcjY+MdQxMMNc40Nuy8WnTw=;
 b=tfl5Ua9rv5dWQHA5irnFiCwHxrFMIQPCUW73eibkjPz3OXzYZCmoB0JV/4Ur3fIuPl
 R+JSJ6LD7mjZ+XCRjPhBhAZul+eV1d2ZB2ALoS1+756Kw/gW0pSR5q5ZAxhx5gHtzP+Q
 eehAo2E17lr8kteMthUhOIFb9P5171G4K76o5Rld8q9I2hdoL+qrrxlfxfcoBaAQ8bTw
 qf/rtcIVR+lQU5KTxVgdhsCg8qoO8GRVxyQFFeZlsr5yNemygUouvlh4H710j/uVxrdQ
 rLsWIoygB6tnfgxTsve9ZBYLWJOv3rUA7OkCer7qSoDunILltN4ehb1FyjHPfNfJ/SlQ
 Qatw==
X-Gm-Message-State: APjAAAUmxza/xdAmDhtrfUA+YBN3b8IW3SAcNxnCMgiNqrTYrO2tHtwf
 pQsJCOb0doWtQMVUzimMKDt07A==
X-Google-Smtp-Source: APXvYqyXa84y4FCNbZFfCVpDWSt4YUn3KRWuC/KoOT8Ly1Pui9wTvG+4l53/UD7U6GQg1XXcqyhmQQ==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr2676045wmj.169.1576105835264; 
 Wed, 11 Dec 2019 15:10:35 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:140f:3f8d:647c:49b0])
 by smtp.gmail.com with ESMTPSA id d67sm3931285wmd.13.2019.12.11.15.10.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:10:34 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v6 15/15] Update MAINTAINERS to add reviewer for CoreSight.
Date: Wed, 11 Dec 2019 23:10:31 +0000
Message-Id: <20191211231031.5688-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_151036_583989_CBD451D5 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added myself as a designated reviewer for the CoreSight infrastructure
at the request of Mathieu Poirier.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 77f5d28fa84b..3051a3765955 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1642,6 +1642,7 @@ F:	arch/arm/mach-ep93xx/micro9.c
 ARM/CORESIGHT FRAMEWORK AND DRIVERS
 M:	Mathieu Poirier <mathieu.poirier@linaro.org>
 R:	Suzuki K Poulose <suzuki.poulose@arm.com>
+R:	Mike Leach <mike.leach@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
