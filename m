Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38C1D0471
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 03:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+PT7T6U8hwRSA9apvo9uxpZ+32KeB0RjfSfpAqSIe4=; b=QWJA2PhMJkSnWZ
	nMmU9UV+FI+aHCpoa87NesEgsTXMlXV7jTnX4KE9+zKNMcq0kk5HOq4EGSpQi58mo5A4xcpxm8tt/
	Of6tf3BRqP5yNCC9Z9AybmKtioxdyjOmLfOUHE3XfBb5D4z828UcIpF38A6ucS3XvLrs06hKJ3iQr
	MdHtV2XMfjnidDx3Dn1UE5QbvVRtMwpLteM3Hf5/gLBU8Pb+Cp6d+C9nUTDdpvsHQSsKipTJTi6Di
	vTT7G7NYXOuF567NeZhu/NgEfTO1tKg6yp9PAJoeYzD1vIEnGwCB0E1rxcBVk527eXBY9v6Fp9a5P
	lAiDwTQNuCnBm25z+tlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYgOH-0001wU-K0; Wed, 13 May 2020 01:40:57 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYgO7-0001vB-7P
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 01:40:51 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200513014029epoutp04c5f94d5fe13ab00654d2ea67e41bd239~OcuD0mV9T0714707147epoutp04a
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 01:40:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200513014029epoutp04c5f94d5fe13ab00654d2ea67e41bd239~OcuD0mV9T0714707147epoutp04a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589334029;
 bh=khld6DxiKDVHnWg0T4dvVfR+FPu+GqRwwXzMI65JZ4g=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=dLZDjCh1jMLHkmBv8KOPCy9T2uPIJjMRsu35bjavHRGvzfk+NTguIHe1PM2rqoufv
 z5KvtAMVhKcTDYeaDFSUQry1CGI7TRwxMGbxMW8wCYxb8+tqyKq/oNbmQfVWHL0zrq
 SbIGQRQXHgoy/tdjW/qS0J7qLcLWtjPCrNAy4idY=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513014027epcas1p16f2c0a059340e4b8128992f517414e9a~OcuB-e5Jj2277822778epcas1p1V;
 Wed, 13 May 2020 01:40:27 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49MHRq31PnzMqYl1; Wed, 13 May
 2020 01:40:23 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 0E.89.04658.2005BBE5; Wed, 13 May 2020 10:40:18 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513014017epcas1p15eb1a5dafc3d09e8d7c87dce1e66ec68~Oct5D3g3K0201102011epcas1p1J;
 Wed, 13 May 2020 01:40:17 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200513014017epsmtrp250b64ffbd7b8331e069bc0509db8fd57~Oct5CgUdx1543715437epsmtrp2X;
 Wed, 13 May 2020 01:40:17 +0000 (GMT)
X-AuditID: b6c32a39-a99ff70000001232-b1-5ebb50028228
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D8.9C.18461.1005BBE5; Wed, 13 May 2020 10:40:17 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513014017epsmtip1dd56dc0bc6f2f812fc78772d8157bc08~Oct4xc0wA2184121841epsmtip1k;
 Wed, 13 May 2020 01:40:17 +0000 (GMT)
Subject: Re: [PATCH] drm/exynos: dsi: Remove bridge node reference in error
 handling path in probe function
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 jy0922.shim@samsung.com, sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 airlied@linux.ie, daniel@ffwll.ch, kgene@kernel.org, krzk@kernel.org
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <2fd735eb-842f-07ba-6635-a9a86f5a9704@samsung.com>
Date: Wed, 13 May 2020 10:45:34 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200510154833.238320-1-christophe.jaillet@wanadoo.fr>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TfUwTZxzOe3e9Hsya85T5CzqFS0iUpcIBhUPFmNmY8yNZEzBTY6gXegFC
 v9YrKGaJoGwDFLUaYkHJMKnZJI5qAYU6XMaITlCwGwECClswzK9AWAPqFt16HGb89zy/PM/7
 Ps/7QeFMiIylCu1uyWUXrSwZTdz4eX2SHjPdyk0+dnYtX9N3D+PbfmrQ8P/e8OD8wOw0yT8d
 CxF828gq/vTEC5zv77+m5R8ce6nlAxODGv634EWS9/bfxnjvuWfkVp3QOddICIGmKlK4Ofe7
 Rhg/cRcTWnxHhVOtTUgIB9YI4cd+jYnaX7S5QBItkitOsuc5LIX2/Cx2V7Z5m9mQnszpuUw+
 g42zizYpizXuNum3F1ojidm4EtFaHBmZRFlmk7ZsdjmK3VJcgUN2Z7GS02J1Zjo3yKJNLrbn
 b8hz2DZyyckphojwYFHBH++akdO75nBNzwxRhr6GahRFAZ0GL8ev49UommLodgSTvreESv5C
 0HbzPK6oGHoOQXl36XvH6OTogqgTwdCFPzUqmUbw6FsvWY0oajltg9YGSpmvoO8j8PueIoXg
 tB/BiV9ezS9L0gng+W6cVLCO3gLTf4cxBROReZkvoFUWiqH3Qu+sqEqWwb26J4SCo2gjfFnX
 jRSM0yth5Mk3mIrXwvG2C/N9gH5IQU1wEKmxjVB3NUyoeDk8v9uqVXEshKc6SdVwHIHH24up
 pBLB44mhBUcq/Hj5HKYkwun14A8mqeN46PinYSHFUpiaPalRJEDroPIrRpWwcCc0vJAB4KHP
 Q6pYgCvDY8QZFF+/qFv9oj71i/rU/79xIyKa0IeSU7blSzLnNCy+7gCaf86Jme3oTt/uLkRT
 iF2i23s0mMtoxBK51NaFgMLZFbqKwo5cRmcRS49ILofZVWyV5C5kiJy8B4+NyXNEPofdbeYM
 KampqXwal27gOHalrnbImsvQ+aJbKpIkp+R678OoqNgytFX3caPltLCar0iJf8Dd/0TYuSyk
 H6sa6Pks/XBIG/N5F/d6JLifKTd+n5Fn/mCTrC9pas6ZuXQq+MWvOaNHpARmILq53JSxp+OH
 T2sPTJahhOzK9lt9mrSpixU9vd3GHVXw1njosi2UxOC2pfv8jeseZQVrKlZf+mimtsU59yaa
 JeQCkUvEXbL4H/VOilfkAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsWy7bCSnC5jwO44g5MPhS16z51ksth6cC6r
 xf9tE5ktrnx9z2bx4t5FFoutt6Qt+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvFjPP7mCxm
 TH7J5sDrsffbAhaPTas62Ty2f3vA6nG/+ziTx+Yl9R59W1YxenzeJOfx+e561gCOKC6blNSc
 zLLUIn27BK6Mh//WMRbMkKvoPfWRpYGxXaKLkZNDQsBE4vaz2yxdjFwcQgK7GSU+n29m62Lk
 AEpISGzZygFhCkscPlwMUfKWUeLpslVMIHFhgVyJLXM5QMaICJxhlJi6MROkhllgPaPErqdP
 2SEapjNKnL3WzwJSxSagKjFxxX02EJtXwE7i/a/PTCA2C1C8YckmdhBbVCBC4vn2G4wQNYIS
 J2c+AevlFHCRaJ15BCzOLKAu8WfeJWYIW1zi1pP5TBC2vETz1tnMExiFZiFpn4WkZRaSlllI
 WhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dLzs/dxAiORS3NHYzbV33QO8TIxMF4iFGC
 g1lJhLclc2ecEG9KYmVValF+fFFpTmrxIUZpDhYlcd4bhQvjhATSE0tSs1NTC1KLYLJMHJxS
 DUw7bm3xddy1KuoIh5/Y7t5/FrqHUoK8q2VYL9vJCstqXFy80PvHz2MLInjKHC8IMh+4t/Nj
 dcTuTbumBZ83nzPLvmD76YmOS1//kp9UfmGxxIcV78wam26uV91zTzD+79Z3YXdmxzz91rHj
 3bFXMrO7avZ/vmE9Z2OJZtOadLk1HTM7VokERi4R1KnxFJJ+93R1gl6vr9ibOhNfr1VSl+/s
 Sr4TMMfCKWUL/4OGXn3+aQJC3k2TpitNitvBsaXtDcfr/Xo62rVrSlJN5S8z/NQ6Olv3g5nz
 yug7a2QXHzZu/r+jROH9dbsNLgIHq17vuVCi1H5gt7DzbENGZ8/NG/8cPz+nyar7+rq4M5fW
 zC+qU2Ipzkg01GIuKk4EAA4Kjj40AwAA
X-CMS-MailID: 20200513014017epcas1p15eb1a5dafc3d09e8d7c87dce1e66ec68
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200510154858epcas1p42c2585167b74f13b712676b7dfc09481
References: <CGME20200510154858epcas1p42c2585167b74f13b712676b7dfc09481@epcas1p4.samsung.com>
 <20200510154833.238320-1-christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_184047_622804_90B371BC 
X-CRM114-Status: GOOD (  27.55  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoyMC4gNS4gMTEuIOyYpOyghCAxMjo0OOyXkCBDaHJpc3RvcGhlIEpBSUxMRVQg7J20KOqw
gCkg7JO0IOq4gDoKPiAnZXh5bm9zX2RzaV9wYXJzZV9kdCgpJyB0YWtlcyBhIHJlZmVyZW5jZSB0
byAnZHNpLT5pbl9icmlkZ2Vfbm9kZScuCj4gVGhpcyBtdXN0IGJlIHJlbGVhc2VkIGluIHRoZSBl
cnJvciBoYW5kbGluZyBwYXRoLgo+IAo+IFRoaXMgcGF0Y2ggaXMgc2ltaWxhciB0byBjb21taXQg
NzA1MDVjMmVmOTRiICgiZHJtL2V4eW5vczogZHNpOiBSZW1vdmUgYnJpZGdlIG5vZGUgcmVmZXJl
bmNlIGluIHJlbW92YWwiKQo+IHdoaWNoIGZpeGVkIHRoZSBpc3N1ZSBpbiB0aGUgcmVtb3ZlIGZ1
bmN0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3Bo
ZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4gLS0tCj4gQSBGaXhlcyB0YWcgY291bGQgYmUgcmVxdWly
ZWQsIGJ1dCBJJ3ZlIG5vdCBiZWVuIGFibGUgdG8gZmlndXJlIG91dCB3aGljaAo+IG9uZSB0byB1
c2UuCj4gCj4gSSB0aGluayB0aGF0IG1vdmluZyAnZXh5bm9zX2RzaV9wYXJzZV9kdCgpJyBpbiB0
aGUgcHJvYmUgY291bGQgc2ltcGxpZnkKPiB0aGUgZXJyb3IgaGFuZGxpbmcgaW4gdGhlIHByb2Jl
IGZ1bmN0aW9uLiBIb3dldmVyLCBJIGRvbid0IGtub3cgdGhpcyBjb2RlCj4gd2VsbCBlbm91Z2gg
dG8gcGxheSB0aGlzIGdhbWUuIFNvIGJldHRlciBzYWZlIHRoYW4gc29ycnkuCj4gU28gSSd2ZSBr
ZXB0IHRoZSBsb2dpYyBpbiBwbGFjZSBhbmQgYWRkZWQgZ290byBldmVyeXdoZXJlLiA6KAoKWW91
IGNvdWxkIG1vdmUgZXh5bm9zX2RzaV9wYXJzZV9kdCgpIGNhbGwgdG8gdGhlIGVuZCBvZiB0aGUg
cHJvYmUgZnVuY3Rpb24gdG8gaGFuZGxlIHRoZSBlcnJvciBzaW1wbHkuCmRzaS0+aW5fYnJpZGdl
X25vZGUgaXMgYWNjZXNzZWQgaW4gYmluZCBmdW5jdGlvbiBhbmQgdGhlIHByb2JlIGZ1bmN0aW9u
IGlzIGNhbGxlZCBiZWZvcmUgdGhlIGJpbmQgY2FsbC4KCkNvdWxkIHlvdSByZXdvcmsgYW5kIHBv
c3QgaXQgYWdhaW4/CgpUaGFua3MsCklua2kgRGFlCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
ZXh5bm9zL2V4eW5vc19kcm1fZHNpLmMgfCAyOCArKysrKysrKysrKysrKysrKystLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNpLmMKPiBpbmRleCA5MDI5MzhkMjU2OGYu
LjJhYTc0YzNkYzczMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZHNp
LmMKPiBAQCAtMTc3MCwxNCArMTc3MCwxNyBAQCBzdGF0aWMgaW50IGV4eW5vc19kc2lfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChyZXQpIHsKPiAgCQlpZiAocmV0
ICE9IC1FUFJPQkVfREVGRVIpCj4gIAkJCWRldl9pbmZvKGRldiwgImZhaWxlZCB0byBnZXQgcmVn
dWxhdG9yczogJWRcbiIsIHJldCk7Cj4gLQkJcmV0dXJuIHJldDsKPiArCQlnb3RvIGVycl9wdXRf
aW5fYnJpZGdlX25vZGU7Cj4gIAl9Cj4gIAo+ICAJZHNpLT5jbGtzID0gZGV2bV9rY2FsbG9jKGRl
diwKPiAgCQkJZHNpLT5kcml2ZXJfZGF0YS0+bnVtX2Nsa3MsIHNpemVvZigqZHNpLT5jbGtzKSwK
PiAgCQkJR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIWRzaS0+Y2xrcykKPiAtCQlyZXR1cm4gLUVOT01F
TTsKPiArCWlmICghZHNpLT5jbGtzKSB7Cj4gKwkJcmV0ID0gLUVOT01FTTsKPiArCQlnb3RvIGVy
cl9wdXRfaW5fYnJpZGdlX25vZGU7Cj4gKwl9Cj4gKwo+ICAKPiAgCWZvciAoaSA9IDA7IGkgPCBk
c2ktPmRyaXZlcl9kYXRhLT5udW1fY2xrczsgaSsrKSB7Cj4gIAkJZHNpLT5jbGtzW2ldID0gZGV2
bV9jbGtfZ2V0KGRldiwgY2xrX25hbWVzW2ldKTsKPiBAQCAtMTc5MSw3ICsxNzk0LDggQEAgc3Rh
dGljIGludCBleHlub3NfZHNpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
IAo+ICAJCQlkZXZfaW5mbyhkZXYsICJmYWlsZWQgdG8gZ2V0IHRoZSBjbG9jazogJXNcbiIsCj4g
IAkJCQkJY2xrX25hbWVzW2ldKTsKPiAtCQkJcmV0dXJuIFBUUl9FUlIoZHNpLT5jbGtzW2ldKTsK
PiArCQkJcmV0ID0gUFRSX0VSUihkc2ktPmNsa3NbaV0pOwo+ICsJCQlnb3RvIGVycl9wdXRfaW5f
YnJpZGdlX25vZGU7Cj4gIAkJfQo+ICAJfQo+ICAKPiBAQCAtMTc5OSwxOSArMTgwMywyMiBAQCBz
dGF0aWMgaW50IGV4eW5vc19kc2lfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCWRzaS0+cmVnX2Jhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2LCByZXMpOwo+ICAJ
aWYgKElTX0VSUihkc2ktPnJlZ19iYXNlKSkgewo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IHJlbWFwIGlvIHJlZ2lvblxuIik7Cj4gLQkJcmV0dXJuIFBUUl9FUlIoZHNpLT5yZWdfYmFzZSk7
Cj4gKwkJcmV0ID0gUFRSX0VSUihkc2ktPnJlZ19iYXNlKTsKPiArCQlnb3RvIGVycl9wdXRfaW5f
YnJpZGdlX25vZGU7Cj4gIAl9Cj4gIAo+ICAJZHNpLT5waHkgPSBkZXZtX3BoeV9nZXQoZGV2LCAi
ZHNpbSIpOwo+ICAJaWYgKElTX0VSUihkc2ktPnBoeSkpIHsKPiAgCQlkZXZfaW5mbyhkZXYsICJm
YWlsZWQgdG8gZ2V0IGRzaW0gcGh5XG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VSUihkc2ktPnBoeSk7
Cj4gKwkJcmV0ID0gUFRSX0VSUihkc2ktPnBoeSk7Cj4gKwkJZ290byBlcnJfcHV0X2luX2JyaWRn
ZV9ub2RlOwo+ICAJfQo+ICAKPiAgCWRzaS0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAw
KTsKPiAgCWlmIChkc2ktPmlycSA8IDApIHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBy
ZXF1ZXN0IGRzaSBpcnEgcmVzb3VyY2VcbiIpOwo+IC0JCXJldHVybiBkc2ktPmlycTsKPiArCQly
ZXQgPSBkc2ktPmlycTsKPiArCQlnb3RvIGVycl9wdXRfaW5fYnJpZGdlX25vZGU7Cj4gIAl9Cj4g
IAo+ICAJaXJxX3NldF9zdGF0dXNfZmxhZ3MoZHNpLT5pcnEsIElSUV9OT0FVVE9FTik7Cj4gQEAg
LTE4MjAsNyArMTgyNyw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2RzaV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCQkJCWRldl9uYW1lKGRldiksIGRzaSk7Cj4gIAlpZiAo
cmV0KSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVxdWVzdCBkc2kgaXJxXG4iKTsK
PiAtCQlyZXR1cm4gcmV0Owo+ICsJCWdvdG8gZXJyX3B1dF9pbl9icmlkZ2Vfbm9kZTsKPiAgCX0K
PiAgCj4gIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCAmZHNpLT5lbmNvZGVyKTsKPiBAQCAt
MTgyOCw2ICsxODM1LDExIEBAIHN0YXRpYyBpbnQgZXh5bm9zX2RzaV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiAgCj4gIAly
ZXR1cm4gY29tcG9uZW50X2FkZChkZXYsICZleHlub3NfZHNpX2NvbXBvbmVudF9vcHMpOwo+ICsK
PiArZXJyX3B1dF9pbl9icmlkZ2Vfbm9kZToKPiArCW9mX25vZGVfcHV0KGRzaS0+aW5fYnJpZGdl
X25vZGUpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgZXh5bm9z
X2RzaV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
