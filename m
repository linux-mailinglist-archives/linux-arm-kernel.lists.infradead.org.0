Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77818E3FD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PJ1/7L+OlPUn0wWCjX6ianJBlAfLDXJVA2noPczv8CI=; b=CYO
	pL+GFogPuewiddBafj4jfT8/wii5cDsQ+g0U27l1Hj0siKh/HdzRUklfqIdO1wdIOsvRFLaua/Jtv
	VLidYUQ8jIkydT8sq+UZc3EwXnIBOYhX7h4NpKBghS3USA3RZ8rPYnyjPpEv+ytM4CVT4KFNcO3Ug
	mM6HZGz72tAf4MSuqayviIXQMZIV19KlGfz6zHM8sbbWc/0iYNFdd39dvx8Sucnv8pao4ORAFfDZ5
	chgNm5+X3C0z0GplQu7bZVYx2tVrHn4EUlWYTcQdG3mTExQV5DWd0dfDzPlgjSGS8uw7WD+2spAqw
	IDQMGkqcDAURq6BtogQ3LLlOohxqqxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4g-0000Rh-4V; Thu, 24 Oct 2019 22:59:22 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4T-0000Lw-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:59:10 +0000
Received: by mail-qt1-x843.google.com with SMTP id w14so393280qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Umpb6oSNdYnjO3XOvkinVQve2RoGetZPOo2c/F2xi80=;
 b=Hw9TDBLrAp/v/cVCJTZ/bTDmQj5RMWWEAmJiNkRscFOZtwYbjlT1PcoJdWyXKQIiQ2
 eBprfFzxpHCajS5VuxC8GcSMfUIpLVU0hXcHgzykEC6oaN46Q5iluDIQWq0ejypKLiOr
 mfehCDSvU8iqhBs4GE/hZbxRtoSQXldYoXbNFTojAvPqFCVdcVO5CFL7YiuzFypIPn+P
 mwLXE1+HsKSs6NatPShOYBw4mZ/k08i8Rm+E6Eq2KAvyGh//VPDAOCwRTLieEJnTPYil
 /aqhLZHnvi4JS7rYLZjE8hFXYC8WfgWJ+WZY1LoA2+ncBk3z64mu2HZlBcagflkQGFyY
 ZpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Umpb6oSNdYnjO3XOvkinVQve2RoGetZPOo2c/F2xi80=;
 b=Up3AeWl/NFAKULFrvUo3/ekqraQGpsdKPwzSQ8I8kRUq0nDVgzwbtGhbQXep7NxPjB
 xeqOHYcHN5NLp86h70JQbQ8W8hHqO6Aul641SI+jtUmo3/3dP0C0sFnD6BmhljDQLmVh
 epMOwwcE3s7OUIQE98rLsFQlljQAZniOKKH/I+hR9UFle6uDoUZJMkkobmFi/GlwTvCE
 MFS9PATdFboOO7OEzzsQeMkYzDg7MNxw2xLkYuXWq0TH0z7SJMuvNKSrrmtz+hRXoc0X
 tyfxWvpBk3UocM/2s02xGLKQsZYTveq56gNAifnO+syTqPVNsislG4cMTeORSGzR6x0h
 8NSw==
X-Gm-Message-State: APjAAAWfrxUF7g+V7NGRSdlQr4LsudOvXnsTBD39Em5CSoDAcgBBQ09T
 yqhoV7i+q/40IwwiMmNvEJKQ1r0XYeM=
X-Google-Smtp-Source: APXvYqyE03F7rJtpAytE/Agt7Up+HCI4UZlYF9RllOZC6ge634nWH32X83A2sJWWdGVY5IFoxvz/QA==
X-Received: by 2002:ac8:2c86:: with SMTP id 6mr109730qtw.317.1571957948114;
 Thu, 24 Oct 2019 15:59:08 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id s21sm338939qtc.12.2019.10.24.15.59.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:59:07 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: imx_v6_v7_defconfig: Enable CONFIG_TOUCHSCREEN_DA9052
Date: Thu, 24 Oct 2019 19:59:11 -0300
Message-Id: <20191024225911.14032-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155909_708374_12AC5DF7 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the CONFIG_TOUCHSCREEN_DA9052 option, so that touchscreen
can be functional by default on imx53-qsb.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 945a0b02d3ac..26d6dee67aa6 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -179,6 +179,7 @@ CONFIG_MOUSE_PS2=m
 CONFIG_MOUSE_PS2_ELANTECH=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ADS7846=y
+CONFIG_TOUCHSCREEN_DA9052=y
 CONFIG_TOUCHSCREEN_EGALAX=y
 CONFIG_TOUCHSCREEN_GOODIX=y
 CONFIG_TOUCHSCREEN_MAX11801=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
