Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737341C6E86
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3kFci080V72lPAwD9nK7s9YI8yIg6gwsLUs5IKxBfW0=; b=tUs7FgawQkVicnN3dOo7ZNqo9G
	sVXS2SlvjhHMnVnT9x3o2W43GNxKRO/e7hmswCRdmshmPldxB70BnrB3oC1JvawkVztNz07D6qf7f
	+mP0hDg4jMDpb2OYu6kEU+CupeWQTkSFMyCI0XiNkhqz1zWU8nSMH+LrQDIDHnTA8QjpZG3PEWdLw
	3EOjY5Kx+T67s44HW5HsPwmdyXuQrczgoArjAP/Wu1IwrmDVotSXEdvs8T8mxGS9lDfaVaqMqgD9R
	wMPemffOX+CNd8xOqa95O9GHWl/hk9oTpeYCg8txP1i/kpgskwxuR5Cc6GSEFSMMbNW/An9nKns3O
	RwFCKUig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHQz-0006gk-K8; Wed, 06 May 2020 10:37:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHPy-0005va-63; Wed, 06 May 2020 10:36:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id u22so307445plq.12;
 Wed, 06 May 2020 03:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HiC/C0Co97PBF6CFHJsgZ2D4kseEIIqvn91LAyLhM+w=;
 b=MhKsPiyTEkP7v61CqxNhA5hm394wgnMINyQcsl9zKZ31EprkeryNXrojvKTSj1jY8o
 llhb/v34ImKJtwjV3Z8R8+jm5tQSu8Rc2wvCCAsKF4pLP4xm8upcAlMd6lxtD57oXbiy
 oldal6H3WGo2EPasu/R6F6yjmJbawEVPUbO+GIckptGw+vMC6qIxDTZan4nBqmCl3yNh
 9eQHCJSSGHDimr3r0QCauZ4WOP90YFv8JANVrK8OfVREipMdLwaM6/XY7FyMocINO4th
 Rf/xumEp3mpePbUX0EzBPlQ+Y2l1bOgQkNEFigGzFiGL1ldwd/NOul6bCL1y3Y+S3/IG
 d1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HiC/C0Co97PBF6CFHJsgZ2D4kseEIIqvn91LAyLhM+w=;
 b=K+SEOTLj72xGsOnaKvLwU/EbehF+UaqmHsvs8In9Jw8dy6xskE7wQcIbPbmseUnbBu
 H2VgrGHTuw4nVIM4P8ephqkM2ccSMk9f3F2jxNr2pqr9m/6Tp3hxRtKtBPz+0Pn/OqaY
 cf2iOY6lS9SEIlZhidZ0oqmtcUGzX1ILpAb/4F0076vmABdAVKLfXGpEdkQrY6aju5F7
 CwByHPskpytRYStDpMtKzE8WmjdiUAVD+ZPmB/hinxqfzY6zoYL5V4UY8SW7vn0HbitQ
 +eQIBb1JyjEjwaWr11MgNMCqqwExL2ayteLAGQVNHkBf5aRb1pHWEj5TTiahC5OAhfTI
 2syQ==
X-Gm-Message-State: AGi0PuYjxKmfwURI3H5V7eBj2BAnyUSBELxQP1JbFIKb1YpF5hvGqexF
 arGoIObn1cIGwEaqU7TH9mE=
X-Google-Smtp-Source: APiQypJdhBuVsxVsAq0zyvGoSszqpLIfvIi54LZSqULmnpZvksNO4TKsokSuKUsMt0+VFll3X4EJzw==
X-Received: by 2002:a17:902:b417:: with SMTP id
 x23mr7060948plr.51.1588761404736; 
 Wed, 06 May 2020 03:36:44 -0700 (PDT)
Received: from localhost.localdomain ([106.215.43.48])
 by smtp.gmail.com with ESMTPSA id i72sm1601582pfe.104.2020.05.06.03.36.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 03:36:44 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH RFC 4/8] arm64: dts: actions: disable sps node from S700
Date: Wed,  6 May 2020 16:06:06 +0530
Message-Id: <1588761371-9078-5-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033646_293372_C67E2919 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
Actions Semi S700") following error has been observed while booting
Linux on Cubieboard7-lite(based on S700 SoC).

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

This is due to the fact that memory range for "sps" power domain controller
clashes with pinctrl.

This commit fixes it by disabling "sps" node, it is safe as "sps" is not
being used at the moment.

Fixes: 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for Actions
Semi S700")

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
 arch/arm64/boot/dts/actions/s700.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2006ad5424fa..0397c5dd3dec 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -220,6 +220,7 @@
 			compatible = "actions,s700-sps";
 			reg = <0x0 0xe01b0100 0x0 0x100>;
 			#power-domain-cells = <1>;
+			status = "disabled";
 		};
 
 		timer: timer@e024c000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
