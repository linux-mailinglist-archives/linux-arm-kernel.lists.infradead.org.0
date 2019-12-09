Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E644E1177D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJ08nYqe4nbJhi3sxicZ3W1p1PzGdVOmAzNUUnZw844=; b=scx/jmjTfB3Wu3
	6/0ZYedmiGmlaphdCsq6IBkhuRHS1HxCZsLje/6xH9mk23yER62cudY0hOXnkb0h8Xt0Kjivtinrp
	r7A4JIqT3ahpBrlkZ11JzwOCro2IY2nhr6P46N158L51CoplvQwY1sSVmIjHnrxn+KFq8xwKphGPQ
	jg8yggMIB5CxjFO/QnzRZWYi0KB7lutzpCunZJ5ppKyiSgWozEfYVjr04zGC1/JOb+2/SYWA8oOAW
	krnO4++D54Z4OMM2cj1k9ntUUNE1k1TRBqe/4fG6Re4xMI+F+Wrf6YUB8m8kL5J198Ey5e+5ZcMFK
	Psw8OzhAdyof3VzPh5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQ1l-0001aa-Nu; Mon, 09 Dec 2019 20:53:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQ1e-0001ZF-2A
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575924779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LJBASH3qoTGdWSdB+LrXLR7p2EO5j8Zhq+6mo6vrhH0=;
 b=G7k5Z+Jr2vFhDChWG2E/y8fD9laVeOOQfUwfrQgCS1uOc8Z4dfFA5yiC8BORLtTiegMLDU
 or2pCq+8jFaJ3vksSZIF/7lRLqWGW6a8+fcKuFoHF0ZkCI6rvuU8iGWbT16fug6LmaWGtz
 b4g/BgB+aq8PJmPdkBz1HqfUOBsVLHk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-X1Cm7VciOaeDxMskcy9phw-1; Mon, 09 Dec 2019 15:52:57 -0500
Received: by mail-wr1-f72.google.com with SMTP id l20so8038980wrc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:52:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=NGEL1NSYmJ/OoSlxzf6M70RXjEhwqgGKnWSMvOS+jtM=;
 b=VtzF4BDTvL0HiYyt/84yFA6hs8LFsbLsVhEb7EtFvuXBHT2CjEWlaYDE+/toETOd6i
 irlOhLZnUMZUbnXWWgw6/4RYKfRHDbo7Q9TFGroBd9V5XJV7EN6EsJmopUqT2DKEspob
 c41PBIEM9DW+IMDO7VxpMfBJ8rcAGhHbShmFh+1H54UMGL3LFl676aar5yqCZ7fO5gYc
 Ks9lXEh8D5nbtPPWWfT018DCmo4WaTdYLpiz9yvVW31YcspgDN2oCxwS71Rl7g0iSpQb
 sYoixjl5OTfS03Q7u9zgd8flvKCcOFD/AlVR67SNUSUsx+jRbHnis6VK2kiKA+VDwMqA
 jPow==
X-Gm-Message-State: APjAAAWvBanZ2rqwtymfaz1o6rAtuhWTfJbsrXLd4Q5KaHWGGjVxUQ3s
 lKb1FZFXMZN+dxJKXQLx7b7ACgLOjOzXHqOh971yLy6a0WyzW4Y+vT9srde10lwS4HLBK7q6kc2
 9QkO1CGVf4QICtwpbjupJWI6qiH5e+7TQ5eU=
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr1076752wmf.136.1575924775717; 
 Mon, 09 Dec 2019 12:52:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZrY86SAs9HX0pRhK9obPbaChosiTAnQWyc7+/5zfbpOwHVpMjKo7v99fnszsIjFo82bF44w==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr1076719wmf.136.1575924775493; 
 Mon, 09 Dec 2019 12:52:55 -0800 (PST)
Received: from [192.168.3.122] (p5B0C63FA.dip0.t-ipconnect.de. [91.12.99.250])
 by smtp.gmail.com with ESMTPSA id
 d8sm726691wre.13.2019.12.09.12.52.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 12:52:54 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 5/6] mm,
 memory_hotplug: Provide argument for the pgprot_t in arch_add_memory()
Date: Mon, 9 Dec 2019 21:52:53 +0100
Message-Id: <F98E5D42-BD24-4A01-95EF-44329DDF8190@redhat.com>
References: <CAPcyv4hpXCZxV5p7WaeGgE7ceujBBa5NOz9Z8fepDHOt6zHO2A@mail.gmail.com>
In-Reply-To: <CAPcyv4hpXCZxV5p7WaeGgE7ceujBBa5NOz9Z8fepDHOt6zHO2A@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
X-Mailer: iPhone Mail (17A878)
X-MC-Unique: X1Cm7VciOaeDxMskcy9phw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_125302_191896_C039DEA8 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 Linux-sh <linux-sh@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IEFtIDA5LjEyLjIwMTkgdW0gMjE6NDMgc2NocmllYiBEYW4gV2lsbGlhbXMgPGRhbi5qLndp
bGxpYW1zQGludGVsLmNvbT46Cj4gCj4g77u/T24gTW9uLCBEZWMgOSwgMjAxOSBhdCAxMjoyNCBQ
TSBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IHdyb3RlOgo+PiAKPj4gCj4+
IAo+Pj4gT24gMjAxOS0xMi0wOSAxMjoyMyBwLm0uLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToK
Pj4+IE9uIDA5LjEyLjE5IDIwOjEzLCBMb2dhbiBHdW50aG9ycGUgd3JvdGU6Cj4+Pj4gZGV2bV9t
ZW1yZW1hcF9wYWdlcygpIGlzIGN1cnJlbnRseSB1c2VkIGJ5IHRoZSBQQ0kgUDJQRE1BIGNvZGUg
dG8gY3JlYXRlCj4+Pj4gc3RydWN0IHBhZ2UgbWFwcGluZ3MgZm9yIElPIG1lbW9yeS4gQXQgcHJl
c2VudCwgdGhlc2UgbWFwcGluZ3MgYXJlIGNyZWF0ZWQKPj4+PiB3aXRoIFBBR0VfS0VSTkVMIHdo
aWNoIGltcGxpZXMgc2V0dGluZyB0aGUgUEFUIGJpdHMgdG8gYmUgV0IuIEhvd2V2ZXIsIG9uCj4+
Pj4geDg2LCBhbiBtdHJyIHJlZ2lzdGVyIHdpbGwgdHlwaWNhbGx5IG92ZXJyaWRlIHRoaXMgYW5k
IGZvcmNlIHRoZSBjYWNoZQo+Pj4+IHR5cGUgdG8gYmUgVUMtLiBJbiB0aGUgY2FzZSBmaXJtd2Fy
ZSBkb2Vzbid0IHNldCB0aGlzIHJlZ2lzdGVyIGl0IGlzCj4+Pj4gZWZmZWN0aXZlbHkgV0IgYW5k
IHdpbGwgdHlwaWNhbGx5IHJlc3VsdCBpbiBhIG1hY2hpbmUgY2hlY2sgZXhjZXB0aW9uCj4+Pj4g
d2hlbiBpdCdzIGFjY2Vzc2VkLgo+Pj4+IAo+Pj4+IE90aGVyIGFyY2hlcyBhcmUgbm90IGN1cnJl
bnRseSBsaWtlbHkgdG8gZnVuY3Rpb24gY29ycmVjdGx5IHNlZWluZyB0aGV5Cj4+Pj4gZG9uJ3Qg
aGF2ZSBhbnkgTVRSUiByZWdpc3RlcnMgdG8gZmFsbCBiYWNrIG9uLgo+Pj4+IAo+Pj4+IFRvIHNv
bHZlIHRoaXMsIGFkZCBhbiBhcmd1bWVudCB0byBhcmNoX2FkZF9tZW1vcnkoKSB0byBleHBsaWNp
dGx5Cj4+Pj4gc2V0IHRoZSBwZ3Byb3QgdmFsdWUgdG8gYSBzcGVjaWZpYyB2YWx1ZS4KPj4+PiAK
Pj4+PiBPZiB0aGUgYXJjaGVzIHRoYXQgc3VwcG9ydCBNRU1PUllfSE9UUExVRzogeDg2XzY0LCBz
MzkwIGFuZCBhcm02NCBpcyBhCj4+Pj4gc2ltcGxlIGNoYW5nZSB0byBwYXNzIHRoZSBwZ3Byb3Rf
dCBkb3duIHRvIHRoZWlyIHJlc3BlY3RpdmUgZnVuY3Rpb25zCj4+Pj4gd2hpY2ggc2V0IHVwIHRo
ZSBwYWdlIHRhYmxlcy4gRm9yIHg4Nl8zMiwgc2V0IHRoZSBwYWdlIHRhYmxlcyBleHBsaWNpdGx5
Cj4+Pj4gdXNpbmcgX3NldF9tZW1vcnlfcHJvdCgpIChzZWVpbmcgdGhleSBhcmUgYWxyZWFkeSBt
YXBwZWQpLiBGb3Igc2gsIHJlamVjdAo+Pj4+IGFueXRoaW5nIGJ1dCBQQUdFX0tFUk5FTCBzZXR0
aW5ncyAtLSB0aGlzIHNob3VsZCBiZSBmaW5lLCBmb3Igbm93LCBzZWVpbmcKPj4+PiBzaCBkb2Vz
bid0IHN1cHBvcnQgWk9ORV9ERVZJQ0UgYW55d2F5Lgo+Pj4+IAo+Pj4+IENjOiBEYW4gV2lsbGlh
bXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KPj4+PiBDYzogRGF2aWQgSGlsZGVuYnJhbmQg
PGRhdmlkQHJlZGhhdC5jb20+Cj4+Pj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQHN1c2UuY29t
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNv
bT4KPj4+PiAtLS0KPj4+PiBhcmNoL2FybTY0L21tL21tdS5jICAgICAgICAgICAgfCA0ICsrLS0K
Pj4+PiBhcmNoL2lhNjQvbW0vaW5pdC5jICAgICAgICAgICAgfCA1ICsrKystCj4+Pj4gYXJjaC9w
b3dlcnBjL21tL21lbS5jICAgICAgICAgIHwgNCArKy0tCj4+Pj4gYXJjaC9zMzkwL21tL2luaXQu
YyAgICAgICAgICAgIHwgNCArKy0tCj4+Pj4gYXJjaC9zaC9tbS9pbml0LmMgICAgICAgICAgICAg
IHwgNSArKysrLQo+Pj4+IGFyY2gveDg2L21tL2luaXRfMzIuYyAgICAgICAgICB8IDcgKysrKysr
LQo+Pj4+IGFyY2gveDg2L21tL2luaXRfNjQuYyAgICAgICAgICB8IDQgKystLQo+Pj4+IGluY2x1
ZGUvbGludXgvbWVtb3J5X2hvdHBsdWcuaCB8IDIgKy0KPj4+PiBtbS9tZW1vcnlfaG90cGx1Zy5j
ICAgICAgICAgICAgfCAyICstCj4+Pj4gbW0vbWVtcmVtYXAuYyAgICAgICAgICAgICAgICAgIHwg
MiArLQo+Pj4+IDEwIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9u
cygtKQo+Pj4+IAo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L21tL21tdS5jIGIvYXJjaC9h
cm02NC9tbS9tbXUuYwo+Pj4+IGluZGV4IDYwYzkyOWYzNjgzYi4uNDhiNjUyNzJkZjE1IDEwMDY0
NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvbW0vbW11LmMKPj4+PiArKysgYi9hcmNoL2FybTY0L21t
L21tdS5jCj4+Pj4gQEAgLTEwNTAsNyArMTA1MCw3IEBAIGludCBwNGRfZnJlZV9wdWRfcGFnZShw
NGRfdCAqcDRkLCB1bnNpZ25lZCBsb25nIGFkZHIpCj4+Pj4gfQo+Pj4+IAo+Pj4+ICNpZmRlZiBD
T05GSUdfTUVNT1JZX0hPVFBMVUcKPj4+PiAtaW50IGFyY2hfYWRkX21lbW9yeShpbnQgbmlkLCB1
NjQgc3RhcnQsIHU2NCBzaXplLAo+Pj4+ICtpbnQgYXJjaF9hZGRfbWVtb3J5KGludCBuaWQsIHU2
NCBzdGFydCwgdTY0IHNpemUsIHBncHJvdF90IHByb3QsCj4+Pj4gICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgbWhwX3Jlc3RyaWN0aW9ucyAqcmVzdHJpY3Rpb25zKQo+Pj4gCj4+PiBDYW4gd2Ug
ZmlkZGxlIHRoYXQgaW50byAic3RydWN0IG1ocF9yZXN0cmljdGlvbnMiIGluc3RlYWQ/Cj4+IAo+
PiBZZXMsIGlmIHRoYXQncyB3aGF0IHBlb3BsZSB3YW50LCBpdCdzIHByZXR0eSB0cml2aWFsIHRv
IGRvLiBJIGNob3NlIG5vdAo+PiB0byBkbyBpdCB0aGF0IHdheSBiZWNhdXNlIGl0IGRvZXNuJ3Qg
Z2V0IHBhc3NlZCBkb3duIHRvIGFkZF9wYWdlcygpIGFuZAo+PiBpdCdzIG5vdCByZWFsbHkgYSAi
cmVzdHJpY3Rpb24iLiBJZiBJIGRvbid0IGhlYXIgYW55IG9iamVjdGlvbnMsIEkgd2lsbAo+PiBk
byB0aGF0IGZvciB2Mi4KPiAKPiArMSB0byBzdG9yaW5nIHRoaXMgaW5mb3JtYXRpb24gYWxvbmdz
aWRlIHRoZSBhbHRtYXAgaW4gdGhhdCBzdHJ1Y3R1cmUuCj4gSG93ZXZlciwgSSBhZ3JlZSBzdHJ1
Y3QgbWhwX3Jlc3RyaWN0aW9ucywgd2l0aCB0aGUgTUhQX01FTUJMT0NLX0FQSQo+IGZsYWcgbm93
IGdvbmUsIGhhcyBsb3N0IGFsbCBvZiBpdHMgInJlc3RyaWN0aW9ucyIuIEhvdyBhYm91dCBkcm9w
cGluZwo+IHRoZSAnZmxhZ3MnIHByb3BlcnR5IGFuZCByZW5hbWluZyB0aGUgc3RydWN0IHRvICdz
dHJ1Y3QKPiBtaHBfbW9kaWZpZXJzJz8KPiAKCknigJhkIHByZWZlciB0aGF0IG92ZXIgYW4gYXJj
aF9hZGRfbWVtb3J5X3Byb3RlY3RlZCgpIGFzIHN1Z2dlc3RlZCBieSBNaWNoYWwuIEJ1dCBpZiB3
ZSBjYW4gY2hhbmdlIGl0IGFmdGVyIGFkZGluZyB0aGUgbWVtb3J5IChhcyBhbHNvIHN1Z2dlc3Rl
ZCBieSBNaWNoYWwpLCB0aGF0IHdvdWxkIGFsc28gYmUgbmljZS4KCkNoZWVycyEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
