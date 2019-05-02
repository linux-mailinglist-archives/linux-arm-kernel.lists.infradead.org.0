Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E3A117D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zHuyMaaamZwDulzKJpSr2jIjp2U2zLjQxe0ykvK/W3I=; b=QAF
	ZJR7KRTl4+/Y1zdkPCrcK70sdT5u3I06cnaX6rO55XyJUcg/CjgcBeQJqzQAuYCHDfEX8/FVxdVfE
	QmhdJqHZysbNmWD0jyF4LVC2vpVJ8FH67FuArY1kA/QzqHJg/Kmh9eUscuUdrHmIXXZY6pWjTBFt6
	GL4eWryIwAVNeUC5JTLWJGsHfculW4lGOrDS1G/r2qS5F4IJoGg3O/rYxlkTFgHmykKwKKqNXiTo0
	KtLsTSw91CB0eXqWOF+7zov908y7MSRGYp6khb/MTJ4qwkqdnBJJu27uBTHCo1P0t0DQZY4bjPPBK
	5ryAGLilJmNX8fYUqXGn5LwOTFq5IeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9Ug-000119-Dm; Thu, 02 May 2019 11:03:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9UZ-00010K-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:03:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so934021pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 04:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=yOyR8oq8IHtcYKwMKo5EmKseTdIOzma0iWv4YEXZ/yU=;
 b=G+u2/xbqv6XKQ3fv5UFhAhQ2alxc+A4E//ftmby4grYjd6VJc/kaLWBhvcS4uHCgx6
 eJqbuhHu2WHoKmVbxyReWdZeyqDVPFQNceYC8OuPq5mCh02u3iDyyyMQT9wAqJRX+NhX
 qHt4NFJbJ5NCXR/uOXqA0SLEmNtH0PklLxk0fS76ZrZShSLPl7/bJZ9aO0iiyGHCplov
 TfFYz9uw75S9dQvk0Dwqc8iaZqnOe4lEyGtDLBannLR1V5EXH55KTWrlzTBWS201axA3
 e+fpO/R7a6rdSFQ4dN3kaeIQ5BeaTfxJdAjfhhtZB9qajt5mRBM8LPeQmCKJX+F6ATQX
 W6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yOyR8oq8IHtcYKwMKo5EmKseTdIOzma0iWv4YEXZ/yU=;
 b=afOa2ukbXe9OlZ6aQ+aWkRoYZNuebonQBT6MKN+6eXI9ABpN4sc9sv/KsAMsnL53Jx
 JwUdmu2OM99oETSf+lH5cWLb8zudzeP5MAqD2AtrBXjHTWKg41DKyLGMvStjHbBKWQtI
 yyFc7ISHHdz1YlGjfPVZXAfPDmyz20NxSlMDkzg77eqYQRtoq9kZKQZ/pkx2fxAyLVMI
 3qhnoIgSs2uZpNuAVJ+xBk3F3CSyI28wDmAMKBSGpwybRAgDWzieF37wLtofh4SP4xFz
 A40RPWEmLcHEV8Rz9BYV7DKnrXop0bWLad5lx2xiCKgp/mgtm10l7lcDldDj8cdXHZ8c
 j2Uw==
X-Gm-Message-State: APjAAAVsO9P0ncqeW2/l8uwPLI2Cr7VLfO+cx6ibziNyRmHLbPPAkzMB
 RGbIoaoX5bVs8DSgr5KZ76oo
X-Google-Smtp-Source: APXvYqy0UGf59Nz+0AnUFACQfMkiY8Zj96iYY+0Sr6qQKLX6BawDpJ4WJhU0prn9RT1py936s+POrQ==
X-Received: by 2002:a63:f115:: with SMTP id f21mr3291821pgi.65.1556794985829; 
 Thu, 02 May 2019 04:03:05 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:6284:a261:31df:f367:f70b:ed86])
 by smtp.gmail.com with ESMTPSA id s79sm111595271pfa.31.2019.05.02.04.03.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 04:03:04 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linux@armlinux.org.uk
Subject: [PATCH] ARM: multi_v7_defconfig: Enable panic and disk LED triggers
Date: Thu,  2 May 2019 16:32:47 +0530
Message-Id: <20190502110247.681-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040307_346948_B0DD7A0A 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: amit.kucheria@linaro.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most development boards and devices have one or more LEDs. It is
useful during debugging if they can be wired to show different
behaviours such as disk or cpu activity or a load-average dependent
heartbeat. Enable panic and disk activity triggers so they can be tied
to LED activity during debugging as well.

There was a similar patch which added these triggers for ARM64 as well:
https://patchwork.kernel.org/patch/10042681/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/configs/multi_v7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 2e9fa5312616..466ccc305a05 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -821,6 +821,8 @@ CONFIG_LEDS_TRIGGER_GPIO=y
 CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 CONFIG_LEDS_TRIGGER_TRANSIENT=y
 CONFIG_LEDS_TRIGGER_CAMERA=y
+CONFIG_LEDS_TRIGGER_PANIC=y
+CONFIG_LEDS_TRIGGER_DISK=y
 CONFIG_EDAC=y
 CONFIG_EDAC_HIGHBANK_MC=y
 CONFIG_EDAC_HIGHBANK_L2=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
