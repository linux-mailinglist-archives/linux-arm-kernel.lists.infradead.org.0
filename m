Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42518F40B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAKxmoMImuk9QA/6ToCyc5xGsIjsxD75LCtW+Zc1SCg=; b=lRuEezRkdIPtss
	CfBfvI8b8slqE500lG07EEZXy4H0S6jA2XKQwcO57XxOSWpQmH4OassW/K0ZxKGyINbinHyHCiTfx
	kUCY33HBBfnd5HnfTc1kB7f2oiHYP/JGXkUP1OErPm1snStI51Ikeh8TxYkc6DkIv1UjmwijHDsK0
	CgPjKWA9YhpPapoMWiD3yvUQe4BOeocWAHeH6XKoVfkoHQzk1aphxynAe9tH/cBpvVOIy8xh3k15e
	zsJxbzId257Em4UJC89V3VWssqsEGQD3rdAcgW/ZtjbvCmZBsXwdR/PL3mcK0dNGRkjWVPmCSTJaN
	Lx/C0+XPixgFpG/zpj6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLrP-0002Zd-Fk; Mon, 23 Mar 2020 12:07:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLrF-0002Ys-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:07:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED2BE1FB;
 Mon, 23 Mar 2020 05:07:04 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D96A3F52E;
 Mon, 23 Mar 2020 05:07:03 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:07:00 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200323120700.GB2597@C02TD0UTHF1T.local>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200319091407.51449-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319091407.51449-1-remi@remlab.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_050705_898876_DA73D411 
X-CRM114-Status: GOOD (  15.45  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTE6MTQ6MDVBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUsOpbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291
cm1vbnRAaHVhd2VpLmNvbT4KPiAKPiBUaGlzIHN3aXRjaGVzIGZyb20gY3VzdG9tIGluc3RydWN0
aW9uIHBhdHRlcm5zIHRvIHRoZSByZWd1bGFyIGxhcmdlCj4gbWVtb3J5IG1vZGVsIHNlcXVlbmNl
IHdpdGggQURSUCBhbmQgTERSLiBJbiBkb2luZyBzbywgdGhlIEFERAo+IGluc3RydWN0aW9uIGNh
biBiZSBlbGltaW5hdGVkIGluIHRoZSBTREVJIGhhbmRsZXIsIGFuZCB0aGUgY29kZSBubwo+IGxv
bmdlciBhc3N1bWVzIHRoYXQgdGhlIHRyYW1wb2xpbmUgdmVjdG9ycyBhbmQgdGhlIHZlY3RvcnMg
YWRkcmVzcyBib3RoCj4gc3RhcnQgb24gYSBwYWdlIGJvdW5kYXJ5Lgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+
Cj4gLS0tCj4gIGFyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMgfCA5ICsrKystLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnku
Uwo+IGluZGV4IGU1ZDRlMzBlZTI0Mi4uMjRmODI4NzM5Njk2IDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQva2VybmVsL2VudHJ5LlMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4g
QEAgLTgwNSw5ICs4MDUsOSBAQCBhbHRlcm5hdGl2ZV9lbHNlX25vcF9lbmRpZgo+ICAyOgo+ICAJ
dHJhbXBfbWFwX2tlcm5lbAl4MzAKPiAgI2lmZGVmIENPTkZJR19SQU5ET01JWkVfQkFTRQo+IC0J
YWRyCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBBR0VfU0laRQo+ICsJYWRycAl4MzAsIHRyYW1wX3Zl
Y3RvcnMgKyBQQUdFX1NJWkUKPiAgYWx0ZXJuYXRpdmVfaW5zbiBpc2IsIG5vcCwgQVJNNjRfV09S
S0FST1VORF9RQ09NX0ZBTEtPUl9FMTAwMwo+IC0JbGRyCXgzMCwgW3gzMF0KPiArCWxkcgl4MzAs
IFt4MzAsICM6bG8xMjpfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnRdCgpJIHRoaW5rIHRoaXMgaXMg
YnVzdGVkIGZvciAhNEsga2VybmVscyBvbmNlIHdlIHJlZHVjZSB0aGUgYWxpZ25tZW50IG9mCl9f
ZW50cnlfdHJhbXBfZGF0YV9zdGFydC4KClRoZSBBRFJQIGdpdmVzIHVzIGEgNjRLIGFsaWduZWQg
YWRkcmVzcyAod2l0aCBiaXRzIDE1OjAgY2xlYXIpLiBUaGUgbG8xMgpyZWxvY2F0aW9uIGdpdmVz
IHVzIGJpdHMgMTE6MCwgc28gd2UgaGF2ZW4ndCBhY2NvdW50ZWQgZm9yIGJpdHMgMTU6MTIuCkkg
dGhpbmsgdGhhdCdzIHdoYXQncyBjYXVzaW5nIHRoZSBoYW5nIENhdGFsaW4gc2VlcyB3aXRoIDY0
SyBwYWdlcyAoYW5kCndvdWxkIGFsc28gYmUgYSBwcm9ibGVtIGZvciAxNksgcGFnZXMpLgoKSWRl
YWxseSwgd2UnZCBhY2NvdW50IGZvciB0aG9zZSBiaXRzIHdpdGggdGhlIEFEUlAsIGJ1dCBJJ20g
bm90IHN1cmUKdGhhdCBhbiBFTEYgcmVsb2NhdGlvbiBjYW4gZW5jb2RlIHN5bWJvbCArIGFkZHIg
KyBzeW1ib2w6MTUtMTIsIHNvIHdlCmxpa2VseSBubmVkIG1vcmUgaW5zdHJ1Y3Rpb25zIHRvIGV4
cGxpY2l0bHkgbWFzayB0aGF0IGluLgoKLi4uIGVpdGhlciB0aGF0LCBvciBsZWF2ZSB0aGlzIHBh
Z2UgYWxpZ25lZC4KCj4gICNlbHNlCj4gIAlsZHIJeDMwLCA9dmVjdG9ycwo+ICAjZW5kaWYKPiBA
QCAtOTUzLDkgKzk1Myw4IEBAIFNZTV9DT0RFX1NUQVJUKF9fc2RlaV9hc21fZW50cnlfdHJhbXBv
bGluZSkKPiAgMToJc3RyCXg0LCBbeDEsICMoU0RFSV9FVkVOVF9JTlRSRUdTICsgU19PUklHX0FE
RFJfTElNSVQpXQo+ICAKPiAgI2lmZGVmIENPTkZJR19SQU5ET01JWkVfQkFTRQo+IC0JYWRyCXg0
LCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCj4gLQlhZGQJeDQsIHg0LCAjOmxvMTI6X19zZGVp
X2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlcgo+IC0JbGRyCXg0LCBbeDRdCj4gKwlhZHJwCXg0
LCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCj4gKwlsZHIJeDQsIFt4NCwgIzpsbzEyOl9fc2Rl
aV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRsZXJdCgpMaWtld2lzZSBoZXJlLgoKVGhhbmtzLApN
YXJrLgoKPiAgI2Vsc2UKPiAgCWxkcgl4NCwgPV9fc2RlaV9hc21faGFuZGxlcgo+ICAjZW5kaWYK
PiAtLSAKPiAyLjI2LjAucmMyCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
