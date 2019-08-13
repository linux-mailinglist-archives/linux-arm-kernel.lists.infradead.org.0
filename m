Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209CD8AEA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 07:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ikqLCMw3PYZapHbmPNpzM1NbfPd33vBdcq2PO/eD50=; b=I1NtDftE/h3XKd
	9yEvUulpstHMSzwtbi5ileohfubv/7GFwpMj5IEvtpbjPXzx7TpcaN/p8L4qs8Xx1CDShigulA7aJ
	HfYEiDwQifGVJGRh+AuS6uhRuvSiams9VA3uFyqwbk+pq8ZP534FeB/J8MgE0mm4hPPgIBo1KLfXn
	56mWoIw0PwaPoyINxQl6/fMImz3QhsO1e08yoorAmJA++/9zGP4jGPIqb2Q68UG0htelvbQjTZp1C
	Jxq1ZsU87OSPCXGavHvpdVaTSVcqaf60NeCT2UDR0PyuBuX4s3t5gNZqpDUrCUnU3RxzgKjf5Jff/
	zZzQPi9t5Glf6vMRuJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxPBX-0001xX-6J; Tue, 13 Aug 2019 05:17:27 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxPBL-0001xE-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 05:17:16 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190813051706epoutp041f2f15fd64db68c26de0d116fdb6e2bb~6Y6_roEeE2614826148epoutp04c
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 05:17:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190813051706epoutp041f2f15fd64db68c26de0d116fdb6e2bb~6Y6_roEeE2614826148epoutp04c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565673426;
 bh=asg1+11sWbxWVm15jhQwqqQHiNjN+oh4Orb1yYvnZE4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jaLci8R34cu3oFmZweFCc9tZLG2eGeeKvMswbzNj09rhoK4Ev2SibWyCDOHy4cg2a
 9t3yhjl3muKm10YpRRfnUm7SwYph9a9Ae4XLs35J1d7tcKbylxr9hbennzOW2OZflw
 OmUgy80S08Zo6YlQtQDgLdWi3nrCPuBz8dhKag8w=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190813051706epcas1p39a02e1745d36569887caf980517a5d35~6Y6_QCde42016820168epcas1p3-;
 Tue, 13 Aug 2019 05:17:06 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4671DH4jgYzMqYkk; Tue, 13 Aug
 2019 05:17:03 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 2F.27.04160.FC7425D5; Tue, 13 Aug 2019 14:17:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190813051703epcas1p285e40712bffe72cac7679d9b7b077016~6Y67UzpT52039020390epcas1p29;
 Tue, 13 Aug 2019 05:17:03 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190813051702epsmtrp20ff7dc760e948da36b76be2e3d3e1027~6Y67T6HZt2206022060epsmtrp2c;
 Tue, 13 Aug 2019 05:17:02 +0000 (GMT)
X-AuditID: b6c32a38-b33ff70000001040-cd-5d5247cf1f99
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7C.9F.03638.EC7425D5; Tue, 13 Aug 2019 14:17:02 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813051702epsmtip2449d440ef1074f71d52b4f0970e4de19~6Y67A_GdB0268102681epsmtip26;
 Tue, 13 Aug 2019 05:17:02 +0000 (GMT)
Subject: Re: [PATCH v2] PM / devfreq: passive: Use non-devm notifiers
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <609b263d-d852-205f-c786-2062ca5b36fc@samsung.com>
Date: Tue, 13 Aug 2019 14:20:48 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <074ddc8e211bc7466b5ceec2591cb220a44d8d3a.1565672482.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAJsWRmVeSWpSXmKPExsWy7bCmvu5596BYg7enxS0OHdvKbvH19ClG
 i5eHNC2m793EZnH+/AZ2i7NNb9gtVtz9yGqx6fE1VovPvUcYLW43rmCzWH3uIJtF16G/bA48
 Hu9vtLJ7LNhU6rFpVSebx51re9g8Ni+p99j4bgeTx8F3e5g8+rasYvT4vEkugDMq2yYjNTEl
 tUghNS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6GAlhbLEnFKgUEBi
 cbGSvp1NUX5pSapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGRKVBhQnbG26UnWQp6
 JSsevJvN2sB4X6SLkZNDQsBEonX9W+YuRi4OIYEdjBK3t0xghXA+MUos+vyQEcL5xiix//c6
 FpiW63032CASexklrlyawgySEBJ4zyhxcUEoiC0s4CrR0N4C1i0i0MwosfXEWyYQh1ngN5PE
 pG+v2UCq2AS0JPa/uAFm8wsoSlz98ZgRxOYVsJNof3wQbB2LgKpEQ+cmsBpRgQiJTw8Os0LU
 CEqcnPkErIZTIE7i18lX7CA2s4C4xK0n85kgbHmJ5q2zmSHO3sQuMXuRC4TtInHh+3EmCFtY
 4tXxLewQtpTE53d72SDsaomVJ4+AvSkh0MEosWX/BVaIhLHE/qWTgZo5gBZoSqzfpQ8RVpTY
 +XsuI4TNK9Gw8TfUPXwS7772sIKUg8Q72oQgSpQlLj+4yzSBUXkWkm9mIflgFpIPZiEsW8DI
 sopRLLWgODc9tdiwwAQ5ujcxglOzlsUOxj3nfA4xCnAwKvHwViQExgqxJpYVV+YeYpTgYFYS
 4b1kEhQrxJuSWFmVWpQfX1Sak1p8iNEUGNgTmaVEk/OBeSOvJN7Q1MjY2NjCxNDM1NBQSZx3
 4Q+LWCGB9MSS1OzU1ILUIpg+Jg5OqQZGlW0qhxWZBDkup9l+5mvkfmr/QeHg/W+9X5T4vk90
 8ClNfPZp16yVx57ue/vTcVZW3ZOFyh++JHG6H/mZZvbEoVLrhZmx02f1Fa7rbE5qKAlYbxL5
 YnA/eFJqqtur+nsnl2fHZV5W92febK3B1aYUtUr+61mpVY+dTly6+WbKNp6wF3oVRyQPKLEU
 ZyQaajEXFScCAJcRCY7jAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNIsWRmVeSWpSXmKPExsWy7bCSvO4596BYg9fvTC0OHdvKbvH19ClG
 i5eHNC2m793EZnH+/AZ2i7NNb9gtVtz9yGqx6fE1VovPvUcYLW43rmCzWH3uIJtF16G/bA48
 Hu9vtLJ7LNhU6rFpVSebx51re9g8Ni+p99j4bgeTx8F3e5g8+rasYvT4vEkugDOKyyYlNSez
 LLVI3y6BK+Pt0pMsBb2SFQ/ezWZtYLwv0sXIySEhYCJxve8GG4gtJLCbUeLP1wiIuKTEtItH
 mbsYOYBsYYnDh4u7GLmASt4ySpz9vg6sXljAVaKhvYURJCEi0Moocef0DzYQh1ngN5PEip67
 zBAtGxklfi7fwQrSwiagJbH/BcQ6fgFFias/HjOC2LwCdhLtjw+ygNgsAqoSDZ2bwGpEBSIk
 Du+YBVUjKHFy5hOwGk6BOIlfJ1+xg9jMAuoSf+ZdYoawxSVuPZnPBGHLSzRvnc08gVF4FpL2
 WUhaZiFpmYWkZQEjyypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOAo1dLawXjiRPwh
 RgEORiUe3oqEwFgh1sSy4srcQ4wSHMxKIryXTIJihXhTEiurUovy44tKc1KLDzFKc7AoifPK
 5x+LFBJITyxJzU5NLUgtgskycXBKNTAKcN46pXFRtPwW1zH5vZ/SrU5r9F7zt7kvVDHJTqBD
 f1LchRkbOxT2nhTpeypoc7JsQbHDqcaGpnNbqpbYT1v653F43tEXd2bw8y3csGlf6rGFy3gt
 4tdmdzRzKGmYBsxRmvIgm112V5ZAV+RbtZ9rPBdc2Lhdeern2H/CCg7KlV+tV1n++rxAiaU4
 I9FQi7moOBEApbo07M4CAAA=
X-CMS-MailID: 20190813051703epcas1p285e40712bffe72cac7679d9b7b077016
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190813050645epcas4p1ff658228ef2ebe18c4259d6c33ed5345
References: <CGME20190813050645epcas4p1ff658228ef2ebe18c4259d6c33ed5345@epcas4p1.samsung.com>
 <074ddc8e211bc7466b5ceec2591cb220a44d8d3a.1565672482.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_221715_288710_5E4B941E 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, "cpgs
 \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpXaHkgZG8geW91IG1pc3MgdGhlICdGaXhlcycgdGFnIGFzIEkgY29tbWVudGVkPwpJcyB0
aGVyZSBhbnkgcmVhc29uPwoKT24gMTkuIDguIDEzLiDsmKTtm4QgMjowNiwgTGVvbmFyZCBDcmVz
dGV6IHdyb3RlOgo+IFRoZSBkZXZmcmVxIHBhc3NpdmUgZ292ZXJub3IgcmVnaXN0ZXJzIGFuZCB1
bnJlZ2lzdGVycyBkZXZmcmVxCj4gdHJhbnNpdGlvbiBub3RpZmllcnMgb24gREVWRlJFUV9HT1Zf
U1RBUlQvR09WX1NUT1AgdXNpbmcgZGV2bSB3cmFwcGVycy4KPiAKPiBJZiBkZXZmcmVxIGl0c2Vs
ZiBpcyByZWdpc3RlcmVkIHdpdGggZGV2bSB0aGVuIGEgd2FybmluZyBpcyB0cmlnZ2VyZWQgb24K
PiBybW1vZCBmcm9tIGRldm1fZGV2ZnJlcV91bnJlZ2lzdGVyX25vdGlmaWVyLiBDYWxsIHN0YWNr
IGxvb2tzIGxpa2UgdGhpczoKPiAKPiAJZGV2bV9kZXZmcmVxX3VucmVnaXN0ZXJfbm90aWZpZXIr
MHgzMC8weDQwCj4gCWRldmZyZXFfcGFzc2l2ZV9ldmVudF9oYW5kbGVyKzB4NGMvMHg4OAo+IAlk
ZXZmcmVxX3JlbW92ZV9kZXZpY2UucGFydC44KzB4NmMvMHg5Ywo+IAlkZXZtX2RldmZyZXFfZGV2
X3JlbGVhc2UrMHgxOC8weDIwCj4gCXJlbGVhc2Vfbm9kZXMrMHgxYjAvMHgyMjAKPiAJZGV2cmVz
X3JlbGVhc2VfYWxsKzB4NzgvMHg4NAo+IAlkZXZpY2VfcmVsZWFzZV9kcml2ZXJfaW50ZXJuYWwr
MHgxMDAvMHgxYzAKPiAJZHJpdmVyX2RldGFjaCsweDRjLzB4OTAKPiAJYnVzX3JlbW92ZV9kcml2
ZXIrMHg3Yy8weGQwCj4gCWRyaXZlcl91bnJlZ2lzdGVyKzB4MmMvMHg1OAo+IAlwbGF0Zm9ybV9k
cml2ZXJfdW5yZWdpc3RlcisweDEwLzB4MTgKPiAJaW14X2RldmZyZXFfcGxhdGRydl9leGl0KzB4
MTQvMHhkNDAgW2lteF9kZXZmcmVxXQo+IAo+IFRoaXMgaGFwcGVucyBiZWNhdXNlIGRldnJlc19y
ZWxlYXNlX2FsbCB3aWxsIGZpcnN0IHJlbW92ZSBhbGwgdGhlIG5vZGVzCj4gaW50byBhIHNlcGFy
YXRlIHRvZG8gbGlzdCBzbyB0aGUgbmVzdGVkIGRldnJlc19yZWxlYXNlIGZyb20KPiBkZXZtX2Rl
dmZyZXFfdW5yZWdpc3Rlcl9ub3RpZmllciB3b24ndCBmaW5kIGFueXRoaW5nLgo+IAo+IEZpeCB0
aGUgd2FybmluZyBieSBjYWxsaW5nIHRoZSBub24tZGV2bSBBUElTIGZvciBmcmVxdWVuY3kgbm90
aWZpY2F0aW9uLgo+IFVzaW5nIGRldm0gd3JhcHBlcnMgaXMgbm90IGFjdHVhbGx5IHVzZWZ1bCBm
b3IgYSBnb3Zlcm5vciBhbnl3YXk6IGl0Cj4gcmVsaWVzIG9uIHRoZSBkZXZmcmVxIGNvcmUgdG8g
Y29ycmVjdGx5IG1hdGNoIHRoZSBHT1ZfU1RBUlQvR09WX1NUT1AKPiBub3RpZmljYXRpb25zLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5j
b20+Cj4gQWNrZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgo+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gCj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAq
IFJlbW92ZSB1bnVzZWQgdmFyaWFibGUgImRldiIgYW5kIGF2b2lkIHdhcm5pbmcKPiAqIEFkZGVk
IGFjayBhbmQgY2Mgc3RhYmxlCj4gTGluayB0byB2MTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wYXRjaC8xMTA4NDU0MS8KPiAKPiAgZHJpdmVycy9kZXZmcmVxL2dvdmVybm9yX3Bhc3Np
dmUuYyB8IDcgKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZ292ZXJub3JfcGFz
c2l2ZS5jIGIvZHJpdmVycy9kZXZmcmVxL2dvdmVybm9yX3Bhc3NpdmUuYwo+IGluZGV4IDU4MzA4
OTQ4Yjg2My4uYmU2ZWVhYjljODE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9nb3Zl
cm5vcl9wYXNzaXZlLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZ292ZXJub3JfcGFzc2l2ZS5j
Cj4gQEAgLTE0NywxMSArMTQ3LDEwIEBAIHN0YXRpYyBpbnQgZGV2ZnJlcV9wYXNzaXZlX25vdGlm
aWVyX2NhbGwoc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwKPiAgfQo+ICAKPiAgc3RhdGljIGlu
dCBkZXZmcmVxX3Bhc3NpdmVfZXZlbnRfaGFuZGxlcihzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwK
PiAgCQkJCXVuc2lnbmVkIGludCBldmVudCwgdm9pZCAqZGF0YSkKPiAgewo+IC0Jc3RydWN0IGRl
dmljZSAqZGV2ID0gZGV2ZnJlcS0+ZGV2LnBhcmVudDsKPiAgCXN0cnVjdCBkZXZmcmVxX3Bhc3Np
dmVfZGF0YSAqcF9kYXRhCj4gIAkJCT0gKHN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqKWRl
dmZyZXEtPmRhdGE7Cj4gIAlzdHJ1Y3QgZGV2ZnJlcSAqcGFyZW50ID0gKHN0cnVjdCBkZXZmcmVx
ICopcF9kYXRhLT5wYXJlbnQ7Cj4gIAlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iID0gJnBfZGF0
YS0+bmI7Cj4gIAlpbnQgcmV0ID0gMDsKPiBAQCAtMTYzLDE2ICsxNjIsMTYgQEAgc3RhdGljIGlu
dCBkZXZmcmVxX3Bhc3NpdmVfZXZlbnRfaGFuZGxlcihzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSwK
PiAgCWNhc2UgREVWRlJFUV9HT1ZfU1RBUlQ6Cj4gIAkJaWYgKCFwX2RhdGEtPnRoaXMpCj4gIAkJ
CXBfZGF0YS0+dGhpcyA9IGRldmZyZXE7Cj4gIAo+ICAJCW5iLT5ub3RpZmllcl9jYWxsID0gZGV2
ZnJlcV9wYXNzaXZlX25vdGlmaWVyX2NhbGw7Cj4gLQkJcmV0ID0gZGV2bV9kZXZmcmVxX3JlZ2lz
dGVyX25vdGlmaWVyKGRldiwgcGFyZW50LCBuYiwKPiArCQlyZXQgPSBkZXZmcmVxX3JlZ2lzdGVy
X25vdGlmaWVyKHBhcmVudCwgbmIsCj4gIAkJCQkJREVWRlJFUV9UUkFOU0lUSU9OX05PVElGSUVS
KTsKPiAgCQlicmVhazsKPiAgCWNhc2UgREVWRlJFUV9HT1ZfU1RPUDoKPiAtCQlkZXZtX2RldmZy
ZXFfdW5yZWdpc3Rlcl9ub3RpZmllcihkZXYsIHBhcmVudCwgbmIsCj4gLQkJCQkJREVWRlJFUV9U
UkFOU0lUSU9OX05PVElGSUVSKTsKPiArCQlXQVJOX09OKGRldmZyZXFfdW5yZWdpc3Rlcl9ub3Rp
ZmllcihwYXJlbnQsIG5iLAo+ICsJCQkJCURFVkZSRVFfVFJBTlNJVElPTl9OT1RJRklFUikpOwo+
ICAJCWJyZWFrOwo+ICAJZGVmYXVsdDoKPiAgCQlicmVhazsKPiAgCX0KPiAgCj4gCgoKLS0gCkJl
c3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
