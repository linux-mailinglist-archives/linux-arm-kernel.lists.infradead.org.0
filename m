Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327369802C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DPKW2jRwJ511YisWudHaYtZjCEO4CXMO0WRU/CxHSi8=; b=qka/yNb4+reynq
	uyLVy6nAzeyuD8UI5opfUZ7ZwHlZkJbbHd+PT9+4/vySuYQkO34jLh4g5ZlksAq+vRK2XVOL8X3KV
	K8IZmknZPVKzm9e7NBY49Y9Nefz+llQ9CZVY5ijaOj24v7P6aZLmcbX3UWLOCQDD/0gOsCwtNRo8s
	HllMSrA0RiCLaJhpERkBm8ZEpgQr8FIHKCMktVijZYRZhVym0+6roltwM3Lg2SAl7jAy7r79OLm6n
	FiQ8FlPdJhJ0bLFiL+/IctJ7FFemzMGkbYNDL2tsSTeDa2NEyJIev0l4ka/r0liCDQm1uADdTVWRV
	bBbZ5Fqz4o4lqGYXrctA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TY1-0001MJ-Sb; Wed, 21 Aug 2019 16:33:21 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TXs-0001Lc-6F
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:33:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 73278FB03;
 Wed, 21 Aug 2019 18:33:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUmwi9lBZZZM; Wed, 21 Aug 2019 18:33:05 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E496842A70; Wed, 21 Aug 2019 18:33:04 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx: gpcv2: Print the correct error code
Date: Wed, 21 Aug 2019 18:33:04 +0200
Message-Id: <ceab1bb4984d0a4f59a580cd9956c1fd6d6a78f3.1566405120.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_093312_380751_4303D615 
X-CRM114-Status: GOOD (  10.68  )
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

VGhlIGN1cnJlbnQgY29kZSBwcmludHMgJ3JldCcgKHRodXMgMCkgd2hpbGUgaXQgc2hvdWxkIHVz
ZSAnZXJyJy4KClNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+
Ci0tLQogZHJpdmVycy9zb2MvaW14L2dwY3YyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9pbXgv
Z3BjdjIuYyBiL2RyaXZlcnMvc29jL2lteC9ncGN2Mi5jCmluZGV4IDMxYjhkMDAyZDg1NS4uYjBk
ZmZiMDZjMDVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NvYy9pbXgvZ3BjdjIuYworKysgYi9kcml2
ZXJzL3NvYy9pbXgvZ3BjdjIuYwpAQCAtMTk4LDcgKzE5OCw3IEBAIHN0YXRpYyBpbnQgaW14X2dw
Y19wdV9wZ2Nfc3dfcHh4X3JlcShzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkLAogCQll
cnIgPSByZWd1bGF0b3JfZGlzYWJsZShkb21haW4tPnJlZ3VsYXRvcik7CiAJCWlmIChlcnIpCiAJ
CQlkZXZfZXJyKGRvbWFpbi0+ZGV2LAotCQkJCSJmYWlsZWQgdG8gZGlzYWJsZSByZWd1bGF0b3I6
ICVkXG4iLCByZXQpOworCQkJCSJmYWlsZWQgdG8gZGlzYWJsZSByZWd1bGF0b3I6ICVkXG4iLCBl
cnIpOwogCQkvKiBQcmVzZXJ2ZSBlYXJsaWVyIGVycm9yIGNvZGUgKi8KIAkJcmV0ID0gcmV0ID86
IGVycjsKIAl9Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
