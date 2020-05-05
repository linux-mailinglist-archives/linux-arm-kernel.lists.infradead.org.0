Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6731C5618
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUftOjPrtH9Ae0I7h7FKDR7AhopsypRnVFxmXUAjpJE=; b=JaL79RsEwSeljU
	9/lGJ30p3M67xgzKL9cTpWQzrLLIt73MwdkdWDIS9sRscOMaJyMgNDK11zP7/+sZna9oiuch7Q0s7
	qOcmNzU3F/qv0k4ecgsmBhf6MoZJtoAxr9Ima0smIjJ7XFzqubagNrjuhSNdhHwaEX7qLzSgJ3ckE
	E2WcGAefRsmNokyGGKHv9VUocnlx9pKxU998+L/1pW7se7bRmTw9QcOyytSFLS9kytyXX1FLB1AFp
	AK0Y0dvMVVu0qsMXen1EG9+vXkcXitSH0AQcZ+ZKWiTXYxjcWnGtk7mCn6kQN1sh+urWyBTesXyt1
	X0YdcRF8ZzWoMy5Ixoig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxAn-0003IX-QC; Tue, 05 May 2020 12:59:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxAh-0003Er-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:59:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2168330E;
 Tue,  5 May 2020 05:59:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 70AC63F68F;
 Tue,  5 May 2020 05:59:38 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: hugetlb: avoid potential NULL dereference
Date: Tue,  5 May 2020 13:59:30 +0100
Message-Id: <20200505125930.26901-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_055939_936080_62FDA01C 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHN0YXRpYyBhbmFseXplciBpbiBHQ0MgMTAgc3BvdHRlZCB0aGF0IGluIGh1Z2VfcHRlX2Fs
bG9jKCkgd2UgbWF5CnBhc3MgYSBOVUxMIHBtZHAgaW50byBwdGVfYWxsb2NfbWFwKCkgd2hlbiBw
bWRfYWxsb2MoKSByZXR1cm5zIE5VTEw6Cgp8ICAgQ0MgICAgICBhcmNoL2FybTY0L21tL3BhZ2Vh
dHRyLm8KfCAgIENDICAgICAgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5vCnwgICAgICAgICAg
ICAgICAgICBmcm9tIGFyY2gvYXJtNjQvbW0vaHVnZXRsYnBhZ2UuYzoxMDoKfCBhcmNoL2FybTY0
L21tL2h1Z2V0bGJwYWdlLmM6IEluIGZ1bmN0aW9uIOKAmGh1Z2VfcHRlX2FsbG9j4oCZOgp8IC4v
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLXR5cGVzLmg6Mjg6MjQ6IHdhcm5pbmc6IGRl
cmVmZXJlbmNlIG9mIE5VTEwg4oCYcG1kcOKAmSBbQ1dFLTY5MF0gWy1XYW5hbHl6ZXItbnVsbC1k
ZXJlZmVyZW5jZV0KfCAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oOjQzNjoyNjog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHBtZF92YWzigJkKfCBhcmNoL2FybTY0L21t
L2h1Z2V0bGJwYWdlLmM6MjQyOjEwOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYcHRl
X2FsbG9jX21hcOKAmQp8ICAgICB8YXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jOjIzMjoxMDoK
fCAgICAgfC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wZ3RhYmxlLXR5cGVzLmg6Mjg6MjQ6Cnwg
Li9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaDo0MzY6MjY6IG5vdGU6IGluIGV4cGFu
c2lvbiBvZiBtYWNybyDigJhwbWRfdmFs4oCZCnwgYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5j
OjI0MjoxMDogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmHB0ZV9hbGxvY19tYXDigJkK
ClRoaXMgY2FuIG9ubHkgb2NjdXIgd2hlbiB0aGUga2VybmVsIGNhbm5vdCBhbGxvY2F0ZSBhIHBh
Z2UsIGFuZCBzbyBpcwp1bmxpa2VseSB0byBoYXBwZW4gaW4gcHJhY3RpY2UgYmVmb3JlIG90aGVy
IHN5c3RlbXMgc3RhcnQgZmFpbGluZy4KCldlIGNhbiBhdm9pZCB0aGlzIGJ5IGJhaWxpbmcgb3V0
IGlmIHBtZF9hbGxvYygpIGZhaWxzLCBhcyB3ZSBkbyBlYXJsaWVyCmluIHRoZSBmdW5jdGlvbiBp
ZiBwdWRfYWxsb2MoKSBmYWlscy4KCkZpeGVzOiA2NmIzOTIzYTFhMGY3N2E1ICgiYXJtNjQ6IGh1
Z2V0bGI6IGFkZCBzdXBwb3J0IGZvciBQVEUgY29udGlndW91cyBiaXQpIgpTaWduZWQtb2ZmLWJ5
OiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpSZXBvcnRlZC1ieTogS3lyaWxs
IFRrYWNob3YgPGt5cnlsby50a2FjaG92QGFybS5jb20+CkNjOiBDYXRhbGluIE1hcmluYXMgPGNh
dGFsaW4ubWFyaW5hc0Bhcm0uY29tPgpDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4K
LS0tCiBhcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5j
IGIvYXJjaC9hcm02NC9tbS9odWdldGxicGFnZS5jCmluZGV4IGJiZWI2YTVhNmJhNi4uMGJlMzM1
NWUzNDk5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L21tL2h1Z2V0bGJwYWdlLmMKKysrIGIvYXJj
aC9hcm02NC9tbS9odWdldGxicGFnZS5jCkBAIC0yMzAsNiArMjMwLDggQEAgcHRlX3QgKmh1Z2Vf
cHRlX2FsbG9jKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLAogCQlwdGVwID0gKHB0ZV90ICopcHVkcDsK
IAl9IGVsc2UgaWYgKHN6ID09IChDT05UX1BURV9TSVpFKSkgewogCQlwbWRwID0gcG1kX2FsbG9j
KG1tLCBwdWRwLCBhZGRyKTsKKwkJaWYgKCFwbWRwKQorCQkJcmV0dXJuIE5VTEw7CiAKIAkJV0FS
Tl9PTihhZGRyICYgKHN6IC0gMSkpOwogCQkvKgotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
