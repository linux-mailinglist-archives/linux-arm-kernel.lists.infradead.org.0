Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2911735C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3YCf3kJGXCKygDG1jtRYI6rBgw/aJ13uHWRJGsj3Ms=; b=aEBS2bK1rwN8JW
	NV4LQX9alMnWetSOiO5Fq/vuQDCA2rl1DnXZoZlbCVKkJwQXPmp1YvSW4cHpmFYGeiZ9p4cVsi85/
	niOB+aDFevrOeyaexzFHTr/kUjQ5Sd4eprhY1tpF9tMa1nPtNx7ns3DUPKn7AEAenZ1NvxbQhuBR1
	bOxprnuBKWWjk/Q0WTU/Ee5oY509O6P18V1mK+U3WvmxNmOnbFoQGXvqPW1YpQ72oxooufLrOcg7E
	8iIzoAGWsGvIIntuDG00yKLXj/1Z1HiI1XjF4SVAFKoU4wCZu8a4zCFEUbn1vYv7hQvzFRtOsiruw
	zqf1kVbsrXNvtdEMUEsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dNQ-0008HO-IG; Fri, 28 Feb 2020 11:00:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dN6-0008H2-Ad
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:59:58 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200228105953euoutp01ee660e1ce406f63355c387ae588f1a19~3i_FTmi2N0769907699euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 10:59:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200228105953euoutp01ee660e1ce406f63355c387ae588f1a19~3i_FTmi2N0769907699euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582887593;
 bh=BguuZDvU6azV9XPd525Wmqpvtk9ygCrcA613uyM+G5Q=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=hrwoIBQpAYkIZgiSnHkKnOXeVkhK7W2rOeMhBPlF3G8Gzv+yXTwtEGPhpV/QL1w8o
 anKByvciWGUSAerf64ECvEw90Df5Uq7UUAYo7K2NbDFxZnjAE2t8ejcrGs152Dl34z
 bKk2T54p9OsUbwC93Ufm7Xpa4gIymrPG4TF7Xvrw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200228105953eucas1p1de6c97755e10841e0e712e9bcd5ef945~3i_E-rSCe2307623076eucas1p1T;
 Fri, 28 Feb 2020 10:59:53 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F4.7F.61286.9A2F85E5; Fri, 28
 Feb 2020 10:59:53 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200228105953eucas1p111c667e8841ec152ecf3e302e736e9cc~3i_EqURnN2315323153eucas1p1s;
 Fri, 28 Feb 2020 10:59:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200228105953eusmtrp2979943f68ef2c63a3bad0952dfd31cf8~3i_Epf7ZV2783027830eusmtrp2Y;
 Fri, 28 Feb 2020 10:59:53 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-4b-5e58f2a978da
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E6.0C.08375.9A2F85E5; Fri, 28
 Feb 2020 10:59:53 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200228105952eusmtip1e43ebe3dfd0ade530835a9ffade7a889~3i_D3ig_a2996329963eusmtip1F;
 Fri, 28 Feb 2020 10:59:52 +0000 (GMT)
Subject: Re: [RESEND PATCH v2 0/2] Enable Odroid-XU3/4 to use Energy Model
 and Energy Aware Scheduler
To: Lukasz Luba <lukasz.luba@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <fb6961ce-846e-3c26-5227-6327c6d511f6@samsung.com>
Date: Fri, 28 Feb 2020 11:59:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <597f1475-754c-d77a-b599-0fa07d8ee948@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAKsWRmVeSWpSXmKPExsWy7djP87orP0XEGcx6LG+xccZ6VovrX56z
 Wsw/co7V4umErcwW/Y9fM1ucP7+B3eJs0xt2i02Pr7FaXN41h83ic+8RRosZ5/cxWSxsamG3
 WHr9IpPF7cYVbBate4+wO/B7rJm3htFj06pONo/NS+o9+rasYvT4vEkugDWKyyYlNSezLLVI
 3y6BK+P/tC8sBWc1K3YsesXcwNiu3MXIySEhYCLRceoKYxcjF4eQwApGidZ/v6CcL4wSy3Yv
 YgGpEhL4DJR5XwjT8WDyHzaI+HJGifkTvCAa3jJKPLz8nx0kISyQLvF99QWgSRwcIgI+Ekte
 q4PUMAs8ZZLYcO4dK0gNm4ChRNfbLrBBvAJ2EvPPLWMCsVkEVCWaztwCi4sKxErMXnmYBaJG
 UOLkzCdgNqeAtcS+yR1g9cwC8hLNW2czQ9jiEreezGeCOPQtu8TtwxEQtovE+/UnGCFsYYlX
 x7ewQ9gyEv93gtRzAdnNQA+cW8sO4fQwSlxumgHVYS1x59wvNpBvmAU0Jdbv0ocIO0qs+PaZ
 BSQsIcAnceOtIMQNfBKTtk1nhgjzSnS0CUFUq0nMOr4Obu3BC5eYJzAqzULy2Swk38xC8s0s
 hL0LGFlWMYqnlhbnpqcWG+allusVJ+YWl+al6yXn525iBKaz0/+Of9rB+PVS0iFGAQ5GJR7e
 BTvC44RYE8uKK3MPMUpwMCuJ8G78GhonxJuSWFmVWpQfX1Sak1p8iFGag0VJnNd40ctYIYH0
 xJLU7NTUgtQimCwTB6dUA2NH957LmUe2/9klp6C3VXPm/fPXFte6iLznucOz1kg7XdVKkvX6
 guX7PvOwvjrtMr9lqXft8t8sr+cczjnh+l4+M3338uNHGm/qHDr8+5p6d5lJzq78qfETE9zU
 mtLWHY1V7X9yLothQVfi9x7VD+cu/jmkuHJtbhxfyY6Wg+0n1Ep2zTOWWPZTiaU4I9FQi7mo
 OBEA8Q0Ao2MDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7orP0XEGRx5z2WxccZ6VovrX56z
 Wsw/co7V4umErcwW/Y9fM1ucP7+B3eJs0xt2i02Pr7FaXN41h83ic+8RRosZ5/cxWSxsamG3
 WHr9IpPF7cYVbBate4+wO/B7rJm3htFj06pONo/NS+o9+rasYvT4vEkugDVKz6Yov7QkVSEj
 v7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5BL+P/tC8sBWc1K3YsesXc
 wNiu3MXIySEhYCLxYPIfti5GLg4hgaWMEt+7drNAJGQkTk5rYIWwhSX+XOtiA7GFBF4zSjyd
 JgxiCwukS7ScPwFUz8EhIuAjseS1OsgcZoGnTBLvV8xhhKh/yCjRcNEQxGYTMJToegsxh1fA
 TmL+uWVMIDaLgKpE05lbYHFRgViJGzM7mCBqBCVOznwCdg+ngLXEvskQcWYBM4l5mx8yQ9jy
 Es1bZ0PZ4hK3nsxnmsAoNAtJ+ywkLbOQtMxC0rKAkWUVo0hqaXFuem6xoV5xYm5xaV66XnJ+
 7iZGYARvO/Zz8w7GSxuDDzEKcDAq8fAu2BEeJ8SaWFZcmXuIUYKDWUmEd+PX0Dgh3pTEyqrU
 ovz4otKc1OJDjKZAz01klhJNzgcml7ySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2amp
 BalFMH1MHJxSDYxMPIkRPhLaTtcN9f3X9N7fce0bR9CspqL0t4GVz5tSag+dfyZRlxiy9pzb
 2ov28kuLUtepTZ18YqbevPNKTB5vHyza1vvwvJHl+/vvD299PfvUZpbs11kzDN9cjdSvz+xW
 O6E3/3ZX8/d356xqOVa2ekg6/bTo2ny2oHNuuqeT7sbFpw68V7qrxFKckWioxVxUnAgAtmO/
 1/YCAAA=
X-CMS-MailID: 20200228105953eucas1p111c667e8841ec152ecf3e302e736e9cc
X-Msg-Generator: CA
X-RootMTR: 20200221103307eucas1p2bc51b3b5d6d0a9739ab97cdd39078505
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200221103307eucas1p2bc51b3b5d6d0a9739ab97cdd39078505
References: <20200220095636.29469-1-lukasz.luba@arm.com>
 <20200220180040.GA8338@kozik-lap>
 <CGME20200221103307eucas1p2bc51b3b5d6d0a9739ab97cdd39078505@eucas1p2.samsung.com>
 <597f1475-754c-d77a-b599-0fa07d8ee948@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_025957_343204_2872B4BC 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVrYXN6CgpPbiAyMS4wMi4yMDIwIDExOjMyLCBMdWthc3ogTHViYSB3cm90ZToKPiBPbiAy
LzIwLzIwIDY6MDAgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIFRodSwgRmVi
IDIwLCAyMDIwIGF0IDA5OjU2OjM0QU0gKzAwMDAsIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4gVGhp
cyBpcyBqdXN0IGEgcmVzZW5kLCBub3cgd2l0aCBwcm9wZXIgdjIgaW4gdGhlIHBhdGNoZXMgc3Vi
amVjdC4KPj4+Cj4+PiBUaGUgT2Ryb2lkLVhVNC8zIGlzIGEgZGVjZW50IGFuZCBlYXN5IGFjY2Vz
c2libGUgQVJNIGJpZy5MSVRUTEUgCj4+PiBwbGF0Zm9ybSwKPj4+IHdoaWNoIG1pZ2h0IGJlIHVz
ZWQgZm9yIHJlc2VhcmNoIGFuZCBkZXZlbG9wbWVudC4KPj4+Cj4+PiBUaGlzIHNtYWxsIHBhdGNo
IHNldCBwcm92aWRlcyBwb3NzaWJpbGl0eSB0byBydW4gRW5lcmd5IEF3YXJlIAo+Pj4gU2NoZWR1
bGVyIChFQVMpCj4+PiBvbiBPZHJvaWQtWFU0LzMgYW5kIGV4cGVyaW1lbnQgd2l0aCBpdC4KPj4+
Cj4+PiBUaGUgcGF0Y2ggMS8yIHByb3ZpZGVzICdkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50JyBp
biBDUFUgRFQgbm9kZXMsIAo+Pj4gd2hpY2ggaXMKPj4+IHRoZW4gdXNlZCBieSB0aGUgRW5lcmd5
IE1vZGVsIChFTSkuCj4+PiBUaGUgcGF0Y2ggMi8yIGVuYWJsZXMgU0NIRURfTUMgKHdoaWNoIGFk
ZHMgYW5vdGhlciBsZXZlbCBpbiAKPj4+IHNjaGVkdWxpbmcgZG9tYWlucykKPj4+IGFuZCBlbmFi
bGVzIEVNIG1ha2luZyBFQVMgcG9zc2libGUgdG8gcnVuICh3aGVuIHNjaGVkdXRpbCBpcyBzZXQg
YXMgCj4+PiBhIENQVUZyZXEKPj4+IGdvdmVybm9yKS4KPj4+Cj4+PiAxLiBUZXN0IHJlc3VsdHMK
Pj4+Cj4+PiBUd28gdHlwZXMgb2YgZGlmZmVyZW50IHRlc3RzIGhhdmUgYmVlbiBleGVjdXRlZC4g
VGhlIGZpcnN0IGlzIGVuZXJneSAKPj4+IHRlc3QKPj4+IGNhc2Ugc2hvd2luZyBpbXBhY3Qgb24g
ZW5lcmd5IGNvbnN1bXB0aW9uIG9mIHRoaXMgcGF0Y2ggc2V0LiBJdCBpcyAKPj4+IHVzaW5nIGEK
Pj4+IHN5bnRoZXRpYyBzZXQgb2YgdGFza3MgKHJ0LWFwcCBiYXNlZCkuIFRoZSBzZWNvbmQgaXMg
dGhlIHBlcmZvcm1hbmNlIAo+Pj4gdGVzdAo+Pj4gY2FzZSB3aGljaCBpcyB1c2luZyBoYWNrYmVu
Y2ggKGxlc3MgdGltZSB0byBjb21wbGV0ZSBpcyBiZXR0ZXIpLgo+Pj4gSW4gYm90aCB0ZXN0cyBz
Y2hlZHV0aWwgaGFzIGJlZW4gdXNlZCBhcyBjcHVmcmVxIGdvdmVybm9yLiBJbiBhbGwgdGVzdHMK
Pj4+IFBST1ZFX0xPQ0tJTkcgaGFzIG5vdCBiZWVuIGNvbXBpbGVkIGludG8gdGhlIGtlcm5lbHMu
Cj4+Pgo+Pj4gMS4xIEVuZXJneSB0ZXN0IGNhc2UKPj4+Cj4+PiAxMCBpdGVyYXRpb25zIG9mIDI0
IHBlcmlvZGljIHJ0LWFwcCB0YXNrcyAoMTZtcyBwZXJpb2QsIDEwJSBkdXR5LWN5Y2xlKQo+Pj4g
d2l0aCBlbmVyZ3kgbWVhc3VyZW1lbnQuIFRoZSBjcHVmcmVxIGdvdmVybm9yIC0gc2NoZWR1dGls
LiBVbml0IGlzIAo+Pj4gSm91bGVzLgo+Pj4gVGhlIGVuZXJneSBpcyBjYWxjdWxhdGVkIGJhc2Vk
IG9uIGh3bW9uMCBhbmQgaHdtb24zIHBvd2VyMV9pbnB1dC4KPj4+IFRoZSBnb2FsIGlzIHRvIHNh
dmUgZW5lcmd5LCBsb3dlciBpcyBiZXR0ZXIuCj4+Pgo+Pj4gKy0tLS0tLS0tLS0tKy0tLS0tLS0t
LS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPj4+IHzCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IFdpdGhvdXQgcGF0Y2hlcyB8IFdpdGggcGF0Y2hlc8KgwqDCoMKgwqDCoMKgwqDCoMKg
IHwKPj4+ICstLS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0rCj4+PiB8IGJlbmNobWFyayB8wqAgTWVhbsKgIHwgUlNEKsKgwqAgfCBNZWFuwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCBSU0QqwqAgfAo+Pj4gKy0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0t
LS0tKy0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLSsKPj4+IHwgMjQgcnQtYXBwIHzCoCAyMS41NiB8
wqAgMS4zNyUgfMKgIDE5Ljg1ICgtOS4yJSkgfCAwLjkyJSB8Cj4+PiB8wqDCoMKgIHRhc2tzwqAg
fMKgwqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqDCoMKgwqAgfAo+Pj4gKy0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0t
Ky0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLSsKPj4+Cj4+PiAxLjIgUGVyZm9ybWFuY2UgdGVzdCBj
YXNlCj4+Pgo+Pj4gMTAgY29uc2VjdXRpdmUgaXRlcmF0aW9ucyBvZiBoYWNrYmVuY2ggKGhhY2ti
ZW5jaCAtbCA1MDAgLXMgNDA5NiksCj4+PiBubyBkZWxheSBiZXR3ZWVuIHR3byBzdWNjZXNzaXZl
IGV4ZWN1dGlvbnMuCj4+PiBUaGUgY3B1ZnJlcSBnb3Zlcm5vciAtIHNjaGVkdXRpbC4gVW5pdHMg
aW4gc2Vjb25kcy4KPj4+IFRoZSBnb2FsIGlzIHRvIHNlZSBub3QgcmVncmVzc2lvbiwgbG93ZXIg
Y29tcGxldGlvbiB0aW1lIGlzIGJldHRlci4KPj4+Cj4+PiArLS0tLS0tLS0tLS0rLS0tLS0tLS0t
LS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwo+Pj4gfMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgV2l0aG91dCBwYXRjaGVzIHwgV2l0aCBwYXRjaGVzwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fAo+Pj4gKy0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0rLS0t
LS0tLSsKPj4+IHwgYmVuY2htYXJrIHwgTWVhbsKgwqAgfCBSU0QqwqDCoCB8IE1lYW7CoMKgwqDC
oMKgwqDCoMKgwqDCoCB8IFJTRCrCoCB8Cj4+PiArLS0tLS0tLS0tLS0rLS0tLS0tLS0rLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tKwo+Pj4gfCBoYWNrYmVuY2ggfMKgIDguMTXCoCB8
IDIuODYlwqAgfMKgIDcuOTUgKC0yLjUlKcKgIHwgMC42MCUgfAo+Pj4gKy0tLS0tLS0tLS0tKy0t
LS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLSsKPj4+Cj4+PiAqUlNEOiBS
ZWxhdGl2ZSBTdGFuZGFyZCBEZXZpYXRpb24gKHN0ZCBkZXYgLyBtZWFuKQo+Pgo+PiBOaWNlIG1l
YXN1cmVtZW50cyEKPgo+IEdsYWQgdG8gaGVhciB0aGF0Lgo+Cj4+Cj4+IEFwcGxpZWQgYm90aCwg
dGhhbmsgeW91Lgo+Pgo+Cj4gVGhhbmsgeW91IGZvciBhcHBseWluZyB0aGlzLgoKCkFmdGVyIGFw
cGx5aW5nIHRoZSBwYXRjaGVzIEkgc2VlIHRoZSBmb2xsb3dpbmcgd2FybmluZ3MgZHVyaW5nIGJv
b3QgKFhVNCk6CgplbmVyZ3lfbW9kZWw6IHBkMDogaGVydHovd2F0dHMgcmF0aW8gbm9uLW1vbm90
b25pY2FsbHkgZGVjcmVhc2luZzogCmVtX2NhcF9zdGF0ZSAxID49IGVtX2NhcF9zdGF0ZTAKZW5l
cmd5X21vZGVsOiBwZDA6IGhlcnR6L3dhdHRzIHJhdGlvIG5vbi1tb25vdG9uaWNhbGx5IGRlY3Jl
YXNpbmc6IAplbV9jYXBfc3RhdGUgMyA+PSBlbV9jYXBfc3RhdGUyCmVuZXJneV9tb2RlbDogcGQw
OiBoZXJ0ei93YXR0cyByYXRpbyBub24tbW9ub3RvbmljYWxseSBkZWNyZWFzaW5nOiAKZW1fY2Fw
X3N0YXRlIDQgPj0gZW1fY2FwX3N0YXRlMwplbmVyZ3lfbW9kZWw6IHBkMDogaGVydHovd2F0dHMg
cmF0aW8gbm9uLW1vbm90b25pY2FsbHkgZGVjcmVhc2luZzogCmVtX2NhcF9zdGF0ZSA1ID49IGVt
X2NhcF9zdGF0ZTQKZW5lcmd5X21vZGVsOiBwZDA6IGhlcnR6L3dhdHRzIHJhdGlvIG5vbi1tb25v
dG9uaWNhbGx5IGRlY3JlYXNpbmc6IAplbV9jYXBfc3RhdGUgOCA+PSBlbV9jYXBfc3RhdGU3CmVu
ZXJneV9tb2RlbDogcGQwOiBoZXJ0ei93YXR0cyByYXRpbyBub24tbW9ub3RvbmljYWxseSBkZWNy
ZWFzaW5nOiAKZW1fY2FwX3N0YXRlIDEwID49IGVtX2NhcF9zdGF0ZTkKZW5lcmd5X21vZGVsOiBw
ZDA6IGhlcnR6L3dhdHRzIHJhdGlvIG5vbi1tb25vdG9uaWNhbGx5IGRlY3JlYXNpbmc6IAplbV9j
YXBfc3RhdGUgMTEgPj0gZW1fY2FwX3N0YXRlMTAKZW5lcmd5X21vZGVsOiBwZDQ6IGhlcnR6L3dh
dHRzIHJhdGlvIG5vbi1tb25vdG9uaWNhbGx5IGRlY3JlYXNpbmc6IAplbV9jYXBfc3RhdGUgMSA+
PSBlbV9jYXBfc3RhdGUwCmVuZXJneV9tb2RlbDogcGQ0OiBoZXJ0ei93YXR0cyByYXRpbyBub24t
bW9ub3RvbmljYWxseSBkZWNyZWFzaW5nOiAKZW1fY2FwX3N0YXRlIDIgPj0gZW1fY2FwX3N0YXRl
MQplbmVyZ3lfbW9kZWw6IHBkNDogaGVydHovd2F0dHMgcmF0aW8gbm9uLW1vbm90b25pY2FsbHkg
ZGVjcmVhc2luZzogCmVtX2NhcF9zdGF0ZSAzID49IGVtX2NhcF9zdGF0ZTIKZW5lcmd5X21vZGVs
OiBwZDQ6IGhlcnR6L3dhdHRzIHJhdGlvIG5vbi1tb25vdG9uaWNhbGx5IGRlY3JlYXNpbmc6IApl
bV9jYXBfc3RhdGUgNCA+PSBlbV9jYXBfc3RhdGUzCmVuZXJneV9tb2RlbDogcGQ0OiBoZXJ0ei93
YXR0cyByYXRpbyBub24tbW9ub3RvbmljYWxseSBkZWNyZWFzaW5nOiAKZW1fY2FwX3N0YXRlIDUg
Pj0gZW1fY2FwX3N0YXRlNAplbmVyZ3lfbW9kZWw6IHBkNDogaGVydHovd2F0dHMgcmF0aW8gbm9u
LW1vbm90b25pY2FsbHkgZGVjcmVhc2luZzogCmVtX2NhcF9zdGF0ZSA2ID49IGVtX2NhcF9zdGF0
ZTUKZW5lcmd5X21vZGVsOiBwZDQ6IGhlcnR6L3dhdHRzIHJhdGlvIG5vbi1tb25vdG9uaWNhbGx5
IGRlY3JlYXNpbmc6IAplbV9jYXBfc3RhdGUgOCA+PSBlbV9jYXBfc3RhdGU3CmVuZXJneV9tb2Rl
bDogcGQ0OiBoZXJ0ei93YXR0cyByYXRpbyBub24tbW9ub3RvbmljYWxseSBkZWNyZWFzaW5nOiAK
ZW1fY2FwX3N0YXRlIDkgPj0gZW1fY2FwX3N0YXRlOAplbmVyZ3lfbW9kZWw6IHBkNDogaGVydHov
d2F0dHMgcmF0aW8gbm9uLW1vbm90b25pY2FsbHkgZGVjcmVhc2luZzogCmVtX2NhcF9zdGF0ZSAx
MCA+PSBlbV9jYXBfc3RhdGU5CmVuZXJneV9tb2RlbDogcGQ0OiBoZXJ0ei93YXR0cyByYXRpbyBu
b24tbW9ub3RvbmljYWxseSBkZWNyZWFzaW5nOiAKZW1fY2FwX3N0YXRlIDEzID49IGVtX2NhcF9z
dGF0ZTEyCmVuZXJneV9tb2RlbDogcGQ0OiBoZXJ0ei93YXR0cyByYXRpbyBub24tbW9ub3Rvbmlj
YWxseSBkZWNyZWFzaW5nOiAKZW1fY2FwX3N0YXRlIDE1ID49IGVtX2NhcF9zdGF0ZTE0CmVuZXJn
eV9tb2RlbDogcGQ0OiBoZXJ0ei93YXR0cyByYXRpbyBub24tbW9ub3RvbmljYWxseSBkZWNyZWFz
aW5nOiAKZW1fY2FwX3N0YXRlIDE2ID49IGVtX2NhcF9zdGF0ZTE1CgpJcyBpdCBva2F5PwoKQmVz
dCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRl
IFBvbGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
