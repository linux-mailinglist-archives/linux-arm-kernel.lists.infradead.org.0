Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEB411FD03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 03:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iDpSlVVsIgiWn44cplc9CqGJyunc/dj9zfyIH5333M=; b=J5cYMWO1IoC8cE
	RLwoGPiV45QXFckl9yfvPkGwlskN7eabSX0EgS+IpBNz1yDjHXy067xqfKxq/QEYWGZcZTmgKtCnC
	0MbUwtgdgxSzIJHfqXjwTkyOk0Pr2pV3EEw9WQ+l9Gx7zYsJbNw7HcZk3LPtFttPM9ERCPtDDMv9k
	HtFPco12RDDlhUQaE4XimR0pYf+4CUfJtnL+eedg38O4x6tlIggdTzeUhhjOpnVNzxa2QvoAng3LR
	NDBFrsp1/jd+PsK5ZswfYEX5uRDnkUmG9EFASuWADyrPQtqqcqyM7rj8erQKouh7QXVUbWmZhuxvk
	Uze+pxENlqyBDJMRjhdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iggVI-0005Y0-MP; Mon, 16 Dec 2019 02:53:00 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iggV9-0005X6-7A
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 02:52:53 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191216025246epoutp018e83685617da6df4d6a2dfcd482e8f0c~gulpIQr3D1391313913epoutp018
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 02:52:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191216025246epoutp018e83685617da6df4d6a2dfcd482e8f0c~gulpIQr3D1391313913epoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576464766;
 bh=/PWYmeUhh3ou+AZOp2VAT0jkte7v9srIXdaSGzR3udg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=p4xhlFqFTdkJYKSnAHwZxP4JU3aaRY33TG4wrQ8DRF/npI3l34PtV3cTl0SKuUmlX
 UUg+SriHTpvY5BP/tEW89C2Rk4vE+zV4gV3t/YZ32nKlz5EdHvZtocZxvChXgCxzia
 ma6SwbgGVYNwGedbUb1TexDvZLBAsJNJ1vc+Horo=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191216025246epcas1p3eff9b42f49bcd6e27e8c91891e9f4c31~gulotuucC2925429254epcas1p3I;
 Mon, 16 Dec 2019 02:52:46 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47bm626JyYzMqYkV; Mon, 16 Dec
 2019 02:52:42 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 42.10.48019.A71F6FD5; Mon, 16 Dec 2019 11:52:42 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191216025242epcas1p4af6a46c4d50f5e41a44d50b0fdfc1825~gullMawfQ1584215842epcas1p4B;
 Mon, 16 Dec 2019 02:52:42 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216025242epsmtrp182ab11862d87b6219cde22d349bbaad6~gullKire_1347813478epsmtrp1F;
 Mon, 16 Dec 2019 02:52:42 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-0c-5df6f17a2b32
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F0.A6.06569.A71F6FD5; Mon, 16 Dec 2019 11:52:42 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191216025242epsmtip2ef8a4df971d610f9c2658d0b080c8238~gulk84ytd2221022210epsmtip22;
 Mon, 16 Dec 2019 02:52:42 +0000 (GMT)
Subject: Re: [RFC PATCH v2 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
From: Chanwoo Choi <cw00.choi@samsung.com>
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Organization: Samsung Electronics
Message-ID: <eecc5d38-f6ab-b1ea-1a08-0afb2dcddbef@samsung.com>
Date: Mon, 16 Dec 2019 11:59:17 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <693e250d-9656-df67-9685-188020b43542@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGJsWRmVeSWpSXmKPExsWy7bCmgW7Vx2+xBjuXmFjcn9fKaLFxxnpW
 i/lHzrFaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xYq7H1ktNj2+xmpxedccNovPvUcYLWac38dk
 sfbIXXaL240r2CxmTH7J5sDvsWlVJ5vHnWt72Dzudx9n8ti8pN5j47sdTB59W1YxenzeJBfA
 HpVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQN0t5JC
 WWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwLJArzgxt7g0L10vOT/XytDAwMgUqDAh
 O+Nv3yWmgitaFT233zE3MC5Q7GLk5JAQMJG4sOYscxcjF4eQwA5GiZl7T0A5nxglFp5vY4Fw
 vjFKbL+6lRWm5eLJ71BVexkl/l1+yAaSEBJ4zyix54I/iC0skC5xvfMTE4jNJqAlsf/FDTaQ
 BhGB/4wSp5etZAVxmAWOMUrsvfOTBaSKX0BR4uqPx4wgNq+AncTMc7vBprIIqEosXHsAbJKo
 QJjEyW0tUDWCEidnPgHr5RSwl/g2axoziM0sIC5x68l8JghbXqJ562xmiLMPsUvcWm7RxcgB
 ZLtIHNiWDhEWlnh1fAs7hC0l8bK/Dcqullh58gjY0RICHYwSW/ZfgHrfWGL/0slMIHOYBTQl
 1u/ShwgrSuz8PZcRYi2fxLuvPawQq3glOtqEIEqUJS4/uMsEYUtKLG7vZJvAqDQLyTOzkDww
 C8kDsxCWLWBkWcUollpQnJueWmxYYIIc25sYwWlay2IH455zPocYBTgYlXh4X2R8ixViTSwr
 rsw9xCjBwawkwpuq/TlWiDclsbIqtSg/vqg0J7X4EKMpMKwnMkuJJucDc0heSbyhqZGxsbGF
 iaGZqaGhkjgvx4+LsUIC6YklqdmpqQWpRTB9TBycUg2MWkdTU5UD35r9mTk3s0CapziH/4rd
 xyYfi89eMmnXN+w3Or1NIplB41bI+zdvJt4+czxqodS68/8L36hd7+lfvPHEhosm2unxYZ+W
 tapqC1ixXZmywOZ6/fOJnnc4p1+aOIl3Bcuk2yvy5JdIvt06q76s9ted9k2dXFHWRSWtT8w9
 O1xm6HBrKbEUZyQaajEXFScCAMLL5vvpAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMIsWRmVeSWpSXmKPExsWy7bCSvG7Vx2+xBhvO81jcn9fKaLFxxnpW
 i/lHzrFaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xYq7H1ktNj2+xmpxedccNovPvUcYLWac38dk
 sfbIXXaL240r2CxmTH7J5sDvsWlVJ5vHnWt72Dzudx9n8ti8pN5j47sdTB59W1YxenzeJBfA
 HsVlk5Kak1mWWqRvl8CV8bfvElPBFa2KntvvmBsYFyh2MXJySAiYSFw8+Z25i5GLQ0hgN6NE
 97a/LBAJSYlpF48CJTiAbGGJw4eLIWreMkqs3tfNCFIjLJAucb3zExOIzSagJbH/xQ02kCIR
 gf+MEg/bjjGCOMwCxxglPq5YzwrR/oFRYvLz36wgLfwCihJXfzwGG8UrYCcx89xuNhCbRUBV
 YuHaA2BjRQXCJHYuecwEUSMocXLmE7DzOAXsJb7NmsYMYjMLqEv8mXcJyhaXuPVkPhOELS/R
 vHU28wRG4VlI2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1kvNzNzGC
 o1ZLawfjiRPxhxgFOBiVeHgdsr/FCrEmlhVX5h5ilOBgVhLhTdX+HCvEm5JYWZValB9fVJqT
 WnyIUZqDRUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBUUPjxK3mjDfvVZKe+dXzbP/113KJ
 34lbYRLqM86rrfg2+9juqfv+buT880pySfiEaJtd//9FLyj6oqUbOuX4FI2nPfOFuc7wRmxw
 O8TELxituFHy0POzoenpK8t9go/e3CF4eP0Xw+nKBzI9uU3M9RgOPDuyv27rkpm6Z+vmPrHW
 4TE9FXFvs4QSS3FGoqEWc1FxIgA03wJD1gIAAA==
X-CMS-MailID: 20191216025242epcas1p4af6a46c4d50f5e41a44d50b0fdfc1825
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142329eucas1p299762f99dd55a5d625633ceec84219f9
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142329eucas1p299762f99dd55a5d625633ceec84219f9@eucas1p2.samsung.com>
 <20190919142236.4071-9-a.swigon@samsung.com>
 <693e250d-9656-df67-9685-188020b43542@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_185251_674886_F5663DCC 
X-CRM114-Status: GOOD (  27.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

SGksCgpPbiAxMi8xNi8xOSA5OjUxIEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gT24gOS8xOS8x
OSAxMToyMiBQTSwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4+IEZyb206IEFydHVyIMWad2lnb8WE
IDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgdHdv
IGZpZWxkcyB0byB0aGUgRXh5bm9zNDQxMiBEVFM6Cj4+ICAgLSBwYXJlbnQ6IHRvIGRlY2xhcmUg
Y29ubmVjdGlvbnMgYmV0d2VlbiBub2RlcyB0aGF0IGFyZSBub3QgaW4gYQo+PiAgICAgcGFyZW50
LWNoaWxkIHJlbGF0aW9uIGluIGRldmZyZXE7Cj4+ICAgLSAjaW50ZXJjb25uZWN0LWNlbGxzOiBy
ZXF1aXJlZCBieSB0aGUgaW50ZXJjb25uZWN0IGZyYW1ld29yay4KPj4KPj4gUGxlYXNlIG5vdGUg
dGhhdCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvIGFuZCBub2RlIElEcyBhcmUg
bm90Cj4+IGhhcmRjb2RlZCBhbnl3aGVyZS4gVGhlIGFib3ZlLW1lbnRpb25lZCBwYXJlbnQtY2hp
bGQgcmVsYXRpb24gaW4gZGV2ZnJlcQo+PiBtZWFucyB0aGF0IHRoZXJlIGlzIGEgc2hhcmVkIHBv
d2VyIGxpbmUgKCdkZXZmcmVxJyBwcm9wZXJ0eSkuIFRoZSAncGFyZW50Jwo+PiBwcm9wZXJ0eSBv
bmx5IHNpZ25pZmllcyBhbiBpbnRlcmNvbm5lY3QgY29ubmVjdGlvbi4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4+IC0t
LQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCAx
ICsKPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSAgICAgICAgICAgICAgIHwg
OSArKysrKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+PiBp
bmRleCBlYTU1ZjM3N2QxN2MuLmJkZDYxYWU4NjEwMyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPj4gQEAgLTEwNiw2ICsxMDYs
NyBAQAo+PiAgJmJ1c19sZWZ0YnVzIHsKPj4gIAlkZXZmcmVxLWV2ZW50cyA9IDwmcHBtdV9sZWZ0
YnVzXzM+LCA8JnBwbXVfcmlnaHRidXNfMz47Cj4+ICAJdmRkLXN1cHBseSA9IDwmYnVjazNfcmVn
PjsKPj4gKwlwYXJlbnQgPSA8JmJ1c19kbWM+Owo+IAo+IEFzIEkgbWVudGlvbmVkIG9uIG90aGVy
IHJlcGx5LAo+IEknbSBub3Qgc3VyZSB0byB1c2UgdGhlIHNwZWNpZmljICdwYXJlbnQnIHByb3Bl
cnR5IHRvIG1ha2UKPiB0aGUgY29ubmVjdGlvbiBiZXR3ZWVuIGJ1c2VzLiBJZiBwb3NzaWJsZSwg
eW91IGJldHRlciB0bwo+IHVzZSB0aGUgc3RhbmRhcmQgd2F5IGxpa2UgT0YgZ3JhcGguIEV4Y2Vw
dCBmb3IgbWFraW5nCj4gdGhlIGNvbm5lY3Rpb24gYmV0d2VlbiBidXNlcyBieSAncGFyZW50JyBw
cm9wZXJ0eSwKPiBsb29rcyBnb29kIHRvIG1lLgoKSSB0cmllZCB0byB0aGluayBpdCBjb250aW51
b3VzbHkuIEkgd2l0aGRyYXcgdGhlIG15IG9waW5pb24KdXNpbmcgT0YgZ3JhcGguIElmIHlvdSBt
YWtlIHRoZSBwcm9wZXJ0eSBuYW1lIGxpa2UgdGhlIGZvbGxvd2luZwpleGFtcGxlLCBpdCBpcyBw
b3NzaWJsZSBmb3IgZXh5bm9zLgotIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUgPSA8
JmJ1c19kbWM+OyBvciBvdGhlciBwcm9wZXIgbmFtZS4KClJlZ2FyZGxlc3Mgb2YgZXhpc3Rpbmcg
J2RldmZyZXEnIHByb3BlcnR5LCBJIHRoaW5rIHlvdSBiZXR0ZXIgdG8KbWFrZSB0aGUgY29ubmVj
dGlvbiBiZXR3ZWVuIGJ1c2VzIGZvciBvbmx5IGludGVyY29ubmVjdCBhcyBmb2xsb3dpbmcKZXhh
bXBsZTogVGhpcyBtYWtlIGl0IHBvc3NpYmxlIHVzZXIgY2FuIGRyYXcgdGhlIGNvcnJlY3QgdHJl
ZSBieSB0cmFja2luZwp0aGUgJ2V4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUnIHZhbHVl
LgoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1v
bi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kK
aW5kZXggZWE1NWYzNzdkMTdjLi41M2Y4N2Y0NmUxNjEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCkBAIC05MCw2ICs5MCw3IEBACiAmYnVz
X2RtYyB7CiAgICAgICAgZGV2ZnJlcS1ldmVudHMgPSA8JnBwbXVfZG1jMF8zPiwgPCZwcG11X2Rt
YzFfMz47CiAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazFfcmVnPjsKKyAgICAgICAjaW50ZXJj
b25uZWN0LWNlbGxzID0gPDA+OwogICAgICAgIHN0YXR1cyA9ICJva2F5IjsKIH07CiAKQEAgLTEw
Niw2ICsxMDcsOCBAQAogJmJ1c19sZWZ0YnVzIHsKICAgICAgICBkZXZmcmVxLWV2ZW50cyA9IDwm
cHBtdV9sZWZ0YnVzXzM+LCA8JnBwbXVfcmlnaHRidXNfMz47CiAgICAgICAgdmRkLXN1cHBseSA9
IDwmYnVjazNfcmVnPjsKKyAgICAgICBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlID0g
PCZidXNfZG1jPjsKKyAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+OwogICAgICAgIHN0
YXR1cyA9ICJva2F5IjsKIH07CiAKQEAgLTExNiw2ICsxMTksOCBAQAogCiAmYnVzX2Rpc3BsYXkg
ewogICAgICAgIGRldmZyZXEgPSA8JmJ1c19sZWZ0YnVzPjsKKyAgICAgICBleHlub3MsaW50ZXJj
b25uZWN0LXBhcmVudC1ub2RlID0gPCZidXNfbGVmdGJ1cz47CisgICAgICAgI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKICAgICAgICBzdGF0dXMgPSAib2theSI7CiB9OwoKCj4gCj4gCj4+ICAJ
c3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4gIAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvZXh5bm9zNDQxMi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNp
Cj4+IGluZGV4IGQyMGRiMmRmZThlMi4uYTcwYTY3MWFjYWNkIDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDQxMi5kdHNpCj4+IEBAIC0zOTAsNiArMzkwLDcgQEAKPj4gIAkJCWNsb2NrcyA9IDwm
Y2xvY2sgQ0xLX0RJVl9ETUM+Owo+PiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gIAkJCW9w
ZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19kbWNfb3BwX3RhYmxlPjsKPj4gKwkJCSNpbnRlcmNv
bm5lY3QtY2VsbHMgPSA8MD47Cj4+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgCQl9Owo+
PiAgCj4+IEBAIC0zOTgsNiArMzk5LDcgQEAKPj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJ
Vl9BQ1A+Owo+PiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gIAkJCW9wZXJhdGluZy1wb2lu
dHMtdjIgPSA8JmJ1c19hY3Bfb3BwX3RhYmxlPjsKPj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMg
PSA8MD47Cj4+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgCQl9Owo+PiAgCj4+IEBAIC00
MDYsNiArNDA4LDcgQEAKPj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9DMkM+Owo+PiAg
CQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1
c19kbWNfb3BwX3RhYmxlPjsKPj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4+ICAJ
CQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgCQl9Owo+PiAgCj4+IEBAIC00NTksNiArNDYyLDcg
QEAKPj4gIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HREw+Owo+PiAgCQkJY2xvY2stbmFt
ZXMgPSAiYnVzIjsKPj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19sZWZ0YnVzX29w
cF90YWJsZT47Cj4+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+PiAgCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPj4gIAkJfTsKPj4gIAo+PiBAQCAtNDY3LDYgKzQ3MSw3IEBACj4+ICAJ
CQljbG9ja3MgPSA8JmNsb2NrIENMS19ESVZfR0RSPjsKPj4gIAkJCWNsb2NrLW5hbWVzID0gImJ1
cyI7Cj4+ICAJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZidXNfbGVmdGJ1c19vcHBfdGFibGU+
Owo+PiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPj4gIAkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+ICAJCX07Cj4+ICAKPj4gQEAgLTQ3NSw2ICs0ODAsNyBAQAo+PiAgCQkJY2xvY2tz
ID0gPCZjbG9jayBDTEtfQUNMSzE2MD47Cj4+ICAJCQljbG9jay1uYW1lcyA9ICJidXMiOwo+PiAg
CQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2Rpc3BsYXlfb3BwX3RhYmxlPjsKPj4gKwkJ
CSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47Cj4+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
PiAgCQl9Owo+PiAgCj4+IEBAIC00ODMsNiArNDg5LDcgQEAKPj4gIAkJCWNsb2NrcyA9IDwmY2xv
Y2sgQ0xLX0FDTEsxMzM+Owo+PiAgCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gIAkJCW9wZXJh
dGluZy1wb2ludHMtdjIgPSA8JmJ1c19mc3lzX29wcF90YWJsZT47Cj4+ICsJCQkjaW50ZXJjb25u
ZWN0LWNlbGxzID0gPDA+Owo+PiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gIAkJfTsKPj4g
IAo+PiBAQCAtNDkxLDYgKzQ5OCw3IEBACj4+ICAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19BQ0xL
MTAwPjsKPj4gIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7Cj4+ICAJCQlvcGVyYXRpbmctcG9pbnRz
LXYyID0gPCZidXNfcGVyaV9vcHBfdGFibGU+Owo+PiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9
IDwwPjsKPj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAJCX07Cj4+ICAKPj4gQEAgLTQ5
OSw2ICs1MDcsNyBAQAo+PiAgCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfU0NMS19NRkM+Owo+PiAg
CQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKPj4gIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1
c19sZWZ0YnVzX29wcF90YWJsZT47Cj4+ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+
PiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gIAkJfTsKPj4gIAo+Pgo+IAo+IAoKCi0tIApC
ZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
