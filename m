Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E459BCB65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=riRublF6EeNoaur3n15lCDbZ6qv9PmD+K/99JsodQk0=; b=YHkIVqlfhaKu68+g3wTs+A42d
	EE82U4X6eLC9pn11OnrNQFvAzwUDzVXcrxg2Aj0TiFSjGZ+TJvDXneLlGAJPh/XNTWya7X2AET3HI
	aj0AiZ21SQTqh1fv+X+/tSmDeAs8owPayiQrJjI6d0zpo3ACB5l2n2JiWP7d1NRsVLys+C55LX/xU
	/BJ40gfBpI2jSqDNZ6rdI4Oqk3548MT3gIXBuleSp+gDboZk0qF/hq4y/9L1NmD7k4zciNppt0g0P
	uc+TanNzxkR/9d/RrFiM/fzIh9oB/1gXO9Jib1yjmDbuXeu+NC+xWH6qHmHy1EgEyNGefYags/65T
	SlYfT0vqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCmlC-0008FX-1d; Tue, 24 Sep 2019 15:29:50 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCmks-0008Em-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:29:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so1593910pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 08:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=wX1ufemuVcZ1/+F45a1SkQ+EbtNri2rD1aWT8xtEdFA=;
 b=tV4SoPthoWRTYODIqZrV/aC6Sy0AUAsJmY8+miZnW8eGoJuGgrCmC2Gwxs9g7wu6n4
 HZ1nGz2DO267ukmKLDkhgAtHlfP1NoS/zJ8Ad3Ab33inKm+oOlmqbwG/QLyiIyhwEguT
 Tva3X+3cOLK30dewFhu0Z44DTxNbYT7IKxH/q6l1UEPga27KweT6Y3IP9sDB8qFP6Kdz
 oGjfVPGuNPC8+0JJp3YnfHfHw/OEWuBrBW7/CEUEkX2lwARfoDqV5bTjehqV8n4KvXnp
 AQIxSAozmjR/alnw9QBwiHhJL7FKChxKg953mKgDnzqbwQNJljZr48U4PA6ehsAlk3Es
 k3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=wX1ufemuVcZ1/+F45a1SkQ+EbtNri2rD1aWT8xtEdFA=;
 b=ev58onZFEh6iZ8qviMQfum4c+SAgS9/lqJf/LYNcc5ol6jHgWnF5YQsfg0mEPfb9g7
 EbOvDDmpeRXV9f99ANyUnhnImen968TMhCQZPnzbiTLRr8+J8dF9aj+a+Ejq/ogXtrMi
 rJEtglUvUg354otXOW7EV9MSn65fQDYlxQnYL2YwHwIWim27LkgsBhE18ri/8VTrhAAc
 DCaMUUWVkdRCO8caaizuqbup9LsR5O3OhmLWiZ9Gj/PmVVFBkc9ckPfgzFMVjQVdj2yt
 Nv9ERdyNQHFJH702oonTwO5inqsI40xWOKd2fNYVIFDZdV2Euc2jQsNc5jvBnzTdbDP5
 WgDg==
X-Gm-Message-State: APjAAAXyk0QVxA7/4MzruqeQB4JzLMy57NbSTTPZE60SjVRlpwScQh5B
 +kkIVFMBlLxSmUrfKlPAABh9rmiwq2g=
X-Google-Smtp-Source: APXvYqw6B/kU84DrWlicmm5F5ycfnicD7nHzLATMgZQ9XTa2Px4+hI7yUIysB8iSsBop1/FAD9fgHQ==
X-Received: by 2002:a62:1658:: with SMTP id 85mr4065421pfw.195.1569338970064; 
 Tue, 24 Sep 2019 08:29:30 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id q2sm3656607pfg.144.2019.09.24.08.29.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 08:29:29 -0700 (PDT)
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
To: Catalin Marinas <catalin.marinas@arm.com>,
 "Justin He (Arm Technology China)" <Justin.He@arm.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
 <20190923170433.GE10192@arrakis.emea.arm.com>
 <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20190924103324.GB41214@arrakis.emea.arm.com>
From: Jia He <hejianet@gmail.com>
Message-ID: <6267b685-5162-85ac-087f-112303bb7035@gmail.com>
Date: Tue, 24 Sep 2019 23:29:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190924103324.GB41214@arrakis.emea.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_082930_830000_57562143 
X-CRM114-Status: GOOD (  28.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2F0YWxpbgoKT24gMjAxOS85LzI0IDE4OjMzLCBDYXRhbGluIE1hcmluYXMgd3JvdGU6Cj4g
T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMDY6NDM6MDZBTSArMDAwMCwgSnVzdGluIEhlIChBcm0g
VGVjaG5vbG9neSBDaGluYSkgd3JvdGU6Cj4+IENhdGFsaW4gTWFyaW5hcyB3cm90ZToKPj4+IE9u
IFNhdCwgU2VwIDIxLCAyMDE5IGF0IDA5OjUwOjU0UE0gKzA4MDAsIEppYSBIZSB3cm90ZToKPj4+
PiBAQCAtMjE1MSwyMSArMjE2Myw1MyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgY293X3VzZXJfcGFn
ZShzdHJ1Y3QgcGFnZSAqZHN0LCBzdHJ1Y3QgcGFnZSAqc3JjLCB1bnNpZ25lZCBsbwo+Pj4+ICAg
CSAqIGZhaWxzLCB3ZSBqdXN0IHplcm8tZmlsbCBpdC4gTGl2ZSB3aXRoIGl0Lgo+Pj4+ICAgCSAq
Lwo+Pj4+ICAgCWlmICh1bmxpa2VseSghc3JjKSkgewo+Pj4+IC0JCXZvaWQgKmthZGRyID0ga21h
cF9hdG9taWMoZHN0KTsKPj4+PiAtCQl2b2lkIF9fdXNlciAqdWFkZHIgPSAodm9pZCBfX3VzZXIg
KikodmEgJiBQQUdFX01BU0spOwo+Pj4+ICsJCXZvaWQgKmthZGRyOwo+Pj4+ICsJCXB0ZV90IGVu
dHJ5Owo+Pj4+ICsJCXZvaWQgX191c2VyICp1YWRkciA9ICh2b2lkIF9fdXNlciAqKShhZGRyICYg
UEFHRV9NQVNLKTsKPj4+Pgo+Pj4+ICsJCS8qIE9uIGFyY2hpdGVjdHVyZXMgd2l0aCBzb2Z0d2Fy
ZSAiYWNjZXNzZWQiIGJpdHMsIHdlIHdvdWxkCj4+Pj4gKwkJICogdGFrZSBhIGRvdWJsZSBwYWdl
IGZhdWx0LCBzbyBtYXJrIGl0IGFjY2Vzc2VkIGhlcmUuCj4+Pj4gKwkJICovCj4gWy4uLl0KPj4+
PiArCQlpZiAoYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpICYmICFwdGVfeW91bmcodm1mLT5vcmln
X3B0ZSkpIHsKPj4+PiArCQkJdm1mLT5wdGUgPSBwdGVfb2Zmc2V0X21hcF9sb2NrKG1tLCB2bWYt
PnBtZCwgYWRkciwKPj4+PiArCQkJCQkJICAgICAgICZ2bWYtPnB0bCk7Cj4+Pj4gKwkJCWlmIChs
aWtlbHkocHRlX3NhbWUoKnZtZi0+cHRlLCB2bWYtPm9yaWdfcHRlKSkpIHsKPj4+PiArCQkJCWVu
dHJ5ID0gcHRlX21reW91bmcodm1mLT5vcmlnX3B0ZSk7Cj4+Pj4gKwkJCQlpZiAocHRlcF9zZXRf
YWNjZXNzX2ZsYWdzKHZtYSwgYWRkciwKPj4+PiArCQkJCQkJCSAgdm1mLT5wdGUsIGVudHJ5LCAw
KSkKPj4+PiArCQkJCQl1cGRhdGVfbW11X2NhY2hlKHZtYSwgYWRkciwgdm1mLT5wdGUpOwo+Pj4+
ICsJCQl9IGVsc2Ugewo+Pj4+ICsJCQkJLyogT3RoZXIgdGhyZWFkIGhhcyBhbHJlYWR5IGhhbmRs
ZWQgdGhlIGZhdWx0Cj4+Pj4gKwkJCQkgKiBhbmQgd2UgZG9uJ3QgbmVlZCB0byBkbyBhbnl0aGlu
Zy4gSWYgaXQncwo+Pj4+ICsJCQkJICogbm90IHRoZSBjYXNlLCB0aGUgZmF1bHQgd2lsbCBiZSB0
cmlnZ2VyZWQKPj4+PiArCQkJCSAqIGFnYWluIG9uIHRoZSBzYW1lIGFkZHJlc3MuCj4+Pj4gKwkJ
CQkgKi8KPj4+PiArCQkJCXB0ZV91bm1hcF91bmxvY2sodm1mLT5wdGUsIHZtZi0+cHRsKTsKPj4+
PiArCQkJCXJldHVybiBmYWxzZTsKPj4+PiArCQkJfQo+Pj4+ICsJCQlwdGVfdW5tYXBfdW5sb2Nr
KHZtZi0+cHRlLCB2bWYtPnB0bCk7Cj4+Pj4gKwkJfQo+IFsuLi5dCj4+Pj4gKwo+Pj4+ICsJCWth
ZGRyID0ga21hcF9hdG9taWMoZHN0KTsKPj4+IFNpbmNlIHlvdSBtb3ZlZCB0aGUga21hcF9hdG9t
aWMoKSBoZXJlLCBjb3VsZCB0aGUgYWJvdmUKPj4+IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBy
dW4gaW4gYSBwcmVlbXB0aWJsZSBjb250ZXh0PyBJIHN1Z2dlc3RlZCB0bwo+Pj4gYWRkIGEgV0FS
Tl9PTiBpbiBwYXRjaCAyIHRvIGJlIHN1cmUuCj4+IFNob3VsZCBJIG1vdmUga21hcF9hdG9taWMg
YmFjayB0byB0aGUgb3JpZ2luYWwgbGluZT8gVGh1cywgd2UgY2FuIG1ha2Ugc3VyZQo+PiB0aGF0
IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBpcyBpbiB0aGUgY29udGV4dCBvZiBwcmVlbXB0X2Rp
c2FibGVkPwo+PiBPdGhlcndpc2UsIGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBtYXkgY2F1c2Ug
cGxlbnR5IG9mIHdhcm5pbmcgaWYgSSBhZGQKPj4gYSBXQVJOX09OIGluIGFyY2hfZmF1bHRzX29u
X29sZF9wdGUuICBJIHRlc3RlZCBpdCB3aGVuIEkgZW5hYmxlIHRoZSBQUkVFTVBUPXkKPj4gb24g
YSBUaHVuZGVyWDIgcWVtdSBndWVzdC4KPiBTbyB3ZSBoYXZlIHR3byBvcHRpb25zIGhlcmU6Cj4K
PiAxLiBDaGFuZ2UgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIHNjb3BlIHRvIHRoZSB3aG9sZSBz
eXN0ZW0gcmF0aGVyIHRoYW4KPiAgICAganVzdCB0aGUgY3VycmVudCBDUFUuIFlvdSdkIGhhdmUg
dG8gd2lyZSB1cCBhIG5ldyBhcm02NCBjYXBhYmlsaXR5Cj4gICAgIGZvciB0aGUgYWNjZXNzIGZs
YWcgYnV0IHRoaXMgd2F5IHdlIGRvbid0IGNhcmUgd2hldGhlciBpdCdzCj4gICAgIHByZWVtcHRp
YmxlIG9yIG5vdC4KPgo+IDIuIEtlZXAgdGhlIGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBwZXIt
Q1BVIGJ1dCBtYWtlIHN1cmUgd2UgYXJlIG5vdAo+ICAgICBwcmVlbXB0ZWQgaGVyZS4gVGhlIGtt
YXBfYXRvbWljKCkgbW92ZSB3b3VsZCBkbyBidXQgeW91J2QgaGF2ZSB0bwo+ICAgICBrdW5tYXBf
YXRvbWljKCkgYmVmb3JlIHRoZSByZXR1cm4uCj4KPiBJIHRoaW5rIHRoZSBhbnN3ZXIgdG8gbXkg
cXVlc3Rpb24gYmVsb3cgYWxzbyBoYXMgc29tZSBpbXBsaWNhdGlvbiBvbgo+IHdoaWNoIG9wdGlv
biB0byBwaWNrOgo+Cj4+Pj4gICAJCS8qCj4+Pj4gICAJCSAqIFRoaXMgcmVhbGx5IHNob3VsZG4n
dCBmYWlsLCBiZWNhdXNlIHRoZSBwYWdlIGlzIHRoZXJlCj4+Pj4gICAJCSAqIGluIHRoZSBwYWdl
IHRhYmxlcy4gQnV0IGl0IG1pZ2h0IGp1c3QgYmUgdW5yZWFkYWJsZSwKPj4+PiAgIAkJICogaW4g
d2hpY2ggY2FzZSB3ZSBqdXN0IGdpdmUgdXAgYW5kIGZpbGwgdGhlIHJlc3VsdCB3aXRoCj4+Pj4g
ICAJCSAqIHplcm9lcy4KPj4+PiAgIAkJICovCj4+Pj4gLQkJaWYgKF9fY29weV9mcm9tX3VzZXJf
aW5hdG9taWMoa2FkZHIsIHVhZGRyLCBQQUdFX1NJWkUpKQo+Pj4+ICsJCWlmIChfX2NvcHlfZnJv
bV91c2VyX2luYXRvbWljKGthZGRyLCB1YWRkciwgUEFHRV9TSVpFKSkgewo+Pj4+ICsJCQkvKiBH
aXZlIGEgd2FybiBpbiBjYXNlIHRoZXJlIGNhbiBiZSBzb21lIG9ic2N1cmUKPj4+PiArCQkJICog
dXNlLWNhc2UKPj4+PiArCQkJICovCj4+Pj4gKwkJCVdBUk5fT05fT05DRSgxKTsKPj4+IFRoYXQn
cyBtb3JlIG9mIGEgcXVlc3Rpb24gZm9yIHRoZSBtbSBndXlzOiBhdCB0aGlzIHBvaW50IHdlIGRv
IHRoZQo+Pj4gY29weWluZyB3aXRoIHRoZSBwdGwgcmVsZWFzZWQ7IGlzIHRoZXJlIGFueXRoaW5n
IGVsc2UgdGhhdCBjb3VsZCBoYXZlCj4+PiBtYWRlIHRoZSBwdGUgb2xkIGluIHRoZSBtZWFudGlt
ZT8gSSB0aGluayB1bnVzZV9wdGUoKSBpcyBvbmx5IGNhbGxlZCBvbgo+Pj4gYW5vbnltb3VzIHZt
YXMsIHNvIGl0IHNob3VsZG4ndCBiZSB0aGUgY2FzZSBoZXJlLgo+IElmIHdlIG5lZWQgdG8gaG9s
ZCB0aGUgcHRsIGhlcmUsIHlvdSBjb3VsZCBhcyB3ZWxsIGhhdmUgYW4gZW5jbG9zaW5nCj4ga21h
cC9rdW5tYXBfYXRvbWljIChvcHRpb24gMikgd2l0aCBzb21lIGdvdG8gaW5zdGVhZCBvZiAicmV0
dXJuIGZhbHNlIi4KCkkgYW0gbm90IDEwMCUgc3VyZSB0aGF0IEkgdW5kZXJzdGFuZCB5b3VyIHN1
Z2dlc3Rpb24gd2VsbCwgc28gSSBkcmFmdGVkIHRoZSBwYXRjaAoKaGVyZToKCkNoYW5nZXM6IG9w
dGltaXplIHRoZSBpbmRlbnRpb25zCgogwqDCoMKgwqAgaG9sZCB0aGUgcHRsIGxvbmdlcgoKCi1z
dGF0aWMgaW5saW5lIHZvaWQgY293X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZSAqZHN0LCBzdHJ1Y3Qg
cGFnZSAqc3JjLCB1bnNpZ25lZCAKbG9uZyB2YSwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEp
CitzdGF0aWMgaW5saW5lIGJvb2wgY293X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZSAqZHN0LCBzdHJ1
Y3QgcGFnZSAqc3JjLAorwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgc3RydWN0IHZtX2Zh
dWx0ICp2bWYpCiDCoHsKK8KgwqDCoCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSA9IHZtZi0+
dm1hOworwqDCoMKgIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tID0gdm1hLT52bV9tbTsKK8KgwqDCoCB1
bnNpZ25lZCBsb25nIGFkZHIgPSB2bWYtPmFkZHJlc3M7CivCoMKgwqAgYm9vbCByZXQ7CivCoMKg
wqAgcHRlX3QgZW50cnk7CivCoMKgwqAgdm9pZCAqa2FkZHI7CivCoMKgwqAgdm9pZCBfX3VzZXIg
KnVhZGRyOworCiDCoMKgwqDCoCBkZWJ1Z19kbWFfYXNzZXJ0X2lkbGUoc3JjKTsKCivCoMKgwqAg
aWYgKGxpa2VseShzcmMpKSB7CivCoMKgwqAgwqDCoMKgIGNvcHlfdXNlcl9oaWdocGFnZShkc3Qs
IHNyYywgYWRkciwgdm1hKTsKK8KgwqDCoCDCoMKgwqAgcmV0dXJuIHRydWU7CivCoMKgwqAgfQor
CiDCoMKgwqDCoCAvKgogwqDCoMKgwqAgwqAqIElmIHRoZSBzb3VyY2UgcGFnZSB3YXMgYSBQRk4g
bWFwcGluZywgd2UgZG9uJ3QgaGF2ZQogwqDCoMKgwqAgwqAqIGEgInN0cnVjdCBwYWdlIiBmb3Ig
aXQuIFdlIGRvIGEgYmVzdC1lZmZvcnQgY29weSBieQogwqDCoMKgwqAgwqAqIGp1c3QgY29weWlu
ZyBmcm9tIHRoZSBvcmlnaW5hbCB1c2VyIGFkZHJlc3MuIElmIHRoYXQKIMKgwqDCoMKgIMKgKiBm
YWlscywgd2UganVzdCB6ZXJvLWZpbGwgaXQuIExpdmUgd2l0aCBpdC4KIMKgwqDCoMKgIMKgKi8K
LcKgwqDCoCBpZiAodW5saWtlbHkoIXNyYykpIHsKLcKgwqDCoCDCoMKgwqAgdm9pZCAqa2FkZHIg
PSBrbWFwX2F0b21pYyhkc3QpOwotwqDCoMKgIMKgwqDCoCB2b2lkIF9fdXNlciAqdWFkZHIgPSAo
dm9pZCBfX3VzZXIgKikodmEgJiBQQUdFX01BU0spOworwqDCoMKgIGthZGRyID0ga21hcF9hdG9t
aWMoZHN0KTsKK8KgwqDCoCB1YWRkciA9ICh2b2lkIF9fdXNlciAqKShhZGRyICYgUEFHRV9NQVNL
KTsKKworwqDCoMKgIC8qCivCoMKgwqAgwqAqIE9uIGFyY2hpdGVjdHVyZXMgd2l0aCBzb2Z0d2Fy
ZSAiYWNjZXNzZWQiIGJpdHMsIHdlIHdvdWxkCivCoMKgwqAgwqAqIHRha2UgYSBkb3VibGUgcGFn
ZSBmYXVsdCwgc28gbWFyayBpdCBhY2Nlc3NlZCBoZXJlLgorwqDCoMKgIMKgKi8KK8KgwqDCoCB2
bWYtPnB0ZSA9IHB0ZV9vZmZzZXRfbWFwX2xvY2sobW0sIHZtZi0+cG1kLCBhZGRyLCAmdm1mLT5w
dGwpOworwqDCoMKgIGlmIChhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgJiYgIXB0ZV95b3VuZyh2
bWYtPm9yaWdfcHRlKSkgeworwqDCoMKgIMKgwqDCoCBpZiAoIWxpa2VseShwdGVfc2FtZSgqdm1m
LT5wdGUsIHZtZi0+b3JpZ19wdGUpKSkgeworwqDCoMKgIMKgwqDCoCDCoMKgwqAgLyoKK8KgwqDC
oCDCoMKgwqAgwqDCoMKgIMKgKiBPdGhlciB0aHJlYWQgaGFzIGFscmVhZHkgaGFuZGxlZCB0aGUg
ZmF1bHQKK8KgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKiBhbmQgd2UgZG9uJ3QgbmVlZCB0byBkbyBh
bnl0aGluZy4gSWYgaXQncworwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqAqIG5vdCB0aGUgY2FzZSwg
dGhlIGZhdWx0IHdpbGwgYmUgdHJpZ2dlcmVkCivCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoCogYWdh
aW4gb24gdGhlIHNhbWUgYWRkcmVzcy4KK8KgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKi8KK8KgwqDC
oCDCoMKgwqAgwqDCoMKgIHJldCA9IGZhbHNlOworwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ290byBw
dGVfdW5sb2NrOworwqDCoMKgIMKgwqDCoCB9CisKK8KgwqDCoCDCoMKgwqAgZW50cnkgPSBwdGVf
bWt5b3VuZyh2bWYtPm9yaWdfcHRlKTsKK8KgwqDCoCDCoMKgwqAgaWYgKHB0ZXBfc2V0X2FjY2Vz
c19mbGFncyh2bWEsIGFkZHIsIHZtZi0+cHRlLCBlbnRyeSwgMCkpCivCoMKgwqAgwqDCoMKgIMKg
wqDCoCB1cGRhdGVfbW11X2NhY2hlKHZtYSwgYWRkciwgdm1mLT5wdGUpOworwqDCoMKgIH0KCivC
oMKgwqAgLyoKK8KgwqDCoCDCoCogVGhpcyByZWFsbHkgc2hvdWxkbid0IGZhaWwsIGJlY2F1c2Ug
dGhlIHBhZ2UgaXMgdGhlcmUKK8KgwqDCoCDCoCogaW4gdGhlIHBhZ2UgdGFibGVzLiBCdXQgaXQg
bWlnaHQganVzdCBiZSB1bnJlYWRhYmxlLAorwqDCoMKgIMKgKiBpbiB3aGljaCBjYXNlIHdlIGp1
c3QgZ2l2ZSB1cCBhbmQgZmlsbCB0aGUgcmVzdWx0IHdpdGgKK8KgwqDCoCDCoCogemVyb2VzLgor
wqDCoMKgIMKgKi8KK8KgwqDCoCBpZiAoX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYyhrYWRkciwg
dWFkZHIsIFBBR0VfU0laRSkpIHsKIMKgwqDCoMKgIMKgwqDCoCAvKgotwqDCoMKgIMKgwqDCoCDC
oCogVGhpcyByZWFsbHkgc2hvdWxkbid0IGZhaWwsIGJlY2F1c2UgdGhlIHBhZ2UgaXMgdGhlcmUK
LcKgwqDCoCDCoMKgwqAgwqAqIGluIHRoZSBwYWdlIHRhYmxlcy4gQnV0IGl0IG1pZ2h0IGp1c3Qg
YmUgdW5yZWFkYWJsZSwKLcKgwqDCoCDCoMKgwqAgwqAqIGluIHdoaWNoIGNhc2Ugd2UganVzdCBn
aXZlIHVwIGFuZCBmaWxsIHRoZSByZXN1bHQgd2l0aAotwqDCoMKgIMKgwqDCoCDCoCogemVyb2Vz
LgorwqDCoMKgIMKgwqDCoCDCoCogR2l2ZSBhIHdhcm4gaW4gY2FzZSB0aGVyZSBjYW4gYmUgc29t
ZSBvYnNjdXJlCivCoMKgwqAgwqDCoMKgIMKgKiB1c2UtY2FzZQogwqDCoMKgwqAgwqDCoMKgIMKg
Ki8KLcKgwqDCoCDCoMKgwqAgaWYgKF9fY29weV9mcm9tX3VzZXJfaW5hdG9taWMoa2FkZHIsIHVh
ZGRyLCBQQUdFX1NJWkUpKQotwqDCoMKgIMKgwqDCoCDCoMKgwqAgY2xlYXJfcGFnZShrYWRkcik7
Ci3CoMKgwqAgwqDCoMKgIGt1bm1hcF9hdG9taWMoa2FkZHIpOwotwqDCoMKgIMKgwqDCoCBmbHVz
aF9kY2FjaGVfcGFnZShkc3QpOwotwqDCoMKgIH0gZWxzZQotwqDCoMKgIMKgwqDCoCBjb3B5X3Vz
ZXJfaGlnaHBhZ2UoZHN0LCBzcmMsIHZhLCB2bWEpOworwqDCoMKgIMKgwqDCoCBXQVJOX09OX09O
Q0UoMSk7CivCoMKgwqAgwqDCoMKgIGNsZWFyX3BhZ2Uoa2FkZHIpOworwqDCoMKgIH0KKworwqDC
oMKgIHJldCA9IHRydWU7CisKK3B0ZV91bmxvY2s6CivCoMKgwqAgcHRlX3VubWFwX3VubG9jayh2
bWYtPnB0ZSwgdm1mLT5wdGwpOworwqDCoMKgIGt1bm1hcF9hdG9taWMoa2FkZHIpOworwqDCoMKg
IGZsdXNoX2RjYWNoZV9wYWdlKGRzdCk7CisKK8KgwqDCoCByZXR1cm4gcmV0OwogwqB9CgoKLS0t
CkNoZWVycywKSnVzdGluIChKaWEgSGUpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
