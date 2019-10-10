Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DF0D1EAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJS5r4GxjmCNh9SGZJtmiyhPP8rv9APqZfwmKij9s6w=; b=FULD6T3satZ32i
	B12RBdBSCOJGByotZuIJN2i0TylOhJJBDC5zuqLEiMNMTDPfZZToWa5Agq5vydfkAfKk8u6ffQtbc
	T+QpF01U1CSJ4galIhvJlm75gQ+NmnzGYLyGtoQJifES1izSf36h1zpET+V4quBKU2slIre2oez2H
	vt/OO0/awap7tU6USN0HEyRHIFZLHkKK2Vg/5+UzcrRBOCDl/AGVKUDsAMJePr5GMtcDs+7ugMU0u
	jVm0nQlFlx81U1dcqjCgGTxZkdhZF8eESBEUg1UpuYFt4K50pcFDkQrtKg8dbeMm6UepjgkbfWu9p
	fOiiV3IedUP8hI9pqWbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIOSG-0005Bf-C5; Thu, 10 Oct 2019 02:45:28 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIOS7-0005Af-93
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:45:21 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191010024515epoutp023fcd2749f1b69952d7cd62924488c9dd~MKQ8hiBq22506425064epoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:45:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191010024515epoutp023fcd2749f1b69952d7cd62924488c9dd~MKQ8hiBq22506425064epoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570675515;
 bh=y+8N/oTMLH273gtMScb/TXmzbFwYfa48oNukTHhysEQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Oh96qE4opZMXsu/UOb8W//Pn0wmsZEWWX/pmbXWcZo8rmXwWpa0XVqVpjS3TX8X5i
 64WkaUfJmlzIudDFHP63MKDP4WLKIsOI46YSXGxVOTrtNikkdp0zJbfiuywYOBJ3uL
 Nv67gsOmDuOSLWg6qOyjVB7PwTtVyykQ3QGYQQNA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191010024514epcas1p4e8b6063991cdaec6bde9584f60de9857~MKQ8CNrez2591425914epcas1p4h;
 Thu, 10 Oct 2019 02:45:14 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46pb6H6NdPzMqYlm; Thu, 10 Oct
 2019 02:45:11 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.56.04144.73B9E9D5; Thu, 10 Oct 2019 11:45:11 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191010024511epcas1p1d4aa4f9543646b63ee333fe4d95140d6~MKQ5AZMcv0984309843epcas1p16;
 Thu, 10 Oct 2019 02:45:11 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191010024511epsmtrp16a82d2c4e19036109d944336523539dc~MKQ4-gFDx2082620826epsmtrp1I;
 Thu, 10 Oct 2019 02:45:11 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-6f-5d9e9b373390
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E4.6C.04081.63B9E9D5; Thu, 10 Oct 2019 11:45:11 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191010024510epsmtip2dc0c7be1f61bf1a75a2054793f112335~MKQ4sZUTr1945119451epsmtip2X;
 Thu, 10 Oct 2019 02:45:10 +0000 (GMT)
Subject: Re: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
To: k.konieczny@partner.samsung.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <4f14d3af-e455-d05b-fc03-cba58e001f41@samsung.com>
Date: Thu, 10 Oct 2019 11:50:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191008134923.30123-1-k.konieczny@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFJsWRmVeSWpSXmKPExsWy7bCmvq757HmxBjeemVhsnLGe1aJv339G
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCzWHrnLbnG7cQWbA7fHplWd
 bB6bl9R7HHy3h8mjb8sqRo/Pm+QCWKOybTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0t
 LcyVFPISc1NtlVx8AnTdMnOALlNSKEvMKQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFFgW
 6BUn5haX5qXrJefnWhkaGBiZAhUmZGc82LyLueClWMXe6Q+ZGxgPCHUxcnJICJhILH57hrmL
 kYtDSGAHo8TjDaehnE+MEmcv9kI53xglJn5oZYZrad7CBpHYyyix/udHJgjnPaPEngl7WUCq
 hAWyJb6dXgbWISKgLDH53nSwUcwCXcwS+59eBkuwCWhJ7H9xgw3E5hdQlLj64zEjiM0rYCex
 c8JJdhCbRUBVouvJIbChogIREkceLISqEZQ4OfMJWJxTwFXi/NeXYPXMAuISt57MZ4Kw5SWa
 t84GWywhMJld4u2mVkaIH1wkLjxqYoewhSVeHd8CZUtJvOxvg7KrJVaePMIG0dzBKLFl/wVW
 iISxxP6lk4E2cABt0JRYv0sfIqwosfP3XEaIxXwS7772sIKUSAjwSnS0QUNbWeLyg7tMELak
 xOL2TrYJjEqzkLwzC8kLs5C8MAth2QJGllWMYqkFxbnpqcWGBYbI8b2JEZxutUx3ME4553OI
 UYCDUYmHN+Pk3Fgh1sSy4srcQ4wSHMxKIryLZs2JFeJNSaysSi3Kjy8qzUktPsRoCgzticxS
 osn5wFyQVxJvaGpkbGxsYWJoZmpoqCTO65HeECskkJ5YkpqdmlqQWgTTx8TBKdXAuKYv5Ljt
 6unZHEYvVKqXmbavMjLXfLn8ZXi0d7eh3YPYONvr3///lo/l+x+5nOHvOXWPsFscQbH7QsMl
 ouJlijf+sQ9YHW4uKtdSyWMZmS92Y8nEeSvn+CfJ8/LWRr1Pv3fgpYhxC7/euSns9Xt+LH96
 ZlG88KH7bJ/Ejm07lln5turjXX1rJZbijERDLeai4kQAtbSrH80DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsWy7bCSvK757HmxBuevslhsnLGe1aJv339G
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCzWHrnLbnG7cQWbA7fHplWd
 bB6bl9R7HHy3h8mjb8sqRo/Pm+QCWKO4bFJSczLLUov07RK4Mh5s3sVc8FKsYu/0h8wNjAeE
 uhg5OSQETCQWN29h62Lk4hAS2M0o0XWhgxEiISkx7eJR5i5GDiBbWOLw4WKQsJDAW0aJnms8
 ILawQLbEt9PLmEFsEQFlicn3pjODzGEW6GGWaN/fzAQxdAajxK/VDawgVWwCWhL7X9xgA7H5
 BRQlrv54DLaMV8BOYueEk+wgNouAqkTXk0MsILaoQITE6uUvWCFqBCVOznwCFucUcJU4//Ul
 WD2zgLrEn3mXmCFscYlbT+YzQdjyEs1bZzNPYBSehaR9FpKWWUhaZiFpWcDIsopRMrWgODc9
 t9iwwDAvtVyvODG3uDQvXS85P3cTIzjqtDR3MF5eEn+IUYCDUYmHN+Pk3Fgh1sSy4srcQ4wS
 HMxKIryLZs2JFeJNSaysSi3Kjy8qzUktPsQozcGiJM77NO9YpJBAemJJanZqakFqEUyWiYNT
 qoGxc0ZKx4LWxIxinZXSm6YllnO8zojkPs/wTveah2kOH2/hBf8Vhq819X0/X4tTcA0OvOL2
 teep0Tpzq/Q901QCshfctmh9otFql/2rbtGv+1zN1oYTV29+d3jHv0sGW4qY1iifmyk4R18y
 cL6vmfO3xwtuMUpzblmxdy/vNmmZptdaDnqevVxKLMUZiYZazEXFiQB51qFitgIAAA==
X-CMS-MailID: 20191010024511epcas1p1d4aa4f9543646b63ee333fe4d95140d6
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
 <20191008134923.30123-1-k.konieczny@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_194519_728707_ED15B87D 
X-CRM114-Status: GOOD (  25.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOeuFhCAxMOyblCAwOOydvCAyMjo0OSwgay5rb25pZWN6bnlAcGFydG5lci5zYW1zdW5n
LmNvbSB3cm90ZToKPiBDb21taXQgNDI5NGE3NzliZDhkICgiUE0gLyBkZXZmcmVxOiBleHlub3Mt
YnVzOiBDb252ZXJ0IHRvIHVzZQo+IGRldl9wbV9vcHBfc2V0X3JhdGUoKSIpIGludHJvZHVjZWQg
ZXJyb3JzOgo+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNf
d2NvcmUgKCA4NDAwMCBLSHogfiA0MDAwMDAgS0h6KQo+IGV4eW5vcy1idXM6IG5ldyBidXMgZGV2
aWNlIHJlZ2lzdGVyZWQ6IHNvYzpidXNfbm9jICggNjcwMDAgS0h6IH4gMTAwMDAwIEtIeikKPiBl
eHlub3MtYnVzOiBuZXcgYnVzIGRldmljZSByZWdpc3RlcmVkOiBzb2M6YnVzX2ZzeXNfYXBiICgx
MDAwMDAgS0h6IH4gMjAwMDAwIEtIeikKPiAuLi4KPiBleHlub3MtYnVzIHNvYzpidXNfd2NvcmU6
IGRldl9wbV9vcHBfc2V0X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVx
IDUzMjAwMDAwMCAoLTM0KQo+IGV4eW5vcy1idXMgc29jOmJ1c19ub2M6IGRldl9wbV9vcHBfc2V0
X3JhdGU6IGZhaWxlZCB0byBmaW5kIGN1cnJlbnQgT1BQIGZvciBmcmVxIDExMTAwMDAwMCAoLTM0
KQo+IGV4eW5vcy1idXMgc29jOmJ1c19mc3lzX2FwYjogZGV2X3BtX29wcF9zZXRfcmF0ZTogZmFp
bGVkIHRvIGZpbmQgY3VycmVudCBPUFAgZm9yIGZyZXEgMjIyMDAwMDAwICgtMzQpCj4gCj4gVGhl
eSBhcmUgY2F1c2VkIGJ5IGluY29ycmVjdCBQTEwgYXNzaWduZWQgdG8gY2xvY2sgc291cmNlLCB3
aGljaCByZXN1bHRzCj4gaW4gY2xvY2sgcmF0ZSBvdXRzaWRlIG9mIE9QUCByYW5nZS4gQWRkIHdv
cmthcm91bmQgZm9yIHRoaXMgaW4KPiBleHlub3NfYnVzX3BhcnNlX29mKCkgYnkgYWRqdXN0aW5n
IGNsb2NrIHJhdGUgdG8gdGhvc2UgcHJlc2VudCBpbiBPUFAuCgpJZiB0aGUgY2xvY2sgY2F1c2Vk
IHRoaXMgaXNzdWUsIHlvdSBjYW4gc2V0IHRoZSBpbml0aWFsIGNsb2NrIG9uIERldmljZVRyZWUK
d2l0aCBhc3NpZ25lZC1jbG9jay0qIHByb3BlcnRpZXMuIEJlY2F1c2UgdGhlIHByb2JlIHRpbWUg
b2YgY2xvY2sgZHJpdmVyCmlzIGVhcmx5IHRoYW4gdGhlIGFueSBkZXZpY2UgZHJpdmVycy4KCkl0
IGlzIG5vdCBwcm9wZXIgdG8gZml4IHRoZSBjbG9jayBpc3N1ZSBvbiBvdGhlciBkZXZpY2UgZHJp
dmVyLgpJIHRoaW5rIHlvdSBjYW4gZml4IGl0IGJ5IHVzaW5nIHRoZSBzdXBwb3J0ZWQgY2xvY2sg
cHJvcGVydGllcy4KCgo+IAo+IEZpeGVzOiA0Mjk0YTc3OWJkOGQgKCJQTSAvIGRldmZyZXE6IGV4
eW5vcy1idXM6IENvbnZlcnQgdG8gdXNlIGRldl9wbV9vcHBfc2V0X3JhdGUoKSIpCj4gUmVwb3J0
ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBTaWduZWQtb2Zm
LWJ5OiBLYW1pbCBLb25pZWN6bnkgPGsua29uaWVjem55QHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAxNCArKysrKysrKysrKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJl
cS9leHlub3MtYnVzLmMKPiBpbmRleCBjODMyNjczMjczYTIuLjM3YmQzNGQ1NjI1YiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gKysrIGIvZHJpdmVycy9kZXZm
cmVxL2V4eW5vcy1idXMuYwo+IEBAIC0yNDMsNyArMjQzLDcgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3BhcnNlX29mKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gIHsKPiAgCXN0cnVjdCBkZXZp
Y2UgKmRldiA9IGJ1cy0+ZGV2Owo+ICAJc3RydWN0IGRldl9wbV9vcHAgKm9wcDsKPiAtCXVuc2ln
bmVkIGxvbmcgcmF0ZTsKPiArCXVuc2lnbmVkIGxvbmcgcmF0ZSwgb3BwX3JhdGU7Cj4gIAlpbnQg
cmV0Owo+ICAKPiAgCS8qIEdldCB0aGUgY2xvY2sgdG8gcHJvdmlkZSBlYWNoIGJ1cyB3aXRoIHNv
dXJjZSBjbG9jayAqLwo+IEBAIC0yNjcsMTMgKzI2NywyMSBAQCBzdGF0aWMgaW50IGV4eW5vc19i
dXNfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCX0KPiAgCj4gIAlyYXRlID0g
Y2xrX2dldF9yYXRlKGJ1cy0+Y2xrKTsKPiAtCj4gLQlvcHAgPSBkZXZmcmVxX3JlY29tbWVuZGVk
X29wcChkZXYsICZyYXRlLCAwKTsKPiArCW9wcF9yYXRlID0gcmF0ZTsKPiArCW9wcCA9IGRldmZy
ZXFfcmVjb21tZW5kZWRfb3BwKGRldiwgJm9wcF9yYXRlLCAwKTsKPiAgCWlmIChJU19FUlIob3Bw
KSkgewo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGZpbmQgZGV2X3BtX29wcFxuIik7Cj4g
IAkJcmV0ID0gUFRSX0VSUihvcHApOwo+ICAJCWdvdG8gZXJyX29wcDsKPiAgCX0KPiArCS8qCj4g
KwkgKiBGSVhNRTogVS1ib290IGxlYXZlcyBjbG9jayBzb3VyY2UgYXQgaW5jb3JyZWN0IFBMTCwg
dGhpcyByZXN1bHRzCj4gKwkgKiBpbiBjbG9jayByYXRlIG91dHNpZGUgZGVmaW5lZCBPUFAgcmF0
ZS4gV29yayBhcm91bmQgdGhpcyBidWcgYnkKPiArCSAqIHNldHRpbmcgY2xvY2sgcmF0ZSB0byBy
ZWNvbW1lbmRlZCBvbmUuCj4gKwkgKi8KPiArCWlmIChyYXRlID4gb3BwX3JhdGUpCj4gKwkJY2xr
X3NldF9yYXRlKGJ1cy0+Y2xrLCBvcHBfcmF0ZSk7Cj4gKwo+ICAJYnVzLT5jdXJyX2ZyZXEgPSBk
ZXZfcG1fb3BwX2dldF9mcmVxKG9wcCk7Cj4gIAlkZXZfcG1fb3BwX3B1dChvcHApOwo+ICAKPiAK
CgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
