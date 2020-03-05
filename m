Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378F217A6E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zYRt/AnVALp0fRDhEqQCWIBUdzyOW5d2lYGEBmU6hEQ=; b=TBubon+pyKRjaT
	IGrsCigjiWNC7wdzc4oR8wRl+Lm/tIv63sdpgQa2lc4dxge5rdLUNoDJ5mQHErtW2s/3OysgUH1xx
	Z+Oc8+DEYms48oLhGk8g6dMI1aAU0+nnMjxQwcBcgaeZ7XFu4lip/hDPpXsfq06KL9UfcoOlnKB0R
	ZNc//1grWoDXwmRnlbce7swsiDYqaMpmDa9TI7CDTRTrMx8yxXUsk4Ng8A7Oyzg+bi/a1FNwU4eEl
	ynpOiTblX/BoaYoYfOSUm3p26XAazDyNcbY7WdO72Yd9N0wPguETMZS4psee7slhznKUjNV8XErjO
	oK4m+e5OMLmhPZWnTHQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r2a-0004Nh-Ej; Thu, 05 Mar 2020 13:59:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r2O-0004Lp-64
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:59:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E2462006FA;
 Thu,  5 Mar 2020 14:59:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 70B4820057C;
 Thu,  5 Mar 2020 14:59:40 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DDE322059D;
 Thu,  5 Mar 2020 14:59:39 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/5] ARM: dts: imx: use generic name for crypto node
Date: Thu,  5 Mar 2020 15:59:04 +0200
Message-Id: <20200305135909.8180-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_055944_365735_F82CB7B7 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXQgYWxpZ25zIC8gZml4ZXMgdGhlIG5hbWluZyBvZiB0aGUgY3J5cHRvIG5v
ZGUKKGFuZCBpdHMgY2hpbGQgbm9kZXMpIGZvciBzYWhhcmEsIGRjcCBhbmQgY2FhbSBjcnlwdG8g
ZW5naW5lcwp1c2VkIGluIGkuTVggU29Dcy4KCkhvcmlhIEdlYW50xIMgKDQpOgogIGR0LWJpbmRp
bmdzOiBjcnlwdG86IHNhaGFyYTogdXNlIGdlbmVyaWMgbm9kZSBuYW1lCiAgZHQtYmluZGluZ3M6
IGNyeXB0bzogZGNwOiB1c2UgZ2VuZXJpYyBub2RlIG5hbWUKICBkdC1iaW5kaW5nczogY3J5cHRv
OiBjYWFtOiB1c2UgZ2VuZXJpYyBub2RlIG5hbWUKICBBUk06IGR0czogaW14OiBhbGlnbiBuYW1l
IGZvciBjcnlwdG8gbm9kZSBhbmQgY2hpbGQgbm9kZXMKClNpbHZhbm8gZGkgTmlubm8gKDEpOgog
IGFybTY0OiBkdHM6IGlteDhtbjogYWxpZ24gbmFtZSBmb3IgY3J5cHRvIGNoaWxkIG5vZGVzCgog
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtZGNwLnR4dCAgICAg
IHwgMiArLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL2ZzbC1pbXgtc2FoYXJhLnR4
dCAgICAgICAgIHwgMiArLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0
by9mc2wtc2VjNC50eHQgICAgIHwgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14MjMuZHRzaSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14
MjcuZHRzaSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogYXJjaC9hcm0vYm9v
dC9kdHMvaW14MjguZHRzaSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14NnFkbC5kdHNpICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
NiArKystLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzbC5kdHNpICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzbGwuZHRzaSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC5kdHNp
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDYgKysrLS0tCiBhcmNoL2FybS9ib290L2R0
cy9pbXg2dWwuZHRzaSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA4ICsrKystLS0tCiBh
cmNoL2FybS9ib290L2R0cy9pbXg3cy5kdHNpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCA4ICsrKystLS0tCiBhcmNoL2FybS9ib290L2R0cy9pbXg3dWxwLmR0c2kgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCA0ICsrLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtbi5kdHNpICAgICAgICAgICAgICAgICB8IDYgKysrLS0tCiAxNCBmaWxlcyBjaGFuZ2VkLCAy
NyBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
