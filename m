Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F228AFBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9TP8ThK97JHPpz1khLg0glmBjoadW4X/G33pAk5F5U=; b=ECi0T0E92DFodw
	kXA+XriA2yy2myO6TnXXNOKptuC3Qudq3BLNtbbqWBeLbjyal48TjB+JRJuqLTJLinImVZ7EXioob
	ioqzpYo9XaEAcWGqc1Snd6NKGdsLFA3fJ2bDWFy1kE8C2KO+W3+HikvuL4MRTVzMVFqWOz4uz3eZ7
	IfrUjkcivuY8vhNFCYQEWN2buIv5lrLmUeHb8aE+qwiFXod3FrJ9GHotcyRNRFzrr9sMoEi5evBfa
	okVzxnEM+aozAS4UVhrbz9db8qG37+lG+7EmZ3HZKbmjPEYmCSTxLrzgauXjfBwRd08oy+tsmyey8
	bUa3hkCGv0XZvjX2C4Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQ4L-0003OR-2s; Tue, 13 Aug 2019 06:14:05 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQ46-0003Nu-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:13:52 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190813061347epoutp023809ec6d870d4f6a16127c48412cdb10~6Zsd2WWN22534325343epoutp02o
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 06:13:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190813061347epoutp023809ec6d870d4f6a16127c48412cdb10~6Zsd2WWN22534325343epoutp02o
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565676827;
 bh=Xwj0sV5zR7XRN9JsppcP+03CQuzpX+VyXv5U3/Qahdw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=t8tB56C0LVWph7/uYpYyCO2569fT0+RmWVZlLghkU77NNtBBsncvxKQSqJu+wd3iv
 oBqyLylOzH5yLKuJ3gYhlE4nvps16zzRLed/vjwIsvbXSgrpTrygTbQkzbmem29zG8
 1SviHyp6JuNOSz8cirwHB54xPS8wpN6En6BdEFhg=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190813061346epcas1p4dd6a6b6d56622b5d4c0b0cb19d0e8b14~6ZsdTkDF00949109491epcas1p4g;
 Tue, 13 Aug 2019 06:13:46 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 4672Th37xtzMqYkc; Tue, 13 Aug
 2019 06:13:44 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 C8.B7.04085.815525D5; Tue, 13 Aug 2019 15:13:44 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190813061343epcas1p3bb333a7ccbb59c83c9b53d2b3f19ed3a~6ZsarhEst0550605506epcas1p3f;
 Tue, 13 Aug 2019 06:13:43 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190813061343epsmtrp15a3de5ec4bba0edf932904ec3adb5909~6Zsaqtnf82809428094epsmtrp1y;
 Tue, 13 Aug 2019 06:13:43 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-24-5d5255187eb4
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DF.D3.03638.715525D5; Tue, 13 Aug 2019 15:13:43 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190813061343epsmtip10738a981ac385fbd3d6c7a7ff029371c~6ZsaTwK5n2339723397epsmtip1G;
 Tue, 13 Aug 2019 06:13:43 +0000 (GMT)
Subject: Re: [RFC PATCH 00/11] Simple QoS for exynos-bus driver using
 interconnect
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <6be31199-a93d-c440-e0cd-7453e3ac1648@samsung.com>
Date: Tue, 13 Aug 2019 15:17:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDJsWRmVeSWpSXmKPExsWy7bCmga5EaFCsQec7MYtDx7ayW8w/co7V
 4srX92wW0/duYrOYdH8Ci8X58xvYLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i9uNK9gs
 Zkx+yebA67FpVSebx51re9g87ncfZ/LYvKTe4+C7PUwefVtWMXp83iQXwB6VbZORmpiSWqSQ
 mpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6DrlpkDdK2SQlliTilQKCCxuFhJ
 386mKL+0JFUhI7+4xFYptSAlp8CyQK84Mbe4NC9dLzk/18rQwMDIFKgwITtjUsNtxoK7chXz
 p+xla2B8L9HFyMkhIWAise7BIqYuRi4OIYEdjBKzZ/xhB0kICXxilNh8QRwi8Y1RovfmLqAE
 B1hH+yF/iPheRol3T34yQjjvGSVez9rKAtItLBAicXzzV0YQW0SgnUmieaMDSBGzwERGiefH
 /zOBJNgEtCT2v7jBBmLzCyhKXP3xGKyBV8BO4nHPWVYQm0VAVeL4nFtg9aICERKfHhxmhagR
 lDg58wnYMk4BJ4muo+1gc5gFxCVuPZnPBGHLSzRvnc0MslhCYB27xPPJy1ggnnaRuP65jxHC
 FpZ4dXwLO4QtJfGyvw3KrpZYefIIG0RzB6PElv0XWCESxhL7l05mAoUFs4CmxPpd+hBhRYmd
 v+cyQizmk3j3tYcVEly8Eh1tQhAlyhKXH9xlgrAlJRa3d7JNYFSaheSdWUhemIXkhVkIyxYw
 sqxiFEstKM5NTy02LDBFju1NjOCUrGW5g/HYOZ9DjAIcjEo8vBUJgbFCrIllxZW5hxglOJiV
 RHgvmQTFCvGmJFZWpRblxxeV5qQWH2I0BYb2RGYp0eR8YL7IK4k3NDUyNja2MDE0MzU0VBLn
 XfjDIlZIID2xJDU7NbUgtQimj4mDU6qBUcPOy2rX8/XCm7mznU/qen+ysJ11c7LCkds8H170
 Nixcv+oga9aP2V9ufOGe9O9s1veJT9vmmk3JCNvObvvN+W7ik/6IBo76eR2e4dfDYy19Xv9f
 LPImpmKKkc9dl0UhRZE/HnVOOZhUtH7Ov9oGp66iG4GdZ+tPrK//sff016dqnX1vH3Pc8lVi
 Kc5INNRiLipOBAC9LmVj3wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSnK54aFCswcouY4tDx7ayW8w/co7V
 4srX92wW0/duYrOYdH8Ci8X58xvYLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i9uNK9gs
 Zkx+yebA67FpVSebx51re9g87ncfZ/LYvKTe4+C7PUwefVtWMXp83iQXwB7FZZOSmpNZllqk
 b5fAlTGp4TZjwV25ivlT9rI1ML6X6GLk4JAQMJFoP+TfxcjFISSwm1Hi1N+rbF2MnEBxSYlp
 F48yQ9QISxw+XAxR85ZRYlHTNbAaYYEQieObvzKCJEQE2pkkulu3gjnMAhMZJR4fXssM0TKV
 UWL9z9ssIC1sAloS+1/cAGvnF1CUuPrjMSOIzStgJ/G45ywriM0ioCpxfM4tJhBbVCBC4vCO
 WVA1ghInZz4Bm8Mp4CTRdbQdbA6zgLrEn3mXmCFscYlbT+YzQdjyEs1bZzNPYBSehaR9FpKW
 WUhaZiFpWcDIsopRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzg+tbR2MJ44EX+IUYCD
 UYmHtyIhMFaINbGsuDL3EKMEB7OSCO8lk6BYId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzy+cci
 hQTSE0tSs1NTC1KLYLJMHJxSDYwFfMvemAiVGrdavxZylUg4NqOEQyc0OiqjppY/fkLQba4f
 CsKMj640/u9+UOzqpfBC4s2NTW7F1nF3bc++Yev59mPG5HzPa2kWqnuebF3Dfqy0c9r5mMSf
 0qczsqbM/q4dEP3y5a2LF2+fi10hvOvGiztyy/gcp4iu/3FavihMdMf3Dxec799UYinOSDTU
 Yi4qTgQAsaEb6ssCAAA=
X-CMS-MailID: 20190813061343epcas1p3bb333a7ccbb59c83c9b53d2b3f19ed3a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5
References: <CGME20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_231350_768842_EAEDA5FC 
X-CRM114-Status: GOOD (  24.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIuCgpUaGUgcGF0Y2gxLTQgaW4gdGhpcyBzZXJpZXMgZGVwZW5kIG9uIG90aGVyIHBh
dGNoZXNbMV0gb24gbWFpbmxpbmUuCk9uIG5leHQgdjIgdmVyc2lvbiwgcGxlYXNlIG1ha2Ugc29t
ZSBwYXRjaGVzIGJhc2VkIG9uIHBhdGNoZXNbMV0KaW4gb3JkZXIgdG8gcHJldmVudCB0aGUgbWVy
Z2UgY29uZmxpY3QuIAoKWzFdIFtSRVNFTkQgUEFUQ0ggdjUgMC80XSBhZGQgY291cGxlZCByZWd1
bGF0b3JzIGZvciBFeHlub3M1NDIyLzU4MDAKLSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS84
LzgvMjE3CgpBbHNvLCBhcyBJIGNvbW1lbnRlZCwgd2UgYmV0dGVyIHRvIGRpc2N1c3MgaXQgYmVm
b3JlIHNlbmRpbmcgdGhlIHYyLgoKT24gMTkuIDcuIDIzLiDsmKTtm4QgOToyMCwgQXJ0dXIgxZp3
aWdvxYQgd3JvdGU6Cj4gVGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsx
XVsyXSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPiBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVy
LiBFeHRlbmRpbmcgdGhlIGRldmZyZXEgZHJpdmVyIHdpdGggaW50ZXJjb25uZWN0Cj4gY2FwYWJp
bGl0aWVzIHN0YXJ0ZWQgYXMgYSByZXNwb25zZSB0byB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBb
M10uIFRoZQo+IHBhdGNoZXMgY2FuIGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3Jv
dXBzOgo+IAo+IChhKSBSZWZhY3RvcmluZyB0aGUgZXhpc3RpbmcgZGV2ZnJlcSBkcml2ZXIgaW4g
b3JkZXIgdG8gaW1wcm92ZSByZWFkYWJpbGl0eQo+IGFuZCBhY2NvbW1vZGF0ZSBmb3IgYWRkaW5n
IG5ldyBjb2RlIChwYXRjaGVzIDAxLS0wNC8xMSkuCj4gCj4gKGIpIFR3ZWFraW5nIHRoZSBpbnRl
cmNvbm5lY3QgZnJhbWV3b3JrIHRvIHN1cHBvcnQgdGhlIGV4eW5vcy1idXMgdXNlIGNhc2UKPiAo
cGF0Y2hlcyAwNS0tMDcvMTEpLiBFeHBvcnRpbmcgb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkg
YWxsb3dzIHVzIHRvCj4gYXZvaWQgaGFyZGNvZGluZyBldmVyeSBzaW5nbGUgZ3JhcGggZWRnZSBp
biB0aGUgRFQgb3IgZHJpdmVyIHNvdXJjZSwgYW5kCj4gcmVsYXhpbmcgdGhlIHJlcXVpcmVtZW50
IGNvbnRhaW5lZCBpbiB0aGF0IGZ1bmN0aW9uIHJlbW92ZXMgdGhlIG5lZWQgdG8KPiBwcm92aWRl
IGR1bW15IG5vZGUgSURzIGluIHRoZSBEVC4gQWRqdXN0aW5nIHRoZSBsb2dpYyBpbgo+IGFwcGx5
X2NvbnN0cmFpbnRzKCkgKGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYykgYWNjb3VudHMgZm9y
IHRoZSBmYWN0Cj4gdGhhdCBldmVyeSBidXMgaXMgYSBzZXBhcmF0ZSBlbnRpdHkgYW5kIHRoZXJl
Zm9yZSBhIHNlcGFyYXRlIGludGVyY29ubmVjdAo+IHByb3ZpZGVyLCBhbGJlaXQgY29uc3RpdHV0
aW5nIGEgcGFydCBvZiBhIGxhcmdlciBoaWVyYXJjaHkuCj4gCj4gKGMpIEltcGxlbWVudGluZyBp
bnRlcmNvbm5lY3QgcHJvdmlkZXJzIGluIHRoZSBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyCj4g
YW5kIGFkZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQgcGxhdGZv
cm0sIG5hbWVseQo+IEV4eW5vczQ0MTIgKHBhdGNoZXMgMDgtLTA5LzExKS4gRHVlIHRvIHRoZSBm
YWN0IHRoYXQgdGhpcyBhaW1zIHRvIGJlIGEKPiBnZW5lcmljIGRyaXZlciBmb3IgdmFyaW91cyBF
eHlub3MgU29Dcywgbm9kZSBJRHMgYXJlIGdlbmVyYXRlZCBkeW5hbWljYWxseQo+IHJhdGhlciB0
aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBh
cHByb2FjaCwKPiBidXQgZGVwZW5kcyBvbiBjaGFuZ2VzIGRlc2NyaWJlZCBpbiAoYikuCj4gCj4g
KGQpIEltcGxlbWVudGluZyBhIHNhbXBsZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZm9yIGV4eW5v
cy1taXhlciB0YXJnZXRlZAo+IGF0IHRoZSBpc3N1ZSByZWZlcmVuY2VkIGluIFszXSwgYWdhaW4g
d2l0aCBEVCBpbmZvIG9ubHkgZm9yIEV4eW5vczQ0MTIKPiAocGF0Y2hlcyAxMC0tMTEvMTEpLgo+
IAo+IEludGVncmF0aW9uIG9mIGRldmZyZXEgYW5kIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXRp
ZXMgY29tZXMgZG93biB0byBvbmUKPiBleHRyYSBsaW5lIGluIHRoZSBkZXZmcmVxIHRhcmdldCgp
IGNhbGxiYWNrLCB3aGljaCBzZWxlY3RzIGVpdGhlciB0aGUKPiBmcmVxdWVuY3kgY2FsY3VsYXRl
ZCBieSB0aGUgZGV2ZnJlcSBnb3Zlcm5vciwgb3IgdGhlIG9uZSByZXF1ZXN0ZWQgd2l0aCB0aGUK
PiBpbnRlcmNvbm5lY3QgQVBJLCB3aGljaGV2ZXIgaXMgaGlnaGVyLiBBbGwgbmV3IGNvZGUgd29y
a3MgZXF1YWxseSB3ZWxsIHdoZW4KPiBDT05GSUdfSU5URVJDT05ORUNUIGlzICduJyAoYXMgaW4g
ZXh5bm9zX2RlZmNvbmZpZykgaW4gd2hpY2ggY2FzZSBhbGwKPiBpbnRlcmNvbm5lY3QgQVBJIGZ1
bmN0aW9ucyBhcmUgbm8tb3BzLgo+IAo+IC0tLQo+IEFydHVyIMWad2lnb8WECj4gU2Ftc3VuZyBS
JkQgSW5zdGl0dXRlIFBvbGFuZAo+IFNhbXN1bmcgRWxlY3Ryb25pY3MKPiAKPiAtLS0KPiBSZWZl
cmVuY2VzOgo+IFsxXSBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QucnN0
Cj4gWzJdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcmNvbm5lY3QvaW50
ZXJjb25uZWN0LnR4dAo+IFszXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEw
ODYxNzU3Cj4gCj4gQXJ0dXIgxZp3aWdvxYQgKDEwKToKPiAgIGRldmZyZXE6IGV4eW5vcy1idXM6
IEV4dHJhY3QgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoKQo+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1
czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkKPiAgIGRldmZyZXE6
IGV4eW5vcy1idXM6IENoYW5nZSBnb3RvLWJhc2VkIGxvZ2ljIHRvIGlmLWVsc2UgbG9naWMKPiAg
IGRldmZyZXE6IGV4eW5vcy1idXM6IENsZWFuIHVwIGNvZGUKPiAgIGljYzogRXhwb3J0IG9mX2lj
Y19nZXRfZnJvbV9wcm92aWRlcigpCj4gICBpY2M6IFJlbGF4IHJlcXVpcmVtZW50IGluIG9mX2lj
Y19nZXRfZnJvbV9wcm92aWRlcigpCj4gICBpY2M6IFJlbGF4IGNvbmRpdGlvbiBpbiBhcHBseV9j
b25zdHJhaW50cygpCj4gICBhcm06IGR0czogZXh5bm9zOiBBZGQgcGFyZW50cyBhbmQgI2ludGVy
Y29ubmVjdC1jZWxscyB0byBFeHlub3M0NDEyCj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBBZGQg
aW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgdG8gZXh5bm9zLWJ1cwo+ICAgYXJtOiBkdHM6IGV4
eW5vczogQWRkIGludGVyY29ubmVjdHMgdG8gRXh5bm9zNDQxMiBtaXhlcgo+IAo+IE1hcmVrIFN6
eXByb3dza2kgKDEpOgo+ICAgZHJtOiBleHlub3M6IG1peGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1
cHBvcnQKPiAKPiAgLi4uL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpICAg
IHwgICAxICsKPiAgYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpICAgICAgICAgICAg
IHwgIDEwICsKPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyAgICAgICAgICAgICAgICAg
IHwgMjk2ICsrKysrKysrKysrKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19taXhlci5jICAgICAgICAgfCAgNjggKysrLQo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9jb3Jl
LmMgICAgICAgICAgICAgICAgICAgfCAgMTIgKy0KPiAgaW5jbHVkZS9saW51eC9pbnRlcmNvbm5l
Y3QtcHJvdmlkZXIuaCAgICAgICAgIHwgICA2ICsKPiAgNiBmaWxlcyBjaGFuZ2VkLCAzMTQgaW5z
ZXJ0aW9ucygrKSwgNzkgZGVsZXRpb25zKC0pCj4gCgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndv
byBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
