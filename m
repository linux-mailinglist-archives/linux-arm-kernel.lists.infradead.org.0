Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5776C1B2B51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhRkhIk8LXVoLeMRP9JyGkyvtu9wGkwMJ+P1tiVo5a0=; b=KSeDNjmXQ4cHQl
	6/E2Mk4KYS9450G37sKp/Q4+bCNnhAEOHbLR4cqcng7O+sbxZ8GSIbNV/2wICMouLc7EN/eFaHfgT
	mxuNUljPYQVFX1ERtA5883KmqyKpyns4FBOlHQRQo7iidBLegBSrSlbzEeJSHtrWDg/vRZqAH4aFC
	+xD+xO8GgkSVifcb20lK2StxvlJs21GYswydgNG32sOQRziLHWcrQCFr+dCbfNrpebzyhGSID7tl4
	wJMMYI7p2kHAs9tRFPhjYcTNlRtZP68KIYd9iTXDlKdpCaZi7X6nGE1lMAdd7vgeiq1AzEi7F2yHF
	Zf+u4CRAMzIIYic1ngKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuys-0004E9-8a; Tue, 21 Apr 2020 15:38:38 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQuyR-00043J-Ur
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:38:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 49B5427E02FA;
 Tue, 21 Apr 2020 17:38:07 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id NFeVXngl6t0K; Tue, 21 Apr 2020 17:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 56BCA27E0A7E;
 Tue, 21 Apr 2020 17:38:06 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 56BCA27E0A7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1587483486;
 bh=E8Ef7Y9juD0L2yAlkBR135rMMoMAmO27lR7T+Rur6Qs=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=WG5rI4nsdyZ/n6I/DKusgV+iXVV+IPnkZ25CsrFG8CMWbSpcqpA2APdPsmewJfxSS
 nHHhSmAIOVf+JEYh4cIqTM9KOfJcvgywN2R19TyeC6boSRDVpK26QVhmTbB6ncy//v
 ebHQOSRZAuUEmg41DPI6+pDzXKq/NaViizxTWJkI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id UhMRJdWpDRmw; Tue, 21 Apr 2020 17:38:06 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3765427E02FA;
 Tue, 21 Apr 2020 17:38:06 +0200 (CEST)
Date: Tue, 21 Apr 2020 17:38:06 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
To: s-anna <s-anna@ti.com>
Message-ID: <777435415.16656480.1587483486065.JavaMail.zimbra@kalray.eu>
In-Reply-To: <a7994631-7a63-5477-df70-e40b995fe14f@ti.com>
References: <20200331083336.7459-1-cleger@kalray.eu>
 <0fc07250-c62c-cb10-58e5-04ccdd6ee176@ti.com>
 <a7994631-7a63-5477-df70-e40b995fe14f@ti.com>
Subject: Re: [PATCH v2] remoteproc: remove rproc_elf32_sanity_check
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC81 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: remove rproc_elf32_sanity_check
Thread-Index: u5IOaZRLFAz0NztRXGyHwYidGzKInw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_083812_357227_66D0727A 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5uYSwKCi0tLS0tIE9uIDIxIEFwciwgMjAyMCwgYXQgMTc6MzAsIHMtYW5uYSBzLWFubmFA
dGkuY29tIHdyb3RlOgoKPiBIaSBDbGVtZW50LAo+IAo+IE9uIDMvMzEvMjAgMTA6MTMgQU0sIFN1
bWFuIEFubmEgd3JvdGU6Cj4+IE9uIDMvMzEvMjAgMzozMyBBTSwgQ2xlbWVudCBMZWdlciB3cm90
ZToKPj4+IFNpbmNlIGNoZWNrcyBhcmUgcHJlc2VudCBpbiB0aGUgcmVtb3RlcHJvYyBlbGYgbG9h
ZGVyIGJlZm9yZSBjYWxsaW5nCj4+PiBkYV90b192YSwgbG9hZGluZyBhIGVsZjY0IHdpbGwgd29y
ayBvbiAzMmJpdHMgZmxhdm9ycyBvZiBrZXJuZWwuCj4+PiBJbmRlZWQsIGlmIGEgc2VnbWVudCBz
aXplIGlzIGxhcmdlciB0aGFuIHdoYXQgc2l6ZV90IGNhbiBob2xkLCB0aGUKPj4+IGxvYWRlciB3
aWxsIHJldHVybiBhbiBlcnJvciBzbyB0aGUgZnVuY3Rpb25hbGl0eSBpcyBlcXVpdmFsZW50IHRv
Cj4+PiB3aGF0IGV4aXN0cyB0b2RheS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDbGVtZW50IExl
Z2VyIDxjbGVnZXJAa2FscmF5LmV1Pgo+PiAKPj4gQWNrZWQtYnk6IFN1bWFuIEFubmEgPHMtYW5u
YUB0aS5jb20+Cj4gCj4gQ2FuIHlvdSByZXBvc3QgdGhpcyBhZnRlciByZWJhc2luZyBvbiB0b3Ag
b2YgdGhlIHJwcm9jLW5leHQgYnJhbmNoCj4gd2hpY2ggaGFzIHRoZSBycHJvY19hbGxvYyByZWZh
Y3RvcmluZyBjaGFuZ2VzIHB1c2hlZCBub3c/CgpZZXMsIEkgd2lsbCBkbyB0aGF0LgoKUmVnYXJk
cywKCkNsw6ltZW50Cgo+IAo+IHJlZ2FyZHMKPiBTdW1hbgo+IAo+PiAKPj4gcmVnYXJkcwo+PiBT
dW1hbgo+PiAKPj4+IC0tLQo+Pj4gQ2hhbmdlcyBmcm9tIHYxIC0+IHYyOgo+Pj4gICAtIFJlbW92
ZSBwb3NzaWJpdHkgdG8gb3ZlcnJpZGUgc2FuaXR5X2NoZWNrIG9wZXJhdGlvbgo+Pj4KPj4+ICAg
ZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5jICAgICAgIHwgIDMgKy0tCj4+PiAg
IGRyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIuYyB8IDIxIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4gICBkcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5h
bC5oICAgfCAgMSAtCj4+PiAgIGRyaXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMgICAg
ICAgICB8ICAyICstCj4+PiAgIGRyaXZlcnMvcmVtb3RlcHJvYy9zdF9zbGltX3Jwcm9jLmMgICAg
ICAgICB8ICAyICstCj4+PiAgIGRyaXZlcnMvcmVtb3RlcHJvYy9zdG0zMl9ycHJvYy5jICAgICAg
ICAgICB8ICAyICstCj4+PiAgIDYgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyNyBk
ZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90
ZXByb2NfY29yZS5jCj4+PiBiL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2NvcmUuYwo+
Pj4gaW5kZXggYTlhYzFkMDFlMDliLi4xOTE1NjAwNDhjMWEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMKPj4+ICsrKyBiL2RyaXZlcnMvcmVtb3Rl
cHJvYy9yZW1vdGVwcm9jX2NvcmUuYwo+Pj4gQEAgLTIwNjgsOCArMjA2OCw3IEBAIHN0cnVjdCBy
cHJvYyAqcnByb2NfYWxsb2Moc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyCj4+PiAqbmFt
ZSwKPj4+ICAgCQlycHJvYy0+b3BzLT5sb2FkID0gcnByb2NfZWxmX2xvYWRfc2VnbWVudHM7Cj4+
PiAgIAkJcnByb2MtPm9wcy0+cGFyc2VfZncgPSBycHJvY19lbGZfbG9hZF9yc2NfdGFibGU7Cj4+
PiAgIAkJcnByb2MtPm9wcy0+ZmluZF9sb2FkZWRfcnNjX3RhYmxlID0gcnByb2NfZWxmX2ZpbmRf
bG9hZGVkX3JzY190YWJsZTsKPj4+IC0JCWlmICghcnByb2MtPm9wcy0+c2FuaXR5X2NoZWNrKQo+
Pj4gLQkJCXJwcm9jLT5vcHMtPnNhbml0eV9jaGVjayA9IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVj
azsKPj4+ICsJCXJwcm9jLT5vcHMtPnNhbml0eV9jaGVjayA9IHJwcm9jX2VsZl9zYW5pdHlfY2hl
Y2s7Cj4+PiAgIAkJcnByb2MtPm9wcy0+Z2V0X2Jvb3RfYWRkciA9IHJwcm9jX2VsZl9nZXRfYm9v
dF9hZGRyOwo+Pj4gICAJfQo+Pj4gICAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlbW90ZXBy
b2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMKPj4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90
ZXByb2NfZWxmX2xvYWRlci5jCj4+PiBpbmRleCAxNmUyYzQ5NmZkNDUuLjI5MDM0Zjk5ODk4ZCAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIu
Ywo+Pj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfZWxmX2xvYWRlci5jCj4+
PiBAQCAtMTEyLDI3ICsxMTIsNiBAQCBpbnQgcnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3Qg
cnByb2MgKnJwcm9jLCBjb25zdAo+Pj4gc3RydWN0IGZpcm13YXJlICpmdykKPj4+ICAgfQo+Pj4g
ICBFWFBPUlRfU1lNQk9MKHJwcm9jX2VsZl9zYW5pdHlfY2hlY2spOwo+Pj4gICAKPj4+IC0vKioK
Pj4+IC0gKiBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5pdHkgQ2hlY2sgRUxGMzIgZmly
bXdhcmUgaW1hZ2UKPj4+IC0gKiBAcnByb2M6IHRoZSByZW1vdGUgcHJvY2Vzc29yIGhhbmRsZQo+
Pj4gLSAqIEBmdzogdGhlIEVMRjMyIGZpcm13YXJlIGltYWdlCj4+PiAtICoKPj4+IC0gKiBNYWtl
IHN1cmUgdGhpcyBmdyBpbWFnZSBpcyBzYW5lLgo+Pj4gLSAqLwo+Pj4gLWludCBycHJvY19lbGYz
Ml9zYW5pdHlfY2hlY2soc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICpmdykKPj4+IC17Cj4+PiAtCWludCByZXQgPSBycHJvY19lbGZfc2FuaXR5X2NoZWNrKHJwcm9j
LCBmdyk7Cj4+PiAtCj4+PiAtCWlmIChyZXQpCj4+PiAtCQlyZXR1cm4gcmV0Owo+Pj4gLQo+Pj4g
LQlpZiAoZndfZWxmX2dldF9jbGFzcyhmdykgPT0gRUxGQ0xBU1MzMikKPj4+IC0JCXJldHVybiAw
Owo+Pj4gLQo+Pj4gLQlyZXR1cm4gLUVJTlZBTDsKPj4+IC19Cj4+PiAtRVhQT1JUX1NZTUJPTChy
cHJvY19lbGYzMl9zYW5pdHlfY2hlY2spOwo+Pj4gLQo+Pj4gICAvKioKPj4+ICAgICogcnByb2Nf
ZWxmX2dldF9ib290X2FkZHIoKSAtIEdldCBycHJvYydzIGJvb3QgYWRkcmVzcy4KPj4+ICAgICog
QHJwcm9jOiB0aGUgcmVtb3RlIHByb2Nlc3NvciBoYW5kbGUKPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oCj4+PiBiL2RyaXZlcnMvcmVtb3Rl
cHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4+IGluZGV4IGIzODlkYzc5ZGE4MS4uMzE5OTQ3
MTVmZDQzIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfaW50
ZXJuYWwuaAo+Pj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfaW50ZXJuYWwu
aAo+Pj4gQEAgLTU0LDcgKzU0LDYgQEAgdm9pZCAqcnByb2NfZGFfdG9fdmEoc3RydWN0IHJwcm9j
ICpycHJvYywgdTY0IGRhLCBzaXplX3QgbGVuKTsKPj4+ICAgcGh5c19hZGRyX3QgcnByb2NfdmFf
dG9fcGEodm9pZCAqY3B1X2FkZHIpOwo+Pj4gICBpbnQgcnByb2NfdHJpZ2dlcl9yZWNvdmVyeShz
dHJ1Y3QgcnByb2MgKnJwcm9jKTsKPj4+ICAgCj4+PiAtaW50IHJwcm9jX2VsZjMyX3Nhbml0eV9j
aGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPj4+
ICAgaW50IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2soc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qg
c3RydWN0IGZpcm13YXJlICpmdyk7Cj4+PiAgIHU2NCBycHJvY19lbGZfZ2V0X2Jvb3RfYWRkcihz
dHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KTsKPj4+ICAgaW50
IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVj
dCBmaXJtd2FyZSAqZncpOwo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9y
ZW1vdGVwcm9jLmMKPj4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+Pj4g
aW5kZXggYTZjYmZhNDUyNzY0Li5hMzI2OGQ5NWE1MGUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L3JlbW90ZXByb2Mvc3RfcmVtb3RlcHJvYy5jCj4+PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2Mv
c3RfcmVtb3RlcHJvYy5jCj4+PiBAQCAtMjMzLDcgKzIzMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgcnByb2Nfb3BzIHN0X3Jwcm9jX29wcyA9IHsKPj4+ICAgCS5wYXJzZV9mdwkJPSBzdF9ycHJv
Y19wYXJzZV9mdywKPj4+ICAgCS5sb2FkCQkJPSBycHJvY19lbGZfbG9hZF9zZWdtZW50cywKPj4+
ICAgCS5maW5kX2xvYWRlZF9yc2NfdGFibGUJPSBycHJvY19lbGZfZmluZF9sb2FkZWRfcnNjX3Rh
YmxlLAo+Pj4gLQkuc2FuaXR5X2NoZWNrCQk9IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjaywKPj4+
ICsJLnNhbml0eV9jaGVjawkJPSBycHJvY19lbGZfc2FuaXR5X2NoZWNrLAo+Pj4gICAJLmdldF9i
b290X2FkZHIJCT0gcnByb2NfZWxmX2dldF9ib290X2FkZHIsCj4+PiAgIH07Cj4+PiAgIAo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9zbGltX3Jwcm9jLmMKPj4+IGIvZHJp
dmVycy9yZW1vdGVwcm9jL3N0X3NsaW1fcnByb2MuYwo+Pj4gaW5kZXggM2NjYThiNjVhOGRiLi4w
OWJjYjRkOGI5ZTAgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3JlbW90ZXByb2Mvc3Rfc2xpbV9y
cHJvYy5jCj4+PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2Mvc3Rfc2xpbV9ycHJvYy5jCj4+PiBA
QCAtMjAzLDcgKzIwMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcnByb2Nfb3BzIHNsaW1fcnBy
b2Nfb3BzID0gewo+Pj4gICAJLmRhX3RvX3ZhICAgICAgID0gc2xpbV9ycHJvY19kYV90b192YSwK
Pj4+ICAgCS5nZXRfYm9vdF9hZGRyCT0gcnByb2NfZWxmX2dldF9ib290X2FkZHIsCj4+PiAgIAku
bG9hZAkJPSBycHJvY19lbGZfbG9hZF9zZWdtZW50cywKPj4+IC0JLnNhbml0eV9jaGVjawk9IHJw
cm9jX2VsZjMyX3Nhbml0eV9jaGVjaywKPj4+ICsJLnNhbml0eV9jaGVjawk9IHJwcm9jX2VsZl9z
YW5pdHlfY2hlY2ssCj4+PiAgIH07Cj4+PiAgIAo+Pj4gICAvKioKPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3JlbW90ZXByb2Mvc3RtMzJfcnByb2MuYyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9zdG0z
Ml9ycHJvYy5jCj4+PiBpbmRleCA2YTY2ZGJmMmRmNDAuLjJlMDdhOTU0MzljOCAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdG0zMl9ycHJvYy5jCj4+PiArKysgYi9kcml2ZXJz
L3JlbW90ZXByb2Mvc3RtMzJfcnByb2MuYwo+Pj4gQEAgLTUwNSw3ICs1MDUsNyBAQCBzdGF0aWMg
c3RydWN0IHJwcm9jX29wcyBzdF9ycHJvY19vcHMgPSB7Cj4+PiAgIAkubG9hZAkJPSBycHJvY19l
bGZfbG9hZF9zZWdtZW50cywKPj4+ICAgCS5wYXJzZV9mdwk9IHN0bTMyX3Jwcm9jX3BhcnNlX2Z3
LAo+Pj4gICAJLmZpbmRfbG9hZGVkX3JzY190YWJsZSA9IHJwcm9jX2VsZl9maW5kX2xvYWRlZF9y
c2NfdGFibGUsCj4+PiAtCS5zYW5pdHlfY2hlY2sJPSBycHJvY19lbGYzMl9zYW5pdHlfY2hlY2ss
Cj4+PiArCS5zYW5pdHlfY2hlY2sJPSBycHJvY19lbGZfc2FuaXR5X2NoZWNrLAo+Pj4gICAJLmdl
dF9ib290X2FkZHIJPSBycHJvY19lbGZfZ2V0X2Jvb3RfYWRkciwKPj4+ICAgfTsKPj4+ICAgCj4+
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
