Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793E91AECF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 15:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWqmhdjbcgxQBj3zJM4aYMNf0Fs7IC1uKMJXB9/4FkM=; b=pJwW7aagHF/uYW
	5m3OqLevMbyvoednAQKxcGT9juvkaqDJ8oTJjnb6HbapOMTqe16Jz0hxAbiwkAZvZq1khos/DvIXL
	qVrKCjRcyLcgKxje9M4JYPbx5fHIjKUwBpTklBEnIcSR30yIhWjJiS4dtMWCtXAG07+e8ZSvK8jIt
	9Pj3u0ajY9vUGQsw/KCNefjTwHyMeRk4/oI1tTeyThWM3Wb7xCRxaIb0oyfD5wHBOelfn/od/4U0N
	R3TZ67chd5XcAh5/Z6v2YC9pQvdQpSHsCkAMDkrU94zEMKH3NqKBYnjID4RRNMhqd9WjE9D267GLF
	fnmoo6Z/XiX4pGOyfFBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPnpr-0004QC-3x; Sat, 18 Apr 2020 13:48:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPnpi-0004OK-PZ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 13:48:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2607C22251;
 Sat, 18 Apr 2020 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587217713;
 bh=e50X4MmtkJexI4QRd79cP3skCvlBuDS3y6zV+tBhyIc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P0JxDMtShXU4WvQsEJdvws8FtQqr4LySdJENHGgnXyTKGX9ZxCVeiiOj2mS5hKsXS
 yQjuivrWnrweXEV8CKACQTZAJ5MBwSKw7rbSXcQ/1hCzHtCxkbGNMHQOa52XgNPRFm
 SP4GGqgOEnhdf3C3wtW6zTG4SbrD/Fif/cfKXuQY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 15/73] pwm: imx27: Fix clock handling in
 pwm_imx27_apply()
Date: Sat, 18 Apr 2020 09:47:17 -0400
Message-Id: <20200418134815.6519-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418134815.6519-1-sashal@kernel.org>
References: <20200418134815.6519-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_064834_846818_66F5CF55 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-pwm@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClsgVXBzdHJlYW0gY29tbWl0IDE1ZDRkYmQ2MDE1OTE4NTg2MTExODRmOWRkZWI1YmYyMTU2OTE1
OWMgXQoKcHdtX2lteDI3X2FwcGx5KCkgZW5hYmxlcyB0aGUgY2xvY2tzIGlmIHRoZSBwcmV2aW91
cyBQV00gc3RhdGUgd2FzCmRpc2FibGVkLiBHaXZlbiB0aGF0IHRoZSBjbG9ja3MgYXJlIHN1cHBv
c2VkIHRvIGJlIGxlZnQgb24gaWZmIHRoZSBQV00KaXMgcnVubmluZywgdGhlIGRlY2lzaW9uIHRv
IGRpc2FibGUgdGhlIGNsb2NrcyBhdCB0aGUgZW5kIG9mIHRoZQpmdW5jdGlvbiBtdXN0IG5vdCBk
ZXBlbmQgb24gdGhlIHByZXZpb3VzIHN0YXRlLgoKV2l0aG91dCB0aGlzIGZpeCB0aGUgZW5hYmxl
IGNvdW50IG9mIHRoZSB0d28gYWZmZWN0ZWQgY2xvY2tzIGluY3JlYXNlcwpieSBvbmUgd2hlbmV2
ZXIgLT5hcHBseSgpIGNoYW5nZXMgZnJvbSBvbmUgZGlzYWJsZWQgc3RhdGUgdG8gYW5vdGhlci4K
CkZpeGVzOiBiZDg4ZDMxOWFiZTkgKCJwd206IGlteDI3OiBVbmNvbmRpdGlvbmFsbHkgd3JpdGUg
c3RhdGUgdG8gaGFyZHdhcmUiKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBUaGllcnJ5IFJlZGlu
ZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8
c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9wd20vcHdtLWlteDI3LmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3B3bS9wd20taW14MjcuYyBiL2RyaXZlcnMvcHdtL3B3bS1pbXgyNy5jCmluZGV4
IDM1YTdhYzQyMjY5YzIuLjdlNWVkMDE1Mjk3NzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3
bS1pbXgyNy5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1pbXgyNy5jCkBAIC0yODksNyArMjg5LDcg
QEAgc3RhdGljIGludCBwd21faW14MjdfYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1
Y3QgcHdtX2RldmljZSAqcHdtLAogCiAJd3JpdGVsKGNyLCBpbXgtPm1taW9fYmFzZSArIE1YM19Q
V01DUik7CiAKLQlpZiAoIXN0YXRlLT5lbmFibGVkICYmIGNzdGF0ZS5lbmFibGVkKQorCWlmICgh
c3RhdGUtPmVuYWJsZWQpCiAJCXB3bV9pbXgyN19jbGtfZGlzYWJsZV91bnByZXBhcmUoY2hpcCk7
CiAKIAlyZXR1cm4gMDsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
