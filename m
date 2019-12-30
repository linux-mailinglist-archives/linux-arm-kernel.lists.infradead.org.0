Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACC312D244
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 17:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wsJCOqivCi+aCvCE/P6NBkOanVBKzSG1LoE4Du08iUA=; b=eV2
	ZdUMgrsUyTgB6oxMdkqWr0YeROf3oYs627JpcKYuLu04f8cvTrXGLzCNZJ+hcSgyVefy7GCRtosXT
	AUi3m2Cub5NIS4RsBjq45eBsFrV2a5cuE0wi+pl4adkBak50WhV0xmfJ36K82WQgF3nuXe/uPHigf
	sxJH0uoNwrse/QFoylyKKABBarhGbFCNIJ8urzqDsZlhEcdAg464Az64QSi/K2lKg1bIpO3AMXFhG
	KCG1HhoTmWjyZn5+zqXf4m4OPLr7lW9lBCSY8J6W/caT9i6juis09/0B9qviJeHQAlTUHmsabHu9A
	tABzNO6lXS0tPmGNj0ULzFUwJYzqYWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyAw-0001ZR-3x; Mon, 30 Dec 2019 16:45:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyAL-00013w-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 16:45:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so33110088wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 08:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Q8etfoWT2jfX9dgh2kmChcjY+MdQxMMNc40Nuy8WnTw=;
 b=xWbR+AordFuc2u2uhpGUpRjkGvXmnY1PrIITONCIHgZu1aOftTzJ7zl4T7qQz1l+4v
 QeMzq5niJI1Zs0/PzH4O33klMIT40WAc8sZptVmLhZwsutb8HIlDiKjMIvpvr9lyOIS5
 VojZNC4T+pFMpT25Sge/EKqbSBiAO8PyWpHc9+/nVx1u43aW0lkEIMUqBTLjuCspdkIU
 3XlwM1rhrGEn4Y9CVrv6pVnK+bO0kRKnb4QqGoXPd/8/FqYfNFPLcLVEG7Tik94p7fEd
 gTnNfu0uv99D7R0dgi6kVJx7/Rs16a8Hp7wHBNnt/Jd4I9EedLGBwASarvVSHqRuOwte
 rdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Q8etfoWT2jfX9dgh2kmChcjY+MdQxMMNc40Nuy8WnTw=;
 b=GbE81B7EaYZaimmIBp9kamP/BiWMjUaGGMol7sKm0O7/g0S6CmtsAOXFBfDByvkoYR
 IIxszjb7XgY/xp8n4TNl417v5H4bEc4pa6g6+QqjbQQpMaIkEhG2BX7nnZe5q1kTDCMM
 3kSC5eKm/oUlsxCawxe7ujXYrqElLkD3noTdpZP6CMugNpWP1qdHacu9KmZ0OhJtAh62
 24zjUc+2Az1FP8iuwuo5sg1dZIvRyk0WPcA44bbuHdv0KjevgX2+unznk1RbfHjQCPV0
 t+/pp3PXfu/4tmHbOES+vqVe2OwrsZVYT/BkckgTt+ZrITsIW9Jy9Pe4F5vySguxqe+C
 fxIg==
X-Gm-Message-State: APjAAAX5T0FDcw5Egocp1o01fG/t/L3bnm7CD1QRjmaGBFiVz82yffCK
 MtqBAtDSpBNiotPN5yagPjnFpEnuk64G/Q==
X-Google-Smtp-Source: APXvYqxkPXqtQkDMbYIZtRNcBiK8Q5WHw6zsX6XE0LPeA8O9OqNaU+QY9hCAC1d8XAL2xbkwRxrilg==
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr67217505wrr.98.1577724311480; 
 Mon, 30 Dec 2019 08:45:11 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id p18sm21508071wmg.4.2019.12.30.08.45.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 08:45:11 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org
Subject: [PATCH v7 15/15] Update MAINTAINERS to add reviewer for CoreSight.
Date: Mon, 30 Dec 2019 16:45:08 +0000
Message-Id: <20191230164508.28432-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_084514_298412_84952E49 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 Mike Leach <mike.leach@linaro.org>
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
