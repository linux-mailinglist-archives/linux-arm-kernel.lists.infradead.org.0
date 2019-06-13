Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FB243707
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YsPSmV+DNQe2lBrw6R/8HKQbxU+UxAHQQMThmdJJMrA=; b=U0PHT+45lHl6/j
	WF2wHPyUvGWy2rQsj/oUqr735ZHG8BRUVbfQDg4BUDV5VWaUzsKfF7RiJISX0fZlpEuLezQ9f59Ha
	jZDl3+2oZX4osWAMq7VSBwF/0fyTNNaY8+WsRRT9IJ7O+v7BrsSIm+14SLVt22Zq48BTVCHlIBiZH
	tysa2ggJ8GBYcZMY/DyDEDisY/8KbOfvfFrP9pk0vkvvBv6RTK1bUESeRWkGdpXDVmbPIfRc3bes3
	G27Kq7edthVCzQiS+Kn3b06b8Pfuhv++pt0InBCxJwr5Am2OqpFC2szOaBV6Gurqpf9BAO2o2Q1p7
	XujGaiUKt9qtj+AsFvhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQHH-0000Au-8I; Thu, 13 Jun 2019 14:00:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQH2-00009p-5B
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:00:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id s21so484335pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 07:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GBxc625eYrtbddlYla0FlNTwaicUbHuXFR8fhmI/WsI=;
 b=CBU9AEBTYmLd35er+8PFQ18pl2PQp8t5kGKTFVsuBYsbkBnHUE/M7aS9QmVzELRdja
 fFb31me7CHwIwDe6LOe8/XL/wE2msLCxddm2RQvyobGugc1Jp8Uc5ro2LY6dsCHsnzp/
 5hRJ2/wq0x75/vUF9wTflq6djoES8pVomX4XVHsM49Ya0dksm6SGphGx0lD7McrSXTB2
 uRx2aKTuX49aj8djKZcvktSMAgEKX6h5c9wenL+aQ9NKHOmI4O+v5QddB8q6H56IR67a
 e1WVG850paFkZhNannCTksrAyFftBmeNap8YW3fdH9IHgAgMug5P1hF3nWPVI5tpy11F
 zdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GBxc625eYrtbddlYla0FlNTwaicUbHuXFR8fhmI/WsI=;
 b=eSb94gjH8mDbFajVYN6EQUssM6pvCYPfoUCLjvMB8vYZu0hhWWc+RALNae4IAkF1Zd
 Ky6ysN25yIW1fwAwGqEZ+Esa6gA/do/kwOP78wvc4hflwREX2PIMvTOf/+JzoGnjm/x0
 9vkN3KcjBxVCDqW0hvlJN+YIRMFcGcGDba2SY9QmRDByr8VQDdkXSJ0xOAzpI5vxYbpE
 e0N6gpEOklgrytuPqTVIYpLdTJDeCpMjyf3J/yJVO+VY9+8F1svLJQdiI95MSWYTkgxv
 WUx7V04yK3EwFG+tX7BFD0HsFyEbbSbQ0AUUTi+6G1rFyqC57YaMyMvnhYIZgl3KBZKl
 mZqw==
X-Gm-Message-State: APjAAAX/u3MAyj+m4FSzwldsZFcQ2ZXLFg6SeJCbWvbESAEB1VciwiRK
 7QQuXI1AbCHym8mteoPEPZM=
X-Google-Smtp-Source: APXvYqyf++okW1hlc0uB1CnomevfviZVVWkruPC1EhA1XU5eAKqFeMKP7a63Fgm/9Jl86UNNB9J7Fw==
X-Received: by 2002:a65:5004:: with SMTP id f4mr31629723pgo.268.1560434414046; 
 Thu, 13 Jun 2019 07:00:14 -0700 (PDT)
Received: from nishad (p3261240-ipngn21201hodogaya.kanagawa.ocn.ne.jp.
 [153.202.122.240])
 by smtp.gmail.com with ESMTPSA id d9sm3515324pgj.34.2019.06.13.07.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 07:00:13 -0700 (PDT)
Date: Thu, 13 Jun 2019 19:30:03 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: Use the correct style for SPDX License
 Identifier
Message-ID: <20190613135959.GA4819@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_070016_200638_8EE57119 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
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
Cc: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header file related to Firmware Drivers for ARM SCMI
Message Protocol.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/firmware/arm_scmi/common.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 937a930ce87d..44fd4f9404a9 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * System Control and Management Interface (SCMI) Message Protocol
  * driver common header file containing some definitions, structures
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
