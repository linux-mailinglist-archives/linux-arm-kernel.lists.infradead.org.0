Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1BE1D961C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2eNezlyLpGqulw+yMsyb9VfYpLuYNQlXGAStxM+rqs=; b=h/SQPKZWXCv5A+
	R1Z7VmVYy4f9K6G8v53FszUaOhMHIa3wJkyTW5rT7Lcz7Ty2S9fgOVCIZ8hlPw2vXmh6klsLPrYxm
	chJukoX4nGFqHMSc5KUjrNArQmZGLAwyBksoSVlyAcWAV8UKnGPYBx+KHov51x0NQRhFP7kuIEcjs
	foio1svQiek5wqHuCmRPFygdynS6ocPILdMZp0MUoE5YvuubdXITIsvtG2ODQwVqp2cpNJKgeobsi
	5kGfNxNar5qBAwA2yiPJg9E8Kf/dthpMxfX4XZbPDxByzkcvxqvxXN1WAzfmi/8vWJOvhMHnIK54j
	KTerUXAwJJ2rPZPyqNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1DO-00075X-6x; Tue, 19 May 2020 12:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1CX-0006RD-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:18:31 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CECE42081A;
 Tue, 19 May 2020 12:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589890709;
 bh=ZygrgEXVEdoEUSBKD7K2AFuDeWVDEZNBHuanYQGu7ew=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NNkzSWZw+/p1tGq+VRT3/L5+3A0iN0dNDx5qDxuuD1F+IC2rvk08vWyCF8A16OlJD
 ffyBCQuQyJ5rRjkvIF9SuVBL3V9wRfcLJdLRUibi6lvyWsz1qeQXsFNQGg88BPgYHE
 dGdyVHE/55RYvq5VC+eHqpUiNHksgH/MrlKMjd1o=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: vdso: Fix CFI directives in sigreturn trampoline
Date: Tue, 19 May 2020 13:18:18 +0100
Message-Id: <20200519121818.14511-4-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519121818.14511-1-will@kernel.org>
References: <20200519121818.14511-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051829_803167_6274C821 
X-CRM114-Status: GOOD (  13.46  )
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
ZSB0byByZWFsaXNlIHRoYXQgb3VyIENGSSBkaXJlY3RpdmVzIGFyZSBjb250cmFkaWN0b3J5LAph
cyB3ZSBzcGVjaWZ5IGJvdGggLmNmaV9zaWduYWxfZnJhbWUgKmFuZCogLmNmaV9kZWZfY2ZhLCB3
aXRoIHRoZSBsYXR0ZXIKdW5jb25kaXRpb25hbGx5IGlkZW50aWZ5aW5nIHRoZSBpbnRlcnJ1cHRl
ZCBjb250ZXh0IGFzIG9wcG9zZWQgdG8gdGhlCnZhbHVlcyBpbiB0aGUgc2lnY29udGV4dC4KClJl
d29yayB0aGUgQ0ZJIGRpcmVjdGl2ZXMgc28gdGhhdCB3ZSBvbmx5IHVzZSAuY2ZpX3NpZ25hbF9m
cmFtZSwgYW5kCmluY2x1ZGUgdGhlICJteXN0ZXJpb3VzIE5PUCIgYXMgcGFydCBvZiB0aGUgLmNm
aV97c3RhcnQsZW5kfXByb2MgYmxvY2suCgpDYzogVGFtYXMgWnNvbGRvcyA8dGFtYXMuenNvbGRv
c0Bhcm0uY29tPgpSZXBvcnRlZC1ieTogRGF2ZSBNYXJ0aW4gPGRhdmUubWFydGluQGFybS5jb20+
ClJlcG9ydGVkLWJ5OiBEYW5pZWwgS2lzcyA8ZGFuaWVsLmtpc3NAYXJtLmNvbT4KU2lnbmVkLW9m
Zi1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybTY0L2tlcm5l
bC92ZHNvL3NpZ3JldHVybi5TIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC92
ZHNvL3NpZ3JldHVybi5TIGIvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUwppbmRl
eCA3ODUzZmE5NjkyZjYuLjI4YjMzZjdkMDYwNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rZXJu
ZWwvdmRzby9zaWdyZXR1cm4uUworKysgYi9hcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVy
bi5TCkBAIC0xNCw2ICsxNCw5IEBACiAKIAkudGV4dAogCisvKiBFbnN1cmUgdGhhdCB0aGUgbXlz
dGVyaW91cyBOT1AgY2FuIGJlIGFzc29jaWF0ZWQgd2l0aCBhIGZ1bmN0aW9uLiAqLworCS5jZmlf
c3RhcnRwcm9jCisJLmNmaV9zaWduYWxfZnJhbWUKIC8qCiAgKiBUaGlzIG15c3RlcmlvdXMgTk9Q
IGlzIHJlcXVpcmVkIGZvciBzb21lIHVud2luZGVycyB0aGF0IHN1YnRyYWN0IG9uZSBmcm9tCiAg
KiB0aGUgcmV0dXJuIGFkZHJlc3MgaW4gb3JkZXIgdG8gaWRlbnRpZnkgdGhlIGNhbGxpbmcgZnVu
Y3Rpb24uCkBAIC0yOCwxMSArMzEsNiBAQAogICogaXMgcGVyZmVjdGx5IGZpbmUuCiAgKi8KIFNZ
TV9TVEFSVChfX2tlcm5lbF9ydF9zaWdyZXR1cm4sIFNZTV9MX0dMT0JBTCwgU1lNX0FfQUxJR04p
Ci0JLmNmaV9zdGFydHByb2MKLQkuY2ZpX3NpZ25hbF9mcmFtZQotCS5jZmlfZGVmX2NmYQl4Mjks
IDAKLQkuY2ZpX29mZnNldAl4MjksIDAgKiA4Ci0JLmNmaV9vZmZzZXQJeDMwLCAxICogOAogCW1v
dgl4OCwgI19fTlJfcnRfc2lncmV0dXJuCiAJc3ZjCSMwCiAJLmNmaV9lbmRwcm9jCi0tIAoyLjI2
LjIuNzYxLmcwZTBiM2U1NGJlLWdvb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
