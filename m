Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC7152699
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqfwHHKtYti+B1kPUSfr+QSl7F9lLyplh2ZMKk4G11M=; b=ZKw6fYuRh+ltyK
	Tl4S6mhVvRa8FHjBMLLwWe6avNhkSsJtWVfALY6drQ+/W+EBEHrsI/EOvradZvE8L6X1JYWlp7n5H
	gYFH8qe4QoET5ohxRfXn7+v3No85A9Q09mDvZe1a3umL2yWCuO/4yrO3LzBCfhnXUzXJ1ktCKwQlB
	9gKFIVYVUEFhWnyqID300ScfDLrIhUgL26AoOi1v8fsawLAjSuUzlknfEtZ9PmkjKkwYFqL3SZqqW
	9dYTThlUjLHZJiA0x39KxI7oovR2cVDNuDfL6BlQp+ewv8vUH71VpeVSpXim0ewTkwm99DqzxevTq
	KW0/TX9MvkWS3vbul7AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgoQ-0003j7-5e; Tue, 25 Jun 2019 08:28:22 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgnZ-0003FE-00
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:27:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 71E68FB02;
 Tue, 25 Jun 2019 10:27:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5PmPorYpdMO; Tue, 25 Jun 2019 10:27:23 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1F56E48E14; Tue, 25 Jun 2019 10:27:22 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mq-librem5: Enable MIPI D-PHY
Date: Tue, 25 Jun 2019 10:27:21 +0200
Message-Id: <d9a2076bd4231398bd131483db8b05a7e5d56d8b.1561451144.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1561451144.git.agx@sigxcpu.org>
References: <cover.1561451144.git.agx@sigxcpu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012729_199520_90369E60 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBlbmFibGVzIHRoZSBNaXhlbCBNSVBJIEQtUEhZIG9uIHRoZSBMaWJyZW0gNSBkZXZraXQK
ClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyB8IDQg
KysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCmluZGV4
IDkzYjM4MzBlNTQwNi4uODNjOTY1NzczYTI5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKQEAgLTE3NCw2ICsx
NzQsMTAgQEAKIAlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw3ODY0MzIwMDA+LCA8NzIyNTM0NDAw
PjsKIH07CiAKKyZkcGh5IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmZmVjMSB7CiAJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfZmVjMT47Ci0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
