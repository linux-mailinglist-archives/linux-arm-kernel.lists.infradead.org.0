Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F36B1C87D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O3YqjF5OiOVsEVCKLkTC2Z6EaQKCOMF8t/dmPviYF3M=; b=gdbRGOEeYgwJxeyL64y+a6PaVI
	edFJqy+r3eMOHym0yzCkcYuTtjdULmInIuGQcCz60kIlgOzpD/yyaf86JMP6k47I7n1tpsGELTDeS
	5sec51sBjRFrYPkcgHIBCTz+qNq0hoRMV8kYxx0XfM+k1lqdujwkHZ2RiImFLTZ6rW68mhsX2PEs1
	1Oin+N1B4Z0kzkLG97H/Sui8RFa+vJAJ4HaJaDZGCxR+6dHpoJThjm1hY5+pNhLGo4gqiAS4y6ZMA
	xt8Ew8917/f71agAX3FhV4Pc/uyXkavMOyKchNXT8b8f4Q8Jh+In9QH4Wq36sPHai/wgFRfcyeWPd
	buekUIWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeUv-0007RL-0e; Thu, 07 May 2020 11:15:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeUS-0007F7-NX
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:14:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id j21so2685814pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 04:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=P9xzAJWNtpjG4GM5U3Le0oR9S0hAuJPJAnKqdXJxjdBeAlU1kK9ev60F6NUlFWuqSf
 0jR0DjkY/COxzCP/1kz2MeVCJdzwdTcmdWGw81XdGgJVtt34H3FIuNPSXhOCggQ3nL2F
 1KXAfLZC3Rk5FnOJmARCEQn6HwPsItMdYj7Pm7vqfeHaAyItsyxtSfS9ACuy5H4kZXRm
 CgTfXnAFJDztw6upni3fz8mYsHoITdYwUTNHmrZL3bepyA85Y2Q/hYu+yurlLFsdBw2y
 7NEWb/9tqQjNx848PhgqrivnMNVlP4kxUVXzb/6EOHyEIJoIeFadl37qPNiBFxNM2tZ7
 wbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cweRr9cAyY6zAkbWBKWMpZ4+w4vWexg4Pp5+tOHzveM=;
 b=pSd5yu5bQ40Od+IL0DrV0Ku8I0o4qr0PUNtN2ypUqfK9//ocS+azVL1GDXmlkJ9yzW
 CtJpfVVWVK14oU1mSOOo8pKqyL0ms6RslTSwtg9fut2AizwG/lsJK+JnCjufk4TvUArB
 cOmMyQWDjDBVokQygG6SAcSZ/hEN/2DQ0bBox+MiY74Yl23bOGFFBTXuiKlaVI2rnKrW
 X/vkC+RuTxsLv37MIgR4ChUYi4Eov1kW5ioDZXFRqhMth0Chk7UnicCUFq6RiTlCdlhW
 sCfc2kzPdSmi9xL8d/Bd6pOpF+Hk5Bhayle3MGx7c1UdFft7o06eFwU48pgn5A4A5IDf
 rX8Q==
X-Gm-Message-State: AGi0PuaE9JERw1daY7Bxanwpru5ZBw0/WR3cp8PpN+FwbgTnubKIDA0u
 0QhjSx9cvSKGfu6wlsp5q7eYO6ALCY0=
X-Google-Smtp-Source: APiQypIvZeaFF5cDEz/4tLTjZNOm0OTb5Djpyxeum+11V5wTG99AuLzfa25c+QU6BOGUSiCcWz+bBw==
X-Received: by 2002:a63:778d:: with SMTP id
 s135mr11615957pgc.238.1588850096044; 
 Thu, 07 May 2020 04:14:56 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id l30sm7304041pje.34.2020.05.07.04.14.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 04:14:55 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH V2 1/4] ARM: dts: stm32: add I2C3 support on STM32F429 SoC
Date: Thu,  7 May 2020 19:14:46 +0800
Message-Id: <1588850086-24169-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588850086-24169-1-git-send-email-dillon.minfei@gmail.com>
References: <1588850086-24169-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_041456_765198_E3D3D5DC 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds I2C3 instances of the STM32F429 SoC

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d777069..257b843 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -402,6 +402,18 @@
 			status = "disabled";
 		};
 
+		i2c3: i2c@40005c00 {
+			compatible = "st,stm32f4-i2c";
+			reg = <0x40005c00 0x400>;
+			interrupts = <72>,
+				     <73>;
+			resets = <&rcc STM32F4_APB1_RESET(I2C3)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(I2C3)>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
