Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF601F76CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UD4xJPcWLRrK7B9TRmbjmP5TNW14UYXAuwa5mhVSvmM=; b=bmSa8yKe37L8Qa
	C71lza+prapWzpIiFeT37GBJq6/HeHET4XfN4MvA+t3GkVxh6FB8ZjbIQMY9zW4uUCI5jwTSsOcQ7
	8lmYI1EFMIjK7JFHmP4ZUS6KVPSYlecLtsS4FTKpxAjtnpp7AT1U39q1AhI4/SKDZ+hAleVXxSgxQ
	6CKiwl2f1trxYiTJCce5HW4dZubmfsX1+dp4AA5qe7G8yKGEVKZxqrwc0OyCu3+phqc40mdygOT26
	ofnG1sPGKyMn86dg1GWqIBpBSevBoa/P5wVotFrMAUuUs2fPWtiLhto27S8I0iKS2HaVOkDwR8mRO
	RgkKEPUl4QUeN+MAtDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjh4w-0006mC-DA; Fri, 12 Jun 2020 10:38:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjh4m-0006lv-VO
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:38:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so4102049pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WvhRfFFzVWOkMyqXOEYJfwCCY8xI4LYNR9QPrmPOkSk=;
 b=ElXWXM19cP3QWULMplSNGPq53gVRQvO0+feyPB61J0uWnTkLRYvZj9NowP5rJ42ime
 257FRP7ObjE62dcj/m/kGBM+d9MRBKzGm8rv3eZaSWmU5UPOqzC0+JZxCn31BRQSpoI1
 G5CZKHISaOxDptgRG4EyEff54zUpU+KCLrYDpnHlUmggFQSmDykGIq0xaT+eeTPeZql/
 Eh7/uheX4lw079+ywvbEweYPbsN69VTiCIJqBn2xGt9POarozPHfwKu8LZMqttyy03j7
 fH1MuwvPOAYU4zKNSepDIVGhKhAnXbovGfjzvg4SXCZQnkwly8BAuLUNxKcqZRp7r1+T
 EYWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WvhRfFFzVWOkMyqXOEYJfwCCY8xI4LYNR9QPrmPOkSk=;
 b=gyqq82sxWGpDn7QcyXvkqp+5NUSS21UxBSzX9Hx/eCyiHNUdlWxgC2I4Nh8HuCFYpG
 RQ2+ybu58iSOjKqf1dse9ulJzeNOk/x3grVrM/DbzdGb7+6dv0f+CtmRlUTeLr/N8TnG
 G2drtMncfLFL103rkB6WtTZGD+mCU5AGeiQ3QKV7kIcf2Lrw3OzIH6eCghmof8pBTCss
 YN0t7WTylKPF/5Sytu3vYuFrmAeRBmQrXlORhcUYPaCt77bGGHy9G31ecwzylXrlb6G3
 ULFMwqxpmiOyM3VvFLdk+p80qI79MmPoJX+lDpPobD06E8xBOGNQnc9y65oxdQF4H+cl
 5XyQ==
X-Gm-Message-State: AOAM531I0rU9T7kivLZ8kpM6NzwbtbHl6nMhdXW/KjErUN/JG0y4URz2
 WOgicNm7u60Q6ErWmR7sBq+5PD4n
X-Google-Smtp-Source: ABdhPJwLRkg96x7zGtjyzYgKRs0Ruwlsp30An8NE+gDYw+9HSz8MeIr4UKtAw9C/uva5iWAYydBcrQ==
X-Received: by 2002:a63:b146:: with SMTP id g6mr10343645pgp.396.1591958300135; 
 Fri, 12 Jun 2020 03:38:20 -0700 (PDT)
Received: from localhost ([49.205.222.116])
 by smtp.gmail.com with ESMTPSA id x14sm5899825pfq.80.2020.06.12.03.38.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 03:38:19 -0700 (PDT)
Date: Fri, 12 Jun 2020 16:08:17 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 3/3] ARM: provide CONFIG_VMSPLIT_4G_DEV for development
Message-ID: <333fdfb5080726988b1223a5fbe8ebcc4d6ec3e0.1591885760.git.afzal.mohd.ma@gmail.com>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_033821_008664_8AB284A1 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Select UACCESS_GUP_KMAP_MEMCPY initially.

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

Resending to linux-arm-kernel ml(only), as received a mail that it is
waiting for moderator approval, trying the resend by adding 'PATCH' in
subject after 'RFC', in the hope it will hit ml with this manipulation

 arch/arm/Kconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c77c93c485a08..ae2687679d7c8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1326,6 +1326,15 @@ config PAGE_OFFSET
 	default 0xB0000000 if VMSPLIT_3G_OPT
 	default 0xC0000000
 
+config VMSPLIT_4G_DEV
+	bool "Experimental changes for 4G/4G user/kernel split"
+	depends on ARM_LPAE
+	select UACCESS_GUP_KMAP_MEMCPY
+	help
+	  Experimental changes during 4G/4G user/kernel split development.
+	  Existing vmsplit config option is used, once development is done,
+	  this would be put as a new choice & _DEV suffix removed.
+
 config NR_CPUS
 	int "Maximum number of CPUs (2-32)"
 	range 2 32
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
