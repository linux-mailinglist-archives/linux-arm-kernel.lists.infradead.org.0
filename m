Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AE4EA946
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 03:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9xeTniIrZ4FZX9ghOkeutyAm8XX8nxmhtIB31vHPNA=; b=jvFEolbegsNS3a
	naMhlnI95lFb+Yb/xlxdEE8/EhrWgsn2Pdck4cQDJhAtB6N/W18tq8DAeIYAPrrb2t6LL7p+MbYCi
	XWu1KLDQbOC7viCsUXH5rlqEhgHq8uo4n7JrQaG4C0XvZ5bs4DB2fzgBE5uadDo6VL9HBOgWb1S4r
	pxFQ5E7dhsCrbSRWRXjhwuNNx4SUt7YChEqXboK2RWF3fCIvz54ge5q4bP26Y3XFYEFhzEF+1U8/i
	VzWk2O9oWZGtSBALMpVoHeTqPLt/KqW4UvjetCs6HjgCXqzblM3iGVF5D92hvRP30s3oh6Uf4dYoK
	eUBIMtFjYpv13oetOGKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ0Mj-0008Oa-Ja; Thu, 31 Oct 2019 02:39:13 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ0MX-0008Ns-69
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 02:39:02 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191031023857epoutp037ae9b653049aa921f58751143d2fa7d3~Smucw1vcG3271432714epoutp03P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 02:38:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191031023857epoutp037ae9b653049aa921f58751143d2fa7d3~Smucw1vcG3271432714epoutp03P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572489537;
 bh=ZrjSXqnWX0WknqRM4jVLDmtjrEYlYqAHDbrn5Zg62L0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=bcGhSi+9PieLRNNBN0eCV1Ug0BLHrDCGTOkmVfAL0QzfgvUCKnLWU57KgD9y02I26
 7iP13pwmkF1LTaqYHk+L7S2d9XC3+ZCWpigvzWVNFcwxLPNXgg2umJMljAXf72rHBE
 gf1jQ/8TugqI92w5HOVbQB4Ub3P7XT3937zmY5Aw=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191031023856epcas1p21fcdbe2a33aaddd66a96984ee5fd1522~Smub874dL1604016040epcas1p2a;
 Thu, 31 Oct 2019 02:38:56 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 473TzL1LLZzMqYkd; Thu, 31 Oct
 2019 02:38:54 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 7D.A1.04224.E394ABD5; Thu, 31 Oct 2019 11:38:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191031023853epcas1p33c52d3887cf7295734bdf635aa107faa~SmuZItrkL1184111841epcas1p3a;
 Thu, 31 Oct 2019 02:38:53 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191031023853epsmtrp2be24731b617a689675cc21c6859b83b2~SmuZHuPds0115601156epsmtrp2U;
 Thu, 31 Oct 2019 02:38:53 +0000 (GMT)
X-AuditID: b6c32a38-d43ff70000001080-66-5dba493e08a7
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 94.3C.25663.D394ABD5; Thu, 31 Oct 2019 11:38:53 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191031023853epsmtip253adc914cce4c206565fc3eca3c7b411~SmuY6RSyS1170711707epsmtip2K;
 Thu, 31 Oct 2019 02:38:53 +0000 (GMT)
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
To: Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Viresh Kumar <viresh.kumar@linaro.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <28744ca2-93c4-936c-e8fa-cfc96ddab3ca@samsung.com>
Date: Thu, 31 Oct 2019 11:44:25 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011182907.GN87296@google.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMJsWRmVeSWpSXmKPExsWy7bCmga6d565Yg20TOC0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUdk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koK
 eYm5qbZKLj4Bum6ZOUCPKCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKLAv0ihNz
 i0vz0vWS83OtDA0MjEyBChOyM9bN/sVe8Fy0on3hLJYGxpeCXYycHBICJhJXft1k7mLk4hAS
 2MEosejJJVYI5xOjRNfzrewQzjdGif+929lgWrrO/odK7GWUmL+gB6r/PaPE01MHmEGqhAU8
 JTYv7QCq4uAQEaiWuPdMGiTMLDCFRWJxaz6IzSagJbH/xQ2wofwCihJXfzxmBLF5Bewkdh26
 ygzSyiKgKjHjeDmIKSoQIXH6ayJEhaDEyZlPWEBsTgEDieVrrrFCTBeXuPVkPhOELS/RvHU2
 M8TJp9glHtz2BBkjIeAisfSfLERYWOLV8S3sELaUxOd3e6E+rJZYefIIG8hTEgIdjBJb9l9g
 hUgYS+xfOpkJZA6zgKbE+l36EGFFiZ2/5zJCrOWTePe1hxViFa9ER5sQRImyxOUHd5kgbEmJ
 xe2dbBMYlWYheWYWkgdmIXlgFsKyBYwsqxjFUguKc9NTiw0LTJBjehMjOIFrWexg3HPO5xCj
 AAejEg/vhLKdsUKsiWXFlbmHGCU4mJVEeL/ZAIV4UxIrq1KL8uOLSnNSiw8xmgJDeiKzlGhy
 PjC75JXEG5oaGRsbW5gYmpkaGiqJ8zouXxorJJCeWJKanZpakFoE08fEwSnVwLgzmTE74pXN
 Zf339zOKGrS+cP7VKtF9Jnm3yWl+Z7TQVeWzlQrmoTyL369d+6a7aG74z7SaqfX//2lcT7a4
 5Pxn295SxdCbIp6P2r4++PjxyCzzk+ISvyTYtqzhFF4uz5kqEfZLXD7Cd2l5uMdmHS2/+uab
 Yldk9r97P4/L656iwfqw9ZPYNiqxFGckGmoxFxUnAgA2p4TC9gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIIsWRmVeSWpSXmKPExsWy7bCSvK6t565Yg7k/NS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3
 G1ewWaw+d5DNouvQXzaLjV89HAQ83t9oZfeY3XCRxWPBplKPTas62TzuXNvD5rF5Sb3Hxnc7
 mDwOvtvD5NG3ZRWjx+dNcgFcUVw2Kak5mWWpRfp2CVwZ62b/Yi94LlrRvnAWSwPjS8EuRk4O
 CQETia6z/9m7GLk4hAR2M0ps/vyCFSIhKTHt4lHmLkYOIFtY4vDhYoiat4wSh3bdZAOpERbw
 lNi8tIMdxBYRqJWY27QVrJdZYBqLxOUGVYiGdUwS+1/cBUuwCWgB2TfAmvkFFCWu/njMCGLz
 CthJ7Dp0FWwZi4CqxIzj5SBhUYEIiefbb0CVCEqcnPmEBcTmFDCQWL7mGtQudYk/8y4xQ9ji
 EreezGeCsOUlmrfOZp7AKDwLSfssJC2zkLTMQtKygJFlFaNkakFxbnpusWGBUV5quV5xYm5x
 aV66XnJ+7iZGcERrae1gPHEi/hCjAAejEg/vhLKdsUKsiWXFlbmHGCU4mJVEeL/ZAIV4UxIr
 q1KL8uOLSnNSiw8xSnOwKInzyucfixQSSE8sSc1OTS1ILYLJMnFwSjUwcnw1urlV8vNs5RZb
 1lt8ZsdvL//Dbn3w+c2cotdTpt0M75ukGL9QIyszM/9Z/MIgof4Eu89sc88925D4rmJfvtfu
 j/628wJqi21/SrwWXn3jy1aFFpVVlQa2AdPVub0Oz1svNLtQ+9IT47RTsQFzVBmSGk//C2aP
 F+88sT1AND9EVsy+olhGiaU4I9FQi7moOBEAs8cfU+QCAAA=
X-CMS-MailID: 20191031023853epcas1p33c52d3887cf7295734bdf635aa107faa
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191011182914epcas2p31a3a7d5371b5e2cd17cbb80d909348d7
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
 <20191003181938.GJ87296@google.com>
 <CGME20191011182914epcas2p31a3a7d5371b5e2cd17cbb80d909348d7@epcas2p3.samsung.com>
 <20191011182907.GN87296@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_193901_395445_E96BF099 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDEwLiAxMi4g7Jik7KCEIDM6MjksIE1hdHRoaWFzIEthZWhsY2tlIHdyb3RlOgo+IE9u
IFRodSwgT2N0IDAzLCAyMDE5IGF0IDExOjE5OjM4QU0gLTA3MDAsIE1hdHRoaWFzIEthZWhsY2tl
IHdyb3RlOgo+PiBPbiBXZWQsIE9jdCAwMiwgMjAxOSBhdCAxMDoyNTowOVBNICswMzAwLCBMZW9u
YXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBNb3ZpbmcgaGFuZGxpbmcgb2YgbWluL21heCBmcmVxIHRv
IGEgc2luZ2xlIGZ1bmN0aW9uIGFuZCBjYWxsIGl0IGZyb20KPj4+IHVwZGF0ZV9kZXZmcmVxIGFu
ZCBmb3IgcHJpbnRpbmcgbWluL21heCBmcmVxIHZhbHVlcyBpbiBzeXNmcy4KPj4+Cj4+PiBUaGlz
IGNoYW5nZXMgdGhlIGJlaGF2aW9yIG9mIG91dC1vZi1yYW5nZSBtaW5fZnJlcS9tYXhfZnJlcTog
Y2xhbXBpbmcKPj4+IGlzIG5vdyBkb25lIGF0IGV2YWx1YXRpb24gdGltZS4gVGhpcyBtZWFucyB0
aGF0IGlmIGFuIG91dC1vZi1yYW5nZQo+Pj4gY29uc3RyYWludCBpcyBpbXBvc2VkIGJ5IHN5c2Zz
IGFuZCBpdCBsYXRlciBiZWNvbWVzIHZhbGlkIHRoZW4gaXQgd2lsbAo+Pj4gYmUgZW5mb3JjZWQu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpA
bnhwLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVt
Lm9yZz4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAxMTAgKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgNjIg
aW5zZXJ0aW9ucygrKSwgNDggZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4+PiBpbmRl
eCA4N2VmZjc4OWNlMjQuLjJkNjM2OTI5MDNmZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZGV2
ZnJlcS9kZXZmcmVxLmMKPj4+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+Cj4+
PiAuLi4KPj4+Cj4+PiAgc3RhdGljIHNzaXplX3QgbWluX2ZyZXFfc2hvdyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+Pj4gIAkJCSAgICAgY2hhciAq
YnVmKQo+Pj4gIHsKPj4+ICAJc3RydWN0IGRldmZyZXEgKmRmID0gdG9fZGV2ZnJlcShkZXYpOwo+
Pj4gKwl1bnNpZ25lZCBsb25nIG1pbl9mcmVxLCBtYXhfZnJlcTsKPj4+ICAKPj4+IC0JcmV0dXJu
IHNwcmludGYoYnVmLCAiJWx1XG4iLCBtYXgoZGYtPnNjYWxpbmdfbWluX2ZyZXEsIGRmLT5taW5f
ZnJlcSkpOwo+Pj4gKwltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4+PiArCWdldF9mcmVxX3Jhbmdl
KGRmLCAmbWluX2ZyZXEsICZtYXhfZnJlcSk7Cj4+Cj4+IFdpdGggdGhpcyBtaW4vbWF4X2ZyZXEg
c2hvd24gYXJlbid0IG5lY2Vzc2FyaWx5IHRob3NlIHNldCB0aHJvdWdoIHN5c2ZzLAo+PiBidXQg
dGhlIGFnZ3JlZ2F0ZWQgUE0gUW9TIHZhbHVlcyAocGx1cyBPUFAgY29uc3RyYWludHMpLgo+Pgo+
PiBJIGRpZCBzb21lIHRlc3Rpbmcgd2l0aCBhIFdJUCBwYXRjaCB0aGF0IGNvbnZlcnRzIGRldmZy
ZXFfY29vbGluZy5jIHRvCj4+IFBNIFFvUy4gV2hlbiByZWFkaW5nIHN5c2ZzIG1pbi9tYXggdmFs
dWVzIHRvIGRvdWJsZSBjaGVjayB0aGUgbGltaXRzCj4+IHNldCBlYXJsaWVyIEkgZm91bmQgaXQg
dXR0ZXJseSBjb25mdXNpbmcgdG8gc2VlIHRoZSBzeXNmcyBtaW4vbWF4IHZhbHVlcwo+PiBmbHVj
dHVhdGluZyBkdWUgdG8gdGhlcm1hbCB0aHJvdHRsaW5nLCBhbmQgbm90IGJlaW5nIGFibGUgdG8g
c2VlIHRoZQo+PiBjb25maWd1cmVkIHZhbHVlcy4KPj4KPj4gTG9va3MgbGlrZSBjcHVmcmVxIGRv
ZXMgdGhlIHNhbWUsIGJ1dCBJJ20gbm90IGNvbnZpbmNlZCB0aGlzIGlzIGEgZ29vZAo+PiBpZGVh
LiBJIHRoaW5rIHdlIHdhbnQgdG8gZGlzcGxheSB0aGUgdmFsdWVzIHNldCBieSB1c2Vyc3BhY2Us
IGFzIGRvbmUKPj4gYmVmb3JlIG1hbmFnaW5nIHRoZSBsaW1pdHMgdGhyb3VnaCBQTSBRb1MuIFZp
cmVzaCwgd2FzIHRoaXMgY2hhbmdlIG9mCj4+IHVzZXJzcGFjZSB2aXNpYmxlIGJlaGF2aW9yIGRv
bmUgaW50ZW50aW9uYWxseSBmb3IgY3B1ZnJlcT8KPiAKPiBwaW5nCj4gCj4gVmlyZXNoIC8gZGV2
ZnJlcSBtYWludGFpbmVyczoKPiAKPiBEbyB3ZSByZWFsbHkgd2FudCB0byBleHBvc2UgdGhyb3Vn
aCBzeXNmcyB0aGUgcG90ZW50aWFsbHkgY29uc3RhbnRseQo+IGNoYW5naW5nIGFnZ3JlZ2F0ZSBt
aW4vbWF4IHZhbHVlcywgaW5zdGVhZCBvZiB0aG9zZSBzZXQgYnkgdXNlcnNwYWNlPwoKVW50aWwg
bm93LCB0aGUgZGV2ZnJlcSBjb3JlIHNob3cgdGhlIGF2YWlsYWJsZSBtaW4vbWF4IGZyZXF1ZW5j
eQp0aHJvdWdoIHN5c2ZzIGludGVyZmFjZS4gSSB0aGluayB0aGUgYXZhaWxhYmxlIG1pbi9tYXgg
ZnJlcXVlbmN5IGlzIHByb3Blcgpmb3Igc3lzZnMuCgo+IEF0IGxlYXN0IGZvciBjcHVmcmVxIHRo
YXQncyBhIGRpdmVyZ2VuY2UgZnJvbSBwcmV2aW91cyBiZWhhdmlvciwgYW5kCj4gZnJvbSBhIHVz
ZXJzcGFjZSBwZXJzcGVjdGl2ZSBpdCBzZWVtcyBvZGQgdGhhdCB5b3UgY2FuJ3QgcmVsaWFibHkg
cmVhZAo+IGJhY2sgdGhlIGxpbWl0IHNldCBieSB1c2Vyc3BhY2UuCj4gCj4gCgoKLS0gCkJlc3Qg
UmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
