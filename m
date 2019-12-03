Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E5E10F666
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 05:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbG5R94+TDFh8GI3GQKCRcxgEMvLW8yUi4R3Tvc8P7s=; b=XlYCH6RtOesQOE
	MenirIco/qtKd/Snblk5ODFxDpeA5br7XOTvDP3Q+OZ4zQJWNQrp6s0p7fBdPKCHgcAUE+Qh2gDWq
	QDJHHDNhZtzqZkYBvKFqv1EeNAXC7Qhjb0/oxB6+EyeD6FDjIJUxszrDAPCk1KLQ0L/PCF+ftOEeQ
	lbKJds8DLBoqjm6xEMifO2bPw+/em52MexboUQU7N4tRSiNtGCIdpplEGlrpHVVlJDkeBXVna+fpq
	W72ZsGtU9NvUfVfCb4ij9lCDSj+/qeGWNGJDfg6QR/CIlyMZbvINx3bacagYkel3DiNVIqjj7rvC9
	7WnREf5dTBUhzrNX6Cgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0BF-0006o1-Q2; Tue, 03 Dec 2019 04:52:57 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0B8-0006nS-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 04:52:52 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191203045245epoutp042916af3c07a9dbbdf8049d5213c98a8f~cw1r5dCmw0975709757epoutp04O
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Dec 2019 04:52:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191203045245epoutp042916af3c07a9dbbdf8049d5213c98a8f~cw1r5dCmw0975709757epoutp04O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575348765;
 bh=xmJU0vFcQ0KvSSiUfaN4Scg6dcjYCAueY7Rz3xbGdes=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Q6Zs69CtY/fHJw61+GF5Ofz7pqDmqTzT+ocfYlijQHfVJlHzkmA7bl21LViA+tfw8
 QEgPNav32VV4TvHZWntg67uqVgfRLGoIIRWr4dzmwaE/dDpLK28g7Gjwf0pOXSuT4L
 7epKc+L6BulVSZdqCt0NKscVP+x5A58llGuXFFhE=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191203045244epcas1p3d26b5c662075923003846892953fc38a~cw1rQSe6-2749727497epcas1p3_;
 Tue,  3 Dec 2019 04:52:44 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.158]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47RqNV2sDLzMqYkk; Tue,  3 Dec
 2019 04:52:42 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 72.36.48019.A1AE5ED5; Tue,  3 Dec 2019 13:52:42 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191203045241epcas1p304f6496a75fe1a323bcdad5b4018f286~cw1od5o912749727497epcas1p3v;
 Tue,  3 Dec 2019 04:52:41 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191203045241epsmtrp2bda2424507eed869ae504ca6fc0852c5~cw1ocz90q3052430524epsmtrp2q;
 Tue,  3 Dec 2019 04:52:41 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-45-5de5ea1aef68
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 18.21.06569.91AE5ED5; Tue,  3 Dec 2019 13:52:41 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191203045241epsmtip229100121f225985f3095f125b11c10e8~cw1oOKq892451924519epsmtip2H;
 Tue,  3 Dec 2019 04:52:41 +0000 (GMT)
Subject: Re: [PATCH 22/30] drm/exynos: mic: Use drm_bridge_init()
To: Mihail Atanassov <Mihail.Atanassov@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <77306b25-e9b2-5b91-9d98-04e6d9e7299b@samsung.com>
Date: Tue, 3 Dec 2019 13:54:59 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126131541.47393-23-mihail.atanassov@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDJsWRmVeSWpSXmKPExsWy7bCmvq7Uq6exBufvClv0njvJZPF/20Rm
 iytf37NZvLh3kcWi//FrZovz5zewW5xtesNusenxNVaLy7vmsFnMOL+PyeLm5WMsFmeW9zBb
 zJj8ks2B12PNvDWMHnu/LWDx2LSqk81j+7cHrB73u48zeWxeUu/Rt2UVo8fnTXIBHFHZNhmp
 iSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAJysplCXmlAKF
 AhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL89L1kvNzrQwNDIxMgQoTsjPmvHnL
 UrCCu2LP3ndMDYyrOLsYOTkkBEwkphxdxtbFyMUhJLCDUWLa9sWsEM4nRokdv46xQzjfGCXu
 bH/JCtPy8MMaqKq9jBJ3l/1kBkkICbxnlDjysxjEFhZwlJjx8w9Yg4hAmcS/s/OZQRqYBf4y
 S7y/uYIRJMEmoCoxccV9NhCbV8BO4uWLU2ANLAIqEpvvLwZq4OAQFYiQOP01EaJEUOLkzCcs
 IGFOAXuJJ5NrQcLMAuISt57MZ4Kw5SWat84GWyUhsIpd4uf0JqijXSQO/2hkgbCFJV4d38IO
 YUtJfH63lw3CLpd49u4Z2HwJgRqJb3MrIExjiYsrUkBMZgFNifW79CGKFSV2/p7LCLGVT+Ld
 1x5WiGpeiY42IYgSJYljF28wQtgSEheWTGSDKPGQmH+ucgKj4iwkX81C8sosJK/MQti7gJFl
 FaNYakFxbnpqsWGBCXJEb2IEp2Qtix2Me875HGIU4GBU4uHN+PUkVog1say4MvcQowQHs5II
 7zaJp7FCvCmJlVWpRfnxRaU5qcWHGE2BYT6RWUo0OR+YL/JK4g1NjYyNjS1MDM1MDQ2VxHk5
 flyMFRJITyxJzU5NLUgtgulj4uCUamBMYTklnGybrM7ec8EzznjXv+IAByM7Be29xhY99Y9W
 V6VvKdxwe1uwttukLfVn0oMWPrHo5+Py3WrFqVCn757YeulTxemPT6Zz31FjP/h45pej/x8L
 LVLfanf8582rN+8/MdBd/Svs/QuT1scLtkpdEjXL0v6r9XdHxlTDC/NyeRTsz1tsX/dciaU4
 I9FQi7moOBEAEbbVoN8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRmVeSWpSXmKPExsWy7bCSvK7kq6exBlvbxSx6z51ksvi/bSKz
 xZWv79ksXty7yGLR//g1s8X58xvYLc42vWG32PT4GqvF5V1z2CxmnN/HZHHz8jEWizPLe5gt
 Zkx+yebA67Fm3hpGj73fFrB4bFrVyeax/dsDVo/73ceZPDYvqffo27KK0ePzJrkAjigum5TU
 nMyy1CJ9uwSujDlv3rIUrOCu2LP3HVMD4yrOLkZODgkBE4mHH9awdjFycQgJ7GaUeL/uD3sX
 IwdQQkJiy1YOCFNY4vDhYoiSt4wSHffns4D0Cgs4Ssz4+YcVxBYRKJPY0XyYGaSIWeA/s8Sx
 2Xuhhh5jlDh1dhIbSBWbgKrExBX3wWxeATuJly9OgXWzCKhIbL6/mBnEFhWIkHi+/QYjRI2g
 xMmZT1hAruAUsJd4MrkWJMwsoC7xZ94lZghbXOLWk/lMELa8RPPW2cwTGIVmIemehaRlFpKW
 WUhaFjCyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L10vOz93ECI5GLa0djCdOxB9iFOBgVOLh
 zfj1JFaINbGsuDL3EKMEB7OSCO82iaexQrwpiZVVqUX58UWlOanFhxilOViUxHnl849FCgmk
 J5akZqemFqQWwWSZODilGhh5BBQVze5s7J+/hnlvg3vi3hiPU9WFSuq8/MoVrnofOK7rKNqe
 6bueN1/56t2iFv8TM9z+bfZh/b1oXibH7HTGGYHKBoZ6fe73er7G/7/14j7TaS8b9zXf6nvb
 bv1dsH/Zwl03XLRXeB5VL54bejEz8FfOzOdHkvUqe42cdsmmb6g/cbzx+Q4lluKMREMt5qLi
 RABpiFDBwgIAAA==
X-CMS-MailID: 20191203045241epcas1p304f6496a75fe1a323bcdad5b4018f286
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191126131754epcas5p250f5357a8a31292a83620680f68444cb
References: <20191126131541.47393-1-mihail.atanassov@arm.com>
 <CGME20191126131754epcas5p250f5357a8a31292a83620680f68444cb@epcas5p2.samsung.com>
 <20191126131541.47393-23-mihail.atanassov@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_205251_257351_446031DC 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CjE5LiAxMS4gMjYuIOyYpO2bhCAxMDoxNuyXkCBNaWhhaWwgQXRhbmFzc292IOydtCjqsIApIOyT
tCDquIA6Cj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2U6IG5vIGxvZ2ljIGRlcGVuZHMgb24gZHJpdmVy
X3ByaXZhdGUgYmVpbmcgTlVMTCwgc28KPiBpdCdzIHNhZmUgdG8gc2V0IGl0IGVhcmxpZXIgaW4g
ZXh5bm9zX21pY19wcm9iZS4KQWNrZWQtYnk6IElua2kgRGFlIDxpbmtpLmRhZUBzYW1zdW5nLmNv
bT4KCkFuZCB0ZXN0ZWQgdGhpcyBwYXRjaCBvbiBUTTIgYW5kIFRNMkUgYm9hcmRzLgpUZXN0ZWQt
Ynk6IElua2kgRGFlIDxpbmtpLmRhZUBzYW1zdW5nLmNvbT4KClRoYW5rcywKSW5raSBEYWUKCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWloYWlsIEF0YW5hc3NvdiA8bWloYWlsLmF0YW5hc3NvdkBhcm0u
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fbWljLmMgfCA4
ICstLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNyBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX21p
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX21pYy5jCj4gaW5kZXggZjQx
ZDc1OTIzNTU3Li5jYWFkMzQ4YTU2NDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4
eW5vcy9leHlub3NfZHJtX21pYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlu
b3NfZHJtX21pYy5jCj4gQEAgLTMwOSwxMCArMzA5LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1fYnJpZGdlX2Z1bmNzIG1pY19icmlkZ2VfZnVuY3MgPSB7Cj4gIHN0YXRpYyBpbnQgZXh5bm9z
X21pY19iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLAo+ICAJ
CQkgICB2b2lkICpkYXRhKQo+ICB7Cj4gLQlzdHJ1Y3QgZXh5bm9zX21pYyAqbWljID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7Cj4gLQo+IC0JbWljLT5icmlkZ2UuZHJpdmVyX3ByaXZhdGUgPSBtaWM7
Cj4gLQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gQEAgLTQyMiw5ICs0MTgsNyBAQCBzdGF0aWMg
aW50IGV4eW5vc19taWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4g
IAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBtaWMpOwo+ICAKPiAtCW1pYy0+YnJpZGdlLmZ1
bmNzID0gJm1pY19icmlkZ2VfZnVuY3M7Cj4gLQltaWMtPmJyaWRnZS5vZl9ub2RlID0gZGV2LT5v
Zl9ub2RlOwo+IC0KPiArCWRybV9icmlkZ2VfaW5pdCgmbWljLT5icmlkZ2UsIGRldiwgJm1pY19i
cmlkZ2VfZnVuY3MsIE5VTEwsIG1pYyk7Cj4gIAlkcm1fYnJpZGdlX2FkZCgmbWljLT5icmlkZ2Up
Owo+ICAKPiAgCXBtX3J1bnRpbWVfZW5hYmxlKGRldik7Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
