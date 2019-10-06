Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E735CD2E4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jZ+E9J0E2GogpiBNjhlCpPtsfuc3EuC/S3YpS1V9zw4=; b=I8a7exKXsoZPKsheNC5VR3R11n
	lFHM+eqtdM+7rl2KPZLZ7xjTddZdhmI2Tz0mU68D0EpdC0XSFFJsCzcWBPUOyvpvRdXpMkvge/BEs
	sI1jE+1D8j8rq/P4CXtdLeqhuHq6zH/nMF7H7lt0rT35qZE4lgypBjgcZJcxjlx1w3KhNRRRuSt+A
	tA80+kKaOPEq2nRuob2R9FFA6FDcDr51QdIMZFafEF2mWQ0TDVLVtx5oMMYChqvbxbqQ2CdIg+4Oy
	MzqXsEXk8keTZtEH4+pSbINL7d13Ol4c9SAETr1kXD+uwYei/Yg97EO9d4DHKTkfglU6g8hUFYcvJ
	Z14hnlYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8VO-0002M3-Is; Sun, 06 Oct 2019 15:31:30 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007r5-Sw
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375736;
 bh=NwItNtT+7dpX+iWyiTITnRT5WiPEzLaDE1MGjMA7YOg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ANd9bRY6nlA9CkLmoofMgDgyztlan1n14KCoNKhBQot3NXn5C9T3Xs/aldhrhy+sB
 ph736MrANE20n5UErAk8E+Z8I3yoaAyzNqcSelOgc47CDB1aW30RjkHGjwS5tfSdxz
 IMQKgRdroVp2nhp7IGW6QfAGDjktUhmvPTDZf2sk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mf078-1haw9S2rBi-00gYs0; Sun, 06 Oct 2019 17:28:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during startup
Date: Sun,  6 Oct 2019 17:28:19 +0200
Message-Id: <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ydi0+r/v2uhwbqNRG+VV3qbpvXLV3l7XeekgER9sm7enzV2hdrO
 5wzwGRlimd5NHMQ2ZXaeah2owHvMuNOS6gMPEL/m1Tofsha3vJ8PJewY+m2NyFbohzK1Pxx
 hV4aLd3Swv7fRMxG4GDfPoPwd9ltidUv3CgoXsm8B+MmIxGK+CZfZk8Szb2wdPGAoQjjaQ7
 POsnLxUr7C7oDMoUGhddw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sWyR1XuQ+bU=:uSjFzauqsT7GRwxIA2dY/o
 6NteiLKcsUR0I7nVwpTn+guJ29HUKzrYwoeZcgMThT/xN7ZxRQVAzQBIMLhNjermHUNcPrhhz
 s+jd1HVhUdsF/Ln3VSBwtgQIM9mjuaQIyEqBR+bV/Dmuz0hdsCijtac+v466mXOpXry0Tb9HH
 AjF/V+/cWobpu/l6O6m0zGtzRydzxS9I1YlhSUCBLH2lm9xjAcD9jYwiVFEPp8v+5lW5e4OI0
 ba6of7pZ29qPT+Ped3cjWC6aYQ+lPILCbQwyFBp9c+B61Bxen1p3lrcpw5ayGqbYzBcCzNorB
 9ELOhpPnRgiDDeUn9/fztrOm1CSHZfdDyhuapNa/fGESucTv/8hZfMyf4gnkAxbo6CMv15Z7M
 YfEzsVECKTmnVwgiUQgoYCovQIvEeSC05IvIOscrWHfWtdvKWUqX8lNqzYl1+w/otpIv51KP8
 HQqgqG2+dAOIgiQOdji4m03FVF1ScHg9LFHCw40XUw157LtxeR8mEiWvTSwQPqSAEdeZ1vbvL
 NoD38zmBEuaXeg2+9k27ezgs1cefecJDzOB1yQhT3qiXZZkc1Gykq6zLiacFfe25CFqhq++i7
 +3UW4cfsMpdMMeBRN/ksoQhBYRtGKP5uBtN4hKbvx32Xbt31pmYtA/D+9UVvi4fUKIIQ366AE
 ViGxOQxXfB5miB+cleAbdjlFxGxKpP6t78xoZAyfGlmY+X9FXybZlIcCy1GXK8ikCIJuTcZk7
 V0IE06nEeyzjj2eSM+R6dAI39o98HXrWBX94+PZ3Mzpz3p5TOlHIQNKvMbsuOjuhzSN+cHQL8
 NCKRQWuqkxrxfXTadp+e2wapz/xpaqEroOf1HH4sRztLkDcUF7tNw3AFmw5b+RiZX4rb98P4K
 d6gSsuVfSylf4KufnJE7CnRdU6bLx2qtf2WM61PTwELtyPZ2hkZu7roWSdI7zwGpTRnZh9/Gw
 RsqreQ1QGpIrep1aYOPJLfvWx7lLhPenr9RIinGnYW3NCK9/sEPr++bdm3uigL4xRkgi4avQV
 LUintut4IeEhJICH0cAfs3A/j660AJM1b3VkR2TiXK393yjIPBZtwEaievE3igfgPt/XZT01h
 39EkQfaRJDM0MzOwm2XMx8QbgEd+EQgImNCcj6xXvzce7yO0rgQ9h1gQgJkowT2F2sUQxO3nG
 8DrfRjE+3RxHByyCmU+83AGUMxEcfhQA5vT6FCSZae4lRljDCscj1PE+08sEPemYVqoS4XohV
 xmvd2jLIm1cGIN+PnqFGdEX7/eJyVwbLtrS+8Nw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082909_229330_966C9F19 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RPi 4 uses the hardware handshake lines for CYW43455, but the chip
doesn't react to HCI requests during DT probe. The reason is the inproper
handling of the RTS line during startup. According to the startup
signaling sequence in the CYW43455 datasheet, the hosts RTS line must
be driven after BT_REG_ON and BT_HOST_WAKE.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/bluetooth/hci_bcm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
index 7646636..0f73f6a 100644
--- a/drivers/bluetooth/hci_bcm.c
+++ b/drivers/bluetooth/hci_bcm.c
@@ -445,9 +445,11 @@ static int bcm_open(struct hci_uart *hu)

 out:
 	if (bcm->dev) {
+		hci_uart_set_flow_control(hu, true);
 		hu->init_speed = bcm->dev->init_speed;
 		hu->oper_speed = bcm->dev->oper_speed;
 		err = bcm_gpio_set_power(bcm->dev, true);
+		hci_uart_set_flow_control(hu, false);
 		if (err)
 			goto err_unset_hu;
 	}
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
