Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0037DB29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xz26a0V6Dbez1jY9Ryi53MuLnONlPeeva6mGFVaDF1U=; b=nV7TChQOZdUVJ0
	jRob3Ghgb3UcUxFOy8TgtWr0yP5LvmwJm56gCtabaPjzFNeMEp+FzQY0H2rJKekqj1jUzIzibnDAv
	vpcijLcMrWuZZugpDtjwPfqON5uzr9mpw7hIK8pv81ODj+IiTNYwSKMcLAWX2ab1IRYd1b+rxW2O/
	z5X03t87XfxPwQ3qN1CCU54eL4bUrKYOHhKReJtipTqCJLoLGSgb5Vs9+G5i8XSy3e8nYPe4zq+ge
	cxocPMkcmVTkViw6Qu4FpVMx8H9q8TmbIFHFLJYzeKhUz6zgQN4uIrwpa79DGa9nbh/hv8BI6PsJj
	ve0eXqCr1MleDXfsgqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htA0d-0006sa-95; Thu, 01 Aug 2019 12:16:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htA0R-0006sC-OJ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:16:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D9CD2064A;
 Thu,  1 Aug 2019 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564661787;
 bh=eWUXpesPjpfKZlq50R19WMAnjpRsyX8e4dc1+npLS18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1TJVGwCetQUZaW3O2BkiB+MpMEfN6Ax9jFMvAEb5a8ovdjfO7RcnBZLBjov2V6qbL
 U9dnx3qEHQ5JDb0lXe0SgZsdErruUNnSttEEH56wx6YhyiokkaVQ0VmFx3WQjmqOQO
 nkSzliCzi4ZOwcgbNcQjn5SC7Z1sjjng1mOCevk8=
Date: Thu, 1 Aug 2019 13:16:22 +0100
From: Will Deacon <will@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v3 1/4] arm64: kprobes: Recover pstate.D in single-step
 exception handler
Message-ID: <20190801121622.vs57a6e2syklyr3z@willie-the-truck>
References: <156404254387.2020.886452004489353899.stgit@devnote2>
 <156404255444.2020.3301023170351823334.stgit@devnote2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156404255444.2020.3301023170351823334.stgit@devnote2>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_051627_829094_B9746F3C 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDU6MTU6NTRQTSArMDkwMCwgTWFzYW1pIEhpcmFtYXRz
dSB3cm90ZToKPiBrcHJvYmVzIG1hbmlwdWxhdGVzIHRoZSBpbnRlcnJ1cHRlZCBQU1RBVEUgZm9y
IHNpbmdsZSBzdGVwLCBhbmQKPiBkb2Vzbid0IHJlc3RvcmUgaXQuIFRodXMsIGlmIHdlIHB1dCBh
IGtwcm9iZSB3aGVyZSB0aGUgcHN0YXRlLkQKPiAoZGVidWcpIG1hc2tlZCwgdGhlIG1hc2sgd2ls
bCBiZSBjbGVhcmVkIGFmdGVyIHRoZSBrcHJvYmUgaGl0cy4KPiAKPiBNb3Jlb3ZlciwgaW4gdGhl
IG1vc3QgY29tcGxpY2F0ZWQgY2FzZSwgdGhpcyBjYW4gbGVhZCBhIGtlcm5lbAo+IGNyYXNoIHdp
dGggYmVsb3cgbWVzc2FnZSB3aGVuIGEgbmVzdGVkIGtwcm9iZSBoaXRzLgo+IAo+IFsgIDE1Mi4x
MTg5MjFdIFVuZXhwZWN0ZWQga2VybmVsIHNpbmdsZS1zdGVwIGV4Y2VwdGlvbiBhdCBFTDEKPiAK
PiBXaGVuIHRoZSAxc3Qga3Byb2JlIGhpdHMsIGRvX2RlYnVnX2V4Y2VwdGlvbigpIHdpbGwgYmUg
Y2FsbGVkLgo+IEF0IHRoaXMgcG9pbnQsIGRlYnVnIGV4Y2VwdGlvbiAoPSBwc3RhdGUuRCkgbXVz
dCBiZSBtYXNrZWQgKD0xKS4KPiBCdXQgaWYgYW5vdGhlciBrcHJvYmVzIGhpdHMgYmVmb3JlIHNp
bmdsZS1zdGVwIG9mIHRoZSBmaXJzdCBrcHJvYmUKPiAoZS5nLiBpbnNpZGUgdXNlciBwcmVfaGFu
ZGxlciksIGl0IHVubWFzayB0aGUgZGVidWcgZXhjZXB0aW9uCj4gKHBzdGF0ZS5EID0gMCkgYW5k
IHJldHVybi4KPiBUaGVuLCB3aGVuIHRoZSAxc3Qga3Byb2JlIHNldHRpbmcgdXAgc2luZ2xlLXN0
ZXAsIGl0IHNhdmVzIGN1cnJlbnQKPiBEQUlGLCBtYXNrIERBSUYsIGVuYWJsZSBzaW5nbGUtc3Rl
cCwgYW5kIHJlc3RvcmUgREFJRi4KPiBIb3dldmVyLCBzaW5jZSAiRCIgZmxhZyBpbiBEQUlGIGlz
IGNsZWFyZWQgYnkgdGhlIDJuZCBrcHJvYmUsIHRoZQo+IHNpbmdsZS1zdGVwIGV4Y2VwdGlvbiBo
YXBwZW5zIHNvb24gYWZ0ZXIgcmVzdG9yaW5nIERBSUYuCj4gCj4gVGhpcyBoYXMgYmVlbiBpbnRy
b2R1Y2VkIGJ5IGNvbW1pdCA3NDE5MzMzZmExNWUgKCJhcm02NDoga3Byb2JlOgo+IEFsd2F5cyBj
bGVhciBwc3RhdGUuRCBpbiBicmVha3BvaW50IGV4Y2VwdGlvbiBoYW5kbGVyIikKPiAKPiBUbyBz
b2x2ZSB0aGlzIGlzc3VlLCB0aGlzIHN0b3JlcyBhbGwgREFJRiBiaXRzIGFuZCByZXN0b3JlIGl0
Cj4gYWZ0ZXIgc2luZ2xlIHN0ZXBwaW5nLgo+IAo+IFJlcG9ydGVkLWJ5OiBOYXJlc2ggS2FtYm9q
dSA8bmFyZXNoLmthbWJvanVAbGluYXJvLm9yZz4KPiBGaXhlczogY29tbWl0IDc0MTkzMzNmYTE1
ZSAoImFybTY0OiBrcHJvYmU6IEFsd2F5cyBjbGVhciBwc3RhdGUuRCBpbiBicmVha3BvaW50IGV4
Y2VwdGlvbiBoYW5kbGVyIikKPiBSZXZpZXdlZC1ieTogSmFtZXMgTW9yc2UgPGphbWVzLm1vcnNl
QGFybS5jb20+Cj4gVGVzdGVkLWJ5OiBKYW1lcyBNb3JzZSA8amFtZXMubW9yc2VAYXJtLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXNhbWkgSGlyYW1hdHN1IDxtaGlyYW1hdEBrZXJuZWwub3JnPgo+
IC0tLQo+ICAgQ2hhbmdlcyBpbiB2MzoKPiAgICAtIFVwZGF0ZSBwYXRjaCBkZXNjcmlwdGlvbgo+
ICAgIC0gbW92ZSBQU1JfREFJRl9NQVNLIGluIGRhaWZmbGFncy5oCj4gICBDaGFuZ2VzIGluIHYy
Ogo+ICAgIC0gU2F2ZSBhbmQgcmVzdG9yZSBhbGwgREFJRiBmbGFncy4KPiAgICAtIE9wZXJhdGUg
cHN0YXRlIGRpcmVjdGx5IGFuZCByZW1vdmUgc3Bzcl9zZXRfZGVidWdfZmxhZygpLgo+IC0tLQo+
ICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2RhaWZmbGFncy5oIHwgICAgMiArKwo+ICBhcmNoL2Fy
bTY0L2tlcm5lbC9wcm9iZXMva3Byb2Jlcy5jIHwgICAzOSArKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDM0IGRl
bGV0aW9ucygtKQoKSSdtIHNlZWluZyBhbiBhbGxtb2Rjb25maWcgYnVpbGQgZmFpbHVyZSB3aXRo
IHRoaXM6CgphcmNoL2FybTY0L2tlcm5lbC9wcm9iZXMva3Byb2Jlcy5jOiBJbiBmdW5jdGlvbiDi
gJhrcHJvYmVzX3NhdmVfbG9jYWxfaXJxZmxhZ+KAmToKYXJjaC9hcm02NC9rZXJuZWwvcHJvYmVz
L2twcm9iZXMuYzoxODE6Mzg6IGVycm9yOiDigJhEQUlGX01BU0vigJkgdW5kZWNsYXJlZCAoZmly
c3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYQklUX01BU0vigJk/CiAg
a2NiLT5zYXZlZF9pcnFmbGFnID0gcmVncy0+cHN0YXRlICYgREFJRl9NQVNLOwogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEJJVF9NQVNLCmFyY2gvYXJtNjQva2VybmVsL3Byb2Jlcy9rcHJv
YmVzLmM6MTgxOjM4OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRl
ZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgphcmNoL2FybTY0L2tl
cm5lbC9wcm9iZXMva3Byb2Jlcy5jOiBJbiBmdW5jdGlvbiDigJhrcHJvYmVzX3Jlc3RvcmVfbG9j
YWxfaXJxZmxhZ+KAmToKYXJjaC9hcm02NC9rZXJuZWwvcHJvYmVzL2twcm9iZXMuYzoxOTA6MTk6
IGVycm9yOiDigJhEQUlGX01BU0vigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVu
Y3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYQklUX01BU0vigJk/CiAgcmVncy0+cHN0YXRlICY9IH5E
QUlGX01BU0s7CiAgICAgICAgICAgICAgICAgICBefn5+fn5+fn4KICAgICAgICAgICAgICAgICAg
IEJJVF9NQVNLCm1ha2VbMl06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzQ6IGFyY2gv
YXJtNjQva2VybmVsL3Byb2Jlcy9rcHJvYmVzLm9dIEVycm9yIDEKCldpbGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
