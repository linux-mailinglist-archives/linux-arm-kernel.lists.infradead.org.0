Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FEF127AA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pUYs9HzILyEu/ocX8wlbHj0kg4hdpHJcXyMZlZA1+c=; b=lYAqha0Q+ZflCL
	IWIOtReEDW7bn9+15jb2WoOxzsbtMDcnFZ9Tx41lbJNX6FdQ4+ksfuYdAThhELfFe4ng5dGMli4YI
	2qchBQx0ddVHKhQLDc5O7E6pVvXZWoW6EN5PqQA9ZIYgHrn1w4yLdgNJ0NYN3SDjFUdRs/ay/rAhv
	CPvY3mwbJ8soTcR13EpBWDlONHColngF6satlCal1i4yxMCpoeHDnfZuY7F1XntrZaVuMxEnNaxYj
	HtM8zUNjDgi9DpBKZQkGjeM4bRCeVK4cL3w3qweQT0N7KbjMuPB9jRbpHkLCxCpg0JQPnMTTUJZuZ
	SWYK2kXPpLaxkC7lysQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH09-0006aR-6i; Fri, 20 Dec 2019 12:03:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGyY-0005LY-Vb
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191220120145euoutp023a9a6af55b586d568b74c9c1146dcd91~iEqHRm2Ko0163201632euoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191220120145euoutp023a9a6af55b586d568b74c9c1146dcd91~iEqHRm2Ko0163201632euoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576843305;
 bh=EMoPAC75FBY1rzEvXerOmj/3hLvCyILy+vvdDVXy7a8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tRCnruzb/wY9YAaY5gD3giVNZ2IaC86gwj8514iGy1XRgMfyzA5i66EzStxwldjmz
 Dmnc508mUSlm09ciGE+o+5Qj5bv+BeIWD52KrLF+Qg8taD48ZXXWYj525anWcmCepn
 Nu4wa72qB3QvgybK72cEdeADTUJpamHtO9qu0wvw=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191220120145eucas1p15c70bfb8a1ed29cdc9146915b0ba97ba~iEqHFhwRt1908419084eucas1p1S;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A4.3E.60698.928BCFD5; Fri, 20
 Dec 2019 12:01:45 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c~iEqGt9ZyO2958229582eucas1p24;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191220120145eusmtrp2bddf4a83107f924dccfe910146f1c3a1~iEqGtG9RP2149221492eusmtrp2y;
 Fri, 20 Dec 2019 12:01:45 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-4b-5dfcb82996b3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B5.87.08375.928BCFD5; Fri, 20
 Dec 2019 12:01:45 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191220120144eusmtip2b8b1a1fa0c24155f199d95970587d722~iEqF9D0FK3105631056eusmtip2a;
 Fri, 20 Dec 2019 12:01:44 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v3 5/7] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
Date: Fri, 20 Dec 2019 12:56:51 +0100
Message-Id: <20191220115653.6487-6-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220115653.6487-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUyMcRzf73nuee7p6vJ0aX1F4pq1whX54ydmtbEdNjNjrEkdPdJ0l91T
 kT84jlTnpWWtK72RVcuMHrFqhNxqybrp9Titoogh7aoJQ0/Pmf77fH+fl+/Lfgyp6qICmGRD
 Gmc06FLUtEL2oHXGvjq04VdcRN73QDxYdh7hOusdCvdPfqBwua2Twj1T4zQufCTQOH8wT4bt
 9rtyXDMwQWHhXR+Fu5tKaOy6ZEPYam8m8G3bgBw7z9TQ2Hr1Ix3NaoXaHFr7pu8hrR20tBHa
 ezdPa+u+NhDay/W1SOsSlu6Uxyo2JnIpyRmcMXxTguKIc8xJH/sdfuLKswnahKpCchHDALsO
 vrzYk4sUjIqtQdD9uYbKRR6zxSSCOsd+iXAhuPzos0wkRIOQbSIkohpB/Wvrf0dFwRYR02wM
 5BcMyUXRQtaG4GrFuEwsSLaEgOyc6rkoXzYeJp8Mzbll7Aq4br9IiFjJYjCPNMqldkFw6+4T
 UsQe7Hpw9HaRksYH2otG5nLIWY35/jVS0k/JofL+Pglvhvz2T+4cX/jUVu/GS+BPYzkhYR5G
 GwcpcThgTQiEKps7aAO86fxBi0ci2VC40xQuPcdAq9Atl27nDY4vPtII3pD/oJCUnpWQnaWS
 oBqairwlI8DZW33ubC30z0wQeWh58bxdiuftUvy/bQUia5E/l87rkzg+0sAd1/A6PZ9uSNIc
 StULaPandfxum2pAzb8OtiCWQWovZfThn3EqSpfBZ+pbEDCkeqHSmT0Tp1Im6jJPcsbUeGN6
 Cse3oMWMTO2vjLzxMU7FJunSuKMcd4wz/mMJxiPAhErSO8YOdCx67OIDB5Lfvgo3h7pYRdlw
 5alz0zvMWVaf0TIvv7U9+54b6Mis2AWeK59GFFxYui3W0zIx0lWoVx0yhQRZxr8FO8KG+V3L
 LIUnhKTSK+UtxgIiRvNyaImfZqv5euaqKH1KUakm+D0zk0AGTpuigtjenr15W6JvbN+tlvFH
 dGvCSCOv+wsmu2svZQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xe7qaO/7EGiw9xGZxf14ro8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C3WHH3I6vFpsfXWC0u75rDZvG59wij
 xYzz+5gs1h65y25xu3EFm8WMyS/ZHAQ8Nq3qZPO4c20Pm8f97uNMHpuX1HtsfLeDyaNvyypG
 j8+b5ALYo/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/Tt
 EvQybr+4zVbwT7+i//BHtgbGZepdjJwcEgImEps6Gpi6GLk4hASWMkp8vXaRCSIhIfFx/Q1W
 CFtY4s+1LjaIok+MEnff3mAGSbAJOEpMmvqAHSQhInCKUWLr8nNsIAlmgRVMEv1zhEFsYYFY
 iZ7l68EmsQioSiw83wO2gVfAQqL5yU52iA3yEqs3HAAbyilgKXHj6iUwWwioZufnPqh6QYmT
 M5+wdDFyAM1Xl1g/TwhilbxE89bZzBMYBWchqZqFUDULSdUCRuZVjCKppcW56bnFhnrFibnF
 pXnpesn5uZsYgfG67djPzTsYL20MPsQowMGoxMP7Mvl3rBBrYllxZe4hRgkOZiUR3tsdP2OF
 eFMSK6tSi/Lji0pzUosPMZoCvTaRWUo0OR+YSvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmk
 J5akZqemFqQWwfQxcXBKNTDOfa7uftNQeXXJrxMce0Wk+Dc7Hv9cf2xFqufltQuj7/zITJdx
 MxML+3xxnvqRvn0buNKvTLu1yOTbz61MKp+uPzZ73JUV13v1r0yP/5n3NhemymXfr+2Nvrfr
 z/XF+acSpnxJKNzYYbFC6CXT+g26/xNO7VD1tP9YU3EmvVDO2zZXNjMn/XCZEktxRqKhFnNR
 cSIAfK1wku0CAAA=
X-CMS-MailID: 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c
X-Msg-Generator: CA
X-RootMTR: 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120145eucas1p295af63eed7b23982d8c49fcf875cec8c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040147_171476_7B1BE05C 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRvIHRoZSBleHlub3Mt
YnVzIGRldmZyZXEKZHJpdmVyLgoKVGhlIFNvQyB0b3BvbG9neSBpcyBhIGdyYXBoIChvciwgbW9y
ZSBzcGVjaWZpY2FsbHksIGEgdHJlZSkgYW5kIGl0cwplZGdlcyBhcmUgc3BlY2lmaWVkIHVzaW5n
IHRoZSAnZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZScgaW4gdGhlCkRULiBEdWUgdG8g
dW5zcGVjaWZpZWQgcmVsYXRpdmUgcHJvYmluZyBvcmRlciwgLUVQUk9CRV9ERUZFUiBtYXkgYmUK
cHJvcGFnYXRlZCB0byBlbnN1cmUgdGhhdCB0aGUgcGFyZW50IGlzIHByb2JlZCBiZWZvcmUgaXRz
IGNoaWxkcmVuLgoKRWFjaCBidXMgaXMgbm93IGFuIGludGVyY29ubmVjdCBwcm92aWRlciBhbmQg
YW4gaW50ZXJjb25uZWN0IG5vZGUgYXMgd2VsbAooY2YuIERvY3VtZW50YXRpb24vaW50ZXJjb25u
ZWN0L2ludGVyY29ubmVjdC5yc3QpLCBpLmUuIGV2ZXJ5IGJ1cyByZWdpc3RlcnMKaXRzZWxmIGFz
IGEgbm9kZS4gTm9kZSBJRHMgYXJlIG5vdCBoYXJkY29kZWQgYnV0IHJhdGhlciBhc3NpZ25lZCBh
dApydW50aW1lLCBpbiBwcm9iaW5nIG9yZGVyIChzdWJqZWN0IHRvIHRoZSBhYm92ZS1tZW50aW9u
ZWQgZXhjZXB0aW9uCnJlZ2FyZGluZyByZWxhdGl2ZSBvcmRlcikuIFRoaXMgYXBwcm9hY2ggYWxs
b3dzIGZvciB1c2luZyB0aGlzIGRyaXZlciB3aXRoCnZhcmlvdXMgRXh5bm9zIFNvQ3MuCgpGcmVx
dWVuY2llcyByZXF1ZXN0ZWQgdmlhIHRoZSBpbnRlcmNvbm5lY3QgQVBJIGZvciBhIGdpdmVuIG5v
ZGUgYXJlCnByb3BhZ2F0ZWQgdG8gZGV2ZnJlcSB1c2luZyBkZXZfcG1fcW9zX3VwZGF0ZV9yZXF1
ZXN0KCkuIFBsZWFzZSBub3RlIHRoYXQKaXQgaXMgbm90IGFuIGVycm9yIHdoZW4gQ09ORklHX0lO
VEVSQ09OTkVDVCBpcyAnbicsIGluIHdoaWNoIGNhc2UgYWxsCmludGVyY29ubmVjdCBBUEkgZnVu
Y3Rpb25zIGFyZSBuby1vcC4KClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdv
bkBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMTQ0ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQ0IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIv
ZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwppbmRleCA5ZmRiMTg4OTE1ZTguLjY5NGE5NTgx
ZGNkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYworKysgYi9kcml2
ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCkBAIC0xNCwxNCArMTQsMTkgQEAKICNpbmNsdWRlIDxs
aW51eC9kZXZmcmVxLWV2ZW50Lmg+CiAjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CiAjaW5jbHVk
ZSA8bGludXgvZXhwb3J0Lmg+CisjaW5jbHVkZSA8bGludXgvaWRyLmg+CisjaW5jbHVkZSA8bGlu
dXgvaW50ZXJjb25uZWN0LXByb3ZpZGVyLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CiAj
aW5jbHVkZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KKyNpbmNsdWRl
IDxsaW51eC9wbV9xb3MuaD4KICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KICNp
bmNsdWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KIAogI2RlZmluZSBERUZBVUxUX1NB
VFVSQVRJT05fUkFUSU8JNDAKIAorI2RlZmluZSBrYnBzX3RvX2toeih4KSAoKHgpIC8gOCkKKwog
c3RydWN0IGV4eW5vc19idXMgewogCXN0cnVjdCBkZXZpY2UgKmRldjsKIApAQCAtMzUsNiArNDAs
MTIgQEAgc3RydWN0IGV4eW5vc19idXMgewogCXN0cnVjdCBvcHBfdGFibGUgKm9wcF90YWJsZTsK
IAlzdHJ1Y3QgY2xrICpjbGs7CiAJdW5zaWduZWQgaW50IHJhdGlvOworCisJLyogT25lIHByb3Zp
ZGVyIHBlciBidXMsIG9uZSBub2RlIHBlciBwcm92aWRlciAqLworCXN0cnVjdCBpY2NfcHJvdmlk
ZXIgcHJvdmlkZXI7CisJc3RydWN0IGljY19ub2RlICpub2RlOworCisJc3RydWN0IGRldl9wbV9x
b3NfcmVxdWVzdCBxb3NfcmVxOwogfTsKIAogLyoKQEAgLTIwNSw2ICsyMTYsMzkgQEAgc3RhdGlj
IHZvaWQgZXh5bm9zX2J1c19wYXNzaXZlX2V4aXQoc3RydWN0IGRldmljZSAqZGV2KQogCWNsa19k
aXNhYmxlX3VucHJlcGFyZShidXMtPmNsayk7CiB9CiAKK3N0YXRpYyBpbnQgZXh5bm9zX2J1c19p
Y2Nfc2V0KHN0cnVjdCBpY2Nfbm9kZSAqc3JjLCBzdHJ1Y3QgaWNjX25vZGUgKmRzdCkKK3sKKwlz
dHJ1Y3QgZXh5bm9zX2J1cyAqc3JjX2J1cyA9IHNyYy0+ZGF0YSwgKmRzdF9idXMgPSBkc3QtPmRh
dGE7CisJczMyIHNyY19mcmVxID0ga2Jwc190b19raHooc3JjLT5hdmdfYncpOworCXMzMiBkc3Rf
ZnJlcSA9IGticHNfdG9fa2h6KGRzdC0+YXZnX2J3KTsKKwlpbnQgcmV0OworCisJcmV0ID0gZGV2
X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgmc3JjX2J1cy0+cW9zX3JlcSwgc3JjX2ZyZXEpOworCWlm
IChyZXQgPCAwKSB7CisJCWRldl9lcnIoc3JjX2J1cy0+ZGV2LCAiZmFpbGVkIHRvIHVwZGF0ZSBQ
TSBRb1MgcmVxdWVzdCIpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldCA9IGRldl9wbV9xb3Nf
dXBkYXRlX3JlcXVlc3QoJmRzdF9idXMtPnFvc19yZXEsIGRzdF9mcmVxKTsKKwlpZiAocmV0IDwg
MCkgeworCQlkZXZfZXJyKGRzdF9idXMtPmRldiwgImZhaWxlZCB0byB1cGRhdGUgUE0gUW9TIHJl
cXVlc3QiKTsKKwkJcmV0dXJuIHJldDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHN0
cnVjdCBpY2Nfbm9kZSAqZXh5bm9zX2J1c19pY2NfeGxhdGUoc3RydWN0IG9mX3BoYW5kbGVfYXJn
cyAqc3BlYywKKwkJCQkJICAgICB2b2lkICpkYXRhKQoreworCXN0cnVjdCBleHlub3NfYnVzICpi
dXMgPSBkYXRhOworCisJaWYgKHNwZWMtPm5wICE9IGJ1cy0+ZGV2LT5vZl9ub2RlKQorCQlyZXR1
cm4gRVJSX1BUUigtRUlOVkFMKTsKKworCXJldHVybiBidXMtPm5vZGU7Cit9CisKIHN0YXRpYyBp
bnQgZXh5bm9zX2J1c19wYXJlbnRfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKIAkJ
CQkJc3RydWN0IGV4eW5vc19idXMgKmJ1cykKIHsKQEAgLTQxOSw2ICs0NjMsOTYgQEAgc3RhdGlj
IGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpi
dXMsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgaWNjX25vZGUgKmV4eW5vc19idXNf
aWNjX2dldF9wYXJlbnQoc3RydWN0IGV4eW5vc19idXMgKmJ1cykKK3sKKwlzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wID0gYnVzLT5kZXYtPm9mX25vZGU7CisJc3RydWN0IG9mX3BoYW5kbGVfYXJncyBh
cmdzOworCWludCBudW0sIHJldDsKKworCW51bSA9IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdz
KG5wLCAiZXh5bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZSIsCisJCQkJCSIjaW50ZXJjb25u
ZWN0LWNlbGxzIik7CisJaWYgKG51bSAhPSAxKQorCQlyZXR1cm4gTlVMTDsgLyogcGFyZW50IG5v
ZGVzIGFyZSBvcHRpb25hbCAqLworCisJcmV0ID0gb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3Mo
bnAsICJleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlIiwKKwkJCQkJIiNpbnRlcmNvbm5l
Y3QtY2VsbHMiLCAwLCAmYXJncyk7CisJaWYgKHJldCA8IDApCisJCXJldHVybiBFUlJfUFRSKHJl
dCk7CisKKwlvZl9ub2RlX3B1dChhcmdzLm5wKTsKKworCXJldHVybiBvZl9pY2NfZ2V0X2Zyb21f
cHJvdmlkZXIoJmFyZ3MpOworfQorCitzdGF0aWMgaW50IGV4eW5vc19idXNfaWNjX2luaXQoc3Ry
dWN0IGV4eW5vc19idXMgKmJ1cykKK3sKKwlzdGF0aWMgREVGSU5FX0lEQShpZGEpOworCisJc3Ry
dWN0IGRldmljZSAqZGV2ID0gYnVzLT5kZXY7CisJc3RydWN0IGljY19wcm92aWRlciAqcHJvdmlk
ZXIgPSAmYnVzLT5wcm92aWRlcjsKKwlzdHJ1Y3QgaWNjX25vZGUgKm5vZGUsICpwYXJlbnRfbm9k
ZTsKKwlpbnQgaWQsIHJldDsKKworCS8qIEluaXRpYWxpemUgdGhlIGludGVyY29ubmVjdCBwcm92
aWRlciAqLworCXByb3ZpZGVyLT5zZXQgPSBleHlub3NfYnVzX2ljY19zZXQ7CisJcHJvdmlkZXIt
PmFnZ3JlZ2F0ZSA9IGljY19zdGRfYWdncmVnYXRlOworCXByb3ZpZGVyLT54bGF0ZSA9IGV4eW5v
c19idXNfaWNjX3hsYXRlOworCXByb3ZpZGVyLT5kZXYgPSBkZXY7CisJcHJvdmlkZXItPmludGVy
X3NldCA9IHRydWU7CisJcHJvdmlkZXItPmRhdGEgPSBidXM7CisKKwlyZXQgPSBpY2NfcHJvdmlk
ZXJfYWRkKHByb3ZpZGVyKTsKKwlpZiAocmV0IDwgMCkKKwkJcmV0dXJuIHJldDsKKworCXJldCA9
IGlkID0gaWRhX2FsbG9jKCZpZGEsIEdGUF9LRVJORUwpOworCWlmIChyZXQgPCAwKQorCQlnb3Rv
IGVycl9pZDsKKworCW5vZGUgPSBpY2Nfbm9kZV9jcmVhdGUoaWQpOworCWlmIChJU19FUlIobm9k
ZSkpIHsKKwkJcmV0ID0gUFRSX0VSUihub2RlKTsKKwkJZ290byBlcnJfbm9kZTsKKwl9CisKKwli
dXMtPm5vZGUgPSBub2RlOworCW5vZGUtPm5hbWUgPSBkZXYtPm9mX25vZGUtPm5hbWU7CisJbm9k
ZS0+ZGF0YSA9IGJ1czsKKwlpY2Nfbm9kZV9hZGQobm9kZSwgcHJvdmlkZXIpOworCisJcGFyZW50
X25vZGUgPSBleHlub3NfYnVzX2ljY19nZXRfcGFyZW50KGJ1cyk7CisJaWYgKElTX0VSUihwYXJl
bnRfbm9kZSkpIHsKKwkJcmV0ID0gUFRSX0VSUihwYXJlbnRfbm9kZSk7CisJCWdvdG8gZXJyX3Bh
cmVudDsKKwl9CisKKwlpZiAocGFyZW50X25vZGUpIHsKKwkJcmV0ID0gaWNjX2xpbmtfY3JlYXRl
KG5vZGUsIHBhcmVudF9ub2RlLT5pZCk7CisJCWlmIChyZXQgPCAwKQorCQkJZ290byBlcnJfcGFy
ZW50OworCX0KKworCXJldCA9IGRldl9wbV9xb3NfYWRkX3JlcXVlc3QoYnVzLT5kZXZmcmVxLT5k
ZXYucGFyZW50LCAmYnVzLT5xb3NfcmVxLAorCQkJCQlERVZfUE1fUU9TX01JTl9GUkVRVUVOQ1ks
IDApOworCWlmIChyZXQgPCAwKQorCQlnb3RvIGVycl9yZXF1ZXN0OworCisJcmV0dXJuIDA7CisK
K2Vycl9yZXF1ZXN0OgorCWlmIChwYXJlbnRfbm9kZSkKKwkJaWNjX2xpbmtfZGVzdHJveShub2Rl
LCBwYXJlbnRfbm9kZSk7CitlcnJfcGFyZW50OgorCWljY19ub2RlX2RlbChub2RlKTsKKwlpY2Nf
bm9kZV9kZXN0cm95KGlkKTsKK2Vycl9ub2RlOgorCWlkYV9mcmVlKCZpZGEsIGlkKTsKK2Vycl9p
ZDoKKwlpY2NfcHJvdmlkZXJfZGVsKHByb3ZpZGVyKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0
YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
ewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CkBAIC00NjgsNiArNjAyLDE2IEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQogCWlmIChyZXQgPCAwKQogCQlnb3RvIGVycjsKIAorCS8qCisJICogSW5pdGlhbGl6ZSBpbnRl
cmNvbm5lY3QgcHJvdmlkZXIuIEEgcmV0dXJuIHZhbHVlIG9mIC1FTk9UU1VQUCBtZWFucworCSAq
IHRoYXQgQ09ORklHX0lOVEVSQ09OTkVDVCBpcyBkaXNhYmxlZC4KKwkgKi8KKwlyZXQgPSBleHlu
b3NfYnVzX2ljY19pbml0KGJ1cyk7CisJaWYgKHJldCA8IDAgJiYgcmV0ICE9IC1FTk9UU1VQUCkg
eworCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBpbml0aWFsaXplIHRoZSBpbnRlcmNvbm5lY3Qg
cHJvdmlkZXIiKTsKKwkJZ290byBlcnI7CisJfQorCiAJbWF4X3N0YXRlID0gYnVzLT5kZXZmcmVx
LT5wcm9maWxlLT5tYXhfc3RhdGU7CiAJbWluX2ZyZXEgPSAoYnVzLT5kZXZmcmVxLT5wcm9maWxl
LT5mcmVxX3RhYmxlWzBdIC8gMTAwMCk7CiAJbWF4X2ZyZXEgPSAoYnVzLT5kZXZmcmVxLT5wcm9m
aWxlLT5mcmVxX3RhYmxlW21heF9zdGF0ZSAtIDFdIC8gMTAwMCk7Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
