Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FC17139D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viowrILZR3/YNNWs7eceISEJ6meCZmtV7WpgG2cIUK4=; b=ftOwKq1dqTi6V6
	uUlPJbSjqs/aCjaJ1u3tj3YyG8DyOp/Rbf9UhvGxvx2eDY8HQ3IYwNjbSorKnsuWJePRLIM7g+jfS
	YEnkzze8Q19v/mudrY29+stCdYCwW/bAIcQSVFawxUnDg4/6u44NAdAR12d5XIg4stS9RiwMZyHzY
	LXza7tKlSr+LmINXoY96ducsZwq+tzT3dCGOKsPoGdQBzUytRPuAyABtZQX8i0TrTwrLLiN2Qw3Y2
	fqpQHuT3jM1aQeTQuSL6LHiRFWAlOirQ2CNoqlv9e6QyWzluzedLfiiHEPUslfSY9/OnAGNW6aLuE
	U0wt9BXMcTL8eA+AuYmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppt6-0007Ya-BT; Tue, 23 Jul 2019 08:11:08 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppsc-0007Xy-C8
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:10:40 +0000
Received: by mail-wm1-f68.google.com with SMTP id x15so37552591wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 01:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6iDuqxmKcASOOFXh75MkQ8KIrlMWj9tNOgqU0O447i0=;
 b=LQ5DIHdLnB5n/Pu064fiiExUe19LqxZl7YsIYV9iVwBOfOVMaWwYX21LUOpvmHs5/t
 P1qfJ4JLMS4/xuPcsrBgE7JRA+1YbLZXf1YwKrDZY90n5UHPia/ivqwiVzx83mciZkuZ
 PFkfAjhMf+B/E7QOlmcwXtpsft6hyOEgywT93/KwnK3OrYIJ6irqKZI5hCkM4HSGJIw8
 4twN3AS0FGviSB5b2ikxfRnDm9ZKk4ubnKqZFp/F+fFUpRpvbbFtNZ8LmkniZqwPz5UW
 zJAiVTcQkdEBD4Ejk7lpTNOet8EPOCqfhawYZW6kaY1fgbiyMB5H8Y2NR+vZXk4tpdAh
 BRkQ==
X-Gm-Message-State: APjAAAXH2GeF0ghFsmXLaB8ZbzMj6Lsdos6vr8/kvUZ3qf0KxnUZlKxu
 Q7m31JuDkNvQdQzLEBNKBrwvrg==
X-Google-Smtp-Source: APXvYqxscCG5zV7WA3DgTwEOV7g+JI81JPQ3KtiJr3uwJoC6TgABoTfwOxAcc4Y8uQvIaAafGVRR6A==
X-Received: by 2002:a1c:a1c5:: with SMTP id
 k188mr67874643wme.102.1563869436805; 
 Tue, 23 Jul 2019 01:10:36 -0700 (PDT)
Received: from redhat.com ([185.120.125.30])
 by smtp.gmail.com with ESMTPSA id y12sm36236469wrm.79.2019.07.23.01.10.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 01:10:36 -0700 (PDT)
Date: Tue, 23 Jul 2019 04:10:31 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723035725-mutt-send-email-mst@kernel.org>
References: <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011038_619931_29401DD0 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [185.120.125.30 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDM6NTM6MDZQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2IMzoyMywgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gPiA+IFJlYWxseSBsZXQncyBqdXN0IHVzZSBrZnJlZV9yY3UuIEl0J3Mgd2F5IGNsZWFu
ZXI6IGZpcmUgYW5kIGZvcmdldC4KPiA+ID4gTG9va3Mgbm90LCB5b3UgbmVlZCByYXRlIGxpbWl0
IHRoZSBmaXJlIGFzIHlvdSd2ZSBmaWd1cmVkIG91dD8KPiA+IFNlZSB0aGUgZGlzY3Vzc2lvbiB0
aGF0IGZvbGxvd2VkLiBCYXNpY2FsbHkgbm8sIGl0J3MgZ29vZCBlbm91Z2gKPiA+IGFscmVhZHkg
YW5kIGlzIG9ubHkgZ29pbmcgdG8gYmUgYmV0dGVyLgo+ID4gCj4gPiA+IEFuZCBpbiBmYWN0LAo+
ID4gPiB0aGUgc3luY2hyb25pemF0aW9uIGlzIG5vdCBldmVuIG5lZWRlZCwgZG9lcyBpdCBoZWxw
IGlmIEkgbGVhdmUgYSBjb21tZW50IHRvCj4gPiA+IGV4cGxhaW4/Cj4gPiBMZXQncyB0cnkgdG8g
ZmlndXJlIGl0IG91dCBpbiB0aGUgbWFpbCBmaXJzdC4gSSdtIHByZXR0eSBzdXJlIHRoZQo+ID4g
Y3VycmVudCBsb2dpYyBpcyB3cm9uZy4KPiAKPiAKPiBIZXJlIGlzIHdoYXQgdGhlIGNvZGUgd2hh
dCB0byBhY2hpZXZlOgo+IAo+IC0gVGhlIG1hcCB3YXMgcHJvdGVjdGVkIGJ5IFJDVQo+IAo+IC0g
V3JpdGVycyBhcmU6IE1NVSBub3RpZmllciBpbnZhbGlkYXRpb24gY2FsbGJhY2tzLCBmaWxlIG9w
ZXJhdGlvbnMgKGlvY3Rscwo+IGV0YyksIG1ldGFfcHJlZmV0Y2ggKGRhdGFwYXRoKQo+IAo+IC0g
UmVhZGVycyBhcmU6IG1lbW9yeSBhY2Nlc3Nvcgo+IAo+IFdyaXRlciBhcmUgc3luY2hyb25pemVk
IHRocm91Z2ggbW11X2xvY2suIFJDVSBpcyB1c2VkIHRvIHN5bmNocm9uaXplZAo+IGJldHdlZW4g
d3JpdGVycyBhbmQgcmVhZGVycy4KPiAKPiBUaGUgc3luY2hyb25pemVfcmN1KCkgaW4gdmhvc3Rf
cmVzZXRfdnFfbWFwcygpIHdhcyB1c2VkIHRvIHN5bmNocm9uaXplZCBpdAo+IHdpdGggcmVhZGVy
cyAobWVtb3J5IGFjY2Vzc29ycykgaW4gdGhlIHBhdGggb2YgZmlsZSBvcGVyYXRpb25zLiBCdXQg
aW4gdGhpcwo+IGNhc2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0
IGhhcyBiZWVuIHNlcmlhbGl6ZWQgd2l0aAo+IG1lbW9yeSBhY2Nlc3Nvci4gVGhhdCdzIHdoeSBJ
IHRoaW5rIGl0IGNvdWxkIGJlIHJlbW92ZWQgc2FmZWx5Lgo+IAo+IEFueXRoaW5nIEkgbWlzcyBo
ZXJlPwo+IAoKU28gaW52YWxpZGF0ZSBjYWxsYmFja3MgbmVlZCB0byByZXNldCB0aGUgbWFwLCBh
bmQgdGhleSBkbwpub3QgaGF2ZSB2cSBtdXRleC4gSG93IGNhbiB0aGV5IGRvIHRoaXMgYW5kIGZy
ZWUKdGhlIG1hcCBzYWZlbHk/IFRoZXkgbmVlZCBzeW5jaHJvbml6ZV9yY3Ugb3Iga2ZyZWVfcmN1
IHJpZ2h0PwoKQW5kIEkgd29ycnkgc29tZXdoYXQgdGhhdCBzeW5jaHJvbml6ZV9yY3UgaW4gYW4g
TU1VIG5vdGlmaWVyCmlzIGEgcHJvYmxlbSwgTU1VIG5vdGlmaWVycyBhcmUgc3VwcG9zZWQgdG8g
YmUgcXVpY2s6CnRoZXkgYXJlIG9uIGEgcmVhZCBzaWRlIGNyaXRpY2FsIHNlY3Rpb24gb2YgU1JD
VS4KCklmIHdlIGNvdWxkIGdldCByaWQgb2YgUkNVIHRoYXQgd291bGQgYmUgZXZlbiBiZXR0ZXIu
CgpCdXQgbm93IEkgd29uZGVyOgoJaW52YWxpZGF0ZV9zdGFydCBoYXMgdG8gbWFyayBwYWdlIGFz
IGRpcnR5CgkodGhpcyBpcyB3aGF0IG15IHBhdGNoIGFkZGVkLCBjdXJyZW50IGNvZGUgbWlzc2Vz
IHRoaXMpLgoKCWF0IHRoYXQgcG9pbnQga2VybmVsIGNhbiBjb21lIGFuZCBtYWtlIHRoZSBwYWdl
IGNsZWFuIGFnYWluLgoKCUF0IHRoYXQgcG9pbnQgVlEgaGFuZGxlcnMgY2FuIGtlZXAgYSBjb3B5
IG9mIHRoZSBtYXAKCWFuZCBjaGFuZ2UgdGhlIHBhZ2UgYWdhaW4uCgoKQXQgdGhpcyBwb2ludCBJ
IGRvbid0IHVuZGVyc3RhbmQgaG93IHdlIGNhbiBtYXJrIHBhZ2UgZGlydHkKc2FmZWx5LgoKPiA+
IAo+ID4gPiA+ID4gQnR3LCBmb3Iga3ZtIGlvY3RsIGl0IHN0aWxsIHVzZXMgc3luY2hyb25pemVf
cmN1KCkgaW4ga3ZtX3ZjcHVfaW9jdGwoKSwKPiA+ID4gPiA+IChqdXN0IGEgbGl0dGxlIGJpdCBt
b3JlIGhhcmQgdG8gdHJpZ2dlcik6Cj4gPiA+ID4gQUZBSUsgdGhlc2UgbmV2ZXIgcnVuIGluIHJl
c3BvbnNlIHRvIGd1ZXN0IGV2ZW50cy4KPiA+ID4gPiBTbyB0aGV5IGNhbiB0YWtlIHZlcnkgbG9u
ZyBhbmQgZ3Vlc3RzIHN0aWxsIHdvbid0IGNyYXNoLgo+ID4gPiBXaGF0IGlmIGd1ZXN0IG1hbmFn
ZXMgdG8gZXNjYXBlIHRvIHFlbXU/Cj4gPiA+IAo+ID4gPiBUaGFua3MKPiA+IFRoZW4gaXQncyBn
b2luZyB0byBiZSBzbG93LiBXaHkgZG8gd2UgY2FyZT8KPiA+IFdoYXQgd2UgZG8gbm90IHdhbnQg
aXMgc3luY2hyb25pemVfcmN1IHRoYXQgZ3Vlc3QgaXMgYmxvY2tlZCBvbi4KPiA+IAo+IAo+IE9r
LCB0aGlzIGxvb2tzIGxpa2UgdGhhdCBJIGhhdmUgc29tZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUg
b2YgdGhlIHJlYXNvbiB3aHkKPiBzeW5jaHJvbml6ZV9yY3UoKSBpcyBub3QgcHJlZmVyYWJsZSBp
biB0aGUgcGF0aCBvZiBpb2N0bC4gQnV0IGluIGt2bSBjYXNlLAo+IGlmIHJjdV9leHBlZGl0ZWQg
aXMgc2V0LCBpdCBjYW4gdHJpZ2dlcnMgSVBJcyBBRkFJSy4KPiAKPiBUaGFua3MKPgoKWWVzLCBl
eHBlZGl0ZWQgaXMgbm90IGdvb2QgZm9yIHNvbWV0aGluZyBndWVzdCBjYW4gdHJpZ2dlci4KTGV0
J3MganVzdCB1c2Uga2ZyZWVfcmN1IGlmIHdlIGNhbi4gUGF1bCBzYWlkIGV2ZW4gdGhvdWdoCmRv
Y3VtZW50YXRpb24gc3RpbGwgc2F5cyBpdCBuZWVkcyB0byBiZSByYXRlLWxpbWl0ZWQsIHRoYXQK
cGFydCBpcyBiYXNpY2FsbHkgc3RhbGUgYW5kIHdpbGwgZ2V0IHVwZGF0ZWQuCgotLSAKTVNUIAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
