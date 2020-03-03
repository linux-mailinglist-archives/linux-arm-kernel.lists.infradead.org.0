Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47971770AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 09:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jV6bw/7ABy/ZRKWHRM2IsnT9RuJVCKbrnT2rYYSJ39Y=; b=Ke7Tv5E98akUmz
	rXVAySe6ZDg5ON2bz7W5UvLIqQNSs6SqmhnejQDXMCUgbBb80Jv6lrQMcO5VyZJwBq2Kq2NChiwPf
	/p8+KbOEahEaZ4PwBJK93Yn4cJHxT3Fg4mRXzGYFYwwVKHWmamNEMxsi2AxyCB4uJeS//OqSHnSOY
	YUahggt7DCy4wH5IEI8hpx37UA0ou8TIYwm2lTOEEW7x5knoDcF209LDDRZDd/Vcy177upK/6qo2B
	rPnpGbd2tzWPJFFRB6GZxAakne0ap6T61am7A0waEk0SxqYPZNZn87vxNN4jV1qVsGcqkS6hEJgZB
	dn4aXojo4OM1hEOsRRbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Vp-0001l8-9L; Tue, 03 Mar 2020 08:02:45 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Vg-0001k9-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 08:02:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E6C6D27E094B;
 Tue,  3 Mar 2020 09:02:32 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id gRGKKHAauRNX; Tue,  3 Mar 2020 09:02:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 60A3E27E097E;
 Tue,  3 Mar 2020 09:02:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Ne9rJroH1Pl5; Tue,  3 Mar 2020 09:02:32 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 42FC827E094B;
 Tue,  3 Mar 2020 09:02:32 +0100 (CET)
Date: Tue, 3 Mar 2020 09:02:31 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Message-ID: <482678048.7666348.1583222551942.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20200302231342.GE262924@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu> <20200302231342.GE262924@yoga>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC75 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: Rename rproc_elf_sanity_check for elf32
Thread-Index: J1/AEqDg9YgPl+SVOgly/5r9Nw/vWg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_000236_598554_F8ED219A 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc <linux-doc@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, s-anna <s-anna@ti.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmpvcm4sIAoKLS0tLS0gT24gMyBNYXIsIDIwMjAsIGF0IDAwOjEzLCBCam9ybiBBbmRlcnNz
b24gYmpvcm4uYW5kZXJzc29uQGxpbmFyby5vcmcgd3JvdGU6Cgo+IE9uIE1vbiAwMiBNYXIgMDE6
MzggUFNUIDIwMjAsIENsZW1lbnQgTGVnZXIgd3JvdGU6Cj4gCj4+IFNpbmNlIHRoaXMgZnVuY3Rp
b24gd2lsbCBiZSBtb2RpZmllZCB0byBzdXBwb3J0IGJvdGggZWxmMzIgYW5kIGVsZjY0LAo+PiBy
ZW5hbWUgdGhlIGV4aXN0aW5nIG9uZSB0byBlbGYzMiAod2hpY2ggaXMgdGhlIG9ubHkgc3VwcG9y
dGVkIGZvcm1hdAo+PiBhdCB0aGUgbW9tZW50KS4gVGhpcyB3aWxsIGFsbG93IG5vdCB0byBpbnRy
b2R1Y2UgcG9zc2libGUgc2lkZSBlZmZlY3QKPj4gd2hlbiBhZGRpbmcgZWxmNjQgc3VwcG9ydCAo
aWU6IGFsbCBiYWNrZW5kcyB3aWxsIHN0aWxsIHN1cHBvcnQgb25seQo+PiBlbGYzMiBpZiBub3Qg
cmVxdWVzdGVkIGV4cGxpY2l0ZWx5IHVzaW5nIHJwcm9jX2VsZl9zYW5pdHlfY2hlY2spLgo+PiAK
PiAKPiBJcyB0aGVyZSBhIHJlYXNvbiBmb3IgcHJldmVudGluZyBFTEY2NCBiaW5hcmllcyBiZSBs
b2FkZWQ/CgpJIGRlY2lkZWQgdG8gZ28gdGhpcyB3YXkgdG8gbGV0IGRyaXZlciBtYWludGFpbmVy
IGRlY2lkZSBpZiB0aGV5IHdhbnQKdG8gc3VwcG9ydCBlbGY2NCB0byBhdm9pZCBwcm9ibGVtcyB3
aXRoIDY0Yml0cyBhZGRyZXNzZXMvc2l6ZXMgd2hpY2ggZG8Kbm90IGZpdCBpbiB0aGVpciBuYXRp
dmUgdHlwZSAoc2l6ZV90IGZvciBpbnN0YW5jZSkuIFRoaXMgaXMgcHJvYmFibHkKbm90IGdvaW5n
IHRvIGhhcHBlbiBhbmQgdGhlcmUgYXJlIGFkZGl0aW9ubmFsIGNoZWNrcyBiZWZvcmUgY2FsbGlu
ZwpycHJvY19kYV90b192YS4gQW5kIGFkZHJlc3NlcyBzaG91bGQgYmUgZmlsdGVyZWQgYnkgcnBy
b2NfZGFfdG9fdmEuClNvLCBhY3R1YWxseSBpdCBzZWVtcyB0aGVyZSBpcyBubyByZWFzb24gdG8g
Zm9yYmlkIHN1cHBvcnRpbmcgZWxmMzIvNjQKZm9yIGFsbCBkcml2ZXJzLgoKUmVnYXJkcywKCkNs
w6ltZW50Cgo+IAo+IFJlZ2FyZHMsCj4gQmpvcm4KPiAKPj4gU2lnbmVkLW9mZi1ieTogQ2xlbWVu
dCBMZWdlciA8Y2xlZ2VyQGthbHJheS5ldT4KPj4gLS0tCj4+ICBkcml2ZXJzL3JlbW90ZXByb2Mv
cmVtb3RlcHJvY19jb3JlLmMgICAgICAgfCAyICstCj4+ICBkcml2ZXJzL3JlbW90ZXByb2MvcmVt
b3RlcHJvY19lbGZfbG9hZGVyLmMgfCA2ICsrKy0tLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3Jl
bW90ZXByb2NfaW50ZXJuYWwuaCAgIHwgMiArLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3N0X3Jl
bW90ZXByb2MuYyAgICAgICAgIHwgMiArLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3N0X3NsaW1f
cnByb2MuYyAgICAgICAgIHwgMiArLQo+PiAgZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9j
LmMgICAgICAgICAgIHwgMiArLQo+PiAgNiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3Jl
bW90ZXByb2NfY29yZS5jCj4+IGIvZHJpdmVycy9yZW1vdGVwcm9jL3JlbW90ZXByb2NfY29yZS5j
Cj4+IGluZGV4IDRiZmFmNGEzYzRhMy4uOTlmMGI3OTZmYmM3IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9yZW1vdGVw
cm9jL3JlbW90ZXByb2NfY29yZS5jCj4+IEBAIC0yMDU1LDcgKzIwNTUsNyBAQCBzdHJ1Y3QgcnBy
b2MgKnJwcm9jX2FsbG9jKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhcgo+PiAqbmFtZSwK
Pj4gIAkJcnByb2MtPm9wcy0+bG9hZCA9IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzOwo+PiAgCQly
cHJvYy0+b3BzLT5wYXJzZV9mdyA9IHJwcm9jX2VsZl9sb2FkX3JzY190YWJsZTsKPj4gIAkJcnBy
b2MtPm9wcy0+ZmluZF9sb2FkZWRfcnNjX3RhYmxlID0gcnByb2NfZWxmX2ZpbmRfbG9hZGVkX3Jz
Y190YWJsZTsKPj4gLQkJcnByb2MtPm9wcy0+c2FuaXR5X2NoZWNrID0gcnByb2NfZWxmX3Nhbml0
eV9jaGVjazsKPj4gKwkJcnByb2MtPm9wcy0+c2FuaXR5X2NoZWNrID0gcnByb2NfZWxmMzJfc2Fu
aXR5X2NoZWNrOwo+PiAgCQlycHJvYy0+b3BzLT5nZXRfYm9vdF9hZGRyID0gcnByb2NfZWxmX2dl
dF9ib290X2FkZHI7Cj4+ICAJfQo+PiAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JlbW90ZXBy
b2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMKPj4gYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3Rl
cHJvY19lbGZfbG9hZGVyLmMKPj4gaW5kZXggYzJhOTc4M2NmYjlhLi41YTY3NzQ1ZjI2MzggMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9jX2VsZl9sb2FkZXIuYwo+
PiArKysgYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19lbGZfbG9hZGVyLmMKPj4gQEAg
LTI1LDEzICsyNSwxMyBAQAo+PiAgI2luY2x1ZGUgInJlbW90ZXByb2NfaW50ZXJuYWwuaCIKPj4g
IAo+PiAgLyoqCj4+IC0gKiBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5pdHkgQ2hlY2sg
RUxGIGZpcm13YXJlIGltYWdlCj4+ICsgKiBycHJvY19lbGZfc2FuaXR5X2NoZWNrKCkgLSBTYW5p
dHkgQ2hlY2sgRUxGMzIgZmlybXdhcmUgaW1hZ2UKPj4gICAqIEBycHJvYzogdGhlIHJlbW90ZSBw
cm9jZXNzb3IgaGFuZGxlCj4+ICAgKiBAZnc6IHRoZSBFTEYgZmlybXdhcmUgaW1hZ2UKPj4gICAq
Cj4+ICAgKiBNYWtlIHN1cmUgdGhpcyBmdyBpbWFnZSBpcyBzYW5lLgo+PiAgICovCj4+IC1pbnQg
cnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3Qg
ZmlybXdhcmUgKmZ3KQo+PiAraW50IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnBy
b2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZ3KQo+PiAgewo+PiAgCWNvbnN0IGNo
YXIgKm5hbWUgPSBycHJvYy0+ZmlybXdhcmU7Cj4+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gJnJw
cm9jLT5kZXY7Cj4+IEBAIC04OSw3ICs4OSw3IEBAIGludCBycHJvY19lbGZfc2FuaXR5X2NoZWNr
KHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdAo+PiBmaXJtd2FyZSAqZncpCj4+ICAK
Pj4gIAlyZXR1cm4gMDsKPj4gIH0KPj4gLUVYUE9SVF9TWU1CT0wocnByb2NfZWxmX3Nhbml0eV9j
aGVjayk7Cj4+ICtFWFBPUlRfU1lNQk9MKHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjayk7Cj4+ICAK
Pj4gIC8qKgo+PiAgICogcnByb2NfZWxmX2dldF9ib290X2FkZHIoKSAtIEdldCBycHJvYydzIGJv
b3QgYWRkcmVzcy4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9yZW1vdGVwcm9j
X2ludGVybmFsLmgKPj4gYi9kcml2ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5o
Cj4+IGluZGV4IDBkZWFlNWYyMzdiOC4uMjg2MzljNTg4ZDU4IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3JlbW90ZXByb2MvcmVtb3RlcHJvY19pbnRlcm5hbC5oCj4+ICsrKyBiL2RyaXZlcnMvcmVt
b3RlcHJvYy9yZW1vdGVwcm9jX2ludGVybmFsLmgKPj4gQEAgLTU0LDcgKzU0LDcgQEAgdm9pZCAq
cnByb2NfZGFfdG9fdmEoc3RydWN0IHJwcm9jICpycHJvYywgdTY0IGRhLCBzaXplX3QgbGVuKTsK
Pj4gIHBoeXNfYWRkcl90IHJwcm9jX3ZhX3RvX3BhKHZvaWQgKmNwdV9hZGRyKTsKPj4gIGludCBy
cHJvY190cmlnZ2VyX3JlY292ZXJ5KHN0cnVjdCBycHJvYyAqcnByb2MpOwo+PiAgCj4+IC1pbnQg
cnByb2NfZWxmX3Nhbml0eV9jaGVjayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBjb25zdCBzdHJ1Y3Qg
ZmlybXdhcmUgKmZ3KTsKPj4gK2ludCBycHJvY19lbGYzMl9zYW5pdHlfY2hlY2soc3RydWN0IHJw
cm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7Cj4+ICB1NjQgcnByb2NfZWxm
X2dldF9ib290X2FkZHIoc3RydWN0IHJwcm9jICpycHJvYywgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICpmdyk7Cj4+ICBpbnQgcnByb2NfZWxmX2xvYWRfc2VnbWVudHMoc3RydWN0IHJwcm9jICpycHJv
YywgY29uc3Qgc3RydWN0IGZpcm13YXJlICpmdyk7Cj4+ICBpbnQgcnByb2NfZWxmX2xvYWRfcnNj
X3RhYmxlKHN0cnVjdCBycHJvYyAqcnByb2MsIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpOwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+PiBiL2Ry
aXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVwcm9jLmMKPj4gaW5kZXggYTMyNjhkOTVhNTBlLi5h
NmNiZmE0NTI3NjQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9yZW1vdGVw
cm9jLmMKPj4gKysrIGIvZHJpdmVycy9yZW1vdGVwcm9jL3N0X3JlbW90ZXByb2MuYwo+PiBAQCAt
MjMzLDcgKzIzMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcnByb2Nfb3BzIHN0X3Jwcm9jX29w
cyA9IHsKPj4gIAkucGFyc2VfZncJCT0gc3RfcnByb2NfcGFyc2VfZncsCj4+ICAJLmxvYWQJCQk9
IHJwcm9jX2VsZl9sb2FkX3NlZ21lbnRzLAo+PiAgCS5maW5kX2xvYWRlZF9yc2NfdGFibGUJPSBy
cHJvY19lbGZfZmluZF9sb2FkZWRfcnNjX3RhYmxlLAo+PiAtCS5zYW5pdHlfY2hlY2sJCT0gcnBy
b2NfZWxmX3Nhbml0eV9jaGVjaywKPj4gKwkuc2FuaXR5X2NoZWNrCQk9IHJwcm9jX2VsZjMyX3Nh
bml0eV9jaGVjaywKPj4gIAkuZ2V0X2Jvb3RfYWRkcgkJPSBycHJvY19lbGZfZ2V0X2Jvb3RfYWRk
ciwKPj4gIH07Cj4+ICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9zbGlt
X3Jwcm9jLmMKPj4gYi9kcml2ZXJzL3JlbW90ZXByb2Mvc3Rfc2xpbV9ycHJvYy5jCj4+IGluZGV4
IDA5YmNiNGQ4YjllMC4uM2NjYThiNjVhOGRiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3JlbW90
ZXByb2Mvc3Rfc2xpbV9ycHJvYy5jCj4+ICsrKyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9zdF9zbGlt
X3Jwcm9jLmMKPj4gQEAgLTIwMyw3ICsyMDMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJwcm9j
X29wcyBzbGltX3Jwcm9jX29wcyA9IHsKPj4gIAkuZGFfdG9fdmEgICAgICAgPSBzbGltX3Jwcm9j
X2RhX3RvX3ZhLAo+PiAgCS5nZXRfYm9vdF9hZGRyCT0gcnByb2NfZWxmX2dldF9ib290X2FkZHIs
Cj4+ICAJLmxvYWQJCT0gcnByb2NfZWxmX2xvYWRfc2VnbWVudHMsCj4+IC0JLnNhbml0eV9jaGVj
awk9IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2ssCj4+ICsJLnNhbml0eV9jaGVjawk9IHJwcm9jX2Vs
ZjMyX3Nhbml0eV9jaGVjaywKPj4gIH07Cj4+ICAKPj4gIC8qKgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9jLmMgYi9kcml2ZXJzL3JlbW90ZXByb2Mvc3RtMzJf
cnByb2MuYwo+PiBpbmRleCBhMThmODgwNDQxMTEuLjlhOGI1ZjVlMjU3MiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9yZW1vdGVwcm9jL3N0bTMyX3Jwcm9jLmMKPj4gKysrIGIvZHJpdmVycy9yZW1v
dGVwcm9jL3N0bTMyX3Jwcm9jLmMKPj4gQEAgLTUwNSw3ICs1MDUsNyBAQCBzdGF0aWMgc3RydWN0
IHJwcm9jX29wcyBzdF9ycHJvY19vcHMgPSB7Cj4+ICAJLmxvYWQJCT0gcnByb2NfZWxmX2xvYWRf
c2VnbWVudHMsCj4+ICAJLnBhcnNlX2Z3CT0gc3RtMzJfcnByb2NfcGFyc2VfZncsCj4+ICAJLmZp
bmRfbG9hZGVkX3JzY190YWJsZSA9IHJwcm9jX2VsZl9maW5kX2xvYWRlZF9yc2NfdGFibGUsCj4+
IC0JLnNhbml0eV9jaGVjawk9IHJwcm9jX2VsZl9zYW5pdHlfY2hlY2ssCj4+ICsJLnNhbml0eV9j
aGVjawk9IHJwcm9jX2VsZjMyX3Nhbml0eV9jaGVjaywKPj4gIAkuZ2V0X2Jvb3RfYWRkcgk9IHJw
cm9jX2VsZl9nZXRfYm9vdF9hZGRyLAo+PiAgfTsKPj4gIAo+PiAtLQo+PiAyLjE1LjAuMjc2Lmc4
OWVhNzk5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
