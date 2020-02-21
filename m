Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AED167E35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gal7ttKrtLzoqmcQ0LmhJ2P+ATlYW+aBNQl25rV3MeE=; b=AKwc6LSFzAwfma
	41K8TQCFH74JdMcCYSe8wljinM9fhJE+4BO7zkdFIMDveMYCrv/PAlMoBwomkdDYEAeHxFHid8rF4
	tD0IuqaRNqCqjs0FipwiOf8vDTCOnwngCco0K2+QBJOCOsbwhMlLbQnEIrb0iwOo8m9+kjmstoFY3
	ww1wN5w/lFV81YDCva1mo4LsMXvQk4HZFrTpC3UR3Ei/DWXDVc7Gyc5TuZe3Zrt4fjejWaEYRnJ+V
	SLI9/OOYhDYdyBj8l0TfBhFYZCK9Sa3lr6cskSx5iSQeRwovbpOiSCF20VjnQjlJTvNOetZtcHKlQ
	MRaYgpUKTQ++QUX1fE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j589j-0004Nv-HQ; Fri, 21 Feb 2020 13:15:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j589a-0004MG-D7
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:15:40 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200221131536euoutp0274c37f10b88cf4623cb494ed7567f675~1bTkjHIaI2740927409euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 13:15:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200221131536euoutp0274c37f10b88cf4623cb494ed7567f675~1bTkjHIaI2740927409euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582290936;
 bh=ggi36fcyGcRdCu1tgC2NKjFogu0IUBoC26Y0OLUUqxI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a1XGhuigPS97pxY6VlHrGBiWblH0bTcQM8BUv2v0JWJ7loSQDdnLPTtQyOY/cCBnV
 VUPj6bu764jtyaBN0d0WNQd5ZdJqHe/j8Ok1ccnsBxnEiRh9lwTxhQ7mzFrDCJlAVF
 9LOSj+0u3cStUEMe5z6cFUQkuGC+tqMojdk+ljHU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200221131536eucas1p1f3d5f62244c43ec509b9ea6f6b154798~1bTkVOvO12832228322eucas1p1K;
 Fri, 21 Feb 2020 13:15:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 82.B0.60698.7F7DF4E5; Fri, 21
 Feb 2020 13:15:35 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200221131535eucas1p23a75f58c73a7352f616b24e668ed4a47~1bTj8Birj1495114951eucas1p25;
 Fri, 21 Feb 2020 13:15:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200221131535eusmtrp2f7d63ab8bbab7770247278f4e4cdcd85~1bTj7WOlx1394013940eusmtrp23;
 Fri, 21 Feb 2020 13:15:35 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-e5-5e4fd7f7aa6e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CB.A7.08375.7F7DF4E5; Fri, 21
 Feb 2020 13:15:35 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200221131535eusmtip14d786ee3dc9a56b4b0837b3371c12e12~1bTjj3QX81468414684eusmtip1n;
 Fri, 21 Feb 2020 13:15:35 +0000 (GMT)
Subject: Re: [PATCH] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <c2ee91f1-2951-1fc4-d549-106d7b1798e7@samsung.com>
Date: Fri, 21 Feb 2020 14:15:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221130355.21373-1-vincenzo.frascino@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRjl9d5td8vZdTN8srBaJRikiQpXTVMM2o9KKUII1JbeVHJTdtU0
 giSxdElFtKwpJdP8WE5jptnAyFmbZk1TU7EP+1BEa4XZkFloblfLf+c5z3Pecw68BCZq5/gQ
 GYocWqmQZUq4ArzN7OjbPT8Sl7Tn43Q49aO2DFElRjtOGb4Mc6hBYyWXMqk7ENVn1HOoFoMa
 ozoWHTg1PduNR/OljXcakXRw+DUmNehKudLvVitP2lJzXjpn8I3nHhfsTaUzM/JoZWDUCUG6
 dmEczx4S5VfdH8EKkW69CvEJIEPAVHeJ68Qish7BwlCsCgmW8S8EJa+63dhhDkG5egitKirf
 TK4s6hD0lhoxdrAheGl+wFMhghCTR6G6S+nkvUj1svpyMXLyGKmARus650NcMghUNpXLWkhG
 QZXhp8sAJ3eCVX8Tc+INZCJUNHTh7I0n9NyecGE+uQ9sao3rHiO3QFFrBcZibxibuOsKB+QL
 HhQvNeFs6v3wfsq20kAMM5aHPBZvhqXHq4IiBJ+seh47lCEYvHBrRREB76wLXLaBPzQbA1k6
 BhymRVcxID1g1ObJhvCA623lGEsLoeSiiL32A42l6Z9tZ/8Adg1JNGuqadbU0aypo/nvW4Vw
 HfKmcxl5Gs0EK+gzAYxMzuQq0gJSsuQGtPyfehct9nb05M9JEyIJJHEXRpvjkkQcWR5TIDch
 IDCJl9DP/XCSSJgqKzhLK7OSlbmZNGNCmwhc4i0M1k4nisg0WQ59mqazaeXq1o3g+xQirzjt
 jUPJKfAsNHPsd4OOPMUMNzSPz+bqfCN4CYc4PsZQ/29uYVffem/lPDfVF92rq/DLH80zJ7cO
 x9IO+kOC/Ui6+HNJZMJUWNaVDEuR+zaPAzOC8IbqSP25mH7j03mtWOqRj2+3q/QHH3V+rREf
 C6ncqK+djJft6Bno0jr4EpxJlwXtwpSM7C9lmw8dSwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsVy+t/xu7rfr/vHGWz5r2TxflkPo0XHrq8s
 FpseX2O1uLxrDpvFoal7GS3O71rLarF501Rmi73/frJYvPx4gsWB02PNvDWMHpevXWT22LSq
 k83j3blz7B6bl9R7fN4kF8AWpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqk
 b2eTkpqTWZZapG+XoJex6Nd9loIrQhULVl9nbmBcxd/FyMkhIWAiMefqUyYQW0hgKaNE159S
 iLiMxMlpDawQtrDEn2tdbF2MXEA1rxkl9p45zdLFyMEhLBAssfhwEUiNiMBURokZRzRBbGaB
 PInf01ezQNRPYpT4f+Ys2CA2AUOJrrcggzg5eAXsJBZs+sQIYrMIqEqcWzuNGcQWFYiVuDGz
 gwmiRlDi5MwnLCA2p4C9xNupsxghFphJzNv8kBnClpdo3jobyhaXuPVkPtMERqFZSNpnIWmZ
 haRlFpKWBYwsqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQLjcduxn5t3MF7aGHyIUYCDUYmH
 1+GYf5wQa2JZcWXuIUYJDmYlEV41Hr84Id6UxMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4Hpoq8
 knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MGWGN3+oiSjR1mR7/
 cY1X27tHZN+3wIl/3s3Osbo4K3Op6zX3lqOKroIHuGVzVnve8fmx3tu54rqCSUq+0zSh7W1L
 HoYxJOXEOt5Qz3RhYq7R/XwwcpGwpOb+uBV71D/ENbjOjW/k4vzzJ/resnUVNa90qj50l0Ys
 mXNc/vjNdaovPtQVTHqhxFKckWioxVxUnAgAtEmzz90CAAA=
X-CMS-MailID: 20200221131535eucas1p23a75f58c73a7352f616b24e668ed4a47
X-Msg-Generator: CA
X-RootMTR: 20200221130455eucas1p2aa4312aad606b53add889811d8e9fbc7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200221130455eucas1p2aa4312aad606b53add889811d8e9fbc7
References: <CGME20200221130455eucas1p2aa4312aad606b53add889811d8e9fbc7@eucas1p2.samsung.com>
 <20200221130355.21373-1-vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_051538_648005_A3F15E6F 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, tglx@linutronix.de, will.deacon@arm.com,
 linux@armlinux.org.uk, luto@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyMS4wMi4yMDIwIDE0OjAzLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPiBUaGUg
YXJtX2FyY2hfdGltZXIgcmVxdWlyZXMgdGhhdCBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIgdG8g
YmUKPiBkZWZpbmVkIHRvIGNvbXBpbGUgY29ycmVjdGx5LiBPbiBhcm0gdGhlIHZEU08gY2FuIGJl
IGRpc2FibGVkIGFuZCB3aGVuCj4gdGhpcyBpcyB0aGUgY2FzZSB0aGUgY29tcGlsYXRpb24gZW5k
cyBwcmVtYXR1cmVseSB3aXRoIGFuIGVycm9yOgo+Cj4gICAkIG1ha2UgQVJDSD1hcm0gbXVsdGlf
djdfZGVmY29uZmlnCj4gICAkIC4vc2NyaXB0cy9jb25maWcgLWQgVkRTTwo+ICAgJCBtYWtlCj4K
PiBkcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmM6NzM6NDQ6IGVycm9yOgo+IOKA
mFZEU09fQ0xPQ0tNT0RFX0FSQ0hUSU1FUuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1
bmN0aW9uKQo+ICAgIHN0YXRpYyBlbnVtIHZkc29fY2xvY2tfbW9kZSB2ZHNvX2RlZmF1bHQgPSBW
RFNPX0NMT0NLTU9ERV9BUkNIVElNRVI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4KPiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NzogcmVjaXBlIGZv
ciB0YXJnZXQKPiAnZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5vJyBmYWlsZWQK
PiBtYWtlWzJdOiAqKiogW2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIub10gRXJy
b3IgMQo+IG1ha2VbMl06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCj4gc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo1MDU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2Nsb2Nr
c291cmNlJyBmYWlsZWQKPiBtYWtlWzFdOiAqKiogW2RyaXZlcnMvY2xvY2tzb3VyY2VdIEVycm9y
IDIKPiBtYWtlWzFdOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+IE1ha2Vm
aWxlOjE2ODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKPiBtYWtlOiAqKiog
W2RyaXZlcnNdIEVycm9yIDIKPgo+IERlZmluZSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIgYXMg
VkRTT19DTE9DS01PREVfTk9ORSB3aGVuIHRoZSB2RFNPcyBhcmUKPiBub3QgZW5hYmxlZCB0byBh
ZGRyZXNzIHRoZSBpc3N1ZS4KPgo+IEZpeGVzOiA1ZTNjNmEzMTJhMDkgKCJBUk0vYXJtNjQ6IHZk
c286IFVzZSBjb21tb24gdmRzbyBjbG9jayBtb2RlIHN0b3JhZ2UiKQo+IENjOiBSdXNzZWxsIEtp
bmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4KPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxp
bnV0cm9uaXguZGU+Cj4gUmVwb3J0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3Nr
aUBzYW1zdW5nLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaW5jZW56byBGcmFzY2lubyA8dmluY2Vu
em8uZnJhc2Npbm9AYXJtLmNvbT4KClRoYW5rcywgdGhpcyBmaXhlcyB0aGUgaXNzdWUuCgpUZXN0
ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KCj4gLS0t
Cj4gICBkcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMgfCA1ICsrKysrCj4gICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
bG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jIGIvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJj
aF90aW1lci5jCj4gaW5kZXggZWUyNDIwZDU2ZjY3Li42MTk4MzkyMjFmOTQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCj4gKysrIGIvZHJpdmVycy9j
bG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCj4gQEAgLTQ5LDYgKzQ5LDExIEBACj4gICAjZGVm
aW5lIENOVFZfVFZBTAkweDM4Cj4gICAjZGVmaW5lIENOVFZfQ1RMCTB4M2MKPiAgIAo+ICsjaWZu
ZGVmIENPTkZJR19HRU5FUklDX0dFVFRJTUVPRkRBWQo+ICsvKiBUaGUgZGVmaW5lIGJlbG93IGlz
IHJlcXVpcmVkIGJlY2F1c2Ugb24gYXJtIHRoZSBWRFNPcyBjYW4gYmUgZGlzYWJsZWQgKi8KPiAr
I2RlZmluZSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIJVkRTT19DTE9DS01PREVfTk9ORQo+ICsj
ZW5kaWYgLyogQ09ORklHX0dFTkVSSUNfR0VUVElNRU9GREFZICovCj4gKwo+ICAgc3RhdGljIHVu
c2lnbmVkIGFyY2hfdGltZXJzX3ByZXNlbnQgX19pbml0ZGF0YTsKPiAgIAo+ICAgc3RhdGljIHZv
aWQgX19pb21lbSAqYXJjaF9jb3VudGVyX2Jhc2U7CgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6
eXByb3dza2ksIFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
