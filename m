Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A72C1D9CAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmI1ftgOe6IScREmGEyEJXqwoDoS6MhSsy3EHffNHho=; b=gCBvryCWWBFjIG
	2jjQ/9TOClOdU7qwO5U0bE29uiom6a5m6vVOtQ+aHsuR3qjdtu65iypVpOffByJ0fwgoDDqqnpzM+
	ci449VT5CeRgN8CYTgW62Ey5uCtWu+qnz6qoBnmA2/fP8mdntOf090b1/NXaZ/Lb4Xk4IXIS9cx5F
	Pvb97CwmsnyJ3qUWBaCtd8QOOz75/1C72fYCRNzgebCIsniM5k9rIC0VlVz878O5vAloXzaumZrAO
	BZgOPLbWTYtaAq0RonQ/oChfr5vDS2L/RRgx0k7pcH71UqJEajUTU9IhIemJi8mdUUzh94T+h4SAf
	C/FL255FSzL6NyhmA4zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb581-0006b2-PZ; Tue, 19 May 2020 16:30:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb56Y-0005MT-Ro
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:28:36 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C58E72081A;
 Tue, 19 May 2020 16:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905714;
 bh=fJEt9ij0LT3rJQtuJ6EFdTzQeMpOtIpfiO13+kEHD9U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tdf5vTXPfncCGUP5Z0ovwx3qPbmgoY/GjZNOjyaZR3jbliXWxV6UmzQEftloRVqfx
 YCjxJDgNQI8opb4sxiNi5z5lY95UsbqPXyWxRlr9W154h3irm/A/Dc1jjDU+lh2JiF
 QP+lB2j0qeUAsa7Azkb80rVjuAfuN8qniv/xkhvk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: vdso: Fix CFI directives in sigreturn trampoline
Date: Tue, 19 May 2020 17:28:21 +0100
Message-Id: <20200519162821.16857-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519162821.16857-1-will@kernel.org>
References: <20200519162821.16857-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_092834_955014_85EA998B 
X-CRM114-Status: GOOD (  15.57  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGFuaWVsIHJlcG9ydHMgdGhhdCB0aGUgLmNmaV9zdGFydHByb2MgaXMgbWlzcGxhY2VkIGZvciB0
aGUgc2lncmV0dXJuCnRyYW1wb2xpbmUsIHdoaWNoIGNhdXNlcyBMTFZNJ3MgdW53aW5kZXIgdG8g
bWlzYmVoYXZlOgoKICB8IEkgcnVuIGludG8gdGhpcyB3aXRoIExMVk3igJlzIHVud2luZGVyLgog
IHwgVGhpcyBjb21iaW5hdGlvbiB3YXMgYWx3YXlzIGJyb2tlbi4KClRoaXMgcHJvbXB0ZWQgRGF2
ZSB0byBxdWVzdGlvbiBvdXIgdXNlIG9mIENGSSBkaXJlY3RpdmVzIG1vcmUgZ2VuZXJhbGx5LAph
bmQgSSBlbmRlZCB1cCBnb2luZyBkb3duIGEgcmFiYml0IGhvbGUgdHJ5aW5nIHRvIGZpZ3VyZSBv
dXQgaG93IHRoaXMKdmVyeSBwb29ybHkgZG9jdW1lbnRlZCBzdHVmZiBnZXRzIHVzZWQuCgpNb3Zl
IHRoZSBDRkkgZGlyZWN0aXZlcyBzbyB0aGF0IHRoZSAibXlzdGVyaW91cyBOT1AiIGlzIGluY2x1
ZGVkIGluCnRoZSAuY2ZpX3tzdGFydCxlbmR9cHJvYyBibG9jayBhbmQgYWRkIGEgYnVuY2ggb2Yg
Y29tbWVudHMgc28gdGhhdCBJCmNhbiBzYXZlIG15c2VsZiBhbm90aGVyIGhlYWRhY2hlIGluIGZ1
dHVyZS4KCkNjOiBUYW1hcyBac29sZG9zIDx0YW1hcy56c29sZG9zQGFybS5jb20+ClJlcG9ydGVk
LWJ5OiBEYXZlIE1hcnRpbiA8ZGF2ZS5tYXJ0aW5AYXJtLmNvbT4KUmVwb3J0ZWQtYnk6IERhbmll
bCBLaXNzIDxkYW5pZWwua2lzc0Bhcm0uY29tPgpTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8
d2lsbEBrZXJuZWwub3JnPgotLS0KIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMg
fCA0MCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2Vy
bmVsL3Zkc28vc2lncmV0dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5T
CmluZGV4IDBjOTIxMTMwMDAyYS4uY2I0N2RmYjNiZDVhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TCisrKyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2ln
cmV0dXJuLlMKQEAgLTEsNyArMSwxMSBAQAogLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seSAqLwogLyoKICAqIFNpZ3JldHVybiB0cmFtcG9saW5lIGZvciByZXR1cm5pbmcg
ZnJvbSBhIHNpZ25hbCB3aGVuIHRoZSBTQV9SRVNUT1JFUgotICogZmxhZyBpcyBub3Qgc2V0Lgor
ICogZmxhZyBpcyBub3Qgc2V0LiBJdCBzZXJ2ZXMgcHJpbWFyaWx5IGFzIGEgaGFsbCBvZiBzaGFt
ZSBmb3IgY3JhcHB5CisgKiB1bndpbmRlcnMgYW5kIGZlYXR1cmVzIGFuIGV4Y2l0aW5nIGJ1dCBt
eXN0ZXJpb3VzIE5PUCBpbnN0cnVjdGlvbi4KKyAqCisgKiBJdCdzIGFsc28gZnJhZ2lsZSBhcyBo
ZWxsLCBzbyBwbGVhc2UgdGhpbmsgdHdpY2UgYmVmb3JlIGNoYW5naW5nIGFueXRoaW5nCisgKiBp
biBoZXJlLgogICoKICAqIENvcHlyaWdodCAoQykgMjAxMiBBUk0gTGltaXRlZAogICoKQEAgLTE0
LDcgKzE4LDM0IEBACiAKIAkudGV4dAogCi0Jbm9wCisvKiBFbnN1cmUgdGhhdCB0aGUgbXlzdGVy
aW91cyBOT1AgY2FuIGJlIGFzc29jaWF0ZWQgd2l0aCBhIGZ1bmN0aW9uLiAqLworCS5jZmlfc3Rh
cnRwcm9jCisKKy8qCisgKiAuY2ZpX3NpZ25hbF9mcmFtZSBjYXVzZXMgdGhlIGNvcnJlc3BvbmRp
bmcgRnJhbWUgRGVzY3JpcHRpb24gRW50cnkgaW4gdGhlCisgKiAuZWhfZnJhbWUgc2VjdGlvbiB0
byBiZSBhbm5vdGF0ZWQgYXMgYSBzaWduYWwgZnJhbWUuIFRoaXMgYWxsb3dzIERXQVJGCisgKiB1
bndpbmRlcnMgKGUuZy4gbGlic3RkYysrKSB0byBpbXBsZW1lbnQgX1Vud2luZF9HZXRJUEluZm8o
KSwgd2hpY2ggcGVybWl0cworICogdW53aW5kaW5nIG91dCBvZiB0aGUgc2lnbmFsIHRyYW1wb2xp
bmUgd2l0aG91dCB0aGUgbmVlZCBmb3IgdGhlIG15c3RlcmlvdXMKKyAqIE5PUC4KKyAqLworCS5j
Zmlfc2lnbmFsX2ZyYW1lCisKKy8qCisgKiBUZWxsIHRoZSB1bndpbmRlciB3aGVyZSB0byBsb2Nh
dGUgdGhlIGZyYW1lIHJlY29yZCBsaW5raW5nIGJhY2sgdG8gdGhlCisgKiBpbnRlcnJ1cHRlZCBj
b250ZXh0LgorICovCisJLmNmaV9kZWZfY2ZhICAgIHgyOSwgMAorCS5jZmlfb2Zmc2V0ICAgICB4
MjksIDAgKiA4CisJLmNmaV9vZmZzZXQgICAgIHgyOSwgMSAqIDgKKworLyoKKyAqIFRoaXMgbXlz
dGVyaW91cyBOT1AgaXMgcmVxdWlyZWQgZm9yIHNvbWUgdW53aW5kZXJzIChlLmcuIGxpYmMrKykg
dGhhdAorICogdW5jb25kaXRpb25hbGx5IHN1YnRyYWN0IG9uZSBmcm9tIHRoZSByZXN1bHQgb2Yg
X1Vud2luZF9HZXRJUCgpIGluIG9yZGVyIHRvCisgKiBpZGVudGlmeSB0aGUgY2FsbGluZyBmdW5j
dGlvbi4KKyAqIEhhY2sgYm9ycm93ZWQgZnJvbSBhcmNoL3Bvd2VycGMva2VybmVsL3Zkc282NC9z
aWd0cmFtcC5TLgorICovCisJbm9wCS8vIE15c3RlcmlvdXMgTk9QCisKIC8qCiAgKiBHREIgcmVs
aWVzIG9uIGJlaW5nIGFibGUgdG8gaWRlbnRpZnkgdGhlIHNpZ3JldHVybiBpbnN0cnVjdGlvbiBz
ZXF1ZW5jZSB0bwogICogdW53aW5kIGZyb20gc2lnbmFsIGhhbmRsZXJzLiBXZSBjYW5ub3QsIHRo
ZXJlZm9yZSwgdXNlIFNZTV9GVU5DX1NUQVJUKCkKQEAgLTIzLDExICs1NCw2IEBACiAgKiBpcyBw
ZXJmZWN0bHkgZmluZS4KICAqLwogU1lNX0NPREVfU1RBUlQoX19rZXJuZWxfcnRfc2lncmV0dXJu
KQotCS5jZmlfc3RhcnRwcm9jCi0JLmNmaV9zaWduYWxfZnJhbWUKLQkuY2ZpX2RlZl9jZmEJeDI5
LCAwCi0JLmNmaV9vZmZzZXQJeDI5LCAwICogOAotCS5jZmlfb2Zmc2V0CXgzMCwgMSAqIDgKIAlt
b3YJeDgsICNfX05SX3J0X3NpZ3JldHVybgogCXN2YwkjMAogCS5jZmlfZW5kcHJvYwotLSAKMi4y
Ni4yLjc2MS5nMGUwYjNlNTRiZS1nb29nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
