Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C981CCD64
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 21:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VTGwh3sYX59i80KhvaDzPVSzmaUVZ1V9e1iINUvHKQ0=; b=D9M
	CB+jRCWnx3U5gFvXrxeIDGuHRA6P7AymYtXyX3uwFeb17hrGK2/cAI9409rppEJOpEvigQu4tmbYm
	6flCkyq05CiA2bGB9fCK7T+8GcFzCdRok0aIGA9qOxQoQhwn/LYD6T4glS3DQ+mfU5Rj3BjdkSXZY
	O0oRpJfeQikH9TWe0zF5ZGV1MNsurkkZNjQyjFrpPY6yi/+jRIDX51c6TJIykx/L+Q5+Qlhfqm12V
	eor1L8SW8BZHXrn5vFIQ1pVr4pTvYlpAhQ2zz87Oo16c8uLTtZywH4aoky4OC6QVW539lbYlAir4j
	LqFsreI4Bmrm8oQR+b12FjIqLn7dTZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXs5u-0001TK-S2; Sun, 10 May 2020 19:58:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXs5m-0001Rt-5m; Sun, 10 May 2020 19:58:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id f6so3538044pgm.1;
 Sun, 10 May 2020 12:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uZKTxfpf4WQr90XnNhuD3ishpnxGhqgOmhIo+H3Laqk=;
 b=AUzjo9sLPuAvRnXdzPT3Kc8NUOsQm0jfrAF2blkwHrYFPsROHcqXpscXzY8hV4qEMz
 LpLZXkSZeY/9Owsl0ForKL4OFUhfLlR76RI6fXK1tFpU9j4F6nkvqZ13XRPmNAIEf2my
 dKhvYfa43cJZQHGmKS5f5n65SwkGFJWgxqA1LKrRFhWGdFDz8zcOVGa0M0/9ZguD8YvL
 kW6bPJtRgvIyxTzKJD+Xv0H89DXWsPw/HHxrLedaD2VIgmBIME5gIjEsK4pZeSYv0OTK
 iE38BK0zmG0sZpOym6T4S5W+K+s5lKPmmPf1IWkkjO/AQXUWTaHjAvl9DSd8MCDWbacH
 sLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uZKTxfpf4WQr90XnNhuD3ishpnxGhqgOmhIo+H3Laqk=;
 b=ly/c+sLqsAfWnVfFyzMsgezKJB+FSk6jjTxDbDYm+3vsUHI2I9rY/J5oGNqDIr3NTV
 9V90eFU/TYNMVYm/0SvfiZS4+OINf5GY5FQX38dbDXK/aMh8Ox4FC7onipu4anJilJ6h
 IT8QUl0fsgZkKzrvioj9j1XZ8l5VsgddXsYJf5T6JZTrZO6q9lMXA0l+AXb1jNbLwZQq
 LyO3ZKEYxtZ+6SORaOct7/njMkfe2dIusQ5kNmvkXJG0tDwAOQDv1cCSHMh5byLcwLRC
 wGGt2ulCanId4hR666zN+5xSBllFh3tDmK+tFLE6J1dTh4wkO5hi0BmpgCAgj+UdSwEZ
 +bQg==
X-Gm-Message-State: AOAM531CWwSbaT32ola20h4aT6zhEzQtj9euIJF5cXUg1/Dpe5bE8+UU
 fjm5BNSWUdM+ksIvkJx1hpg=
X-Google-Smtp-Source: ABdhPJw467vS/5Fwn2AHn/9SElCumBSYBKYSMDLeemhy0DbS1zmRMM9peKvlD8YgUaRsNutWVKj56Q==
X-Received: by 2002:a63:3342:: with SMTP id z63mr1479172pgz.49.1589140709345; 
 Sun, 10 May 2020 12:58:29 -0700 (PDT)
Received: from pr0gr4m-ubuntu.localdomain ([1.240.193.107])
 by smtp.googlemail.com with ESMTPSA id u9sm7320289pfn.197.2020.05.10.12.58.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 May 2020 12:58:28 -0700 (PDT)
From: l4stpr0gr4m@gmail.com
To: trivial@kernel.org
Subject: [PATCH] docs/devicetree/i2c: brcm,bcm2835: fix node id in example
Date: Mon, 11 May 2020 04:58:21 +0900
Message-Id: <1589140701-7516-1-git-send-email-l4stpr0gr4m@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_125830_239674_BDF224E8 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [l4stpr0gr4m[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 nsaenzjulienne@suse.de, linux-i2c@vger.kernel.org,
 Kangmin Park <l4stpr0gr4m@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kangmin Park <l4stpr0gr4m@gmail.com>

This is a trivial patch to fix node id to match the reg in example.

Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
---
 Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt b/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
index c9a6587..a8a35df 100644
--- a/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
+++ b/Documentation/devicetree/bindings/i2c/brcm,bcm2835-i2c.txt
@@ -13,7 +13,7 @@ Recommended properties:
 
 Example:
 
-i2c@20205000 {
+i2c@7e205000 {
 	compatible = "brcm,bcm2835-i2c";
 	reg = <0x7e205000 0x1000>;
 	interrupts = <2 21>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
