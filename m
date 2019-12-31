Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D178112D7A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Mime-Version:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TcDQDNVVxD6+6XKfkspGrVaYU7Q6UN6EnD+EtxR0+yc=; b=swfGKHQoI4Eg9A
	e1KLVerRoafahHER2AevHZ1eNVh0ipeEDDwOsc3+phNdCT9GmtFbay8mKMtv9T0xMDO3dNGf4HlDB
	77/Op/G78+rZxepHlsYuKDyJxrCAmgy1PNrifCveI2jPADNNU3hyGCRLPXtjnHOoXh8WPVI/Vxqds
	aoYHZ2Nll2ZN5qNWLk/D0mJeFpVtdNypXT/t4UGc3bWfi+QwG14+EvnKWKmSp6qB5pM9sVATNuImh
	s0E4k++axVcUJzZt/o84jncKd4aBDhOCAuHDYESEOdnz8CuCybI6+wTHAnH1N5Yv45QuxpzkNbBky
	jt7ehJDr2w+irN2oQvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imE2N-0004Co-1S; Tue, 31 Dec 2019 09:42:03 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imE2B-0004C9-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:41:53 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191231094149euoutp0111acdd0ab63460dce6afc7252419ac04~la2EyJmwh1037410374euoutp01A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 09:41:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191231094149euoutp0111acdd0ab63460dce6afc7252419ac04~la2EyJmwh1037410374euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577785309;
 bh=y65p+WJMtVpCaPejrbzx6k+tRLYVdapbmhiSddBe7YM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=NSDtS1XpJ9KnPY2o2wQFSIiNTgHneHwskbHrSj3tYtuxnmJlcUZRrpuNojZUnv7c1
 myBXlqcRG4LxesO43+8L60VqaYZOJ02MG0F6iudP1OSN1tduXb5keHx7GoAj+32JFJ
 DINcSS90aHeMi9tiWOwTmC6Qt/s7trKcEcK3geAM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191231094149eucas1p21efabd86a864ac81a10d8ca4f9cfe0fa~la2EbylWW0078700787eucas1p2l;
 Tue, 31 Dec 2019 09:41:49 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FB.B4.60679.DD71B0E5; Tue, 31
 Dec 2019 09:41:49 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191231094148eucas1p1da266eb4f837c44e5f476185deb1bccd~la2DwdEJV2443224432eucas1p10;
 Tue, 31 Dec 2019 09:41:48 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191231094148eusmtrp170ef1487803b8558cd23296b0d6144db~la2DvmekT0338403384eusmtrp1H;
 Tue, 31 Dec 2019 09:41:48 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-1b-5e0b17dddf4a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 62.E2.08375.CD71B0E5; Tue, 31
 Dec 2019 09:41:48 +0000 (GMT)
Received: from AMDC3555 (unknown [106.120.51.67]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20191231094147eusmtip1de0581736a501cec168a3604c8533ae1~la2DGSVFi0034300343eusmtip19;
 Tue, 31 Dec 2019 09:41:47 +0000 (GMT)
Message-ID: <99427c18b1fcca3bc21e69609500abdbbef59167.camel@samsung.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
From: Artur =?UTF-8?Q?=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 31 Dec 2019 10:41:47 +0100
In-Reply-To: <20191231092254.GA6939@pi3>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUgTcRjH+d3tbudyds7KpxdmLgqT0l4sDhpaEXQIRUQQRJmrjlltS3Zq
 KZSWJr6lsgJtFlZYDSXKNU1FjcZooLQV6Wqlrhe1jMxiSy1T2nZK/fd5Xr6/7/eBH4XLnhFL
 qOO6DE6vU2kUpETU/PSXY21/5LyUdTWGUKax+j7BvPJ9Ipham4Ngen6OkUxVh5lkDJ5KEeN0
 PhAzpv4fBGP+6CKYl23XSMZ7yYaYamcnxtyz9YuZt+dNJFN9eYTcOp811xeTbJ+rnWQ9pXaM
 fViXyzZ+a8HYcks9Yr1m+R7xAYnyGKc5nsXp4xNTJWllfcNkumP5mcnbA2QeGl5cgkIooBPA
 dnFaFGAZbULw3phTgiR+9iHocozhQuFFcN34Gc0p3AX22cFdBB9qCpBQDCMYG3fjgS0pzUKR
 +504wBH0QTBOeoJM0knw7O04FuAF9Gp4NT1BBMQ4fQWH56XPg0sieiXkTVQGHwqhY8BkGCYF
 6zUw2lXuD0v5DcJhuiUi0MbpKMhvqgkmAnpUDK1uFybs74Di3se4wBHwxW4RC7wMui+XiQTm
 YajVQwjiPATmO7ZZwRboc/wmA2a4P+n9tnihvQ2aJkqxQBvoMHg9Gi5kCANDcxUutKVQVCgT
 UAFtV8MEIcCFBtfs2yy8qCsmKlG08d8txv9uMf5zvYHwehTJZfJaNcdv0HGn43iVls/UqeOO
 ntKakf+Tdc/YfS2o7c8RK6IppAiVvsMkKTJClcVna60IKFyxQJpwMCRFJj2mys7h9KcO6zM1
 HG9FSymRIlK68dbIIRmtVmVwJzkundPPTTEqZEkeah1aaD07+CQqW33Os78i942zlLhHXDsR
 3jSkrHV0nl3dvyJefrN5y/tqecWDnp+7O6IyNZsLp5LvLr5dcMJiT120zzfyPTxxQPNVeWuq
 e+cVLil0b2evUhyLr9neM5hTMmmJ2ZXvbSDVmjJnCcbl4qntDfKbFauSZzZRhjRJ9COFiE9T
 rY/F9bzqL900QkRgAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7p3xLnjDL5uk7HYOGM9q8X1L89Z
 LeYfOcdqceXrezaL6Xs3sVlMuj+BxeL8+Q3sFivufmS12PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPje92MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJeRs+d
 Z2wF5xQqfiy9x9bA+Eyyi5GTQ0LAROJmy3HmLkYuDiGBpYwSn/6fZYNISEh8XH+DFcIWlvhz
 rQssLiTwhFFi1Wd5EJtXwEOi4+YDdhBbWCBGYtaP+2A2m4C9xNnb35hAbBEBTYnrf7+DzWEW
 mMossXtWAIjNIqAq0fB9AjOIzSmgIbFi0jOo+TuYJCa3OEHUa0q0bv/NDnGDjsTbU30sXYwc
 QHsFJf7uEIYokZdo3jqbeQKj4CwkHbMQqmYhqVrAyLyKUSS1tDg3PbfYUK84Mbe4NC9dLzk/
 dxMjMEK3Hfu5eQfjpY3BhxgFOBiVeHgfMHHFCbEmlhVX5h5ilOBgVhLhNYnhjBPiTUmsrEot
 yo8vKs1JLT7EaAr0zkRmKdHkfGDyyCuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpa
 kFoE08fEwSnVwDjX7aG8A4fJlg32ce8WaS1bkvTaXvPyrY/XPQo2OcW0LHZbfU7Fttmw7bFO
 kNHX8Pm9JRf+8fSXa1qcVmKJqLHduUHwqC5rttbed3u/+i9fO+k44/n59+4mmzcmF070ZK9Y
 Gv+7oPz25aRk3uXLn1+e/3c2v/hFq8dOqp8+/E4zf1NhLCCuN1eJpTgj0VCLuag4EQAR2lqn
 5gIAAA==
X-CMS-MailID: 20191231094148eucas1p1da266eb4f837c44e5f476185deb1bccd
X-Msg-Generator: CA
X-RootMTR: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com> <20191230154405.GC4918@pi3>
 <2922135223b01126277ef92a53e6b294bc17bb5c.camel@samsung.com>
 <20191231092254.GA6939@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_014152_119259_0C7152B5 
X-CRM114-Status: GOOD (  32.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTMxIGF0IDEwOjIyICswMTAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIFR1ZSwgRGVjIDMxLCAyMDE5IGF0IDA4OjE4OjAxQU0gKzAxMDAsIEFydHVyIMWa
d2lnb8WEIHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+IE9uIE1vbiwgMjAxOS0xMi0zMCBhdCAxNjo0
NCArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4gT24gRnJpLCBEZWMgMjAs
IDIwMTkgYXQgMTI6NTY6NTBQTSArMDEwMCwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gPiA+ID4g
VGhpcyBwYXRjaCBhZGRzIHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyB0byB0aGUgRXh5bm9zNDQx
MiBEVDoKPiA+ID4gPiAgIC0gZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZTogdG8gZGVj
bGFyZSBjb25uZWN0aW9ucyBiZXR3ZWVuCj4gPiA+ID4gICAgIG5vZGVzIGluIG9yZGVyIHRvIGd1
YXJhbnRlZSBQTSBRb1MgcmVxdWlyZW1lbnRzIGJldHdlZW4gbm9kZXM7Cj4gPiA+ID4gICAtICNp
bnRlcmNvbm5lY3QtY2VsbHM6IHJlcXVpcmVkIGJ5IHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3Jr
Lgo+ID4gPiA+IAo+ID4gPiA+IE5vdGUgdGhhdCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5
cyB6ZXJvIGFuZCBub2RlIElEcyBhcmUgbm90Cj4gPiA+ID4gaGFyZGNvZGVkIGFueXdoZXJlLgo+
ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBz
YW1zdW5nLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9z
NDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCA1ICsrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IFRoZSBvcmRlciBvZiBwYXRjaGVzIGlzIGNv
bmZ1c2luZy4gUGF0Y2hlcyA0IGFuZCA2IGFyZSBzcGxpdCAtIGRvIHRoZQo+ID4gPiBkZXBlbmQg
b24gNT8gSSBkb3VidCBidXQuLi4KPiA+IAo+ID4gTGV0IG1lIGVsYWJvcmF0ZToKPiA+IAo+ID4g
VGhlIG9yZGVyIG9mIHRoZSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGlzIHN1Y2ggdGhhdCBldmVy
eSBzdWJzZXF1ZW50Cj4gPiBwYXRjaCBhZGRzIHNvbWUgZnVuY3Rpb25hbGl0eSAoYW5kLCBvZiBj
b3Vyc2UsIGFwcGx5aW5nIHBhdGNoZXMgb25lLWJ5LW9uZQo+ID4geWllbGRzIGEgd29ya2luZyBr
ZXJuZWwgYXQgZXZlcnkgc3RlcCkuIFNwZWNpZmljYWxseSBmb3IgcGF0Y2hlcyAwNC0tMDc6Cj4g
PiAKPiA+ICAtLSBwYXRjaCAwNCBhZGRzIGludGVyY29ubmVjdCBfcHJvdmlkZXJfIHByb3BlcnRp
ZXMgZm9yIEV4eW5vczQ0MTI7Cj4gPiAgLS0gcGF0Y2ggMDUgaW1wbGVtZW50cyBpbnRlcmNvbm5l
Y3QgcHJvdmlkZXIgbG9naWMgKGRlcGVuZHMgb24gcGF0Y2ggMDQpOwo+ID4gIC0tIHBhdGNoIDA2
IGFkZHMgaW50ZXJjb25uZWN0IF9jb25zdW1lcl8gcHJvcGVydGllcyBmb3IgRXh5bm9zNDQxMiBt
aXhlcjsKPiA+ICAtLSBwYXRjaCAwNyBpbXBsZW1lbnRzIGludGVyY29ubmVjdCBjb25zdW1lciBs
b2dpYyAoZGVwZW5kcyBvbiBwYXRjaGVzCj4gPiAgICAgMDUgJiAwNik7Cj4gPiAKPiA+IE15IHJl
YXNvbmluZyBpcyB0aGF0IHRoaXMgb3JkZXIgYWxsb3dzIHRvIGUuZy4sIG1lcmdlIHRoZSBpbnRl
cmNvbm5lY3QKPiA+IHByb3ZpZGVyIGZvciBleHlub3MtYnVzIGFuZCBsZWF2ZSB0aGUgY29uc3Vt
ZXJzIGZvciBsYXRlciAobm90IGxpbWl0ZWQgdG8KPiA+IHRoZSBtaXhlcikuIEkgaG9wZSB0aGlz
IG1ha2VzIHNlbnNlLgo+IAo+IEl0IGlzIHdyb25nLiBUaGUgZHJpdmVyIHNob3VsZCBub3QgZGVw
ZW5kIG9uIERUUyBjaGFuZ2VzIGJlY2F1c2U6Cj4gMS4gRFRTIGFsd2F5cyBnbyB0aHJvdWdoIHNl
cGFyYXRlIGJyYW5jaCBhbmQgdHJlZSwgc28gbGFzdCBwYXRjaAo+ICAgIHdpbGwgaGF2ZSB0byB3
YWl0IHVwIHRvIDMgY3ljbGVzICghISEpLAo+IDIuIFlvdSBicmVhayBiYWNrd2FyZCBjb21wYXRp
YmlsaXR5LgoKSXQgaXMgdXAgdG8gdGhlIGRlZmluaXRpb24gb2YgImRlcGVuZHMiLiBUaGUgZHJp
dmVyIGlzIF9ub3RfIGJyb2tlbiB3aXRob3V0CnRoZSBEVFMgcGF0Y2hlcywgYnV0IHRoZSBpbnRl
cmNvbm5lY3QgZnVuY3Rpb25hbGl0eSB3aWxsIG5vdCBiZSBhdmFpbGFibGUuCgpUaGUgb25seSBy
ZXF1aXJlbWVudCBpcyB0aGF0IGlmIHdlIHdhbnQgdG8gaGF2ZSBhIHdvcmtpbmcgaW50ZXJjb25u
ZWN0CmNvbnN1bWVyLCB0aGVyZSBuZWVkcyB0byBiZSBhIHdvcmtpbmcgaW50ZXJjb25uZXQgcHJv
dmlkZXIgKGFuZCBJIHVzZWQKdGhlIHdvcmQgImRlcGVuZHMiIHRvIHNwZWNpZnkgd2hhdCBuZWVk
cyB3aGF0IGluIG9yZGVyIHRvIHdvcmsgYXMgaW50ZW5kZWQpLgoKSSBzdGlsbCB0aGluayB0aGUg
b3JkZXIgb2YgdGhlc2UgcGF0Y2hlcyBpcyB0aGUgbW9zdCBsb2dpY2FsIG9uZSBmb3Igc29tZW9u
ZQpyZWFkaW5nIHRoaXMgUkZDIGFzIGEgd2hvbGUuCgo+IEluIGNlcnRhaW4gY2FzZXMgZGVwZW5k
ZW5jeSBvbiBEVFMgY2hhbmdlcyBpcyBvazoKPiAxLiBDbGVhbmluZyB1cCBkZXByZWNhdGVkIHBy
b3BlcnRpZXMsCj4gMi4gSWdub3JpbmcgdGhlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgZm9yIGUu
Zy4gbmV3IHBsYXRmb3Jtcy4KPiAKPiBOb25lIG9mIHRoZXNlIGFyZSBhcHBsaWNhYmxlIGhlcmUu
Cj4gCj4gWW91IG5lZWQgdG8gcmV3b3JrIGl0LCBwdXQgRFRTIGNoYW5nZXMgYXQgdGhlIGVuZC4g
VGhpcyBjbGVhcmx5IHNob3dzCj4gdGhhdCB0aGVyZSBpcyBubyB3cm9uZyBkZXBlbmRlbmN5Lgo+
IAo+ID4gCj4gPiA+IEFkanVzdCB0aGUgdGl0bGUgdG8gbWF0Y2ggdGhlIGNvbnRlbnRzIC0geW91
IGFyZSBub3QgYWRkaW5nIGJpbmRpbmdzIGJ1dAo+ID4gPiBwcm9wZXJ0aWVzIHRvIGJ1cyBub2Rl
cy4gQWxzbyB0aGUgcHJlZml4IGlzIEFSTTogKGxvb2sgYXQgcmVjZW50Cj4gPiA+IGNvbW1pdHMp
Lgo+ID4gCj4gPiBPSy4KPiA+IAo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gPiA+ID4gaW5kZXggNGNlM2Q3N2E2
NzA0Li5kOWQ3MGVhY2ZjYWYgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+ID4gPiA+IEBAIC05MCw2ICs5MCw3
IEBACj4gPiA+ID4gICZidXNfZG1jIHsKPiA+ID4gPiAgCWV4eW5vcyxwcG11LWRldmljZSA9IDwm
cHBtdV9kbWMwXzM+LCA8JnBwbXVfZG1jMV8zPjsKPiA+ID4gPiAgCXZkZC1zdXBwbHkgPSA8JmJ1
Y2sxX3JlZz47Cj4gPiA+ID4gKwkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ID4gPiAKPiA+
ID4gVGhpcyBkb2VzIG5vdCBsb29rIGxpa2UgcHJvcGVydHkgb2YgT2Ryb2lkIGJ1dCBFeHlub3M0
NDEyIG9yIEV4eW5vczQuCj4gPiAKPiA+IFN0cmFuZ2VseSBlbm91Z2gsIHRoaXMgZmlsZSBpcyB3
aGVyZSB0aGUgJ2V4eW5vcyxwYXJlbnQtYnVzJyAoYWthLiAnZGV2ZnJlcScpCj4gPiBwcm9wZXJ0
aWVzIGFyZSBsb2NhdGVkIChhbmQgZXZlcnl0aGluZyBpbiB0aGlzIFJGQyBjb25jZXJucyBkZXZm
cmVxKS4KPiAKPiBJIGNhbm5vdCBmaW5kIGV4eW5vcyxwYXJlbnQtYnVzIGluIGV4eW5vczQ0MTIt
b2Ryb2lkLWNvbW1vbi5kdHNpLiBDYW4KPiB5b3UgZWxhYm9yYXRlPwoKQ3VycmVudGx5IGEgbmFt
ZSBjaGFuZ2UgaXMgYmVpbmcgbWFkZTogJ2RldmZyZXEnIC0+ICdleHlub3MscGFyZW50LWJ1cycK
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTMwNDU0OS8KKGEgZGVwZW5kZW5j
eSBvZiB0aGlzIFJGQzsgYWxzbyBhdmFpbGFibGUgaW4gZGV2ZnJlcS10ZXN0aW5nIGJyYW5jaCkK
CkJlc3QgcmVnYXJkcywKLS0gCkFydHVyIMWad2lnb8WEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQ
b2xhbmQKU2Ftc3VuZyBFbGVjdHJvbmljcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
