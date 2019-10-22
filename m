Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14D3E04BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpBYQjbv2ytmYadBjHr36Q/ZupeqkmaSWIhOgHHYNSk=; b=Q0lpC2u/sxGRhY
	3Rt2kUplRMNxcxDJVstX+gqObO3LP4WwohmpgUew7Oco0+/Rku0FPDEYSrKSGBv5f0GSNqj982Sv3
	FbSO1MFWGiAWnCnvumNk3gbxhmub7P+Cf/eFfW6hxx1IaWzd28DFgbiDyhSzqASJDzVN/6Fjf/JUK
	2BJmJ1yf7OcE9t0EJOyGt+ukmGRW4aCA3ECCP25y2VLZGu4wQGVpE7+BAC3v3IC2+vjZlb4BBOGhL
	AzVnTVEQNdLgIqC/IDSKmqX+y/Z3/RXv6p2Hje75nAzij2IdVzTiHJhd0/XpeBLFeb+Fzfh4MTW6a
	inZN+lvpMDJAoK9Tc4Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu4D-00006o-CE; Tue, 22 Oct 2019 13:19:17 +0000
Received: from 3.mo69.mail-out.ovh.net ([188.165.52.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu3Q-0007xQ-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:18:30 +0000
Received: from player793.ha.ovh.net (unknown [10.109.146.168])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id D0B3E6D3FF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:18:24 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id F286CB3E3F70;
 Tue, 22 Oct 2019 13:18:10 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 3/9] ARM: dts: imx6qdl-apf6: add phy to fec
Date: Tue, 22 Oct 2019 15:16:49 +0200
Message-Id: <20191022131655.25737-4-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 117093590818575429
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061829_000264_A8B51F8E 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.52.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRoZSBtZGlvIGJ1cyBhbmQgdGhlIHBoeSB0byB0aGUgZmVjLW5vZGUuCgpTaWduZWQtb2Zm
LWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5j
b20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2LmR0c2kgfCAxNCArKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWFwZjYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZxZGwtYXBmNi5kdHNpCmluZGV4IDEwOTgxYzc0YzkwZC4uMzdjYmRmZDRmYjMzIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLWFwZjYuZHRzaQorKysgYi9hcmNoL2FybS9i
b290L2R0cy9pbXg2cWRsLWFwZjYuZHRzaQpAQCAtMTEsNyArMTEsMjEgQEAKIAlwaHktbW9kZSA9
ICJyZ21paS1pZCI7CiAJcGh5LXJlc2V0LWR1cmF0aW9uID0gPDEwPjsKIAlwaHktcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8xIDI0IEdQSU9fQUNUSVZFX0xPVz47CisJcGh5LWhhbmRsZSA9IDwmZXRocGh5
MT47CiAJc3RhdHVzID0gIm9rYXkiOworCisJbWRpbyB7CisJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OworCQkjc2l6ZS1jZWxscyA9IDwwPjsKKworCQlldGhwaHkxOiBldGhlcm5ldC1waHlAMSB7CisJ
CQljb21wYXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKKwkJCXJlZyA9IDwx
PjsKKwkJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKKwkJCWludGVycnVwdHMgPSA8Mjgg
SVJRX1RZUEVfTEVWRUxfTE9XPjsKKwkJCXN0YXR1cyA9ICJva2F5IjsKKwkJfTsKKwl9OwogfTsK
IAogLyogQmx1ZXRvb3RoICovCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
