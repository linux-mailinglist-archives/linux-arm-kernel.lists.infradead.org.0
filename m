Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F29BF312C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bFu8zpHWQKbyzSYTMWMQMJV843cn7/3hA7Rtf5Gxazc=; b=H8eiO2ZhOTfomNy4g4PiqZfKaq
	0EhncQsYmcIUT+5gUj2bb87P8+2KFLiECXa0NsMegb7wvyfnQU/ileicEEDTlohPFebFUvy7v9wdK
	qVVSIBqUocPRSgR3UdI7sDmIYnusWMj/EPnjyitV3ATBCq5R3TF/bRXl9D+ybOQcrxeTZtOQTpjxh
	psk66T1mdRemkx5vy5IhrmksPIQju5KWR6fYtf3E3SUMOcb69yzd7MXVMWsNLtJSlgPOxO6VsZJrw
	14mZhWZCSqCuAJfDpvsMPNjGwZHJS9wkDjmAN8soFruLAw1yCDRcRPfBtHMZOq6K4g+XaWCrTUNiC
	eqASknjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSic1-00030x-KL; Thu, 07 Nov 2019 14:18:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYo-0007fD-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id w30so3267323wra.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=crb4hxU6Nx4zLot+hNJis4uv/TIATBfBFFC0hFKh3gI=;
 b=B+21Gz52S35Yza5Kiw6aM2iIUvlrqlQvvymCXHbWobtQZw3h7KXV0ThAkzTocj1Cx2
 dia2rAA25F7Q6l7fo0OpRlOJgoBVW1E8k0iB1HoxvJTVvMfLzzcNfvjbCp61xvoj+3M1
 VHd6eK+t/ivpvA5gSWDuVVUk85GTqHC8+6Jyuzteh8ru1XN3EqU/gwsS4jJf+tFtXNCU
 RaS9nfhgKc3qXikCuyME23TRqFD/LOHU5SDdgkioXVSd7UJextp6eWnD3YZgrj9ZMgDP
 vBD8GpHWwjCcx3Q6b1RKsVA7y5wOh1rWbe3BAQoE9F+YAU7wn4cKtnJW2hU6NY5gEaj4
 HAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=crb4hxU6Nx4zLot+hNJis4uv/TIATBfBFFC0hFKh3gI=;
 b=bw/8qhA9J5RsDbjoaBL8Gjm23vZLfiW6DnzyRaifMvstYhuMQPOaaybhUiLEEVxhqr
 2k797bcRm/wc8IsvlvzNv/JzwU/km/prKn1tEyQiU/owc4Y6syAAWWZBBoITQj9/KThw
 f2J/k5sJ3SgbhaYnrqElKintVKx4qnpHPmdy7x+BjSzH7nqUfh4wjanITOHBLP1joZej
 A8uLaByYFg3i8HpX9wgV3T3twHtLJ2V4y3WJ2l9gibrefupo2dxDd/AvYDi4PJHeGxKb
 ofv+F+L/7bwDG7lFNh9Gnsdj4aCCxi7WV7eL2ayeOnayptM6/PRkWDb5OSLiDVI5+ZAJ
 vYhw==
X-Gm-Message-State: APjAAAUJq0OgWvKlDx1U92kVNxAvjeMET0AdkHPGDTuOuXb3ornCGyGb
 DQ3DVPTZcHedjZEDgHXm8IE=
X-Google-Smtp-Source: APXvYqzuCYvmigRsZGbVQkDj4lmG6Y++Ic1XNhR+P8mJH5qTqjobCyzMlEM6L69gzswbK5BRfgD7Kw==
X-Received: by 2002:adf:db92:: with SMTP id u18mr3052564wri.1.1573136092687;
 Thu, 07 Nov 2019 06:14:52 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:52 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 12/13] phy: usb: USB driver is crashing during S3 resume on
 7216
Date: Thu,  7 Nov 2019 09:13:38 -0500
Message-Id: <20191107141339.6079-13-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061454_685367_1DB72764 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a result of the USB 2.0 clocks not being disabled/enabled
during suspend/resume on XHCI only systems.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 2a06965d20b8..86d7ba7c3af3 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -538,7 +538,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		brcm_usb_wake_enable(&priv->ini, true);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			clk_disable_unprepare(priv->usb_30_clk);
-		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+		if (priv->phys[BRCM_USB_PHY_2_0].inited || !priv->has_eohci)
 			clk_disable_unprepare(priv->usb_20_clk);
 		if (priv->wake_irq >= 0)
 			enable_irq_wake(priv->wake_irq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
