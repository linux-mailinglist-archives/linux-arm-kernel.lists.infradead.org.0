Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05A2B8916
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 04:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkXHCWkRSHX25HuuT7tQuuRdSJ0kLcOl39mGQ4q22eQ=; b=Xwn3SEgIrzrE+R
	tbu+HeuUxfIBhJpAvrknMZMrpyP88/QNGzoK8fqiI9JvnkckwRxJU2HlRXQZU7+qVb6qeooSnXIcP
	5iQfZc5rqvYmX9r8OmjQ028V5WBgDmAkciwt1VJq2Ua46QajDA7hNYXjlksmQQjBlYOovqMgKb8fm
	PZO6sUYwou7Ywfx0w75yr4PFM9Yplnd81Ujfl2vca8il9gBroPF/4PrKCBtd+ZvfwMgrIHEofUYbY
	7d6bCnwPSKnw7HPD3Kixuegq1XGic9hDb5vpvnKOqGoKuvJd3l4ol6Z4N0yyCFwk5SP1am6f2ZQxW
	AN98LKUFMkRC5Q8e3PMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB8NM-0007Ih-4u; Fri, 20 Sep 2019 02:10:24 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB8NA-0007IH-Cz
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 02:10:15 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190920021008epoutp016a3839cb34b75654d915d74dc6020528~GA4k7HF_Q2997629976epoutp01Z
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 02:10:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190920021008epoutp016a3839cb34b75654d915d74dc6020528~GA4k7HF_Q2997629976epoutp01Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568945408;
 bh=etYkGCORstqKXTVIg2t6d3cZ6ZYB6cQh4Ss274VI3xY=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=EU/lhYdLsq8ld6rVlyXwVHnSKFRtQlV/RqCDUsLMn8q0VOkkHw+WMZay/nhr0ZN/q
 DzFlOzCn2qvIZt4pb4ebwITctdB7xHTWRO+zztuJm4chdFMgi87QBI0fpL6xFfzFQG
 4BHBxXttVLpReEWqQd3nmrAzdgH8dYzTKyg8x1w0=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920021007epcas1p2b6e01836a9200ce64dfc0138fafc6740~GA4j_AGvO2443924439epcas1p2B;
 Fri, 20 Sep 2019 02:10:07 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46ZHH03kBZzMqYlx; Fri, 20 Sep
 2019 02:10:04 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 96.D2.04085.1F4348D5; Fri, 20 Sep 2019 11:09:53 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190920020952epcas1p14d7fc9a76aa1985326da62c465c7da10~GA4WsFw1m1489914899epcas1p1A;
 Fri, 20 Sep 2019 02:09:52 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920020952epsmtrp13f7eee748f3f7f5372d5097809c056e4~GA4WrK33T2859428594epsmtrp1O;
 Fri, 20 Sep 2019 02:09:52 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-d5-5d8434f1d46e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 60.B6.03638.0F4348D5; Fri, 20 Sep 2019 11:09:52 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920020952epsmtip25b017a52156e440fd537aa46363e5416~GA4WXn9UN3129031290epsmtip2W;
 Fri, 20 Sep 2019 02:09:52 +0000 (GMT)
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
From: Chanwoo Choi <cw00.choi@samsung.com>
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Organization: Samsung Electronics
Message-ID: <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
Date: Fri, 20 Sep 2019 11:14:20 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJJsWRmVeSWpSXmKPExsWy7bCmvu5Hk5ZYgwV7RC3uz2tltNg4Yz2r
 xctDmhbzj5xjtbjy9T2bxfS9m9gsJt2fwGJx/vwGdosVdz+yWmx6fI3V4vKuOWwWn3uPMFrM
 OL+PyWLtkbvsFrcbV7BZzJj8ks1BwGPTqk42jzvX9rB53O8+zuSxeUm9x8Z3O5g8+rasYvT4
 vEkugD0q2yYjNTEltUghNS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH
 6HYlhbLEnFKgUEBicbGSvp1NUX5pSapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGR
 KVBhQnbG20X/mAq+qFX8vnuasYHxknwXIyeHhICJxL8da5m7GLk4hAR2MEpMnfSOHSQhJPCJ
 UeLkWTkI+xujxNNWBZiGOZ1trBDxvYwSs39lQNjvGSVWXYkHsYUFwiXmvn4AVsMmoCWx/8UN
 NpAFIgL/GSVOL1vJCuIwgwz9Om8DC0gVv4CixNUfjxlBbF4BO4knh7+BXcEioCrR/30bM4gt
 KhAh8enBYVaIGkGJkzOfgPVyCthL/F+6D8xmFhCXuPVkPhOELS/RvHU22GsSAofYJV7evcoI
 8YKLxKxNbUwQtrDEq+Nb2CFsKYmX/W1QdrXEypNH2CCaOxgltuy/wAqRMJbYv3QyUDMH0AZN
 ifW79CHCihI7f8+Fms8r0bDxNzvEEXwS7772sIKUg8Q72oQgSpQlLj+4yzSBUXkWkndmIXlh
 FpIXZiEsW8DIsopRLLWgODc9tdiwwBQ5sjcxgpO1luUOxmPnfA4xCnAwKvHwKpQ3xwqxJpYV
 V+YeYpTgYFYS4Z1j2hQrxJuSWFmVWpQfX1Sak1p8iNEUGNoTmaVEk/OBmSSvJN7Q1MjY2NjC
 xNDM1NBQSZzXI70hVkggPbEkNTs1tSC1CKaPiYNTqoGRN+aDyJ01T2I+KCy5x/njGU91Zk7y
 GSf/d8u8uh8+ljskKx/3vVWo+emCr3JiQSLVB77410070CPdaMf5Ney9VZHI5QrXrHNl908I
 ML5vDip+rqHyd2nz61f3Jlc4KW6b+mhl+5ydG8XWrFo29aCn6Zf9fXeuJO5bvnSTX7YM570T
 6xeYzmp2VGIpzkg01GIuKk4EAF8bh2DsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOIsWRmVeSWpSXmKPExsWy7bCSvO4Hk5ZYgztndS3uz2tltNg4Yz2r
 xctDmhbzj5xjtbjy9T2bxfS9m9gsJt2fwGJx/vwGdosVdz+yWmx6fI3V4vKuOWwWn3uPMFrM
 OL+PyWLtkbvsFrcbV7BZzJj8ks1BwGPTqk42jzvX9rB53O8+zuSxeUm9x8Z3O5g8+rasYvT4
 vEkugD2KyyYlNSezLLVI3y6BK+Pton9MBV/UKn7fPc3YwHhJvouRk0NCwERiTmcbaxcjF4eQ
 wG5GiQfbnjNDJCQlpl08CmRzANnCEocPF0PUvGWU2PZ/NRtIjbBAuMTc1w9YQWw2AS2J/S9u
 sIEUiQj8Z5R42HaMEcRhFvjGKNH3eRkbRPtBRon2HxeYQFr4BRQlrv54zAhi8wrYSTw5/I0d
 xGYRUJXo/74N7AxRgQiJwztmQdUISpyc+YQFxOYUsJf4v3QfmM0soC7xZ94lZghbXOLWk/lM
 ELa8RPPW2cwTGIVnIWmfhaRlFpKWWUhaFjCyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L10vO
 z93ECI5eLa0djCdOxB9iFOBgVOLhVShvjhViTSwrrsw9xCjBwawkwjvHtClWiDclsbIqtSg/
 vqg0J7X4EKM0B4uSOK98/rFIIYH0xJLU7NTUgtQimCwTB6dUAyOD2MtPLQd+6fh8K5g5zepO
 4sz/L7c9iAlqnh3Zcnd28/REsYKMV8Kr1epDe3uk+GdvlvJyKxc/91x46Y57T4Ik3O69EvB6
 n9aWxG0YItHmHPskurwsMPvyJdaQ8CchdUzGcdleiYf5My/GmHw57jwxK3T7Y9XPzSyp9m2S
 z21q18wSn6MersRSnJFoqMVcVJwIAOiXQdzaAgAA
X-CMS-MailID: 20190920020952epcas1p14d7fc9a76aa1985326da62c465c7da10
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
 <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_191012_846059_B9A036A4 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, myungjoo.ham@samsung.com,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpJIHRyaWVkIHRvIGp1c3QgYnVpbGQgdGhpcyBwYXRjaCBvbiBtYWlubGluZSBr
ZXJuZWwgb3IgbGludXgtbmV4dC4KQnV0LCB3aGVuIEkgYXBwbGllZCB0aGVtLCBtZXJnZSBjb25m
bGljdCBoYXBwZW5zLiBZb3UgZGlkbid0IGRldmVsb3AKdGhlbSBvbiBsYXRlc3QgdmVyc2lvbi4g
UGxlYXNlIHJlYmFzZSB0aGVtIGJhc2VkIG9uIGxhdGVzdCBtYWlubGluZSBrZXJuZWwuCgpPbiAx
OS4gOS4gMjAuIOyYpOyghCAxMDowNywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+IEhpIEFydHVyLAo+
IAo+IE9uIHYxLCBJIG1lbnRpb25lZCB0aGF0IHdlIG5lZWQgdG8gZGlzY3VzcyBob3cgdG8gY2hh
bmdlCj4gdGhlIHYyIGZvciB0aGlzLiBCdXQsIEkgaGF2ZSBub3QgcmVjZWl2ZWQgYW55IHJlcGx5
IGZyb20geW91IG9uIHYxLgo+IEFuZCwgd2l0aG91dCB5b3VyIHJlcGx5IGZyb20gdjEsIHlvdSBq
dXN0IHNlbmQgdjIuCj4gCj4gSSB0aGluayB0aGF0IGl0IGlzIG5vdCBwcm9wZXIgZGV2ZWxvcG1l
bnQgc2VxdWVuY2UuCj4gSSBoYXZlIHNwZW50IG1hbnkgdGltZXMgdG8gcmV2aWV3IHlvdXIgcGF0
Y2hlcwo+IGFuZCBhbHNvIEknbGwgcmV2aWV3IHlvdXIgcGF0Y2hlcy4gWW91IGhhdmUgdG8gdGFr
ZSBjYXJlCj4gdGhlIHJlcGx5IG9mIHJldmlld2VyIGFuZCBhbmQga2VlcCB0aGUgYmFzaWMgcnVs
ZQo+IG9mIG1haWxpbmcgY29udHJpYnV0aW9uIGZvciBkaXNjdXNzaW9uLgo+IAo+IE9uIDE5LiA5
LiAxOS4g7Jik7ZuEIDExOjIyLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPj4gVGhlIGZvbGxvd2lu
ZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0
aGUKPj4gZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBkZXZmcmVxIGRy
aXZlciB3aXRoIGludGVyY29ubmVjdAo+PiBjYXBhYmlsaXRpZXMgc3RhcnRlZCBhcyBhIHJlc3Bv
bnNlIHRvIHRoZSBpc3N1ZSByZWZlcmVuY2VkIGluIFszXS4gVGhlCj4+IHBhdGNoZXMgY2FuIGJl
IHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3JvdXBzOgo+Pgo+PiAoYSkgUmVmYWN0b3Jp
bmcgdGhlIGV4aXN0aW5nIGRldmZyZXEgZHJpdmVyIGluIG9yZGVyIHRvIGltcHJvdmUgcmVhZGFi
aWxpdHkKPj4gYW5kIGFjY29tbW9kYXRlIGZvciBhZGRpbmcgbmV3IGNvZGUgKHBhdGNoZXMgMDEt
LTA0LzExKS4KPj4KPj4gKGIpIFR3ZWFraW5nIHRoZSBpbnRlcmNvbm5lY3QgZnJhbWV3b3JrIHRv
IHN1cHBvcnQgdGhlIGV4eW5vcy1idXMgdXNlIGNhc2UKPj4gKHBhdGNoZXMgMDUtLTA3LzExKS4g
RXhwb3J0aW5nIG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpIGFsbG93cyB1cyB0bwo+PiBhdm9p
ZCBoYXJkY29kaW5nIGV2ZXJ5IHNpbmdsZSBncmFwaCBlZGdlIGluIHRoZSBEVCBvciBkcml2ZXIg
c291cmNlLCBhbmQKPj4gcmVsYXhpbmcgdGhlIHJlcXVpcmVtZW50IGNvbnRhaW5lZCBpbiB0aGF0
IGZ1bmN0aW9uIHJlbW92ZXMgdGhlIG5lZWQgdG8KPj4gcHJvdmlkZSBkdW1teSBub2RlIElEcyBp
biB0aGUgRFQuIEFkanVzdGluZyB0aGUgbG9naWMgaW4KPj4gYXBwbHlfY29uc3RyYWludHMoKSAo
ZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jKSBhY2NvdW50cyBmb3IgdGhlIGZhY3QKPj4gdGhh
dCBldmVyeSBidXMgaXMgYSBzZXBhcmF0ZSBlbnRpdHkgYW5kIHRoZXJlZm9yZSBhIHNlcGFyYXRl
IGludGVyY29ubmVjdAo+PiBwcm92aWRlciwgYWxiZWl0IGNvbnN0aXR1dGluZyBhIHBhcnQgb2Yg
YSBsYXJnZXIgaGllcmFyY2h5Lgo+Pgo+PiAoYykgSW1wbGVtZW50aW5nIGludGVyY29ubmVjdCBw
cm92aWRlcnMgaW4gdGhlIGV4eW5vcy1idXMgZGV2ZnJlcSBkcml2ZXIKPj4gYW5kIGFkZGluZyBy
ZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQgcGxhdGZvcm0sIG5hbWVseQo+
PiBFeHlub3M0NDEyIChwYXRjaGVzIDA4LS0wOS8xMSkuIER1ZSB0byB0aGUgZmFjdCB0aGF0IHRo
aXMgYWltcyB0byBiZSBhCj4+IGdlbmVyaWMgZHJpdmVyIGZvciB2YXJpb3VzIEV4eW5vcyBTb0Nz
LCBub2RlIElEcyBhcmUgZ2VuZXJhdGVkIGR5bmFtaWNhbGx5Cj4+IHJhdGhlciB0aGFuIGhhcmRj
b2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBhcHByb2FjaCwK
Pj4gYnV0IGRlcGVuZHMgb24gY2hhbmdlcyBkZXNjcmliZWQgaW4gKGIpLgo+Pgo+PiAoZCkgSW1w
bGVtZW50aW5nIGEgc2FtcGxlIGludGVyY29ubmVjdCBjb25zdW1lciBmb3IgZXh5bm9zLW1peGVy
IHRhcmdldGVkCj4+IGF0IHRoZSBpc3N1ZSByZWZlcmVuY2VkIGluIFszXSwgYWdhaW4gd2l0aCBE
VCBpbmZvIG9ubHkgZm9yIEV4eW5vczQ0MTIKPj4gKHBhdGNoZXMgMTAtLTExLzExKS4KPj4KPj4g
SW50ZWdyYXRpb24gb2YgZGV2ZnJlcSBhbmQgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdGllcyBp
cyBhY2hpZXZlZCBieQo+PiB1c2luZyBkZXZfcG1fcW9zXyooKSBBUElbNV0uIEFsbCBuZXcgY29k
ZSB3b3JrcyBlcXVhbGx5IHdlbGwgd2hlbgo+PiBDT05GSUdfSU5URVJDT05ORUNUIGlzICduJyAo
YXMgaW4gZXh5bm9zX2RlZmNvbmZpZykgaW4gd2hpY2ggY2FzZSBhbGwKPj4gaW50ZXJjb25uZWN0
IEFQSSBmdW5jdGlvbnMgYXJlIG5vLW9wcy4KPj4KPj4gVGhpcyBwYXRjaHNldCBkZXBlbmRzIG9u
IFs1XS4KPj4KPj4gLS0tIENoYW5nZXMgc2luY2UgdjEgWzZdOgo+PiAqIFJlYmFzZSBvbiBbNF0g
KGNvdXBsZWQgcmVndWxhdG9ycykuCj4+ICogUmViYXNlIG9uIFs1XSAoZGV2X3BtX3FvcyBmb3Ig
ZGV2ZnJlcSkuCj4+ICogVXNlIGRldl9wbV9xb3NfKigpIEFQSVs1XSBpbnN0ZWFkIG9mIG92ZXJy
aWRpbmcgZnJlcXVlbmN5IGluCj4+ICAgZXh5bm9zX2J1c190YXJnZXQoKS4KPj4gKiBVc2UgSURS
IGZvciBub2RlIElEIGFsbG9jYXRpb24uCj4+ICogQXZvaWQgZ290byBpbiBmdW5jdGlvbnMgZXh0
cmFjdGVkIGluIHBhdGNoZXMgMDEgJiAwMiAoY2YuIHBhdGNoIDA0KS4KPj4gKiBSZXZlcnNlIG9y
ZGVyIG9mIG11bHRpcGxpY2F0aW9uIGFuZCBkaXZpc2lvbiBpbgo+PiAgIG1peGVyX3NldF9tZW1v
cnlfYmFuZHdpZHRoKCkgKHBhdGNoIDExKSB0byBhdm9pZCBpbnRlZ2VyIG92ZXJmbG93Lgo+Pgo+
PiAtLS0KPj4gQXJ0dXIgxZp3aWdvxYQKPj4gU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAo+
PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4+Cj4+IC0tLQo+PiBSZWZlcmVuY2VzOgo+PiBbMV0gRG9j
dW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0LnJzdAo+PiBbMl0gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QudHh0Cj4+
IFszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODYxNzU3LyAob3JpZ2lu
YWwgaXNzdWUpCj4+IFs0XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgz
NjYzLyAoY291cGxlZCByZWd1bGF0b3JzOyBtZXJnZWQpCj4+IFs1XSBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL2NvdmVyLzExMTQ5NDk3LyAoZGV2X3BtX3FvcyBmb3IgZGV2ZnJlcSkKPj4g
WzZdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwNTQ0MTcvICh2MSBvZiB0
aGlzIFJGQykKPj4KPj4gQXJ0dXIgxZp3aWdvxYQgKDEwKToKPj4gICBkZXZmcmVxOiBleHlub3Mt
YnVzOiBFeHRyYWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KCkKPj4gICBkZXZmcmVxOiBleHlu
b3MtYnVzOiBFeHRyYWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoKQo+PiAgIGRl
dmZyZXE6IGV4eW5vcy1idXM6IENoYW5nZSBnb3RvLWJhc2VkIGxvZ2ljIHRvIGlmLWVsc2UgbG9n
aWMKPj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBDbGVhbiB1cCBjb2RlCj4+ICAgaW50ZXJjb25u
ZWN0OiBFeHBvcnQgb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkKPj4gICBpbnRlcmNvbm5lY3Q6
IFJlbGF4IHJlcXVpcmVtZW50IGluIG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCj4+ICAgaW50
ZXJjb25uZWN0OiBSZWxheCBjb25kaXRpb24gaW4gYXBwbHlfY29uc3RyYWludHMoKQo+PiAgIGFy
bTogZHRzOiBleHlub3M6IEFkZCBwYXJlbnRzIGFuZCAjaW50ZXJjb25uZWN0LWNlbGxzIHRvIEV4
eW5vczQ0MTIKPj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBBZGQgaW50ZXJjb25uZWN0IGZ1bmN0
aW9uYWxpdHkgdG8gZXh5bm9zLWJ1cwo+PiAgIGFybTogZHRzOiBleHlub3M6IEFkZCBpbnRlcmNv
bm5lY3RzIHRvIEV4eW5vczQ0MTIgbWl4ZXIKPj4KPj4gTWFyZWsgU3p5cHJvd3NraSAoMSk6Cj4+
ICAgZHJtOiBleHlub3M6IG1peGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKPj4KPj4gIC4u
Li9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSAgICB8ICAgMSArCj4+ICBh
cmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAgMTAgKwo+PiAg
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyAgICAgICAgICAgICAgICAgIHwgMzE5ICsrKysr
KysrKysrKystLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYyAg
ICAgICAgIHwgIDcxICsrKy0KPj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAgICAgICAg
ICAgICAgICAgICB8ICAxMiArLQo+PiAgaW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlk
ZXIuaCAgICAgICAgIHwgICA2ICsKPj4gIDYgZmlsZXMgY2hhbmdlZCwgMzI3IGluc2VydGlvbnMo
KyksIDkyIGRlbGV0aW9ucygtKQo+Pgo+IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28g
Q2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
