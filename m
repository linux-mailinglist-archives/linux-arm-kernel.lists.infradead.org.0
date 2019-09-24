Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FB4BCB2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iie+ycq9f1QjB3qhh7R0ta7IYNn6Ge5cTaeS8fRtVSE=; b=lyhhPpQHLLh8FM
	PWa15/D8F7iw6CSwYVXd/yvetVg2Dvm3YqjfMtq+dko9gaucxgHmkbpj9R+6M95puVvYZQHr79LIr
	FlTBvs0Pa2XlFP1UtFnZ+tCaOF/ezyNfWgFCPteysVTWjvhGT8PZdXcMV/taFWRsDu4EP96Lv9aAy
	u9hNnjZgbwzcQqrPIx7nJcBLlhgQYntfO7RjnbBxc7DfqVN0zziofmCzERZ5szbHZkcQlAQLABw/K
	ONM7/TtHJ9KXd+bY+mmrzoTbzx7oSWDhNJ8O7F8ImG3jUaPpqo6kmPLN/ror/ZSJVCT85IW0pvh8T
	oLMGyNQLEWAlWH8mNyXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmey-0002mY-VP; Tue, 24 Sep 2019 15:23:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmeC-0002Q1-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:22:39 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4F6A85461CE3B3AB5C3B;
 Tue, 24 Sep 2019 23:22:34 +0800 (CST)
Received: from linux-Bxxcye.huawei.com (10.175.104.222) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Sep 2019 23:22:24 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>, <qemu-arm@nongnu.org>
Subject: [RFC PATCH 2/2] kvm/arm64: expose hypercall_forwarding capability
Date: Tue, 24 Sep 2019 23:20:54 +0800
Message-ID: <1569338454-26202-3-git-send-email-guoheyi@huawei.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1569338454-26202-1-git-send-email-guoheyi@huawei.com>
References: <1569338454-26202-1-git-send-email-guoheyi@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.222]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082237_032261_91FC84A6 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Peter Maydell <peter.maydell@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Heyi Guo <guoheyi@huawei.com>, wanghaibin.wang@huawei.com,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG5ldyBLVk0gY2FwYWJpbGl0eSAiS1ZNX0NBUF9GT1JXQVJEX0hZUEVSQ0FMTCIgZm9yIHVz
ZXIgc3BhY2UgdG8KcHJvYmUgd2hldGhlciBLVk0gc3VwcG9ydHMgZm9yd2FyZGluZyBoeXBlcmNh
bGwuCgpUaGUgY2FwYWJpbGl0eSBzaG91bGQgYmUgZW5hYmxlZCBieSB1c2VyIHNwYWNlIGV4cGxp
Y2l0bHksIGZvciB3ZQpkb24ndCB3YW50IHVzZXIgc3BhY2UgYXBwbGljYXRpb24gdG8gZGVhbCB3
aXRoIHVuZXhwZWN0ZWQgaHlwZXJjYWxsCmV4aXRzLiBXZSBhbHNvIHVzZSBhbiBhZGRpdGlvbmFs
IGFyZ3VtZW50IHRvIHBhc3MgZXhjZXB0aW9uIGJpdCBtYXNrLAp0byByZXF1ZXN0IEtWTSB0byBm
b3J3YXJkIGFsbCBoeXBlcmNhbGxzIGV4Y2VwdCB0aGUgY2xhc3NlcyBzcGVjaWZpZWQKaW4gdGhl
IGJpdCBtYXNrLgoKQ3VycmVudGx5IG9ubHkgUFNDSSBjYW4gYmUgc2V0IGFzIGV4Y2VwdGlvbiwg
c28gdGhhdCB3ZSBjYW4gc3RpbGwga2VlcApjb25zaXN0ZW50IHdpdGggdGhlIG9sZCBQU0NJIHBy
b2Nlc3NpbmcgZmxvdy4KClNpZ25lZC1vZmYtYnk6IEhleWkgR3VvIDxndW9oZXlpQGh1YXdlaS5j
b20+CkNjOiBQZXRlciBNYXlkZWxsIDxwZXRlci5tYXlkZWxsQGxpbmFyby5vcmc+CkNjOiBEYXZl
IE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4KQ2M6IE1hcmMgWnluZ2llciA8bWFyYy56eW5n
aWVyQGFybS5jb20+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpDYzog
SmFtZXMgTW9yc2UgPGphbWVzLm1vcnNlQGFybS5jb20+CkNjOiBKdWxpZW4gVGhpZXJyeSA8anVs
aWVuLnRoaWVycnkua2RldkBnbWFpbC5jb20+CkNjOiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2ku
cG91bG9zZUBhcm0uY29tPgpDYzogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJt
LmNvbT4KQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+CkNjOiBQYW9sbyBCb256aW5p
IDxwYm9uemluaUByZWRoYXQuY29tPgpDYzogIlJhZGltIEtyxI1tw6HFmSIgPHJrcmNtYXJAcmVk
aGF0LmNvbT4KLS0tCiBhcmNoL2FybTY0L2t2bS9yZXNldC5jICAgfCAyNSArKysrKysrKysrKysr
KysrKysrKysrKysrCiBpbmNsdWRlL3VhcGkvbGludXgva3ZtLmggfCAgMyArKysKIDIgZmlsZXMg
Y2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL3Jl
c2V0LmMgYi9hcmNoL2FybTY0L2t2bS9yZXNldC5jCmluZGV4IGY0YThhZTkuLjIyMDFiNjIgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3ZtL3Jlc2V0LmMKKysrIGIvYXJjaC9hcm02NC9rdm0vcmVz
ZXQuYwpAQCAtOTUsNiArOTUsOSBAQCBpbnQga3ZtX2FyY2hfdm1faW9jdGxfY2hlY2tfZXh0ZW5z
aW9uKHN0cnVjdCBrdm0gKmt2bSwgbG9uZyBleHQpCiAJCXIgPSBoYXNfdmhlKCkgJiYgc3lzdGVt
X3N1cHBvcnRzX2FkZHJlc3NfYXV0aCgpICYmCiAJCQkJIHN5c3RlbV9zdXBwb3J0c19nZW5lcmlj
X2F1dGgoKTsKIAkJYnJlYWs7CisJY2FzZSBLVk1fQ0FQX0ZPUldBUkRfSFlQRVJDQUxMOgorCQly
ID0gMTsKKwkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJciA9IDA7CiAJfQpAQCAtMTAyLDYgKzEwNSwy
OCBAQCBpbnQga3ZtX2FyY2hfdm1faW9jdGxfY2hlY2tfZXh0ZW5zaW9uKHN0cnVjdCBrdm0gKmt2
bSwgbG9uZyBleHQpCiAJcmV0dXJuIHI7CiB9CiAKK2ludCBrdm1fdm1faW9jdGxfZW5hYmxlX2Nh
cChzdHJ1Y3Qga3ZtICprdm0sCisJCQkgICAgc3RydWN0IGt2bV9lbmFibGVfY2FwICpjYXApCit7
CisJaWYgKGNhcC0+ZmxhZ3MpCisJCXJldHVybiAtRUlOVkFMOworCisJc3dpdGNoIChjYXAtPmNh
cCkgeworCWNhc2UgS1ZNX0NBUF9GT1JXQVJEX0hZUEVSQ0FMTDogeworCQlfX3U2NCBleGNsdWRl
X2ZsYWdzID0gY2FwLT5hcmdzWzBdOworCQkvKiBPbmx5IHN1cHBvcnQgZXhjbHVkaW5nIFBTQ0kg
cmlnaHQgbm93ICovCisJCWlmIChleGNsdWRlX2ZsYWdzICYgfktWTV9DQVBfRk9SV0FSRF9IWVBF
UkNBTExfRVhDTF9QU0NJKQorCQkJcmV0dXJuIC1FSU5WQUw7CisJCWt2bS0+YXJjaC5oeXBlcmNh
bGxfZm9yd2FyZCA9IHRydWU7CisJCWlmIChleGNsdWRlX2ZsYWdzICYgS1ZNX0NBUF9GT1JXQVJE
X0hZUEVSQ0FMTF9FWENMX1BTQ0kpCisJCQlrdm0tPmFyY2guaHlwZXJjYWxsX2V4Y2xfcHNjaSA9
IHRydWU7CisJCXJldHVybiAwOworCX0KKwl9CisKKwlyZXR1cm4gLUVJTlZBTDsKK30KKwogdW5z
aWduZWQgaW50IGt2bV9zdmVfbWF4X3ZsOwogCiBpbnQga3ZtX2FybV9pbml0X3N2ZSh2b2lkKQpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2t2bS5oIGIvaW5jbHVkZS91YXBpL2xpbnV4
L2t2bS5oCmluZGV4IDVlM2YxMmQuLmUzZTU3ODcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9s
aW51eC9rdm0uaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgva3ZtLmgKQEAgLTcxMSw2ICs3MTEs
OCBAQCBzdHJ1Y3Qga3ZtX2VuYWJsZV9jYXAgewogCV9fdTggIHBhZFs2NF07CiB9OwogCisjZGVm
aW5lIEtWTV9DQVBfRk9SV0FSRF9IWVBFUkNBTExfRVhDTF9QU0NJCSgxIDw8IDApCisKIC8qIGZv
ciBLVk1fUFBDX0dFVF9QVklORk8gKi8KIAogI2RlZmluZSBLVk1fUFBDX1BWSU5GT19GTEFHU19F
Vl9JRExFICAgKDE8PDApCkBAIC05OTYsNiArOTk4LDcgQEAgc3RydWN0IGt2bV9wcGNfcmVzaXpl
X2hwdCB7CiAjZGVmaW5lIEtWTV9DQVBfQVJNX1BUUkFVVEhfQUREUkVTUyAxNzEKICNkZWZpbmUg
S1ZNX0NBUF9BUk1fUFRSQVVUSF9HRU5FUklDIDE3MgogI2RlZmluZSBLVk1fQ0FQX1BNVV9FVkVO
VF9GSUxURVIgMTczCisjZGVmaW5lIEtWTV9DQVBfRk9SV0FSRF9IWVBFUkNBTEwgMTc0CiAKICNp
ZmRlZiBLVk1fQ0FQX0lSUV9ST1VUSU5HCiAKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
