Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40B91DBC1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wm5aghybQF77mukVdMiaqser4QIYZOAE37apV83qMk=; b=GeBippdtzKpeYp
	0PhXO5yO9tLnH4IWUTUc0XAirhajpKttKGM8gpHsFEo4IVCbeoUhg7CxuL4Blwj8sBGfkt1ovFotO
	F6d7sBzH6A48hmJS9yl8MGbx+ZrDRCi3LTfV6+LaITiPeQ8WCMOO4+vhO0YODyRdoRt006JkXPNsn
	FxEHw5BtZVWZysCS07tZIE0Dhqk8CZgxD4Nk13ASji5eZrSzMM0zxnjNo6uf0dABIcCjdQfp3gCHr
	ZyQPedQt4790jnAFX5x6MMca4ED4SuKhfE6ByMHvCTw4Jt8SGrLt7SJ6PieoZvYgOLC4BMLHZPm9s
	+mXlJF5KwiaPZ3rigO6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSxr-00046N-7u; Wed, 20 May 2020 17:57:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSwX-0003E1-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:55:50 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 605C4207D8;
 Wed, 20 May 2020 17:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997348;
 bh=SruxTR6nMHhaDx6eZgigCukwq995Dww7NLTW7ti7KC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WIipLvnD2T0Og4Qns/pRRNf7HJCsIoIhmiNLZgTqER6X29KDbDwuX2Y1kJV4va9cC
 PPAMjstRWBkI5uauCPBzJkoYZessXDWugNWfbQIaW7eNHYb7+SfTHhs9yAvPiPDabJ
 +qems5oOuxpWRNYoKgyB/LXEa8+pgflHg6/F/e/A=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] arm64: vdso: Fix CFI directives in sigreturn trampoline
Date: Wed, 20 May 2020 18:55:39 +0100
Message-Id: <20200520175539.28464-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520175539.28464-1-will@kernel.org>
References: <20200520175539.28464-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105549_182440_101F500A 
X-CRM114-Status: GOOD (  15.63  )
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
ICB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KIGFyY2gvYXJtNjQva2VybmVsL3Zk
c28zMi9zaWdyZXR1cm4uUyB8ICAzICsrCiAyIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9z
aWdyZXR1cm4uUyBiL2FyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLlMKaW5kZXggMGM5
MjExMzAwMDJhLi42MjBhM2VmODM3YjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Zk
c28vc2lncmV0dXJuLlMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdyZXR1cm4uUwpA
QCAtMSw3ICsxLDExIEBACiAvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
ICovCiAvKgogICogU2lncmV0dXJuIHRyYW1wb2xpbmUgZm9yIHJldHVybmluZyBmcm9tIGEgc2ln
bmFsIHdoZW4gdGhlIFNBX1JFU1RPUkVSCi0gKiBmbGFnIGlzIG5vdCBzZXQuCisgKiBmbGFnIGlz
IG5vdCBzZXQuIEl0IHNlcnZlcyBwcmltYXJpbHkgYXMgYSBoYWxsIG9mIHNoYW1lIGZvciBjcmFw
cHkKKyAqIHVud2luZGVycyBhbmQgZmVhdHVyZXMgYW4gZXhjaXRpbmcgYnV0IG15c3RlcmlvdXMg
Tk9QIGluc3RydWN0aW9uLgorICoKKyAqIEl0J3MgYWxzbyBmcmFnaWxlIGFzIGhlbGwsIHNvIHBs
ZWFzZSB0aGluayB0d2ljZSBiZWZvcmUgY2hhbmdpbmcgYW55dGhpbmcKKyAqIGluIGhlcmUuCiAg
KgogICogQ29weXJpZ2h0IChDKSAyMDEyIEFSTSBMaW1pdGVkCiAgKgpAQCAtMTQsNyArMTgsMzgg
QEAKIAogCS50ZXh0CiAKLQlub3AKKy8qIEVuc3VyZSB0aGF0IHRoZSBteXN0ZXJpb3VzIE5PUCBj
YW4gYmUgYXNzb2NpYXRlZCB3aXRoIGEgZnVuY3Rpb24uICovCisJLmNmaV9zdGFydHByb2MKKwor
LyoKKyAqIC5jZmlfc2lnbmFsX2ZyYW1lIGNhdXNlcyB0aGUgY29ycmVzcG9uZGluZyBGcmFtZSBE
ZXNjcmlwdGlvbiBFbnRyeSBpbiB0aGUKKyAqIC5laF9mcmFtZSBzZWN0aW9uIHRvIGJlIGFubm90
YXRlZCBhcyBhIHNpZ25hbCBmcmFtZS4gVGhpcyBhbGxvd3MgRFdBUkYKKyAqIHVud2luZGVycyAo
ZS5nLiBsaWJzdGRjKyspIHRvIGltcGxlbWVudCBfVW53aW5kX0dldElQSW5mbygpLCB3aGljaCBw
ZXJtaXRzCisgKiB1bndpbmRpbmcgb3V0IG9mIHRoZSBzaWduYWwgdHJhbXBvbGluZSB3aXRob3V0
IHRoZSBuZWVkIGZvciB0aGUgbXlzdGVyaW91cworICogTk9QLgorICovCisJLmNmaV9zaWduYWxf
ZnJhbWUKKworLyoKKyAqIFRlbGwgdGhlIHVud2luZGVyIHdoZXJlIHRvIGxvY2F0ZSB0aGUgZnJh
bWUgcmVjb3JkIGxpbmtpbmcgYmFjayB0byB0aGUKKyAqIGludGVycnVwdGVkIGNvbnRleHQuIFdl
IGRvbid0IHByb3ZpZGUgdW53aW5kIGluZm8gZm9yIHJlZ2lzdGVycyBvdGhlcgorICogdGhhbiB0
aGUgZnJhbWUgcG9pbnRlciBhbmQgdGhlIGxpbmsgcmVnaXN0ZXIgaGVyZTsgaW4gcHJhY3RpY2Us
IHRoaXMKKyAqIGlzIHN1ZmZpY2llbnQgZm9yIHVud2luZGluZyBpbiBDL0MrKyBiYXNlZCBydW50
aW1lcyBhbmQgdGhlIHZhbHVlcyBpbgorICogdGhlIHNpZ2NvbnRleHQgbWF5IGhhdmUgYmVlbiBt
b2RpZmllZCBieSB0aGlzIHBvaW50IGFueXdheS4gRGVidWdnZXJzCisgKiBhbHJlYWR5IGhhdmUg
YmFrZWQtaW4gc3RyYXRlZ2llcyBmb3IgYXR0ZW1wdGluZyB0byB1bndpbmQgb3V0IG9mIHNpZ25h
bHMuCisgKi8KKwkuY2ZpX2RlZl9jZmEgICAgeDI5LCAwCisJLmNmaV9vZmZzZXQgICAgIHgyOSwg
MCAqIDgKKwkuY2ZpX29mZnNldCAgICAgeDMwLCAxICogOAorCisvKgorICogVGhpcyBteXN0ZXJp
b3VzIE5PUCBpcyByZXF1aXJlZCBmb3Igc29tZSB1bndpbmRlcnMgKGUuZy4gbGliYysrKSB0aGF0
CisgKiB1bmNvbmRpdGlvbmFsbHkgc3VidHJhY3Qgb25lIGZyb20gdGhlIHJlc3VsdCBvZiBfVW53
aW5kX0dldElQKCkgaW4gb3JkZXIgdG8KKyAqIGlkZW50aWZ5IHRoZSBjYWxsaW5nIGZ1bmN0aW9u
LgorICogSGFjayBib3Jyb3dlZCBmcm9tIGFyY2gvcG93ZXJwYy9rZXJuZWwvdmRzbzY0L3NpZ3Ry
YW1wLlMuCisgKi8KKwlub3AJLy8gTXlzdGVyaW91cyBOT1AKKwogLyoKICAqIEdEQiByZWxpZXMg
b24gYmVpbmcgYWJsZSB0byBpZGVudGlmeSB0aGUgc2lncmV0dXJuIGluc3RydWN0aW9uIHNlcXVl
bmNlIHRvCiAgKiB1bndpbmQgZnJvbSBzaWduYWwgaGFuZGxlcnMuIFdlIGNhbm5vdCwgdGhlcmVm
b3JlLCB1c2UgU1lNX0ZVTkNfU1RBUlQoKQpAQCAtMjMsMTEgKzU4LDYgQEAKICAqIGlzIHBlcmZl
Y3RseSBmaW5lLgogICovCiBTWU1fQ09ERV9TVEFSVChfX2tlcm5lbF9ydF9zaWdyZXR1cm4pCi0J
LmNmaV9zdGFydHByb2MKLQkuY2ZpX3NpZ25hbF9mcmFtZQotCS5jZmlfZGVmX2NmYQl4MjksIDAK
LQkuY2ZpX29mZnNldAl4MjksIDAgKiA4Ci0JLmNmaV9vZmZzZXQJeDMwLCAxICogOAogCW1vdgl4
OCwgI19fTlJfcnRfc2lncmV0dXJuCiAJc3ZjCSMwCiAJLmNmaV9lbmRwcm9jCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2tlcm5lbC92ZHNvMzIvc2lncmV0dXJuLlMgYi9hcmNoL2FybTY0L2tlcm5l
bC92ZHNvMzIvc2lncmV0dXJuLlMKaW5kZXggYjM2ZDRlMjI2N2EzLi5iMDA5MTA2NGMzZDYgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Zkc28zMi9zaWdyZXR1cm4uUworKysgYi9hcmNo
L2FybTY0L2tlcm5lbC92ZHNvMzIvc2lncmV0dXJuLlMKQEAgLTMsNiArMyw5IEBACiAgKiBUaGlz
IGZpbGUgcHJvdmlkZXMgYm90aCBBMzIgYW5kIFQzMiB2ZXJzaW9ucywgaW4gYWNjb3JkYW5jZSB3
aXRoIHRoZQogICogYXJtIHNpZ3JldHVybiBjb2RlLgogICoKKyAqIFBsZWFzZSByZWFkIHRoZSBj
b21tZW50cyBpbiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5TIHRvCisgKiB1bmRl
cnN0YW5kIHNvbWUgb2YgdGhlIGNyYXppbmVzcyBpbiBoZXJlLgorICoKICAqIENvcHlyaWdodCAo
QykgMjAxOCBBUk0gTGltaXRlZAogICovCiAKLS0gCjIuMjYuMi43NjEuZzBlMGIzZTU0YmUtZ29v
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
