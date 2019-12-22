Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE495128C72
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 04:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HaizRCRm1Hcny9616sZ0AmrPyQGAT4Oyj79eICWLDGs=; b=dG9CFf8Ef2eWkHJcuoVKUXRZS
	Mis7hCuvoYJaj5XsENd/ecNsZ8GbrxSQM7zf7hzGA61XzDFHUJb4wRvO3II4zemLP//GTkFlwECEI
	0/n6owyl27tJlSRiHXs11rOXHQ6eDAGXxNMM3LAK2xDJyk5JR6ScNaa46v4SC1SzUR/4E8zeLjMzo
	4iXK9v2olsEYsxvIly7J8a/YeyMDbeLWjLPjjfh0FFsyn4ZTG6P5Ke78//97j7hrWy7mASKRGoD5Y
	5Ww+15tK2BfvM14yqE3497hYoe7aMJyauf5peTTvP8hOHBkV6/xK06Imrg5Z/AjYV8DDbfuL/htVQ
	ofN+74l2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iirhL-00079r-D6; Sun, 22 Dec 2019 03:14:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iirhA-00079J-Ee; Sun, 22 Dec 2019 03:14:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 424F8AD22;
 Sun, 22 Dec 2019 03:14:14 +0000 (UTC)
Subject: Re: [RFC 22/25] leds: tm1826: Add combined glyph support
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-23-afaerber@suse.de> <20191221202755.GN32732@amd>
 <506d0697-1820-7811-1b38-910355812948@suse.de> <20191221210406.GA13125@amd>
 <1b3fc7f2-3c10-9b11-37ac-1bc7b0aa47d8@suse.de>
 <CANiq72nA9OLa0SjY8W055J_2A32tcp7S98SruKSdWH2dm25VKw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <56f7cd23-2156-a6e4-15fe-3efd5ccf851b@suse.de>
Date: Sun, 22 Dec 2019 04:14:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CANiq72nA9OLa0SjY8W055J_2A32tcp7S98SruKSdWH2dm25VKw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_191416_785879_EFCEE49C 
X-CRM114-Status: GOOD (  34.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlndWVsLAoKQW0gMjIuMTIuMTkgdW0gMDA6MTIgc2NocmllYiBNaWd1ZWwgT2plZGE6Cj4g
T24gU2F0LCAyMSBEZWMgMjAxOSBhdCAyMjo0OSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1
c2UuZGUgCj4gPG1haWx0bzphZmFlcmJlckBzdXNlLmRlPj4gd3JvdGU6Cj4gCj4gICAgIEhpLAo+
IAo+ICAgICBBbSAyMS4xMi4xOSB1bSAyMjowNCBzY2hyaWViIFBhdmVsIE1hY2hlazoKPiAgICAg
ID4+Pj4gQWxsb3cgdG8gc3F1ZWV6ZSB0aGUgdGV4dCAiSEVsbE8iIGludG8gYSA0LWRpZ2l0IGRp
c3BsYXksCj4gICAgICA+Pj4+IGFzIHNlZW4gb24gTWVMRSBWOSBUViBib3guCj4gICAgICA+Pj4+
Cj4gICAgICA+Pj4+IEVuYWJsZSB0aGlzIGNvbWJpbmluZyBtb2RlIG9ubHkgaWYgdGhlIHRleHQg
d291bGQgb3ZlcmZsb3cuCj4gICAgICA+Pj4KPiAgICAgID4+PiAiSEVsbCxuTyIhCj4gICAgICA+
Pj4KPiAgICAgID4+PiA6LSkKPiAgICAgID4+Pgo+ICAgICAgPj4+IE9rLCBpdCBpcyBraW5kIG9m
IGNvb2wsIGJ1dC4uLiBDYW4geW91IHRha2UgYSBsb29rIGF0Cj4gICAgICA+Pj4gZHJpdmVycy9h
dXhkaXNwbGF5L2NoYXJsY2QuYyA/IEl0IHNlZW1zIHRvIHN1cHBvcnQgc29tZSBraW5kIG9mCj4g
ICAgIHRleHQKPiAgICAgID4+PiBkaXNwbGF5cy4uLgo+ICAgICAgPj4KPiAgICAgID4+IFdoeSBk
b24ndCB5b3UgbG9vayBhdCBpdCBiZWZvcmUgbWFraW5nIHN1Y2ggYSBzdWdnZXN0aW9uPyA7KSBJ
dAo+ICAgICBpcyBpbiBubyB3YXkKPiAgICAgID4+IHVzZWZ1bCwgYXMgSSBwb2ludGVkIG91dCBp
biBteSBjb3ZlciBsZXR0ZXIuIFRoZSBvbmx5IHRoaW5nCj4gICAgIHJlbGF0ZWQgdG9kYXksCj4g
ICAgICA+PiBhcyBHZWVydCBwb2ludGVkIG91dCwgaXMgaW4gdGhlIGlucHV0IHN1YnN5c3RlbS4K
PiAgICAgID4KPiAgICAgID4gT2theSwgc28gbWF5YmUgd2Ugc2hvdWxkIGdldAo+ICAgICAgPgo+
ICAgICAgPiBBVVhJTElBUlkgRElTUExBWSBEUklWRVJTCj4gICAgICA+IE06wqAgwqAgwqAgTWln
dWVsIE9qZWRhIFNhbmRvbmlzIDxtaWd1ZWwub2plZGEuc2FuZG9uaXNAZ21haWwuY29tCj4gICAg
IDxtYWlsdG86bWlndWVsLm9qZWRhLnNhbmRvbmlzQGdtYWlsLmNvbT4+Cj4gICAgICA+Cj4gICAg
ICA+IG9uIHRoZSBDYzogbGlzdD8KPiAKPiAgICAgTGV0J3Mgc2VlIGlmIHRoYXQgZW1haWwgc3Rp
bGwgZXhpc3RzIC0gdGhlIGNvZGUgbG9va2VkIGFuY2llbnQsIGZ1bGwgb2YKPiAgICAgcGxhdGZv
cm1fZGF0YSBhbmQgZHJpdmVyLXNwZWNpZmljIGV4cG9ydGVkIGZ1bmN0aW9ucy4uLgo+IAo+ICAg
ICAodGhlIFllYWxpbmsgaW5wdXQgZHJpdmVyIHdhcyBmcm9tIDIwMDUsIHRvbykKPiAKPiAKPiBU
aGUgY29kZSBtYXkgbG9vayBhbmNpZW50LCBidXQgdGhlIGVtYWlsIHN1cmVseSBleGlzdHMgOykK
PiAKPiAKPiAKPiAgICAgID4gV2hhdCB5b3UgcmVhbGx5IGhhdmUgaXMgYSBkaXNwbGF5LCBub3Qg
YSBidW5jaCBvZiBMRURzLgo+IAo+ICAgICBXZSBoYXZlIGFuIExFRCBDb250cm9sbGVyIGNvbm5l
Y3RlZCB0byB6ZXJvLCBvbmUgb3IgbW9yZSBkaXNwbGF5cy4KPiAgICAgVGhleSBhcmUgbW9zdCBj
ZXJ0YWlubHkgX25vdF8gdGhlIHNhbWUgdGhpbmcuCj4gCj4gICAgICA+PiBJZiB5b3UgZG9uJ3Qg
d2FudCB0aGlzIGluIGxlZHMsIHlvdSdsbCBoYXZlIHRvIGhlbHAgbWFrZSBsZWRzCj4gICAgIHN1
YnN5c3RlbSBtb3JlCj4gICAgICA+PiB1c2VmdWwgdG8gZXh0ZXJuYWwgdXNlcnMgLSB0aGUgbGF0
ZXN0IGZ1bmN0aW9uIHJlZmFjdG9yaW5nIGhhcwo+ICAgICBiZWVuIGFueXRoaW5nCj4gICAgICA+
PiBidXQgaGVscGZ1bCBoZXJlLCBhcyB5b3UndmUgc2VlbiB3aXRoIHRoZSBpbmRpY2F0b3JzLCBh
bmQgd2UncmUKPiAgICAgY29tcGxldGVseQo+ICAgICAgPj4gbGFja2luZyBhbnkgaW5kZXhpbmcg
b3IgYnVsayBvcGVyYXRpb25zIG9uIHRoZSBMRUQgY29udHJvbGxlcgo+ICAgICBsZXZlbCwgc2lu
Y2UKPiAgICAgID4+IHlvdSB0cmVhdCBlYWNoIExFRCBhcyBhIHN0YW5kYWxvbmUgZGV2aWNlLiBU
aGF0J3MgcHJlY2lzZWx5IHdoeQo+ICAgICB0aGlzIGNvZGUgaXMKPiAgICAgID4+IGhlcmUgaW4g
bGVkcyBhbHRob3VnaCAtIGFzIEkgcG9pbnRlZCBvdXQgLSBpdCBzaG91bGRuJ3QgYmVsb25nIGhl
cmUuCj4gICAgICA+Cj4gICAgICA+IFdlbGwsIHlvdXIgaW50cm9kdWN0aW9uIG1haWwgd2FzIGtp
bmQgb2YgbG9uZyA6LSkuCj4gICAgICA+Cj4gICAgICA+IElmIHNvbWVvbmUgd2FudHMgdG8gZG8g
aGVhcnRiZWF0IG9uCj4gICAgICA+Cj4gICAgICA+wqAgwqAtLQo+ICAgICAgPiB8wqAgfCA8LSB0
aGlzIHNlZ21lbnQKPiAgICAgID7CoCDCoC0tCj4gICAgICA+IHzCoCB8Cj4gICAgICA+wqAgwqAt
LQo+ICAgICAgPgo+ICAgICAgPiB0aGV5IGFyZSBwcm9iYWJseSBjcmF6eS4gV2UgbWF5IG5vdCB3
YW50IHRvIHN1cHBvcnQgdGhhdC4gV2hhdCBhYm91dAo+ICAgICAgPiBkb2luZyBpdCBhcyBhdXhk
aXNwbGF5IGRyaXZlciwgYW5kIHRoZW4gZXhwb3J0aW5nIHRoZSBpbmRpY2F0b3JzCj4gICAgICA+
IGFyb3VuZCB0aGF0IGFzIExFRHM/Cj4gCj4gICAgIFlvdSdyZSByZWFsbHkganVzdCBkaXNjdXNz
aW5nIHdoaWNoIGRpcmVjdG9yeSB0byBwdXQgdGhpcyBmaWxlIGludG8gLQo+ICAgICBtb3Zpbmcg
aXQgYXJvdW5kIGlzIHRoZSBlYXNpZXN0IHRoaW5nLi4uCj4gCj4gICAgICA+Cj4gICAgICA+IEhh
dmluZyBVU0IgYWN0aXZpdHkgdHJpZ2dlciBvbiAnVVNCJyBpY29uIG1ha2VzIHNlbnNlLCBvbiB0
aGUgb3RoZXIKPiAgICAgID4gaGFuZC4gVGhhdCB3b3VsZCBzdGlsbCBiZSBzdXBwb3J0ZWQuCj4g
Cj4gICAgIEFjdHVhbGx5IEkgZGlzYWdyZWUgYWJvdXQgdGhvc2UgaW5kaWNhdG9ycyAtIHRoYXQg
d2FzIHRoZSByZWFzb24KPiAgICAgdGhleSdyZQo+ICAgICBpbmRpY2F0b3JzIGFuZCBub3QsIGUu
Zy4sICJ1c2IiLiBJTU8gcGVvcGxlIHdvdWxkIGdvIGNyYXp5IGlmIGxhcmdlCj4gICAgIHRleHQK
PiAgICAgbGlrZSB0aGF0IGJsaW5rZWQgZHVyaW5nIFVTQiB0cmFuc2ZlcnMuIEkgYXNzdW1lZCB0
aGUgbWVhbmluZyBvZiB0aG9zZQo+ICAgICBMRURzIHdlcmUgdG8gaW5kaWNhdGUgd2hldGhlciBh
IFVTQi9TRCBtZWRpdW0gaXMgY29ubmVjdGVkLCB3aGljaCBJIGRpZAo+ICAgICBub3Qgc2VlIGFu
eSBiZXR0ZXIgZnVuY3Rpb24gZm9yLCBhbmQgSSdtIG5vdCBhd2FyZSBvZiB1cyBoYXZpbmcgc3Vj
aAo+ICAgICB0cmlnZ2VycyB0b2RheS4KPiAKPiAgICAgTWF5YmUgeW91IGFsc28gb3ZlcnJlYWQg
dGhhdCB3aXRoIHRyaWdnZXIgSSB3YXMgcmVmZXJyaW5nIHRvIHVzaW5nIFJUQwo+ICAgICBhcyB0
cmlnZ2VyIGZvciBhKSB0aGUgY29sb24gYmxpbmtpbmcgZXZlcnkgaGFsZi1zZWNvbmQgYW5kIGIp
IHRoZSB0ZXh0Cj4gICAgIGdldHRpbmcgdXBkYXRlZCBiYXNlZCBvbiBhdnNpbGFibGUgUlRDIGlu
dGVycnVwdHM/Cj4gCj4gICAgIFlvdSBjb3VsZCBhbHNvIHRoaW5rIG9mIEdQSU8tY29ubmVjdGVk
IExFRHMgdGhhdCB5b3UgbWF5IHdhbnQgdG8KPiAgICAgYW5pbWF0ZQo+ICAgICB3aXRob3V0IHR3
byBkaWZmZXJlbnQgaGVhcnRiZWF0cy90aW1lcnMgZ2V0dGluZyBvdXQgb2Ygc3luYy4gT3IKPiAg
ICAgdGhpbmsgb2YKPiAgICAgYW4gUkdCIExFRCB0aGF0IHRvZGF5IHdlIHNhZGx5IG5lZWQgdG8g
bW9kZWwgYXMgbXVsdGlwbGUgR1BJTyBMRURzCj4gICAgIGluc3RlYWQgb2YgYXMgb25lIHdpdGgg
YSBjb2xvciBwcm9wZXJ0eSB3ZSBjYW4gY2hhbmdlIChhbmQgaGFyZGNvZGluZyBhCj4gICAgIGNv
bG9yIGluIERUL25hbWUgaXMgbm90IGhlbHBpbmcgdGhhdCB1c2UgY2FzZSBlaXRoZXIpLgo+IAo+
ICAgICBhdXhkaXNwbGF5IG9mZmVycyBubyBBUEkgdGhhdCBJIGNvdWxkIHJlZ2lzdGVyIHdpdGgg
dG8gZHJpdmUgb3V0cHV0LAo+ICAgICBub3IKPiAgICAgYW55IHRyaWdnZXJzIHRvIGF1dG9tYXRl
IHN1Y2ggb3V0cHV0IC0gdGhhdCdzIHVuaXF1ZSB0byBMRURzLiBMaWtlIEkKPiAgICAgc2FpZCwg
d2UgY2FuIHBsYWNlIHRoaXMgc3BpX2RyaXZlciBmaWxlIGludG8gYXV4ZGlzcGxheS8sIGJ1dCB0
aGF0Cj4gICAgIGRvZXNuJ3Qgc29sdmUgdGhlIGRyaXZlciBkZXNpZ24uCj4gCj4gCj4gSSB0aGlu
ayBpdCB3b3VsZCBiZSBhbHJpZ2h0IHRvIHB1dCBpdCBpbiBhdXhkaXNwbGF5LgoKUGxlYXNlIGZp
bmQgdGhlIGZ1bGwgc2VyaWVzIG9uLCBlLmcuLCBMQUtNTDoKCmh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvY292ZXIvMTEyODY5MzkvCgo+ICAgICBTbyBJIHJlYWxseSB0aGluayB3ZSBuZWVk
IHRvIGRlY291cGxlCj4gICAgIHRoZSB0d28gYW5kIGtlZXAgdGhlIExFRCBDb250cm9sbGVyIGRy
aXZlciBpbiBsZWRzIGFuZCB0aGUgZGlzcGxheQo+ICAgICBsb2dpYwo+ICAgICBlbHNld2hlcmUs
IHdpdGggc3VpdGFibGUgbmV3IEFQSXMgdG8gY29ubmVjdCB0aGVtLiBXZSdyZSBsYWNraW5nCj4g
ICAgIHN1Z2dlc3Rpb25zIGZvciB0aGUgaG93LCBvbiBEVCBhbmQgQVBJIGxldmVscyAtIHNlZSBt
eSByZXNwb25zZSBvbgo+ICAgICBbLi4uXXRoZQo+ICAgICBjb3ZlciBsZXR0ZXIuCgpBcyBleHBs
YWluZWQgaW4gdGhlIGNvdmVyIGxldHRlciwgdGhlIHByb2JsZW0gaGVyZSBpcyB0aGF0IEkgZG9u
J3Qga25vdyAKdGhlIG1vZGVsIG9yIG1hbnVmYWN0dXJlciBvZiB0aGVzZSB1bm1hcmtlZCB3aGl0
ZS1wbGFzdGljLWZyYW1lIExFRCAKZGlzcGxheXMuIFNvIHdlIGhhdmUgbmVpdGhlciBhIGZpbGVu
YW1lIHRvIHVzZSBpbiBhdXhkaXNwbGF5LyBub3IgYSBEVCAKY29tcGF0aWJsZSBzdHJpbmcgdG8g
dXNlIGZvciB0aG9zZSBkaXNwbGF5cy4KCkNoZWVycywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdh
cmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcs
IEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
