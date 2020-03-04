Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19337179088
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0QK41Jb7kuY0zB3NSh3OwORJCYq+bwvvw2FhbPhuJs=; b=Pa5CGnXSXbkc+o
	kbhB7HJZQJVXkOOCLa4vSM+c9EYAOtbx7jhw/Z3jfZuIl2qxWxtGofdzleP0JZHyzkc4zTiLJB6ua
	XQd872rcdL3hZWtqMVtICoaY1kZ12dDHGKCT82LxAVaDv/yUaqwz6qIRFjJetW5f140Vle1gfBRyI
	IRTD7WqIJQ6vtxtzgXB/IaD1UE5YDg09w2okfpu6qD4nEq1TnjDSxWjDgTShACHWsyFamIeyN4hWb
	U1N9JNzwhK2PbWW65gd56qvkFLSMdx9CAjzb00O5L7o7LXScQjg4N82ieKdwseaDPAYLZxfyWsqTg
	7NSbDsHfGkxRSoRlYonw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9TJS-0005ML-84; Wed, 04 Mar 2020 12:39:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9TJL-0005Ly-0F
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:39:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65A5831B;
 Wed,  4 Mar 2020 04:39:38 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6C453F6C4;
 Wed,  4 Mar 2020 04:39:37 -0800 (PST)
Date: Wed, 4 Mar 2020 12:39:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: relax jump label ASM constraints
Message-ID: <20200304123932.GA3575@lakrids.cambridge.arm.com>
References: <20200304093419.190879-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093419.190879-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_043939_086550_9A6EB76C 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMTE6MzQ6MTlBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IFRoZSBzdGF0aWMga2V5IGFkZHJlc3MgaXMgc3RvcmVkIGlu
IHRoZSBqdW1wIGxhYmVsIHRhYmxlLiBJdCBuZWVkcyB0bwo+IGJlIGEgcnVuLXRpbWUgY29uc3Rh
bnQuIEhvd2V2ZXIsIGl0IGRvZXMgbm90IG5lZWQgdG8gYmUgYSBjb25zdGFudAo+IHN1aXRhYmxl
IGZvciBleHBhbnNpb24gYXMgYW4gaW1tZWRpYXRlIHZhbHVlLCBnaXZlbiB0aGF0IGl0IGlzCj4g
ZXhwYW5kZWQgaW4gYSBmdWxsIDY0LWJpdHMgKC5xdWFkKSBzdGF0ZW1lbnQuCgpJJ20gbm90IHN1
cmUgdGhhdCdzIHF1aXRlIHRydWUsIHNpbmNlIGl0J3MgdXNlZCBpbiBhbiBleHByZXNzaW9uCmV2
YWx1YXRlZCBieSB0aGUgYXNzZW1ibGVyLiBJSVJDIHRoZSAiJWMwIC0gLiIgZXhwcmVzc2lvbiBj
YW5ub3QgYmUKcmVwcmVzZW50ZWQgYnkgYW4gQUFyY2g2NCBFTEYgcmVsb2NhdGlvbi4KCkxvb2tp
bmcgYXQgdGhlIGdjYyBkb2NzOgoKVW5kZXIgIlNpbXBsZSBDb25zdGFpbnRzIiwgJ2knIGlzIGRl
ZmluZWQ6Cgp8IEFuIGltbWVkaWF0ZSBpbnRlZ2VyIG9wZXJhbmQgKG9uZSB3aXRoIGNvbnN0YW50
IHZhbHVlKSBpcyBhbGxvd2VkLgp8IFRoaXMgaW5jbHVkZXMgc3ltYm9saWMgY29uc3RhbnRzIHdo
b3NlIHZhbHVlcyB3aWxsIGJlIGtub3duIG9ubHkgYXQKfCBhc3NlbWJseSB0aW1lIG9yIGxhdGVy
LiAKCk5vdGUgdGhhdCAnaScgYWxsb3dzIGFueSBjb25zdGFudCBpbnRlZ2VyIHZhbHVlLCB1bmxp
a2UgdGhlCkFBcmNoNjQtc3BlY2lmaWMgJ0knIGNvbnN0cmFpbnQgdGhhdCBvbmx5IGFsbG93cyBp
bW1lZGlhdGVzIHN1aXRhYmxlIGZvcgpBREQgaW5zdHJ1Y3Rpb25zLgoKVW5kZXIgIkNvbnN0cmFp
bnRzIGZvciBQYXJ0aWN1bGFyIE1hY2hpbmVzIiwgIkFBcmNoNjQgZmFtaWx5IiwgJ1MnIGlzCmRl
ZmluZWQ6Cgp8IEFuIGFic29sdXRlIHN5bWJvbGljIGFkZHJlc3Mgb3IgYSBsYWJlbCByZWZlcmVu
Y2UKCi4uLiBhbmQgSUlVQyBlaXRoZXIgc2hvdWxkIHdvcmsgaGVyZS4KCkhhdmUgSSBtaXNzZWQg
c29tZXRoaW5nIHRoYXQgJ1MnIGFsbG93cyB0aGF0ICdpJyBkb2VzIG5vdCwgb3IgaXMgdGhlcmUg
YQpmdW5jdGlvbmFsIHByb2JsZW0gdG9kYXk/CgpUaGFua3MsCk1hcmsuCgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFJlbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9qdW1wX2xhYmVsLmggfCA0ICsrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9qdW1wX2xhYmVsLmggYi9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2p1bXBfbGFiZWwuaAo+IGluZGV4IGNlYTQ0MWI2YWE1ZC4uZGNjMGEz
MmYwNzNiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vanVtcF9sYWJlbC5o
Cj4gKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9qdW1wX2xhYmVsLmgKPiBAQCAtMjUsNyAr
MjUsNyBAQCBzdGF0aWMgX19hbHdheXNfaW5saW5lIGJvb2wgYXJjaF9zdGF0aWNfYnJhbmNoKHN0
cnVjdCBzdGF0aWNfa2V5ICprZXksCj4gIAkJICIJLmxvbmcJCTFiIC0gLiwgJWxbbF95ZXNdIC0g
Lglcblx0Igo+ICAJCSAiCS5xdWFkCQklYzAgLSAuCQkJXG5cdCIKPiAgCQkgIgkucG9wc2VjdGlv
bgkJCQlcblx0Igo+IC0JCSA6ICA6ICAiaSIoJigoY2hhciAqKWtleSlbYnJhbmNoXSkgOiAgOiBs
X3llcyk7Cj4gKwkJIDogIDogICJTIigmKChjaGFyICopa2V5KVticmFuY2hdKSA6ICA6IGxfeWVz
KTsKPiAgCj4gIAlyZXR1cm4gZmFsc2U7Cj4gIGxfeWVzOgo+IEBAIC00Miw3ICs0Miw3IEBAIHN0
YXRpYyBfX2Fsd2F5c19pbmxpbmUgYm9vbCBhcmNoX3N0YXRpY19icmFuY2hfanVtcChzdHJ1Y3Qg
c3RhdGljX2tleSAqa2V5LAo+ICAJCSAiCS5sb25nCQkxYiAtIC4sICVsW2xfeWVzXSAtIC4JXG5c
dCIKPiAgCQkgIgkucXVhZAkJJWMwIC0gLgkJCVxuXHQiCj4gIAkJICIJLnBvcHNlY3Rpb24JCQkJ
XG5cdCIKPiAtCQkgOiAgOiAgImkiKCYoKGNoYXIgKilrZXkpW2JyYW5jaF0pIDogIDogbF95ZXMp
Owo+ICsJCSA6ICA6ICAiUyIoJigoY2hhciAqKWtleSlbYnJhbmNoXSkgOiAgOiBsX3llcyk7Cj4g
IAo+ICAJcmV0dXJuIGZhbHNlOwo+ICBsX3llczoKPiAtLSAKPiAyLjI1LjEKPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
