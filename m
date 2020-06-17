Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915231FC92F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwFtDOjwSMLkVPnCUNIoh1Ln3atJyFaBY0Hjzf0lEi8=; b=bdDlrpXaJBWfhM
	XAnZxK3gq+MDMLcLm/yQY9HLzBjj6zn2Zcl7drgJxgpmV/SVY/QKaaSWfGl4O++Zbg+c8/uDIuC0f
	40/NLVSfeUo362uJ10PPiOeqDs3Sn9TJ+nOd8xAntvjfqDhprDRUpyd/i42KgNpq6+mqSd/UVweIf
	b18uKGLXoyCbYLlHT2P+Pih4Y0CElPbM0cVHns8PHr9mcw3WfoDM2PRgmozJL1sHEuFNHsOElRLFM
	V2rZs3Jg0z7yFjqLwoMAHbp1KOhsXMQGaF37GJlQFquKKQChSAHVgmRLDyDMiUnJlMTOS8Pjj+EYw
	hD4UqoWZit4tmkTXSU5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTi1-0008DX-Vl; Wed, 17 Jun 2020 08:46:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTho-0008Ba-Sa; Wed, 17 Jun 2020 08:46:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlThn-00062C-Jl; Wed, 17 Jun 2020 10:45:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: rockchip: Add marvell BT irq config
Date: Wed, 17 Jun 2020 10:45:57 +0200
Message-Id: <159238352489.1408655.7330930491123467152.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
References: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_014600_921861_2C5CE459 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, chromeos-bluetooth-upstreaming@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020 13:02:48 -0700, Abhishek Pandit-Subedi wrote:
> Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
> and pinctrl block to devicetree so the btmrvl driver can correctly
> configure the wakeup interrupt.

Applied, thanks!

[1/1] ARM: dts: rockchip: Add marvell BT irq config
      commit: 6c2b99a2e7a073575b4ee91abf7d16470991c1f4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
