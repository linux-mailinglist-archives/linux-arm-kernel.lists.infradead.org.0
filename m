Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA0B486AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRwEU1e/Vrl1bLKan93G8Y/33CvVQcjLV4QDXrLP+pE=; b=Le500FbVqKUAnB
	vuwLVdsmRAuf4Zn2p7q0jMJs04nT5t2jmGBbGEUyzU2rAnuirsL3X1fJeCVTWdphSrKMSo6PBfLMw
	wscKbbADd5BN8/9B19EihhOSZ2hf1MNmNWQGQDnDVeYri1bu8aEiNL2MTvYvIC/L34h3VkyJiNvWN
	273id7vhDJj+hRrzF/9Px4CeVwBn2nDwqbLtfXvDGDLj9nms28ECgkJoE8ScT4PGMk1U6fZ5v/BZf
	z++EjcGPOq3XdhSq4GLksUL+kVAaAtbBbBixg0eRH/Hs/wEzb1dJwvU07Y9Pz8Y2jBUGJxwljaCm+
	iju1e6wTEO4bCGqC783Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctHk-0002zJ-54; Mon, 17 Jun 2019 15:11:04 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctHW-0002yq-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:10:51 +0000
Received: by mail-qk1-f194.google.com with SMTP id t8so6389104qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 08:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=54cAo5sToazz1E9yyx60Dd6u83R9yNhhfYqnU/wYvBY=;
 b=bWz2MQvvKGVidry+VC4Qwmsm7ZBos2unQG7Mrar2giY4GAsB5sVmhPrsAP9Ppx1jXw
 2el/WUsLwN4PJ/DMoKyBgsgkH/v5SlbtKYnwN4Imd6KBQUaCx13hC0KWA0LJMCjKywoa
 VqQ6MV9HXtJCjcDxRVBH4knx1tYXeF7WCK0U65yWsbgugkb8NxCAcKkWuRQDldYQE1jq
 D9gZ0UOv3wJ98BnqQ/5yArPHe0SaVFaS/k9Cq/ekHVW8RLsXsR8t1o1BIhtiwv9Xme4G
 i/n4SE2KBUkTkS99Epd8masfS+QWj0nl2pvFEm5GkHFSVUeALxlb3FGl0L3ZX/HkGLds
 u7bA==
X-Gm-Message-State: APjAAAVCJaO1jFz7/0fWU5DDvaU9GAdc6AjI/SEIcJhojooHF9vFd4Ck
 mHTDHPU94O4b1DSaRvTjjw+td0io9I3rx91ndGQ=
X-Google-Smtp-Source: APXvYqycbp3OzbqjWTCHqwJrr+j4yGwSF9O1ZfciD8f4z6gSkVtEfsede0TOf2zxNdmTqlb0SwFt1Lpir7otOz6EHUY=
X-Received: by 2002:ae9:c106:: with SMTP id z6mr68991875qki.285.1560784249188; 
 Mon, 17 Jun 2019 08:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <87a7eg9s0o.fsf@zen.linaroharston>
In-Reply-To: <87a7eg9s0o.fsf@zen.linaroharston>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 17:10:32 +0200
Message-ID: <CAK8P3a2evZN5aHFRtc4MQvyvgtuT+djD-gzgc5TBcMKjJ6bUYg@mail.gmail.com>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_081050_486700_9ADB1DF5 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTcsIDIwMTkgYXQgNDo1OSBQTSBBbGV4IEJlbm7DqWUgPGFsZXguYmVubmVl
QGxpbmFyby5vcmc+IHdyb3RlOgo+IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyaXRl
czoKPiA+IE9uIE1vbiwgSnVuIDE3LCAyMDE5IGF0IDE6MjYgUE0gV2lsbCBEZWFjb24gPHdpbGwu
ZGVhY29uQGFybS5jb20+IHdyb3RlOgo+ID4+IE9uIE1vbiwgSnVuIDE3LCAyMDE5IGF0IDEyOjQy
OjExUE0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPj4gSSBzdXNwZWN0IEkgbmVlZCB0
byBmaWd1cmUgb3V0IHdoYXQgZ2Vua3N5bXMgaXMgZG9pbmcsIGJ1dCBJJ20gbmVydm91cwo+ID4+
IGFib3V0IGV4cG9zaW5nIHRoaXMgYXMgYW4gYXJyYXkgdHlwZSB3aXRob3V0IHVuZGVyc3RhbmRp
bmcgd2hldGhlciBvcgo+ID4+IG5vdCB0aGF0IGhhcyBjb25zZXF1ZW5jZXMgZm9yIGl0cyBvcGVy
YXRpb24uCj4gPgo+ID4gVGhlIGVudGlyZSBwb2ludCBpcyBnZW5rc3ltcyBpcyB0byBlbnN1cmUg
dGhhdCB0eXBlcyBvZiBleHBvcnRlZCBzeW1ib2xzCj4gPiBhcmUgY29tcGF0aWJsZS4gVG8gZG8g
dGhpcywgaXQgaGFzIGEgbGltaXRlZCBwYXJzZXIgZm9yIEMgc291cmNlIGNvZGUgdGhhdAo+ID4g
dW5kZXJzdGFuZHMgdGhlIGJhc2ljIHR5cGVzIChjaGFyLCBpbnQsIGxvbmcsIF9Cb29sLCBldGMp
IGFuZCBob3cgdG8KPiA+IGFnZ3JlZ2F0ZSB0aGVtIGludG8gc3RydWN0cyBhbmQgZnVuY3Rpb24g
YXJndW1lbnRzLiBUaGlzIHByb2Nlc3MgaGFzCj4gPiBhbHdheXMgYmVlbiBmcmFnaWxlLCBhbmQg
aXQgY2xlYXJseSBicmVha3Mgd2hlbiBpdCBmYWlscyB0byB1bmRlcnN0YW5kIGEKPiA+IHBhcnRp
Y3VsYXIgdHlwZS4KPgo+IFNob3VsZG4ndCB0aGUgc29sdXRpb24gZm9yIHRoaXMgYmUgdG8gZml4
IGdlbmtzeW1zIHRvIGJlIGxlc3MgZnJhZ2lsZQo+IGFuZCBtb3JlIHVuZGVyc3RhbmRpbmc/IFRo
ZSBjb2RlIGJhc2UgZG9lc24ndCBzZWVtIHRvIGJlIGZ1bGwgb2YgdGhlc2UKPiBzb3J0cyBvZiBp
ZmRlZiB3b3JrYXJvdW5kcy4KCkl0IGlzIG9uZSBvZiB0aGUgdGhpbmdzIEkgdHJpZWQgYmVmb3Jl
IEkgZ290IHRvIHRoZSB2ZXJzaW9uIEkgc2VuZC4KVW5mb3J0dW5hdGVseQp0aGUgZ2Vua3N5bXMg
Y29kZWJhc2UgaXMgYSBiaWcgY29tcGxleCBhbmQgSSBxdWlja2x5IGdvdCBsb3N0IGluIGl0LgoK
WW91J3JlIHdlbGNvbWUgdG8gdm9sdW50ZWVyIGZpeGluZyBpdCB0aG91Z2guIE15IG1haW4gcHJv
YmxlbSB3YXMgdGhhdApJIGNvdWxkbid0IGV2ZW4gZmluZCBvdXQgd2hpY2ggdHlwZXMgZXhhY3Rs
eSBhcmUgc3VwcG9ydGVkLCBhcyBfX3VpbnQxMjhfdAppcyBub3QgZXZlbiBpbiB0aGUgZ2NjIGRv
Y3VtZW50YXRpb24uICJ1bnNpZ25lZCBfX2ludDEyOCIgaXMgYSBkb2N1bWVudGVkCnR5cGUsIGJ1
dCBpcyBhbHNvIG5vdCBpbiBnZW5rc3ltcy4KCiAgICAgICAgQXJuZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
