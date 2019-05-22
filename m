Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3506225E92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUhuKZFHfgJ8fk5hGiYlGpo+x3XWkM8yzqFYTyC8Uf0=; b=bLxc8vIvdwR/cK
	o+52CaEt0nR12sR+xHwiijDwt4W/gErfckn6wFmGmuQw62daeJZQtC/cW0pV2KmgfQQp/koW43xtR
	cXu9SAvo+lJfBPoHVNSBXYwhTqYJrW9jladxyd46b9YZ3+4TWD5FNTbUxtjmOoddVA1aPcTg2QO/B
	XyjUrtTnH2jUhWx4JNeMIwhsIe0ctvaxPatuZVBixcdOn56PX9nw8i+GoOmi7ohU0Rwuv5Q71/kJS
	LJyXYebGZmp4B+KBHdz4Hi+ql5FwaMnZWA5qMN19++o5DPSeTkaVEm0Acl3u3RWnimDFDMlwDj1w9
	VI0de+m8xKp9RoisoUaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLRL-0003Q0-Ty; Wed, 22 May 2019 07:13:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLQm-0002rh-K2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:12:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id e17so697669pgo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QQs+0i84pw32rGcM7hvqjpNGJYFx6bkuatJbHxi/we8=;
 b=VPJlhy/0g2QHWzJMwTZkoWaXU2Oo0s2BJqURItqmTQajs1JguAA3zJqC0CLdiu5M5c
 FH8IOY+1EPVIchTYgPVi8IWBOdGBdlzVlDASKawdUEgCOO1MxDc0OqmiwAoVzAEyNLyA
 QNRvJJ/sXQTGE/PFZ/jovq6FnY2dL7KK+ewnyNUbBTMipbpxk3NiBNuADjMQHDLMh4o1
 hm05nHE9BwdKSGZo76nz4dGFIX0FJAqac+GDz31r6NZC8oyPyM1TRdSJPd2Z7gYh0BDK
 rg1iCNq3qr1qSOaGfYsyRZFjUFKg16x5pTbZSiioO9KbTfbFLLxcGcczg8RmVz/E3krO
 ndsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QQs+0i84pw32rGcM7hvqjpNGJYFx6bkuatJbHxi/we8=;
 b=MH1ODRLdBLlALLbxHEG4lOV1DuY4QfQrogzA2cD4SVCXkybbKc/+7qkNWxO3g0SCTY
 PimGm4mxXBImtwdcRn6K0ZeQC8icBTE2OLgVicTtF/Gid7g1Wzj0t6H/iEeilIrX5ZOF
 7SOBz6rCcz8Y4pzQpxOSUG97cBovRz0MLcyQUIaWByaCuDqiVtFDpid1oJnENLdZ4Y+8
 PwIrXgeerk+tnIn92ivdTBM6pQ/8+LLMFr/6KGFdXT/OdiNiwoZ+fGXr4eAZJV95ZtA5
 drOz8M0So5sSx+sI/pWghzUF9EhxgMKxeEbKjy6Ls4BxaI6xAjgXr/6aE7bOLdgCzfBl
 +XPw==
X-Gm-Message-State: APjAAAXh7yWElXqJqFPighN04/bttTORhL9Adl6wfCV7psxIu5diEtG6
 l0aa/0IlDm+YXYYU/Wo4t8KzqHHkFF0=
X-Google-Smtp-Source: APXvYqwz8IRj6dtEjxFKUrWwRwuFhKRAdwN1MtUxoiTpJk373zi+9HhAe7iQqG8NOKeSWZK7AdM/1A==
X-Received: by 2002:aa7:9159:: with SMTP id 25mr62981247pfi.64.1558509175505; 
 Wed, 22 May 2019 00:12:55 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id n127sm22750178pga.57.2019.05.22.00.12.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 00:12:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
Date: Wed, 22 May 2019 00:12:27 -0700
Message-Id: <20190522071227.31488-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522071227.31488-1-andrew.smirnov@gmail.com>
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_001256_661880_93A168DA 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cabling used to connect devices to USBH1 on RDU2 does not meet USB
spec cable quality and cable length requirements to operate at High
Speed, so limit the port to Full Speed only.

Reported-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 5484e4b87975..3b37fe68d373 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -772,6 +772,7 @@
 &usbh1 {
 	vbus-supply = <&reg_5p0v_main>;
 	disable-over-current;
+	maximum-speed = "full-speed";
 	status = "okay";
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
