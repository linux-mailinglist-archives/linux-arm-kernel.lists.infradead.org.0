Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D613BE179D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UpRZItQnyZk4vD1VUMQyTHknOMX/blybO2rm31PD9Y=; b=hMcqRv1aYR4xV7
	ZY3ntW4KmboXz/AfJzeNjRgYzPawmC6MaG1dbFGLoZIfMXw4bxYYYv3ai3XVyP1NQfpfmrCRWFp4g
	+0LQbLIJmhTZGjdR5chzB0Qba/+ojISMs4BisGP10xwNfT7IpZ4RH5+h2WOg+C4aOjyALMAfusGeS
	bqEaQm7DEVEGcDlY5QE+M6ax+NJxB1k0zU6GnQ/lEj+bjcn9XcL3PCs/TlK6xqG1Ez8rDvJtaDXvs
	iexj8ft/4DpLxK86vsOdxBEpUYHOOuJECXd1SXxQHTIPqtqimZyuVZCGe/BORicVEyWNTYo6H3Dtx
	P8nJHpxMLFq4gukpnaPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDfw-000825-9O; Wed, 23 Oct 2019 10:15:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDe1-0004kj-KQ; Wed, 23 Oct 2019 10:13:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E6D88B595;
 Wed, 23 Oct 2019 10:13:30 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 08/11] ARM: dts: rtd1195: Add reset nodes
Date: Wed, 23 Oct 2019 12:13:14 +0200
Message-Id: <20191023101317.26656-9-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031333_878770_EEC366D4 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHJlc2V0IGNvbnRyb2xsZXIgbm9kZXMgZm9yIFJlYWx0ZWsgUlREMTE5NSBTb0MuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6IE5l
dwogCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kgfCAyNCArKysrKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5
NS5kdHNpCmluZGV4IDQ3NTc0MGM2N2QyNi4uZmRjYWY0OGEyNmYyIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5
NS5kdHNpCkBAIC05Myw2ICs5MywzMCBAQAogCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAkJcmFuZ2Vz
OwogCisJCXJlc2V0MTogcmVzZXQtY29udHJvbGxlckAxODAwMDAwMCB7CisJCQljb21wYXRpYmxl
ID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCXJlZyA9IDwweDE4MDAwMDAwIDB4ND47CisJCQkj
cmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKKwkJcmVzZXQyOiByZXNldC1jb250cm9sbGVyQDE4
MDAwMDA0IHsKKwkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1sb3ctcmVzZXQiOworCQkJcmVnID0g
PDB4MTgwMDAwMDQgMHg0PjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsKKworCQlyZXNl
dDM6IHJlc2V0LWNvbnRyb2xsZXJAMTgwMDAwMDggeworCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3
LWxvdy1yZXNldCI7CisJCQlyZWcgPSA8MHgxODAwMDAwOCAweDQ+OworCQkJI3Jlc2V0LWNlbGxz
ID0gPDE+OworCQl9OworCisJCWlzb19yZXNldDogcmVzZXQtY29udHJvbGxlckAxODAwNzA4OCB7
CisJCQljb21wYXRpYmxlID0gInNucHMsZHctbG93LXJlc2V0IjsKKwkJCXJlZyA9IDwweDE4MDA3
MDg4IDB4ND47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKIAkJd2R0OiB3YXRjaGRv
Z0AxODAwNzY4MCB7CiAJCQljb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7
CiAJCQlyZWcgPSA8MHgxODAwNzY4MCAweDEwMD47Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
