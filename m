Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353D2D4811
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 21:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qK5arUDLTjjmGjoh305mXJ9/MBpqaAE4K9fDrMxT2U8=; b=qX45T8PnK9GeaT
	Yq9rnvNEGbMT+xfyNMTQbMgEZsIenNEqBPurZjZqyqmlx3c2rLDsqhaRhwsqGQQIpe8bbvHh/Cn1m
	XmTe6bOr4tk/2kFg7ApQwHBUo4d12f4dy6RrYG9uLWj6w/nt0nUhy+3xPQQ2nVVzUh4d6A/R/9Pwh
	74LCca9rSxehnegpcTM5716JeM8dPX9vubNP1O3Z/OZKABkwt5uKYUdeOQEic0H+eUcb/B+Dyfh7c
	ArQTRmvSlY73Ci6B5Mdq/1WnLw9/0e3PLSRwKfMb8ECUNcnQ6MCtusYXc1nl/o43ghuaFDwm5TyGx
	6LqQJ996uklriAaZh5aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ09U-0007XO-Cm; Fri, 11 Oct 2019 19:00:36 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ098-0007NT-NN
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 19:00:16 +0000
Received: by mail-ot1-x343.google.com with SMTP id 89so8830647oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 12:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XVzDAbcWZXdsDHTskHlN8zvp0OFOMZiiZvVTqyfK5oQ=;
 b=REQ9n4XT5uYJfOAt1+orGDMyhg6WGHfDuJEeLvDDO4/MDCtIqfiE5UKnIbXTkSUIdo
 wTDvve84sMTKhuPtVZIVJF6cPXzRQB36Wbcf4w90zEsN57NoO7CjmH1S7wcREdGz1BlV
 GmCUGScx8p0Da3hcjC+Hempl1kr+Q6DjJ7TC2HOX20FMVHqe7zCjqpOI3HK6JXB/FTp1
 pjEIdCJ8apXKars5B1BRIvZCqOT6bSvcov7k9JTtKuGS7wNzygFKR4ppaOo2BALgYYYC
 aIZf3KZ6MJxQEvO1HUPxl+L7ZxYoy2BgduTWbr/oVb5PfEyUvGE8xnAqXAc79Wpp+PZ2
 b0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XVzDAbcWZXdsDHTskHlN8zvp0OFOMZiiZvVTqyfK5oQ=;
 b=JL7DS1K8DZsL1xr43lzwHETYm/i95t/YzB7yrYlo13t2dltrtoyj7+6sZFDvjTF6uZ
 D3zgVypgMDYwGOWOK1ZXoIKKPg+getjYwUvjr3uxeJAkWtYXs8jjkdnb3iliv2QzWtSY
 clyiUq+rU3f7i4DTNzfCR9nXTJvflmit7eYJ3og8lHKdkkmurfeL8q+WWX5/LWWmHJbg
 RycRxsoDIcnwzMdu4k3rUX1rnu0yW+SLkZSNt7r9C/lh7MsROpdIzhLJvp8jjAeDUqq6
 h4PwDqiKNeI4fY88RWgO1D329b6mRp5ha7eyrGKbbC2onWPGDB7ecetCzRJU5lHQMjGy
 yYTg==
X-Gm-Message-State: APjAAAUXYieu6PYOg3CKQNYmxq1ky8UADD5nesGDJ7RWf0ZToYk57Xfa
 IIm8birAhYL8pm1qZCAEwlU=
X-Google-Smtp-Source: APXvYqxS4oNRrteuzDW9YVSqdV0G2YAQXYVv2QQCjhlTgH68PPgJwN8VSyesKZWAz5+MV66mdeQ9iA==
X-Received: by 2002:a9d:67d7:: with SMTP id c23mr14470404otn.0.1570820413034; 
 Fri, 11 Oct 2019 12:00:13 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 67sm3037688otq.34.2019.10.11.12.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 12:00:12 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] USB: host: ohci-at91: Remove unused variable regs in
 at91_stop_hc
Date: Fri, 11 Oct 2019 11:59:50 -0700
Message-Id: <20191011185950.1470-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_120014_821274_914E2171 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/usb/host/ohci-at91.c:118:28: warning: unused variable 'regs'
[-Wunused-variable]
        struct ohci_regs __iomem *regs = hcd->regs;
                                  ^
1 warning generated.

Fixes: 9c4567fa0a44 ("USB: host: ohci-at91: completely shutdown the controller in at91_stop_hc()")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 513e48397743..b635c6a1b1a9 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -115,7 +115,6 @@ static void at91_start_hc(struct platform_device *pdev)
 static void at91_stop_hc(struct platform_device *pdev)
 {
 	struct usb_hcd *hcd = platform_get_drvdata(pdev);
-	struct ohci_regs __iomem *regs = hcd->regs;
 	struct ohci_at91_priv *ohci_at91 = hcd_to_ohci_at91_priv(hcd);
 
 	dev_dbg(&pdev->dev, "stop\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
