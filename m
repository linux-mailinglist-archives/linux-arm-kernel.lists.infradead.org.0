Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1437111FC44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXRA9aYntge/6iTKTTTKV5DaOku3jd6jJLDn5Fjasxo=; b=nHqKXZhrDQPQ7J
	1swVsHqHjY5J/NFEGFT+p807fmE/1Kxa3WES/+WUF39nRUkLeZq02x1Abr8tumz8sVeTfxlPynW3D
	xzQP/vhtCRcw+VrbIXXWoEiIa/oW8AZ/5dLf9Uy1S7GC3uFejuSpY6GYj0uXpUupAFqFTUmTNKqQr
	N7oWnoS3xzi6qIxfyO0LSmFtIOcMwHWcM3hc5V9LP0tI87le0BGh91OOVrG7YcYP5uNL+0fC3DMzQ
	Fh+whUaj3yfCN/HKB6cYzoVlPsQV2X3xObXkt9pLFo3jGR1siIVrmj8WHqqS5/0FSv6tTAmbJZA0x
	K9G8spu0Na3bQ2NvmUhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igeW6-0006Jt-TB; Mon, 16 Dec 2019 00:45:42 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igeVx-0006If-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:45:35 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191216004528epoutp025a0d1b7a374f5b6946f824a7f442ce5b~gs2fVVNdz1339413394epoutp02p
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 00:45:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191216004528epoutp025a0d1b7a374f5b6946f824a7f442ce5b~gs2fVVNdz1339413394epoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576457128;
 bh=8SrOS0uNXUB2064t8Tnx6zhtsjBJWxM95cvkex1+2Ew=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=HmShdL8ANtJE85uKW5k2r81+JX/mfv4FtW4PoWN3Mw3vVkG/TtphhMQUkRrICwezq
 WWrgckvyNZv5f5LFyjSnrMvCdjAd9I/QwAB5heOi3MtRHRCV1c4JN7MvYusc7OhQ4s
 qf7hAyvtRAER81v6N3vbUM7ORGG8LKlNiMyz706Q=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191216004527epcas1p4efe5964a2622230fc39c68110c5adf1d~gs2eVX1NW1662016620epcas1p4K;
 Mon, 16 Dec 2019 00:45:27 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47bjH752xxzMqYm3; Mon, 16 Dec
 2019 00:45:23 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 87.EC.48019.3A3D6FD5; Mon, 16 Dec 2019 09:45:23 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191216004522epcas1p3dd06bfb24212c2fee558e7a7a23cf65c~gs2aaPWXQ2782227822epcas1p3L;
 Mon, 16 Dec 2019 00:45:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216004522epsmtrp195288207fd38caf8dc6ee3651a632978~gs2aZcB2Y2107121071epsmtrp19;
 Mon, 16 Dec 2019 00:45:22 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-52-5df6d3a38a79
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.C8.10238.2A3D6FD5; Mon, 16 Dec 2019 09:45:22 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191216004522epsmtip2a349e34b2a186331be05484d1c596d08~gs2aHWWc12795527955epsmtip2n;
 Mon, 16 Dec 2019 00:45:22 +0000 (GMT)
Subject: Re: [RFC PATCH v2 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <693e250d-9656-df67-9685-188020b43542@samsung.com>
Date: Mon, 16 Dec 2019 09:51:58 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20190919142236.4071-9-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGJsWRmVeSWpSXmKPExsWy7bCmvu7iy99iDfZe0LC4P6+V0WLjjPWs
 FvOPnGO1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2ixV3P7JabHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3Hxnc7mDz6tqxi9Pi8SS6A
 PSrbJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfobiWF
 ssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVJqQUpOgWWBXnFibnFpXrpecn6ulaGBgZEpUGFC
 dsaqyfNYCvrkKmbMmcbWwLhQvIuRk0NCwERi2vf/bF2MXBxCAjsYJd71vWEGSQgJfGKUmN4f
 BpH4xihxp/07M0xH/7o2RojEXkaJrgmtUM57RonzXx6zgVQJC6RLXO/8xASSEBH4zyhxetlK
 VhCHWeAYo8TeOz9ZQKrYBLQk9r+4AdbBL6AocfXHY0YQm1fATuLtvadMIDaLgKrEp7NXweKi
 AmESJ7e1QNUISpyc+QRoDgcHp4ClROdsfZAws4C4xK0n85kgbHmJ5q2zoc7exS4xaZ0qhO0i
 8WdDLzuELSzx6vgWKFtK4mV/G5RdLbHy5BFwwEgIdDBKbNl/gRUiYSyxf+lkJpC9zAKaEut3
 6UOEFSV2/p7LCLGXT+Ld1x5WkBIJAV6JjjYhiBJlicsP7jJB2JISi9s72SYwKs1C8swsJB/M
 QvLBLIRlCxhZVjGKpRYU56anFhsWmCDH9iZGcJrWstjBuOeczyFGAQ5GJR7eFxnfYoVYE8uK
 K3MPMUpwMCuJ8KZqf44V4k1JrKxKLcqPLyrNSS0+xGgKDOuJzFKiyfnAHJJXEm9oamRsbGxh
 YmhmamioJM7L8eNirJBAemJJanZqakFqEUwfEwenVANjbBfLzxqn93mu+0qKTX8UWjoLZ7/O
 dekWjwi+U+qpytI+wXL2zXPzGbZfE/4Rl2g1Z/UlWcXpLRt3qi8OzBD+1swyI8p83Y7opp6b
 K49b5SdX3Sq8/uuN68T59UdK/23ZHvLg2LkP1XVB0atn1antT+MK+Vq4WJcr7bRJm9Me6T2P
 naIvvAlQYinOSDTUYi4qTgQAXewU4OkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsWy7bCSvO6iy99iDZo+aVncn9fKaLFxxnpW
 i/lHzrFaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xYq7H1ktNj2+xmpxedccNovPvUcYLWac38dk
 sfbIXXaL240r2CxmTH7J5sDvsWlVJ5vHnWt72Dzudx9n8ti8pN5j47sdTB59W1YxenzeJBfA
 HsVlk5Kak1mWWqRvl8CVsWryPJaCPrmKGXOmsTUwLhTvYuTkkBAwkehf18bYxcjFISSwm1Hi
 ypG5LBAJSYlpF48ydzFyANnCEocPF0PUvGWUmNHbwgpSIyyQLnG98xMTSEJE4D+jxMO2Y2CT
 mAWOMUp8XLGeFW7sgqMPmUBa2AS0JPa/uMEGYvMLKEpc/fGYEcTmFbCTeHvvKVgNi4CqxKez
 V8HiogJhEjuXPGaCqBGUODnzCQvISZwClhKds/VBwswC6hJ/5l1ihrDFJW49mc8EYctLNG+d
 zTyBUXgWku5ZSFpmIWmZhaRlASPLKkbJ1ILi3PTcYsMCw7zUcr3ixNzi0rx0veT83E2M4JjV
 0tzBeHlJ/CFGAQ5GJR5eh+xvsUKsiWXFlbmHGCU4mJVEeFO1P8cK8aYkVlalFuXHF5XmpBYf
 YpTmYFES532adyxSSCA9sSQ1OzW1ILUIJsvEwSnVwBj76rf0OfvNDTY1mfliR3v2OvZpVap/
 t+Q58FRp2wzGm6sC0jt/zpeUZwx/mz1jf9PK7d69e7R8fxsVGH8Xv70nNeD4jCs9O5IlXh3+
 FONhE8Rz89xV+Yld4imrir30TJcskbt7o2OFE98udVlduRCD3woCT329tB7ecLx40d+r3Hlq
 XF/+dCWW4oxEQy3mouJEAE1MdK/VAgAA
X-CMS-MailID: 20191216004522epcas1p3dd06bfb24212c2fee558e7a7a23cf65c
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p299762f99dd55a5d625633ceec84219f9@eucas1p2.samsung.com>
 <20190919142236.4071-9-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_164533_967215_1E3C9B79 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 inki.dae@samsung.com, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8xOS8xOSAxMToyMiBQTSwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gRnJvbTogQXJ0dXIg
xZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gCj4gVGhpcyBwYXRjaCBh
ZGRzIHR3byBmaWVsZHMgdG8gdGhlIEV4eW5vczQ0MTIgRFRTOgo+ICAgLSBwYXJlbnQ6IHRvIGRl
Y2xhcmUgY29ubmVjdGlvbnMgYmV0d2VlbiBub2RlcyB0aGF0IGFyZSBub3QgaW4gYQo+ICAgICBw
YXJlbnQtY2hpbGQgcmVsYXRpb24gaW4gZGV2ZnJlcTsKPiAgIC0gI2ludGVyY29ubmVjdC1jZWxs
czogcmVxdWlyZWQgYnkgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsuCj4gCj4gUGxlYXNlIG5v
dGUgdGhhdCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBh
cmUgbm90Cj4gaGFyZGNvZGVkIGFueXdoZXJlLiBUaGUgYWJvdmUtbWVudGlvbmVkIHBhcmVudC1j
aGlsZCByZWxhdGlvbiBpbiBkZXZmcmVxCj4gbWVhbnMgdGhhdCB0aGVyZSBpcyBhIHNoYXJlZCBw
b3dlciBsaW5lICgnZGV2ZnJlcScgcHJvcGVydHkpLiBUaGUgJ3BhcmVudCcKPiBwcm9wZXJ0eSBv
bmx5IHNpZ25pZmllcyBhbiBpbnRlcmNvbm5lY3QgY29ubmVjdGlvbi4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPiAtLS0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCAxICsK
PiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAgICAgfCA5ICsr
KysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+IGluZGV4IGVh
NTVmMzc3ZDE3Yy4uYmRkNjFhZTg2MTAzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiBAQCAtMTA2LDYgKzEwNiw3IEBACj4gICZi
dXNfbGVmdGJ1cyB7Cj4gIAlkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9sZWZ0YnVzXzM+LCA8JnBw
bXVfcmlnaHRidXNfMz47Cj4gIAl2ZGQtc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+ICsJcGFyZW50
ID0gPCZidXNfZG1jPjsKCkFzIEkgbWVudGlvbmVkIG9uIG90aGVyIHJlcGx5LApJJ20gbm90IHN1
cmUgdG8gdXNlIHRoZSBzcGVjaWZpYyAncGFyZW50JyBwcm9wZXJ0eSB0byBtYWtlCnRoZSBjb25u
ZWN0aW9uIGJldHdlZW4gYnVzZXMuIElmIHBvc3NpYmxlLCB5b3UgYmV0dGVyIHRvCnVzZSB0aGUg
c3RhbmRhcmQgd2F5IGxpa2UgT0YgZ3JhcGguIEV4Y2VwdCBmb3IgbWFraW5nCnRoZSBjb25uZWN0
aW9uIGJldHdlZW4gYnVzZXMgYnkgJ3BhcmVudCcgcHJvcGVydHksCmxvb2tzIGdvb2QgdG8gbWUu
CgoKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIu
ZHRzaQo+IGluZGV4IGQyMGRiMmRmZThlMi4uYTcwYTY3MWFjYWNkIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTIuZHRzaQo+IEBAIC0zOTAsNiArMzkwLDcgQEAKPiAgCQkJY2xvY2tzID0gPCZj
bG9jayBDTEtfRElWX0RNQz47Cj4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gIAkJCW9wZXJh
dGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxlPjsKPiArCQkJI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiBA
QCAtMzk4LDYgKzM5OSw3IEBACj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9BQ1A+Owo+
ICAJCQljbG9jay1uYW1lcyA9ICJidXMiOwo+ICAJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZi
dXNfYWNwX29wcF90YWJsZT47Cj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gIAkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4gQEAgLTQwNiw2ICs0MDgsNyBAQAo+
ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfQzJDPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAi
YnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2RtY19vcHBfdGFibGU+Owo+
ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+ICAJCX07Cj4gIAo+IEBAIC00NTksNiArNDYyLDcgQEAKPiAgCQkJY2xvY2tzID0gPCZjbG9j
ayBDTEtfRElWX0dETD47Cj4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gIAkJCW9wZXJhdGlu
Zy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29wcF90YWJsZT47Cj4gKwkJCSNpbnRlcmNvbm5l
Y3QtY2VsbHMgPSA8MD47Cj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4g
QEAgLTQ2Nyw2ICs0NzEsNyBAQAo+ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfR0RSPjsK
PiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwm
YnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsK
PiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiBAQCAtNDc1LDYgKzQ4MCw3
IEBACj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0FDTEsxNjA+Owo+ICAJCQljbG9jay1uYW1l
cyA9ICJidXMiOwo+ICAJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfZGlzcGxheV9vcHBf
dGFibGU+Owo+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAJCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwo+ICAJCX07Cj4gIAo+IEBAIC00ODMsNiArNDg5LDcgQEAKPiAgCQkJY2xvY2tz
ID0gPCZjbG9jayBDTEtfQUNMSzEzMz47Cj4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4gIAkJ
CW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19mc3lzX29wcF90YWJsZT47Cj4gKwkJCSNpbnRl
cmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsK
PiAgCj4gQEAgLTQ5MSw2ICs0OTgsNyBAQAo+ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xL
MTAwPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12
MiA9IDwmYnVzX3Blcmlfb3BwX3RhYmxlPjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDww
PjsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiBAQCAtNDk5LDYgKzUw
Nyw3IEBACj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX1NDTEtfTUZDPjsKPiAgCQkJY2xvY2st
bmFtZXMgPSAiYnVzIjsKPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNf
b3BwX3RhYmxlPjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29v
IENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
