Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED047D6FCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=K6k40LLahMprrEwXc3dhdMiinJTJBlpfIlQibs1jOfM=; b=kzt
	X3ETP6kqnaBEDXV0/EYnSDyDvhUeuO+yeNVeSrnycWxeb9lb3po+LH2SKZDJboibayaedM3RSJoMW
	6eqP+Kb9t9ZYQQo+sHfqOOrcEZZsbQunkTFroAlyOF0BGtEDJhTtq9BLMO4KEfXLA0jVmmrxj30FO
	4SjkUPqUvi/BJUVY65042dRQfask/yXj/sKSrPoTc44xX6/OxeKp0QwyoK+esrVExQTOnDOEaeeSt
	5G2317i4jhjNyZnG0NaweRZiCi0Dz0vUr9R1+rEs1+PsZseB1Hm3nW1NFFEwBC+ukZaVrPPmFTEA1
	sOkTsumSmZuyikh1keBS48qsc6udFtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKGoD-0002hL-BI; Tue, 15 Oct 2019 06:59:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGo0-0002gU-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 06:59:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so11841120pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 23:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=WEvY8mI7wziVLeSGskg+VNlvZA9UmNy6YweIvzpqB9w=;
 b=YOT0SMP8zAfJji7EtL9vvZypd6z4pxouSQAnJufkKRSOMQ4ymp7uwYdjKZcCXY7Zr/
 vlHfrHfFTdZDS7kxk9/xC++gQjcLxWTpFf1Emh86cDYBMu9X0nyxBsOvX6zpeyDGFXg8
 sHb+qmocNkSYNxf9LblfFZD/XBXqzbvc/zUvVX/hYJjquDKKTQ0o0sY4IgVjCL2LiSi8
 qMPvK2TNwjKMR41GCEAWL3IiVLt/FAhHUOeXJouxPtHSvK/9eLS8eODPM1bEWkWRDHmr
 1L4HLAOGKmMoAC1as61Tls400S2SuDX1FGS1HRWvfX7H83dewtHM792iH76FBZw+XJya
 I/DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WEvY8mI7wziVLeSGskg+VNlvZA9UmNy6YweIvzpqB9w=;
 b=R7X3+NOadFxyNl2als6b/97Dj9aKMnJG+E3rmeNkM0s827dp/6RAQf9Ggj1HiPwT4d
 8QrjTUcF6IyE+3n1YvsFXpHRQqpdj2OpkEmBYd3gFU9vOK55RN52wnbqxNAGCBwsu73d
 qXEEkUEfEtmXw815zUcQbIMv0KvUNOGcPDIP7j8DCg/6twUJRuXho0yTTCHuryH42QA7
 tNRzoKewvbdV562/QXIhfdDPuHH7t7y5acvx6RsP7/F4+ne7YNEgZIJVk6hTm8+MR0Cp
 o9HsfIYYnalfY6+yOAL+8txq68JydaVYQkA+PijuesVULiVefSdXlC1nF2MvuOCxQnlX
 1jDA==
X-Gm-Message-State: APjAAAUyaDoU2HYSS13nDWjqf/xv+Yf8xEeHJVOOgxOJBAvVa05uA7OZ
 nbaAShSsXgvsasjbM6uPoJ2i0g==
X-Google-Smtp-Source: APXvYqyVgzodVpkQoZfWKsHR6n19NZcAwX3aK1+mxFq1JsBD/k0LL87kiVMZ0tTHshCDkxYoswk+bw==
X-Received: by 2002:aa7:9e88:: with SMTP id p8mr38091616pfq.10.1571122779560; 
 Mon, 14 Oct 2019 23:59:39 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id i16sm17952646pfa.184.2019.10.14.23.59.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 23:59:38 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 1/4] ARM: dts: am4372: Set memory bandwidth limit
 for DISPC
Date: Tue, 15 Oct 2019 00:59:34 -0600
Message-Id: <20191015065937.23169-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_235940_907525_E15DDB88 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peter Ujfalusi <peter.ujfalusi@ti.com>

commit f90ec6cdf674248dcad85bf9af6e064bf472b841 upstream

Set memory bandwidth limit to filter out resolutions above 720p@60Hz to
avoid underflow errors due to the bandwidth needs of higher resolutions.

am43xx can not provide enough bandwidth to DISPC to correctly handle
'high' resolutions.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 arch/arm/boot/dts/am4372.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/am4372.dtsi b/arch/arm/boot/dts/am4372.dtsi
index d4b7c59eec68..cf1e4f747242 100644
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -1142,6 +1142,8 @@
 				ti,hwmods = "dss_dispc";
 				clocks = <&disp_clk>;
 				clock-names = "fck";
+
+				max-memory-bandwidth = <230000000>;
 			};
 
 			rfbi: rfbi@4832a800 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
