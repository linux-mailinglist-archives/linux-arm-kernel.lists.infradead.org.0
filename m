Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F75D13B2B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M1FbpyJej5hSCFkO9gYO+vtZT1MRb8oP1oCysz54q+U=; b=gtXZQ/eII5dtCsdX++oqJpck+H
	Iiy9IL8s0kF9h0FryNoBdRSXHDcoQafz8qv1Or5NYAmj+PZ/3ajUF7UU0IQiq4LP4LFAU6LMOvCAO
	/MWaO8R904v9ngzoYdlh7I2VPVHCBqMpZby/IUiZBYYBGO/iYxBV1lGggIl873yUKlSpWCUmUhXlN
	x0dfFAtgkbfzzzjVfp636/b6l1uFyKxx1SxW9H66bjZMxVVmdk3bQO7D98rUmsKsivPmoi1KwCDsT
	rS40OfeQyynG6L1t8ba3QjA5k4a9Sl0B3hvJBi2S1FhRjGqeCk4fE4SvXu04qWLIEHp5/NAGOejsA
	E/W87Zew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRXH-00068i-Le; Tue, 14 Jan 2020 19:07:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWF-0005KX-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so7025492pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vD4wTJSOL9eulpsTOv7Le84ncUzkM09cyPSOhtdnfmU=;
 b=sRB5dAWcX/qUSYqbrlWhiWc0MnbvpoatmZ6LCpB0UwOkZrtsYHqNLBFUVULx4jVB1h
 yzSnkzLcqPStLhkUXefgdfCUNhyhmMU7OVnpe7kimMEjwIOAxXVt06nuJ/SH3MyNhDsG
 gpEXvDKXO3QEkIDdR518cafxevtrh4gXvsAAYp8oLHNwvuOTsyijwX9qstj/kSBzYDh3
 j4YPo83hJw4RNS3iqKSBngW7p2yQRuiEU5Wv6f7Qc3GhmjQR/TsfS8EFEVn5ezuPOGfO
 SKoxuyzlOjbR1H0EIMHWm17hUa91GfSalnFWWkiK7XQNcU185sOSEM7qofNsbaRGyh6f
 7CBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vD4wTJSOL9eulpsTOv7Le84ncUzkM09cyPSOhtdnfmU=;
 b=qnpO4E60qwD36YAjKyLtgDdaiquwmU+ioGuoyrRcn6OcBA88KsDCf9qotW+YimvZjs
 9Cd0lqQW6ypMd+6gER2pPNKIpACn+bSfEGfEIqP3ieeJGi4aDobs9eWVnd9sHlyGfyn5
 SYL4de958XU+VWCt5aETSAfrjkeIDrPz7KTm4QbgPRBiQ/56qfAfAAHwYQ3SVRjxDAAi
 MYU7omFhCOdfRCz0CGRMMJ+aieAFFcvPUKC9dZf3PsavJQQEMZO1DcM2lxnsvDvoXf+J
 zZ9L+zqapnnOAYTVMTG91x/hZ9SZ+ZGYwR31W++bOtwDXt+hEwdDSxVFvy0gF2sKk60C
 joRQ==
X-Gm-Message-State: APjAAAUo6XGQIZYn3FJr9wrWZ68lF1rZRZ5aEiKh77HZhnadiuW70j0y
 K7EPoQAJ24O2fz/4w/wTfQI=
X-Google-Smtp-Source: APXvYqwCWirANusXlzS5wVKhPR+K7LLYkWVsiIK/0rFOHoFwJJOpRuMfg3cj6pr0b/4klXZYXW5G/Q==
X-Received: by 2002:aa7:9306:: with SMTP id 6mr26753037pfj.36.1579028787478;
 Tue, 14 Jan 2020 11:06:27 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:27 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 4/6] thermal: brcmstb_thermal: Add 16nm process thermal
 parameters
Date: Tue, 14 Jan 2020 11:06:05 -0800
Message-Id: <20200114190607.29339-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110627_875255_B18BF00D 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Match the 7216 compatible string in order to derive the correct 16nm
process thermal parameters to obtain correct readings.

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 2d555e7b884a..4b328586959f 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -292,12 +292,18 @@ static const struct thermal_zone_of_device_ops of_ops = {
 	.set_trips	= brcmstb_set_trips,
 };
 
+static const struct brcmstb_thermal_params brcmstb_16nm_params = {
+	.offset	= 457829,
+	.mult	= 557,
+};
+
 static const struct brcmstb_thermal_params brcmstb_28nm_params = {
 	.offset	= 410040,
 	.mult	= 487,
 };
 
 static const struct of_device_id brcmstb_thermal_id_table[] = {
+	{ .compatible = "brcm,avs-tmon-bcm7216", .data = &brcmstb_16nm_params },
 	{ .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
 	{},
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
