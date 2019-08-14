Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152C48C563
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 03:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VXL4R/UncPJ6ZPRKuFLbtzD3W+K3uNS/tTDxOw2nTE=; b=qh7daXOYxV6aCa
	efbUGdkwOw8k2BO4nrHjjvXyBv6zb/d/pm/AelpHwFujU8ffSsE7SpKhacpS5Q3vsGzcxjAyxyxvW
	8A7snZ+2xCVbgT2tzWs9R/2IaI2CTRQVeqS1nKMLuaqzkN033yqk5hokoX5+3eIUJtNluEjpwwieN
	r4z8A2O2tlaco6Xb4jRthqPCK6lxZMo8iO9fZOBHFs1/WhI3SsiG+AbBpfsUCX7oL9sYS94coSCnV
	3jhjZlAY2X/Xo1nuF9eXMWwyfVdBEUBbIiiWYMFjW4hnakHqZ+LA5c7V+P6GPR58sUuBA8AlmVhQJ
	s9q1zt2a1wLKipJtZRfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhhM-00027C-0W; Wed, 14 Aug 2019 01:03:32 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhh8-00026Q-OD
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 01:03:20 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190814010312epoutp04a43e68204486292bd060760d6895023c~6pGku192M0823208232epoutp04Z
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:03:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190814010312epoutp04a43e68204486292bd060760d6895023c~6pGku192M0823208232epoutp04Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565744592;
 bh=ekUHXfl5xMwX8ETi8uKcxfcJ/yFAKHc+alvQ2aGyq3U=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gIu3c5uYpMP3KOl/gEbr0jiCiCwSGEerO13BtylnWfqJ059Py+cw/Uvo7B8YFN1Ly
 t2awe4YeHY12/OunLiyT+UJbQjdgTCKDbC9+pyA8+hKObotrMv7FmlU8uOHndZ+OOL
 7jCJoGbWmdhX7UrDc+1H5Dr3Br3NWP1eYf5notj8=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190814010311epcas1p45c076f9c617ba50028c4380e302f30e9~6pGj8mgtA2482924829epcas1p4z;
 Wed, 14 Aug 2019 01:03:11 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.154]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 467WXr4BLfzMqYkc; Wed, 14 Aug
 2019 01:03:08 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 FB.6D.04075.CCD535D5; Wed, 14 Aug 2019 10:03:08 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190814010308epcas1p1cc3b7ae78610a659f464d6b04ad2f876~6pGg8ELRZ2495024950epcas1p1p;
 Wed, 14 Aug 2019 01:03:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190814010308epsmtrp292f6605f02c398b63491c1fc964167c1~6pGg7CZ072326323263epsmtrp2N;
 Wed, 14 Aug 2019 01:03:08 +0000 (GMT)
X-AuditID: b6c32a36-b61ff70000000feb-69-5d535dcccfdd
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 92.D0.03706.BCD535D5; Wed, 14 Aug 2019 10:03:07 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190814010307epsmtip2c6b9facb8801270edbd2ef7f943e2510~6pGgsNNG21394113941epsmtip2i;
 Wed, 14 Aug 2019 01:03:07 +0000 (GMT)
Subject: Re: [PATCHv2] PM / devfreq: Add dev_pm_qos support
To: Leonard Crestez <leonard.crestez@nxp.com>, Viresh Kumar
 <viresh.kumar@linaro.org>, Saravana Kannan <saravanak@google.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a9328230-96f3-6bab-826a-bb199de4ad48@samsung.com>
Date: Wed, 14 Aug 2019 10:06:53 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023EB13BB2DE94814B38477EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLJsWRmVeSWpSXmKPExsWy7bCmge6Z2OBYgzMdChaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWtxpkLFbc/chqsenxNVaLz71HGC1uN65gszhz+hKrRdeh
 v2wWG796OPB5vL/Ryu6xYFOpx6ZVnWwed67tYfPYvKTeY+O7HUweB9/tYfLYcrWdxaNvyypG
 j8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU8hJzU22VXHwCdN0y
 c4CuV1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfmFpfmpesl5+daGRoY
 GJkCFSZkZ7xtfs9cME2+ouPoZKYGxkWSXYycHBICJhLzdv5mAbGFBHYwSqy8at3FyAVkf2KU
 WNDwkgXC+cYo8eDpUiaYjhX/NzBBJPYySmy/8pUdwnkP1DJxAiNIlbCAtcSyj7OYQWwRgXqJ
 H5v/MoMUMQusYJGYNHENO0iCTUBLYv+LG2wgNr+AosTVH4/BmnkF7CSOnHkG1swioCrxr+0S
 2IGiAhESnx4cZoWoEZQ4OfMJWJxTIFZi69wVYPXMAuISt57MZ4Kw5SWat84GWywhcIxd4tDk
 TywQP7hI/Pp9nhXCFpZ4dXwLO4QtJfH53V42CLtaYuXJI2wQzR2MElv2X4BqMJbYv3Qy0AYO
 oA2aEut36UOEFSV2/p7LCGHzSjRs/M0OcQSfxLuvPawg5SDxjjYhiBJlicsP7jJNYFSeheSd
 WUhemIXkhVkIyxYwsqxiFEstKM5NTy02LDBCju5NjOCkrWW2g3HROZ9DjAIcjEo8vAFbgmKF
 WBPLiitzDzFKcDArifBOuAgU4k1JrKxKLcqPLyrNSS0+xGgKDO2JzFKiyfnAjJJXEm9oamRs
 bGxhYmhmamioJM678IdFrJBAemJJanZqakFqEUwfEwenVANjzodJV9vW/nsQcXPFJ8vQHqbV
 +gHMjT4PFz85b3k9Ndd4SnxL+u/dRxvbmmsuHuLvZzNkTjeTWvD1Q5Oa4qPcP72TS1WLprLb
 rdwS3iMcX3LWRs1x25bOpRXmbyaqKcXesAm8qj4reP4CoxP6ztrrHorfKVp8m//hzON8Il0T
 lf73CZScUX6ixFKckWioxVxUnAgAjvh9fvADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsWy7bCSvO7p2OBYgx8HrS0OHdvKbvH19ClG
 i5eHNC2m793EZnH+/AZ2i7NNb9gtbjXIWKy4+5HVYtPja6wWn3uPMFrcblzBZnHm9CVWi65D
 f9ksNn71cODzeH+jld1jwaZSj02rOtk87lzbw+axeUm9x8Z3O5g8Dr7bw+Sx5Wo7i0ffllWM
 Hp83yQVwRXHZpKTmZJalFunbJXBlvG1+z1wwTb6i4+hkpgbGRZJdjJwcEgImEiv+b2DqYuTi
 EBLYzShx5PV6NoiEpMS0i0eZuxg5gGxhicOHi0HCQgJvGSWW/Q4AsYUFrCWWfZzFDNIrItDI
 KHH4+Qowh1lgHYtE/6G17BBTdzJJnPvwgRmkhU1AS2L/ixtgG/gFFCWu/njMCGLzCthJHDnz
 DKyGRUBV4l/bJRYQW1QgQuLwjllQNYISJ2c+AYtzCsRKbJ27Auw6ZgF1ifXzhEDCzALiEree
 zGeCsOUlmrfOZp7AKDwLSfcshI5ZSDpmIelYwMiyilEytaA4Nz232LDAMC+1XK84Mbe4NC9d
 Lzk/dxMjOHa1NHcwXl4Sf4hRgINRiYc3YEtQrBBrYllxZe4hRgkOZiUR3gkXgUK8KYmVValF
 +fFFpTmpxYcYpTlYlMR5n+YdixQSSE8sSc1OTS1ILYLJMnFwSjUw6ln1vy5rat5XtXqu2tHn
 M6R99ju9lrl7emtz6YpdEasdjrzf31U294a3cZBaywa/oqZbgWXT257b/5DfdL93q37lLM1p
 Znui5M4ab2ecPo/z/6OFvHKra/+GlmszuCbFlMaIvixO/W6xzSGz1O2uaOKS+4tvrlMLeXPu
 Z++j7KDr0b6cG4SVlFiKMxINtZiLihMBammK79kCAAA=
X-CMS-MailID: 20190814010308epcas1p1cc3b7ae78610a659f464d6b04ad2f876
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160
References: <CGME20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160@epcas4p3.samsung.com>
 <e45c28528ff941abb1f72fdb1eedf65fb3345c5a.1565274802.git.leonard.crestez@nxp.com>
 <b3941b19-f0aa-87a6-d50a-299d07a26532@samsung.com>
 <VI1PR04MB7023EB13BB2DE94814B38477EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_180319_067654_FF2F9AC5 
X-CRM114-Status: GOOD (  28.09  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOC4gMTMuIOyYpO2bhCA4OjI3LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4g
T24gMTMuMDguMjAxOSAwOToxMCwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBJbiBjYXNlIG9mIGNw
dWZyZXEsIGNwdWZyZXEuYyByZXBsYWNlIHRoZSBib2R5IG9mIHN0b3JlX21pbl9mcmVxKCkKPj4g
YW5kIHN0b3JlX21heF9mcmVxKCkgYnkgdXNpbmcgc3RydWN0IGRldl9wbV9xb3NfcmVxdWVzdCBp
bnN0YW5jY2UKPj4gd2l0aCBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCkuCj4+Cj4+IElmIHlv
dSB1c2UgdGhlIG5ldyB3YXkgd2l0aCBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1ZXN0KCkgZm9yCj4+
IG1pbl9mcmVxX3N0b3JlKCkgYW5kIG1heF9mcmVxX3N0b3JlKCksIGl0IGRvZXNuJ3QgbmVlZCB0
bwo+PiBnZXQgdGhlIGZpbmFsIGZyZXF1ZW5jeSBmcm9tIHRocmVlIGNhbmRpZGF0ZSBmcmVxdWVu
Y2llcy4KPiAKPiBZZXMsIEkgc2F3IHRoYXQgYnV0IGRpZG4ndCBpbXBsZW1lbnQgdGhlIGVxdWl2
YWxlbnQgZm9yIGRldmZyZXEgYmVjYXVzZSAKPiBpdCdzIG5vdCBjbGVhciB3aGF0IHRoZXJlIGlz
IHRvIGdhaW4uCgpJIHRoaW5rIHRoYXQgaXQgaXMgY2xlYXIuIEp1c3QgdXNlIHRoZSBkZXZfcG1f
cW9zX3JlcXVlc3QgaW50ZXJmYWNlCmZvciBib3RoIHVzZXIgaW5wdXQgdGhyb3VnaCBzeXNmcyBh
bmQgZGV2aWNlIGlucHV0IHdpdGggcW9zIHJlcXVlc3QuCkFscmVhZHkgUE1fUU9TIGhhcyB0aGUg
ZmVhdHVyZSB0byBnZXQgdGhlIGZpbmFsIGZyZXVlbmN5IGFtb25nCnRoZSBtdWx0aXBsZSByZXF1
ZXN0LiBXaGVuIHVzZSB0aGUgZGV2X3BtX3FvcyByZXF1ZXN0LCB0aGUgZGV2ZnJlcQpkb2Vzbid0
IG5lZWQgdG8gY29tcGFyZSBiZXR3ZWVuIHVzZXIgaW5wdXQgYW5kIGRldmljZSBpbnB1dCB3aXRo
IHFvcy4KSXQgbWFrZSBkZXZmcmVxIGNvcmUgbW9yZSBjbGVhciBhbmQgc2ltcGxlCgo+IAo+IFNp
bmNlIGRldl9wbV9xb3MgaXMgbWVhc3VyZWQgaW4ga2h6IGl0IG1lYW5zIHRoYXQgbWluX2ZyZXEv
bWF4X3JlcSBvbiAKPiBzeXNmcSB3b3VsZCBsb3NlIDMgc2lnbmlmaWNhbnQgZGlnaXRzLCBob3dl
dmVyIHRob3NlIGRpZ2l0cyBhcmUgcHJvYmFibHkgCj4gdXNlbGVzcyBhbnl3YXkuCgpJIHRoaW5r
IHRoYXQgaXQgZG9lc24ndCBtYXR0ZXIuIFRoaXMgcGF0Y2ggYWxyZWFkeSBjb25zaWRlcnMgdGhl
IHRoaXMgaXNzdWUKYnkgdXNpbmcgJyogMTAwMCcuIFdlIGNhbiBnZXQgZWl0aGVyIEtIeiBvciBN
SHogd2l0aCBhZGRpdGlvbmFsIG9wZXJhdGlvbi4KSSB0aGluayB0aGF0IGl0IGlzIG5vdCBwcm9i
bGVtLgoKPiAKPj4gSW4gcmVzdWx0LCBXZSBvbmx5IGNvbnNpZGVyIHRoZSBmb2xsb3dpbmcgdHdv
IGNhbmRpZGF0ZSBmcmVxdWVuY2llcwo+PiBhcyBmb2xsb3dpbmc6Cj4+IDEuICJkZXZmcmVxLT5z
Y2FsaW5nX21pbl9mcmVxIiB3aWxsIGNvbnRhaW4gdGhlIHJlcXVpcmVtZW50Cj4+ICAgICBmcm9t
IGRldmZyZXEgdGhlcm1hbCB0aHJvdHRsaW5nIGJ5IE9QUCBpbnRlcmZhY2UuCj4gCj4gSXQncyBh
IGJpdCBhd2t3YXJkIHRoYXQgdGhlIE9QUHMgZW5hYmxlL2Rpc2FibGUgQVBJIGlzIG5vdCBvYnZp
b3VzbHkgCj4gc3BlY2lmaWMgdG8gInRoZXJtYWwiLgoKZHJpdmVyL3RoZXJtYWwvZGV2ZnJlcV9j
b29saW5nLmMgdXNlcyB0aGUgT1BQIGludGVyZmFjZSB0byBlbmFibGUvZGlzYWJsZQp0aGUgT1BQ
IGVudHJpZXMgYWNjb3JkaW5nIHRvIHRoZSB0aGVybWFsIHRocm90dGxpbmcgcG9saWN5LiAKCj4g
Cj4+IDIuICJkZXZmcmVxLT5taW5fZnJlcSIgd2lsbCBjb250YWluIHRoZSByZXF1aXJlbWVudHMK
Pj4gICAgIGZyb20gYm90aCB1c2VyIGlucHV0IHRocm91Z2ggc3lzZnMgYW5kIHRoZSBkZXZfcG1f
cW9zX3JlcXVlc3QuCj4gQWNjb3JkaW5nIHRvIGEgY29tbWVudCBvbiBhIHByZXZpb3VzIHZlcnNp
b24gaXQgd291bGQgYmUgdXNlZnVsIHRvIGhhdmUgCj4gYSBzZXBhcmF0ZSBmaWxlcyBmb3IgImNv
bnN0cmFpbnQgbWluL21heCBmcmVxIiBhbmQgInVzZXIgbWluL21heCBmcmVxIjoKPiAKPiAgICAg
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEwNzg0NzUvIzIyODA1Mzc5CgpB
Y3R1YWxseSwgSSB0aGluayB0aGF0IEkgd2FudCB0byB1c2UgdGhlIG9ubHkgZGV2X3BtX3Fvc19y
ZXF1ZXN0CmZvciBhbGwgZXh0ZXJuYWwgcmVxdWVzdCBsaWtlIGRldmZyZXEgY29vbGluZyBvZiB0
aGVybWFsLAp1c2VyIGlucHV0IHRocm91Z2ggc3lzZnMgYW5kIGRldmljZSByZXF1ZXN0IHdpdGgg
ZGV2X3BtX3Fvc19yZXF1ZXN0LgoKQWxyZWFkeSwgZGV2X3BtX3Fvc19yZXF1ZXN0IGlzIGRlc2ln
bmVkIHRvIGNvbnNpZGVyIHRoZSBtdWx0aXBsZSByZXF1aXJlbWVudHMuCldlIGRvbid0IG5lZWQg
dG8gdXNlIHRoZSB2YXJpb3VzIG1ldGhvZCAoT1BQIGludGVyZmFjZSwgc3lzZnMgaW5wdXQsIGRl
dl9wbV9xb3MpCmJlY2F1c2UgbWFrZSBpdCBtb3JlIHNpbXBsZSBhbmQgZWFzeS4KCkkgdGhpbmsg
dGhhdCBhZnRlciBmaW5pc2hlZCB0aGUgcmV2aWV3IG9mIHRoaXMgcGF0Y2gsIEkgd2lsbCBkbyBy
ZWZhY3RvciB0aGUgZGV2ZnJlcV9jb29saW5nLmMKYnkgdXNpbmcgdGhlIGRldl9wbV9xb3NfcmVx
dWVzdC4gT3IsIGlmIHRoZXJlIGFyZSBzb21lIHZvbHVudGVlZXIsCgo+IAo+IENvbWJpbmluZyBt
aW4vbWF4IHJlcXVlc3RzIGZyb20gZGV2X3BtX3FvcyBhbmQgc3lzZnMgd291bGQgbWFrZSB0aGlz
IAo+IGhhcmRlciB0byBpbXBsZW1lbnQuIEkgZ3Vlc3MgdXNlcl9taW5fZnJlcSBjb3VsZCBiZSBp
bXBsZW1lbnRlZCBieSAKCkkgdGhpbmsgdGhhdCBpdCBpcyBub3QgZGlmZmljdWx0LiBKdXN0IG1h
a2UgdGhlIGRpZmZlcmVudCBkZXZfcG1fcW9zX3JlcXVlc3QKaW5zdGFuY2VzLiBXaGVuIHFvcyBo
YXMgdGhlIG11bHRpcGxlIHJlcXVlc3QgZnJvbSBvbmUgbW9yZSBkZXZfcG1fcW9zX3JlcXVlc3Qs
Cmp1c3QgZ2V0IHRoZSB2YWx1ZSBieSB1c2luZyBkZXZfcG1fcW9zX3JlYWRfdmFsdWUoKS4KLSBh
IGRldl9wbV9xb3NfcmVxdWVzdCBmb3IgdXNlciBpbnB1dAotIGIgZGV2X3BtX3Fvc19yZXF1ZXN0
IGZvciBkZXZpY2UgcmVxdWVzdCBvbiBvdGhlciBkZXZpY2UgZHJpdmVyCgoKPiByZWFkaW5nIGJh
Y2sgdGhlIGRldl9wbV9xb3MgcmVxdWVzdCBidXQgdGhlcmUgd291bGQgYmUgbm8gd2F5IHRvIAo+
IGltcGxlbWVudCBhIHFvc19taW5fZnJlcSBlbnRyeS4KCkkgZG9uJ3QgdW5kZXJzdGFuZC4gSnVz
dCBkZXZmcmVxIHNob3cgdGhlIG1pbiBmcmVxIGZyb20gZGV2X3BtX3Fvc19yZXF1ZXN0CndoaWNo
IGNvbnRhaW5zIHRoZSBhbGwgcmVxdWlyZW1lbnQgb2YgbWluaW11bSBmcmVxdWVuY3kuCgpJZiB0
aGVyZSBhcmUgbm8gYW55IHJlcXVlc3QgdG8gZGV2X3BtX3Fvc19yZXF1ZXN0LCB3ZSBjYW4ganVz
dApnZXQgdGhlIG1pbmltdW0gZnJlcXVlbmN5IGZyb20gZGV2X3BtX3Fvc19yZXF1ZXN0IGJlY2F1
c2UgCnRoZSBkZXZmcmVxIGRldmljZSB3b3VsZCBjYWxsIHRoZSBkZXZfcG1fcW9zX3VwZGF0ZV9y
ZXF1ZXN0KC4uLiwgbWluX2ZyZXEpCm9uIHRoZSBwcm9iZSB0aW1lLgoKSWYgSSBrbm93IHRoZSB3
cm9uZyBpbmZvcm1hdGlvbiwgcGxlYXNlIGxldCBtZSBrbm93LgoKCj4gCj4+PiArc3RhdGljIGlu
dCBkZXZmcmVxX3Fvc19taW5fbm90aWZpZXJfY2FsbChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5i
LCB1bnNpZ25lZCBsb25nIHZhbCwgdm9pZCAqcHRyKQo+Pgo+PiBQbGVhc2Uga2VlcCB0aGUgdW5k
ZXIgODAgbGluZSBpZiB0aGVyZSBhcmUgbm8gYW55IHNwZWNpYWwgcmVhc29uLgo+IAo+IE9LLCB3
aWxsIGNoZWNrLgo+IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5n
IEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
