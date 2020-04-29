Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849CB1BD907
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1dgUtKdYAqrBisntRw4ZvEMI/aHicLZYD/YoH7Yi2Q=; b=V4isFMN98hDF4H
	ZECBzrNlpA//c22QxvL5ClrH/4AahBDkvumNHIKErqtjfjJVNK2QmPI91PArYr0H0KG/mk5mJLxle
	NFbpbrw5xNzEfObdgKZLUpcOtlzYBcM0hKLBlkNJoWgdmZv9atgAn/zG46eQ2aoCnt/fmVhf4MR7q
	lDUBEieHXZHHaQRRBXtOkwfke4SMvA2H6Vm6EHRXwaqXh3deQzPVuapCk4E/tHEBMF1T7UWm9fTKD
	jGC/hg4ZZUb/DIL8716E14exxT5D+FSim8IKc5tTyftXIPR6HXPdYCvuSZdZiyIxKvH5zhOrC/zRR
	3qNQnC/sWMqqCllO788w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjcO-0005A3-Vi; Wed, 29 Apr 2020 10:07:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjc6-0004z1-EZ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:06:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so1793255wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 03:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nu1X2CW6jPtDQ0aEhEItVv3kksJg5s4aseacqkeIhzw=;
 b=huwf0HvL6kpp+czUgrhjvRS4qZYndq90uhZM4bWYOZfbxK7vqRE95//PfH49sRMF0K
 gjmLwjrKYHai0Y52Fg/6e0HydeOgU3IZ2Bffnx3P6/xgWvTcMCUvc050VNQICGtjhSKP
 xnOCt9d9gN4JkAWiQ65oqNc16HqXA+tIm4LSDYqZJZNwJOG0as5NQVCECvMpJK8obg7n
 HX/kf2pSKCE1B0T9WXGId98rqK7ZOkExlBZj/mKS4bepIidwYPVTu9fVdF5patYeGxwK
 Zy2HnES4sM/lzJdoupRJRjcOHI89hlcW0pPIxFWGAV1tA7j5jWM/H+14sQKZEJg1wjGz
 dUpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nu1X2CW6jPtDQ0aEhEItVv3kksJg5s4aseacqkeIhzw=;
 b=B/F2dZQXQLX5kp3tZMgBcZ+Tp5/eM7q8Ajng4+wYCG45y/eTh6ZGqhXDhwLHsg4w4w
 NbIiklORNe4m1edk+0ZbmkfL9vxK7w1mHSaC1cgv25Gr19CWHeLcyrR4SNKdOkrosSdj
 I12iKW8q0jsVm0pNV6OfY2PE1wMkmPuFsM7wCoM3/LCQsb0E/mVSTHW6uHSEgHXtFlhW
 NKNSFG36YemZK+fmNrMAyIFARsDftIx8U08oGi8yCzsY33R2HvJR/K85jAjoGbXYNCcS
 9YHqHNVNwXd03VnBzKI+JwGwxV/EprWmQIZr9qpAArGgvwJh6bmSGl4WxLe0wWxsT4mm
 gCJQ==
X-Gm-Message-State: AGi0PuYo1ORXZ42S1QOh93lTY9MO/t/xH42omsMT+CyQuW3WyvkDNwP/
 QxQEftoSh1iS3uqInz8eLfqDOEOJ1g==
X-Google-Smtp-Source: APiQypJ/GTZod9A7Y8IqPtMshR7Flx22YxFkPVs6PA3aNO1TPy2CHjJzDQ5A67Gu+PvIRtWiVlvtWA==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr41352720wra.271.1588154803962; 
 Wed, 29 Apr 2020 03:06:43 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-195.as13285.net. [2.102.14.195])
 by smtp.gmail.com with ESMTPSA id 1sm7205478wmi.0.2020.04.29.03.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 03:06:43 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] usb: gadget: Add missing annotation for
 xudc_handle_setup()
Date: Wed, 29 Apr 2020 11:05:23 +0100
Message-Id: <20200429100529.19645-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200429100529.19645-1-jbi.octave@gmail.com>
References: <0/6>
 <20200429100529.19645-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_030646_496035_EBBDC5DA 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB GADGET/PERIPHERAL SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Stephen Boyd <swboyd@chromium.org>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse reports a warning at xudc_handle_setup()

warning: context imbalance in xudc_handle_setup() - unexpected unlock

The root cause is the missing annotation at xudc_handle_setup()

Add the missing __must_hold(&udc->lock) annotation

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/usb/gadget/udc/udc-xilinx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/udc/udc-xilinx.c b/drivers/usb/gadget/udc/udc-xilinx.c
index 29d8e5f8bb58..ae22882dba6a 100644
--- a/drivers/usb/gadget/udc/udc-xilinx.c
+++ b/drivers/usb/gadget/udc/udc-xilinx.c
@@ -1733,6 +1733,7 @@ static void xudc_set_clear_feature(struct xusb_udc *udc)
  * Process setup packet and delegate to gadget layer.
  */
 static void xudc_handle_setup(struct xusb_udc *udc)
+	__must_hold(&udc->lock)
 {
 	struct xusb_ep *ep0 = &udc->ep[0];
 	struct usb_ctrlrequest setup;
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
