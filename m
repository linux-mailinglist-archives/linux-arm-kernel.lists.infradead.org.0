Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700D66EACD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 20:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JKrVYEOkRr38X+qQHlfRjXGmrusXHxZXTFAgWORAnpY=; b=IFFTyQhFtoBkTb
	DNigOsC1Bom0vJUShgcwNsokn5dQsLV1nvrnIQ+/TBjsLnNlWRTQVN0TRb6ll2zUEVuE9LUWtBI+i
	39TJeiuviSWyL2Y8ixKxKXFEPLnCLCWKWfKW2ATvsZka8dDEZAdWS6wMVOxZqlPe68nyCkEvItkx2
	QjkS3z9m2cTobTaxdOvPtslFCK8ZpLIAEG6rtgFSIWI5f0fRw1Ubts7e2g7ed3ZaxEc8+QNNWZuDb
	FM/S+z3DkY/hctDBnLePL1C1WLBQdi7ZyXTe10YAdZguHz2grZnkHnfuOn+/qGxoYPeu1MIcGf2t5
	ndFcPhq6RuD4D2aTSJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoXtm-0005It-NR; Fri, 19 Jul 2019 18:46:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoXtY-0005I1-TI
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 18:46:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so14551493pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 11:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LgCwfeb0qUeGvteEDqnpqo5FEOvlxmkPiJSvQEyBpA4=;
 b=LtGE7qyzqvqQis+0QWaAc6EydmIRM2jL00m9b+Go8yQAU7Lt9OzQe2emBMW8bIJ5D6
 YHIGHKqaOCDJ36TRTari/GqdWkzG0KYvhYZ6PntA3qeQ5EIVPqsACyM1fcQPL8TcrUCR
 Y+r7tmV91mI67L1Is2NyEazqRwqS2xr+0GGD8+3PC/OzLtth1DC9mwH4R3oiGKj2k8HP
 4AMyHclQbhR2qTQYqNVAYYBJu+aiOq+rUzmMuGOSESv+55R94I6VbBbZqbkXW4CuaeVR
 b5pIhP6P58n83e/wWatxPwFjXc2PiFBBYFsPBccsetuOybLQETZMdtYJPwOXAoBIYXky
 KxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LgCwfeb0qUeGvteEDqnpqo5FEOvlxmkPiJSvQEyBpA4=;
 b=PRSwjdEfyURBoBF4GjKWs/WzRGw0hIB6knP7DUaZkUthNfvQ/j0OjyfRVY4SQVNK4T
 uAJCewHiZOpoq+v6/N5ITI/g91gybqp9hVONCHt8lz86Io3WgIwR56y/kkB7aswW3oPM
 VDhxAqcHf/xSFJO1SFiu8tdTUB9eOEl3/ySMSoSzf/f0Gs30dgt1Mvz7xOjKHj2/yyxB
 VggX5ZMRwZR5/AEEf8hYPYPYtHTnZ0p3CXN6LlojyDiksEWhJ59lmDWR++qKvYgjPaC+
 C0Ip1kufQncl8crXKRgs0F7CZfkN8ZADSq0Ryy3uo7f8jNLsWf87H8aBGQUJRtl48vw4
 MPSg==
X-Gm-Message-State: APjAAAUbl61ye71Ov/IIgpJ/hIJj6zerUn9IaCX2d1Y+sdbV1ryx9mgZ
 hyaWkkfXWeR0vpZDfDoGjUA=
X-Google-Smtp-Source: APXvYqxkdYNpO/9sbTcC3Gwdlyw8Fp+lp6d3baaiN8Qy+GZcZufOZdcjl3SXt9qBB2rqD7nWprPrHQ==
X-Received: by 2002:a63:188:: with SMTP id 130mr54815202pgb.231.1563561973341; 
 Fri, 19 Jul 2019 11:46:13 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id g18sm55976033pgm.9.2019.07.19.11.46.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 11:46:12 -0700 (PDT)
Date: Sat, 20 Jul 2019 00:16:06 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] rqchip/stm32: Remove unneeded call to kfree
Message-ID: <20190719184606.GA4701@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_114616_971538_6D48223E 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Memory allocated by devm_ alloc will be freed upon device detachment. So
we may not require free memory.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/irqchip/irq-stm32-exti.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..46ec0af 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct stm32_exti_drv_data *drv_data,
 	irq_domain_remove(domain);
 out_unmap:
 	iounmap(host_data->base);
-	kfree(host_data->chips_data);
-	kfree(host_data);
 	return ret;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
