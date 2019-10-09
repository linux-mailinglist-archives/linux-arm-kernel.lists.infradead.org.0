Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90DD095E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHBhzn1uLxMjkq3P4XRSi9QVsXCbvWveCYV2q02nPps=; b=hAB2lJF+Eb5web
	qBWBoUdzRrvfMxZUCwRdQHsZBtqP8qBzH/wik3kM4K2/oWjFowyIvQowBlD0uxIGxCTocgKeML+fm
	xRVrkII21AFeOfKq296bGurhbTG5zjZBAftbaglKefhJ1KsAV46UjoIz6yjNR883ua24Ag6f79WbE
	33UFmum663/+p1tWOOI9VVrqhSibdpLMc3oU5Hg1OQXIl+uZahWFbYZNQvfUyuzVHXPV0+lPYrf8q
	RKt2eL49Wk5Mw5S4r8pYoQZ1Z2+/jvjY65mGP6O/voxUhI3LdGMRg4sU9kAwA15h/IBLxOcAuFrJX
	SVgnEIMkwoVfH2eWVxOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI787-000637-Og; Wed, 09 Oct 2019 08:15:31 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI780-0005v6-1d
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:15:25 +0000
Received: by mail-qt1-f196.google.com with SMTP id v52so2117952qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:15:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bKd/WuJB1PKXTo4UT4Rnj6fKiv1C/yIJL5yop1Vff4M=;
 b=rtZMELzbgki5Jtt5uem4/u1rA5zMDf+ZrXXstYIUZryDeFxtuJUoh4wcmlUOvCcyKf
 8hnNh8veILjcez8wZfeQ6m5bjLWzkcluf8RXyLzA6RHOO/hVmzwsjQz/y7PGnklK9sLa
 f6Tfq/4TDSoqP/1wxM61vzovrTje4yk6ED1oGnZ51hBK9hbv4gqj+3cso13j8Wyxf+Me
 o1QbgXQLcO1pzNvg3CH84aRiQHIOOd9nwBxsl0RZmxEUncFj24MnhE9Cwj9CAHW5DV4Z
 8QjTFn9jBIKzh+Rn/DoQDdoRGiWVXktDCpjVs6CzCE+UGJZq/VBc73Zte4zZM9RtfJaW
 Ed1g==
X-Gm-Message-State: APjAAAV4GwcXL8eRTGRZH79xi4GbiK0EHWuOkw6VzmF6JlqUv1hKjZ8X
 N2oAVkxPEFFM/3QAC7yrbMdBPmNN/VS3hiTWM+c=
X-Google-Smtp-Source: APXvYqyhMiXrp1E7zV7cMIlQdUo3YgC6MH3Ds92f9k9SnM6MBxoPTU2lgkNeKoNUvzupr6w7LT0veMo3Dr8KPGb7mDo=
X-Received: by 2002:ac8:6956:: with SMTP id n22mr2303731qtr.7.1570608922594;
 Wed, 09 Oct 2019 01:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191008194724.evlk3bnomcz3kxwg@flow>
 <CAK8P3a182o64NfheNEYixDsi=mSZCNVSgg=_EDnwy+fZ1hrzLw@mail.gmail.com>
 <20191008220238.neuy5iwrgbkum6m3@flow>
In-Reply-To: <20191008220238.neuy5iwrgbkum6m3@flow>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 9 Oct 2019 10:15:05 +0200
Message-ID: <CAK8P3a1n6icgaNwyGgvwCmxZP6NVA2gWX7=Ubt=1CnFe7wdO7w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_011524_090415_37A0CAD0 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgOSwgMjAxOSBhdCAxMjowMiBBTSBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9y
CjxzZWJhc3RpYW5AYnJlYWtwb2ludC5jYz4gd3JvdGU6Cj4KPiBPbiAyMDE5LTEwLTA4IDIzOjQ3
OjMxIFsrMDIwMF0sIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4g4oCmCj4gPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9hc20tZ2VuZXJpYy9xc3BpbmxvY2suaCBiL2luY2x1ZGUvYXNtLWdlbmVyaWMvcXNw
aW5sb2NrLmgKPiA+IGluZGV4IGZkZTk0M2QxODBlMC4uM2M0NTZhZDE2NjFiIDEwMDY0NAo+ID4g
LS0tIGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9xc3BpbmxvY2suaAo+ID4gKysrIGIvaW5jbHVkZS9h
c20tZ2VuZXJpYy9xc3BpbmxvY2suaAo+IOKApgo+ID4gQEAgLTc1LDYgKzc5LDExIEBAIHN0YXRp
YyBfX2Fsd2F5c19pbmxpbmUgdm9pZCBxdWV1ZWRfc3Bpbl9sb2NrKHN0cnVjdAo+ID4gcXNwaW5s
b2NrICpsb2NrKQo+ID4gIHsKPiA+ICAgICAgICAgdTMyIHZhbCA9IDA7Cj4gPgo+ID4gKyAgICAg
ICBpZiAoIXNtcF9lbmFibGVkKCkpIHsKPiA+ICsgICAgICAgICAgICAgICBhdG9taWNfc2V0KCZs
b2NrLT52YWwsIF9RX0xPQ0tFRF9WQUwpOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+
ICsgICAgICAgfQo+ID4gKwo+ID4gICAgICAgICBpZiAobGlrZWx5KGF0b21pY190cnlfY21weGNo
Z19hY3F1aXJlKCZsb2NrLT52YWwsICZ2YWwsIF9RX0xPQ0tFRF9WQUwpKSkKPiA+ICAgICAgICAg
ICAgICAgICByZXR1cm47Cj4gPgo+ID4gVGhlIGFib3ZlIGlzIGxpa2VseSBpbmNvcnJlY3QsIG5v
bi1pZGlvbWF0aWMgb3IgaW5lZmZpY2llbnQsIGJ1dCB0aGlzCj4gPiBpcyBhIHdheSB0bwo+ID4g
YXZvaWQgYm90aCBhIHJ1bnRpbWUgY2hlY2sgYW5kIHRoZSBjbXB4Y2hnKCkgaW4gZWFjaCBzcGlu
bG9jay4KPgo+IFlvdSB3b3VsZCBoYXZlIHRvIHB1dCB0aGlzIGluIGFyY2hfc3Bpbl90cnlsb2Nr
KCkgYnV0IEkgZ2V0IHRoZSBpZGVhLgo+IFRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIGRvZXMg
Y21weGNoZygpIGluIHRoZSB0cnktbG9jayBjYXNlIHNvIGJ5Cj4gc3dpdGNoaW5nIHRvIHEtbG9j
a3MgYXJlIG5vdCBnZXR0aW5nIHdvcnNlIGluIHRoZSBVUCBjYXNlLgoKQWggcmlnaHQsIEkgZGlz
bWlzc2VkIHRoZSB0cnlsb2NrIGNhc2UgYmVjYXVzZSB0aGVyZSBhcmUgZmV3IGNhbGxzCnRvIHNw
aW5fdHJ5bG9jayBidXQgSSBmYWlsZWQgdG8gbm90aWNlZCB0aGUgX19yYXdfc3Bpbl9sb2NrKCkg
Zm9yIHRoZQpDT05GSUdfTE9DS19TVEFUIGNhc2UuCgo+IFRoZXJlZm9yZSBJIHRoaXMgaXMgbW9y
ZSBvZiBhbiBvcHRpbWlzYXRpb24gZm9yIHRob3NlIHRoYXQgcnVuIFNNUAo+IGtlcm5lbHMgb24g
VVAgbWFjaGluZXMuCgpZZXMsIHRoYXQgd2FzIHRoZSBwb2ludC4gT3JpZ2luYWxseSBJIHdhc24n
dCBzdXJlIGlmIHRoZXJlIHdhcyBhIGNhc2UKaW4gd2hpY2ggdGhhdCBjb25maWd1cmF0aW9uIGNv
dWxkIHN0aWxsIGVuZCB1cCBpbiB0aGUgc3BpbmxvY2sgc2xvd3BhdGgsCmJ1dCBhcyB0aGF0IHdv
bid0IGhhcHBlbiBpdCdzIGp1c3QgYSB3YXkgdG8gYXZvaWQgdGhlIGF0b21pYyBvcGVyYXRpb24K
b24gVVAuIEl0IG1pZ2h0IG5vdCBhY3R1YWxseSBtYWtlIG11Y2ggb2YgYSBkaWZmZXJlbmNlIGRl
cGVuZGluZwpvbiB0aGUgYWN0dWFsIG92ZXJoZWFkIG9mIGxkcmV4L3N0cmV4IHdoaWxlIHJ1bm5p
bmcgb24gYSBzaW5nbGUgY29yZS4KCiAgICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
