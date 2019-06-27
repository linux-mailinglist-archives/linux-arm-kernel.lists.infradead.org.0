Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AA15806D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArRtXp7EkoW3x/LlCQ1NVY+EgQHs+6TRqLUsmkrisyU=; b=iUxZyTMiJkBi1e
	ffZrtKcsPJYGfHDg6NzLsasX9yh6rPRthK3A/SJO9aTBVr8/iBSyjQM+OkX4gF9t2pf6NyBipmkBa
	KRY2sBbz5KXUmzmZ9pScbFmfMkNedHdXD46ysCTSTViCl+BpX2wPBjLKNBkXreGfXJXg9XgACQlDC
	SABzZKUHPNuaZoOvSPBt/x+ddD2uN+e6s2rMHiIpJ2mzRQUU1kdh8+Kla+w4bC5cp9PzfEijHx2l6
	fDLrKE3wiNSbJVLgTkzxDfRCuI2OlK2YjRbOf5n+Y2aS59iN9xMEtS16YTXPy4FIhGgl41DweHToT
	0H98eXIDHsR/tmgnRIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRgk-0007AV-N8; Thu, 27 Jun 2019 10:31:34 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRgS-000794-7k
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 10:31:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190627103113euoutp01cf21703bf64d675d988d1b57d491975b~sB40MjPyT1631616316euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 10:31:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190627103113euoutp01cf21703bf64d675d988d1b57d491975b~sB40MjPyT1631616316euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561631473;
 bh=9qMksaSn2o1RzY5tC5OZ+NxmFvebkX7TJu1+xGfBCiw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ccL1ZDEHKxyJ2Fn81kIcR92zG9FOs3MjLjrzdmi8mKJrr0zbqMsPS7DztwbH5+1j4
 AqAJok66BCDtV2v74jPvbCC/Ax5zDl2AO9m6QL6UFE0QKKyuwQ9iobhBTUnJ+DG+vs
 O2hGtr5ZbiRd7QpBkP8fnaA/qNaArNu+2nFGrUpQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190627103112eucas1p1ae22251d569889712181490145817bea~sB4zUOgNn3171631716eucas1p1V;
 Thu, 27 Jun 2019 10:31:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 91.F0.04298.FEA941D5; Thu, 27
 Jun 2019 11:31:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190627103111eucas1p204450a032db835ba18a70d12939384e9~sB4yiP0K41122111221eucas1p2Y;
 Thu, 27 Jun 2019 10:31:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190627103111eusmtrp25aa2911c568498975452e64c9e863a35~sB4yUDhim0413004130eusmtrp2H;
 Thu, 27 Jun 2019 10:31:11 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-71-5d149aef4419
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 04.30.04140.FEA941D5; Thu, 27
 Jun 2019 11:31:11 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190627103110eusmtip2f3f2e980cd4c4b326eada11fb687fe3e~sB4xhqKXS1415414154eusmtip2e;
 Thu, 27 Jun 2019 10:31:10 +0000 (GMT)
Subject: Re: [PATCH v4 4/5] Documentation: devicetree: add PPMU events
 description
To: Chanwoo Choi <cw00.choi@samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, cwchoi00@gmail.com
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <3fdba210-2ca1-9fe3-c886-25d1d13bb133@partner.samsung.com>
Date: Thu, 27 Jun 2019 12:31:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <99a47066-3713-77fa-4afb-6f2f17a2721a@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0zNYRjHe3/3mpO306HHZdhpuTWFyd4wl2ntZGwNWZOWQ79VqhPnJ1Qu
 uSvdpFyOJJHSaumoVijdFItSTbXMZsplKaxTDBN+/TL9932e5/Ncvu9egVZ3s1OFEMNe0WjQ
 h2k5G6as4Xvzgs8mjf/C0kZ3UnypiCWdQ+9Z8u6RM7lW38yS5J6PNGlpucOTZ8f6eWLu6WBJ
 +70MjlgS6xG51FJFkcL6VzzJ6WylyMujeRw5WVnPk7r+0yz5+vgNWm2nK8gsQLoK0yteZ86P
 43R3bx7RJZXkI53FPMOb22qzIlAMC9knGl1XbrcJTmlOYnefwAeGf3rHor4J8chaALwE0s7W
 0PHIRlDjPATF2Sc5JRhC0FDdwMuUGlsQpOfOiEfCaEfVF43C5CLoGMyglGAAwdMPPxi5wR5v
 hhFzLSVrDRbhx/AvJEM0Tmfga00cJ0/isAuU5++RGRX2hG+WaiSnGewEZ/I85PQk7AtDFWak
 IHbw5HLv6HhrvAqy497SsqaxA3T3XqMUPROOl14ZdQP4Fw9l7amMYtMDylpfIEXbQ19jCa/o
 6fC7QmkGLEFs4vUx5iD0JF8dY5ZDXWMrK99G43lQdM9VeYc18CR7oiJtoWvATrnAFlLLLtJK
 WgVnTqmVGXOhJOH52J7JkFtwgU9BWtM4X6ZxXkzjvJj+r81CTD5yECOl8CBRWmQQ97tI+nAp
 0hDksjMi3Iz+/rimkcbBcjTctqMWYQFpJ6isHtj7q1n9PikqvBaBQGs1qogtGn+1KlAfFS0a
 IwKMkWGiVIumCYzWQRVj9dpPjYP0e8VQUdwtGv9VKcF6aixau76yz+H2yI1grzSnUEc358z7
 mRvfuW2bXpzsXHm46UBdT5vVtHVHfZ3Wfeo4Ty0+F+2YonKNNjSs9EuetTZpChMWumzX5g32
 I8W9Pjnpltm3LqZbLvRTQ68PPTvi+bkz4fQXn/KIwj0xXnPWdMUeX2r0oPyXBVgy0jic8DCV
 cXPP2qRlpGD9ovm0UdL/AQkFqAttAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsVy+t/xe7rvZ4nEGmx5w2yxccZ6VovrX56z
 Wjw7qm0x/8g5Vov+x6+ZLc6f38BucbbpDbvFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26x
 9PpFJovbjSvYLFr3HmG3OPymndXi24lHjA6CHmvmrWH02DnrLrvHplWdbB6bl9R79G1Zxejx
 eZNcAFuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2C
 XsaEc32sBS0CFV9/BzQwvuLpYuTgkBAwkdj3QaSLkYtDSGApo8S/ntXMXYycQHExiUn7trND
 2MISf651sUEUvWaUuHDwK1hCWCBE4t+mQ0wgtohAqsSTZWvBmpkFprJILPlfCNHQxiLxYdtx
 ZpBtbAJ6EjtWFYLU8Aq4SXz/fIARJMwioCrRscIFJCwqECExe1cDC0SJoMTJmU/AbE4Be4lF
 nU+hxptJzNv8EMoWl7j1ZD4ThC0v0bx1NvMERqFZSNpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nz
 i430ihNzi0vz0vWS83M3MQIje9uxn1t2MHa9Cz7EKMDBqMTDu2KncKwQa2JZcWXuIUYJDmYl
 Ed78MJFYId6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYSTc4HJp28knhDU0NzC0tDc2NzYzMLJXHe
 DoGDMUIC6YklqdmpqQWpRTB9TBycUg2MW1M1iutcAo8XndyssdDzg0fPg6iYdR08q7Tj+TNO
 GejtiPuzpv1uwXrPeXvPrmPkiDTL+bV9EfO6XXddJ7P0Wz+rerdr29srV6dO27e4VDY7eceE
 hwsresrLkv9I3Tc21f5w5Aev1Kl2nbOZax5c6P+9aL4AW7itjRJjXGftdPNf6kuYGX1ylFiK
 MxINtZiLihMB4iU3qQIDAAA=
X-CMS-MailID: 20190627103111eucas1p204450a032db835ba18a70d12939384e9
X-Msg-Generator: CA
X-RootMTR: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
References: <CGME20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5@eucas1p2.samsung.com>
 <20190605091236.24263-1-l.luba@partner.samsung.com>
 <20190605091236.24263-5-l.luba@partner.samsung.com>
 <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
 <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
 <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
 <776f58c2-a05c-8fa8-c7f5-458dc17926f6@partner.samsung.com>
 <99a47066-3713-77fa-4afb-6f2f17a2721a@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033116_573549_2B07DED0 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree <devicetree@vger.kernel.org>,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 kgene@kernel.org, =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDYvMjcvMTkgMzoxMSBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhp
IEx1a2FzeiwKPiAKPiBPbiAxOS4gNi4gMjYuIOyYpO2bhCAxMToxNywgTHVrYXN6IEx1YmEgd3Jv
dGU6Cj4+IEhpIEtyenlzenRvZiwKPj4KPj4gT24gNi8yNi8xOSA0OjAzIFBNLCBLcnp5c3p0b2Yg
S296bG93c2tpIHdyb3RlOgo+Pj4gT24gV2VkLCAyNiBKdW4gMjAxOSBhdCAxNTo1OCwgTHVrYXN6
IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpIENo
YW53b28sCj4+Pj4KPj4+PiBPbiA2LzI2LzE5IDEwOjIzIEFNLCBDaGFud29vIENob2kgd3JvdGU6
Cj4+Pj4+IEhpIEx1a2FzeiwKPj4+Pj4KPj4+Pj4gMjAxOeuFhCA27JuUIDXsnbwgKOyImCkgMTg6
MTQsIEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbQo+Pj4+PiA8bWFpbHRv
OmwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tPj7ri5jsnbQg7J6R7ISxOgo+Pj4+Pgo+Pj4+PiAg
ICAgICBFeHRlbmQgdGhlIGRvY3VtZW5hdGlvbiBieSBldmVudHMgZGVzY3JpcHRpb24gd2l0aCBu
ZXcgJ2V2ZW50LWRhdGEtdHlwZScKPj4+Pj4gICAgICAgZmllbGQuIEFkZCBleGFtcGxlIGhvdyB0
aGUgZXZlbnQgbWlnaHQgYmUgZGVmaW5lZCBpbiBEVC4KPj4+Pj4KPj4+Pj4gICAgICAgU2lnbmVk
LW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tCj4+Pj4+ICAg
ICAgIDxtYWlsdG86bC5sdWJhQHBhcnRuZXIuc2Ftc3VuZy5jb20+Pgo+Pj4+PiAgICAgICBTaWdu
ZWQtb2ZmLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbQo+Pj4+PiAgICAg
ICA8bWFpbHRvOmN3MDAuY2hvaUBzYW1zdW5nLmNvbT4+Cj4+Pj4+ICAgICAgIC0tLQo+Pj4+PiAg
ICAgICAgIC4uLi9iaW5kaW5ncy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LnR4dCAgICB8IDI2
ICsrKysrKysrKysrKysrKysrLS0KPj4+Pj4gICAgICAgICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gQWNrZWQt
Ynk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tCj4+Pj4KPj4+PiBUaGFuayB5
b3UgZm9yIHRoZSBBQ0tzIGZvciB0aGlzIGEgMi81IHBhdGNoLgo+Pj4+IERvIHlvdSB0aGluayB0
aGUgdjQgY291bGQgYmUgbWVyZ2VkIG5vdz8KPj4+Cj4+PiBJIHRoaW5rIHlvdSBoYXZlIGFsbCBu
ZWNlc3NhcnkgYWNrcy4gSSBjYW4gdGFrZSB0aGUgRFRTIHBhdGNoICg1LzUpCj4+PiBhbHRob3Vn
aCBwcm9iYWJseSBmb3IgbmV4dCBtZXJnZSB3aW5kb3cgYXMgSSBqdXN0IHNlbnQgb25lLgo+PiBU
aGVyZSB3YXMgb25lIHBhdGNoIDMvNQo+PiBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3Vy
bD9rPTgyZGQwZDBjYmUyYWJkMDQuODJkYzg2NDMtZDEzZWNkN2U1Zjk4OWI4ZCZ1PWh0dHBzOi8v
bGttbC5vcmcvbGttbC8yMDE5LzYvNS8yMTUKPj4gd2hpY2ggd2FzIHdhaXRpbmcgQUNLIG9yIEkg
bWlzc2VkIHRoZSBlbWFpbCBzb21laG93Lgo+IAo+IFdoZW4gSSB3YXMgaW4gdmFjYXRpb24sIHlv
dXIgcGF0Y2hlcyBhcmUgcmVtb3ZlZCBvbiBteSBlbWFpbCBhY2NvdW50Cj4gYmVjYXVzZSBvZiB0
aGUgZW1haWwgZXhwaXJhdGlvbi4gU28sIEkgcmVwbGllZCB3aXRoIG15IEFjayB0aHJvdWdoCj4g
Z21haWwgYWNjb3VudCBvbiBtb2JpbGUgcGhvbmUuIEJ1dCwgdGhlcmUgYXJlIHNvbWUgcHJvYmxl
bS4gTXkgcmVwbHkKPiBkaWRuJ3QgYXJyaXZlIHRoZSBtYWlsaW5nIGxpc3QuCj4gCj4gSSBoYXZl
IG5vIGFueSB3YXkgdG8gcmVwbHkgYWJvdXQgdGhpcyBhdCBjb21wYW55LiBBZnRlciBsZWF2aW5n
IG9uZSdzCj4gb2ZmaWNlLCBJJ2xsIHJlcGx5IHdpdGggQWNrIGFnYWluIGF0IGhvbWUuCj4gCk9L
LCBubyB3b3JyaWVzLCBpdCBpcyBub3QgYW4gZW1lcmdlbmN5IGlzc3VlLgpSZWdhcmRzLApMdWth
c3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
