Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AC7BD857
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AUNMebJWI0sscYEAwMu1gV7J/TK+aRfsqhcnpcQpFE=; b=dp+8/p7WjNSnUP
	3A3+UMeo4O4bfi32gOqm7GFoL6B9PuorIdj8baOMbA7FID133Po/ZCKVIcUuKBhdoqToBgSsW+Spg
	x3ZLjXZg/64iB/kB+vB85rA5JtrU42+ISljSWMdwuBgcPWWAPj2sj02UuoL7q+M1Vx1CecjRj4Az5
	tn2jRHWDPtCKhH/l1xPORS4PSBDrIICRxlDsywumctVVmOPXJZHZD+hcZuNM5q9ILh2QIu98hB9gK
	fBY5xz7HaSh9Ud9HJCS0aMV4QHt1uRelzgfKit5AcYUZjQaRgfkhDI8UD9h1MnAyb3DD9d0N8wFJ/
	rB2LdNF+F4KKx2mAtTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0rQ-0006pA-1g; Wed, 25 Sep 2019 06:33:12 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0rB-0006oO-FL
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:33:00 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190925063254epoutp04c45ad6952ad861cce4077438c70c926d~HmsbZauTP0141601416epoutp04t
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 06:32:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190925063254epoutp04c45ad6952ad861cce4077438c70c926d~HmsbZauTP0141601416epoutp04t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569393174;
 bh=3RHMQOQYtx91rCjq27d9iH+kHM/I4Tk34xpdKdRynuI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=b271LUd1LAd5aRNFzxG728pcKU252Vls2BQYWJTPokcOjO88rfglFeOSXlTzBxMLl
 r5pt6Sm4C0i1q3jR56REdXU7alTqrDl2k5Al31hvoa6M2Mklv35WSG3U+jgL98OZ1B
 6VbpMRRHeX++RDdEEMAN+996HGZGT/jT3rXHD4KM=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190925063253epcas1p4a006fdbc7560ebc63f04afa5c0c809ec~HmsbHJtBE3090230902epcas1p4r;
 Wed, 25 Sep 2019 06:32:53 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.154]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 46dSsv3zpfzMqYkd; Wed, 25 Sep
 2019 06:32:51 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 31.27.04144.11A0B8D5; Wed, 25 Sep 2019 15:32:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190925063248epcas1p11c706bd96e80cfc9f24f930bbc4ed9e6~HmsWSXB8v1118211182epcas1p1a;
 Wed, 25 Sep 2019 06:32:48 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925063248epsmtrp1df0f345e0b1698bd535c2568c4955eb4~HmsWO2mYr2252422524epsmtrp1P;
 Wed, 25 Sep 2019 06:32:48 +0000 (GMT)
X-AuditID: b6c32a35-2dfff70000001030-fb-5d8b0a11f9d4
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C1.EC.03889.01A0B8D5; Wed, 25 Sep 2019 15:32:48 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925063248epsmtip2d4c33388f7e82c2f45da11d4c35ada8e~HmsV0j9rG2324723247epsmtip2K;
 Wed, 25 Sep 2019 06:32:48 +0000 (GMT)
Subject: Re: [RFC PATCH v2 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9cd6267e-cc06-107e-9bdf-33d4b66f35da@samsung.com>
Date: Wed, 25 Sep 2019 15:37:11 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f51aac4cacb7a0196ab6919b110ad9fcf4009c88.camel@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBJsWRmVeSWpSXmKPExsWy7bCmvq4gV3eswZx1LBb357UyWmycsZ7V
 Yv6Rc6wWV76+Z7OYvncTm8Wk+xNYLM6f38BuseLuR1aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ
 rD1yl93iduMKNosZk1+yOfB7bFrVyeZx59oeNo/73ceZPDYvqffY+G4Hk0ffllWMHp83yQWw
 R2XbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl5gDdraRQ
 lphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpsCzQK07MLS7NS9dLzs+1MjQwMDIFKkzI
 zpjddY+tYKNvxZKlb1gbGC/YdjFyckgImEhMu7CYpYuRi0NIYAejROPjHVDOJ0aJRwcvsYJU
 CQl8Y5R4fMQGpqOp8TojRNFeRom1t9dCdbxnlFjx6zELSJWwQJTEubsfmUESIgL/GSVOL1vJ
 CuIwCxxjlNh75ydYFZuAlsT+FzfYQGx+AUWJqz8eM4LYvAJ2ElPufAbbzSKgKtFz9iuYLSoQ
 IfHpwWFWiBpBiZMzn4DN4RTwlFjacpsJxGYWEJe49WQ+lC0v0bx1NtgVEgK72CXOX/vFDPGE
 i8S8WYeYIGxhiVfHt7BD2FISL/vboOxqiZUnj7BBNHcwSmzZf4EVImEssX/pZKBmDqANmhLr
 d+lDhBUldv6eywixmE/i3dceVpASCQFeiY42IYgSZYnLD+5CrZWUWNzeyTaBUWkWkndmIXlh
 FpIXZiEsW8DIsopRLLWgODc9tdiwwBA5vjcxglO1lukOxinnfA4xCnAwKvHwOrB2xQqxJpYV
 V+YeYpTgYFYS4Z0lAxTiTUmsrEotyo8vKs1JLT7EaAoM7YnMUqLJ+cA8klcSb2hqZGxsbGFi
 aGZqaKgkzuuR3hArJJCeWJKanZpakFoE08fEwSnVwCigGKyu/DeY7cG/qMx+AfXfPHIZTqd/
 dJ9L2C8hsHiRwrtTWnqzdpxrX346YENW4CwLpvV1C65+fXx0pWfEd2GtJ3sSlZle7az/tMhz
 ZtM/3h/3v9idPBCzqY2TZ1/0ixUMF9buzJwS8mHT2iviVyV6tKZEtQXHSKafvysmq+EnV6PY
 qfnV77ASS3FGoqEWc1FxIgCC08Ag6wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMIsWRmVeSWpSXmKPExsWy7bCSvK4AV3esweF3Ehb357UyWmycsZ7V
 Yv6Rc6wWV76+Z7OYvncTm8Wk+xNYLM6f38BuseLuR1aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ
 rD1yl93iduMKNosZk1+yOfB7bFrVyeZx59oeNo/73ceZPDYvqffY+G4Hk0ffllWMHp83yQWw
 R3HZpKTmZJalFunbJXBlzO66x1aw0bdiydI3rA2MF2y7GDk5JARMJJoarzN2MXJxCAnsZpT4
 fmwJC0RCUmLaxaPMXYwcQLawxOHDxRA1bxkl+m6/ZgOpERaIkjh39yMzSEJE4D+jxMO2Y2CT
 mAWOMUp8XLGeFaJlPZPEkg8NYGPZBLQk9r+4AdbOL6AocfXHY0YQm1fATmLKnc+sIDaLgKpE
 z9mvYLaoQITE4R2zoGoEJU7OfAI2h1PAU2Jpy20mEJtZQF3iz7xLzBC2uMStJ/Oh4vISzVtn
 M09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz232LDAKC+1XK84Mbe4NC9dLzk/dxMjOGq1
 tHYwnjgRf4hRgINRiYfXgbUrVog1say4MvcQowQHs5II7ywZoBBvSmJlVWpRfnxRaU5q8SFG
 aQ4WJXFe+fxjkUIC6YklqdmpqQWpRTBZJg5OqQbGmYn6sXr3atpElGXaG54vEjfNk0pkzb7c
 dae4YvIt1lqjzV0ZslM3NDw5H3V2b9LBV4Fx2n2nZz445ztv6rFtUteMF34Sv34l7q9WRYWk
 dHzt1KVK59X0mJwC3nobPQs1j9+T98wqPj/dgvlaXkpvlYrFiusLki++0ZwS+GvFJIN1d89k
 HzylxFKckWioxVxUnAgAkQH59dYCAAA=
X-CMS-MailID: 20190925063248epcas1p11c706bd96e80cfc9f24f930bbc4ed9e6
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142322eucas1p24bc477ee6e1bcd65546c305d55af097d@eucas1p2.samsung.com>
 <20190919142236.4071-2-a.swigon@samsung.com>
 <2e49bd2c-e074-038b-f8a2-7dd8dea4a9af@samsung.com>
 <f51aac4cacb7a0196ab6919b110ad9fcf4009c88.camel@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_233257_926220_552A9D48 
X-CRM114-Status: GOOD (  28.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGksCgpPbiAxOS4gOS4gMjUuIOyYpO2bhCAyOjQ0LCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBI
aSwKPiAKPiBPbiBGcmksIDIwMTktMDktMjAgYXQgMTE6MTUgKzA5MDAsIENoYW53b28gQ2hvaSB3
cm90ZToKPj4gSGksCj4+Cj4+IEFzIEkgYWxyZWFkeSByZXBsaWVkIG9uIHYxLCBwYXRjaDEvMi8z
IGNsZWFuLXVwIGNvZGUKPj4gZm9yIHJlYWRhYmlsaXR5IHdpdGhvdXQgYW55IGJlaGF2aW9yIGNo
YW5nZXMuIAo+Pgo+PiBJIHRoaW5rIHRoYXQgeW91IGJldHRlciB0byBtZXJnZSBwYXRjaDEvMi8z
IHRvIG9uZSBwYXRjaC4KPiAKPiBZZXMsIHdoZW4gd3JpdGluZyB0aGUgY292ZXIgbGV0dGVyIEkg
dGhpbmsgSSBmb3Jnb3QgdG8gZXhwbGFpbiB3aHkgSSBkZWNpZGVkIG5vdAo+IHRvIG1lcmdlIHRo
ZXNlIHBhdGNoZXMuIEJhc2ljYWxseSwgbm9uZSBvZiB0aGUgZGlmZiBhbGdvcml0aG1zIGF2YWls
YWJsZSBpbiBnaXQKPiAoSSd2ZSBnb3QgdjIuMTcuMSkgaXMgYWJsZSB0byBwcm9kdWNlIGEgcmVh
ZGFibGUgcGF0Y2ggd2l0aCB0aGVzZSBjaGFuZ2VzCj4gY29tYmluZWQgdG9nZXRoZXIgaW50byBh
IHNpbmdsZSBwYXRjaCAoZnVuY3Rpb25zIGFyZSBpbnRlcm1peGVkIHRvZ2V0aGVyIGluIHRoZQo+
IG91dHB1dCwgZ2l0IHRoaW5rcyB0aGF0ICdleHlub3NfYnVzX3Byb2JlJyBpcyBhIG5ldyBmdW5j
dGlvbikuCgpBZnRlciBtZXJnZWQgdGhyZWUgcGF0Y2hlcywgYXMgeW91IGNvbW1lbnRlZCwgbG9v
a3MgbGlrZSB0aGF0ICdleHlub3NfYnVzX3Byb2JlJwppcyBuZXcgZnVuY3Rpb24uIFlvdXIgcGF0
Y2ggc3R5bGUodGhyZWUgcGF0Y2hlcykgaXMgYmV0dGVyIHRoYW4gb25lIG1lcmdlZCBwYXRjaC4K
S2VlcCB5b3VyIG9yaWdpbmFsIHBhdGNoZXMuIFRoYW5rcy4KCj4gCj4gUGxlYXNlIHRha2UgYSBs
b29rIGF0IHRoZSBkaWZmIGF0IHRoZSBib3R0b20gb2YgdGhpcyBtZXNzYWdlIHRvIHNlZSBob3cg
cGF0Y2hlcwo+IDAxLi4wMyBsb29rIHdoZW4gY29tYmluZWQuIElmIHN1Y2ggcGF0Y2ggbG9va3Mg
YWNjZXB0YWJsZSB0byB5b3UsIEkgY2FuIG1lcmdlLgo+IAo+PiBPbiAxOS4gOS4gMTkuIOyYpO2b
hCAxMToyMiwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4+PiBGcm9tOiBBcnR1ciDFmndpZ2/FhCA8
YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KPj4+Cj4+PiBUaGlzIHBhdGNoIGFkZHMgYSBu
ZXcgc3RhdGljIGZ1bmN0aW9uLCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpLCBleHRyYWN0ZWQK
Pj4+IGZyb20gZXh5bm9zX2J1c19wcm9iZSgpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFydHVy
IMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+Pj4gLS0tCj4+PiAgZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDkyICsrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCAzOSBkZWxl
dGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMu
YyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4+IGluZGV4IDI5ZjQyMjQ2OTk2MC4u
NzhmMzhiN2ZiNTk2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMu
Ywo+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+Pj4gQEAgLTI4NywxMiAr
Mjg3LDYyIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5wLAo+Pj4gIAlyZXR1cm4gcmV0Owo+Pj4gIH0KPj4+ICAKPj4+ICtzdGF0aWMgaW50IGV4
eW5vc19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4+PiArCQkJCSAg
IHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlICpwcm9maWxlKQo+Pj4gK3sKPj4+ICsJc3RydWN0
IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7Cj4+PiArCXN0cnVjdCBkZXZmcmVxX3NpbXBsZV9vbmRl
bWFuZF9kYXRhICpvbmRlbWFuZF9kYXRhOwo+Pj4gKwlpbnQgcmV0Owo+Pj4gKwo+Pj4gKwkvKiBJ
bml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50
IGRldmljZSAqLwo+Pj4gKwlwcm9maWxlLT5wb2xsaW5nX21zID0gNTA7Cj4+PiArCXByb2ZpbGUt
PnRhcmdldCA9IGV4eW5vc19idXNfdGFyZ2V0Owo+Pj4gKwlwcm9maWxlLT5nZXRfZGV2X3N0YXR1
cyA9IGV4eW5vc19idXNfZ2V0X2Rldl9zdGF0dXM7Cj4+PiArCXByb2ZpbGUtPmV4aXQgPSBleHlu
b3NfYnVzX2V4aXQ7Cj4+PiArCj4+PiArCW9uZGVtYW5kX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKm9uZGVtYW5kX2RhdGEpLCBHRlBfS0VSTkVMKTsKPj4+ICsJaWYgKCFvbmRlbWFu
ZF9kYXRhKSB7Cj4+PiArCQlyZXQgPSAtRU5PTUVNOwo+Pj4gKwkJZ290byBlcnI7Cj4+PiArCX0K
Pj4+ICsJb25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKPj4+ICsJb25kZW1hbmRfZGF0
YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4+PiArCj4+PiArCS8qIEFkZCBkZXZmcmVxIGRldmlj
ZSB0byBtb25pdG9yIGFuZCBoYW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KPj4+ICsJYnVzLT5kZXZm
cmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLAo+Pj4gKwkJCQkJCURF
VkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORCwKPj4+ICsJCQkJCQlvbmRlbWFuZF9kYXRhKTsKPj4+
ICsJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4+PiArCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+Pj4gKwkJcmV0ID0gUFRSX0VSUihidXMtPmRl
dmZyZXEpOwo+Pj4gKwkJZ290byBlcnI7Cj4+PiArCX0KPj4+ICsKPj4+ICsJLyoKPj4+ICsJICog
RW5hYmxlIGRldmZyZXEtZXZlbnQgdG8gZ2V0IHJhdyBkYXRhIHdoaWNoIGlzIHVzZWQgdG8gZGV0
ZXJtaW5lCj4+PiArCSAqIGN1cnJlbnQgYnVzIGxvYWQuCj4+PiArCSAqLwo+Pj4gKwlyZXQgPSBl
eHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4+PiArCWlmIChyZXQgPCAwKSB7Cj4+PiArCQlk
ZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsK
Pj4+ICsJCWdvdG8gZXJyOwo+Pj4gKwl9Cj4+PiArCj4+PiArCXJldCA9IGV4eW5vc19idXNfc2V0
X2V2ZW50KGJ1cyk7Cj4+PiArCWlmIChyZXQgPCAwKSB7Cj4+PiArCQlkZXZfZXJyKGRldiwgImZh
aWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPj4+ICsJCWdv
dG8gZXJyOwo+Pj4gKwl9Cj4+PiArCj4+PiArZXJyOgo+Pj4gKwlyZXR1cm4gcmV0Owo+Pj4gK30K
Pj4+ICsKPj4+ICBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4+ICB7Cj4+PiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
Cj4+PiAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGUsICpub2RlOwo+Pj4g
IAlzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmlsZTsKPj4+IC0Jc3RydWN0IGRldmZy
ZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9uZGVtYW5kX2RhdGE7Cj4+PiAgCXN0cnVjdCBkZXZm
cmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+Pj4gIAlzdHJ1Y3QgZGV2ZnJlcSAqcGFy
ZW50X2RldmZyZXE7Cj4+PiAgCXN0cnVjdCBleHlub3NfYnVzICpidXM7Cj4+PiBAQCAtMzM0LDQ1
ICszODQsOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPj4+ICAJaWYgKHBhc3NpdmUpCj4+PiAgCQlnb3RvIHBhc3NpdmU7Cj4+PiAg
Cj4+PiAtCS8qIEluaXRpYWxpemUgdGhlIHN0cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRh
IGZvciBwYXJlbnQgZGV2aWNlICovCj4+PiAtCXByb2ZpbGUtPnBvbGxpbmdfbXMgPSA1MDsKPj4+
IC0JcHJvZmlsZS0+dGFyZ2V0ID0gZXh5bm9zX2J1c190YXJnZXQ7Cj4+PiAtCXByb2ZpbGUtPmdl
dF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2X3N0YXR1czsKPj4+IC0JcHJvZmlsZS0+
ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPj4+IC0KPj4+IC0Jb25kZW1hbmRfZGF0YSA9IGRldm1f
a3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+Pj4gLQlp
ZiAoIW9uZGVtYW5kX2RhdGEpIHsKPj4+IC0JCXJldCA9IC1FTk9NRU07Cj4+PiArCXJldCA9IGV4
eW5vc19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7Cj4+PiArCWlmIChyZXQgPCAwKQo+
Pj4gIAkJZ290byBlcnI7Cj4+PiAtCX0KPj4+IC0Jb25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQg
PSA0MDsKPj4+IC0Jb25kZW1hbmRfZGF0YS0+ZG93bmRpZmZlcmVudGlhbCA9IDU7Cj4+PiAtCj4+
PiAtCS8qIEFkZCBkZXZmcmVxIGRldmljZSB0byBtb25pdG9yIGFuZCBoYW5kbGUgdGhlIGV4eW5v
cyBidXMgKi8KPj4+IC0JYnVzLT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2
LCBwcm9maWxlLAo+Pj4gLQkJCQkJCURFVkZSRVFfR09WX1NJTVBMRV9PTkRFTUFORCwKPj4+IC0J
CQkJCQlvbmRlbWFuZF9kYXRhKTsKPj4+IC0JaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4+
PiAtCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+Pj4g
LQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+Pj4gLQkJZ290byBlcnI7Cj4+PiAtCX0K
Pj4+IC0KPj4+IC0JLyoKPj4+IC0JICogRW5hYmxlIGRldmZyZXEtZXZlbnQgdG8gZ2V0IHJhdyBk
YXRhIHdoaWNoIGlzIHVzZWQgdG8gZGV0ZXJtaW5lCj4+PiAtCSAqIGN1cnJlbnQgYnVzIGxvYWQu
Cj4+PiAtCSAqLwo+Pj4gLQlyZXQgPSBleHlub3NfYnVzX2VuYWJsZV9lZGV2KGJ1cyk7Cj4+PiAt
CWlmIChyZXQgPCAwKSB7Cj4+PiAtCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2
ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPj4+IC0JCWdvdG8gZXJyOwo+Pj4gLQl9Cj4+PiAtCj4+
PiAtCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4+PiAtCWlmIChyZXQgPCAwKSB7
Cj4+PiAtCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBzZXQgZXZlbnQgdG8gZGV2ZnJlcS1ldmVu
dCBkZXZpY2VzXG4iKTsKPj4+IC0JCWdvdG8gZXJyOwo+Pj4gLQl9Cj4+PiAgCj4+PiAgCWdvdG8g
b3V0Owo+Pj4gIHBhc3NpdmU6Cj4gCj4gY29tbWl0IGNhY2Y4ZTRlYTBlMTExOTA4ZDExNzc5OTc3
YzgxZTI5ZDY0MTg4MDEKPiBBdXRob3I6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVy
LnNhbXN1bmcuY29tPgo+IERhdGU6ICAgVHVlIEF1ZyAyNyAxMzoxNzoyOCAyMDE5ICswMjAwCj4g
Cj4gICAgIHRtcDogbWVyZ2UgcGF0Y2hlcyAwMS0wMwo+ICAgICAKPiAgICAgU2lnbmVkLW9mZi1i
eTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEv
ZXh5bm9zLWJ1cy5jCj4gaW5kZXggMjlmNDIyNDY5OTYwLi42MGFkNDMxOWZkODAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPiBAQCAtMjg3LDUyICsyODcsMTIgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gIAlyZXR1cm4gcmV0Owo+ICB9
Cj4gIAo+IC1zdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiArc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5
bm9zX2J1cyAqYnVzLAo+ICsJCQkJICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2Zp
bGUpCj4gIHsKPiAtCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gLQlzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlLCAqbm9kZTsKPiAtCXN0cnVjdCBkZXZmcmVx
X2Rldl9wcm9maWxlICpwcm9maWxlOwo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7
Cj4gIAlzdHJ1Y3QgZGV2ZnJlcV9zaW1wbGVfb25kZW1hbmRfZGF0YSAqb25kZW1hbmRfZGF0YTsK
PiAtCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+IC0Jc3RydWN0
IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+IC0Jc3RydWN0IGV4eW5vc19idXMgKmJ1czsKPiAt
CWludCByZXQsIG1heF9zdGF0ZTsKPiAtCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVx
Owo+IC0JYm9vbCBwYXNzaXZlID0gZmFsc2U7Cj4gLQo+IC0JaWYgKCFucCkgewo+IC0JCWRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGZpbmQgZGV2aWNldHJlZSBub2RlXG4iKTsKPiAtCQlyZXR1cm4g
LUVJTlZBTDsKPiAtCX0KPiAtCj4gLQlidXMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6
ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKPiAtCWlmICghYnVzKQo+IC0JCXJldHVybiAtRU5PTUVN
Owo+IC0JbXV0ZXhfaW5pdCgmYnVzLT5sb2NrKTsKPiAtCWJ1cy0+ZGV2ID0gJnBkZXYtPmRldjsK
PiAtCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIGJ1cyk7Cj4gLQo+IC0JcHJvZmlsZSA9IGRl
dm1fa3phbGxvYyhkZXYsIHNpemVvZigqcHJvZmlsZSksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFw
cm9maWxlKQo+IC0JCXJldHVybiAtRU5PTUVNOwo+IC0KPiAtCW5vZGUgPSBvZl9wYXJzZV9waGFu
ZGxlKGRldi0+b2Zfbm9kZSwgImRldmZyZXEiLCAwKTsKPiAtCWlmIChub2RlKSB7Cj4gLQkJb2Zf
bm9kZV9wdXQobm9kZSk7Cj4gLQkJcGFzc2l2ZSA9IHRydWU7Cj4gLQl9IGVsc2Ugewo+IC0JCXJl
dCA9IGV4eW5vc19idXNfcGFyZW50X3BhcnNlX29mKG5wLCBidXMpOwo+IC0JCWlmIChyZXQgPCAw
KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0JfQo+IC0KPiAtCS8qIFBhcnNlIHRoZSBkZXZpY2UtdHJl
ZSB0byBnZXQgdGhlIHJlc291cmNlIGluZm9ybWF0aW9uICovCj4gLQlyZXQgPSBleHlub3NfYnVz
X3BhcnNlX29mKG5wLCBidXMpOwo+IC0JaWYgKHJldCA8IDApCj4gLQkJZ290byBlcnJfcmVnOwo+
IC0KPiAtCWlmIChwYXNzaXZlKQo+IC0JCWdvdG8gcGFzc2l2ZTsKPiArCWludCByZXQ7Cj4gIAo+
ICAJLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVybm9yIGRhdGEgZm9y
IHBhcmVudCBkZXZpY2UgKi8KPiAgCXByb2ZpbGUtPnBvbGxpbmdfbXMgPSA1MDsKPiBAQCAtMzc0
LDggKzMzNCwxOCBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgCQlnb3RvIGVycjsKPiAgCX0KPiAgCj4gLQlnb3RvIG91dDsKPiAt
cGFzc2l2ZToKPiArZXJyOgo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiArc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4g
KwkJCQkJICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCj4gK3sKPiArCXN0
cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+ICsJc3RydWN0IGRldmZyZXFfcGFzc2l2ZV9k
YXRhICpwYXNzaXZlX2RhdGE7Cj4gKwlzdHJ1Y3QgZGV2ZnJlcSAqcGFyZW50X2RldmZyZXE7Cj4g
KwlpbnQgcmV0ID0gMDsKPiArCj4gIAkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBh
bmQgZ292ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KPiAgCXByb2ZpbGUtPnRhcmdl
dCA9IGV4eW5vc19idXNfdGFyZ2V0Owo+ICAJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfcGFz
c2l2ZV9leGl0Owo+IEBAIC00MDQsNyArMzc0LDU5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCWdvdG8gZXJyOwo+ICAJfQo+
ICAKPiAtb3V0Ogo+ICtlcnI6Cj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50
IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJ
c3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnAgPSBkZXYtPm9mX25vZGUsICpub2RlOwo+ICsJc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUg
KnByb2ZpbGU7Cj4gKwlzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzOwo+ICsJaW50IHJldCwgbWF4X3N0
YXRlOwo+ICsJdW5zaWduZWQgbG9uZyBtaW5fZnJlcSwgbWF4X2ZyZXE7Cj4gKwlib29sIHBhc3Np
dmUgPSBmYWxzZTsKPiArCj4gKwlpZiAoIW5wKSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gZmluZCBkZXZpY2V0cmVlIG5vZGVcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+
ICsKPiArCWJ1cyA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2YoKmJ1cyksIEdGUF9L
RVJORUwpOwo+ICsJaWYgKCFidXMpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwltdXRleF9pbml0
KCZidXMtPmxvY2spOwo+ICsJYnVzLT5kZXYgPSAmcGRldi0+ZGV2Owo+ICsJcGxhdGZvcm1fc2V0
X2RydmRhdGEocGRldiwgYnVzKTsKPiArCj4gKwlwcm9maWxlID0gZGV2bV9remFsbG9jKGRldiwg
c2l6ZW9mKCpwcm9maWxlKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXByb2ZpbGUpCj4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4gKwo+ICsJbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5vZl9ub2Rl
LCAiZGV2ZnJlcSIsIDApOwo+ICsJaWYgKG5vZGUpIHsKPiArCQlvZl9ub2RlX3B1dChub2RlKTsK
PiArCQlwYXNzaXZlID0gdHJ1ZTsKPiArCX0gZWxzZSB7Cj4gKwkJcmV0ID0gZXh5bm9zX2J1c19w
YXJlbnRfcGFyc2Vfb2YobnAsIGJ1cyk7Cj4gKwkJaWYgKHJldCA8IDApCj4gKwkJCXJldHVybiBy
ZXQ7Cj4gKwl9Cj4gKwo+ICsJLyogUGFyc2UgdGhlIGRldmljZS10cmVlIHRvIGdldCB0aGUgcmVz
b3VyY2UgaW5mb3JtYXRpb24gKi8KPiArCXJldCA9IGV4eW5vc19idXNfcGFyc2Vfb2YobnAsIGJ1
cyk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlnb3RvIGVycl9yZWc7Cj4gKwo+ICsJaWYgKHBhc3Np
dmUpCj4gKwkJcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMsIHByb2Zp
bGUpOwo+ICsJZWxzZQo+ICsJCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJv
ZmlsZSk7Cj4gKwo+ICsJaWYgKHJldCA8IDApCj4gKwkJZ290byBlcnI7Cj4gKwo+ICAJbWF4X3N0
YXRlID0gYnVzLT5kZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGU7Cj4gIAltaW5fZnJlcSA9IChi
dXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbMF0gLyAxMDAwKTsKPiAgCW1heF9mcmVx
ID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVttYXhfc3RhdGUgLSAxXSAvIDEw
MDApOwo+IAo+IAo+IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5n
IEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
