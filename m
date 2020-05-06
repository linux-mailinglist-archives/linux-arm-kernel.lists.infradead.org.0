Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E941C69E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6sjJdeV1cCDHpMfSvu3IQcA5ftbXyvSoiigQ9HwUjY=; b=G71o10kcmh15Y3
	f3XhAecl0hTUokqrx0WbiCBJoY7vNKqyD/aSodS26Hi0Rw2cYfWK7myr75uDxd8Qq3aFH+WjP4KoW
	8Rjn2BMKiGjFsDerOeCwLHrKIbQ/M1uRP21drfoBmoJP0qUuVwC+m9B0W0KKNc9flsxRakFyy6Ct1
	wSRm+hoy3ruN3uH4IC4dPVMkpbc4bApWn2+nm6jzojr1T8xqoVqzmU/3Z4AH7XH4cZL2sxToQ54JB
	4QYN0f/kbBXN0cyOyZ0k/qCfgLbR7jaOKSaQV1cwi00csRqlpc39aDNzoDE0LHoCXNhJqtp7bV2+E
	HeYd0bT8zgM7fYrkrFLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEKU-0007MN-2V; Wed, 06 May 2020 07:18:54 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEKK-0007Lj-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:18:46 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200506071832epoutp039380f58f2276840b88880e8b927da757~MX0OPL94q3113531135epoutp03I
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 07:18:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200506071832epoutp039380f58f2276840b88880e8b927da757~MX0OPL94q3113531135epoutp03I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588749512;
 bh=6YcEGcpOH8qmtVkMgckjOe2MxID1528yYGTjyUVC0OQ=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=WN5FIa4HIJR3ZS5N8K1SWK6cS5wWJRwW+UmqZbIwHvwLtLi6s0n3Pd/OmKiD4Y/jd
 lP3qeamMXGySg6iThwHngccVeJ8FHOmPGg6oh1vaghz/Nb1C/S2mYtzryOZVNWi0hj
 SSvmaES8KMcHGjVDuiDZrwmUg8TpE5ujsplgftJU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20200506071832epcas2p229b83b9a27474c241d0f9efd0f1b0b12~MX0N-Plp51506915069epcas2p2c;
 Wed,  6 May 2020 07:18:32 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.187]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49H7HB1DVwzMqYm6; Wed,  6 May
 2020 07:18:30 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 AD.2B.04647.5C462BE5; Wed,  6 May 2020 16:18:30 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506071829epcas2p26dcd37cb7162bf1f62b1789419981361~MX0Lcr_821506915069epcas2p2a;
 Wed,  6 May 2020 07:18:29 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506071829epsmtrp148d90a1ebb7caa57f3ed948cdded7a05~MX0Lbuxfq0634006340epsmtrp1H;
 Wed,  6 May 2020 07:18:29 +0000 (GMT)
X-AuditID: b6c32a48-dd9099e000001227-3b-5eb264c5b09a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A4.CA.18461.5C462BE5; Wed,  6 May 2020 16:18:29 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.155.199]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200506071829epsmtip13c5c73b45d9c619de524330e95bb7537~MX0LNB4zA0070400704epsmtip1Y;
 Wed,  6 May 2020 07:18:29 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Greg Kroah-Hartman'" <gregkh@linuxfoundation.org>
In-Reply-To: <20200506063105.GA2246050@kroah.com>
Subject: RE: [PATCH v8 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Date: Wed, 6 May 2020 16:18:28 +0900
Message-ID: <003b01d62376$8a602c40$9f2084c0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI0UxSWHSK28Xy0fHrtncuuBEPq6wLkGOxnAlyD66ICotlktAF3atYFp5NuywA=
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJJsWRmVeSWpSXmKPExsWy7bCmme6xlE1xBpNqLJoXr2ezmLLhA5NF
 /+PXzBbnz29gt9j0+BqrxeVdc9gsZpzfx2RxZnEvuwOHx6ZVnWwe++euYffYvKTeY/2Wqywe
 nzfJBbBG5dhkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXm
 AF2ipFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwNCzQK07MLS7NS9dLzs+1MjQw
 MDIFqkzIybhzpJG9oEOo4vukdpYGxmsCXYycHBICJhL9x86wdDFycQgJ7GCUaJq4nw3C+cQo
 sfXNInYI5xujxJzmx2wwLa8PPWKFSOxllOj+c4ARwnnJKHH/6XUWkCo2AV2Jy4ufMIHYIgLm
 EnMfHgcbxSzQyiTx4M10sCJOAUOJX1fegtnCApESq5+tYAexWQRUJHZMmwEW5xWwlLhy9TAr
 hC0ocXLmE7A4s4C2xLKFr5khTlKQ+Pl0GSvEMj+JN88nsEPUiEjM7myDqpnJITGpgQPCdpFY
 fvkO1DvCEq+Ob2GHsKUkXva3Qdn1EvvaJoIdLSHQwyjx88NTVoiEscSsZ+1AL3MALdCUWL9L
 H8SUEFCWOHIL6jQ+iY7Df9khwrwSHW1CEI1qEuu+vWCCsGUk1jzdxT6BUWkWksdmIXlsFpIH
 ZiHsWsDIsopRLLWgODc9tdiowAQ5tjcxgpOplscOxgPnfA4xCnAwKvHwGrhvjBNiTSwrrsw9
 xCjBwawkwsvzAyjEm5JYWZValB9fVJqTWnyI0RQY7hOZpUST84GJPq8k3tDUyMzMwNLUwtTM
 yEJJnHcT980YIYH0xJLU7NTUgtQimD4mDk6pBsbQ2dtepDBolE5Zdkcx+lr5HyUuDt1HX7uN
 fG9eVVoQL2z0OcsioqXtrf679iuF1yNy+t8v+cGb37P5wML2MCv/55vPbmt+78r26PHazkte
 dVv3Pd+ic/hxwvodmx1KcuriZV5H3w369Ulve0VB4D9R+ZoHbJNNHZKDv7AXrcxrD/e9ESdX
 oKLEUpyRaKjFXFScCADhMydLvAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkkeLIzCtJLcpLzFFi42LZdlhJTvdoyqY4g+VfuSyaF69ns5iy4QOT
 Rf/j18wW589vYLfY9Pgaq8XlXXPYLGac38dkcWZxL7sDh8emVZ1sHvvnrmH32Lyk3mP9lqss
 Hp83yQWwRnHZpKTmZJalFunbJXBlfPm7kL1gGW/F2+sfWRsYZ3F1MXJySAiYSLw+9Ii1i5GL
 Q0hgN6PElIn72CESMhITXixhhrCFJe63HIEqes4o0XGznRUkwSagK3F58RMmEFtEwFxi7sPj
 7CBFzALdTBLHNx5ggehoY5JY83sv2FhOAUOJX1fesoDYwgLhEtuetoLZLAIqEjumzQCzeQUs
 Ja5cPcwKYQtKnJz5BCzOLKAt0fuwlRHGXrbwNdR5ChI/ny5jhbjCT+LN8wnsEDUiErM725gn
 MArPQjJqFpJRs5CMmoWkZQEjyypGydSC4tz03GLDAsO81HK94sTc4tK8dL3k/NxNjODY0tLc
 wbh91Qe9Q4xMHIyHGCU4mJVEeHl+bIwT4k1JrKxKLcqPLyrNSS0+xCjNwaIkznujcGGckEB6
 YklqdmpqQWoRTJaJg1Oqgam+/HJxwsKDF6pmM1yduFUw7q3BDc6G+ntf1Pqk566SEtk73SGN
 Z67y+aO35zDxS7kFRtZlROasrIn0ELOyNuJfMvOd++6rppwu1mee5gnPFhQy4JNbVdpts+Ln
 jzkvrzqqlc2/Kt9rdydjL4tG2YI1H+OmbGJ6xSN7LCisfbFf3C/ZDQJdkzU/f+sV+zPz7ckd
 t/jDnn+Janypp/jsy1Fhrq3/r83Z+fZUbpbxwZlW79eJGeXfaf1uJb02c8dSGV+Xpr1HEh3/
 6ZxNNw948qp1ST7bj/hyUeX0crkX4gu3CD232O/kGb35pIRWxs9D1hfTOi0tVlzhCo6ef4j/
 +rqOmp0z7PrjDd86lW44X63EUpyRaKjFXFScCABgebuZHAMAAA==
X-CMS-MailID: 20200506071829epcas2p26dcd37cb7162bf1f62b1789419981361
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651
References: <CGME20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651@epcas2p2.samsung.com>
 <20200420013300.17249-1-hyunki00.koo@samsung.com>
 <20200505142325.GA816056@kroah.com>
 <000001d62335$33d03410$9b709c30$@samsung.com>
 <20200506063105.GA2246050@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001845_272630_D4907243 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Krzysztof Kozlowski' <krzk@kernel.org>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgTWF5IDUsIDIwMjAgYXQgMjAyMCAwMzozMTowMCBQTSArMDkwMCwgR3JlZyBL
cm9haC1IYXJ0bWFuCj4gT24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDg6MzA6NDZBTSArMDkwMCwg
SHl1bmtpIEtvbyB3cm90ZToKPiA+IE9uIFR1ZXNkYXksIE1heSA1LCAyMDIwIGF0IDIwMjAgMTE6
MjM6MDAgUE0gKzA5MDAsIEdyZWcgS3JvYWgtSGFydG1hbgo+IEhhcnRtYW4gd3JvdGU6Cj4gPiA+
IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDEwOjMyOjU2QU0gKzA5MDAsIEh5dW5raSBLb28gd3Jv
dGU6Cj4gPiA+ID4gVGhpcyBwYXRjaCBjaGFuZ2UgdGhlIG5hbWUgb2YgbWFjcm8gZm9yIGdlbmVy
YWwgdXNhZ2UuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIeXVua2kgS29vIDxoeXVu
a2kwMC5rb29Ac2Ftc3VuZy5jb20+Cj4gPiA+Cj4gPiA+IFRoaXMgcGF0Y2ggc2VyaWVzIGNyZWF0
ZXMgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvciwgd2hpY2ggaXMgbm90Cj4gPiA+IGFsbG93ZWQ6
Cj4gPiA+Cj4gPiA+ICAgQ0MgW01dICBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkubwo+
ID4gPiBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkuYzoxODY6MTM6IHdhcm5pbmc6IOKA
mHdyX3JlZ19iYXJyaWVy4oCZDQo+ID4gPiBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQt
ZnVuY3Rpb25dDQo+ID4gPiAgIDE4NiB8IHN0YXRpYyB2b2lkIHdyX3JlZ19iYXJyaWVyKHN0cnVj
dCB1YXJ0X3BvcnQgKnBvcnQsIHUzMiByZWcsIHUzMg0KPiB2YWwpDQo+ID4gPiAgICAgICB8ICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+DQo+ID4gPg0KPiA+ID4gUGxlYXNlIGZpeCB1cCBhbmQg
cmVzZW5kLiAgQWx3YXlzIG1ha2Ugc3VyZSB5b3Uga2VlcCB0aGUgcmV2aWV3ZWQtYnkNCj4gPiA+
IHRhZ3MgZnJvbSBvdGhlcnMgYXMgd2VsbC4NCj4gPiA+DQo+ID4gPiBncmVnIGstaA0KPiA+DQo+
ID4gSSB0ZXN0ZWQgb24gbGF0ZXN0IGtlcm5lbCB0b2RheSBvbmUgbW9yZSB0aW1lLCB0aGVyZSBp
cyBubyBlcnJvciBhbmQNCj4gd2FybmluZyBvbiBteSBzaWRlLCBub3Qgb25seSBwYXRjaCAxLzMg
YW5kIHBhdGNoIDMvMw0KPiA+IExpbmUgMTczNTogICBDQyAgICAgIGRyaXZlcnMvdHR5L3Nlcmlh
bC9zYW1zdW5nX3R0eS5vDQo+ID4gTGluZSAzNDM6ICAgQ0MgICAgICBkcml2ZXJzL3R0eS9zZXJp
YWwvc2Ftc3VuZ190dHkubw0KPiA+DQo+ID4gd3JfcmVnX2JhcnJpZXIgaXMgbm90IGRlZmluZWQg
aW4gcGF0Y2ggMS8zLCBhbmQgd3JfcmVnX2JhcnJpZXIgaXMNCj4gPiBkZWZpbmUgYW5kIHVzZWQg
aW4gcGF0Y2gzLzMgaXQgbWlnaHQgYmUgbm8gd2FybmluZy4NCj4gDQo+IEFmdGVyIEkgYXBwbHkg
dGhpcyBzZXJpZXMsIEkgZ290IHRoZSBhYm92ZSBidWlsZCB3YXJuaW5nIG9uIG15IG5vcm1hbA0K
PiB4ODYgc3lzdGVtLCBzbyBJIGNhbiBub3QgdGFrZSB0aGUgcGF0Y2hlcy4gIFBsZWFzZSBmaXgg
dXAgYW5kIHJlc2VuZC4NCj4gDQo+IGdyZWcgay1oDQoNCkknbSBzbyBzb3JyeSwgDQpUaGVyZSBp
cyBhbiB3YXJuaW5nIGlmIENPTkZJR19TRVJJQUxfU0FNU1VOR19DT05TT0xFICBpcyBub3QgZW5h
YmxlZC4NCkkndmUgZml4IHRoZSBwYXRjaCBhbmQgcmVzZW5kDQpUaGFuayB5b3UgaW4gYWR2YW5j
ZS4NCg0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
