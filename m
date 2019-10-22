Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301EDE04B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zq9RO6rlE0O9MXo5YbKIQKyPT2PDEjdkpzH1ElsOhSw=; b=IPYp/CgwmW/Nne
	WVzJK8L/WjQtF37a5lqe3NuMXJYg5K76u9ZtEW8jDIvJ44ywN+pHOXq+ubwR4Fg0pg6gex2LZBX7y
	gh/AGO70uo6SVjAoXimsFBgf7PK75MMdYPZwzUbvZ/s7ctGd+jfykJT7/ploo1QWpaMCQciwGkQci
	R1NLTh05lqxXIdlLJbw/J5rQc+IhAeFAGvSTlr5A9EwTkDF0UwrPx6cCg+j2BFbeunQnj7tAL67xo
	N0RUPYs7qDNCM4ImQOMzu6tAtJGQKBGvLjgRy4o5EDk0RT3brsvfVcfkfqQMto4Dif+up3fpvub3i
	rqCkh32nv56FPNOA3f0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu36-0007Ye-2O; Tue, 22 Oct 2019 13:18:08 +0000
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu2v-0007Tp-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:17:59 +0000
Received: from player793.ha.ovh.net (unknown [10.109.143.249])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 31A0A14799F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:17:42 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 3257BB3E3BDA;
 Tue, 22 Oct 2019 13:17:27 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 0/9] ARM: dts: update APF6 / APF6Dev
Date: Tue, 22 Oct 2019 15:16:46 +0200
Message-Id: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 104990167874753605
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061757_707842_9C062037 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.62.179 listed in list.dnswl.org]
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

VGhpcyBwYXRjaCBzZXJpZXMgdXBkYXRlcyB0aGUgQVBGNiAvIEFQRjZEZXYgZGV2aWNlIHRyZWVz
LgoKU8OpYmFzdGllbiBTenltYW5za2kgKDkpOgogIEFSTTogZHRzOiBpbXg2cWRsLXthcGY2LGFw
ZjZkZXZ9OiBzd2l0Y2ggYm9hcmRzIHRvIFNQRFggaWRlbnRpZmllcgogIEFSTTogZHRzOiBpbXg2
cWRsLXthcGY2LGFwZjZkZXZ9OiByZW1vdmUgY29udGFpbmVyIG5vZGUgYXJvdW5kIHBpbmN0cmwK
ICAgIG5vZGVzCiAgQVJNOiBkdHM6IGlteDZxZGwtYXBmNjogYWRkIHBoeSB0byBmZWMKICBBUk06
IGR0czogaW14NnFkbC1hcGY2OiBhZGQgZmxvdyBjb250cm9sIHRvIHVhcnQyCiAgQVJNOiBkdHM6
IGlteDZxZGwtYXBmNjogZml4IFdpRmkKICBBUk06IGR0czogaW14NnFkbC1hcGY2ZGV2OiBhZGQg
UlRDIHN1cHBvcnQKICBBUk06IGR0czogaW14NnFkbC1hcGY2ZGV2OiByZW5hbWUgdXNiLWgxLXZi
dXMgcmVndWxhdG9yIHRvIDVWCiAgQVJNOiBkdHM6IGlteDZxZGwtYXBmNmRldjogYWRkIGJhY2ts
aWdodCBzdXBwb3J0CiAgQVJNOiBkdHM6IGlteDZxZGwtYXBmNmRldjogdXNlIERSTSBiaW5kaW5n
cwoKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC1hcGY2ZGV2LmR0cyAgIHwgIDQ5ICstLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14NnEtYXBmNmRldi5kdHMgICAgfCAgNDkgKy0tCiBhcmNoL2FybS9i
b290L2R0cy9pbXg2cWRsLWFwZjYuZHRzaSAgICB8IDIwMCArKysrKystLS0tLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZxZGwtYXBmNmRldi5kdHNpIHwgNDI0ICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgMzAzIGluc2VydGlvbnMoKyksIDQxOSBkZWxldGlvbnMo
LSkKCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
