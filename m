Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1D31E9FC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw0DCxUskBTJCCyFOjgSvo6+9Qg1xA9imFAnGUwMkog=; b=dOhkfFNeQ1GHlQ
	jmAdXEq0QCcO6Ans/FBOUk4gw2OhxuzCjZ/iqC6qm54KTLbUS2z6ES8PC8N70CzL/VBYlseqpnoV0
	ykEzsbhPuO8mBdjzLjpz9Mzq/Qdgw5GkQBTrSldOXd4JThAV+KvDvExDFY+6QAy/LqqbQOgYYhBjc
	CVb73RJyDxh7L7YtiQL2UducExLK7CXlnmVYaSPej2f1XgMUajZsKzaiOBJbCO4AdL4zhjnCk9CPe
	+9SStOKZ8oRUiQ01hvi2vWECl2W/LduKyUKC8BZprLvGCNutvw9hBvZ6lHvHaJ+fQoZyzO3xa0dyH
	ZNDQylYSQF/tSWS7HWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffR1-0000Iq-D2; Mon, 01 Jun 2020 08:04:39 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffQs-0000Ho-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:04:32 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200601080427epoutp015ef72bfd0db94cdfd28bdbcb7bd19a14~UXNvQ5tI12768327683epoutp015
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 08:04:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200601080427epoutp015ef72bfd0db94cdfd28bdbcb7bd19a14~UXNvQ5tI12768327683epoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590998667;
 bh=P7GA9PWjsoMvj3TvzJB3RdkJx43yLm5nxvQQ1bKDWjE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=RxmLMlDmcA2EMm6XQlXKN/qpztV+NzN5T7Uk6qgy3O2+IOi9LkOTwy+VTMWwq10qW
 KhBwSZhjZ21F0Qw8EMpM2wNoLl5Dlj9gd+Kc22CO6wPihrvos6bys2qM9vNU3Ruzac
 gswXV3Nx3l/tzrjs2/Lc+OTbQuVVpMnymcbosY9c=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601080426epcas1p100e5356dbdcee626c7848626d4624968~UXNucs9HQ2629326293epcas1p1C;
 Mon,  1 Jun 2020 08:04:26 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.156]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49b7484mW3zMqYkY; Mon,  1 Jun
 2020 08:04:24 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E1.5C.19033.886B4DE5; Mon,  1 Jun 2020 17:04:24 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601080423epcas1p16933750793a617b8f2222bce81a76771~UXNr3V2ni2866728667epcas1p15;
 Mon,  1 Jun 2020 08:04:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601080423epsmtrp2cea0b28b39bf7b1c4e09c058285a31ab~UXNr2Du1C2368523685epsmtrp2d;
 Mon,  1 Jun 2020 08:04:23 +0000 (GMT)
X-AuditID: b6c32a36-159ff70000004a59-dd-5ed4b6882017
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.04.08382.786B4DE5; Mon,  1 Jun 2020 17:04:23 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200601080423epsmtip27af1f3a3f1b99375067f4c33829c140f~UXNrjg2Df2903429034epsmtip2O;
 Mon,  1 Jun 2020 08:04:23 +0000 (GMT)
Subject: Re: [PATCH v3] drm/exynos: Remove dev_err() on platform_get_irq()
 failure
To: Tamseel Shams <m.shams@samsung.com>, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, airlied@linux.ie,
 daniel@ffwll.ch
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <9e5608ba-a714-8bde-573d-21bd1a70757e@samsung.com>
Date: Mon, 1 Jun 2020 17:09:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200521142210.17400-1-m.shams@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLJsWRmVeSWpSXmKPExsWy7bCmgW7HtitxBh0zlCx6z51ksngwbxub
 xf9tE5ktrnx9z2bx4t5FFovz5zewW5xtesNusenxNVaLy7vmsFnMOL+PyeJu62J2iyMPd7Nb
 zJj8ks2B12PvtwUsHptWdbJ5bP/2gNXjfvdxJo/NS+o9+rasYvT4vEkugD0q2yYjNTEltUgh
 NS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6FolhbLEnFKgUEBicbGS
 vp1NUX5pSapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGRKVBhQnbGqq3dLAU72Cte
 PzrG1MD4n7WLkZNDQsBE4kvHQXYQW0hgB6PE2q28XYxcQPYnRoljXz4yQTjfGCXu79sB1MEB
 1vG2ywWiYS+jxPuzEhA17xklenpfgE0SFgiReP34KRtIQkRgFqPE4mfNLCAJZoGLjBLdK4JA
 bDYBVYmJK+6zgdi8AnYSa5+fA7NZBFQkWi73gy0TFYiQOP01EaJEUOLkzCdgYzgFLCWmPd8H
 NVJc4taT+UwQtrxE89bZzBCfHeGQ+LOXF8J2kfj0+BUThC0s8er4FnYIW0ri87u9YHdKCDQz
 SkyccZoJwulglLj7+DoLRJWxxP6lk5lADmIW0JRYv0sfIqwosfP3XEaIxXwS7772QAOIV6Kj
 TQiiREni2MUbjBC2hMSFJRPZIGwPiV8fNjJOYFScheS1WUjemYXknVkIixcwsqxiFEstKM5N
 Ty02LDBCjutNjOB0rGW2g3HS2w96hxiZOBgPMUpwMCuJ8E5WvxQnxJuSWFmVWpQfX1Sak1p8
 iNEUGNYTmaVEk/OBGSGvJN7Q1MjY2NjCxNDM1NBQSZxXTeZCnJBAemJJanZqakFqEUwfEwen
 VANTu4d5xEFFz/gVvJd2XXh29mLamX/7awtEOqPUWpe9P/OLbeGyqbqL9X8sj/G/+tD1nvUR
 oaeTjAv5s/vMq6ucj3+Z8sAw5n2AdqjZovV1CbN0bwfcXnhLfZV7xRv90CPzKv6pvH7y6XR4
 jKProZNn3QrP5W32v8Ug7eL42LDJOPvqtwTDA3u4Upc4WlipG/1YF6WZHPaVbduJw++Xl+o7
 mP5ruOl78E3dX8l3Pw3alD4Kl9/r7GJ3mPlFaesp5hMqb74uk09oWSPs/TrSWfHizmjTt6t5
 xGew6Oe6+DUn8Wpf2F2w2lxujpTbCgeHFfG+2xxeZD4IO2BZxjdvZrsdv5zW7n/TTJ84r7ko
 JWGnxFKckWioxVxUnAgA6ht4wFAEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsWy7bCSvG77titxBnOm6Fj0njvJZPFg3jY2
 i//bJjJbXPn6ns3ixb2LLBbnz29gtzjb9IbdYtPja6wWl3fNYbOYcX4fk8Xd1sXsFkce7ma3
 mDH5JZsDr8febwtYPDat6mTz2P7tAavH/e7jTB6bl9R79G1ZxejxeZNcAHsUl01Kak5mWWqR
 vl0CV8aqrd0sBTvYK14/OsbUwPiftYuRg0NCwETibZdLFyMXh5DAbkaJ+Xv+s0HEJSS2bOWA
 MIUlDh8uhih5yyjx7s5coBJODmGBEInXj5+C2SICsxgl2j5Wg9jMAhcZJbbuz4No6GGUuNhw
 kQkkwSagKjFxxX2wBl4BO4m1z8+B2SwCKhItl/tZQWxRgQiJ59tvMELUCEqcnPmEBcTmFLCU
 mPZ8HwvEAnWJP/MuMUPY4hK3nsxngrDlJZq3zmaewCg0C0n7LCQts5C0zELSsoCRZRWjZGpB
 cW56brFhgWFearlecWJucWleul5yfu4mRnAEamnuYNy+6oPeIUYmDsZDjBIczEoivJPVL8UJ
 8aYkVlalFuXHF5XmpBYfYpTmYFES571RuDBOSCA9sSQ1OzW1ILUIJsvEwSnVwFSkt3tjrMay
 9x/YFu3m1cru+KMo77gjU9aAZwazurn5swMte2R0fs+aceLxsWc1vw8tOJxRNfn9+8U/Nh3Q
 e3j+V5iKVCF3Uv2CKP7lEyKv+b/8tLvt6oIz9b4HSu/VR9h9X7Bt21Qehp5f/7UfmS18O+dv
 zSWuWfYfjWrzOy9vVck96eYSPXObrsONOeuv3jFxcr7zvuOu0eTL2ncvnLlmk2yxpn36rbSb
 rg9DLnusUZf0mzrhTJbv/xom1lesCxfYZTl1vohw/akzlfngSld3zoK7lnaHOK1etamuMnir
 N/3srt1G/ueaH2w/d9AlwPSR7qk/byUaPY53Or9l3FbAqXD19rTetr1+2vlKNqmnlViKMxIN
 tZiLihMBE8XPgi8DAAA=
X-CMS-MailID: 20200601080423epcas1p16933750793a617b8f2222bce81a76771
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e
References: <CGME20200521143647epcas5p279d486b29125419c67ff96e0b5b1454e@epcas5p2.samsung.com>
 <20200521142210.17400-1-m.shams@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010431_033459_8DDD60F8 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, shaik.ameer@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, dri-devel@lists.freedesktop.org,
 alim.akhtar@samsung.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgoyMC4gNS4gMjEuIOyYpO2bhCAxMToyMuyXkCBUYW1zZWVsIFNoYW1zIOydtCjqsIApIOyTtCDq
uIA6Cj4gcGxhdGZvcm1fZ2V0X2lycSgpIHdpbGwgY2FsbCBkZXZfZXJyKCkgaXRzZWxmIG9uIGZh
aWx1cmUsCj4gc28gdGhlcmUgaXMgbm8gbmVlZCBmb3IgdGhlIGRyaXZlciB0byBhbHNvIGRvIHRo
aXMuCj4gVGhpcyBpcyBkZXRlY3RlZCBieSBjb2NjaW5lbGxlLgoKUGlja2VkIGl0IHVwLgoKVGhh
bmtzLApJbmtpIERhZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUYW1zZWVsIFNoYW1zIDxtLnNoYW1z
QHNhbXN1bmcuY29tPgo+IC0tLQo+IC0gQ2hhbmdlcyBzaW5jZSB2MjoKPiAqIEFkZHJlc3NlZCBJ
bmtpIERhZSBjb21tZW50cwo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1f
ZzJkLmMgfCAxIC0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIGIvZHJpdmVycy9n
cHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCj4gaW5kZXggZmNlZTMzYTQzYWNhLi4wM2Jl
MzE0MjcxODEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJt
X2cyZC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCj4g
QEAgLTE0OTgsNyArMTQ5OCw2IEBAIHN0YXRpYyBpbnQgZzJkX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJZzJkLT5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYs
IDApOwo+ICAJaWYgKGcyZC0+aXJxIDwgMCkgewo+IC0JCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IGdldCBpcnFcbiIpOwo+ICAJCXJldCA9IGcyZC0+aXJxOwo+ICAJCWdvdG8gZXJyX3B1dF9jbGs7
Cj4gIAl9Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
