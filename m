Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA077C8C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1N68PXRpqenuccMVriRwFTiNv2JuhVO5wgkIEVjZYNU=; b=g/UVPMLWOerfb+
	PR3GqvJcCLH5xHzscVcUq3oprNmAn2F0vbBmjfTQ7ObBuoLBTrisBOo7RDb3GjjAQRuCXh9B4tYO/
	Pn73qnkI5pBjmwZTlhCK8fUxmHE0CgBHqGcDrbKoU2tYVTUEDsA9jZuUcX4Tid7dIpEaRabMItY8Q
	08Ri7TRVXFLSPYguZL63qcH1WaLxU8aw7gYCpBK5VKoqNSXSo5aBE4cDuD+yyO65ovIFbKeliB0yc
	pC4TufV9AmzHt+HqZr4C4FkGSnLYLmHvFHnYPpYF/uhljqwQzZUxCF5tG8fKzuSKx5ZuZdTkjwhWC
	u1/bDz6d4WonxydhA0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrYX-0001vz-E5; Wed, 31 Jul 2019 16:34:25 +0000
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrYP-0001vc-Vq
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:34:19 +0000
Received: from player697.ha.ovh.net (unknown [10.109.159.123])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 248DC1A6ABD
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:34:15 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player697.ha.ovh.net (Postfix) with ESMTPSA id 580F38831A9A;
 Wed, 31 Jul 2019 16:33:56 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Date: Wed, 31 Jul 2019 18:33:58 +0200
Message-Id: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14053201162921464871
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093418_161779_1D2E6B18 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.58.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgImZzbCxpbXg2dWwtY3NpIiBlbnRyeS4KClJldmlld2VkLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8
c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Ci0tLQoKQ2hhbmdlcyBmb3IgdjM6CiAt
IG5vbmUKCkNoYW5nZXMgZm9yIHYyOgogLSBOZXcgcGF0Y2ggdG8gZG9jdW1lbnQgbmV3ICJmc2ws
aW14NnVsLWNzaSIgZW50cnkuCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
ZGlhL2lteDctY3NpLnR4dCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9pbXg3LWNzaS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWVkaWEvaW14Ny1jc2kudHh0CmluZGV4IDQ0M2FlZjA3MzU2ZS4uZDgwY2VlZmEwYzAwIDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaW14Ny1j
c2kudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pbXg3
LWNzaS50eHQKQEAgLTksNyArOSw3IEBAIHRvIGNvbm5lY3QgZGlyZWN0bHkgdG8gZXh0ZXJuYWwg
Q01PUyBpbWFnZSBzZW5zb3JzLgogCiBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCi0tIGNvbXBhdGli
bGUgICAgOiAiZnNsLGlteDctY3NpIjsKKy0gY29tcGF0aWJsZSAgICA6ICJmc2wsaW14Ny1jc2ki
IG9yICJmc2wsaW14NnVsLWNzaSI7CiAtIHJlZyAgICAgICAgICAgOiBiYXNlIGFkZHJlc3MgYW5k
IGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXIgc2V0IGZvciB0aGUgZGV2aWNlOwogLSBpbnRlcnJ1cHRz
ICAgIDogc2hvdWxkIGNvbnRhaW4gQ1NJIGludGVycnVwdDsKIC0gY2xvY2tzICAgICAgICA6IGxp
c3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgc2VlCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
