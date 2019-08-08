Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF4086D04
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/d5yoNx234H6go4sm1VnLxvXgbUQN4546iYnyBFEOnM=; b=aofae6GhRsoTz8
	cbdRPPC13eKpftxcavE0YeBxac0Kw3ySe4Qjbx21eG2EKiqzWD46ozTa1WYx3wZBEehEIGLgPM7W4
	Iobda0tiCpL+KIydpitX4GG82viOysM5Kl5OXLZ6TQiZP5gkX/gDCtp+xrNIe+ZzKg8MHWUgJt9HG
	viAoazq0PKTz8TUPWZWVbwcqRS7lRWJD0KSd2R2YKUD/5z5laoa+0bk+sT9NyIxDTQD8TQcXdxoAE
	Aei1t6X731cegwObRmO+yjEjjBVvP/m+qcwqadYt9NMW2JWJKnVhOyG0Tm2POESafBLpT/Hz4PXW+
	mRzrwhPP0jWJRu9sK+8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqkF-0003i3-F2; Thu, 08 Aug 2019 22:18:51 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqk6-0003hk-Sf
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:18:43 +0000
Received: by mail-qk1-x741.google.com with SMTP id d15so70142270qkl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 15:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=QLZzrW7ZdQW83kYujBZ//d/WvY4fqGhP4bcyYPW9Wjc=;
 b=kucOejN1r5TWtNxTNxQFaC04oKgS96Oev3tr4Te4PVP6k4yXz623fypMLZr3/X8yv8
 yYIZzly2I5mO16T9Xl4GiHeCWVocTvBvWrz0P/QIePxoblkfu0eX5Ws/NOPaIle6ZfaH
 4FvFr6jV8rB20loX4dga6EWpUnjbDEUZz7OkphtQYVl/GGHPa3AR7Hxg5pjGYAk67Udz
 KgjiRyeWagUouAiQE/Rsu/7DKT3msHJmkYywIa0hODPn31BQxsM4a9VHlwesc0BeIBsS
 uc7Jg2+dc08wTv03vOzZX3A+2Ev1F/TCQSd+hza4KTbN1Hp+6r2yylCI0vzoFr8E69Cn
 tGRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=QLZzrW7ZdQW83kYujBZ//d/WvY4fqGhP4bcyYPW9Wjc=;
 b=GT0CpUXVzJjxIgw3jV+GWkKb3PG9C6E1gRO0ZDSfrd7QUqNeaKITaTed0bgNMe+8VA
 yJBbJ0QGPF4v2854VWz0CXzGU+scHyXittH3yGVqGq9uFN2dLysijQ2FYF+Ft/SokGFC
 nXsMCR09YTVrQfG9jxo7fsQZnmerUjorGEt3WZN2IZTv/Fsvlbe+DWSX+pAdlO5x4lhc
 u3MT6yKGY4w1x209bkoHorWUj5bbnXzwaFE2lmRFfaz4hQ1TS6tvjQLdor1xMXdjLDOO
 CeDoQHd2Feu2Z6kGsQE1+QT/CN/6M4qDF4WgqCpmIZWLKm8L2atIZIYGE6PHJ0B0WkTG
 +znQ==
X-Gm-Message-State: APjAAAVOKnT6ynEatqBFS6GiD6UbQnffnVomYdarGTARX7Q93yLFUlKV
 GPwZWmwUevn4hMZBMh2DDGsAAbFGRNFadA==
X-Google-Smtp-Source: APXvYqxVYTQ1ShONsiy0DCWLZh4ngafA6BDzAMkeTZxXGi0m+ojO6+oil5OC6CsuH6ZUxDOUw/zVsg==
X-Received: by 2002:a05:620a:70f:: with SMTP id
 15mr15546578qkc.171.1565302721558; 
 Thu, 08 Aug 2019 15:18:41 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id u4sm41470668qkb.16.2019.08.08.15.18.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 15:18:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190808103808.GC46901@lakrids.cambridge.arm.com>
Date: Thu, 8 Aug 2019 18:18:39 -0400
Message-Id: <D2A2F2B9-0563-4DF6-8E77-F191A768CE4E@lca.pw>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
To: Mark Rutland <mark.rutland@arm.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_151842_949931_972F8CBA 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyA4LCAyMDE5LCBhdCA2OjM4IEFNLCBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPiB3cm90ZToKPiAKPiBPbiBXZWQsIEF1ZyAwNywgMjAxOSBhdCAxMToyOToxNlBN
IC0wNDAwLCBRaWFuIENhaSB3cm90ZToKPj4gVGhlIGNvbW1pdCAxNTU0MzNjYjM2NWUgKCJhcm02
NDogY2FjaGU6IFJlbW92ZSBzdXBwb3J0IGZvciBBU0lELXRhZ2dlZAo+PiBWSVZUIEktY2FjaGVz
IikgaW50cm9kdWNlZCBzb21lIGNvbXBpYXRpb24gd2FybmluZ3MgZnJvbSBHQ0MgKGFuZAo+PiBD
bGFuZykgd2l0aCAtV2luaXRpYWxpemVyLW92ZXJyaWRlcyksCj4+IAo+PiBhcmNoL2FybTY0L2tl
cm5lbC9jcHVpbmZvLmM6Mzg6MjY6IHdhcm5pbmc6IGluaXRpYWxpemVkIGZpZWxkCj4+IG92ZXJ3
cml0dGVuIFstV292ZXJyaWRlLWluaXRdCj4+IFtJQ0FDSEVfUE9MSUNZX1ZJUFRdICA9ICJWSVBU
IiwKPj4gICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPj4gYXJjaC9hcm02NC9rZXJuZWwv
Y3B1aW5mby5jOjM4OjI2OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IKPj4gJ2ljYWNo
ZV9wb2xpY3lfc3RyWzJdJykKPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjM5OjI2OiB3
YXJuaW5nOiBpbml0aWFsaXplZCBmaWVsZAo+PiBvdmVyd3JpdHRlbiBbLVdvdmVycmlkZS1pbml0
XQo+PiBbSUNBQ0hFX1BPTElDWV9QSVBUXSAgPSAiUElQVCIsCj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+Cj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzozOToyNjogbm90ZTog
KG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yCj4+ICdpY2FjaGVfcG9saWN5X3N0clszXScpCj4+IGFy
Y2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzo0MDoyNzogd2FybmluZzogaW5pdGlhbGl6ZWQgZmll
bGQKPj4gb3ZlcndyaXR0ZW4gWy1Xb3ZlcnJpZGUtaW5pdF0KPj4gW0lDQUNIRV9QT0xJQ1lfVlBJ
UFRdICA9ICJWUElQVCIsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn4KPj4gYXJj
aC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjQwOjI3OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlv
biBmb3IKPj4gJ2ljYWNoZV9wb2xpY3lfc3RyWzBdJykKPj4gCj4+IGJlY2F1c2UgaXQgaW5pdGlh
bGl6ZXMgaWNhY2hlX3BvbGljeV9zdHJbMCAuLi4gM10gdHdpY2UuIFNpbmNlCj4+IGFybTY0IGRl
dmVsb3BlcnMgYXJlIGtlZW4gdG8ga2VlcCB0aGUgc3R5bGUgb2YgaW5pdGlhbGl6aW5nIGEgc3Rh
dGljCj4+IGFycmF5IHdpdGggYSBub24temVybyBwYXR0ZXJuIGZpcnN0LCBqdXN0IGRpc2FibGUg
dGhvc2Ugd2FybmluZ3MgZm9yCj4+IGJvdGggR0NDIGFuZCBDbGFuZyBvZiB0aGlzIGZpbGUuCj4+
IAo+PiBGaXhlczogMTU1NDMzY2IzNjVlICgiYXJtNjQ6IGNhY2hlOiBSZW1vdmUgc3VwcG9ydCBm
b3IgQVNJRC10YWdnZWQgVklWVCBJLWNhY2hlcyIpCj4+IFNpZ25lZC1vZmYtYnk6IFFpYW4gQ2Fp
IDxjYWlAbGNhLnB3Pgo+IAo+IFRoaXMgaXMgX25vdF8gYSBmaXgsIGFuZCBzaG91bGQgbm90IHJl
cXVpcmUgYmFja3BvcnRpbmcgdG8gc3RhYmxlIHRyZWVzLgoKRnJvbSBteSBleHBlcmllbmNlLCB0
aGUgc3RhYmxlIEFJIHdpbGwgcGljayB1cCB3aGF0ZXZlciB0aGV5IHdhbnQgdG8gYmFja3BvcnQK
bm90IG1hdHRlciBpZiB0aGVyZSBJcyBhIOKAnEZpeGVz4oCdIHRhZyBvciBub3QgdW5sZXNzIGl0
IGlzIG9uZSBvZiB0aG9zZSBzdWJzeXN0ZW1zIGxpa2UKTmV0d29ya2luZyB0aGF0IGV4Y2x1c2l2
ZWx5IG1hbnVhbGx5IGZsYWcgZm9yLiBiYWNrcG9ydGluZyBieSB0aGUgbWFpbnRhaW5lci4gIAoK
PiAKPiBXaGF0IGFib3V0IGFsbCB0aGUgb3RoZXIgaW5zdGFuY2VzIHRoYXQgd2UgaGF2ZSBpbiBt
YWlubGluZT8KCkkgaGF2ZSBub3QgaGFkIGEgY2hhbmNlIHRvIHJldmlldyBhbGwgaW5zdGFuY2Vz
IHlldC4gSXQgaXMgbm90IHVudXN1YWxseSB0byBmaXggb25lCndhcm5pbmcgYXQgYSB0aW1lLCBh
bmQgdGhlbiBnbyBvbiBmaXhpbmcgc29tZSBtb3JlIGlmIHRpbWUgcGVybWl0LgoKPiAKPiBJIHJl
YWxseSBkb24ndCB0aGluayB0aGF0IHdlIG5lZWQgdG8gZ28gZG93biB0aGlzIHJvYWQ7IHdlJ3Jl
IGp1c3QgZ29pbmcKPiB0byBlbmQgdXAgYWRkaW5nIHRoaXMgdG8gZXZlcnkgZmlsZSB0aGF0IGhh
cHBlbnMgdG8gaW5jbHVkZSBhIGhlYWRlcgo+IHVzaW5nIHRoaXMgc2NoZW1l4oCmCgpIb3cgYWJv
dXQgZGlzYWJsZSB0aGVtIHRoaXMgd2F5IGluIGEgdG9wIGxldmVsIGxpa2UgYXJjaC9hcm02NC9N
YWtlZmlsZSBvcgphcmNoL2FybTY0L2tlcm5lbC9NYWtlZmlsZT8gVGhlcmVmb3JlLCB0aGVyZSBp
cyBubyBuZWVkIHRvIGFkZCB0aGlzIHRvCmV2ZXJ5IGZpbGUsIGJ1dCB3aXRoIGEgZHJhd2JhY2sg
dGhhdCBpdCBjb3VsZCBtaXNzIGEgZmV3IHJlYWwgaXNzdWVzIHRoZXJlCmluIHRoZSBmdXR1cmUg
d2hpY2ggcHJvYmFibHkgbm90IG1hbnkgcGVvcGxlIGFyZSBjaGVja2luZyBmb3IgdGhlbSBvZgp0
aGUgYXJtNjQgc3Vic3lzdGVtIG5vd2FkYXlzLgoKPiAKPiBQbGVhc2UganVzdCB0dXJuIHRoaXMg
b2ZmIGJ5IGRlZmF1bHQgZm9yIGNsYW5nLgoKQXMgbWVudGlvbmVkIGJlZm9yZSwgaXQgaXMgdmVy
eSB2YWx1YWJsZSB0byBydW4g4oCcbWFrZSBXPTHigJ0gZ2l2ZW4gaXQgZm91bmQKbWFueSByZWFs
IGRldmVsb3BlciBtaXN0YWtlcyB3aGljaCB3aWxsIGVuYWJsZSDigJwtV292ZXJyaWRlLWluaXTi
gJ0gZm9yIGJvdGgKY29tcGlsZXJzLiBFdmVuIOKAnC1Xb3ZlcnJpZGUtaW5pdOKAnSBpdHNlbGYg
aXMgdXNlZnVsIGZpbmQgcmVhbCBpc3N1ZXMgYXMgaW4sCgphZTVlMDMzZDY1YSAo4oCcbWZkOiBy
azgwODogRml4IFJLODE4X0lSUV9ESVNDSEdfSUxJTSBpbml0aWFsaXplcuKAnSkKMzJkZjM0ZDg3
NWJiICjigJxbbWVkaWFdIHJjOiBpbWctaXI6IGp2YzogUmVtb3ZlIHVudXNlZCBuby1sZWFkZXIg
dGltaW5nc+KAnSkKCkVzcGVjaWFsbHksIHRvIGZpbmQgcmVkdW5kYW50IGluaXRpYWxpemF0aW9u
cyBpbiBsYXJnZSBzdHJ1Y3R1cmVzLiBlLmcuLAoKZTZlYTBiOTE3ODc1ICjigJxbbWVkaWFdIGR2
Yl9mcm9udGVuZDogRG9uJ3QgZGVjbGFyZSB2YWx1ZXMgdHdpY2UgYXQgYSB0YWJsZeKAnSkKCkl0
IGlzIGltcG9ydGFudCB0byBrZWVwIHRoZSBub2lzZS1sZXZlbCBhcyBsb3cgYXMgcG9zc2libGUg
Ynkga2VlcGluZyB0aGUKYW1vdW50IG9mIGZhbHNlIHBvc2l0aXZlcyB1bmRlciBjb250cm9sIHRv
IGJlIHRydWx5IGJlbmVmaXQgZnJvbSB0aG9zZQp2YWx1YWJsZSBjb21waWxlciB3YXJuaW5ncy4g
Cgo+IAo+IElmIHdlIHdhbnQgdG8gZW5hYmxlIHRoaXMsIHdlIG5lZWQgYSBtZWNoYW5pc20gdG8g
cGVybWl0IG92ZXJyaWRhYmxlCj4gYXNzaWdubWVudHMgYXMgd2UgdXNlIHJhbmdlIGluaXRpYWxp
emVycyBmb3IuCgpJIGFtIG5vdCBzdXJlIHRoYXQgaXQgaXMgd29ydGggZmlsbGluZyBhIFJGRSBm
b3IgY29tcGlsZXJzIG9mIHRoYXQgZmVhdHVyZS4KSSBmZWVsIGxpa2UgdGhlIHJhbmdlIGluaXRp
YWxpemVycyBqdXN0IGFub3RoZXIgd2F5IHRvIGluaXRpYWxpemUgYW4gYXJyYXksIGFuZAogaXQg
aXMganVzdCBlYXNpZXIgdG8gbWFrZSBtaXN0YWtlcyB3aXRoIHVuaW50ZW5kZWQgZG91YmxlLWlu
aXRpYWxpemF0aW9ucy4KVGhlIGNvbXBpbGVyIGRldmVsb3BlcnMgcHJvYmFibHkgcmVjb21tZW5k
IHRvIGVuZm9yY2UgbW9yZSBvZgrigJwtV292ZXJyaWRlLWluaXTigJ0gZm9yICB0aGUgcmFuZ2Ug
aW5pdGlhbGl6ZXJzIHJhdGhlciB0aGFuIHBlcm1pdHRpbmcgaXQuCgo+IAo+IFRoYW5rcywKPiBN
YXJrLgo+IAo+PiAtLS0KPj4gYXJjaC9hcm02NC9rZXJuZWwvTWFrZWZpbGUgfCAzICsrKwo+PiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9rZXJuZWwvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2tlcm5lbC9NYWtlZmlsZQo+PiBpbmRl
eCA0Nzg0OTFmMDdiNGYuLjM5N2VkNWY3YmUxZSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9r
ZXJuZWwvTWFrZWZpbGUKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvTWFrZWZpbGUKPj4gQEAg
LTExLDYgKzExLDkgQEAgQ0ZMQUdTX1JFTU9WRV9mdHJhY2UubyA9ICQoQ0NfRkxBR1NfRlRSQUNF
KQo+PiBDRkxBR1NfUkVNT1ZFX2luc24ubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQo+PiBDRkxBR1Nf
UkVNT1ZFX3JldHVybl9hZGRyZXNzLm8gPSAkKENDX0ZMQUdTX0ZUUkFDRSkKPj4gCj4+ICtDRkxB
R1NfY3B1aW5mby5vICs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIG92ZXJyaWRlLWluaXQp
Cj4+ICtDRkxBR1NfY3B1aW5mby5vICs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIGluaXRp
YWxpemVyLW92ZXJyaWRlcykKPj4gKwo+PiAjIE9iamVjdCBmaWxlIGxpc3RzLgo+PiBvYmoteQkJ
CTo9IGRlYnVnLW1vbml0b3JzLm8gZW50cnkubyBpcnEubyBmcHNpbWQubwkJXAo+PiAJCQkgICBl
bnRyeS1mcHNpbWQubyBwcm9jZXNzLm8gcHRyYWNlLm8gc2V0dXAubyBzaWduYWwubwlcCj4+IC0t
IAo+PiAyLjIwLjEgKEFwcGxlIEdpdC0xMTcpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
