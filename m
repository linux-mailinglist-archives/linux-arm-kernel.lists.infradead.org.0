Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A142F809A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ANJ6cvS9lYLLI/uzVyfXjcRj+I1XlcWld8L6qPPOCfI=; b=gEF9g3fpT4JYgZDJmKs9dz2Dzb
	QXXYbOi1a1RmhvWHDYYJ7L1Mvi9uoaQieMqaHcM8CBeZUwHSv5x2PdIWRjCJPJZ+YrIU0eXHhtku0
	cANkXkfSxV2wXp9q8dXr3P/1e5Utl/Ckeb9fJaR3BJ4HzjqfL7qdflz5Tvo6hvpVUr+NF3T6g4o/w
	QeIS6cwEEH7v61rbQVBRwbUz7wpHq73dOtAumZskNHuxaBHD+r8gr8RbZXSgWSPwhhlB5bzT/u6mn
	ksvsOzBlR94rzTI3QM7NizkWQmyCQyDHPAbCwCb/c1scO7DRlyO/50RJ04ECFA7EogFf/JL4S7nkd
	SKOOplmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFji-0002Lm-Mj; Mon, 11 Nov 2019 19:52:30 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cy-45
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501793;
 bh=2nqc6rODnsja5qmJqja77SOFP0+FHJgseIDW5uO6jdg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AVblzHIfGzgF26rvCYE17NbdW2olTXt01mTERyPtXCpSF2tZMVEQd9cfb6Wvvy63n
 m3TZIJUyTupfc2obcP37bCm8WHxeu83DnLX3/Us/ryR6C1xGek1iqabJAXhn8/B05Z
 pB1CLff+Phf7vBpYOkmnfoipqm7F8DXE+AtWrQps=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MsYv3-1hbRzG0TUJ-00txqX; Mon, 11 Nov 2019 20:49:53 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 6/7] net: bcmgenet: Add RGMII_RXID support
Date: Mon, 11 Nov 2019 20:49:25 +0100
Message-Id: <1573501766-21154-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ZOJfpg6u3NfseTrJXBluY7EW2RZP4PqNGXGc9v9JvJyVbCBP+yg
 8nsEbKeJB74U3TnkStTI4ItXCmosERWXr39/a/Nezuq1bmiTiRX2pLO6S+DjC3+iWaeNRTn
 wYw5E40IG3FBwEqwpaTyWI1MXXzVY0BpaPPFz6bdWj70n/ecR/4LluJ/1FkzlWF4ycxH/T5
 WZAsbauvHgTfi78LiyrGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z2sjTrTeI0U=:OUB7VCuUxbWWJwulchHDg0
 XoqjilVPHJfyZ6PgueQaQ4q3H1peQgot7oXyN9Rxt0Z2Z/jiMcL8+68DLG5rDvBT7NbpP3eqH
 XDFXC75Ugs2YzaeFN3FowmBGuRLk+aqbAZM9jD2G/WezQPO4e7aIbZn2wjm2MM7rC16hHT6VA
 7/fyQTFd/b+9t49qcPCQoE9XPoggcdX6JmQ0QSzRPXm5fmzz2ymc/6t/8oqd7l3T9yDvC8ui6
 ya67seQTkZZMv3fiu5m1Lf71p/ZZc6pROPBYypzjGQLj/UaqOaftMk7YgyZN6vLkWeRrDnDIW
 reDBfbpVhW7LLjdTV+Qw3U3Cn+xOJeEOR4D0ZRIXuZSbh8LRLs9keXP5R1msVByo1mvNU7GMn
 tXH/Kzebc+fDpWDC124+/yCx7MvGRqbvdtUTyNCr+kZ+5uhfecMhN8z2NPFQuhFnYvzLtUHgZ
 ntUsE3ZZuIdfLgQyRsrLF1pOOwQ2qffJ/zLdCImgFGybpofZ4oBhEFpZB+QXMcoOGdmOTTS2W
 lCzqfVnTdwZLr6zEm646UfULczKmZ0SKvYxvy/51UN52KIsasn8KIuDZ+Gm4N5KCH9chzEF90
 xOTkR5OEI9SfudDTEGQO+O84ns7OsAVf2QynejE0kCoRwdEBAjCVcd703WK7dFyb6HijeaH5y
 8U2jy4rRYgV0k6Rp2qjgefQcxGxyanUjl0i2KM6iCkto+KvS6lNTXjghdNDxlpzQKDs+AOUSw
 bOZjG2oXnwpWpWAjQptwdR8DQbuzVj+6vxI0necVd2Wqf9SDxkkG57iLBEnp2cx7o4ZfLPwsA
 M1ov64mA+UgjXG8kQXS7V0ioX2/HMR96cbAWdnU3/5EvbGxs+fWvX55IoQzH1+QcRDBNdN4wM
 /+h8ysR0fbmqTZYLC0cJCM6d9zZYMZhA6uMrhT+Tlal45xCm5O+OBLYHV/uYGBWhSlTVZXVDW
 +nPxoK0VkEfjQJUPJJgP0gK82vkCQyQQfqaH9Ui3nn5bUG+Mf/MFERIhQ/44rz7Me7pw7h1eX
 3WkI/IGzPmmr182kyPJ0yiDehlsIGz3fzTB3SNE/9Gdy0VK7izFIQggGEVKRClHGex+1Zlekz
 1Kzh/DVHb0yZlNyDgRXEFpyY3SYznsmQhzZ6tMY/eWdOeOgNiDAcFBt+tbzrY22xTR3uYekHv
 W1wNLtEYn9C1c+Wz2zBGdCAVw0q12GekHRHUIay9IoqbqnUg4nohQznXm5cgro6kmgc0eQEFl
 4sPVhdqxNcqGjj4+p8j/H+tYgGZel/k4uEl0Etw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_482543_32CCF38E 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
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
index 021ce9e..6392a25 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -270,6 +270,11 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
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
