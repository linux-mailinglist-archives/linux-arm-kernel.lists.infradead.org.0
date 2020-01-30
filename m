Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0239814DE32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIlTFvp2JylskqLA3afCd89AAUqnajIRJZMdhXrx1X8=; b=kcVhPvf1U8Er2k
	euGEwNAUU2l+/eoYWfleHxJ0tSxm7y+QNfqLLlxuny5GM+X4lMMkuso8REaqMLS6Bgz2GXLn4rtQf
	r4ebave5t27GpO2hpZs58OZI5KkhiqVz758iBSnjqpKyZUtpJyQPHAxFupM5BYweMtKhUMSkKbeBV
	6XkAYm4w1OtCTyrsXBcrEL5aQX1aJL08pZ6b14HHFoy6e4s4ixuCzKF0yFdlaSpHfVFMv8/t8hxh+
	9uwLBuJ7vFMtlpFukV7wdMkXJYkESJn2WyD+LNi1k0Ew0ehwLVAHHtA3yml0LrVHFry3G1sB4o/vn
	AxZ/T1lQ1kqo7z0VngdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixC4U-0000yP-Sa; Thu, 30 Jan 2020 15:49:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixC4M-0000xp-27
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:49:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5867731B;
 Thu, 30 Jan 2020 07:49:25 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED9E53F67D;
 Thu, 30 Jan 2020 07:49:24 -0800 (PST)
Date: Thu, 30 Jan 2020 15:49:23 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200130154923.GB5208@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <96fdead6-9896-5695-6744-413300d424f5@arm.com>
 <3ed9af08-82ef-e30c-b1ec-3a1dac0d2091@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ed9af08-82ef-e30c-b1ec-3a1dac0d2091@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_074926_193139_E0FD2046 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmFsZW50aW4sCgpPbiBXZWRuZXNkYXkgMjkgSmFuIDIwMjAgYXQgMjM6Mzk6MTEgKCswMDAw
KSwgVmFsZW50aW4gU2NobmVpZGVyIHdyb3RlOgo+IE9uIDI5LzAxLzIwMjAgMTc6MTMsIFZhbGVu
dGluIFNjaG5laWRlciB3cm90ZToKPiA+IEkgaGFkIGEgYnJpZWYgbG9vayBhdCB0aGUgQXJtIEFS
TSwgZm9yIHRoZSBhcmNoIHRpbWVyIGl0IHNheXMgaXQgaXMKPiA+ICJ0eXBpY2FsbHkgaW4gdGhl
IHJhbmdlIDEtNTBNSHoiLCBidXQgdGhlbiBhbHNvIGdpdmVzIGFuIGV4YW1wbGUgd2l0aCAyMEtI
ego+ID4gaW4gYSBsb3ctcG93ZXIgbW9kZS4KPiA+IAo+ID4gSWYgd2UgdGFrZSBzYXkgNUdIeiBt
YXggQ1BVIGZyZXF1ZW5jeSwgb3VyIGxvd2VyIGJvdW5kIGZvciB0aGUgYXJjaCB0aW1lcgo+ID4g
KHdpdGggdGhhdCBTQ0hFRF9DQVBBQ0lUWV9TQ0FMRcKyIHRyaWNrKSBpcyBhYm91dCB+NC43NjhL
SHouIEl0J3Mgbm90ICp0b28qCj4gPiBmYXIgZnJvbSB0aGF0IDIwS0h6LCBidXQgSSdtIG5vdCBz
dXJlIHdlIHdvdWxkIGFjdHVhbGx5IGJlIGV4ZWN1dGluZyBzdHVmZgo+ID4gaW4gdGhhdCBsb3ct
cG93ZXIgbW9kZS4KPiA+IAo+IAo+IEkgbWl4ZWQgdXAgYSBmZXcgdGhpbmdzIGluIHRoZXJlOyB0
aGF0IGxvdy1wb3dlciBtb2RlIGlzIHN1cHBvc2VkIHRvIGRvCj4gaGlnaGVyIGluY3JlbWVudHMs
IHNvIGl0IHdvdWxkIGVtdWxhdGUgYSBzaW1pbGFyIGZyZXF1ZW5jeSBhcyB0aGUgbm9uLWxvdy1w
b3dlcgo+IG1vZGUuIFRodXMgdGhlIGFjdHVhbCBmcmVxdWVuY3kgbWF0dGVycyBsZXNzIHRoYW4g
d2hhdCBpcyByZXBvcnRlZCBpbiBDTlRGUlEKPiAodGhvdWdoIHdlIGhvcGUgdG8gZ2V0IHRoZSBi
ZWhhdmlvdXIgd2UncmUgdG9sZCB3ZSBzaG91bGQgc2VlKSwgc28gd2Ugc2hvdWxkCj4gYmUgcXVp
dGUgc2FmZSBmcm9tIHRoYXQgfjVLSHogdmFsdWUuIFN0aWxsLCB0byBtYWtlIGl0IG9idmlvdXMs
IEkgZG9uJ3QgdGhpbmsKPiBzb21ldGhpbmcgbGlrZSB0aGlzIHdvdWxkIGh1cnQ6Cj4gCj4gLS0t
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyBiL2Ry
aXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+IGluZGV4IDlhNTQ2NGM2MjViNDUu
LmE3MjgzMjA5MzU3NWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJj
aF90aW1lci5jCj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCj4g
QEAgLTg4NSw2ICs4ODUsMTcgQEAgc3RhdGljIGludCBhcmNoX3RpbWVyX3N0YXJ0aW5nX2NwdSh1
bnNpZ25lZCBpbnQgY3B1KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgdmFs
aWRhdGVfdGltZXJfcmF0ZSh2b2lkKQo+ICt7Cj4gKwlpZiAoIWFyY2hfdGltZXJfcmF0ZSkKPiAr
CQlyZXR1cm4gMTsKPiArCj4gKwkvKiBBcmNoIHRpbWVyIGZyZXF1ZW5jeSA8IDFNSHogaXMgc2hh
ZHkgKi8KPiArCVdBUk5fT04oYXJjaF90aW1lcl9yYXRlIDwgMTAwMDAwMCk7Cj4gKwo+ICsJcmV0
dXJuIDA7Cj4gK30KPiArCj4gIC8qCj4gICAqIEZvciBoaXN0b3JpY2FsIHJlYXNvbnMsIHdoZW4g
cHJvYmluZyB3aXRoIERUIHdlIHVzZSB3aGljaGV2ZXIgKG5vbi16ZXJvKQo+ICAgKiByYXRlIHdh
cyBwcm9iZWQgZmlyc3QsIGFuZCBkb24ndCB2ZXJpZnkgdGhhdCBvdGhlcnMgbWF0Y2guIElmIHRo
ZSBmaXJzdCBub2RlCj4gQEAgLTkwMCw3ICs5MTEsNyBAQCBzdGF0aWMgdm9pZCBhcmNoX3RpbWVy
X29mX2NvbmZpZ3VyZV9yYXRlKHUzMiByYXRlLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICAJ
CWFyY2hfdGltZXJfcmF0ZSA9IHJhdGU7Cj4gIAo+ICAJLyogQ2hlY2sgdGhlIHRpbWVyIGZyZXF1
ZW5jeS4gKi8KPiAtCWlmIChhcmNoX3RpbWVyX3JhdGUgPT0gMCkKPiArCWlmICh2YWxpZGF0ZV90
aW1lcl9yYXRlKCkpCj4gIAkJcHJfd2FybigiZnJlcXVlbmN5IG5vdCBhdmFpbGFibGVcbiIpOwo+
ICB9Cj4gIAo+IEBAIC0xNTk0LDcgKzE2MDUsNyBAQCBzdGF0aWMgaW50IF9faW5pdCBhcmNoX3Rp
bWVyX2FjcGlfaW5pdChzdHJ1Y3QgYWNwaV90YWJsZV9oZWFkZXIgKnRhYmxlKQo+ICAJICogQ05U
RlJRIHZhbHVlLiBUaGlzICptdXN0KiBiZSBjb3JyZWN0Lgo+ICAJICovCj4gIAlhcmNoX3RpbWVy
X3JhdGUgPSBhcmNoX3RpbWVyX2dldF9jbnRmcnEoKTsKPiAtCWlmICghYXJjaF90aW1lcl9yYXRl
KSB7Cj4gKwlpZiAodmFsaWRhdGVfdGltZXJfcmF0ZSgpKSB7Cj4gIAkJcHJfZXJyKEZXX0JVRyAi
ZnJlcXVlbmN5IG5vdCBhdmFpbGFibGUuXG4iKTsKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0K
PiAtLS0KPiAKCk9rYXksIEknbGwgYWRkIHRoaXMgYXMgYSBzZXBhcmF0ZSBwYXRjaCB0byB0aGUg
c2VyaWVzIGFuZCBwdXQgeW91IGFzCmF1dGhvci4gVGhhdCBpcyBpZiB5b3Ugd2FudCBtZSB0byB0
aWUgdGhpcyBjaGVjayB0byB0aGlzIHVzZWNhc2UgdGhhdApwcm92ZXMgaXRzIHVzZWZ1bG5lc3Mu
IE90aGVyd2lzZSBpdCBjYW4gc3RhbmQgb24gaXRzIG93biBhcyB3ZWxsIGlmCnlvdSB3YW50IHRv
IHN1Ym1pdCBpdCBzZXBhcmF0ZWx5LgoKSW4gcmVnYXJkcyB0byB0aGUgcmF0aW8gY29tcHV0YXRp
b24gZm9yIGZyZXF1ZW5jeSBpbnZhcmlhbmNlIHdoZXJlIHRoaXMKcGxheXMgYSByb2xlLCBJJ2xs
IGRvIGEgY2hlY2sgYW5kIGJhaWwgb3V0IGlmIHRoZSByYXRpbyBpcyAwLCB3aGljaCBJJ20KYXNo
YW1lZCB0byBub3QgaGF2ZSBhZGRlZCBiZWZvcmUgOikuCgpUaGFua3MsCklvbmVsYS4KCgo+ID4g
TG9uZyBzdG9yeSBzaG9ydCwgd2UncmUgcHJvYmFibHkgZmluZSwgYnV0IGl0IHdvdWxkIG5pY2Ug
dG8gc2hvdmUgc29tZSBvZgo+ID4gdGhlIGFib3ZlIGludG8gY29tbWVudHMgKGVzcGVjaWFsbHkg
dGhlIFNDSEVEX0NBUEFDSVRZX1NDQUxFwrIgdHJpY2spCj4gPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
