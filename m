Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3654C10A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 12:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D4Yujml3A+IB9e91GAjOCfOSvZvxZbVeJMjDC5bugck=; b=hgYS2AgvzEskbo
	jmIL+Nqr4n8jc1YJhIEeLKXvYxbcV0eC1/HiRiz4aOOQmwj8IuxrkbLuikFrPxqCm+SUC13GmTkF+
	jxPvANbNM0AGnttmV4I/BFa7mXi+0axTP24OIhR0TiqFtQ/Sjg8QI63cfExWzgwY6yEXfTM408+sn
	03zHugji/qSPRjNvo76x57u9s1ahezr49ZFuVgNWfHR1oCPw6V2Z76+hk0V31SOIrZwzaFSIhgxRT
	1sxP2i1c4HoAeTV4MkgNrOWi5KakGO2QfwMwfsjXACnagvXP6eNkeHFfV6/qC2WcWxVwv2Ehwz93z
	Pr40P8LzJjYNY5DoryUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEAMe-0008MF-8K; Sat, 28 Sep 2019 10:54:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEAMW-0008LX-1M
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 10:54:06 +0000
Received: by mail-ed1-x541.google.com with SMTP id r9so4422882edl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 03:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NS2eJI7PMhTPoQcfqk7++VoekZp7OcJ892f8dwHw9bE=;
 b=F3zKwuTpzWFuROVFbuGA4Vl1Lr+KDC9TkuhSeDIxV6QLeyNMB+sm4CMURZkL+MGFPM
 OIQQWji13uOfCh6eHbm7FxAm5fikjRnt7wFgyAXzTdbebSiZRhWXjJOEyjKECKB0y3Dl
 uCPoYQsE5+qEl2xbhUNVjd46LEoQNxziZcsuKsSaKcpx1Qsd4gI0Y0V/v0bEMg3qz9p/
 dWPGm5P1wixQ/XCvWs4S60SuSXc0w5sY1/chKlxO8R+1wkomF4eGotdJDNy0hYlKVDvn
 NFbpYbF2ZvmIcPpbop1tplMilthNYQ5MLcw2a92A5XeZTiFkh3sYrL7sacBohQvOkuHS
 2OaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NS2eJI7PMhTPoQcfqk7++VoekZp7OcJ892f8dwHw9bE=;
 b=cGrrHQ+bbiMsPt7KJKmHMcWRjd/bxn5g67YmRqRV9HJSeslyyNj5p3kP2OerUzVjT7
 KWuJnZ8IwhOEGRSsmZZim27HFHdP/VJjjwNXJPMFFL6Qlv120UJOnOHL7MoHBTnd9yUT
 H4EF55/W8/VAHDMbBm1hLpDydOvA7bpQKe4GN3wa3k3QivhbAMnuMKePgyX731dsQaEr
 ugBjhXMA7B8ouv1P+In+U7jdiXK6rryxiqtkcb4BDRJV5Vdr2XHbaeLDBOB5DN5Z5S/e
 WyzxbcT3uXqhns3Oo+IeJdMk9hwqmiNx1JUf2HbfS3LU177dokTGo/4lcrZnxP+WY+Mq
 aNig==
X-Gm-Message-State: APjAAAWG3mNId6gV/D7tGMuoUFf47ghrcDyty6yORToeFxvkwerSNeXG
 IMU3f667rqEvZLUZCni8cfJ95eVYCVc=
X-Google-Smtp-Source: APXvYqw7NqgkTGbItGfUfu5qkpxPzfGQosNBDzaEAbbOmg6j3htj2T7E1ouf1V/bMD78KPiANwfApw==
X-Received: by 2002:a50:a532:: with SMTP id y47mr9230412edb.273.1569668040249; 
 Sat, 28 Sep 2019 03:54:00 -0700 (PDT)
Received: from ws-ub.lan (46-127-124-166.dynamic.hispeed.ch. [46.127.124.166])
 by smtp.gmail.com with ESMTPSA id
 k40sm1130615ede.22.2019.09.28.03.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2019 03:53:59 -0700 (PDT)
From: Walter Schweizer <ws.kernel@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: kirkwood: synology: Fix rs5c372 RTC entry
Date: Sat, 28 Sep 2019 12:53:44 +0200
Message-Id: <20190928105344.6788-1-ws.kernel@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_035404_103965_1C117A51 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ws.kernel[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Walter Schweizer <ws.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the rtc-rs5c372.c driver the compatible entry has been renamed
from rs5c372 to rs5c372a. Most dts files have been adapted.
This patch completes the change.

Signed-off-by: Walter Schweizer <ws.kernel@gmail.com>
---
 arch/arm/boot/dts/kirkwood-synology.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/kirkwood-synology.dtsi b/arch/arm/boot/dts/kirkwood-synology.dtsi
index c97ed29a0a0b..217bd374e52b 100644
--- a/arch/arm/boot/dts/kirkwood-synology.dtsi
+++ b/arch/arm/boot/dts/kirkwood-synology.dtsi
@@ -244,7 +244,7 @@
 
 			rs5c372: rs5c372@32 {
 				status = "disabled";
-				compatible = "ricoh,rs5c372";
+				compatible = "ricoh,rs5c372a";
 				reg = <0x32>;
 			};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
