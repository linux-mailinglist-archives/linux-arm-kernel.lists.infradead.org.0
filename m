Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD572C48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7hyH4s+5HHZ8RJN4QEmwKPYD0as1udJeejs+UcDmeA=; b=cACuiQIn9r3pDv
	T7zZFwd91yoIcENrwvkopmTgmj5GDS2QVq4cdr8TjhnpjSRvcPRobRi4z1YK8b4pn1tockmDwU0l3
	TEO/4vXFgQabqYJSCs+5SewZ9qvHvANXKosZR4Z47BuaBx1oFTUuIc0YNYEXPgnmWujIRC47Yfq32
	oWK7vq227c6MxhU3Iol0J/XvOH3T4x6mhhtP5R4ji3uRo65AYilGdQCqTV7uFoJJOIkxuFWOgvfgY
	53tORe23k2JBnIGX9AYDabiBJF4GT9KylskftwW1BS/zzCZrpaxiXwTupByvNfnbskr5QWJ3ONxcx
	jKq449ZeNzS1jKKJDmyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEPU-0005ye-1n; Wed, 24 Jul 2019 10:22:12 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEPG-0005xh-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:22:00 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190724102154epoutp042d5ad4ca57e7aa22a1adc285bfe8c563~0ULZUbJLS0075800758epoutp04F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 10:21:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190724102154epoutp042d5ad4ca57e7aa22a1adc285bfe8c563~0ULZUbJLS0075800758epoutp04F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563963714;
 bh=fJ240QuJ4AWiZBDFAKIhCbblPL1WVUx6EYRobuxht4Q=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=RrRNM4Ss0ZKvII7yXlCXw2mYCY+MlKGOVF7IbHbzRUCPy0HVQWLsOD29lFH9q1/DY
 XnzfPESI3RLHrwr71o2+pT70L5MmUzgbKb9sb6y1mjUNTNSHatIY+QrddzlUQMwPTe
 bA4eXqzTU7GviTV5rP1sfYS5F1Lh6KkTOljt5Qqg=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190724102153epcas1p41ee33c3d4484574076ca5c1dfe1fdb55~0ULYi-eAX3103531035epcas1p4B;
 Wed, 24 Jul 2019 10:21:53 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 45trxC3SzmzMqYkb; Wed, 24 Jul
 2019 10:21:51 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 38.1D.04160.F31383D5; Wed, 24 Jul 2019 19:21:51 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190724102150epcas1p3dedca2401c63bee9e76f9f874712ea50~0ULVQhhcD0054900549epcas1p3m;
 Wed, 24 Jul 2019 10:21:50 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190724102150epsmtrp2f9f243fd504c9fe4f1f313d42646f4a9~0ULVO9DxM1535615356epsmtrp2_;
 Wed, 24 Jul 2019 10:21:50 +0000 (GMT)
X-AuditID: b6c32a38-b4bff70000001040-84-5d38313f5331
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D9.53.03706.E31383D5; Wed, 24 Jul 2019 19:21:50 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190724102149epsmtip2beb32fb3b843c89bf05516b7005f889c~0ULU_BLq40400504005epsmtip2P;
 Wed, 24 Jul 2019 10:21:49 +0000 (GMT)
Subject: Re: [PATCH v4 3/5] drivers: devfreq: events: extend events by type
 of counted data
To: Lukasz Luba <l.luba@partner.samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <15375017-2e82-7df8-344c-a9c41d61331c@samsung.com>
Date: Wed, 24 Jul 2019 19:24:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <37af143f-a585-a28a-a36f-2ed25c5b6d3b@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Te0xTVxzeubf39sLW7azq/EkWLdcshmYgl9JybMAtmXNNRhSzLDFmDbtr
 b4DQV3oL6pwTNMjL4RYzxU5xibIM5oMV5oNZiaVxsgXKIGPzUULEPwgqOruh2Vxi27Nl/Pd9
 3/l++c53HgKrv8FnCVWegOL3yC6Rz9ScHczJy31NIvb85idAvm0/w5Fj0RGO7J++w5JYrEdL
 hnff1ZLrdS+T0PQER8b7j/Ak8UkUkfbYJYacisa1pPPXnxlyo/5rnjSEo1oyeLeRI/NXb6HX
 se1kx0lkuxCMa22h7mbe1ntil+3y3EXG1tbXjWyJ0PIy7Zbq4kpFdip+g+JxeJ1VnooS8e13
 yt8oN1vypVxpDSkSDR7ZrZSI60rLctdXuZJ7Fw21sqsmKZXJqiquXlvs99YEFEOlVw2UiIrP
 6fKt8eWpslut8VTkObxuq5SfX2BOGt+vrrza2sv5Ol7dNvzgHFeHDoktKEMAXAiJ2UmmBWUK
 enweQWJilqPkIYJ/euKIknkEjV/Vsy1ISI+MxTZTPYzg8/oeDSX3Edzcd4BJmRZhO+z9xpLS
 F+NhBFO7z/IpwuIEgqGpCS4VzmMjDMz8xqfwCzgbfnk8jVJYh9dCJB5JezT4FQh3tqQ9S/Bm
 eDg1yFHPizB0+LYmhTPwW3D6Xk/aw+KlcP32MYbiFbDnuy/YVDDgK1qoj4a1tPU6+HE2hChe
 BLM/9P2rZ0FiLsxTvAO6hqI8HW5C0DcwytEFEwx00poszoEz/aupnA0X/j6KaPDzMPfnPo4e
 lw6a9uqpZSWMT8UZipfB8cZm/lMkBhfUCS6oEFxQIfh/2JdI041eUnyqu0JRJV/hwusOofTD
 NpLz6OJIaQRhAYnP6QzPFNn1nFyrbndHEAisuFi3qc5i1+uc8vYPFb+33F/jUtQIMidP+zM2
 a4nDm/wmnkC5ZC4wmUykULKYJUlcqut4kmPX4wo5oFQrik/x/zfHCBlZdch8s71pp+mjySBX
 mo0L3j1IjNiyjQjzo3nWvkOTzKhzxZGJtpGA/BdsrX2vd2x68JpxVaNi3WTNbL3W9Wjk2X7d
 6fVFd9zFjtatx3PedOBd51Y1eOLLY9/P7Lg/Fr8lVjWIkmD2Zo5b9/y0fyb0Mfxx8PeNXVcO
 qG2BDTuHTnwgatRKWTKyflV+CrT0vvbuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsWy7bCSvK6doUWswZF/7BYbZ6xntZh/5Byr
 Rf/j18wW589vYLc42/SG3eJWg4zFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26x9PpFJovb
 jSvYLFr3HmG3OPymndXi24lHjA4CHmvmrWH02DnrLrvHplWdbB6bl9R7HHy3h8mjb8sqRo/P
 m+QC2KO4bFJSczLLUov07RK4Mk50b2YtmKdTcfbDdtYGxulKXYwcHBICJhKXzkd0MXJxCAns
 ZpS4s7yBuYuREyguKTHt4lFmiBphicOHiyFq3jJKHDl+gR2kRlggVqLp0mVWkISIwFlGiUWT
 FrCDOMwCnxklpq+5zAzR0sYkMa31MAtIC5uAlsT+FzfYQGx+AUWJqz8eM4LYvAJ2EofuHmIF
 sVkEVCX2Lu0CqxEViJA4vGMWVI2gxMmZT8DmcAq4S6x7uwGshllAXeLPvEvMELa4xK0n85kg
 bHmJ5q2zmScwCs9C0j4LScssJC2zkLQsYGRZxSiZWlCcm55bbFhgmJdarlecmFtcmpeul5yf
 u4kRHLtamjsYLy+JP8QowMGoxMOrwGAeK8SaWFZcmXuIUYKDWUmEN7DBLFaINyWxsiq1KD++
 qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGxnpe/4KZ/d3xG0wSV62TWjHl
 dlb5zm//XqRPfck50fIC675Pbzt07nWJmnzZGapf+GGewK858q91H+QkSVxarJT/SzT7Y6jC
 rZuLdonNXhLhpzXvl5+bxWtp65uLfzOenXFZ1UD6XO3+4MINV5Z27lpquceqm0W6cutDjfzO
 34f/Lax0fe355LkSS3FGoqEWc1FxIgCr0Is22QIAAA==
X-CMS-MailID: 20190724102150epcas1p3dedca2401c63bee9e76f9f874712ea50
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a@eucas1p2.samsung.com>
 <20190605091236.24263-4-l.luba@partner.samsung.com>
 <37af143f-a585-a28a-a36f-2ed25c5b6d3b@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_032158_590185_991DCC87 
X-CRM114-Status: GOOD (  29.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVrYXN6LAoKT24gMTkuIDcuIDI0LiDsmKTtm4QgNzoxNSwgTHVrYXN6IEx1YmEgd3JvdGU6
Cj4gSGkgQ2hhbndvbywKPiAKPiBDb3VsZCB5b3UgaGF2ZSBhIGxvb2sgYSB0aGlzIHBhdGNoLCBw
bGVhc2U/Cj4gVGhpcyBwYXRjaCBoYXMgYmVlbiByZXdyaXR0ZW4gYWNjb3JpZmluZyB0byB5b3Vy
IHN1Z2dlc3Rpb24uCj4gS3J6eXN6dG9mIHRyaWVkIHRvIGFwcGx5IDUvNSBEVCBwYXRjaCBvbiBo
aXMgY3VycmVudCBicmFuY2gsCj4gYnV0IGl0IGlzIG1pc3NpbmcgZWFybGllciBzdHVmZi4KPiBU
aGUgb3RoZXIgcGF0Y2hlcyBoYXZlIG5lZWRlZCBBQ0tzIHNvIGNvdWxkIGdvIHRocm91Z2ggZGV2
ZnJlcSB0cmVlCj4gcHJvYmFibHksIGJ1dCB0aGlzIG9uZSBsZWZ0LgoKU29ycnkgZm9yIHRoZSBs
YXRlIHJlcGx5LiBJdCBsb29rcyBnb29kIHRvIG1lLgoKQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8
Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKPiAKPiBSZWdhcmRzLAo+IEx1a2Fzego+IAo+IE9uIDYv
NS8xOSAxMToxMiBBTSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+IFRoaXMgcGF0Y2ggYWRkcyBwb3Np
YmlsaXR5IHRvIGNob29zZSB3aGF0IHR5cGUgb2YgZGF0YSBzaG91bGQgYmUgY291bnRlZAo+PiBi
eSB0aGUgUFBNVSBjb3VudGVyLiBOb3cgdGhlIHR5cGUgY29tZXMgZnJvbSBEVCB3aGVyZSB0aGUg
ZXZlbnQgaGFzIGJlZW4KPj4gZGVmaW5lZC4gV2hlbiB0aGVyZSBpcyBubyAnZXZlbnQtZGF0YS10
eXBlJyB0aGUgZGVmYXVsdCB2YWx1ZSBpcyB1c2VkLAo+PiB3aGljaCBpcyAncmVhZCt3cml0ZSBk
YXRhIGluIGJ5dGVzJy4KPj4gSXQgaXMgbmVlZGVkIHdoZW4geW91IHdhbnQgdG8ga25vdyBub3Qg
b25seSByZWFkK3dyaXRlIGRhdGEgYnl0ZXMgYnV0Cj4+IGkuZS4gb25seSB3cml0ZSBkYXRhIGlu
IGJ5dGUsIG9yIG51bWJlciBvZiByZWFkIHJlcXVlc3RzLCBldGMuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4KPj4gLS0tCj4+ICAg
ZHJpdmVycy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LmMgfCA2MCArKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLQo+PiAgIGluY2x1ZGUvbGludXgvZGV2ZnJlcS1ldmVudC5oICAgICAgIHwg
IDYgKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBt
dS5jIGIvZHJpdmVycy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LmMKPj4gaW5kZXggMTdmM2M4
NmE2ZjAwLi4xMmY2MzczMjBlOWUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVu
dC9leHlub3MtcHBtdS5jCj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBt
dS5jCj4+IEBAIC0xNjEsOSArMTYxLDkgQEAgc3RhdGljIGludCBleHlub3NfcHBtdV9zZXRfZXZl
bnQoc3RydWN0IGRldmZyZXFfZXZlbnRfZGV2ICplZGV2KQo+PiAgIAlpZiAocmV0IDwgMCkKPj4g
ICAJCXJldHVybiByZXQ7Cj4+ICAgCj4+IC0JLyogU2V0IHRoZSBldmVudCBvZiBSZWFkL1dyaXRl
IGRhdGEgY291bnQgICovCj4+ICsJLyogU2V0IHRoZSBldmVudCBvZiBwcm9wZXIgZGF0YSB0eXBl
IG1vbml0b3JpbmcgKi8KPj4gICAJcmV0ID0gcmVnbWFwX3dyaXRlKGluZm8tPnJlZ21hcCwgUFBN
VV9CRVZUeFNFTChpZCksCj4+IC0JCQkJUFBNVV9ST19EQVRBX0NOVCB8IFBQTVVfV09fREFUQV9D
TlQpOwo+PiArCQkJICAgZWRldi0+ZGVzYy0+ZGF0YV90eXBlKTsKPj4gICAJaWYgKHJldCA8IDAp
Cj4+ICAgCQlyZXR1cm4gcmV0Owo+PiAgIAo+PiBAQCAtMzc1LDIzICszNzUsMTEgQEAgc3RhdGlj
IGludCBleHlub3NfcHBtdV92Ml9zZXRfZXZlbnQoc3RydWN0IGRldmZyZXFfZXZlbnRfZGV2ICpl
ZGV2KQo+PiAgIAlpZiAocmV0IDwgMCkKPj4gICAJCXJldHVybiByZXQ7Cj4+ICAgCj4+IC0JLyog
U2V0IHRoZSBldmVudCBvZiBSZWFkL1dyaXRlIGRhdGEgY291bnQgICovCj4+IC0Jc3dpdGNoIChp
ZCkgewo+PiAtCWNhc2UgUFBNVV9QTU5DTlQwOgo+PiAtCWNhc2UgUFBNVV9QTU5DTlQxOgo+PiAt
CWNhc2UgUFBNVV9QTU5DTlQyOgo+PiAtCQlyZXQgPSByZWdtYXBfd3JpdGUoaW5mby0+cmVnbWFw
LCBQUE1VX1YyX0NIX0VWeF9UWVBFKGlkKSwKPj4gLQkJCQlQUE1VX1YyX1JPX0RBVEFfQ05UIHwg
UFBNVV9WMl9XT19EQVRBX0NOVCk7Cj4+IC0JCWlmIChyZXQgPCAwKQo+PiAtCQkJcmV0dXJuIHJl
dDsKPj4gLQkJYnJlYWs7Cj4+IC0JY2FzZSBQUE1VX1BNTkNOVDM6Cj4+IC0JCXJldCA9IHJlZ21h
cF93cml0ZShpbmZvLT5yZWdtYXAsIFBQTVVfVjJfQ0hfRVZ4X1RZUEUoaWQpLAo+PiAtCQkJCVBQ
TVVfVjJfRVZUM19SV19EQVRBX0NOVCk7Cj4+IC0JCWlmIChyZXQgPCAwKQo+PiAtCQkJcmV0dXJu
IHJldDsKPj4gLQkJYnJlYWs7Cj4+IC0JfQo+PiArCS8qIFNldCB0aGUgZXZlbnQgb2YgcHJvcGVy
IGRhdGEgdHlwZSBtb25pdG9yaW5nICovCj4+ICsJcmV0ID0gcmVnbWFwX3dyaXRlKGluZm8tPnJl
Z21hcCwgUFBNVV9WMl9DSF9FVnhfVFlQRShpZCksCj4+ICsJCQkgICBlZGV2LT5kZXNjLT5kYXRh
X3R5cGUpOwo+PiArCWlmIChyZXQgPCAwKQo+PiArCQlyZXR1cm4gcmV0Owo+PiAgIAo+PiAgIAkv
KiBSZXNldCBjeWNsZSBjb3VudGVyL3BlcmZvcm1hbmNlIGNvdW50ZXIgYW5kIGVuYWJsZSBQUE1V
ICovCj4+ICAgCXJldCA9IHJlZ21hcF9yZWFkKGluZm8tPnJlZ21hcCwgUFBNVV9WMl9QTU5DLCAm
cG1uYyk7Cj4+IEBAIC01MDcsNiArNDk1LDcgQEAgc3RhdGljIGludCBvZl9nZXRfZGV2ZnJlcV9l
dmVudHMoc3RydWN0IGRldmljZV9ub2RlICpucCwKPj4gICAJc3RydWN0IGRldmljZV9ub2RlICpl
dmVudHNfbnAsICpub2RlOwo+PiAgIAlpbnQgaSwgaiwgY291bnQ7Cj4+ICAgCWNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgKm9mX2lkOwo+PiArCWludCByZXQ7Cj4+ICAgCj4+ICAgCWV2ZW50c19u
cCA9IG9mX2dldF9jaGlsZF9ieV9uYW1lKG5wLCAiZXZlbnRzIik7Cj4+ICAgCWlmICghZXZlbnRz
X25wKSB7Cj4+IEBAIC01NTYsNiArNTQ1LDM5IEBAIHN0YXRpYyBpbnQgb2ZfZ2V0X2RldmZyZXFf
ZXZlbnRzKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+ICAgCQlkZXNjW2pdLmRyaXZlcl9kYXRh
ID0gaW5mbzsKPj4gICAKPj4gICAJCW9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKG5vZGUsICJldmVu
dC1uYW1lIiwgJmRlc2Nbal0ubmFtZSk7Cj4+ICsJCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMy
KG5vZGUsICJldmVudC1kYXRhLXR5cGUiLAo+PiArCQkJCQkgICAmZGVzY1tqXS5kYXRhX3R5cGUp
Owo+PiArCQlpZiAocmV0KSB7Cj4+ICsJCQkvKiBTZXQgdGhlIGV2ZW50IG9mIHByb3BlciBkYXRh
IHR5cGUgY291bnRpbmcuCj4+ICsJCQkgKiBDaGVjayBpZiB0aGUgZGF0YSB0eXBlIGhhcyBiZWVu
IGRlZmluZWQgaW4gRFQsCj4+ICsJCQkgKiB1c2UgZGVmYXVsdCBpZiBub3QuCj4+ICsJCQkgKi8K
Pj4gKwkJCWlmIChpbmZvLT5wcG11X3R5cGUgPT0gRVhZTk9TX1RZUEVfUFBNVV9WMikgewo+PiAr
CQkJCXN0cnVjdCBkZXZmcmVxX2V2ZW50X2RldiBlZGV2Owo+PiArCQkJCWludCBpZDsKPj4gKwkJ
CQkvKiBOb3QgYWxsIHJlZ2lzdGVycyB0YWtlIHRoZSBzYW1lIHZhbHVlIGZvcgo+PiArCQkJCSAq
IHJlYWQrd3JpdGUgZGF0YSBjb3VudC4KPj4gKwkJCQkgKi8KPj4gKwkJCQllZGV2LmRlc2MgPSAm
ZGVzY1tqXTsKPj4gKwkJCQlpZCA9IGV4eW5vc19wcG11X2ZpbmRfcHBtdV9pZCgmZWRldik7Cj4+
ICsKPj4gKwkJCQlzd2l0Y2ggKGlkKSB7Cj4+ICsJCQkJY2FzZSBQUE1VX1BNTkNOVDA6Cj4+ICsJ
CQkJY2FzZSBQUE1VX1BNTkNOVDE6Cj4+ICsJCQkJY2FzZSBQUE1VX1BNTkNOVDI6Cj4+ICsJCQkJ
CWRlc2Nbal0uZGF0YV90eXBlID0gUFBNVV9WMl9ST19EQVRBX0NOVAo+PiArCQkJCQkJfCBQUE1V
X1YyX1dPX0RBVEFfQ05UOwo+PiArCQkJCQlicmVhazsKPj4gKwkJCQljYXNlIFBQTVVfUE1OQ05U
MzoKPj4gKwkJCQkJZGVzY1tqXS5kYXRhX3R5cGUgPQo+PiArCQkJCQkJUFBNVV9WMl9FVlQzX1JX
X0RBVEFfQ05UOwo+PiArCQkJCQlicmVhazsKPj4gKwkJCQl9Cj4+ICsJCQl9IGVsc2Ugewo+PiAr
CQkJCWRlc2Nbal0uZGF0YV90eXBlID0gUFBNVV9ST19EQVRBX0NOVCB8Cj4+ICsJCQkJCVBQTVVf
V09fREFUQV9DTlQ7Cj4+ICsJCQl9Cj4+ICsJCX0KPj4gICAKPj4gICAJCWorKzsKPj4gICAJfQo+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLWV2ZW50LmggYi9pbmNsdWRlL2xp
bnV4L2RldmZyZXEtZXZlbnQuaAo+PiBpbmRleCA0ZGIwMGIwMmNhM2YuLmNjMTYwYjEyNzRjMCAx
MDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kZXZmcmVxLWV2ZW50LmgKPj4gKysrIGIvaW5j
bHVkZS9saW51eC9kZXZmcmVxLWV2ZW50LmgKPj4gQEAgLTgxLDE0ICs4MSwyMCBAQCBzdHJ1Y3Qg
ZGV2ZnJlcV9ldmVudF9vcHMgewo+PiAgICAqIHN0cnVjdCBkZXZmcmVxX2V2ZW50X2Rlc2MgLSB0
aGUgZGVzY3JpcHRvciBvZiBkZXZmcmVxLWV2ZW50IGRldmljZQo+PiAgICAqCj4+ICAgICogQG5h
bWUJOiB0aGUgbmFtZSBvZiBkZXZmcmVxLWV2ZW50IGRldmljZS4KPj4gKyAqIEBkYXRhX3R5cGUJ
OiB0aGUgZGF0YSB0eXBlIHdoaWNoIGlzIGdvaW5nIHRvIGJlIGNvdW50ZWQgaW4gdGhlIHJlZ2lz
dGVyLgo+PiAgICAqIEBkcml2ZXJfZGF0YQk6IHRoZSBwcml2YXRlIGRhdGEgZm9yIGRldmZyZXEt
ZXZlbnQgZHJpdmVyLgo+PiAgICAqIEBvcHMJCTogdGhlIG9wZXJhdGlvbiB0byBjb250cm9sIGRl
dmZyZXEtZXZlbnQgZGV2aWNlLgo+PiAgICAqCj4+ICAgICogRWFjaCBkZXZmcmVxLWV2ZW50IGRl
dmljZSBpcyBkZXNjcmliZWQgd2l0aCBhIHRoaXMgc3RydWN0dXJlLgo+PiAgICAqIFRoaXMgc3Ry
dWN0dXJlIGNvbnRhaW5zIHRoZSB2YXJpb3VzIGRhdGEgZm9yIGRldmZyZXEtZXZlbnQgZGV2aWNl
Lgo+PiArICogVGhlIGRhdGFfdHlwZSBkZXNjcmliZXMgd2hhdCBpcyBnb2luZyB0byBiZSBjb3Vu
dGVkIGluIHRoZSByZWdpc3Rlci4KPj4gKyAqIEl0IG1pZ2h0IGNob29zZSB0byBjb3VudCBlLmcu
IHJlYWQgcmVxdWVzdHMsIHdyaXRlIGRhdGEgaW4gYnl0ZXMsIGV0Yy4KPj4gKyAqIFRoZSBmdWxs
IHN1cHBvcnRlZCBsaXN0IG9mIHR5cGVzIGlzIHByZXNlbnQgaW4gc3BlY3lmaWMgaGVhZGVyIGlu
Ogo+PiArICogaW5jbHVkZS9kdC1iaW5kaW5ncy9wbXUvLgo+PiAgICAqLwo+PiAgIHN0cnVjdCBk
ZXZmcmVxX2V2ZW50X2Rlc2Mgewo+PiAgIAljb25zdCBjaGFyICpuYW1lOwo+PiArCXUzMiBkYXRh
X3R5cGU7Cj4+ICAgCXZvaWQgKmRyaXZlcl9kYXRhOwo+PiAgIAo+PiAgIAljb25zdCBzdHJ1Y3Qg
ZGV2ZnJlcV9ldmVudF9vcHMgKm9wczsKPj4KPiAKPiAKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFu
d29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
