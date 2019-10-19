Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4DDDD63F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 05:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5zOs8+a6sAhDhQKnnViz2iEpNyvUuiUZ/fe5lkKus8=; b=UXFgo6TSl3ajsFLYbj01Qq6VR
	qwINhrXojJlH29oF4b542vY6GAStqzVFjjQb1wFzmqRWp2YO8bf5hItKhhteyBEiUDrSkPQ2/xeci
	aQpa+kza6hW2JC2E/oXRcAJvReddqpJyGAseYybwNDqQrpwkRgt3xtB+dXA7PL1O4cgK9yRl6oqSr
	/07pAl1qv/BZPdtLwFU4+yS1UCEarsMBoMW5flxwiwLDNTYDGfaiA1MM9I0rJdvbnEFD2a5X1HY/7
	9WEL9bVfYi8LQm9FrJ8Ap4eJC/CqYXbJXvF24Sl6j2/oDynh790CkWXPr08EwnSSMKL6BBdUz548S
	81SCoDL7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLey8-00014v-9Z; Sat, 19 Oct 2019 02:59:52 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLexx-00014G-24
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 02:59:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id r1so4336304pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 19:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=2+uRH+ZKfyt86cxDF8FPbZk+BAT5hdpRwMdmmfN7ogM=;
 b=I1HV2wIYlB/eRmfzqyirQiy5WOxMTDsX6O64/uCAnuoS5yCXBnyTNJe3QDZ7DlNCyT
 RzG/6iJSDKWZip6da9We9PVBS86OX602nr0C8kjWoKGAAylamEerSrFVg8kHVF7lMXwA
 2Duum+VhYbpqCx2DWQeERJBqSFPNtIyU3cM/s2m9Bz+Bzi8QE2kpXQTftSeXOeJdH3Tj
 YrZ/FzLZCdLeoEkKnF92uJE7SXSQzCukP0CX0meQk5Z7QwhYrU3kKUXCOvNp+aMLYVBj
 VOz8+nQpKhd2gYCcjghdM1Le5t26IZH7s8yqaVi39yesYZGgBI1Z/TB2wTY7j90tbF7C
 xorA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=2+uRH+ZKfyt86cxDF8FPbZk+BAT5hdpRwMdmmfN7ogM=;
 b=adHVSsNxRitBZR8w3dQLeaC1O5dVjyYepNe8qHghR7eiBexTKRcHGG5kEfXfYtija+
 hS8FA5K2abySRKnjzxyPIdDFuaB69pl3DX4Tqj5fsma//NMewktLKTimUoK5GBcxM1AI
 vJw2fyBSQzHA2t1p+WL55w49N3gll+lUOtYHlx0DUiOfModcYOY6DUq+ZBQASYcGEN2N
 Ou2mLiDNeI8CbtD7IZA7Y8FFYKBHYF5/9eO7/kfAYlu0CEDA2kXlpkPr/lOjA+ebCgbj
 PrnKXWGK/xNXgYdZtWTOu6lL3H6Y/LhxYk90ti5l6/98LMSGyo0pCniw41hObV7VYgEX
 hr8w==
X-Gm-Message-State: APjAAAWS902MvRwOMD3qwuyrNu8SE8u11gZO3RcXfMXDOxY2UB/hNu/V
 3KnJDVWVxl2mc9QHk+sFumM=
X-Google-Smtp-Source: APXvYqwUo5qntuziGSJ+94f1npjJFLL0NTPsMKVRIZ9LluEh6rPog3fPSLS/qbUFGW6O9ETfjUCi5w==
X-Received: by 2002:a17:90a:17c4:: with SMTP id
 q62mr14310962pja.83.1571453980149; 
 Fri, 18 Oct 2019 19:59:40 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id q30sm7759691pja.18.2019.10.18.19.59.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 19:59:39 -0700 (PDT)
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
To: Palmer Dabbelt <palmer@sifive.com>, will@kernel.org
References: <mhng-265b415f-c8ff-4727-a8fa-2f3e51937ba6@palmer-si-x1c4>
From: Jia He <hejianet@gmail.com>
Message-ID: <c4fa5937-eef2-8932-e8fe-0ee5d9f4de1a@gmail.com>
Date: Sat, 19 Oct 2019 10:59:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mhng-265b415f-c8ff-4727-a8fa-2f3e51937ba6@palmer-si-x1c4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_195941_127332_E092A747 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark.Rutland@arm.com, Justin.He@arm.com, Kaly.Xin@arm.com,
 Catalin.Marinas@arm.com, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mm@kvack.org, James.Morse@arm.com, linux-arm-kernel@lists.infradead.org,
 punitagrawal@gmail.com, maz@kernel.org, tglx@linutronix.de, nd@arm.com,
 akpm@linux-foundation.org, kirill.shutemov@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGFsbWVyCgpPbiAyMDE5LzEwLzE5IDQ6MzgsIFBhbG1lciBEYWJiZWx0IHdyb3RlOgo+IE9u
IFdlZCwgMTYgT2N0IDIwMTkgMTY6NDY6MDggUERUICgtMDcwMCksIHdpbGxAa2VybmVsLm9yZyB3
cm90ZToKPj4gSGV5IFBhbG1lciwKPj4KPj4gT24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDQ6MjE6
NTlQTSAtMDcwMCwgUGFsbWVyIERhYmJlbHQgd3JvdGU6Cj4+PiBPbiBUdWUsIDA4IE9jdCAyMDE5
IDA1OjM5OjQ0IFBEVCAoLTA3MDApLCB3aWxsQGtlcm5lbC5vcmcgd3JvdGU6Cj4+PiA+IE9uIFR1
ZSwgT2N0IDA4LCAyMDE5IGF0IDAyOjE5OjA1QU0gKzAwMDAsIEp1c3RpbiBIZSAoQXJtIFRlY2hu
b2xvZ3kgCj4+PiBDaGluYSkgd3JvdGU6Cj4+PiA+ID4gPiBPbiBNb24sIFNlcCAzMCwgMjAxOSBh
dCAwOTo1Nzo0MEFNICswODAwLCBKaWEgSGUgd3JvdGU6Cj4+PiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9tbS9tZW1vcnkuYyBiL21tL21lbW9yeS5jCj4+PiA+ID4gPiA+IGluZGV4IGIxY2E1MWEwNzlm
Mi4uMWY1NmIwMTE4ZWY1IDEwMDY0NAo+Pj4gPiA+ID4gPiAtLS0gYS9tbS9tZW1vcnkuYwo+Pj4g
PiA+ID4gPiArKysgYi9tbS9tZW1vcnkuYwo+Pj4gPiA+ID4gPiBAQCAtMTE4LDYgKzExOCwxMyBA
QCBpbnQgcmFuZG9taXplX3ZhX3NwYWNlIF9fcmVhZF9tb3N0bHkgPQo+Pj4gPiA+ID4gPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyOwo+Pj4gPiA+ID4gPsKgICNl
bmRpZgo+Pj4gPiA+ID4gPgo+Pj4gPiA+ID4gPiArI2lmbmRlZiBhcmNoX2ZhdWx0c19vbl9vbGRf
cHRlCj4+PiA+ID4gPiA+ICtzdGF0aWMgaW5saW5lIGJvb2wgYXJjaF9mYXVsdHNfb25fb2xkX3B0
ZSh2b2lkKQo+Pj4gPiA+ID4gPiArewo+Pj4gPiA+ID4gPiArwqDCoMKgIHJldHVybiBmYWxzZTsK
Pj4+ID4gPiA+ID4gK30KPj4+ID4gPiA+ID4gKyNlbmRpZgo+Pj4gPiA+ID4KPj4+ID4gPiA+IEtp
cmlsbCBoYXMgYWNrZWQgdGhpcywgc28gSSdtIGhhcHB5IHRvIHRha2UgdGhlIHBhdGNoIGFzLWlz
LCBob3dldmVyIAo+Pj4gaXNuJ3QKPj4+ID4gPiA+IGl0IHRoZSBjYXNlIHRoYXQgL21vc3QvIGFy
Y2hpdGVjdHVyZXMgd2lsbCB3YW50IHRvIHJldHVybiB0cnVlIGZvcgo+Pj4gPiA+ID4gYXJjaF9m
YXVsdHNfb25fb2xkX3B0ZSgpPyBJbiB3aGljaCBjYXNlLCB3b3VsZG4ndCBpdCBtYWtlIG1vcmUg
c2Vuc2UgZm9yCj4+PiA+ID4gPiB0aGF0IHRvIGJlIHRoZSBkZWZhdWx0LCBhbmQgaGF2ZSB4ODYg
YW5kIGFybTY0IHByb3ZpZGUgYW4gb3ZlcnJpZGU/IEZvcgo+Pj4gPiA+ID4gZXhhbXBsZSwgYXJl
bid0IG1vc3QgYXJjaGl0ZWN0dXJlcyBzdGlsbCBnb2luZyB0byBoaXQgdGhlIGRvdWJsZSBmYXVs
dAo+Pj4gPiA+ID4gc2NlbmFyaW8gZXZlbiB3aXRoIHlvdXIgcGF0Y2ggYXBwbGllZD8KPj4+ID4g
Pgo+Pj4gPiA+IE5vLCBhZnRlciBhcHBseWluZyBteSBwYXRjaCBzZXJpZXMsIG9ubHkgdGhvc2Ug
YXJjaGl0ZWN0dXJlcyB3aGljaCAKPj4+IGRvbid0IHByb3ZpZGUKPj4+ID4gPiBzZXR0aW5nIGFj
Y2VzcyBmbGFnIGJ5IGhhcmR3YXJlIEFORCBkb24ndCBpbXBsZW1lbnQgdGhlaXIgCj4+PiBhcmNo
X2ZhdWx0c19vbl9vbGRfcHRlCj4+PiA+ID4gd2lsbCBoaXQgdGhlIGRvdWJsZSBwYWdlIGZhdWx0
Lgo+Pj4gPiA+Cj4+PiA+ID4gVGhlIG1lYW5pbmcgb2YgdHJ1ZSBmb3IgYXJjaF9mYXVsdHNfb25f
b2xkX3B0ZSgpIGlzICJ0aGlzIGFyY2ggZG9lc24ndCAKPj4+IGhhdmUgdGhlIGhhcmR3YXJlCj4+
PiA+ID4gc2V0dGluZyBhY2Nlc3MgZmxhZyB3YXksIGl0IG1pZ2h0IGNhdXNlIHBhZ2UgZmF1bHQg
b24gYW4gb2xkIHB0ZSIKPj4+ID4gPiBJIGRvbid0IHdhbnQgdG8gY2hhbmdlIG90aGVyIGFyY2hp
dGVjdHVyZXMnIGRlZmF1bHQgYmVoYXZpb3IgaGVyZS4gU28gCj4+PiBieSBkZWZhdWx0LAo+Pj4g
PiA+IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBpcyBmYWxzZS4KPj4+ID4KPj4+ID4gLi4uYW5k
IG15IGNvbXBsYWludCBpcyB0aGF0IHRoaXMgaXMgdGhlIG1ham9yaXR5IG9mIHN1cHBvcnRlZCBh
cmNoaXRlY3R1cmVzLAo+Pj4gPiBzbyB5b3UncmUgZml4aW5nIHNvbWV0aGluZyBmb3IgYXJtNjQg
d2hpY2ggYWxzbyBhZmZlY3RzIGFybSwgcG93ZXJwYywKPj4+ID4gYWxwaGEsIG1pcHMsIHJpc2N2
LCAuLi4KPj4+ID4KPj4+ID4gQ2hhbmNlcyBhcmUsIHRoZXkgd29uJ3QgZXZlbiByZWFsaXNlIHRo
ZXkgbmVlZCB0byBpbXBsZW1lbnQKPj4+ID4gYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIHVudGls
IHNvbWVib2R5IHJ1bnMgaW50byB0aGUgZG91YmxlIGZhdWx0IGFuZAo+Pj4gPiB3YXN0ZXMgbG90
cyBvZiB0aW1lIGRlYnVnZ2luZyBpdCBiZWZvcmUgdGhleSBzcG90IHlvdXIgcGF0Y2guCj4+Pgo+
Pj4gSWYgSSB1bmRlcnN0YW5kIHRoZSBzZW1hbnRpY3MgY29ycmVjdGx5LCB3ZSBzaG91bGQgaGF2
ZSB0aGlzIHNldCB0byB0cnVlLsKgIEkKPj4+IGRvbid0IGhhdmUgYW55IGNvbnRleHQgaGVyZSwg
YnV0IHdlJ3ZlIGdvdAo+Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFRoZSBrZXJuZWwgYXNzdW1lcyB0aGF0
IFRMQnMgZG9uJ3QgY2FjaGUgaW52YWxpZAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogZW50cmllcywgYnV0IGluIFJJU0MtViwgU0ZFTkNFLlZNQSBzcGVjaWZpZXMgYW4KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIG9yZGVyaW5nIGNvbnN0cmFpbnQsIG5v
dCBhIGNhY2hlIGZsdXNoOyBpdCBpcwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogbmVjZXNzYXJ5IGV2ZW4gYWZ0ZXIgd3JpdGluZyBpbnZhbGlkIGVudHJpZXMuCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbG9jYWxfZmx1c2hfdGxiX3BhZ2UoYWRkcik7Cj4+Pgo+Pj4gaW4gZG9fcGFnZV9mYXVs
dCgpLgo+Pgo+PiBPaywgYWx0aG91Z2ggSSB0aGluayB0aGlzIGlzIHJlYWxseSBhYm91dCB3aGV0
aGVyIG9yIG5vdCB5b3VyIGhhcmR3YXJlIGNhbgo+PiBtYWtlIGEgcHRlIHlvdW5nIHdoZW4gYWNj
ZXNzZWQsIG9yIHdoZXRoZXIgeW91IHRha2UgYSBmYXVsdCBhbmQgZG8gaXQKPj4gYnkgdXBkYXRp
bmcgdGhlIHB0ZSBleHBsaWNpdGx5Lgo+Pgo+PiB2MTIgb2YgdGhlIHBhdGNoZXMgZGlkIGNoYW5n
ZSB0aGUgZGVmYXVsdCwgc28geW91IHNob3VsZCBiZSAic2FmZSIgd2l0aAo+PiB0aG9zZSBlaXRo
ZXIgd2F5Ogo+Pgo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgt
YXJtLWtlcm5lbC8yMDE5LU9jdG9iZXIvNjg2MDMwLmh0bWwKPgo+IE9LLCB0aGF0IGZlbmNlIGlz
IGJlY2F1c2Ugd2UgYWxsb3cgaW52YWxpZCB0cmFuc2xhdGlvbnMgdG8gYmUgY2FjaGVkLCB3aGlj
aCAKPiBpcyBhIGNvbXBsZXRlbHkgZGlmZmVyZW50IGlzc3VlLgo+Cj4gUklTQy1WIGltcGxlbWVu
dGF0aW9ucyBhcmUgYWxsb3dlZCB0byBoYXZlIHNvZnR3YXJlIG1hbmFnZWQgYWNjZXNzZWQvZGly
dHkgCj4gYml0cy7CoCBGb3Igc29tZSByZWFzb24gSSB0aG91Z2h0IHdlIHdlcmUgcmVseWluZyBv
biB0aGUgZmlybXdhcmUgdG8gaGFuZGxlIAo+IHRoaXMsIGJ1dCBJIGNhbid0IGFjdHVhbGx5IGZp
bmQgdGhlIGNvZGUgc28gSSBtaWdodCBiZSBjcmF6eS7CoCBXaGVyZXZlciBpdCdzIAo+IGRvbmUs
IHRoZXJlJ3Mgbm8gc3BlYyBlbmZvcmNpbmcgaXQgc28gd2Ugc2hvdWxkIGxlYXZlIHRoaXMgdHJ1
ZSBvbiBSSVNDLVYuCj4KVGhhbmtzIGZvciB0aGUgY29uZmlybWF0aW9uLiBTbyB3ZSBjYW4ga2Vl
cCB0aGUgZGVmYXVsdCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlIAoocmV0dXJuIHRydWUpIG9uIFJJ
U0MtVi4KCgpUaGFua3MuCgoKLS0tCkNoZWVycywKSnVzdGluIChKaWEgSGUpCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
