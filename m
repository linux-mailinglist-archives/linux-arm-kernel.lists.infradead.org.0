Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67399131EC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 06:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M50ioTMWlzs8PT7Oghn9kc94y0cZLachvFUP3jaZ/Mk=; b=Jl3VRViXsVNqBt
	ulsd4IOthhcTaEpzAjd21XEpnGRTepAbGy0Si3eY8IjauThxIY8sX/Pnk3gDc0kme23fUKhzatgpD
	+XLVBQZ2QevLipRIhTPam7o3M0UJOHXpY3SkAJBKxFwIoRN+fov6fT1aUqzhoEI5V3eRARLTNn4pA
	mqQHFv8nvYyFnuJxnkHlNdMOttt01mZzJNkCvA9QQ3D7ZN/unGBClYgdCafhy21i1fX9k41DXdJQf
	aQQSdQNRnfNIbCKgd2t/gcoTeRix2qMWQIrOY/RoRSsw4+paAJpEcmZeXos8UcxSysAPZI2M10+c3
	WgM2hik5l16lZ4mpKv7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioh6w-0005xH-Us; Tue, 07 Jan 2020 05:08:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioh6r-0005wb-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 05:08:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so22702809pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 21:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cr5sx8yPELFvuYRl+jNMxMdmYnoYhuCmAKJ5oKY9g0E=;
 b=bs8O920SS1yotiq316xmFKSrZBnBRdPAatoEKVXgtngpJcFL++S9RN5RwkXU2oL4Xx
 K0Xovl+wvF80zIxlBK+RWOePBY/ZNYDD8y0nTG/5qxJCsOX9yRL2TSOSxrjFTaSV9vWb
 kkcNaCW0XzGLmtdgZxX+e0l1kxQZSSgRJgEuC11v8NNShmuCvWGSdMTSM6g1SrlevIAF
 k0K/m1O0x9KoKblKFHdKetFua70jZ1+UwCwXtCXl5o0pHJOXI3684yFzCU7yGoVPy6e+
 /F5rsnlyDzeNoL48tvUnWJktqdeqB1xjmff/zZbdJSsR2bJw3dwlqd8QcraP2rM3Q/S5
 rIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cr5sx8yPELFvuYRl+jNMxMdmYnoYhuCmAKJ5oKY9g0E=;
 b=KtLh3SH+y8QtGI1zwQYhJ0d1t6ZmkW+0GpHz0i6zSXE1Izh3t4HT+N78csEPLfp+j9
 I6MpW8LBrD7iY13DmUJObrJeIKgjmDX+bGd/HRyHRYThP5sE5uKF8Z2tVDgRI0k09U5q
 W1x/R0DOPl7Y5F/S/vF78lQ4g7s2io2jWt4rRZB40kIfI84/pV00wrqC3ROJGsKkDRJu
 8xJGv15zXTUw8q+FW75BBENckl4kaqIPvbZ8nmSJ2WTyo1ahssIgHpMbLEyZXYvpmPj8
 vMZWrdX1jxbjy/RekDJAqyKmZXRukWPLn9P2K9pZFdjkw3GHGdgK0KuCbpv0L6cIhp9l
 9l/A==
X-Gm-Message-State: APjAAAWZ2lKoKIxwxR8kDYqAfkmDMJMObfjLH7jvp55P6i49bd2SZlmR
 +P3HTB4OTTq98q3JvnaJw8E=
X-Google-Smtp-Source: APXvYqz6YXrRtzypIMvVy+x3Jnu/MuLIq8K/vpYiXguCE8h2B/hQlRh5PoCsvQtDYr6Xwakge0GZjg==
X-Received: by 2002:a17:90a:8912:: with SMTP id
 u18mr46705829pjn.21.1578373732299; 
 Mon, 06 Jan 2020 21:08:52 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id l66sm75149647pga.30.2020.01.06.21.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 21:08:51 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] Revert "net: stmmac: platform: Fix MDIO init for
 platforms without PHY"
Date: Mon,  6 Jan 2020 21:08:46 -0800
Message-Id: <20200107050846.16838-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_210853_484909_06B85095 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Jayati Sahu <jayati.sahu@samsung.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Sriram Dash <sriram.dash@samsung.com>, linux-kernel@vger.kernel.org,
 Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
 linux-stm32@st-md-mailman.stormreply.com, broonie@kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, khilman@baylibre.com,
 enric.balletbo@collabora.com, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit d3e014ec7d5ebe9644b5486bc530b91e62bbf624 ("net:
stmmac: platform: Fix MDIO init for platforms without PHY") because it
breaks existing systems with stmmac which do not have a MDIO bus
sub-node nor a 'phy-handle' property declared in their Device Tree. On
those systems, the stmmac MDIO bus is expected to be created and then
scanned by of_mdiobus_register() to create PHY devices.

While these systems should arguably make use of a more accurate Device
Tree reprensentation with the use of the MDIO bus sub-node an
appropriate 'phy-handle', we cannot break them, therefore restore the
behavior prior to the said commit.

Fixes: d3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for platforms without PHY")
Reported-by: Heiko Stuebner <heiko@sntech.de>
Reported-by: kernelci.org bot <bot@kernelci.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Heiko,

I did not add the Tested-by because the patch is a little bit different
from what you tested, even if you most likely were not hitting the other
part that I was changing. Thanks!

 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index cc8d7e7bf9ac..bedaff0c13bd 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -320,7 +320,7 @@ static int stmmac_mtl_setup(struct platform_device *pdev,
 static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 			 struct device_node *np, struct device *dev)
 {
-	bool mdio = false;
+	bool mdio = true;
 	static const struct of_device_id need_mdio_ids[] = {
 		{ .compatible = "snps,dwc-qos-ethernet-4.10" },
 		{},
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
