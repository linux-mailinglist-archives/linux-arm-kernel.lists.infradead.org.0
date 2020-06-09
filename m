Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C7C1F36C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 11:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fwqOezvdHfaO3TJfSbpKxcoxARoEOzqzGE+Z5grKXk=; b=Y0dHFR8uckBv4A
	yf72oN1maLv2C9xHn4FfyJPa4SIPllG4Kn6HUAutefBY96Os3L/hJxVkUyTz2FPDHHrXsj8l4HZej
	xgAc5G2SDW+BFVNT4z2h1Q+S932fsGJe74T6fw9yY3fw5AxhR3Z88R6wucz7K49xxVNR0e9+jwQBp
	zo0ytPvxibgQ4CzRjWYWN7j1zFWqxqrkxj3UW3INCa3X3Ot21xxPpfCYkjwzN/XSoNJeEhjwPXQGJ
	o25NixfDEkRehsGV1qEyGP2u8cSDsyWqOImZpWcinzVHmVPkEm2Z2Wt9xQqdOLs6Iiz57hsApl7yZ
	yLj8S7HO8tprY6Sj7MdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiaM5-0001Ox-B3; Tue, 09 Jun 2020 09:15:37 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiaLw-0001Nb-Cl
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 09:15:30 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MAPBF-1joOpj0zoR-00BrNY for <linux-arm-kernel@lists.infradead.org>; Tue,
 09 Jun 2020 11:15:24 +0200
Received: by mail-qt1-f181.google.com with SMTP id u17so17037723qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 02:15:24 -0700 (PDT)
X-Gm-Message-State: AOAM530T4OLHHp5uOE3bV0JWXUUiyXgaD3oqQDwOzGYnydxRu6rqiUni
 MvespUxvfE8eKmA2/BXDhGB45Yp8dWrHU1qR8Sw=
X-Google-Smtp-Source: ABdhPJwLEIiew7LT85XJ7YMwfJX7yhLUFVtBnCDqoIKOxdCKDHjqNlOaWp8DLPqmET9skm0FQ81wStwRswqY7BJG62c=
X-Received: by 2002:ac8:4742:: with SMTP id k2mr27989059qtp.304.1591694122865; 
 Tue, 09 Jun 2020 02:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200608164148.GA1394249@bjorn-Precision-5520>
 <bcf0a327-87b5-01ff-2f9c-ec6a6bd6c738@linaro.org>
In-Reply-To: <bcf0a327-87b5-01ff-2f9c-ec6a6bd6c738@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 9 Jun 2020 11:15:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a38bhE_VO_eVcsfsGKgED=gmSEntQmrhwbLkeA6Si0qaw@mail.gmail.com>
Message-ID: <CAK8P3a38bhE_VO_eVcsfsGKgED=gmSEntQmrhwbLkeA6Si0qaw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Zhangfei Gao <zhangfei.gao@linaro.org>
X-Provags-ID: V03:K1:6FrNM7tyqHwQYrfPcZgh+gS54Zyz88gh+1Auw1B8agl0ia4tCr2
 W7LmTlJNSmDf10IXt8M9DsskVaY/oUy8mwhcI4ANvBvF9ZdWcSMBC25SA9vl1Dv9Di+IIfE
 /gTDRK3/OrWN94M0G1hQOdnpOIxb3GJPH9QIv/ZIqHXW+AMnt8p/S8a4WJqj127SiJorpat
 hOtv5nQ7A9RzpTygDYDAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rH70ZZS3CnE=:ObzMiSRzTLCP6BWMVszkC2
 bxjFK/HVCudWaL21smHahcnWNv7a0D0hDZge8WIbNYc7y6WKcwd5q3frqpJBFMk0QuAAAVVRG
 nCA1pyrG0kaMjc4gOvIY8BMDFbz5ALl2aFReGDs/6bFOcolT5Ijyf1afBh4mrXem3N2rxR5o8
 6JkynXR6ujYi4wBx30h8m86kmyD3CE0mVC13/KjbhUToXHhqZFnOw8JHwERK5MKbFT5SuXt7Y
 qCq5NW77pY8a/+TRjgvdHNSD+EBYuexfavc2n5+HgtdMzFTJN7D8p/ibRq7JD2tckHj0s71Ls
 VsmG60fQ7yZ7gfr4tcYsECl1Rrm62mK9tB1rkLQPIogaBN9gFdIcJzOfKky9ZpuYKRD1tkHl6
 4w6t4QA148WvnZEANOhQkFN9QWT2JcHDhVx/rpzZoakgez4iSmpGTJiv7wSErWHzp5nw16EJw
 nYm1nyushHXZgnimQwVqndSYR+mnLMpWopSQtNi13bACCz+7y+0UbGW49MhOnMT9w02aCW9F1
 PlyuO8sicZ0mPDDE5ZNXGqi+svFaSaa1rLkeFuuHF+zPEDOUb+8RbYp3YUnvAR79+xj4Apig8
 7JAtnkDVqXHjiIwJOHEp9nPnhDJYcq+vY7JeJtND7MMYso5J+8cFSgBp+66uKVaFx2ufJfinO
 J4wUw8CaaAQgk77P0FZqK+TGJ5eH/Xh7CeDIWg8vbnBOnNgSlOLLliz6lPgtleTDVy+wuRpCn
 JBS+3DWlzpn0f94gJFiZxFzOrUlBXidx+q10UxxLE1HSyQL5mZAyzIUBMOgcJHBDoe8sc7Dw/
 lMbdZaXyRSgPdV/KieUDRuKlmJcRTNZ42Ngs0u/dnlkdvFaqSQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_021528_727857_1B6FAE74 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-pci <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>, Bjorn Helgaas <helgaas@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gOSwgMjAyMCBhdCA2OjAyIEFNIFpoYW5nZmVpIEdhbyA8emhhbmdmZWkuZ2Fv
QGxpbmFyby5vcmc+IHdyb3RlOgo+IE9uIDIwMjAvNi85IOS4iuWNiDEyOjQxLCBCam9ybiBIZWxn
YWFzIHdyb3RlOgo+ID4gT24gTW9uLCBKdW4gMDgsIDIwMjAgYXQgMTA6NTQ6MTVBTSArMDgwMCwg
WmhhbmdmZWkgR2FvIHdyb3RlOgo+ID4+IE9uIDIwMjAvNi82IOS4iuWNiDc6MTksIEJqb3JuIEhl
bGdhYXMgd3JvdGU6Cj4gPj4+PiArKysgYi9kcml2ZXJzL2lvbW11L2lvbW11LmMKPiA+Pj4+IEBA
IC0yNDE4LDYgKzI0MTgsMTAgQEAgaW50IGlvbW11X2Z3c3BlY19pbml0KHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0Cj4gPj4+PiBmd25vZGVfaGFuZGxlICppb21tdV9md25vZGUsCj4gPj4+PiAg
ICAgICAgICAgZndzcGVjLT5pb21tdV9md25vZGUgPSBpb21tdV9md25vZGU7Cj4gPj4+PiAgICAg
ICAgICAgZndzcGVjLT5vcHMgPSBvcHM7Cj4gPj4+PiAgICAgICAgICAgZGV2X2lvbW11X2Z3c3Bl
Y19zZXQoZGV2LCBmd3NwZWMpOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAgICBpZiAoZGV2X2lzX3Bj
aShkZXYpKQo+ID4+Pj4gKyAgICAgICAgICAgICAgIHBjaV9maXh1cF9kZXZpY2UocGNpX2ZpeHVw
X2ZpbmFsLCB0b19wY2lfZGV2KGRldikpOwo+ID4+Pj4gKwo+ID4+Pj4KPiA+Pj4+IFRoZW4gcGNp
X2ZpeHVwX2ZpbmFsIHdpbGwgYmUgY2FsbGVkIHR3aWNlLCB0aGUgZmlyc3QgaW4gcGNpX2J1c19h
ZGRfZGV2aWNlLgo+ID4+Pj4gSGVyZSBpbiBpb21tdV9md3NwZWNfaW5pdCBpcyB0aGUgc2Vjb25k
IHRpbWUsIHNwZWNpZmljYWxseSBmb3IgaW9tbXVfZndzcGVjLgo+ID4+Pj4gV2lsbCBzZW5kIHRo
aXMgd2hlbiA1LjgtcmMxIGlzIG9wZW4uCj4gPj4+IFdhaXQsIHRoaXMgd2hvbGUgZml4dXAgYXBw
cm9hY2ggc2VlbXMgd3JvbmcgdG8gbWUuICBObyBtYXR0ZXIgaG93IHlvdQo+ID4+PiBkbyB0aGUg
Zml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2ggbWVhbnMgaXQgcmVxdWlyZXMgb25nb2lu
Zwo+ID4+PiBtYWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24ndCB3YW50IHRvIGhhdmUgdG8gYWRk
IHRoZSBWZW5kb3IvRGV2aWNlIElECj4gPj4+IGZvciBldmVyeSBuZXcgQU1CQSBkZXZpY2UgdGhh
dCBjb21lcyBhbG9uZywgZG8gd2U/Cj4gPj4+Cj4gPj4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNl
IGhhcyBzdGFuZGFyZCBQQ0kgY2ZnIHNwYWNlLCBidXQgcGh5c2ljYWwKPiA+PiBpbXBsZW1lbnRh
dGlvbiBpcyBiYXNlIG9uIEFNQkEKPiA+PiBUaGV5IGNhbiBwcm92aWRlIHBhc2lkIGZlYXR1cmUu
Cj4gPj4gSG93ZXZlciwKPiA+PiAxLCBkb2VzIG5vdCBzdXBwb3J0IHRscCBzaW5jZSB0aGV5IGFy
ZSBub3QgcmVhbCBwY2kgZGV2aWNlcy4KPiA+PiAyLiBkb2VzIG5vdCBzdXBwb3J0IHByaSwgaW5z
dGVhZCBzdXBwb3J0IHN0YWxsIChwcm92aWRlZCBieSBzbW11KQo+ID4+IEFuZCBzdGFsbCBpcyBu
b3QgYSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRlc2NyaWJlZCBpbiBzdHJ1Y3QgcGNpX2Rl
diwKPiA+PiBidXQgaW4gc3RydWN0IGlvbW11X2Z3c3BlYy4KPiA+PiBTbyB3ZSB1c2UgdGhpcyBm
aXh1cCB0byB0ZWxsIHBjaSBzeXN0ZW0gdGhhdCB0aGUgZGV2aWNlcyBjYW4gc3VwcG9ydCBzdGFs
bCwKPiA+PiBhbmQgaGVyZWJ5IHN1cHBvcnQgcGFzaWQuCj4gPiBUaGlzIGRpZCBub3QgYW5zd2Vy
IG15IHF1ZXN0aW9uLiAgQXJlIHlvdSBwcm9wb3NpbmcgdGhhdCB3ZSB1cGRhdGUgYQo+ID4gcXVp
cmsgZXZlcnkgdGltZSBhIG5ldyBBTUJBIGRldmljZSBpcyByZWxlYXNlZD8gIEkgZG9uJ3QgdGhp
bmsgdGhhdAo+ID4gd291bGQgYmUgYSBnb29kIG1vZGVsLgo+Cj4gWWVzLCB5b3UgYXJlIHJpZ2h0
LCBidXQgd2UgZG8gbm90IGhhdmUgYW55IGJldHRlciBpZGVhIHlldC4KPiBDdXJyZW50bHkgd2Ug
aGF2ZSB0aHJlZSBmYWtlIHBjaSBkZXZpY2VzLCB3aGljaCBzdXBwb3J0IHN0YWxsIGFuZCBwYXNp
ZC4KPiBXZSBoYXZlIHRvIGxldCBwY2kgc3lzdGVtIGtub3cgdGhlIGRldmljZSBjYW4gc3VwcG9y
dCBwYXNpZCwgYmVjYXVzZSBvZgo+IHN0YWxsIGZlYXR1cmUsIHRob3VnaCBub3Qgc3VwcG9ydCBw
cmkuCj4gRG8geW91IGhhdmUgYW55IG90aGVyIGlkZWFzPwoKSXQgc291bmRzIGxpa2UgdGhlIGJl
c3Qgd2F5IHdvdWxkIGJlIHRvIGFsbG9jYXRlIGEgUENJIGNhcGFiaWxpdHkgZm9yIGl0LCBzbwpk
ZXRlY3Rpb24gY2FuIGJlIGRvbmUgdGhyb3VnaCBjb25maWcgc3BhY2UsIGF0IGxlYXN0IGluIGZ1
dHVyZSBkZXZpY2VzLApvciBwb3NzaWJseSBhZnRlciBhIGZpcm13YXJlIHVwZGF0ZSBpZiB0aGUg
Y29uZmlnIHNwYWNlIGluIHlvdXIgc3lzdGVtCmlzIGNvbnRyb2xsZWQgYnkgZmlybXdhcmUgc29t
ZXdoZXJlLiAgT25jZSB0aGVyZSBpcyBhIHByb3BlciBtZWNoYW5pc20KdG8gZG8gdGhpcywgdXNp
bmcgZml4dXBzIHRvIGRldGVjdCB0aGUgZWFybHkgZGV2aWNlcyB0aGF0IGRvbid0IHVzZSB0aGF0
CnNob3VsZCBiZSB1bmNvbnRyb3ZlcnNpYWwuIEkgaGF2ZSBubyBpZGVhIHdoYXQgdGhlIHByb2Nl
c3Mgb3IgdGltZWxpbmUKaXMgdG8gYWRkIG5ldyBjYXBhYmlsaXRpZXMgaW50byB0aGUgUENJZSBz
cGVjaWZpY2F0aW9uLCBvciBpZiB0aGlzIG9uZQp3b3VsZCBiZSBhY2NlcHRhYmxlIHRvIHRoZSBQ
Q0kgU0lHIGF0IGFsbC4KCklmIGRldGVjdGlvbiBjYW5ub3QgYmUgZG9uZSB0aHJvdWdoIFBDSSBj
b25maWcgc3BhY2UsIHRoZSBuZXh0IGJlc3QKYWx0ZXJuYXRpdmUgaXMgdG8gcGFzcyBhdXhpbGlh
cnkgZGF0YSB0aHJvdWdoIGZpcm13YXJlLiBPbiBEVCBiYXNlZAptYWNoaW5lcywgeW91IGNhbiBs
aXN0IG5vbi1ob3RwbHVnZ2FibGUgUENJZSBkZXZpY2VzIGFuZCBhZGQgY3VzdG9tCnByb3BlcnRp
ZXMgdGhhdCBjb3VsZCBiZSByZWFkIGR1cmluZyBkZXZpY2UgZW51bWVyYXRpb24uIEkgYXNzdW1l
CkFDUEkgaGFzIHNvbWV0aGluZyBzaW1pbGFyLCBidXQgSSBoYXZlIG5vdCBkb25lIHRoYXQuCgog
ICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
