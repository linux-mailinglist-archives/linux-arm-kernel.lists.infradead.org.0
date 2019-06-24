Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2421F519A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 19:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGl9U5Yl46fQGL3jFdmIqHFWHjTY/rdNSipfK2/Qyp0=; b=F24q/il4n1wcEk
	xRBVFEmihwctySEtOFk5z76AsDAbVm+jk3s430YS1ZwyllWV5/70x1xGLbEaDjKMX/dtlY2Nlnq9K
	RHJHoHYBoN1QG+aJ+s8cqOUz9+Fi+/N5adOw6jxTM+Wh6YLyTBfmT9WdSgXN61nxT0ZZBk1BW5Y/n
	acz9QC5bsVQ3uGp4zMc4OvdR8J+mfbXYrmMyVbBiVW59uC67e7fVWPw0S2YaGgrBHMXIRGDtpdrmi
	/AIFE9EtBZ0pL9S3D+aIDtRf8qPF/vNo3h1JcAHboFsKWppHDp751uzZ6TXR7uQUFk+UjHNuzHRFG
	9v+QEY74nkvfc7jNgsXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfSsF-00042C-HB; Mon, 24 Jun 2019 17:35:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfSry-0003XA-8f; Mon, 24 Jun 2019 17:35:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73AB1C0A;
 Mon, 24 Jun 2019 10:35:05 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 383443F718;
 Mon, 24 Jun 2019 10:35:04 -0700 (PDT)
Subject: Re: [Query] arm64: Right approach to support Image.gz file type via
 kexec_file_load()
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <9d54bb1e-7371-5163-69b0-0af0426ee4a0@redhat.com>
 <102e8c0a-d69a-81ee-5652-85a2b901230a@arm.com>
 <96b0ca14-48ad-ff15-8562-807893bc8124@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <44aaa993-6896-99bc-48e1-6fb6a18cbb74@arm.com>
Date: Mon, 24 Jun 2019 18:35:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <96b0ca14-48ad-ff15-8562-807893bc8124@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_103506_405239_DF9DC69D 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, matthewgarrett@google.com,
 Will Deacon <will.deacon@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwKCk9uIDI0LzA2LzIwMTkgMDY6NTksIEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+
IE9uIDA2LzIwLzIwMTkgMDg6NTggUE0sIEphbWVzIE1vcnNlIHdyb3RlOgo+PiBPbiAxOS8wNi8y
MDE5IDIyOjIzLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPj4+IFNpbmNlIG1vc3QgZGlzdHJpYnV0
aW9ucyB1c2UgJ21ha2Ugemluc3RhbGwnIHJ1bGUgaW5zaWRlICdhcmNoL2FybTY0L2Jvb3QvTWFr
ZWZpbGUnIChzZWUKPj4+IFsxXSBmb3IgZGV0YWlscykgdG8gaW5zdGFsbCB0aGUgYXJtNjQgSW1h
Z2UuZ3ogY29tcHJlc3NlZCBmaWxlIGluc2lkZSB0aGUgYm9vdCBkZXN0aW5hdGlvbgo+Pj4gZGly
ZWN0b3J5IChmb3IgZS5nLiAvYm9vdCksIGN1cnJlbnRseSB3ZSBjYW5ub3QgdXNlIGtleGVjX2Zp
bGVfbG9hZCgpIHRvIGxvYWQgdm1saW51eiAob3IKPj4+IEltYWdlLmd6KToKPj4KPj4gSXQncyBu
b3QganVzdCBrZXhlY19maWxlX2xvYWQoKSwgd2UgZG9uJ3Qgc3VwcG9ydCBib290aW5nIGZyb20g
Y29tcHJlc3NlZCBvciBlbGYgaW1hZ2UKPj4gZm9ybWF0cyBlaXRoZXI6IHRoZSBib290bG9hZGVy
IGhhcyB0byBkZWNvbXByZXNzIGFueSBJbWFnZS5neiBiZWZvcmUgaXQgY2FuIHJ1biBpdC4KPiAK
PiBUaGF0J3MgY29ycmVjdC4KPiAKPj4+IC4uLiBrZXJuZWwgcmV0dXJucyAtRUlOVkFMIGVycm9y
IHZhbHVlLCBhcyBpdCBpcyBub3QgYWJsZSB0byBsb2NhdGUgdGhlIG1hZ2ljIG51bWJlcgo+Pj4g
PTB4NjQ0ZDUyNDEsIHdoaWNoIGlzIGV4cGVjdGVkIGluIHRoZSA2NC1ieXRlIGhlYWRlciBvZiB0
aGUgZGVjb21wcmVzc2VkIGtlcm5lbCBpbWFnZQoKCj4+PiBUaGlzIHNlZW1zIHRvIGhhdmUgdGhl
IGZvbGxvd2luZyBwcm9zIGFuZCBjb25zLCB3aGljaCBJIGNhbiB0aGluayBvZjoKPj4+Cj4+PiBQ
cm9zOgo+Pj4gwqAgLSBDaGFuZ2VzIGNhbiBiZSBoYW5kbGVkIGluIHRoZSB1c2VyLXNwYWNlIChr
ZXhlY190b29scykgYW5kIG5vIGNoYW5nZXMgYXJlIHJlcXVpcmVkIGluCj4+PiBrZXJuZWwgc3Bh
Y2UgZm9yIGhhbmRsaW5nIHRoZSB1bnNpZ25lZC9ub24tc2VjdXJlIGJvb3QgY2FzZS4KPj4+Cj4+
PiBDb25zOgo+Pj4gwqAgLSBPbmUgb2J2aW91cyBpc3N1ZSBpcyBob3cgdG8gaGFuZGxlIHRoZSBz
aWduZWQga2VybmVsIEltYWdlLmd6LCBiZWNhdXNlIHNpZ25hdHVyZQo+Pj4gdmVyaWZpY2F0aW9u
IGlzIG1hbmFnZWQgaW5zaWRlIHRoZSBrZXJuZWwsIHNvIGhhbmRsaW5nIGEgc2lnbmVkIEltYWdl
Lmd6IHdvdWxkIHJlcXVpcmUKPj4+IGtlcm5lbCBpbnRlcnZlbnRpb24gZXZlbnR1YWxseS4KCj4+
IEhvdyBkbyB5b3Ugc2lnbiBhbiBJbWFnZS5nej8gSXNuJ3QgdGhlIHNpZ25hdHVyZSB3cml0dGVu
IGludG8gdGhlIFBFIGhlYWRlcj8KCj4gVGhhdCdzIGNvcnJlY3QsIG5vcm1hbGx5IGluIHVzZXIt
bGFuZCBvbmUgdXNlcyBzdGFuZGFyZCBzaWduaW5nIHV0aWxpdGllcyBsaWtlIHRoZSBzYnNpZ24K
PiB0b29scyAoc2VlIFsxXSkuIEZvciBleGFtcGxlIEkgdXNlIHRoZSBmb2xsb3dpbmcgbWV0aG9k
IHRvIHNpZ24gdGhlIGRlY29tcHJlc3NlZCBrZXJuZWwKPiBJbWFnZToKPiAKPiAkIHNic2lnbiAt
LWtleSAke0tFWX0gLS1jZXJ0ICR7Q0VSVH0gSW1hZ2UgLS1vdXRwdXQgSW1hZ2Uuc2lnbmVkCgp8
IG1vcnNlQGVnbG9uOn4va2VybmVsL2xpbnV4L2J1aWxkX2FybTY0JCBzYnNpZ24gLS1rZXkgY2Vy
dHMvc2lnbmluZ19rZXkucGVtICAtLWNlcnQgXAp8ICAgY2VydHMvc2lnbmluZ19rZXkucGVtIGFy
Y2gvYXJtNjQvYm9vdC9JbWFnZS5negp8IEludmFsaWQgRE9TIGhlYWRlciBtYWdpYwoKLi4uIGJl
Y2F1c2UgdGhhdCBnemlwIGZpbGUgaXNuJ3QgYSBQRTMyKyB0aGF0IGNhbiBiZSBsb2FkZWQgYnkg
VUVGSS4KCgo+IFRoZSBwcm9ibGVtIGhhcHBlbnMgd2hlbiB3ZSBoYXZlIGEgSW1hZ2UuZ3ogaW5z
dGVhZCBvZiBhIGRlY29tcHJlc3NlZCBJbWFnZSBpbiBkaXN0cm8KPiBlbnZpcm9ubWVudHMuCj4g
Cj4gTm93IHRoZSBwcm9jZXNzIGJlY29tZXMgYSBsb3QgbW9yZSBjb21wbGljYXRlZDoKPiAKPiAt
IFVzZXIgdXNlcyBzYnNpZ24gdG9vbCB0byBzaWduIEltYWdlLmd6LCBsZXRzIGNhbGwgdGhlIHJl
c3VsdGluZyBmaWxlIGFzIEltYWdlLmd6LnNpZ25lZAoKU2VjdXJlIEJvb3QgaXMgdGhlIHJlYXNv
biBmb3IgYWxsIHRoaXMgc2lnbmF0dXJlIHN0dWZmLiBIYXZpbmcgb25seSBvbmUgd2F5IHRoZXNl
IHRoaW5ncwpnZXQgc2lnbmVkIG1lYW5zIGl0IHdpbGwgd29yayBvbiBhbnkgcGxhdGZvcm0gdGhh
dCBzdXBwb3J0cyBzaWduYXR1cmVzLiBTdXBwb3J0aW5nCm11bHRpcGxlIGZvcm1hdHMgbWVhbnMg
cG90ZW50aWFsbHkgbXVsdGlwbGUsIGNvbmZsaWN0aW5nLCBzaWduYXR1cmVzLgoKCkltYWdlLmd6
IGlzbid0IGEgUEUzMisgZmlsZSwgc28gd2hlcmV2ZXIgc2JzaWduIHB1dHMgdGhlIHNpZ25hdHVy
ZSwgaXQgaXNuJ3Qgc29tZXdoZXJlIHRoZQprZXJuZWwgb3IgVUVGSSBrbm93IGhvdyB0byB2YWxp
ZGF0ZSBpdC4KCgo+IC0ga2V4ZWNfZmlsZV9sb2FkKCkgaXMgaW52b2tlZCB1c2luZyBhIGNvbW1h
bmQgbGluZSByZXNlbWJsaW5nIHNvbWV0aGluZyBsaWtlOgo+IAo+ICQga2V4ZWMgLXMgLWwgSW1h
Z2UuZ3ouc2lnbmVkIC0taW5pdHJkPS9ib290L2luaXRyYW1mcy1gdW5hbWUgLXJgLmltZyAtLXJl
dXNlLWNtZGxpbmUKPiAKPiAtIE5vdyBzaW5jZSBrZXhlY190b29scyAodXNlciBsYW5kKSBoYXMg
bm8gc3VwcG9ydCBmb3IgcGFyc2luZyB0aGUgc2lnbmF0dXJlIGFwcGVuZGVkCj4gYmVmb3JlIHRo
ZSBJbWFnZS5neiBmaWxlICh1c2luZyB3aGljaCBpdCBjcmVhdGVzIGEgZGVjb21wcmVzc2VkIElt
YWdlIGZpbGUpIGFuZCB0aGVuIHRvCj4gcmUtc2lnbiB0aGUgcmVzdWx0aW5nIEltYWdlIGZpbGUg
KGJlZm9yZSBpdCBpcyBwYXNzZWQgYXMgYSBmZCB0byB0aGUgc3lzY2FsbCksIEkgYW0gbm90Cj4g
c3VyZSBob3cgdGhpcyBjYW4gYmUgaGFuZGxlZCBpbiB1c2VyLWxhbmQgYXBwcm9wcmlhdGVseS4K
ClN1cmVseSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaGVyZSBpcyB1bnppcCB0aGUgZmlsZSwgc2ln
biBpdCwgcmUtY29tcHJlc3MgaXQuCkl0IGhhcyBiZWVuIGNvbXByZXNzZWQgdG8gc2F2ZSBzcGFj
ZS4gVGhlIGJvb3Rsb2FkZXIvZ3J1YiBoYXMgdG8gdW5jb21wcmVzcyBpdCBiZWZvcmUgaWYKY2Fu
IGdldCBnZXQgVUVGSSB0byBib290IGl0LgpJJ20gcHJldHR5IHN1cmUgeW91IGNhbid0IHBvaW50
IHRoZSBlZmkgYm9vdCB2YXJpYWJsZXMgYXQgYSBnemlwIGZpbGUuCgooVUVGSSBoYXMgaXRzIG93
biBjb21wcmVzc2lvbiBzY2hlbWUgaW4gYXBwZW5kaXggSCwgSSBjYW4ndCBmaW5kIGFueSBtZW50
aW9uIG9mIGd6aXAgaW4KdGhlIHNwZWMpCgoKPj4+IDIuIEFkZCBzdXBwb3J0IGluIGtlcm5lbCAo
Zm9yIHdoaWNoIEkgaGF2ZSBhIFJGQyBwYXRjaCByZWFkeSksIHdoaWNoIGhhbmRsZXMgYW4gJ0lt
YWdlLmd6Jwo+Pj4gYmVpbmcgcGFzc2VkIHZpYSBrZXhlY19maWxlX2xvYWQoKSwgdXNpbmcgYW4g
YXBwcm9hY2ggYXMgZm9sbG93czoKPj4+Cj4+PiBhKS4gRGVmaW5lIGEgJ2FyY2hfa2V4ZWNfa2Vy
bmVsX2ltYWdlX3Byb2JlJyBmb3IgYXJtNjQsIHdoaWNoIG92ZXJyaWRlcyB0aGUgX193ZWFrCj4+
PiBkZWZpbml0aW9uIGluICdrZXJuZWwva2V4ZWNfZmlsZS5jJwo+Pj4gYikuIEluc2lkZSAnYXJj
aF9rZXhlY19rZXJuZWxfaW1hZ2VfcHJvYmUnIGZvciBhcm02NCwgY2hlY2sgaWYgd2UgaGF2ZSBi
ZWVuIHBhc3NlZCBhCj4+PiBtYWdpYyBoZWFkZXLCoCAweDFmLCAweDhiIChcMDM3IFwyMTMpIHdo
aWNoIGluZGljYXRlcyBhICdnemlwIGZvcm1hdCcgSW1hZ2UgZmlsZS4KPj4+IGIpLiBEZWNvbXBy
ZXNzIHRoZSBjb250ZW50cyBpbnNpZGUgYSBidWZmZXIgdXNpbmcgYSBkZWNvbXByZXNzX2tlcm5l
bCgpIC0+IGd1bnppcCgpIC0+Cj4+PiBpbmZsYXRlKCkgbG9naWMuCj4+Pgo+Pj4gVGhpcyBzZWVt
cyB0byBoYXZlIHRoZSBmb2xsb3dpbmcgcHJvcyBhbmQgY29ucywgd2hpY2ggSSBjYW4gdGhpbmsg
b2Y6Cj4+Pgo+Pj4gUHJvczoKPj4+IMKgIC0gSGFuZGxpbmcgc2lnbmVkIEltYWdlLmd6IGJlY29t
ZXMgZWFzaWVyIGluIHRoZSBrZXJuZWwgaXRzZWxmLgo+Pgo+PiBJIGRvbid0IGZvbGxvdzogeW91
IGNhbid0IGJvb3QgdGhpcywgc28gd2h5IHdvdWxkIHlvdSBzaWduIGl0Pwo+IAo+IAo+IEJlY2F1
c2UgdGhhdCdzIHdoYXQgbW9zdCBkaXN0cmlidXRpb25zIGRvIG5vcm1hbGx5IChJIHNoYXJlIHNv
bWUgc2lnbmluZwo+IHJ1bGVzIGFzIGEgcmVmZXJlbmNlIGJlbG93KSAtIGlmIHRoZSBnemlwcGVk
IEVGSSBpbWFnZXMgYXJlIHByZXNlbnQgdGhlbiB0aGV5IHNpZ24gdGhlbSB2aWEKPiBwZXNpZ24g
dG9vbCAoc2VlIDxodHRwOi8vbWFucGFnZXMudWJ1bnR1LmNvbS9tYW5wYWdlcy9iaW9uaWMvbWFu
MS9wZXNpZ24uMS5odG1sPikKCkRvIHRoZXkgZXhwZWN0IHBsYXRmb3JtIGZpcm13YXJlIHRvIGJv
b3QgdGhlc2U/IEl0IGRvZXNuJ3Qgd29yayBmb3IgbWU6CnwgRlMwOlw+IEltYWdlLmd6CnwgVW5s
b2FkaW5nIGRyaXZlciBhdCAweDAwMDAwMDAwMDAwCnwgRXJyb3IgcmVwb3J0ZWQ6IFVuc3VwcG9y
dGVkCnwgRlMwOlw+IEltYWdlCnwgTG9hZGluZyBkcml2ZXIgYXQgMHgwODdGOTE4MDAwMCBFbnRy
eVBvaW50PTB4MDg3RkE0NDVGOTgKfCBFRkkgc3R1YjogQm9vdGluZyBMaW51eCBLZXJuZWwuLi4K
Ckl0J3MgZ3J1YidzIGd6aXAgbW9kdWxlIHRoYXQgZG9lcyB0aGUgZGVjb21wcmVzc2lvbi4gSW4g
dGhlIHNhbWUgd2F5IHdlIGV4cGVjdCBrZXhlYy10b29scwp0byBkZWNvbXByZXNzIHRoZSBibG9i
IHRvIGZlZWQga2V4ZWNfZmlsZV9sb2FkIHRoZSBrZXJuZWwgSW1hZ2UuCgpJZiB5b3UgZGVjb21w
cmVzcyB0aGUgSW1hZ2UuZ3osIHNpZ24gaXQsIHJlLWNvbXByZXNzIGl0IGl0IHNob3VsZCBhbGwg
anVzdCB3b3JrLgoKClRoYW5rcywKCkphbWVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
