Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DB57C910
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p/KCpb42At1GfNGW2JzU0Gf533NNOFhlpNQ7nxfYlOw=; b=ofZjyhI61zp9qS
	Y0Qm5V2zzCp2gb6C8P2BRSJTUJlhfKCnidf+ZfXiGPtsAlAgwM0uRVxKrLarctwKqQkeN4mv4O/ul
	b/Eduo3AvW+kCvjQC7Amt//9Om1r3+zk9LPKtJTBqoWn6Anfg2NW8Lvm+utVOeKHThRQ817Ps9tKT
	XveyUdX3eStRhPfkygk9877WAhsIRIBXVm/Ex1fDFtMdMlVKaO7Z38jFWf0TGiFfSqrGN8DOp/dY8
	On0NR+FC34PaoZUpZ6k7Pz2VKakRPzD0QHEuoLYkToN6zj/lbN2mxwSX8ZJ8FrGCYS5oY1xqiIOdd
	W6AzlYSzmioh6nSxUcOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsri3-0007mO-5g; Wed, 31 Jul 2019 16:44:15 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrhR-0007Gt-KI
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:43:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 4CD8BFB04;
 Wed, 31 Jul 2019 18:43:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9TGo641ILXY0; Wed, 31 Jul 2019 18:43:33 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5EB7746D8A; Wed, 31 Jul 2019 18:43:31 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 0/2] imx: Fix typo in iMQ8MQ reset names
Date: Wed, 31 Jul 2019 18:43:29 +0200
Message-Id: <cover.1564591352.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094337_819140_97B2129C 
X-CRM114-Status: UNSURE (   7.43  )
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

U29tZSBvZiB0aGUgbWlwaSBkc2kgcmVzZXRzIHdlcmUgY2FsbGVkCgogIElNWDhNUV9SRVNFVF9N
SVBJX0RJU18KCmluc3RlYWQgb2YKCiAgSU1YOE1RX1JFU0VUX01JUElfRFNJXwoKU2luY2UgdGhl
eSdyZSBEU0kgcmVsYXRlZCB0aGlzIGxvb2tzIGxpa2UgYSB0eXBvLgoKR3VpZG8gR8O8bnRoZXIg
KDIpOgogIGR0LWJpbmRpbmdzOiByZXNldDogRml4IHR5cG8gaW4gaW14OG1xIHJlc2V0cwogIHJl
c2V0OiBpbXg3OiBGaXggSU1YOE1RX1JFU0VUX01JUElfRFNJXyBkZWZpbmVzCgogZHJpdmVycy9y
ZXNldC9yZXNldC1pbXg3LmMgICAgICAgICAgICAgICB8IDEyICsrKysrKy0tLS0tLQogaW5jbHVk
ZS9kdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaCB8ICA2ICsrKy0tLQogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
