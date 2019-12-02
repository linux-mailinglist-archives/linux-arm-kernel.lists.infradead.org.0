Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D39C10EF45
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:25:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pu/+KJeVDjju300gucrKUIt7LJnmgwzhR/t2UeKcA8M=; b=qK8/AyFaT0365B
	TYYQz1bqGYmmlti/u91xSz8mD9TEBHaPbJoOCW8640nXRvnw0XSbc07w9hUhMhl/Wi08HqPUOknTz
	2A5u1krXOGnRas0BvgeuzpWCQPfP9P2MzW4a22IllUfZhNcsiY4dOuNWgJU92D7z2VOeDFStgC9Tf
	RLau05tWhuUiu0jeVcsQeyA8JtzO7hDSh8rARHeLiJlyFMg6/cO9ACAyZGfYs8CDrKDQo8Bj+iOkd
	OoV0SISK5dBC28Ijj9l7FnC8QkXYMwdy78Uiq95960HN2Lb0xo+Bxe0Sn2Pqsm1d7RkwW+4SLzijT
	rSI4NFykRCWgWl+wrbOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqNX-0006ly-Lj; Mon, 02 Dec 2019 18:24:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKy-0004HV-J0; Mon, 02 Dec 2019 18:22:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B5EFCAE53;
 Mon,  2 Dec 2019 18:22:17 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 10/14] ARM: dts: rtd1195: Add SB2 and SCPU Wrapper syscon nodes
Date: Mon,  2 Dec 2019 19:22:00 +0100
Message-Id: <20191202182205.14629-11-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202182205.14629-1-afaerber@suse.de>
References: <20191202182205.14629-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102220_803968_ABA31B8C 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 James Tai <james.tai@realtek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHN5c2NvbiBtZmQgbm9kZXMgZm9yIFNCMiBhbmQgU0NQVSBXcmFwcGVyIHRvIFJURDExOTUg
RFQuCgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+ClNpZ25lZC1vZmYtYnk6
IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybS9ib290L2R0
cy9ydGQxMTk1LmR0c2kgfCAxOCArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCmluZGV4IDA5YWNiOTkwODNjMS4u
MjE4OTcyMTBkOWQwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCkBAIC0xMTksNiArMTE5LDE1IEBA
CiAJCQkJcmFuZ2VzID0gPDB4MCAweDcwMDAgMHgxMDAwPjsKIAkJCX07CiAKKwkJCXNiMjogc3lz
Y29uQDFhMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKKwkJ
CQlyZWcgPSA8MHgxYTAwMCAweDEwMDA+OworCQkJCXJlZy1pby13aWR0aCA9IDw0PjsKKwkJCQkj
YWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJCQlyYW5nZXMg
PSA8MHgwIDB4MWEwMDAgMHgxMDAwPjsKKwkJCX07CisKIAkJCW1pc2M6IHN5c2NvbkAxYjAwMCB7
CiAJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24iLCAic2ltcGxlLW1mZCI7CiAJCQkJcmVnID0gPDB4
MWIwMDAgMHgxMDAwPjsKQEAgLTEyNyw2ICsxMzYsMTUgQEAKIAkJCQkjc2l6ZS1jZWxscyA9IDwx
PjsKIAkJCQlyYW5nZXMgPSA8MHgwIDB4MWIwMDAgMHgxMDAwPjsKIAkJCX07CisKKwkJCXNjcHVf
d3JhcHBlcjogc3lzY29uQDFkMDAwIHsKKwkJCQljb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1w
bGUtbWZkIjsKKwkJCQlyZWcgPSA8MHgxZDAwMCAweDEwMDA+OworCQkJCXJlZy1pby13aWR0aCA9
IDw0PjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1jZWxscyA9IDwxPjsK
KwkJCQlyYW5nZXMgPSA8MHgwIDB4MWQwMDAgMHgxMDAwPjsKKwkJCX07CiAJCX07CiAKIAkJZ2lj
OiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZjAxMTAwMCB7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
