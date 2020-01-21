Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94F3144567
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 20:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jr5lXqMduF0NGXygj7kbp9wBwNxwGdj2kheAUGc9DE=; b=qE4v2zqTxwMpSB
	1MWLYXfZWpHoEYTJA/RV/JAp/xLH0exnuG45JkCmj7NGHvIy+MPwj4bLot7I/lNaZbj/8CceLFAna
	2f0tHlrY+wDJ/gvSanyFrw39z5DTR3s4yWm/mKTc1YfNg9rIGwerawvBELcCtERgFOs/U0rlx2Pty
	D377tDRvg6Q+F4MlPKIRwDB1hyXnUx+yFoBqtLuRLOalJ8K3Y44fPilokqWJIQa3c0xQ0x5SGhobn
	8Y7Ne2+FBIDaZ+6CRGC5HbIC6ciuzFoEtCpzBKR29PWmnw1AU55N4HseC6ElbuNFQgm3+MpC2SZuo
	esqao6CSm0ZN7+nMdG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzZj-0006mS-Nh; Tue, 21 Jan 2020 19:52:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzZV-0006kn-20; Tue, 21 Jan 2020 19:52:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so4546138wmf.2;
 Tue, 21 Jan 2020 11:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zxuX1UtB2iSvDZIxFVQFKZTyCjRelb+xJCXnYV6RwPY=;
 b=pyD7oMxb+h4jKCDHx8Zxqa3r8SpQmJ2Xi0xv8kpJVM4SCmmSXBcI+Z6rw5qTjx4OMx
 z/xAs+8vfuVthEGaOJ8rIWttOdK4Uz21k39epbl9VGqHZAEd8djy5bShH3OIl9Pyv3o8
 hT7lYK6/ARsKY+p3BiDduq4Nr2qio+HG+8JbHXOtaWhkyvT2tJmARM/6TJloPkJxjfEt
 vNInaIUlgP5GwGog2HwymKIsXXlAIvVUvL+OW2DCZYxDfWr4c/oj8uO4PY9Rkx3ac3za
 Px8ubbN0YxfyEEaiN3/DnmxizpwTA6dCqLh+7rSLrP8Gg9CcyoLrY0k2avYiuUaW1Go6
 yLdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zxuX1UtB2iSvDZIxFVQFKZTyCjRelb+xJCXnYV6RwPY=;
 b=V//vTTnI9CWAKCoGdAQPgK1PB3j3ZwaJxUHBHyLdyHcMPe1JVT962Lam3Wcs5GO3pb
 fp9GZeRsUimk638FRemENtWBtmBMiWIhNwJQ3GYYa94Lt10IBmK4TrCStRqJlJ3WKXL7
 MfqMe9BIc+/503iS/37qlL6fcPGmYkVGGb31nho92eEVgDjLWfEYnopeKAeKsJ0jB2j8
 9ZWNCFXEXLkBmiwfHQAw8ET50tBMPY6IXkatTZdNctUVv3Qt2JinXllJJ/vGMxk4iuZI
 VPkV/NqAlyHrGL3HRarOTCR+XPaklsEKY5FnhlUCEA4gwEmon61D8Ce5BV9YHVdbQ9ko
 TM9A==
X-Gm-Message-State: APjAAAXr5vM9vke/tddqRPFOuYN92qRDLJMIhDin1DRMemGER11RsUoj
 ZSOBjMMDQU+54oiQ/+Zz5PE8sVjn
X-Google-Smtp-Source: APXvYqx5Yx5lfcaSIVQJgA5csyaAkbauM0CYPILqYoYnpAt60f+UEz9SBSMVAtMbVmDNrGfVDa98NQ==
X-Received: by 2002:a05:600c:20f:: with SMTP id 15mr61254wmi.128.1579636339537; 
 Tue, 21 Jan 2020 11:52:19 -0800 (PST)
Received: from linux ([2001:7c7:212a:d400:8c86:9345:7668:6b83])
 by smtp.gmail.com with ESMTPSA id s15sm50254070wrp.4.2020.01.21.11.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 11:52:19 -0800 (PST)
Date: Tue, 21 Jan 2020 20:52:18 +0100
From: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] staging: mt7621-pinctrl: Align code by cleanup long lines
Message-ID: <20200121195218.GA10666@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115221_101846_0CBD51E7 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sandeshkenjanaashok[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup lines over 80 characters in pinctrl-rt2880.c.
Issue found by checkpatch.pl

Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
---
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index d0f06790d38f..254d4eb88f5f 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -159,8 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
 }
 
 static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
-						struct pinctrl_gpio_range *range,
-						unsigned int pin)
+					struct pinctrl_gpio_range *range,
+					unsigned int pin)
 {
 	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
