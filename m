Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F59F6ED2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Exm/cFXfi9GlXhPF/RTR+FXX283TSM4NT02VkmQJT7k=; b=fk/DBwUoJvpdiZzuaMeqtLg2l0
	y/DlM2jfZ8aqS+K4Xa8lVh68Xx7bBA4s24eXa37gxQhlVKJHq3iz1xbkKbrQ0gzx0fM06F6FjyirX
	6iseC7XArPHP8YOBrkW5ucD7D1fYrE802F1bfhsq6oNlZqM5/1G6xwjpH71Jaqb+gABK8U9Gky5JK
	MvFtOTUG8YJck80a1uC78HvWr4g6qxUXabySRft7jpGxPIH9/SvU5epUDZ0SRZiOaCGYDtFP9/COz
	t+m7hMfzcgBNUUcvrF8lSzl7f+E1xfNHAGLh9g2zDPEVGO635LCyj62Fu1Y516YVgs6vMShL/X13F
	XHNpLHbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3eE-0003QA-CF; Mon, 11 Nov 2019 06:58:02 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3do-0002yE-6b
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455363;
 bh=Imoq/wSFMrBBPLNQDLfO722VD00600hqsxm/eoRaikM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IzoFprfv+223+F9CAdkCL1fPQsVURQw7l2gyTLN+ngxtXQ8miGkleq50GY+bk5by2
 gCnicIWRvhPRZEw5oKHHrjUolOC1Vzza7JH4+Dm59DGyG4+A8mKqh1lqaPWcTbqgs6
 rV0lmUsW6YFcyUHp8t4w+DcD4MOHZX3/oz3vqjQ8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MGhyS-1ihr8b1gIs-00DrZJ; Mon, 11 Nov 2019 07:56:03 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 6/7] net: bcmgenet: Add RGMII_RXID support
Date: Mon, 11 Nov 2019 07:55:40 +0100
Message-Id: <1573455341-22813-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:kNPp966w54VeZ2+FMAstTTYYTOCLGCHBqjQrWRi18NF975uBc6A
 iT30WGE0l5WPP7ZeZfmscjl6IaRAiN8OuWTOSZdSjxxrOi+brBjzDGbd5dsQxkYdHTNVwW3
 9cQ0YOzWZfS4tAhnlkZbbzHIXlNoyUvA9QH4vwChdhf7+WG35qjuUHww/uwGboFujLD+jBu
 keYltdNqvv5UdOHk7NtJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xl7Wvqae/X0=:oPA1wqbZGgNTv/lV8qVoTR
 iPLHcqbC2K4zYqmYyVAQ6PpEcg989LoUGpcXjZqB/u/pnfwObTj5y5sVPRdcyDL6LdF1baVsS
 UhD8HiqZTr8O33Vi5VGLtiv1FGcm6CpFWVl7a9zTGgUIaCueo2oQmliilt25UKBqmIDGV7tCP
 Nzzm/Rmd64qAkXlXORqcJpkEQlMJ6RthsD58YRO4ErbKmlDlWqukN62NSzNr4SzTS4JyZzSG3
 peK5fq5lYhpAxb3OXcUDBFCpqbjN89wjZiV98FJ7gFiDxR5UzuG3je+M6ksXSxt4S4j7JBcN3
 nC2Vr+na++CXYbzOTd8EAqytZWKiB37GkKrHHRYRLFmeNj/lo6hvlcIbe78FK4P33EhDTVCxg
 qMHLVsuvCs6DWOBJsigfT8pruJWwxMA8GB6rjdYCnxiWij6TDMJq46j2cskp6T9NDK+lpdb5F
 vLItd4Sx4/kmyV7ARpPo4OszFk+Jb44SCKfYaHaxKgiN4sJcsDF69ASL7/iWvft281Ehi5BY/
 /GcwPkpTJ91othwE0RQkBF67W/r6ywG1MLRQ1Yvw6VZ1de9w3KDOq3kNiRXqNz8fCiyE5A2WX
 EwyuV6mgB/3oJR/bqa+BT3UKtXaZSHOFI63y/Um1TKh2XycaOg7m77yQoc1zsaVyA5q+PHP2e
 paJ0Zh70vMWVrDOo9chGjEC8jl/VhhxYVPT9XROLPLrCelJUOGeOayciJuTC+B8untyh2pBqr
 9ZApm8V7blrpXXhO4YuGrhFxM3O4870J5wLrXy5sa0vm9MmWfq3Sf1nQdOwEJwu2iQ4qCnbfB
 Apl8QRXpUnV5xrd3icdIxQ57VC17iFgkQxWinR7mar5AZNKQznYm3oirfWxVA4jkRGhDKaELV
 jZ32pP6C2ULOCBY1xspW7cbMZETTfk9KQlNuPHre1haJ/7KnZgU8P8urwFZyQQpo8PZyH3Sh8
 AuHEPvlbBpUY0ru0GDDOv1zNyvjQe1g9u1Cq1BeHfq1b20k3bvrSZNH9SK2lK1RzTS/TvP07G
 sutX2TyCUOPCozFMtxznytqm4AF/y+XZsRfqDYeRB/qhnacnayics9VDaaW7ma+D8jsfGqp5D
 xcVRlwvSqJ33PhJlvHuaC2sJyu0+eO8ipGXRikm/SxkjELiY4FExOeDnQ6qWfIgXoG2Wf0Udf
 wU0SidL0CGKNu4nW0dDAKPHPokrC11snTDDZYYAt0rZSqneJLfSj24gMWYzFNseFzvKxnpPsh
 sSmhUuzQwm1vr6xYNaaoJ3gvo1nWNx/6YvS6kww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225736_548921_CE9E8D4C 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the missing support for the PHY mode RGMII_RXID.
It's necessary for the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 611a6c0..80d2f87 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -273,6 +273,11 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		phy_name = "external RGMII (TX delay)";
 		port_ctrl = PORT_MODE_EXT_GPHY;
 		break;
+
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		phy_name = "external RGMII (RX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
 	default:
 		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
 		return -EINVAL;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
