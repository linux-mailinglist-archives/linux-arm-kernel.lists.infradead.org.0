Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1532019323D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ote5WhdKN08/QEIWju56dFKs3lfqWn5OlFDqTyIWzOg=; b=LwIISUFkRx3J05
	3NM7R6vXZu9RBef9jzO4k7ORpoHj3qnI1L9UJNMOnJ6uK3oACJdi+U7ng0LxV61uD+eCh1czQMl9f
	P7V58iaDL1gTpDZlTsKhI5ugzo2uEBd6zRLG6aM5n/fsBhjfTW5AfHzR8F5qzXOeGajLM6TC1io/t
	hPUR/pJ6gOxSNd5v66UCfDxPjj9OD8Dv93TQY+n2jpSu0hFshhhPelccheyofiqFHVrHTPBKThTWc
	cmvkUx4jYjnnxDrTMLZkApan8uFbDbJ3hijaTr6rg5APCJOKBNsoq6U3pM/p9+8VwmM4vmrfRLfRQ
	lIb8zFfUgeOd2QxcVQzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHD7o-0008UW-Ok; Wed, 25 Mar 2020 20:59:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHD7f-0008St-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:59:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EFC7349FA;
 Wed, 25 Mar 2020 21:59:28 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id cc5d5bd2;
 Wed, 25 Mar 2020 21:59:14 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: dts: allwinner: a64: olinuxino: add user red LED
Date: Wed, 25 Mar 2020 21:59:24 +0100
Message-Id: <20200325205924.30736-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_135935_884212_5E3069B2 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgaXMgYSByZWQgTEVEIG1hcmtlZCBhcyBgR1BJT19MRUQxYCBvbiB0aGUgc2lsa3NjcmVl
biBhbmQgY29ubmVjdGVkCnRvIFBFMTcgYnkgZGVmYXVsdC4gU28gbGV0cyBhZGQgdGhpcyBtaXNz
aW5nIGJpdCBpbiB0aGUgY3VycmVudCBoYXJkd2FyZQpkZXNjcmlwdGlvbi4KClNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vbGludXhpbm8uZHRzIHwgOSArKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LW9saW51eGluby5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LW9saW51eGluby5kdHMKaW5kZXggNmRmYWZhMWM4Nzli
Li5iOWY5MGUxOWMwMzUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQtb2xpbnV4aW5vLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktYTY0LW9saW51eGluby5kdHMKQEAgLTMyLDYgKzMyLDE1IEBACiAJCX07CiAJ
fTsKIAorCWxlZHMgeworCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CisKKwkJdXNlciB7CisJ
CQlsYWJlbCA9ICJhNjQtb2xpbnV4aW5vOnJlZDp1c2VyIjsKKwkJCWdwaW9zID0gPCZwaW8gNCAx
NyBHUElPX0FDVElWRV9ISUdIPjsgLyogUEUxNyAqLworCQl9OworCX07CisKIAlyZWdfdXNiMV92
YnVzOiB1c2IxLXZidXMgewogCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CiAJCXJl
Z3VsYXRvci1uYW1lID0gInVzYjEtdmJ1cyI7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
