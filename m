Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6F81A3C4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=btoVL7VDfcYPuGDwNFDxTuDpRMq9WVbH4bek3LC8W84=; b=jUa6i3fybk4mcd
	v4WDQ5VjDe3vWBR1faJTjV2cEmaBsyLMBhDLHTtOubTtYNeYhT1ZU29giIHxtI038lQ5FNoKgQRmH
	3SfzvlH/K4GyCnNULWYgd2oLqbA1BRv4XR9u/flgFFn/F8086SbkxBtgxnh0RMVm861XnPdMgKarw
	4eXJwPvQTJknzVSYMAJBNlHJpcTvzu9uzijyY7w76S6WlAJ+Cr3t7ceBGBZI1xm9CTfx2OnRCKZm4
	Onthl9Sq6J+tFkfod6iKLSOashvqjrO7iVN1iRn0EdUim6yWi1EWR/UFKTu4O7RAhoZ+7Lhh9qjuq
	Xm0mZSVHz3GEDKHKLY6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfVO-00042f-Cf; Thu, 09 Apr 2020 22:18:38 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfVH-000415-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:18:32 +0000
Received: by mail-io1-f67.google.com with SMTP id i3so1167170ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:18:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FWl2E2uJky2ey9QLTpo/6O7C2e5+kxHENTaUwpfD30E=;
 b=j19hNleT8HklqfBy2FYITKX8HR5Izx8uv7uip+MuvWQ3vYadUL4F9MJPElQdtAWPdw
 0pWScd9LIvvXGjMeUtWK7FbuNRjKOzq4JCULoiX11Xe0JErFapRJh5zvMjfS/190Tg4m
 ev9k+iyDdpWCWsczNsr/Ki+KgDth8EPybZoBKyDan7Lys+TmfEmj5uy+uHV0LuMW6crk
 8imu3oYZnEwDiZqWfga3Lr9INiBD1jHcpbWIhb064V9qoBzEtyn5KFCUvs9NqYffG2u1
 PbeWwct8Igp34aXpQeL1OghGNBuLi5hs7XHDfD0D6fzddQ4T8b9A8O9jXqjL+paS7+88
 z/mA==
X-Gm-Message-State: AGi0PublQUZioNfU74dd0IeAuHFCxFZarygdaDty7uaZJeqE4EavfDCJ
 llWQub70A5UMg2NUo32WsDhpT9U=
X-Google-Smtp-Source: APiQypL+KEPyy6/Oxycjuem5tnU3Pz2ds6DEr6Zw/8JyP1kGdlCiPW8VoIE5xzRPj3S1Z8Za7WIyjA==
X-Received: by 2002:a05:6638:f0f:: with SMTP id
 h15mr1803241jas.142.1586470710128; 
 Thu, 09 Apr 2020 15:18:30 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id j2sm41989ioq.13.2020.04.09.15.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 15:18:29 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH] ARM: zynq: Don't select CONFIG_ICST
Date: Thu,  9 Apr 2020 16:18:29 -0600
Message-Id: <20200409221829.29421-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_151831_046136_85A3DB3C 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_ICST is for ARM Ltd reference platforms and isn't used by Zynq
platform, so remove selecting it. It appears to be a copy-n-paste error.

Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-zynq/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 1ca633e3d024..43fb941dcd07 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -10,7 +10,6 @@ config ARCH_ZYNQ
 	select CADENCE_TTC_TIMER
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
-	select ICST
 	select MFD_SYSCON
 	select PINCTRL
 	select PINCTRL_ZYNQ
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
