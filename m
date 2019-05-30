Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA2A2EA46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 03:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yFQ8vbST2gwAjAd6rE6gg7wjKdGWSGqhRTx30Y0WXdE=; b=n3w0gXEhLWMZjbFzf8dJi5aVq
	pvA3mDBJ8cFuvs+1FA5P18uwWwPe7rdVMHOPgelKcnYEGGprhgZfT2AfpRkKtsXXnmyWWF0iWQtWB
	5b1SvKcNvQKI67SzeENyG+BMUoaSZ7QNRBiuYH1cbO7i+bBlsuvRIncGaMi3T1ocXNINtxvDZxYmO
	3olLzXznKCAriD11BbxqgI7pK+ObeSRRWtNaGdIJOolcrY8FMBzuX6IQfnnCFGceiiID3azVChQi1
	XxiuloW/PYMXbOskYcX7+lqka/Y08rkMgA76U0iTvGA5XhvaLrh/HDMsEqxi9qNoFYgWZX+lyzeL9
	Gv0846Exw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWA1x-0007to-3M; Thu, 30 May 2019 01:38:57 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWA1p-0007tK-7P
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 01:38:50 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3233260A05; Thu, 30 May 2019 01:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559180328;
 bh=9juO5+fk3lH9CoK/+q+jiu9YWLxmL6m/v8Ar/h/6rRg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dA7r1dbR/WcRSYiIEupp6qAHJNrsO95trsbyZTmmzxUsb8Zo0gbeFDSUij5OG2jcX
 +1C4X2XuvcOhWEHoyDQ4e5R6UdBMAUBAx4IHqLKW/znZiORjtMFrdNaH9YygULN8CS
 DL1HkCgLNBzw6azTg5cbNpIiWhXmcOYGe6yti4P0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 2DC1B6063A;
 Thu, 30 May 2019 01:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559180327;
 bh=9juO5+fk3lH9CoK/+q+jiu9YWLxmL6m/v8Ar/h/6rRg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EWoJsHuymdmKG5M3HXyjC7hFxN7Rb1p2YIhzDx8Mr+c7U2YS4wjOQ3lyeEui+LkV7
 CAZllBM/koJNZi5ewZ0/sW4PUD2WUSJrtMpLq2XHEw9yJ9XPipzmgHX4+u9xtSvkcZ
 udBChGzm9WkNhKVmIfvPoXviQQge/MEFO/cEmUj4=
MIME-Version: 1.0
Date: Thu, 30 May 2019 09:38:47 +0800
From: tengfeif@codeaurora.org
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64: break while loop if task had been rescheduled
In-Reply-To: <f2d62227-4694-d973-cacc-8225e2b2baf4@arm.com>
References: <1558430404-4840-1-git-send-email-tengfeif@codeaurora.org>
 <f2d62227-4694-d973-cacc-8225e2b2baf4@arm.com>
Message-ID: <253affe7493cb9689e224d74aa182765@codeaurora.org>
X-Sender: tengfeif@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_183849_299899_03424951 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, tengfei@codeaurora.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 andreyknvl@google.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNS0yMiAxNzowNCwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4gT24gMDUvMjEv
MjAxOSAwMjo1MCBQTSwgVGVuZ2ZlaSBGYW4gd3JvdGU6Cj4+IFdoaWxlIHByaW50aW5nIGEgdGFz
aydzIGJhY2t0cmFjZSBhbmQgdGhpcyB0YXNrIGlzbid0Cj4+IGN1cnJlbnQgdGFzaywgaXQgaXMg
cG9zc2libGUgdGhhdCB0YXNrJ3MgZnAgYW5kIGZwKzgKPj4gaGF2ZSB0aGUgc2FtZSB2YWx1ZSwg
c28gY2Fubm90IGJyZWFrIHRoZSB3aGlsZSBsb29wLgo+PiBUaGlzIGNhbiBicmVhayB3aGlsZSBs
b29wIGlmIHRoaXMgdGFzayBoYWQgYmVlbgo+PiByZXNjaGVkdWxlZCBkdXJpbmcgcHJpbnQgdGhp
cyB0YXNrJ3MgYmFja3RyYWNlLgo+IAo+IFRoaXMgaXMgdmVyeSBjb25mdXNpbmcuIElJVUMgaXQg
c3VnZ2VzdHMgdGhhdCB3aGlsZSBwcmludGluZwo+IHRoZSBiYWNrdHJhY2UgZm9yIG5vbi1jdXJy
ZW50IHRhc2tzIHRoZSBkby93aGlsZSBsb29wIGRvZXMgbm90Cj4gZXhpdCBiZWNhdXNlIGZwIGFu
ZCBmcCs4IG1pZ2h0IGhhdmUgdGhlIHNhbWUgdmFsdWUgPyBXaGVuIHdvdWxkCj4gdGhpcyBoYXBw
ZW4gPyBFdmVuIGluIHRoYXQgY2FzZSB0aGUgY29tbWl0IG1lc3NhZ2UgaGVyZSBkb2VzIG5vdAo+
IHByb3Blcmx5IG1hdGNoIHRoZSBjaGFuZ2UgaW4gdGhpcyBwYXRjaC4KCkluIG91ciBpc3N1ZSwg
d2UgZ290IGZwPXBjPTB4RkZGRkZGODAyNUExM0JBMCwgc28gY2Fubm90IGV4aXQgd2hpbGUKbG9v
cCBpbiBkdW1wX2Jhc2t0cmFjZSgpLgpBZnRlciBhbmFseXplIG91ciBpc3N1ZSdzIGR1bXAsIHdl
IGZvdW5kIG9uZSB0YXNrKHN1Y2ggYXM6IHRhc2sgQSkKaXMgZXhpdGluZyB2aWEgaW52b2tlIGRv
X2V4aXQoKSBkdXJpbmcgYW5vdGhlciB0YXNrIGlzIHNob3dpbmcgdGFzawpBJ3MgZHVtcHRhc2su
IEluIGtlcm5lbCBjb2RlLCBkb19leGl0KCkgYW5kIGV4aXRfbm90aWZ5IGFyZSBkZWZpbmVkCmFz
IGZvbGxvd3M6CnZvaWQgbm9yZXR1cm4gZG9fZXhpdChsb25nIGNvZGUpCnsKICAgICAgLi4uLi4u
CiAgICAgIGV4aXRfbm90aWZ5KHRzaywgZ3JvdXBfZGVhZCk7CiAgICAgIC4uLi4uLgp9CnN0YXRp
YyB2b2lkIGV4aXRfbm90aWZ5KHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBpbnQgZ3JvdXBfZGVh
ZCkKewogICAgICAuLi4uLi4KfQpCZWNhdXNlIG9mIGV4aXRfbm90aWZ5KCkgaXMgYSBzdGF0aWMg
ZnVuY3Rpb24sIHNvIGl0IGlzIGlubGluZWQgdG8KZG9fZXhpdCgpIHdoZW4gY29tcGlsZSBrZXJu
ZWwsIHNvIHdlIGNhbiBnZXQgcGFydGlhbCBhc3NlbWJseSBjb2RlCm9mIGRvX2V4aXQoKSBhcyBm
b2xsb3dzOgrigKbigKYKewogICAgICAgICBib29sIGF1dG9yZWFwOwogICAgICAgICBzdHJ1Y3Qg
dGFza19zdHJ1Y3QgKnAsICpuOwogICAgICAgICBMSVNUX0hFQUQoZGVhZCk7CgogICAgICAgICB3
cml0ZV9sb2NrX2lycSgmdGFza2xpc3RfbG9jayk7CiAgICAgIGMxMDogICAgICAgOTAwMDAwMDAg
ICAgICAgIGFkcnAgICAgeDAsIDAgPHRhc2tsaXN0X2xvY2s+CiAgICAgIGMxNDogICAgICAgOTEw
MDAzZTggICAgICAgIG1vdiAgICAgeDgsIHNwCiAgICAgIGMxODogICAgICAgOTEwMDAwMDAgICAg
ICAgIGFkZCAgICAgeDAsIHgwLCAjMHgwCiovCnN0YXRpYyB2b2lkIGV4aXRfbm90aWZ5KHN0cnVj
dCB0YXNrX3N0cnVjdCAqdHNrLCBpbnQgZ3JvdXBfZGVhZCkKewogICAgICAgICBib29sIGF1dG9y
ZWFwOwogICAgICAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnAsICpuOwogICAgICAgICBMSVNUX0hF
QUQoZGVhZCk7CiAgICAgIGMxYzogICAgICAgYTkwMDIzZTggICAgICAgIHN0cCAgICAgeDgsIHg4
LCBbc3BdCgogICAgICAgICB3cml0ZV9sb2NrX2lycSgmdGFza2xpc3RfbG9jayk7CiAgICAgIGMy
MDogICAgICAgOTQwMDAwMDAgICAgICAgIGJsICAgICAgMCA8X3Jhd193cml0ZV9sb2NrX2lycT4K
ICAgICAgYzI0OiAgICAgICBmOTQzNTI2OCAgICAgICAgbGRyICAgICB4OCwgW3gxOSwjMTY5Nl0K
4oCm4oCmCiBGcm9tIHRoZSBjb2RlICJjMTQ6IiBhbmQgImMxYzoiLCB3ZSB3aWxsIGZpbmQgc3An
cyBhZGRyIHZhbHVlIGlzIHN0b3JlZAppbiBzcCBhbmQgc3ArOCwgc28gc3AncyB2YXVsZSBlcXVh
bCAoc3ArOCkncyB2YWx1ZS4KSW4gb3VyIGlzc3VlLCB0aGVyZSBpcyBhIGNoYW5jZSBvZiBmcCBw
b2ludCBzcCwgc28gdGhlcmUgd2lsbCBiZSAKZnA9cGM9ZnAncwphZGRyIHZhbHVlLHNvIGNvZGUg
Y2Fubm90IGJyZWFrIGZyb20gd2hpbGUgbG9vcCBpbiBkdW1wX2JhY2t0cmFjZSgpLgoKPiAKPiBU
aGlzIHBhdGNoIHRyaWVzIHRvIHN0b3AgcHJpbnRpbmcgdGhlIHN0YWNrIGZvciBub24tY3VycmVu
dCB0YXNrcwo+IGlmIHRoZWlyIHN0YXRlIGNoYW5nZSB3aGlsZSB0aGVyZSBpcyBvbmUgZHVtcF9i
YWNrdHJhY2UoKSB0cnlpbmcKPiB0byBwcmludCBiYWNrIHRyYWNlLiBEb250IHdlIGhhdmUgYW55
IGxvY2sgcHJldmVudGluZyBhIHRhc2sgaW4KPiB0aGlzIHNpdHVhdGlvbiAod2hpbGUgZHVtcGlu
ZyBpdCdzIGJhY2t0cmFjZSkgZnJvbSBydW5uaW5nIGFnYWluCj4gb3IgY2hhbmdpbmcgc3RhdGUu
CgpJIGhhdmVuJ3QgZm91bmQgYW55IGxvY2sgcHJldmVudGluZyBhIHRhc2sgaW4gdGhpcyBzaXR1
YXRpb24sIGFuZCBJIAp0aGluayB3ZSBzaG91bGRuJ3QKcHJldmVudCB0YXNrIHJ1bm5pbmcgaWYg
dGhpcyB0YXNrIGlzIHNjaGVkdWxlZC4KPiAKPj4gCj4+IFNpZ25lZC1vZmYtYnk6IFRlbmdmZWkg
RmFuIDx0ZW5nZmVpZkBjb2RlYXVyb3JhLm9yZz4KPj4gLS0tCj4+ICBhcmNoL2FybTY0L2tlcm5l
bC90cmFwcy5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyMyBpbnNlcnRpb25zKCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwv
dHJhcHMuYyBiL2FyY2gvYXJtNjQva2VybmVsL3RyYXBzLmMKPj4gaW5kZXggMjk3NTU5OC4uOWRm
NmUwMiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvdHJhcHMuYwo+PiArKysgYi9h
cmNoL2FybTY0L2tlcm5lbC90cmFwcy5jCj4+IEBAIC0xMDMsNiArMTAzLDkgQEAgdm9pZCBkdW1w
X2JhY2t0cmFjZShzdHJ1Y3QgcHRfcmVncyAqcmVncywgc3RydWN0IAo+PiB0YXNrX3N0cnVjdCAq
dHNrKQo+PiAgewo+PiAgCXN0cnVjdCBzdGFja2ZyYW1lIGZyYW1lOwo+PiAgCWludCBza2lwID0g
MDsKPj4gKwlsb25nIGN1cl9zdGF0ZSA9IDA7Cj4+ICsJdW5zaWduZWQgbG9uZyBjdXJfc3AgPSAw
Owo+PiArCXVuc2lnbmVkIGxvbmcgY3VyX2ZwID0gMDsKPj4gCj4+ICAJcHJfZGVidWcoIiVzKHJl
Z3MgPSAlcCB0c2sgPSAlcClcbiIsIF9fZnVuY19fLCByZWdzLCB0c2spOwo+PiAKPj4gQEAgLTEy
Nyw2ICsxMzAsOSBAQCB2b2lkIGR1bXBfYmFja3RyYWNlKHN0cnVjdCBwdF9yZWdzICpyZWdzLCBz
dHJ1Y3QgCj4+IHRhc2tfc3RydWN0ICp0c2spCj4+ICAJCSAqLwo+PiAgCQlmcmFtZS5mcCA9IHRo
cmVhZF9zYXZlZF9mcCh0c2spOwo+PiAgCQlmcmFtZS5wYyA9IHRocmVhZF9zYXZlZF9wYyh0c2sp
Owo+PiArCQljdXJfc3RhdGUgPSB0c2stPnN0YXRlOwo+PiArCQljdXJfc3AgPSB0aHJlYWRfc2F2
ZWRfc3AodHNrKTsKPj4gKwkJY3VyX2ZwID0gZnJhbWUuZnA7Cj4gCj4gU2hvdWxkICdzYXZlZF9z
dGF0ZXxzcHxmcCcgaW5zdGVhZCBhcyBpdHMgYXBwbGljYWJsZSB0byBub24tY3VycmVudAo+IHRh
c2tzIG9ubHkuCgonc2F2ZWRfc3RhdGV8c3B8ZnAnIG9ubHkgYXBwbGllcyB0byBub24tY3VycmVu
dCB0YXNrcy4KCj4gCj4+ICAJfQo+PiAgI2lmZGVmIENPTkZJR19GVU5DVElPTl9HUkFQSF9UUkFD
RVIKPj4gIAlmcmFtZS5ncmFwaCA9IDA7Cj4+IEBAIC0xMzQsNiArMTQwLDIzIEBAIHZvaWQgZHVt
cF9iYWNrdHJhY2Uoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIHN0cnVjdCAKPj4gdGFza19zdHJ1Y3Qg
KnRzaykKPj4gCj4+ICAJcHJpbnRrKCJDYWxsIHRyYWNlOlxuIik7Cj4+ICAJZG8gewo+PiArCQlp
ZiAodHNrICE9IGN1cnJlbnQgJiYgKGN1cl9zdGF0ZSAhPSB0c2stPnN0YXRlCj4+ICsJCQkvKgo+
PiArCQkJICogV2Ugd291bGQgbm90IGJlIHByaW50aW5nIGJhY2t0cmFjZSBmb3IgdGhlIHRhc2sK
Pj4gKwkJCSAqIHRoYXQgaGFzIGNoYW5nZWQgc3RhdGUgZnJvbSAic2F2ZWQiIHN0YXRlIHRvIG90
aGVyCj4+ICsJCQkgKiBzdGF0ZSBiZWZvcmUgaGl0dGluZyB0aGUgZG8td2hpbGUgbG9vcCBidXQg
YWZ0ZXIKPj4gKwkJCSAqIHNhdmluZyB0aGUgY3VycmVudCBzdGF0ZS4gSWYgdGFzaydzIGN1cnJl
bnQgc3RhdGUKPiAKPiBUaGlzIGRvZXMgbm90IGNoZWNrIGFueSBleHBsaWNpdCB0YXNrIHN0YXRl
cyBsaWtlICd1bi1pbnRlcnJ1cHRpYmxlJyBvcgo+ICdydW5uaW5nJyBidXQgaW5zdGVhZCB0cmFj
a3MgY2hhbmdlIGZyb20gYW55IHByZXZpb3VzbHkgJ3NhdmVkJyBzdGF0ZS4KCmhhdmUgdXBkYXRl
ZCBjb21tZW50cy4KPiAKPiAKPj4gKwkJCSAqIG5vdCBlcXVhbCB0aGUgInNhdmVkIiBzdGF0ZSwg
dGhlbiB3ZSBtYXkgcHJpbnQKPj4gKwkJCSAqIHdyb25nIGNhbGwgdHJhY2Ugb3IgZW5kIHVwIGlu
IGluZmluaXRlIHdoaWxlIGxvb3AKPj4gKwkJCSAqIGlmICooZnApIGFuZCAqKGZwKzgpIGFyZSBz
YW1lLiBXaGlsZSB0aGUgc2l0dWF0aW9uCj4gCj4gVGhlbiBkdW1wX2JhY2t0cmFjZSgpIG11c3Qg
ZGV0ZWN0IGl0LCBzaG91bGQgbm90IHNhdmUgaXQgYW5kIGp1c3QgCj4gYWJvcnQuCgpoYXZlIHVw
ZGF0ZCBjb21tZW50ZXMuCj4gCj4gCj4+ICsJCQkgKiBzaG91bGQgYmUgc3RvcGVkIG9uY2Ugd2Ug
Zm91bmQgdGhlIHRhc2sncyBzdGF0ZQogICAgKwkJCSAqIGlzIGNoYW5nZWQsIHNvIHdlIGRldGVj
dCB0aGUgdGFzaydzIGN1cnJlbnQgc3RhdGUsCiAgICArCQkJICogc3AgYW5kIGZwIGluIGVhY2gg
d2hpbGUuCj4gCj4gVGhhdHMgbm90IGEgcmVsaWFibGUgc29sdXRpb24uIEFGSUNTIHdlIHNob3Vs
ZCBub3QgcHJvY2VlZCBmdXJ0aGVyIGlmCj4gdGhlcmUgaXMgYSBjaGFuY2Ugb2YgYW4gd3Jvbmcg
dHJhY2Ugb3IgYW4gaW5maW5pdGUgbG9vcC4gSG9waW5nIHRoYXQKPiB0aGUgcHJpbnRpbmcgd2ls
bCBzdG9wIHdoZW4gdGFzayBnZXRzIHNjaGVkdWxlZCBvdXQgZG9lcyBub3Qgc2VlbSAKPiByaWdo
dC4KCkluIHRoaXMgcGF0Y2gsIGl0IHdpbGwgYnJlYWsgd2hpbGUgbG9vcCBhbmQgc3RvcCB0byBw
cmludCBiYWNrdHJhY2UgaWYgCndlCmZpbmQgdGhlIHRhc2sncyBzdGF0ZSBjaGFuZ2Ugb3IgdGhl
cmUgaXMgYSBjaGFuY2Ugb2YgYW4gaW5maW5pdGUgbG9vcC4KPiAKPj4gKwkJCSAqLwo+PiArCQkJ
fHwgY3VyX3NwICE9IHRocmVhZF9zYXZlZF9zcCh0c2spCj4+ICsJCQl8fCBjdXJfZnAgIT0gdGhy
ZWFkX3NhdmVkX2ZwKHRzaykpKSB7Cj4gCj4gV2h5IGRvZXMgYW55IG9mIHRoZXNlIHRocmVlIG1p
c21hdGNoZXMgZGV0ZWN0IHRoZSBwcm9ibGVtYXRpYyAKPiB0cmFuc2l0aW9uCj4gbm90IGp1c3Qg
dGhlIHN0YXRlID8KCjEuIHdlIGNhbiB1c2UgImN1cl9zdGF0ZSAhPSB0c2stPnN0YXRlIiBwcmV2
ZW50IHByaW50aW5nIGJhY2t0cmFjZSBpZiAKdGhlIHRhc2sncwogICAgc3RhdGUgaXMgY2hhbmdl
ZCBhZnRlciAic2F2ZWQiIHRhc2sncyBzdGF0ZS4KMi4gd2UgY2FuIHVzZSAiY3VyX3NwICE9IHRo
cmVhZF9zYXZlZF9zcCh0c2spIiBhbmQgImN1cl9mcCAhPSAKdGhyZWFkX3NhdmVkX2ZwKHRzayki
CiAgICBwcmV2ZW50IHByaW50aW5nIGJhY2t0cmFjZSBpZiB0aGUgdGFzaydzIHN0YXRlIGlzIGNo
YW5nZWQgYmVmb3JlIAoic2F2ZWQiIHRhc2sncwogICAgc3RhdGUuIEJlY2F1c2UgdGhlIHZhbHVl
IG9mICJ0aHJlYWRfc2F2ZWRfc3AodHNrKSIgYW5kIAoidGhyZWFkX3NhdmVkX2ZwKHRzaykiCiAg
ICB3aWxsIG5vdCBlcXVhbCAic2F2ZWQiIHNwKGN1cl9zcCkgYW5kIGZwKGN1cl9mcCkuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
