Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7171585DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 00:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i0+meHz6N0NtKd4OYtGJRKqrPqAX+CkEqzE3gcbO0Xo=; b=mUNI2/tDMqWUK/
	sm+K+6TOyJ0/NMHleGj/aLfJjtQausEBTBQBWhloh68ukPZ6P4R9vx6+AdZRLwfnZM8OGDBuU3NUp
	5HF+u9x6zmx8EMHpVhWVzQD1PjnAeBVLj1/mM4Vmm5AQPw9Pu7xRF5/InxUf9jFgMWVsMRc8qy12v
	WXTjSqb2KjTqY9WSVbeLUhaO0TLyHX6YDVQjmx/JqBJB5lIPUwXsQ3fWGmSUr8B0jqeOek+rytsYA
	PmWhxTZRYeHKujiTVWN86+R65st7Ti/lVdIUgrsJfGvaw3o/YTJWQPZnl0lWvLQZgR9rm0b4Zxb03
	+uc8vZssKaSCVDhue2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1I2I-0000ef-9l; Mon, 10 Feb 2020 23:00:14 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1I26-0000D0-0B; Mon, 10 Feb 2020 23:00:03 +0000
Received: by mail-oi1-x242.google.com with SMTP id a142so10942826oii.7;
 Mon, 10 Feb 2020 14:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h2g0oTCV98K2k6Xzoh29zE55ImVHkBdtE4+mSxUulQQ=;
 b=P0yWasi5AD3Wkz/vo7yXo6yPuziD6iH6KVE8Q4bimB6WtQzDEGVCzAezGZWb5k1W/w
 Z3VnF48KO1MFvUq/PYlKG96U0XCWBkZi4BEoZOfhJRetQloceUj4EboyQMfGIfdiWwMQ
 5frXSdglP2M9xnE8DbEyl5GOqlKRymcz8n0OOw5y/drqhSgXwypJcoE7C6KVLYBhhUma
 YhK//vHGZi4wWwJJO5iplJ8thpu4ffDHGFEt4IaJY+HDlOiSMPxLpW1vGmhH/t5mGWmP
 7Z9PGLdLzUOHoG+WVQ6mZVShDxTkw+cAbUsA7kYE2YV/Yni7Hfb3flIETXftd93ndXRq
 JGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h2g0oTCV98K2k6Xzoh29zE55ImVHkBdtE4+mSxUulQQ=;
 b=eMSQEBy3BnDNJxSNwUOe/4EDtx68cySkShYtiIHT1NNQS9JxSsXQe7lC8bW/rBFDsC
 XwauvEf6txdZjMWsHx5X5eiEjlhotlVpDPVOc4iclaZSshfv2wOmR5ROB1pLLGajEL8q
 sraoped7HRgC1GTQv+LE167FfCtoFd/F/XKU7+1sA+OclsDZan5jw7OCHqZ1vcBNQh5k
 VoK9oFkgnwxWO1uKPBNWJyJQjOsn6oiaf/aaUDJrqHEt5m7Epnuorj2RKQ/mkJPPG1Ra
 yJ+FMqfCMSMSHx680EUQa0c+1ZEaqE3eZsL5xZbdbyMbcxwo+uNbodfHENIS2hXKzS4y
 1sNA==
X-Gm-Message-State: APjAAAV8adSJ7U98Y22ZtSneBnGUbq6CGWq2eFESOe1h+lExZeXamBSX
 ihs2TkuncSKn2ES2Hp7RF8s=
X-Google-Smtp-Source: APXvYqwDbrcIeb7Xbibh7qCosUJ25r6zAICrriHVO5CceM7+UyW/5dwZqBATLkJk71AmXk2eQKqTWQ==
X-Received: by 2002:aca:458:: with SMTP id 85mr1030996oie.56.1581375598184;
 Mon, 10 Feb 2020 14:59:58 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id r17sm546985otq.70.2020.02.10.14.59.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 14:59:57 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: [PATCH] usb: dwc3: meson-g12a: Don't use ret uninitialized in
 dwc3_meson_g12a_otg_init
Date: Mon, 10 Feb 2020 15:58:17 -0700
Message-Id: <20200210225816.36598-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_150002_052241_05AA5F53 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hanjie Lin <hanjie.lin@amlogic.com>, kbuild test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 clang-built-linux@googlegroups.com, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang warns:

../drivers/usb/dwc3/dwc3-meson-g12a.c:421:6: warning: variable 'ret' is
used uninitialized whenever 'if' condition is false
[-Wsometimes-uninitialized]
        if (priv->otg_mode == USB_DR_MODE_OTG) {
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:455:9: note: uninitialized use
occurs here
        return ret;
               ^~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:421:2: note: remove the 'if' if
its condition is always true
        if (priv->otg_mode == USB_DR_MODE_OTG) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/usb/dwc3/dwc3-meson-g12a.c:415:9: note: initialize the
variable 'ret' to silence this warning
        int ret, irq;
               ^
                = 0
1 warning generated.

It is not wrong, ret is only used when that if statement is true. Just
directly return 0 at the end to avoid this.

Fixes: 729149c53f04 ("usb: dwc3: Add Amlogic A1 DWC3 glue")
Reported-by: kbuild test robot <lkp@intel.com>
Link: https://groups.google.com/d/msg/clang-built-linux/w5iBENco_m4/PPuXreAxBQAJ
Link: https://github.com/ClangBuiltLinux/linux/issues/869
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Note: This patch is against Felipe's testing/next branch.

 drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 70d24b98fcad..902553f39889 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -452,7 +452,7 @@ static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
 	if (IS_ERR(priv->role_switch))
 		dev_warn(dev, "Unable to register Role Switch\n");
 
-	return ret;
+	return 0;
 }
 
 static int dwc3_meson_g12a_probe(struct platform_device *pdev)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
