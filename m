Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98441EA113
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOIvnvUvT0Eo0T5pJgWpwvZqOlh70r/w1lv8AFgyYLk=; b=sBJIqRngtx3R7E
	qx71gygs2IWqkJHPC4S9zSsV2eW5JXK1PFG2v66fWKzJA/l6BArpufAgZ8dQQRQgjW5oK9P2v5BsV
	gw6B0uE9BwLxQWgCh1dtrELWPLf78IkyyLISCN8BTGxPANzXCFg3bVy30C/AYhvu4hQvt0yEt6nFp
	58DOM1SRMnVXgnYilCNBtBmVFedgqTnL9vqMKJ4YKyyTyIRSLyRzJP7DgynQPHvhwgq4DXBfZZHAo
	Wye7WRS4k1R6bSEwKbeN7IrMRiRlZkrbkVaDMH8Mmh+kqtl/nR0yiOEQRZjozP8CptioMJ2oZniWO
	gDJB3EOyy38LsDjBJxLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgw2-0007jf-NS; Mon, 01 Jun 2020 09:40:46 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgvv-0007ib-20
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:40:40 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601094036euoutp01756ab9333647aa1b8632eb4575a7b854~UYhr5c15g0333103331euoutp01f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 09:40:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601094036euoutp01756ab9333647aa1b8632eb4575a7b854~UYhr5c15g0333103331euoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591004436;
 bh=7+7sAqKdtpUyE9Y+G6uecmH6w5SBJ4dd6ctVUsyQ5MQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=QhC6+qWzTvxkxpyDEyHzCE0l8I7aQLsY5buKIqBWKezLxlZTr2q2KWguvOCrZ+RcG
 Zjb5CJkUYGT0GESRRqOjE8z2qs4FDH8N2hfK7ENSX28I5LerX5MBxyOVMLyo+ziUPl
 y/kSJtcHKImAyY8NuT/CAPo7M6jbDtN2RK06obaw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200601094035eucas1p2509b4f2af9aa82256ab306be995165b7~UYhrc3fDK2474124741eucas1p2Y;
 Mon,  1 Jun 2020 09:40:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E6.88.60679.31DC4DE5; Mon,  1
 Jun 2020 10:40:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601094035eucas1p190c4ca53a456987cd0d3475a245e4b5b~UYhrBs3ov2842228422eucas1p17;
 Mon,  1 Jun 2020 09:40:35 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601094035eusmtrp2cbc573ff7ede1b18c077d3c5ec02bf31~UYhrAmo0F0503605036eusmtrp2Z;
 Mon,  1 Jun 2020 09:40:35 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-bc-5ed4cd13e371
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0B.CD.07950.31DC4DE5; Mon,  1
 Jun 2020 10:40:35 +0100 (BST)
Received: from [106.210.123.115] (unknown [106.210.123.115]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200601094034eusmtip1a1126fe153f8bd615b392e3fbe9914f4~UYhpzJRwv0220402204eusmtip1Z;
 Mon,  1 Jun 2020 09:40:34 +0000 (GMT)
Subject: Re: [RFC PATCH v5 1/6] dt-bindings: exynos-bus: Add documentation
 for interconnect properties
To: Chanwoo Choi <chanwoo@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <03bcd54f-d5de-1a09-f487-1f6f165c0b34@samsung.com>
Date: Mon, 1 Jun 2020 11:40:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAGTfZH1yM0KRaEF5VTs2juTm+yrK9VqQZxWjdNf_ffjGHWPLsg@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGOfdr19HkOCvfrAxGBoq5Sotbhn1SKwhMhDDKXHbRUqft+pFS
 ZFRa+ZGp4ZySGmZqlLZS1D7+MNNM3AKHSbqWNBIFq6UWWVjeXSP/+z3Ped73vO/hsKRyiPZm
 T+pSeL1Om6Bi5FRL10/zWs8+a9S6/o9qzn7rMuIeGhpp7sagleLeTo3SXGWnmeas018YrvSZ
 ieGK7IUUZ7E0yTjTxwGa62+vYDiD5TnB3e+0ybihC3UMd/lZp4wzFI8x27HG1HCV0QwPPGU0
 9txuQvOo5rym4HED0kyafMKYw/KtJ/iEk2m8Xh0aLY+bsTmJ5NaVZ36PX6ez0IOl15AbCzgY
 arJzZSIrcR0C26fwa0g+x1MILtV8oCQxiWDkdfWcYF0Vs8XbJf8uAkPlFSQJJ4Lpxg4ktvLE
 cdA6kk+KvBj7QtO3LloMkfgODT3ZDleIwesh/2UBErsqcCiYB71Fm8KrwZl1kxJ5CT4KefZx
 Vx8F9oCeMofLd8MH4d5EOSEyib3gnaNynlfBxeZyUrwL8AUWRgy1hLTnbij7aqQl9oTx7scy
 iVfAnzaxWCy4iCDvyZBMEoUI7N1VSEqFwLB5hhEnJbEfNLarJXsHOAYfENKzuMPghIc0hDsU
 tZSSkq2AK9lKKb0afjWUzo/jDbmOP1QhUhkXrGZcsI5xwTrG//dWIaoBefGpQmIsL2zQ8emB
 gjZRSNXFBsYkJZrQ3Jfrne2eakXtv493IMwi1SLFG0t/lJLWpgkZiR0IWFK1WLGzrzdKqTih
 zcjk9UnH9KkJvNCBlrOUyksRdHvsqBLHalP4eJ5P5vX/TgnWzTsLLWtPemi46qidfJ+ygY+Z
 zvmQHm1VB5U0+1Tv+ZS5Oa7+iF90mtzmKL65yLHl+ml1yCb3jR4/cnQ70auZmPBTzfv37jvk
 jDASn88pXwSnu/l+D5iNCLCOR3o6I+Mr6teMBpawhm2lPbldFU0HAqajxi4RtVvOhvn7CMfz
 Zu9pd7VtVlFCnHa9P6kXtH8BNJ1Ge24DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xu7rCZ6/EGfSuEre4P6+V0WLjjPWs
 FhNvXGGxuP7lOavF/CPnWC2ufH3PZjF97yY2i0n3J7BYnD+/gd1i0+NrrBaXd81hs5hxfh+T
 xdojd9ktbjeuYLNo3XuE3WLG5JdsDgIem1Z1snncubaHzeN+93Emj81L6j36tqxi9Pi8SS6A
 LUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEv49fd
 j0wFO2Qr/rzqZ21gXCfWxcjBISFgIvFvskMXIxeHkMBSRolVT8+wQ8SlJOa3KHUxcgKZwhJ/
 rnWxQdS8Z5RYdnMBK0hCWCBDomfvYTYQW0RAVWLDp2OsIEXMAstZJY4dWg/V0cEkMXnDbLAq
 NgFDid6jfYwgG3gF7CTO3ZACCbMIqEh8bJjKAmKLCsRKdC/+wQ5i8woISpyc+QQszikQKLH6
 7WwmEJtZQF3iz7xLzBC2uMStJ/Oh4vISzVtnM09gFJqFpH0WkpZZSFpmIWlZwMiyilEktbQ4
 Nz232EivODG3uDQvXS85P3cTIzCqtx37uWUHY9e74EOMAhyMSjy8F85fjhNiTSwrrsw9xCjB
 wawkwut09nScEG9KYmVValF+fFFpTmrxIUZToOcmMkuJJucDE05eSbyhqaG5haWhubG5sZmF
 kjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGEau3OjIfq5h2/1fbcHwxf0lI8+nEQ2aWB+4/
 rZzBp96emRj9Wd6EV1Iy8sYZ84PMBvll7g4XdkV0JnzT1d7By2Vvssz71/XZefrKufyn+MJC
 Jljt2T4tsiracsNLXaEXJqqnnVgnprU6Zh/T3zRNQMWMUThvqqv586b/vrUpz002LftnFaHE
 UpyRaKjFXFScCABbTyrIAAMAAA==
X-CMS-MailID: 20200601094035eucas1p190c4ca53a456987cd0d3475a245e4b5b
X-Msg-Generator: CA
X-RootMTR: 20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e
References: <CGME20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e@eucas1p2.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-2-s.nawrocki@samsung.com>
 <CAGTfZH1yM0KRaEF5VTs2juTm+yrK9VqQZxWjdNf_ffjGHWPLsg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024039_312525_2DEA8C44 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDMxLjA1LjIwMjAgMDI6MDEsIENoYW53b28gQ2hvaSB3cm90ZToKPiBP
biBTYXQsIE1heSAzMCwgMjAyMCBhdCAxOjMyIEFNIFN5bHdlc3RlciBOYXdyb2NraQo+IDxzLm5h
d3JvY2tpQHNhbXN1bmcuY29tPiB3cm90ZToKPj4KPj4gQWRkIGRvY3VtZW50YXRpb24gZm9yIG5l
dyBvcHRpb25hbCBwcm9wZXJ0aWVzIGluIHRoZSBleHlub3MgYnVzIG5vZGVzOgo+PiBzYW1zdW5n
LGludGVyY29ubmVjdC1wYXJlbnQsICNpbnRlcmNvbm5lY3QtY2VsbHMuCj4+IFRoZXNlIHByb3Bl
cnRpZXMgYWxsb3cgdG8gc3BlY2lmeSB0aGUgU29DIGludGVyY29ubmVjdCBzdHJ1Y3R1cmUgd2hp
Y2gKPj4gdGhlbiBhbGxvd3MgdGhlIGludGVyY29ubmVjdCBjb25zdW1lciBkZXZpY2VzIHRvIHJl
cXVlc3Qgc3BlY2lmaWMKPj4gYmFuZHdpZHRoIHJlcXVpcmVtZW50cy4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1bmcuY29tPgo+PiBTaWduZWQtb2Zm
LWJ5OiBTeWx3ZXN0ZXIgTmF3cm9ja2kgPHMubmF3cm9ja2lAc2Ftc3VuZy5jb20+Cj4+IC0tLQo+
PiBDaGFuZ2VzIGZvciB2NToKPj4gIC0gZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZSBy
ZW5hbWVkIHRvIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVudAo+PiAtLS0KPj4gIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0IHwgMTUgKysr
KysrKysrKysrKy0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kZXZmcmVxL2V4eW5vcy1idXMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RldmZyZXEvZXh5bm9zLWJ1cy50eHQKPj4gaW5kZXggZTcxZjc1Mi4uZTBkMmRhYSAx
MDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEv
ZXh5bm9zLWJ1cy50eHQKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2RldmZyZXEvZXh5bm9zLWJ1cy50eHQKPj4gQEAgLTUxLDYgKzUxLDExIEBAIE9wdGlvbmFsIHBy
b3BlcnRpZXMgb25seSBmb3IgcGFyZW50IGJ1cyBkZXZpY2U6Cj4+ICAtIGV4eW5vcyxzYXR1cmF0
aW9uLXJhdGlvOiB0aGUgcGVyY2VudGFnZSB2YWx1ZSB3aGljaCBpcyB1c2VkIHRvIGNhbGlicmF0
ZQo+PiAgICAgICAgICAgICAgICAgICAgICAgICB0aGUgcGVyZm9ybWFuY2UgY291bnQgYWdhaW5z
dCB0b3RhbCBjeWNsZSBjb3VudC4KPj4KPj4gK09wdGlvbmFsIHByb3BlcnRpZXMgZm9yIGludGVy
Y29ubmVjdCBmdW5jdGlvbmFsaXR5IChRb1MgZnJlcXVlbmN5IGNvbnN0cmFpbnRzKToKPj4gKy0g
c2Ftc3VuZyxpbnRlcmNvbm5lY3QtcGFyZW50OiBwaGFuZGxlIHRvIHRoZSBwYXJlbnQgaW50ZXJj
b25uZWN0IG5vZGU7IGZvcgo+PiArICBwYXNzaXZlIGRldmljZXMgc2hvdWxkIHBvaW50IHRvIHNh
bWUgbm9kZSBhcyB0aGUgZXh5bm9zLHBhcmVudC1idXMgcHJvcGVydHkuCj4+ICstICNpbnRlcmNv
bm5lY3QtY2VsbHM6IHNob3VsZCBiZSAwCj4+ICsKPj4gIERldGFpbGVkIGNvcnJlbGF0aW9uIGJl
dHdlZW4gc3ViLWJsb2NrcyBhbmQgcG93ZXIgbGluZSBhY2NvcmRpbmcgdG8gRXh5bm9zIFNvQzoK
Pj4gIC0gSW4gY2FzZSBvZiBFeHlub3MzMjUwLCB0aGVyZSBhcmUgdHdvIHBvd2VyIGxpbmUgYXMg
Zm9sbG93aW5nOgo+PiAgICAgICAgIFZERF9NSUYgfC0tLSBETUMKPj4gQEAgLTE4NSw4ICsxOTAs
OSBAQCBFeGFtcGxlMToKPj4gICAgICAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Cj4+ICBFeGFtcGxlMiA6Cj4+IC0gICAgICAg
VGhlIGJ1cyBvZiBETUMgKER5bmFtaWMgTWVtb3J5IENvbnRyb2xsZXIpIGJsb2NrIGluIGV4eW5v
czMyNTAuZHRzaQo+PiAtICAgICAgIGlzIGxpc3RlZCBiZWxvdzoKPj4gKyAgICAgICBUaGUgYnVz
IG9mIERNQyAoRHluYW1pYyBNZW1vcnkgQ29udHJvbGxlcikgYmxvY2sgaW4gZXh5bm9zMzI1MC5k
dHNpIGlzCj4+ICsgICAgICAgbGlzdGVkIGJlbG93LiBBbiBpbnRlcmNvbm5lY3QgcGF0aCAiYnVz
X2xjZDAgLS0gYnVzX2xlZnRidXMgLS0gYnVzX2RtYyIKPj4gKyAgICAgICBpcyBkZWZpbmVkIGZv
ciBkZW1vbnN0cmF0aW9uIHB1cnBvc2VzLgo+Pgo+PiAgICAgICAgIGJ1c19kbWM6IGJ1c19kbWMg
ewo+PiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzYW1zdW5nLGV4eW5vcy1idXMiOwo+
PiBAQCAtMzc2LDEyICszODIsMTUgQEAgRXhhbXBsZTIgOgo+PiAgICAgICAgICZidXNfZG1jIHsK
Pj4gICAgICAgICAgICAgICAgIGRldmZyZXEtZXZlbnRzID0gPCZwcG11X2RtYzBfMz4sIDwmcHBt
dV9kbWMxXzM+Owo+PiAgICAgICAgICAgICAgICAgdmRkLXN1cHBseSA9IDwmYnVjazFfcmVnPjsg
ICAgICAvKiBWRERfTUlGICovCj4+ICsgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxz
ID0gPDA+Owo+PiAgICAgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiAgICAgICAgIH07
Cj4+Cj4+ICAgICAgICAgJmJ1c19sZWZ0YnVzIHsKPj4gICAgICAgICAgICAgICAgIGRldmZyZXEt
ZXZlbnRzID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdodGJ1c18zPjsKPj4gICAgICAg
ICAgICAgICAgIHZkZC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4+ICsgICAgICAgICAgICAgICBz
YW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQgPSA8JmJ1c19kbWM+Owo+PiArICAgICAgICAgICAg
ICAgI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPj4gICAgICAgICAgICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPj4gICAgICAgICB9Owo+Pgo+PiBAQCAtMzkyLDYgKzQwMSw4IEBAIEV4YW1wbGUy
IDoKPj4KPj4gICAgICAgICAmYnVzX2xjZDAgewo+PiAgICAgICAgICAgICAgICAgZGV2ZnJlcSA9
IDwmYnVzX2xlZnRidXM+Owo+PiArICAgICAgICAgICAgICAgc2Ftc3VuZyxpbnRlcmNvbm5lY3Qt
cGFyZW50ID0gPCZidXNfbGVmdGJ1cz47Cj4+ICsgICAgICAgICAgICAgICAjaW50ZXJjb25uZWN0
LWNlbGxzID0gPDA+Owo+PiAgICAgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PiAgICAg
ICAgIH07Cj4+Cj4+IC0tCj4+IDIuNy40Cj4+Cj4gCj4gSWYgeW91IGFkZCB0aGUgdXNhZ2UgZXhh
bXBsZSBsaWtlIHRoZSBtaXhlciBkZXZpY2Ugb2YgcGF0Y2g1IHRvIHRoaXMKPiBkdC1iaW5kaW5n
IGRvY3VtZW50LAo+IEkgdGhpbmsgaXQgaXMgdmVyeSBiZW5lZmljaWFsIGFuZCBtb3JlIGhlbHBm
dWwgZm9yIHVzZXIgb2YKPiBleHlub3MtYnVzL2V4eW5vcy1nZW5lcmljLWljYy4KPiAKPiBBY2tl
ZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgpUaGFua3MgZm9yIHJl
dmlldy4gSSB3aWxsIG1ha2Ugc3VyZSB0aGUgZXhhbXBsZSBpbmNsdWRlcyBhIGNvbnN1bWVyCmlu
IG5leHQgdmVyc2lvbi4gV2lsbCBhbHNvIG1lbnRpb24gLi4vaW50ZXJjb25uZWN0L2ludGVyY29u
bmVjdC50eHQKaW4gZGVzY3JpcHRpb24gb2YgdGhlICNpbnRlcmNvbm5lY3QtY2VsbHMgcHJvcGVy
dHkuCgotLSAKUmVnYXJkcywKU3lsd2VzdGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
