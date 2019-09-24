Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752F1BC06F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVzN5yIdSSV3NzagQ1a8vTB7D+DXcz40sFSQQFHh90w=; b=AAKk1pd4foxR8d
	ysMleYOMvENF/8sdslrFlOltqEHMHaiFBxYMXWCdGx/ippusIZo2jeMGbOIhb+1COezHa4d2WMuto
	bWPVTnBG1DX+YBG+EcYEw0xYcI00jc/nBLJxQKtfWnsPrbetdQD0VgBWKc1/72ffUKSt8dIU/Af7v
	LkTMAXMne7xginTPpIebHRcsD2nykan4I22JWZuu6BwWNpEB/wEJtXGF51HR4uo06AyeZ43j4rxRy
	8KZH2VrtqR4J7cmIw7eiaaa2TNVIGWfEXzULGjfZ1Wza6jCV0hw7BqwslxltOCTUCviEjiAF0zewd
	kafEg7/jWlZHbbp/As0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCawk-00058H-Rj; Tue, 24 Sep 2019 02:52:58 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCawb-00057c-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:52:51 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190924025244epoutp015f8671a66d204402d929b5cadadd032a~HQC7QeXXL2920529205epoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 02:52:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190924025244epoutp015f8671a66d204402d929b5cadadd032a~HQC7QeXXL2920529205epoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569293565;
 bh=/qPMK/OTF5WGtIMOzmKQ8hIwnlEGOc40G2TkGFwzCUk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TOKuO/3gROkRB4JBSfC7Tq2mJBnV1FtlD2/WKYKMibZCSIu/Ilg94VTDghq8Azq5e
 znRjwWRaPJo/+HMWM4V+Q3QM1wuW078NPfPB14/SXsl72hmsm+B/NEwcDQ2hYkKZgm
 qeP3uNOgBiE2CB4fVPte1P0ql5Y5XN/rgXbaYRn4=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190924025244epcas1p2cf220417a72b5c5e53a19ff3b35a218c~HQC6rZjkk1894518945epcas1p2w;
 Tue, 24 Sep 2019 02:52:44 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46cm2L0Bg8zMqYkV; Tue, 24 Sep
 2019 02:52:42 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 CC.C8.04224.9F4898D5; Tue, 24 Sep 2019 11:52:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190924025241epcas1p4f40a8ba5431403351217147b7871b95f~HQC39F9kX2898928989epcas1p4F;
 Tue, 24 Sep 2019 02:52:41 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190924025241epsmtrp272affb67bfeb09cf5002c59eac4f040f~HQC38P54H0339103391epsmtrp2k;
 Tue, 24 Sep 2019 02:52:41 +0000 (GMT)
X-AuditID: b6c32a38-d43ff70000001080-6a-5d8984f91f6e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EE.52.03889.9F4898D5; Tue, 24 Sep 2019 11:52:41 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924025241epsmtip27f6bb01389b914fad2940b5ad25ec4fa~HQC3skGiw2476724767epsmtip28;
 Tue, 24 Sep 2019 02:52:41 +0000 (GMT)
Subject: Re: [PATCH v7 2/6] PM / devfreq: Move more initialization before
 registration
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <bfa991bf-7155-6294-0595-fc37e3393fdd@samsung.com>
Date: Tue, 24 Sep 2019 11:57:05 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bf55208ff3ef868dcee46b52e91f717a6add5606.1569272883.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTZxTO23t7Wzq7XaqMY10E7mYWiQjXtuzlyyyZWW6CP0j2w2FEdm1v
 SkO/1tua4X6sTofAZFnjD7M20ybq0qJuWGErC5XYggYcOB0SRmEzwS1GZ5mWLkOzubZXM/49
 55znnOc874eS0DyktEqL3S247LyVoVTkt4nNFRUrh7tbqi49qMHxK4MKnLk2gfBXN8cQPh6L
 UPj69X4Fnvz4DwWe876CQwsP5TiyOCPHPY/DBE73jiI8E/LJcbp/EeHkwRCFz05dpnBP/B8K
 X8hwbxZyS7OfKLiA9wbJBSMeLtLXTXHzM8MUd/H0R9yFVFTGXU4Ny7jHiSLus4E+xKUjG5te
 2N1e3ybwJsFVKtiNDpPFbm5gGt9pfavVUF3FVrA1+A2m1M7bhAZmx86mirct1qwjpnQ/b/Vk
 U028KDKV2+tdDo9bKG1ziO4GRnCarM4a51aRt4keu3mr0WGrZauqthmyxPfa25ZvHiSdfRs/
 iC0cIrxoCHpQgRJoPSSX54gepFJq6CiCWOYSKQWPEEw86UdS8BeC+75/Fc9bfo/fkEmFGILh
 +QyRK2joJQRD06ocXku/C0eGjudHraPPIjh8Zj4/iqB7SYj+2kXmWBRdDiN3Z6kcfokug1t/
 L6IcVtPbYSIwnc+T9CYYe3oyny/KTn10OyGXOIUw/sWd/JwCei/cD4zm1yPoYpi7c1Im4RI4
 NBggpLV/UcCnk80S3gErwZRMwmvh3tWBZ9a0kE7FKAl/COHxUSq3NNBdCAZGfpRLBR2MnDmW
 bVZmBTbDN99XSukyGHryJZJ0X4RU5qg8RwFaDV2dGonyKvx0e+GZ7Ho4daSb+hwx/lVu/Ksc
 +Fc58P8vFkRkH3pZcIo2syCyTv3q646g/HMvx1E0PLUzjmglYtaondGuFo2c3y922OIIlASz
 Th0p72zRqE18xwHB5Wh1eayCGEeG7GH7CG2R0ZH9PHZ3K2vYptPpsJ6tNrAsU6zmzN4WDW3m
 3UK7IDgF1/M+mbJA60Vfd15MP3XdWgx3+BpMwcbxpG+sJFB8olLfMTuw6e70azqLeV62ZmU5
 fP7elKXZ+3odHCtprrsa1ieSD9L73l+urq35c+9MyH/utw1l7C71d72Zo0Fj7Ybi0JKudvKH
 3Qnn+nOje1QW+rx+8MSeXXWqwp8TB7RE4yl9Wb0xqYpvYUixjWfLCZfI/weUSnC+BAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsWy7bCSvO7Pls5Yg2c7RS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW9xqkLFYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi2oqJrBaf
 NzxmtLjduILNYvW5g2wWXYf+slls/OrhIOjx/kYru8fshossHgs2lXpsWtXJ5nHn2h42j81L
 6j02vtvB5HHw3R4mj1+HRT36tqxi9Pi8SS6AO4rLJiU1J7MstUjfLoEr48ulRpaCVXIVe+82
 Mzcw7pToYuTkkBAwkXh26CJTFyMXh5DAbkaJNa0zWSASkhLTLh5l7mLkALKFJQ4fLoaoecso
 sf//HbAaYYEIifad08FsEYG1jBJzzjuAFDEL9LJINB1cwQ7R8YhR4n/zY0aQKjYBLYn9L26w
 gdj8AooSV39AxHkF7CROzb4CFmcRUJU4+n8+WFwUaMPhHbOgagQlTs58AraNUyBO4vXsI+wg
 NrOAusSfeZeYIWxxiVtP5jNB2PISzVtnM09gFJ6FpH0WkpZZSFpmIWlZwMiyilEytaA4Nz23
 2LDAKC+1XK84Mbe4NC9dLzk/dxMjOM61tHYwnjgRf4hRgINRiYdXYltHrBBrYllxZe4hRgkO
 ZiUR3k1abbFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeeXzj0UKCaQnlqRmp6YWpBbBZJk4OKUa
 GK33LW/4fcE7nb2072eR3vKH36X/TTY9qZN95Fh40k/HgIKl87L+T1rOu0DgnfH3Y0cU19xU
 M3k9qShddPusHZqxXI+jL2eriRkudtnJ9otjkvi9rrJvN584bCo9HFdr6stQLjvBt/j84r/v
 WvwLl3PLbwu2NunRZr3zLMRSgu/hrqm1TyKL5yixFGckGmoxFxUnAgDTjnYu7wIAAA==
X-CMS-MailID: 20190924025241epcas1p4f40a8ba5431403351217147b7871b95f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190923211044epcas1p406c9e3cbfe6dd9a74e502ab63f321e4b
References: <cover.1569272883.git.leonard.crestez@nxp.com>
 <CGME20190923211044epcas1p406c9e3cbfe6dd9a74e502ab63f321e4b@epcas1p4.samsung.com>
 <bf55208ff3ef868dcee46b52e91f717a6add5606.1569272883.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_195249_576823_695CA58A 
X-CRM114-Status: GOOD (  28.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Martin Kepplinger <martink@posteo.de>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpJJ20gbm90IHN1cmUgdGhhdCBpdCBpcyBuZWNlc3NhcnkuIEJlY2F1c2UsIG1haW5saW5l
IGtlcm5lbApwcm92aWRlcyB0aGUgcmVzb3VyY2UtbWFuYWdlZCBmZWF0dXJlIHdpdGggJ2Rldm1f
KicKaW4gb3JkZXIgdG8gcmVkdWNlIHRoZSBtZW1vcnkgbGVhayBieSB1c2VyLgoKSXQncyBsaWtl
IGdvaW5nIGJhY2sgdG8gYSB0aW1lIHdoZW4gJ2Rldm1fKicgZmVhdHVyZSB3YXNuJ3QgdGhlcmUu
CkkgdGhpbmsganVzdCBpdCBkZXBlbmRzIG9uIHRoZSBjb2Rpbmcgc3R5bGUgb2YgYXV0aG9yLgoK
SSBsZWF2ZSB0aGUgZmluYWwgZGVjaXNpb24gb2YgdGhpcyBwYXRjaCB0byBNeXVuZ2pvby4KCk9u
IDE5LiA5LiAyNC4g7Jik7KCEIDY6MTAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBJbiBnZW5l
cmFsIGl0IGlzIGEgYmV0dGVyIHRvIGluaXRpYWxpemUgYW4gb2JqZWN0IGJlZm9yZSBtYWtpbmcg
aXQKPiBhY2Nlc3NpYmxlIGV4dGVybmFsbHkgKHRocm91Z2ggZGV2aWNlX3JlZ2lzdGVyKS4KPiAK
PiBUaGlzIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGF2b2lkIHJlbHlpbmcgb24gbG9ja2luZyBhIHBh
cnRpYWxseQo+IGluaXRpYWxpemVkIG9iamVjdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJk
IENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IFJldmlld2VkLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2Rl
dmZyZXEuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2RldmZyZXEvZGV2
ZnJlcS5jCj4gaW5kZXggZjViZWE3MzUwZjcyLi44YmJjZDRlZmEwOWYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVx
LmMKPiBAQCAtNTg4LDEwICs1ODgsMTIgQEAgc3RhdGljIHZvaWQgZGV2ZnJlcV9kZXZfcmVsZWFz
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIAltdXRleF91bmxvY2soJmRldmZyZXFfbGlzdF9sb2Nr
KTsKPiAgCj4gIAlpZiAoZGV2ZnJlcS0+cHJvZmlsZS0+ZXhpdCkKPiAgCQlkZXZmcmVxLT5wcm9m
aWxlLT5leGl0KGRldmZyZXEtPmRldi5wYXJlbnQpOwo+ICAKPiArCWtmcmVlKGRldmZyZXEtPnRp
bWVfaW5fc3RhdGUpOwo+ICsJa2ZyZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+ICAJbXV0ZXhf
ZGVzdHJveSgmZGV2ZnJlcS0+bG9jayk7Cj4gIAlrZnJlZShkZXZmcmVxKTsKPiAgfQo+ICAKPiAg
LyoqCj4gQEAgLTY3MSw0NCArNjczLDQzIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9k
ZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+ICAJZGV2ZnJlcS0+bWF4X2ZyZXEgPSBkZXZmcmVx
LT5zY2FsaW5nX21heF9mcmVxOwo+ICAKPiAgCWRldmZyZXEtPnN1c3BlbmRfZnJlcSA9IGRldl9w
bV9vcHBfZ2V0X3N1c3BlbmRfb3BwX2ZyZXEoZGV2KTsKPiAgCWF0b21pY19zZXQoJmRldmZyZXEt
PnN1c3BlbmRfY291bnQsIDApOwo+ICAKPiAtCWRldl9zZXRfbmFtZSgmZGV2ZnJlcS0+ZGV2LCAi
ZGV2ZnJlcSVkIiwKPiAtCQkJCWF0b21pY19pbmNfcmV0dXJuKCZkZXZmcmVxX25vKSk7Cj4gLQll
cnIgPSBkZXZpY2VfcmVnaXN0ZXIoJmRldmZyZXEtPmRldik7Cj4gLQlpZiAoZXJyKSB7Cj4gLQkJ
bXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAtCQlwdXRfZGV2aWNlKCZkZXZmcmVxLT5k
ZXYpOwo+IC0JCWdvdG8gZXJyX291dDsKPiAtCX0KPiAtCj4gLQlkZXZmcmVxLT50cmFuc190YWJs
ZSA9IGRldm1fa3phbGxvYygmZGV2ZnJlcS0+ZGV2LAo+ICsJZGV2ZnJlcS0+dHJhbnNfdGFibGUg
PSBremFsbG9jKAo+ICAJCQlhcnJheTNfc2l6ZShzaXplb2YodW5zaWduZWQgaW50KSwKPiAgCQkJ
CSAgICBkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4gIAkJCQkgICAgZGV2ZnJlcS0+cHJv
ZmlsZS0+bWF4X3N0YXRlKSwKPiAgCQkJR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIWRldmZyZXEtPnRy
YW5zX3RhYmxlKSB7Cj4gIAkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAgCQllcnIg
PSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyX2RldmZyZXE7Cj4gKwkJZ290byBlcnJfZGV2Owo+ICAJ
fQo+ICAKPiAtCWRldmZyZXEtPnRpbWVfaW5fc3RhdGUgPSBkZXZtX2tjYWxsb2MoJmRldmZyZXEt
PmRldiwKPiAtCQkJZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlLAo+IC0JCQlzaXplb2YodW5z
aWduZWQgbG9uZyksCj4gLQkJCUdGUF9LRVJORUwpOwo+ICsJZGV2ZnJlcS0+dGltZV9pbl9zdGF0
ZSA9IGtjYWxsb2MoZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRlLAo+ICsJCQkJCSBzaXplb2Yo
dW5zaWduZWQgbG9uZyksCj4gKwkJCQkJIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFkZXZmcmVxLT50
aW1lX2luX3N0YXRlKSB7Cj4gIAkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAgCQll
cnIgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyX2RldmZyZXE7Cj4gKwkJZ290byBlcnJfZGV2Owo+
ICAJfQo+ICAKPiAgCWRldmZyZXEtPmxhc3Rfc3RhdF91cGRhdGVkID0gamlmZmllczsKPiAgCj4g
IAlzcmN1X2luaXRfbm90aWZpZXJfaGVhZCgmZGV2ZnJlcS0+dHJhbnNpdGlvbl9ub3RpZmllcl9s
aXN0KTsKPiAgCj4gKwlkZXZfc2V0X25hbWUoJmRldmZyZXEtPmRldiwgImRldmZyZXElZCIsCj4g
KwkJCQlhdG9taWNfaW5jX3JldHVybigmZGV2ZnJlcV9ubykpOwo+ICsJZXJyID0gZGV2aWNlX3Jl
Z2lzdGVyKCZkZXZmcmVxLT5kZXYpOwo+ICsJaWYgKGVycikgewo+ICsJCW11dGV4X3VubG9jaygm
ZGV2ZnJlcS0+bG9jayk7Cj4gKwkJcHV0X2RldmljZSgmZGV2ZnJlcS0+ZGV2KTsKPiArCQlnb3Rv
IGVycl9vdXQ7Cj4gKwl9Cj4gKwo+ICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPiAg
Cj4gIAltdXRleF9sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4gIAo+ICAJZ292ZXJub3IgPSB0
cnlfdGhlbl9yZXF1ZXN0X2dvdmVybm9yKGRldmZyZXEtPmdvdmVybm9yX25hbWUpOwo+IEBAIC03
MzQsMTQgKzczNSwyMCBAQCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVj
dCBkZXZpY2UgKmRldiwKPiAgCj4gIAlyZXR1cm4gZGV2ZnJlcTsKPiAgCj4gIGVycl9pbml0Ogo+
ICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4gLWVycl9kZXZmcmVxOgo+ICAJ
ZGV2ZnJlcV9yZW1vdmVfZGV2aWNlKGRldmZyZXEpOwo+IC0JZGV2ZnJlcSA9IE5VTEw7Cj4gKwly
ZXR1cm4gRVJSX1BUUihlcnIpOwo+ICsKPiAgZXJyX2RldjoKPiArCS8qCj4gKwkgKiBDbGVhbnVw
IHBhdGggZm9yIGVycm9ycyB0aGF0IGhhcHBlbiBiZWZvcmUgcmVnaXN0cmF0aW9uLgo+ICsJICog
T3RoZXJ3aXNlIHdlIHJlbHkgb24gZGV2ZnJlcV9kZXZfcmVsZWFzZS4KPiArCSAqLwo+ICsJa2Zy
ZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4gKwlrZnJlZShkZXZmcmVxLT50cmFuc190YWJs
ZSk7Cj4gIAlrZnJlZShkZXZmcmVxKTsKPiAgZXJyX291dDoKPiAgCXJldHVybiBFUlJfUFRSKGVy
cik7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTChkZXZmcmVxX2FkZF9kZXZpY2UpOwo+IAoKCi0tIApC
ZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
