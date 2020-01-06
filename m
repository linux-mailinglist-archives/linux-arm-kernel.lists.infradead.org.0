Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0141316AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pDY4dquUabN1PApQJW+ClJsYvt55SvXDv6d9kSlHJKA=; b=oHK/lueIouoDM+
	Wu7wl6dmfvDenDCrGlhx2jM1AZTkVO3RkGy9uKig/aZRc9iUauFxAy9vVGPnWsm/kE5u1q+69I+NK
	sCKTLyIfSQAzx6Tn1iZT0vrJnZsvhXpfzfiZJHmEQR/61G7mbd9x33ZkP173+FPy1Le8jwawTcKxn
	+HZH/TOBkLpM49ju1cDIQVpXmwjkEnQhaZG74rKhE/OY0j32XQte/oFArZXxIDFN04FN9+WAUSlod
	eAmvOYgoioyRdqOpaqh4StDJ8zGs9ep0F2ONvQRCw8GCTZKPYFgshXHic7Jnij1wXWbfacXFRJGuR
	AuGji2u+YA7PpCOVFTqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioW5w-0001i3-Bj; Mon, 06 Jan 2020 17:23:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioW5m-0001hM-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:23:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id z16so27264192pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=1MK9kUc0jX8rAAIchK2uS4ItaDoeL81cSWlyOyK2j0s=;
 b=SNvT7iq8lECZ1X0YdoS1NvCMSUi4BP49DiLhty8aZ8UcBl2KYBO8M+edKmsW6f2yIa
 WFvpFxuHWiiYF6f68ivKNiXlnBxgb3dly5RshXXCLQ/uD5cE85LfGXSg4JQHMnMo+CkS
 p7WuKO0PoUEfNOtX982SNWOjVx8q5xPajHM0HSlL/cyZb/imeiC3bUWj4pApX9ME8ILW
 jdN+qWyRsyYPUjnQu8Ss7MANBR1COIwOvKPDy8xdFzevhcOrjqfbU15BxlNViFcOXbMq
 tB2wX2bieUO5XNSqPwznLejXP/3QXS/rtTI+Ib9os075D5GWFQzJKekZtt9HrCnpLG6H
 YjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=1MK9kUc0jX8rAAIchK2uS4ItaDoeL81cSWlyOyK2j0s=;
 b=aK1LN0ikapdbEY75pXdNHwPHxSAquzAN4yN5QxT5vFIwLFqNErwzLu5s4fPPZkIppi
 AyBncEjRSvd0KJ1McjhDD1X7eD181ZabAjqKe3JOOGXzwQgT1Vytwvk3er1KUbIDtTUx
 KIIFBYDebrqB6+pXqHPL8xJVzDKVoowsMhtPbWOKx4TUk8cWtPkUZh7ft4Py6iYBHYJH
 7LTRXNvGVMznslT3GjQTqynsJ0PUR3jFP/GOtXHwcFDvTfsrbAFke8AmmnuT3Depc8s+
 /ohNoE50V6o6ldv7ccOsht+0+0ytxnjwC03YZOB+lCrZXSKpXh1L+RS5/3Vwf8m1TkFJ
 eH+Q==
X-Gm-Message-State: APjAAAU4uBHLUKxVcLy8MjizGYwkCq0QsT9ESKXLkRGjff5NF/ODXKp4
 pnaDRwUKaZRPCVVZ7rK1s8E=
X-Google-Smtp-Source: APXvYqx5UbsJIQe4FQTlo4Bt4g3zdXkXPsVMVY+y9pSKn2SCnT6wGXwes+jaWpECdIIRdftW0A5d2A==
X-Received: by 2002:a62:4d87:: with SMTP id
 a129mr108865731pfb.116.1578331381826; 
 Mon, 06 Jan 2020 09:23:01 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r3sm79483499pfg.145.2020.01.06.09.23.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 09:23:01 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org,
 wens@csie.org, anarsoul@gmail.com, tiny.windzz@gmail.com,
 rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 1/2] thermal: sun8i: fix r40 ths number
Date: Mon,  6 Jan 2020 17:22:53 +0000
Message-Id: <20200106172254.20271-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_092302_497645_5149D2F0 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the spec, r40 has 2 thermal sensors.
Sensor0 located in the CPU, another in the GPU.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-on: sun8i-r40-bananapi-m2-ultra
---
 drivers/thermal/sun8i_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 23a5f4aa4be4..c5661d7c3e20 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -565,7 +565,7 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 };
 
 static const struct ths_thermal_chip sun8i_r40_ths = {
-	.sensor_num = 3,
+	.sensor_num = 2,
 	.offset = 251086,
 	.scale = 1130,
 	.has_mod_clk = true,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
