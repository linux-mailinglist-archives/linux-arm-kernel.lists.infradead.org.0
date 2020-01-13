Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F068138D51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQEn0uAYkJPtghBoCwEBNHboKFBfAbphYbQdp5Npbhg=; b=Stq8/7ccHvtckc
	FdzMvkkIB4c3cKkxNbp4WXXgypyCsFtslgOiAUObxSqyUrKyKw/8RgaSdJhp1pgTwFj+AjGrHEK62
	b+wCbP8VW62BuloZ1xWNJ9f4RrbKYD4tLVUpXZg2tJkrx9rxLovxbIs0DKtU1NX+0Jo459PWkyu79
	+kM5Ey/Oa3MG2Al8iMsExiO8M/QrYZRmzXTiY0VfgCdN+s/fvmaap1MgATBApZZ6e9otK+XaMmIlN
	dSQx4vi5tQ9C4eA0D6Gz9g6uzhjfZlKsXm6E8WfZXwg2Kjd+5t/7coBrSV+9bgD6HtSvjBvTTKW83
	+YHMSWmr92577CZZcuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvXP-0001iK-C3; Mon, 13 Jan 2020 08:57:31 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvXB-0001hB-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578905835;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kSZRjJfw93Ipkr3yobm8XvNBZBNIgi3AuZ4c4CpTNeU=;
 b=W6baXwvOgNeLcmqVmY/bspQIezHZkJf7TB/xz2R7JL/SpSsJnvrHe4rYlN+hg0IKdVbLOh
 5qES5rl76KnydJykp4OI8lJVQJRu16669w3LFqPjRNFUfr6yJl8YcFL3aEJmfZcrSD/8Nm
 Ph0UMjikPKpnf/M9V3nyu79UUR/QEGI=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-0WQ6aqrMObya3m0pYrod8w-1; Mon, 13 Jan 2020 03:57:13 -0500
Received: by mail-wm1-f71.google.com with SMTP id t4so2277339wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 00:57:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=/8jjd0naK5yUfMwY72nPxcwXV/oe8/+GoHM6O1vObkI=;
 b=S7IOneQ/TpEWvuML0s6616VzWPGScUPEgyQMF86EQuAb+D7KBDbEZfxO0l5kzSRmTb
 94+BhjmorTgTlJkPvaNn8KLPGHox1oyKDrCEvhCEx3AYiAPBBWvSImjcXHVBfH1x3I1N
 H2GJhp1BKI9pT4inn1UwUjDikk0SEr9z041uK5KYxhG4PD6MhnrLwdXtt3Haf+ghgrrM
 /+t7w5OBJuOFDuL9CRtsNuZ0Ug+hQeZV+uc5kTAmnaw0cH25jWH4miEDTOtat9+ZIDOI
 L4bTdwiIOj5ILJ+ooOzr7Kf6XmnRv9UPTH0toqGEOOc0ETv53gUUjzQF7wqz9cohtGBG
 g3qg==
X-Gm-Message-State: APjAAAXgXFcna4FgWHqn0dSpODqFrBcWY7p9lVWcLevEmVbVp1s92IAw
 eIi2UrKpOMznEh0hmoY8dXOD5s5vd6KyNPoF2cBrkb3148nU/NDyQImg6yEpQEi3Xui+3Pc5fSn
 yj0xA+hruH578JjD/3DKDH2Z7ABnxfNC0hy0=
X-Received: by 2002:adf:e6d2:: with SMTP id y18mr17811311wrm.262.1578905831898; 
 Mon, 13 Jan 2020 00:57:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqwF0kUnrNLDD5EzuOc11BAoE/EIsGFlPEyEanuIV9dNnJKSOmjB0O8bGGRRL5aTmJgHXY6KaQ==
X-Received: by 2002:adf:e6d2:: with SMTP id y18mr17811261wrm.262.1578905831571; 
 Mon, 13 Jan 2020 00:57:11 -0800 (PST)
Received: from ?IPv6:2a01:598:a803:c918:91cf:ba30:dbb0:f19?
 ([2a01:598:a803:c918:91cf:ba30:dbb0:f19])
 by smtp.gmail.com with ESMTPSA id b18sm14133777wru.50.2020.01.13.00.57.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 00:57:11 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V11 2/5] mm/memblock: Introduce MEMBLOCK_BOOT flag
Date: Mon, 13 Jan 2020 09:57:09 +0100
Message-Id: <12BCAD36-D99C-4AC0-B466-06E1A02DDD72@redhat.com>
References: <08a2f82a-3201-055a-316a-a2f11c7ff7a5@arm.com>
In-Reply-To: <08a2f82a-3201-055a-316a-a2f11c7ff7a5@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
X-Mailer: iPhone Mail (17C54)
X-MC-Unique: 0WQ6aqrMObya3m0pYrod8w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_005717_947033_A9A1E238 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 steven.price@arm.com, ira.weiny@intel.com, will@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, mgorman@techsingularity.net, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 robin.murphy@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IEFtIDEzLjAxLjIwMjAgdW0gMDk6NDEgc2NocmllYiBBbnNodW1hbiBLaGFuZHVhbCA8YW5z
aHVtYW4ua2hhbmR1YWxAYXJtLmNvbT46Cj4gCj4g77u/Cj4gCj4+IE9uIDAxLzEzLzIwMjAgMDE6
MDcgUE0sIE1pa2UgUmFwb3BvcnQgd3JvdGU6Cj4+PiBPbiBGcmksIEphbiAxMCwgMjAyMCBhdCAw
ODozOToxMkFNICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPj4+IE9uIGFybTY0IHBs
YXRmb3JtIGJvb3QgbWVtb3J5IHNob3VsZCBuZXZlciBiZSBob3QgcmVtb3ZlZCBkdWUgdG8gY2Vy
dGFpbgo+Pj4gcGxhdGZvcm0gc3BlY2lmaWMgY29uc3RyYWludHMuIEhlbmNlIHRoZSBwbGF0Zm9y
bSB3b3VsZCBsaWtlIHRvIG92ZXJyaWRlCj4+PiBlYXJsaWVyIGFkZGVkIGFyY2ggY2FsbCBiYWNr
IGFyY2hfbWVtb3J5X3JlbW92YWJsZSgpIGZvciB0aGlzIHB1cnBvc2UuIEluCj4+PiBvcmRlciB0
byByZWplY3QgYm9vdCBtZW1vcnkgaG90IHJlbW92YWwgcmVxdWVzdCwgaXQgbmVlZHMgdG8gZmly
c3QgdHJhY2sKPj4+IHRoZW0gYXQgcnVudGltZS4gSW4gdGhlIGZ1dHVyZSwgdGhlcmUgbWlnaHQg
YmUgb3RoZXIgcGxhdGZvcm1zIHJlcXVpcmluZwo+Pj4gcnVudGltZSBib290IG1lbW9yeSBlbnVt
ZXJhdGlvbi4gSGVuY2UgbGV0cyBleHBhbmQgdGhlIGV4aXN0aW5nIGdlbmVyaWMKPj4+IG1lbWJs
b2NrIGZyYW1ld29yayBmb3IgdGhpcyBwdXJwb3NlIHJhdGhlciB0aGVuIGNyZWF0aW5nIG9uZSBq
dXN0IGZvcgo+Pj4gYXJtNjQgcGxhdGZvcm1zLgo+Pj4gCj4+PiBUaGlzIGludHJvZHVjZXMgYSBu
ZXcgbWVtYmxvY2sgZmxhZyBNRU1CTE9DS19CT09UIGFsb25nIHdpdGggaGVscGVycyB3aGljaAo+
Pj4gY2FuIGJlIG1hcmtlZCBieSBnaXZlbiBwbGF0Zm9ybSBvbiBhbGwgbWVtb3J5IHJlZ2lvbnMg
ZGlzY292ZXJlZCBkdXJpbmcKPj4+IGJvb3QuCj4+IAo+PiBXZSBhbHJlYWR5IGhhdmUgTUVNQkxP
Q0tfSE9UUExVRyB0byBtYXJrIGhvdHBsdWdnYWJsZSByZWdpb24uIENhbid0IHdlIHVzZQo+PiBp
dCBmb3IgeW91ciB1c2UtY2FzZT8KPiAKPiBBdCBwcmVzZW50IE1FTUJMT0NLX0hPVFBMVUcgZmxh
ZyBoZWxwcyBpbiBpZGVudGlmeWluZyBwYXJ0cyBvZiBib290IG1lbW9yeQo+IGFzIGhvdHBsdWdn
YWJsZSBhcyBpbmRpY2F0ZWQgYnkgdGhlIGZpcm13YXJlLiBUaGlzIGluZm9ybWF0aW9uIGlzIHRo
ZW4gdXNlZAo+IHRvIGF2b2lkIHRob3NlIHJlZ2lvbnMgZHVyaW5nIHN0YW5kYXJkIG1lbWJsb2Nr
X2FsbG9jXyooKSBBUEkgcmVxdWVzdHMgYW5kCj4gbGF0ZXIgbWFya2luZyB0aGVtIGFzIFpPTkVf
TU9WQUJMRSB3aGVuIGJ1ZGR5IGdldHMgaW5pdGlhbGl6ZWQuCj4gCj4gTWVtb3J5IGhvdCByZW1v
dmUgZG9lcyBub3QgY2hlY2sgZm9yIE1FTUJMT0NLX0hPVFBMVUcgZmxhZyBhcyBhIHJlcXVpcmVt
ZW50Cj4gYmVmb3JlIGluaXRpYXRpbmcgdGhlIHByb2Nlc3MuIFdlIGNvdWxkIHByb2JhYmx5IHVz
ZSB0aGlzIGZsYWcgaWYgZ2VuZXJpYwo+IGhvdCByZW1vdmUgY2FuIGJlIGNoYW5nZWQgdG8gY2hl
Y2sgZm9yIE1FTUJMT0NLX0hPVFBMVUcgYXMgYSBwcmVyZXF1aXNpdGUKPiB3aGljaCB3aWxsIHJl
cXVpcmUgY2hhbmdlcyB0byBtZW1ibG9jayBoYW5kbGluZyAoYm9vdCBhbmQgcnVudGltZSkgb24g
YWxsCj4gZXhpc3RpbmcgcGxhdGZvcm1zIGN1cnJlbnRseSBzdXBwb3J0aW5nIGhvdCByZW1vdmUu
IEJ1dCB3aGF0IGFib3V0IGhhbmRsaW5nCj4gdGhlIG1vdmFibGUgYm9vdCBtZW1vcnkgY3JlYXRl
ZCB3aXRoIG1vdmFibGVjb3JlL2tlcm5lbGNvcmUgY29tbWFuZCBsaW5lLAo+IHNob3VsZCBnZW5l
cmljIE1NIHVwZGF0ZSB0aGVpciBtZW1ibG9jayByZWdpb25zIHdpdGggTUVNQkxPQ0tfSE9UUExV
RyA/CgpBcyBJIHNhaWQgaW4gbXkgb3RoZXIgbWFpbCwganVzdCBkaXNhbGxvdyBvZmZsaW5pbmcg
b2YgdGhlIGFmZmVjdGVkIChib290KSBtZW1vcnkgYmxvY2tzIHVzaW5nIGEgbWVtb3J5IG5vdGlm
aWVyIGFuZCB5b3Ugc2hvdWxkIGJlIGdvb2QgdG8gZ28uIE5vIGNoYW5nZXMgaW4gbWVtb3J5IHVu
cGx1ZyBjb2RlIHJlcXVpcmVkLgoKPiAKPj4gCj4+PiBDYzogTWlrZSBSYXBvcG9ydCA8cnBwdEBs
aW51eC5pYm0uY29tPgo+Pj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlv
bi5vcmc+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4ua2hh
bmR1YWxAYXJtLmNvbT4KPj4+IC0tLQo+Pj4gaW5jbHVkZS9saW51eC9tZW1ibG9jay5oIHwgMTAg
KysrKysrKysrKwo+Pj4gbW0vbWVtYmxvY2suYyAgICAgICAgICAgIHwgMzcgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRp
b25zKCspCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21lbWJsb2NrLmggYi9p
bmNsdWRlL2xpbnV4L21lbWJsb2NrLmgKPj4+IGluZGV4IGIzOGJiZWYuLmZiMDRjODcgMTAwNjQ0
Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L21lbWJsb2NrLmgKPj4+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvbWVtYmxvY2suaAo+Pj4gQEAgLTMxLDEyICszMSwxNCBAQCBleHRlcm4gdW5zaWduZWQgbG9u
ZyBsb25nIG1heF9wb3NzaWJsZV9wZm47Cj4+PiAgKiBATUVNQkxPQ0tfSE9UUExVRzogaG90cGx1
Z2dhYmxlIHJlZ2lvbgo+Pj4gICogQE1FTUJMT0NLX01JUlJPUjogbWlycm9yZWQgcmVnaW9uCj4+
PiAgKiBATUVNQkxPQ0tfTk9NQVA6IGRvbid0IGFkZCB0byBrZXJuZWwgZGlyZWN0IG1hcHBpbmcK
Pj4+ICsgKiBATUVNQkxPQ0tfQk9PVDogbWVtb3J5IHJlY2VpdmVkIGZyb20gZmlybXdhcmUgZHVy
aW5nIGJvb3QKPj4+ICAqLwo+Pj4gZW51bSBtZW1ibG9ja19mbGFncyB7Cj4+PiAgICBNRU1CTE9D
S19OT05FICAgICAgICA9IDB4MCwgICAgLyogTm8gc3BlY2lhbCByZXF1ZXN0ICovCj4+PiAgICBN
RU1CTE9DS19IT1RQTFVHICAgID0gMHgxLCAgICAvKiBob3RwbHVnZ2FibGUgcmVnaW9uICovCj4+
PiAgICBNRU1CTE9DS19NSVJST1IgICAgICAgID0gMHgyLCAgICAvKiBtaXJyb3JlZCByZWdpb24g
Ki8KPj4+ICAgIE1FTUJMT0NLX05PTUFQICAgICAgICA9IDB4NCwgICAgLyogZG9uJ3QgYWRkIHRv
IGtlcm5lbCBkaXJlY3QgbWFwcGluZyAqLwo+Pj4gKyAgICBNRU1CTE9DS19CT09UICAgICAgICA9
IDB4OCwgICAgLyogbWVtb3J5IHJlY2VpdmVkIGZyb20gZmlybXdhcmUgZHVyaW5nIGJvb3QgKi8K
Pj4+IH07Cj4+PiAKPj4+IC8qKgo+Pj4gQEAgLTExNiw2ICsxMTgsOCBAQCBpbnQgbWVtYmxvY2tf
cmVzZXJ2ZShwaHlzX2FkZHJfdCBiYXNlLCBwaHlzX2FkZHJfdCBzaXplKTsKPj4+IHZvaWQgbWVt
YmxvY2tfdHJpbV9tZW1vcnkocGh5c19hZGRyX3QgYWxpZ24pOwo+Pj4gYm9vbCBtZW1ibG9ja19v
dmVybGFwc19yZWdpb24oc3RydWN0IG1lbWJsb2NrX3R5cGUgKnR5cGUsCj4+PiAgICAgICAgICAg
ICAgICAgIHBoeXNfYWRkcl90IGJhc2UsIHBoeXNfYWRkcl90IHNpemUpOwo+Pj4gK2ludCBtZW1i
bG9ja19tYXJrX2Jvb3QocGh5c19hZGRyX3QgYmFzZSwgcGh5c19hZGRyX3Qgc2l6ZSk7Cj4+PiAr
aW50IG1lbWJsb2NrX2NsZWFyX2Jvb3QocGh5c19hZGRyX3QgYmFzZSwgcGh5c19hZGRyX3Qgc2l6
ZSk7Cj4+PiBpbnQgbWVtYmxvY2tfbWFya19ob3RwbHVnKHBoeXNfYWRkcl90IGJhc2UsIHBoeXNf
YWRkcl90IHNpemUpOwo+Pj4gaW50IG1lbWJsb2NrX2NsZWFyX2hvdHBsdWcocGh5c19hZGRyX3Qg
YmFzZSwgcGh5c19hZGRyX3Qgc2l6ZSk7Cj4+PiBpbnQgbWVtYmxvY2tfbWFya19taXJyb3IocGh5
c19hZGRyX3QgYmFzZSwgcGh5c19hZGRyX3Qgc2l6ZSk7Cj4+PiBAQCAtMjE2LDYgKzIyMCwxMSBA
QCBzdGF0aWMgaW5saW5lIGJvb2wgbWVtYmxvY2tfaXNfbm9tYXAoc3RydWN0IG1lbWJsb2NrX3Jl
Z2lvbiAqbSkKPj4+ICAgIHJldHVybiBtLT5mbGFncyAmIE1FTUJMT0NLX05PTUFQOwo+Pj4gfQo+
Pj4gCj4+PiArc3RhdGljIGlubGluZSBib29sIG1lbWJsb2NrX2lzX2Jvb3Qoc3RydWN0IG1lbWJs
b2NrX3JlZ2lvbiAqbSkKPj4+ICt7Cj4+PiArICAgIHJldHVybiBtLT5mbGFncyAmIE1FTUJMT0NL
X0JPT1Q7Cj4+PiArfQo+Pj4gKwo+Pj4gI2lmZGVmIENPTkZJR19IQVZFX01FTUJMT0NLX05PREVf
TUFQCj4+PiBpbnQgbWVtYmxvY2tfc2VhcmNoX3Bmbl9uaWQodW5zaWduZWQgbG9uZyBwZm4sIHVu
c2lnbmVkIGxvbmcgKnN0YXJ0X3BmbiwKPj4+ICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcg
ICplbmRfcGZuKTsKPj4+IEBAIC00NDksNiArNDU4LDcgQEAgdm9pZCBtZW1ibG9ja19jYXBfbWVt
b3J5X3JhbmdlKHBoeXNfYWRkcl90IGJhc2UsIHBoeXNfYWRkcl90IHNpemUpOwo+Pj4gdm9pZCBt
ZW1ibG9ja19tZW1fbGltaXRfcmVtb3ZlX21hcChwaHlzX2FkZHJfdCBsaW1pdCk7Cj4+PiBib29s
IG1lbWJsb2NrX2lzX21lbW9yeShwaHlzX2FkZHJfdCBhZGRyKTsKPj4+IGJvb2wgbWVtYmxvY2tf
aXNfbWFwX21lbW9yeShwaHlzX2FkZHJfdCBhZGRyKTsKPj4+ICtib29sIG1lbWJsb2NrX2lzX2Jv
b3RfbWVtb3J5KHBoeXNfYWRkcl90IGFkZHIpOwo+Pj4gYm9vbCBtZW1ibG9ja19pc19yZWdpb25f
bWVtb3J5KHBoeXNfYWRkcl90IGJhc2UsIHBoeXNfYWRkcl90IHNpemUpOwo+Pj4gYm9vbCBtZW1i
bG9ja19pc19yZXNlcnZlZChwaHlzX2FkZHJfdCBhZGRyKTsKPj4+IGJvb2wgbWVtYmxvY2tfaXNf
cmVnaW9uX3Jlc2VydmVkKHBoeXNfYWRkcl90IGJhc2UsIHBoeXNfYWRkcl90IHNpemUpOwo+Pj4g
ZGlmZiAtLWdpdCBhL21tL21lbWJsb2NrLmMgYi9tbS9tZW1ibG9jay5jCj4+PiBpbmRleCA0YmMy
YzdkLi5lMTAyMDdmIDEwMDY0NAo+Pj4gLS0tIGEvbW0vbWVtYmxvY2suYwo+Pj4gKysrIGIvbW0v
bWVtYmxvY2suYwo+Pj4gQEAgLTg2NSw2ICs4NjUsMzAgQEAgc3RhdGljIGludCBfX2luaXRfbWVt
YmxvY2sgbWVtYmxvY2tfc2V0Y2xyX2ZsYWcocGh5c19hZGRyX3QgYmFzZSwKPj4+IH0KPj4+IAo+
Pj4gLyoqCj4+PiArICogbWVtYmxvY2tfbWFya19ib290bWVtIC0gTWFyayBib290IG1lbW9yeSB3
aXRoIGZsYWcgTUVNQkxPQ0tfQk9PVC4KPj4+ICsgKiBAYmFzZTogdGhlIGJhc2UgcGh5cyBhZGRy
IG9mIHRoZSByZWdpb24KPj4+ICsgKiBAc2l6ZTogdGhlIHNpemUgb2YgdGhlIHJlZ2lvbgo+Pj4g
KyAqCj4+PiArICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIC1lcnJubyBvbiBmYWlsdXJlLgo+Pj4g
KyAqLwo+Pj4gK2ludCBfX2luaXRfbWVtYmxvY2sgbWVtYmxvY2tfbWFya19ib290KHBoeXNfYWRk
cl90IGJhc2UsIHBoeXNfYWRkcl90IHNpemUpCj4+PiArewo+Pj4gKyAgICByZXR1cm4gbWVtYmxv
Y2tfc2V0Y2xyX2ZsYWcoYmFzZSwgc2l6ZSwgMSwgTUVNQkxPQ0tfQk9PVCk7Cj4+PiArfQo+Pj4g
Kwo+Pj4gKy8qKgo+Pj4gKyAqIG1lbWJsb2NrX2NsZWFyX2Jvb3RtZW0gLSBDbGVhciBmbGFnIE1F
TUJMT0NLX0JPT1QgZm9yIGEgc3BlY2lmaWVkIHJlZ2lvbi4KPj4+ICsgKiBAYmFzZTogdGhlIGJh
c2UgcGh5cyBhZGRyIG9mIHRoZSByZWdpb24KPj4+ICsgKiBAc2l6ZTogdGhlIHNpemUgb2YgdGhl
IHJlZ2lvbgo+Pj4gKyAqCj4+PiArICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIC1lcnJubyBvbiBm
YWlsdXJlLgo+Pj4gKyAqLwo+Pj4gK2ludCBfX2luaXRfbWVtYmxvY2sgbWVtYmxvY2tfY2xlYXJf
Ym9vdChwaHlzX2FkZHJfdCBiYXNlLCBwaHlzX2FkZHJfdCBzaXplKQo+Pj4gK3sKPj4+ICsgICAg
cmV0dXJuIG1lbWJsb2NrX3NldGNscl9mbGFnKGJhc2UsIHNpemUsIDAsIE1FTUJMT0NLX0JPT1Qp
Owo+Pj4gK30KPj4+ICsKPj4+ICsvKioKPj4+ICAqIG1lbWJsb2NrX21hcmtfaG90cGx1ZyAtIE1h
cmsgaG90cGx1Z2dhYmxlIG1lbW9yeSB3aXRoIGZsYWcgTUVNQkxPQ0tfSE9UUExVRy4KPj4+ICAq
IEBiYXNlOiB0aGUgYmFzZSBwaHlzIGFkZHIgb2YgdGhlIHJlZ2lvbgo+Pj4gICogQHNpemU6IHRo
ZSBzaXplIG9mIHRoZSByZWdpb24KPj4+IEBAIC05NzQsNiArOTk4LDEwIEBAIHN0YXRpYyBib29s
IHNob3VsZF9za2lwX3JlZ2lvbihzdHJ1Y3QgbWVtYmxvY2tfcmVnaW9uICptLCBpbnQgbmlkLCBp
bnQgZmxhZ3MpCj4+PiAgICBpZiAoKGZsYWdzICYgTUVNQkxPQ0tfTUlSUk9SKSAmJiAhbWVtYmxv
Y2tfaXNfbWlycm9yKG0pKQo+Pj4gICAgICAgIHJldHVybiB0cnVlOwo+Pj4gCj4+PiArICAgIC8q
IGlmIHdlIHdhbnQgYm9vdCBtZW1vcnkgc2tpcCBub24tYm9vdCBtZW1vcnkgcmVnaW9ucyAqLwo+
Pj4gKyAgICBpZiAoKGZsYWdzICYgTUVNQkxPQ0tfQk9PVCkgJiYgIW1lbWJsb2NrX2lzX2Jvb3Qo
bSkpCj4+PiArICAgICAgICByZXR1cm4gdHJ1ZTsKPj4+ICsKPj4+ICAgIC8qIHNraXAgbm9tYXAg
bWVtb3J5IHVubGVzcyB3ZSB3ZXJlIGFza2VkIGZvciBpdCBleHBsaWNpdGx5ICovCj4+PiAgICBp
ZiAoIShmbGFncyAmIE1FTUJMT0NLX05PTUFQKSAmJiBtZW1ibG9ja19pc19ub21hcChtKSkKPj4+
ICAgICAgICByZXR1cm4gdHJ1ZTsKPj4+IEBAIC0xNzg1LDYgKzE4MTMsMTUgQEAgYm9vbCBfX2lu
aXRfbWVtYmxvY2sgbWVtYmxvY2tfaXNfbWFwX21lbW9yeShwaHlzX2FkZHJfdCBhZGRyKQo+Pj4g
ICAgcmV0dXJuICFtZW1ibG9ja19pc19ub21hcCgmbWVtYmxvY2subWVtb3J5LnJlZ2lvbnNbaV0p
Owo+Pj4gfQo+Pj4gCj4+PiArYm9vbCBfX2luaXRfbWVtYmxvY2sgbWVtYmxvY2tfaXNfYm9vdF9t
ZW1vcnkocGh5c19hZGRyX3QgYWRkcikKPj4+ICt7Cj4+PiArICAgIGludCBpID0gbWVtYmxvY2tf
c2VhcmNoKCZtZW1ibG9jay5tZW1vcnksIGFkZHIpOwo+Pj4gKwo+Pj4gKyAgICBpZiAoaSA9PSAt
MSkKPj4+ICsgICAgICAgIHJldHVybiBmYWxzZTsKPj4+ICsgICAgcmV0dXJuIG1lbWJsb2NrX2lz
X2Jvb3QoJm1lbWJsb2NrLm1lbW9yeS5yZWdpb25zW2ldKTsKPj4+ICt9Cj4+PiArCj4+PiAjaWZk
ZWYgQ09ORklHX0hBVkVfTUVNQkxPQ0tfTk9ERV9NQVAKPj4+IGludCBfX2luaXRfbWVtYmxvY2sg
bWVtYmxvY2tfc2VhcmNoX3Bmbl9uaWQodW5zaWduZWQgbG9uZyBwZm4sCj4+PiAgICAgICAgICAg
ICB1bnNpZ25lZCBsb25nICpzdGFydF9wZm4sIHVuc2lnbmVkIGxvbmcgKmVuZF9wZm4pCj4+PiAt
LSAKPj4+IDIuNy40Cj4+PiAKPj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
