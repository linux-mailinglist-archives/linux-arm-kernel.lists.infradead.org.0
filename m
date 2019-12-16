Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA1120292
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlcsQ6Fmi2kvSUqXZpZF9ZpdJ/2SGFIUytjhqOSElOE=; b=tvmsVxonEDuYpG
	/aZfpWngKMD4nb3ZuUcBQQqeHkrqWDOtmDgXXokZQbjMtkTtWAKy2ZqztwqpBp0/V1pJ53cUaOrEl
	A2ixQC/cOyNqJCspWKZjkBu52ZVEmxV7aZ/6tEDYy5RnChl1LNJ+KskQ0/mwIsDXKCckw6TSupUAr
	oxQnLeKGwxiGr3bV7ns+qFVbxMF1UexeXah0bzx8AGy+9eJM9MUWrOP40iaJanYugq3nBvBKnFPFj
	TojvgKV6XIoVxv8K2frZVR2rc2Psp02h8LqBxWtfBhDu65B9gyoD6cVxIMZczneOzWKse0a4i1PYu
	hK0maKpaDZ5Ln1gFbu2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igned-0007yV-V3; Mon, 16 Dec 2019 10:31:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igne2-0007ZP-Aj
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:30:33 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191216103027epoutp01beeaa30b92c95f7607912815401e204a~g01PvXDY72914829148epoutp01t
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:30:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191216103027epoutp01beeaa30b92c95f7607912815401e204a~g01PvXDY72914829148epoutp01t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576492227;
 bh=1X4Yyyd+hec7zltkrP9QoT/WFWYnJTDb2OtOT5G1ke8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=d32fwD22phj6Le1r4EwdDVuYApP5wz7dhafD9jvsQVTtDOYguE8Szl42exDDXOp/K
 Col2XDl7fzLqBjPb0AciMsggmGxdY76Q58oSF4OArcWE0/bFWJREE6ycbSNvzZj7ZL
 pNqToPEnoiJJAqQQEJ/7+T4dYG5MTcMhc8ZQksJk=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191216103026epcas1p167284321344d76e47d3179393772908d~g01PA6oJI1241512415epcas1p18;
 Mon, 16 Dec 2019 10:30:26 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47byG80nWNzMqYlp; Mon, 16 Dec
 2019 10:30:24 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 30.CA.48498.0CC57FD5; Mon, 16 Dec 2019 19:30:24 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191216103023epcas1p42a5584c54fe5f3eb45af8a55a0d23f0e~g01MmGBkc1983919839epcas1p4r;
 Mon, 16 Dec 2019 10:30:23 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191216103023epsmtrp1ce21dd9b732e64193def05e620be1851~g01Mg7qvx2567825678epsmtrp1P;
 Mon, 16 Dec 2019 10:30:23 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-aa-5df75cc04340
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 67.FA.06569.FBC57FD5; Mon, 16 Dec 2019 19:30:23 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191216103023epsmtip15f889e0989f6513eb4d040c151e9f785~g01MRBDM61327513275epsmtip1T;
 Mon, 16 Dec 2019 10:30:23 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: Clean up code
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a249bf89-f628-015c-fde5-b9ecb894695f@samsung.com>
Date: Mon, 16 Dec 2019 19:36:58 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191216101948.526-1-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPJsWRmVeSWpSXmKPExsWy7bCmvu6BmO+xBv1nmC3uz2tltNg4Yz2r
 xaT7E1gs+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xe3GFWwW
 Mya/ZHPg9di0qpPNY/OSeo++LasYPT5vkgtgicq2yUhNTEktUkjNS85PycxLt1XyDo53jjc1
 MzDUNbS0MFdSyEvMTbVVcvEJ0HXLzAE6T0mhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5Ra
 kJJTYFmgV5yYW1yal66XnJ9rZWhgYGQKVJiQndG09jtTwRLNin/tB1kbGKcpdDFyckgImEis
 m/mUvYuRi0NIYAejxLs1D6CcT4wSPxasYIZwvjFKnHy5lg2m5eXyWYwQib2MEi2nJrOCJIQE
 3jNK7G6NBbGFBcwljk77ygpSJCJwgFFiZccxsFHMIM7yHedZQKrYBLQk9r+4ATaWX0BR4uqP
 x4wgNq+AncSLucuZQGwWAVWJSbdB7uDkEBUIkzi5rQWqRlDi5MwnYHM4BSwkDjdtAJvDLCAu
 cevJfCYIW16ieetssMUSApPZJWaca2eH+MFF4u7zlVC2sMSr41ugbCmJl/1tUHa1xMqTR9gg
 mjsYJbbsv8AKkTCW2L90MtAGDqANmhLrd+lDhBUldv6eywixmE/i3dceVpASCQFeiY42IYgS
 ZYnLD+4yQdiSEovbO9kmMCrNQvLOLCQvzELywiyEZQsYWVYxiqUWFOempxYbFhghx/cmRnDi
 1TLbwbjonM8hRgEORiUe3pcZ32KFWBPLiitzDzFKcDArifDuUPgeK8SbklhZlVqUH19UmpNa
 fIjRFBjaE5mlRJPzgVkhryTe0NTI2NjYwsTQzNTQUEmcl+PHxVghgfTEktTs1NSC1CKYPiYO
 TqkGRlMthQ+Ks3fd6LEuZFqcKH7WwqPtgky04eR7CotmBZ1pvT0rufOb7KGk9SxXXKaaSZ0V
 mTtR8PYJtuLbXP2f5tyQv83E4zLbdiPHxb8rQrkiar9MCL3Aub/CdnuWZeWZgvtvtLzuPmSL
 uJIhceHL194Zmnsn8P0Wj/0y/YhR2BuPlVuFGv8/V1BiKc5INNRiLipOBAD8DGPQ0gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsWy7bCSnO7+mO+xBs+fyVjcn9fKaLFxxnpW
 i0n3J7BY9D9+zWxx/vwGdouzTW/YLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i9uNK9gs
 Zkx+yebA67FpVSebx+Yl9R59W1YxenzeJBfAEsVlk5Kak1mWWqRvl8CV0bT2O1PBEs2Kf+0H
 WRsYpyl0MXJySAiYSLxcPouxi5GLQ0hgN6PE4w3fGSESkhLTLh5l7mLkALKFJQ4fLoaoecso
 cWj1HhaQGmEBc4mj076ygiREBA4wSsy59YAdJMEM4qw6HgzR0c0oMX3/LrAEm4CWxP4XN9hA
 bH4BRYmrPx6DbeMVsJN4MXc5E4jNIqAqMen2CmYQW1QgTGLnksdMEDWCEidnPgHbzClgIXG4
 aQMbxDJ1iT/zLjFD2OISt57MZ4Kw5SWat85mnsAoPAtJ+ywkLbOQtMxC0rKAkWUVo2RqQXFu
 em6xYYFRXmq5XnFibnFpXrpecn7uJkZwBGpp7WA8cSL+EKMAB6MSD69D9rdYIdbEsuLK3EOM
 EhzMSiK8OxS+xwrxpiRWVqUW5ccXleakFh9ilOZgURLnlc8/FikkkJ5YkpqdmlqQWgSTZeLg
 lAJGzvMda64tum/5tWNaY/ll5qk18+VmVwf/Pnli8v2JztG3/wRGH9++8IVeAfNXsQkRcTM6
 7vPrzNC4UbH1s3vC104T3q0y7nmae0ReHP/kcCtH9aItl+ynXiYFg7+3P6/RznFmO1PVvMNE
 IVH+16ylC8K3dJ07ohHSpnFBx8lg8ttL2jUT/vsvV2Ipzkg01GIuKk4EAA1Mbcm8AgAA
X-CMS-MailID: 20191216103023epcas1p42a5584c54fe5f3eb45af8a55a0d23f0e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191216102003eucas1p280d2bb32bc439a52353536dca87246f0
References: <CGME20191216102003eucas1p280d2bb32bc439a52353536dca87246f0@eucas1p2.samsung.com>
 <20191216101948.526-1-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_023030_809771_A7A3DCBC 
X-CRM114-Status: GOOD (  28.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpJZiBwb3NzaWJsZSwgeW91IGJldHRlciB0byB3cml0ZSB0aGUgbW9yZSBjb3JyZWN0IHBh
dGNoIHRpdGxlCmJlY2F1c2UgJ0NsZWFuIHVwIGNvZGUnIGlzIHRvbyBjb21wcmVoZW5zaXZlLgoK
QW5kIHBsZWFzZSBhZGQgJ1BNIC8gZGV2ZnJlcTogLi4uJyBwcmVmaXggZm9yIHRoZSBkZXZmcmVx
IHBhdGNoLgpXaGVuIHlvdSBjaGVjayB0aGUgbWVyZ2VkIHBhdGNoZXMgb2YgZHJpdmVyL2RldmZy
ZXEvLAp5b3UgY2FuIGtub3cgdGhlIHRoaXMgcHJlZml4IGZvciBwYXRjaCB0aXRsZSB3YXMgdXNl
ZC4KCk9uIDEyLzE2LzE5IDc6MTkgUE0sIEFydHVyIMWad2lnb8WEIHdyb3RlOgo+IFRoaXMgcGF0
Y2ggaW1wcm92ZXMgY29kZSByZWFkYWJpbGl0eSBieSBjaGFuZ2luZyB0aGUgZm9sbG93aW5nIGNv
bnN0cnVjdDoKPiAKPj4gICAgaWYgKGNvbmQpCj4+ICAgICAgICBnb3RvIHBhc3NpdmU7Cj4+ICAg
IGZvbygpOwo+PiAgICBnb3RvIG91dDsKPj4gcGFzc2l2ZToKPj4gICAgYmFyKCk7Cj4+IG91dDoK
PiAKPiBpbnRvIHRoaXM6Cj4gCj4+ICAgIGlmIChjb25kKQo+PiAgICAgICAgYmFyKCk7Cj4+ICAg
IGVsc2UKPj4gICAgICAgIGZvbygpOwoKV2hlbiB5b3UgYWRkIHRoZSBleGFtcGxlLCBwbGVhc2Ug
cmVtb3ZlICc+JyBjaGFyLgoKPiAKPiBhcyB3ZWxsIGFzIGVsaW1pbmF0aW5nIGEgZmV3IG1vcmUg
Z290byBzdGF0ZW1lbnRzIGFuZCBmaXhpbmcgaGVhZGVyCj4gaW5jbHVkZXMuCgpBbmQgYmV0dGVy
IHRvIHdyaXRlIHdoYXQgdG8gZml4IHRoZSBoZWFkZXIgaW5jbHVkaW5nLgoKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCA1NCArKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDM1IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIv
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IGluZGV4IDE5ZDlmOWY4Y2VkMi4uN2Y1OTE3
ZDU5MDcyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiArKysg
Yi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gQEAgLTE1LDExICsxNSwxMCBAQAo+ICAj
aW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+IC0jaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcG1fb3BwLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3Jl
Z3VsYXRvci9jb25zdW1lci5oPgo+IC0jaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAKPiAgI2Rl
ZmluZSBERUZBVUxUX1NBVFVSQVRJT05fUkFUSU8JNDAKPiAgCj4gQEAgLTMwMSwxMCArMzAwLDkg
QEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAq
YnVzLAo+ICAJcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiAgCj4gIAlvbmRlbWFu
ZF9kYXRhID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tF
Uk5FTCk7Cj4gLQlpZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiAtCQlyZXQgPSAtRU5PTUVNOwo+IC0J
CWdvdG8gZXJyOwo+IC0JfQo+ICsJaWYgKCFvbmRlbWFuZF9kYXRhKQo+ICsJCXJldHVybiAtRU5P
TUVNOwo+ICsKPiAgCW9uZGVtYW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7Cj4gIAlvbmRlbWFu
ZF9kYXRhLT5kb3duZGlmZmVyZW50aWFsID0gNTsKPiAgCj4gQEAgLTMxNCwxNSArMzEyLDE0IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKPiAgCQkJCQkJb25kZW1hbmRfZGF0YSk7Cj4gIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkp
IHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+
IC0JCXJldCA9IFBUUl9FUlIoYnVzLT5kZXZmcmVxKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1
cm4gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+ICAJfQo+ICAKPiAgCS8qIFJlZ2lzdGVyIG9wcF9u
b3RpZmllciB0byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiAgCXJldCA9IGRldm1fZGV2
ZnJlcV9yZWdpc3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+ICAJaWYgKHJl
dCA8IDApIHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZp
ZXJcbiIpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+ICAJLyoK
PiBAQCAtMzMyLDE3ICszMjksMTYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRl
dihidXMpOwo+ICAJaWYgKHJldCA8IDApIHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBl
bmFibGUgZGV2ZnJlcS1ldmVudCBkZXZpY2VzXG4iKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1
cm4gcmV0Owo+ICAJfQo+ICAKPiAgCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4g
IAlpZiAocmV0IDwgMCkgewo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHNldCBldmVudCB0
byBkZXZmcmVxLWV2ZW50IGRldmljZXNcbiIpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCXJldHVybiBy
ZXQ7Cj4gIAl9Cj4gIAo+IC1lcnI6Cj4gLQlyZXR1cm4gcmV0Owo+ICsJcmV0dXJuIDA7Cj4gIH0K
PiAgCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3Qg
ZXh5bm9zX2J1cyAqYnVzLAo+IEBAIC0zNTEsNyArMzQ3LDYgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBidXMtPmRldjsKPiAgCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0
YSAqcGFzc2l2ZV9kYXRhOwo+ICAJc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+IC0J
aW50IHJldCA9IDA7Cj4gIAo+ICAJLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5k
IGdvdmVybm9yIGRhdGEgZm9yIHBhc3NpdmUgZGV2aWNlICovCj4gIAlwcm9maWxlLT50YXJnZXQg
PSBleHlub3NfYnVzX3RhcmdldDsKPiBAQCAtMzU5LDE2ICszNTQsMTMgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4g
IAo+ICAJLyogR2V0IHRoZSBpbnN0YW5jZSBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiAg
CXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7
Cj4gLQlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkgewo+IC0JCXJldCA9IC1FUFJPQkVfREVG
RVI7Cj4gLQkJZ290byBlcnI7Cj4gLQl9Cj4gKwlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkK
PiArCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiAgCj4gIAlwYXNzaXZlX2RhdGEgPSBkZXZtX2t6
YWxsb2MoZGV2LCBzaXplb2YoKnBhc3NpdmVfZGF0YSksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFw
YXNzaXZlX2RhdGEpIHsKPiAtCQlyZXQgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyOwo+IC0JfQo+
ICsJaWYgKCFwYXNzaXZlX2RhdGEpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICAJcGFzc2l2
ZV9kYXRhLT5wYXJlbnQgPSBwYXJlbnRfZGV2ZnJlcTsKPiAgCj4gIAkvKiBBZGQgZGV2ZnJlcSBk
ZXZpY2UgZm9yIGV4eW5vcyBidXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCj4gQEAgLTM3Nywx
MiArMzY5LDEwIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShz
dHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4g
IAkJZGV2X2VycihkZXYsCj4gIAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFz
c2l2ZSBnb3Zlcm5vclxuIik7Cj4gLQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0J
CWdvdG8gZXJyOwo+ICsJCXJldHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gIAl9Cj4gIAo+
IC1lcnI6Cj4gLQlyZXR1cm4gcmV0Owo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBp
bnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IEBAIC00
MjcsMTkgKzQxNywxMyBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCQlnb3RvIGVycl9yZWc7Cj4gIAo+ICAJaWYgKHBhc3NpdmUp
Cj4gLQkJZ290byBwYXNzaXZlOwo+IC0KPiAtCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0
KGJ1cywgcHJvZmlsZSk7Cj4gLQlpZiAocmV0IDwgMCkKPiAtCQlnb3RvIGVycjsKPiArCQlyZXQg
PSBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7Cj4gKwllbHNl
Cj4gKwkJcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKPiAgCj4g
LQlnb3RvIG91dDsKPiAtcGFzc2l2ZToKPiAtCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0
X3Bhc3NpdmUoYnVzLCBwcm9maWxlKTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJyOwo+
ICAKPiAtb3V0Ogo+ICAJbWF4X3N0YXRlID0gYnVzLT5kZXZmcmVxLT5wcm9maWxlLT5tYXhfc3Rh
dGU7Cj4gIAltaW5fZnJlcSA9IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbMF0g
LyAxMDAwKTsKPiAgCW1heF9mcmVxID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJs
ZVttYXhfc3RhdGUgLSAxXSAvIDEwMDApOwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28g
Q2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
