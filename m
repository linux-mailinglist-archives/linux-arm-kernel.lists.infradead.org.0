Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B8E96EBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 03:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/ngPxrV6n0mUqSXQYhCVLmTeWObhQYGbFNCiS1dLYA=; b=ADRgSmN8qKws2Q
	GJPbt43du311PN5AAsddPQn78liGPCZa0VGsNJRZ73XpPUYAMIE5PyaUmGFt+NJeuY4l+PHGtm37e
	8rJ2doQpS0WxM+JRnn3GKDXToqfgMpiU5WowKA5+RWajsd6auPj5glqbIf4GrnD2DLS/PBP8oC7Gw
	E6e2sgSFkY692VKIQ5nWR3WSecKJaDywiddV9QanO62EvjAHgZk1lMwieCNWl3kdwqV1NLrB3hPQO
	xFrXVES7QK7su371zEcGoxOEntia+2FqQfR0FqGgaT+Ghr4H4F3PmYy+8QNVm3+FSkd7++Im4uRNZ
	jIIRuj1CXQCj5Rl7s3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FFB-0007pN-D9; Wed, 21 Aug 2019 01:16:57 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FF2-0007p2-Ck
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 01:16:50 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190821011644epoutp02afe6f37d8f674f332c474c968c62f784~8yzZqPrp81693116931epoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 01:16:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190821011644epoutp02afe6f37d8f674f332c474c968c62f784~8yzZqPrp81693116931epoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566350205;
 bh=xEmIi5M02lWs875dbMM0AR/Z1LS0JR/AMotxqDZUibc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=LRm4KKYmb41IrPbjd/lClNHds7md+xvA/9GSuWTM0edJV99Ry/xAqbYg+5nsaTB+X
 SrZJqkNOZ5aZxU5eWIqytPnUddEL1LA0T9IsfGNMrQc/3ud5xHvHK7A8uIVc5jU9h4
 Ext9EaEvmEYk7xweTNI/uRF3i2bvDRGE1et83wO0=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190821011644epcas1p4eb984018c30bdd27a4947059cb8eed2b~8yzY47sW81390013900epcas1p4P;
 Wed, 21 Aug 2019 01:16:44 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 46CqWF6y7yzMqYlr; Wed, 21 Aug
 2019 01:16:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 F7.A5.04085.77B9C5D5; Wed, 21 Aug 2019 10:16:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190821011638epcas1p1a834510ab4159ed52ff73559015042e9~8yzT3SIVy2418224182epcas1p1h;
 Wed, 21 Aug 2019 01:16:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190821011638epsmtrp1629bd8a367f0d5cbb83afdaff436e137~8yzT2aJlH2588825888epsmtrp1V;
 Wed, 21 Aug 2019 01:16:38 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-d2-5d5c9b77b3fa
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 06.F7.03706.67B9C5D5; Wed, 21 Aug 2019 10:16:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190821011638epsmtip1c418e22db844a39cddcbad9b0ad1d8dc~8yzThBUpp0707007070epsmtip1v;
 Wed, 21 Aug 2019 01:16:38 +0000 (GMT)
Subject: Re: [PATCHv2] PM / devfreq: Add dev_pm_qos support
To: Leonard Crestez <leonard.crestez@nxp.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f753051c-628f-2d31-8ee1-4a64b5057e4e@samsung.com>
Date: Wed, 21 Aug 2019 10:20:34 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023C709356F9EBE0CA4E3C8EEAB0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHJsWRmVeSWpSXmKPExsWy7bCmvm757JhYg+Nz+CwOHdvKbvH19ClG
 i5eHNC2m793EZnH+/AZ2i7NNb9gtbjXIWKy4+5HVYtPja6wWn3uPMFrcblzBZnHm9CVWi65D
 f9ksNn71cODzeH+jld1jwaZSj02rOtk87lzbw+axeUm9x8Z3O5g8Dr7bw+Sx5Wo7i0ffllWM
 Hp83yQVwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpamCsp5CXmptoqufgE6Lpl
 5gBdr6RQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpsCzQK07MLS7NS9dLzs+1MjQw
 MDIFKkzIzjix8jFjwTylip41d5gbGF9LdzFyckgImEgse3+AuYuRi0NIYAejxK2PDawQzidG
 iUW/OtggnG9AzrXNbDAtqz8sZodI7GWUmPvwHVTVe0aJxT03GEGqhAWsJZZ9nMUMYosI6Eq8
 fjsJbAmzwC8WibVNDSwgCTYBLYn9L26AjeUXUJS4+uMxWDOvgJ3E2XVTwJpZBFQlJk7qAKsX
 FYiQ+PTgMCtEjaDEyZlPwOKcArESm3+cBoszC4hL3HoynwnClpdo3jobbLGEwDF2iZ1/JrFC
 /OAisfP+FRYIW1ji1fEt7BC2lMTL/jYou1pi5ckjbBDNHYwSW/ZfgGo2lti/dDLQBg6gDZoS
 63fpQ4QVJXb+nssIYfNKNGz8zQ5xBJ/Eu689rCDlIPGONiGIEmWJyw/uMk1gVJ6F5J1ZSF6Y
 heSFWQjLFjCyrGIUSy0ozk1PLTYsMEWO702M4LStZbmD8dg5n0OMAhyMSjy8CdejY4VYE8uK
 K3MPMUpwMCuJ8FbMiYoV4k1JrKxKLcqPLyrNSS0+xGgKDO2JzFKiyfnAnJJXEm9oamRsbGxh
 YmhmamioJM678IdFrJBAemJJanZqakFqEUwfEwenVAMjT/RvlscFW0J+p4Uf3zVTYsqMxl/Z
 nl9tAzZ5rihZJnaWUXHnPvt0j/um0xiXLIy5q16lnyonYbCqdK244ju/jZZMm4Miwh4r9+7S
 ucJkqH36FkvEzCK9TI90DrWqHcnHZ17xN76/9Ou7WAWHXbN/Kp6ZWPLpf5ew2MnydO0XMz3P
 hRbrrk1RYinOSDTUYi4qTgQA+gF1tfEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsWy7bCSnG7Z7JhYg/dL1C0OHdvKbvH19ClG
 i5eHNC2m793EZnH+/AZ2i7NNb9gtbjXIWKy4+5HVYtPja6wWn3uPMFrcblzBZnHm9CVWi65D
 f9ksNn71cODzeH+jld1jwaZSj02rOtk87lzbw+axeUm9x8Z3O5g8Dr7bw+Sx5Wo7i0ffllWM
 Hp83yQVwRXHZpKTmZJalFunbJXBlnFj5mLFgnlJFz5o7zA2Mr6W7GDk5JARMJFZ/WMzexcjF
 ISSwm1Fi9penLBAJSYlpF48ydzFyANnCEocPF0PUvGWUuDX5KhNIjbCAtcSyj7OYQWwRAV2J
 128nMYMUMQs0sUocmfOHDaLjG7PExDkPWUGq2AS0JPa/uMEGYvMLKEpc/fGYEcTmFbCTOLtu
 CtgkFgFViYmTOsCuEBWIkDi8YxZUjaDEyZlPwOKcArESm3+cBpvJLKAu8WfeJWYIW1zi1pP5
 TBC2vETz1tnMExiFZyFpn4WkZRaSlllIWhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dL
 zs/dxAiOXy3NHYyXl8QfYhTgYFTi4d1xMzpWiDWxrLgy9xCjBAezkghvxZyoWCHelMTKqtSi
 /Pii0pzU4kOM0hwsSuK8T/OORQoJpCeWpGanphakFsFkmTg4pRoYm7ODQnfc2BRe/sOo91ny
 EtXYBs/PBzZ/WSt6heGI3OWn3vtqystfm3889OzQ0ha1FcHGK9Z95g8o3qfFGRlwttF40Wa2
 2i2tK+qfKVmndvFfv67J1qNxU/70npX91Zqbn7ziWbApQqml3mjC3+2VDhy/vcLvb1x8Tsr6
 gpbHz14hnozmPxs6lViKMxINtZiLihMBo5hgi9sCAAA=
X-CMS-MailID: 20190821011638epcas1p1a834510ab4159ed52ff73559015042e9
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160
References: <CGME20190808143919epcas4p33c93a5a3d4df1032fa84ddad9110a160@epcas4p3.samsung.com>
 <e45c28528ff941abb1f72fdb1eedf65fb3345c5a.1565274802.git.leonard.crestez@nxp.com>
 <b3941b19-f0aa-87a6-d50a-299d07a26532@samsung.com>
 <VI1PR04MB7023EB13BB2DE94814B38477EED20@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <a9328230-96f3-6bab-826a-bb199de4ad48@samsung.com>
 <195bef25-5235-4c24-cc7a-48d368da3bbd@samsung.com>
 <VI1PR04MB7023C709356F9EBE0CA4E3C8EEAB0@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_181648_666042_836B0DB8 
X-CRM114-Status: GOOD (  29.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDIxLiDsmKTsoIQgMTI6MjYsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBPbiA4
LzE0LzIwMTkgNDoxNCBBTSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBPbiAxOS4gOC4gMTQuIOyY
pOyghCAxMDowNiwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+Pj4gT24gMTkuIDguIDEzLiDsmKTtm4Qg
ODoyNywgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+Pj4+IE9uIDEzLjA4LjIwMTkgMDk6MTAsIENo
YW53b28gQ2hvaSB3cm90ZToKPj4+Pj4gSW4gY2FzZSBvZiBjcHVmcmVxLCBjcHVmcmVxLmMgcmVw
bGFjZSB0aGUgYm9keSBvZiBzdG9yZV9taW5fZnJlcSgpCj4+Pj4+IGFuZCBzdG9yZV9tYXhfZnJl
cSgpIGJ5IHVzaW5nIHN0cnVjdCBkZXZfcG1fcW9zX3JlcXVlc3QgaW5zdGFuY2NlCj4+Pj4+IHdp
dGggZGV2X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgpLgo+Pj4+Pgo+Pj4+PiBJZiB5b3UgdXNlIHRo
ZSBuZXcgd2F5IHdpdGggZGV2X3BtX3Fvc191cGRhdGVfcmVxdWVzdCgpIGZvcgo+Pj4+PiBtaW5f
ZnJlcV9zdG9yZSgpIGFuZCBtYXhfZnJlcV9zdG9yZSgpLCBpdCBkb2Vzbid0IG5lZWQgdG8KPj4+
Pj4gZ2V0IHRoZSBmaW5hbCBmcmVxdWVuY3kgZnJvbSB0aHJlZSBjYW5kaWRhdGUgZnJlcXVlbmNp
ZXMuCj4+Pj4KPj4+PiBZZXMsIEkgc2F3IHRoYXQgYnV0IGRpZG4ndCBpbXBsZW1lbnQgdGhlIGVx
dWl2YWxlbnQgZm9yIGRldmZyZXEgYmVjYXVzZQo+Pj4+IGl0J3Mgbm90IGNsZWFyIHdoYXQgdGhl
cmUgaXMgdG8gZ2Fpbi4KPj4+Cj4+PiBJIHRoaW5rIHRoYXQgaXQgaXMgY2xlYXIuIEp1c3QgdXNl
IHRoZSBkZXZfcG1fcW9zX3JlcXVlc3QgaW50ZXJmYWNlCj4+PiBmb3IgYm90aCB1c2VyIGlucHV0
IHRocm91Z2ggc3lzZnMgYW5kIGRldmljZSBpbnB1dCB3aXRoIHFvcyByZXF1ZXN0Lgo+Pj4gQWxy
ZWFkeSBQTV9RT1MgaGFzIHRoZSBmZWF0dXJlIHRvIGdldCB0aGUgZmluYWwgZnJldWVuY3kgYW1v
bmcKPj4+IHRoZSBtdWx0aXBsZSByZXF1ZXN0LiBXaGVuIHVzZSB0aGUgZGV2X3BtX3FvcyByZXF1
ZXN0LCB0aGUgZGV2ZnJlcQo+Pj4gZG9lc24ndCBuZWVkIHRvIGNvbXBhcmUgYmV0d2VlbiB1c2Vy
IGlucHV0IGFuZCBkZXZpY2UgaW5wdXQgd2l0aCBxb3MuCj4+PiBJdCBtYWtlIGRldmZyZXEgY29y
ZSBtb3JlIGNsZWFyIGFuZCBzaW1wbGUKPiAKPj4+PiBTaW5jZSBkZXZfcG1fcW9zIGlzIG1lYXN1
cmVkIGluIGtoeiBpdCBtZWFucyB0aGF0IG1pbl9mcmVxL21heF9yZXEgb24KPj4+PiBzeXNmcSB3
b3VsZCBsb3NlIDMgc2lnbmlmaWNhbnQgZGlnaXRzLCBob3dldmVyIHRob3NlIGRpZ2l0cyBhcmUg
cHJvYmFibHkKPj4+PiB1c2VsZXNzIGFueXdheS4KPj4+Cj4+PiBJIHRoaW5rIHRoYXQgaXQgZG9l
c24ndCBtYXR0ZXIuIFRoaXMgcGF0Y2ggYWxyZWFkeSBjb25zaWRlcnMgdGhlIHRoaXMgaXNzdWUK
Pj4+IGJ5IHVzaW5nICcqIDEwMDAnLiBXZSBjYW4gZ2V0IGVpdGhlciBLSHogb3IgTUh6IHdpdGgg
YWRkaXRpb25hbCBvcGVyYXRpb24uCj4+PiBJIHRoaW5rIHRoYXQgaXQgaXMgbm90IHByb2JsZW0u
Cj4gCj4gSXQgaW50cm9kdWNlcyB0aGUgZm9sbG93aW5nIGlzc3VlOgo+IAo+ICMgZWNobyAzMzMz
MzMzMzMgPiAvc3lzL2NsYXNzL2RldmZyZXEvZGV2ZnJlcTAvbWluX2ZyZXEKPiAjIGNhdCAvc3lz
L2NsYXNzL2RldmZyZXEvZGV2ZnJlcTAvbWluX2ZyZXEKPiAzMzMzMzMwMDAKPiAKPiBDaGFuZ2lu
ZyByb3VuZGluZyBydWxlcyBjb3VsZCBjb25mdXNlIHVzZXJzcGFjZSB0b29scy4gVGhpcyBpcyBu
b3QgCj4gZW50aXJlbHkgYSBuZXcgaXNzdWUgYmVjYXVzZSBmcmVxIHZhbHVlcyB3aGljaCBhcmUg
bm90IGFuIGludGVnZXIgbnVtYmVyIAo+IG9mIGtoeiBhcmUgbGlrZWx5IG5vdCBhbiBpbnRlZ2Vy
IG51bWJlciBvZiBoeiBlaXRoZXIuCgpBcyBJIGtuZXcgdGhhdCwgdXNlciBkb24ndCBuZWVkIHRv
IGVudGVyIHRoZSBwZXJmZWN0IHN1cHBvcnRlZCBjbG9jawpvZiBkZXZmcmVxMCBiZWNhdXNlIHRo
ZSBmaW5hbCBmcmVxdWVuY3kgaXMgZGVjaWRlZCBieSBkZXZpY2UgZHJpdmVyCndpdGggc29tZSBs
aW1pdGF0aW9ucyBsaWtlIHRoZSByYW5nZSBvZiBoL3cgY2xvY2suCgpUaGUgdXNlciBjYW4gaW5w
dXQgdGhlIHdhbnRlZCBmcmVxdWVuY3kgbGlrZSAzMzMzMzMzMzMsCmJ1dCwgdGhlIGRldmljZSBk
cml2ZXIgdHJ5IHRvIGZpbmQgdGhlIHNpbWlsYXIgZnJlcXVlbmN5IHdpdGggcG9saWN5CmFuZCB0
aGUgY2FuIGRlY2lkZSB0aGUgZmluYWwgc3VwcG9ydGVkIGZyZXF1ZW5jeSBiZWNhdXNlIHRoZSBo
L3cgY2xvY2sKZm9yIGRldmZyZXEwIG1pZ2h0IG5vdCBzdXBwb3J0IHRoZSBwZXJmZWN0IHNhbWUg
Y2xvY2sgZnJlcXVlbmN5IG9mIHVzZXIgaW5wdXQuCgpBbHNvLCBpZiBpdCBpcyB0aGUgcHJvYmxl
bSB0byBsb3NlIHRoZSAzIHNpZ25pZmljYW50IGRpZ2l0cywgCml0IHNob3VsZCBiZSBmaXhlZCBv
biBkZXZfcG1fcW9zLgoKPiAKPj4+IEFjdHVhbGx5LCBJIHRoaW5rIHRoYXQgSSB3YW50IHRvIHVz
ZSB0aGUgb25seSBkZXZfcG1fcW9zX3JlcXVlc3QKPj4+IGZvciBhbGwgZXh0ZXJuYWwgcmVxdWVz
dCBsaWtlIGRldmZyZXEgY29vbGluZyBvZiB0aGVybWFsLAo+Pj4gdXNlciBpbnB1dCB0aHJvdWdo
IHN5c2ZzIGFuZCBkZXZpY2UgcmVxdWVzdCB3aXRoIGRldl9wbV9xb3NfcmVxdWVzdC4KPj4+Cj4+
PiBBbHJlYWR5LCBkZXZfcG1fcW9zX3JlcXVlc3QgaXMgZGVzaWduZWQgdG8gY29uc2lkZXIgdGhl
IG11bHRpcGxlIHJlcXVpcmVtZW50cy4KPj4+IFdlIGRvbid0IG5lZWQgdG8gdXNlIHRoZSB2YXJp
b3VzIG1ldGhvZCAoT1BQIGludGVyZmFjZSwgc3lzZnMgaW5wdXQsIGRldl9wbV9xb3MpCj4+PiBi
ZWNhdXNlIG1ha2UgaXQgbW9yZSBzaW1wbGUgYW5kIGVhc3kuCj4+Pgo+Pj4gSSB0aGluayB0aGF0
IGFmdGVyIGZpbmlzaGVkIHRoZSByZXZpZXcgb2YgdGhpcyBwYXRjaCwgSSB3aWxsIGRvIHJlZmFj
dG9yIHRoZSBkZXZmcmVxX2Nvb2xpbmcuYwo+Pj4gYnkgdXNpbmcgdGhlIGRldl9wbV9xb3NfcmVx
dWVzdC4gT3IsIGlmIHRoZXJlIGFyZSBzb21lIHZvbHVudGVlZXIsCj4+Cj4+IFNvcnJ5LCBJIHdv
dWxkIHdpdGhkcmF3IHRoZSB0aGlzIG9waW5pb24gYWJvdXQgcmVwbGFjaW5nCj4+IHRoZSBPUFAg
ZW5hYmxlL2Rpc2FibGUgaW50ZXJmYWNlIHdpdGggdGhlIGRldl9wbV9xb3NfcmVxdWVzdAo+PiBi
ZWNhdXNlIGV2ZW4gaWYgZGV2ZnJlcS1jb29saW5nLmMgbmVlZHMgdGhlICdkZXYnIGluc3RhbmNl
Cj4+IHRvIHVzZSB0aGUgZGV2X3BtX3Fvc19yZXF1ZXN0IG1ldGhvZCwgaXQgaXMgbm90IGNsZWFy
IHVudGlsIG5vdy4KPj4gSXQgbmVlZHMgaG93IHRvIGdldCB0aGUgZGV2aWNlIGluc3RhbmNlIG9m
IGRldmZyZXEgb24gZGV2aWNlLXRyZWUuCj4gCj4gSSBsb29rZWQgYSBiaXQgYXQgdGhlIGRldmZy
ZXEtY29vbGluZyBpbXBsZW1lbnRhdGlvbiBhbmQgaXQgc2VlbXMgbGlrZSAKPiB0aGVyZSBhcmVu
J3QgYW55IHVzZXJzIGluIHVwc3RyZWFtPwoKUmlnaHQuIHRoZXJlIGFyZSBubyB1cHN0cmVhbSBw
YXRjaC4gQnV0LCBBUk0gZGV2ZWxvcGVyIGNvbnRyaWJ1dGVkCnRoZSBkZXZmcmVxLWNvb2xpbmcu
YyBpbiBvcmRlciB0byBjb250cm9sIEFSTSBNYWxpIGZyZXF1ZW5jeQphY2NvcmRpbmcgdG8gdGVt
cGVyYXR1cmUuIElmIHlvdSB3YW50LCB5b3UgY2FuIGNoZWNrCnRoZSByZWZlcmVuY2UgY29kZSBm
cm9tIEFSTSBNYWxpIGtlcm5lbCBkcml2ZXIuCgo+IAo+IEFzIGZhciBhcyBJIGNhbiB0ZWxsIGEg
ZGV2ZnJlcSBpbXBsZW1lbnRhdGlvbiBuZWVkcyB0byBjYWxsIAo+IG9mX2RldmZyZXFfY29vbGlu
Z19yZWdpc3RlciBhbmQgdGhlbiB0aGUgZGV2ZnJlcSBjb29saW5nIGNvZGUgY291bGQgCj4gcmVn
aXN0ZXIgYSBkZXZfcG1fcW9zIHJlcXVlc3Qgb24gZGV2ZnJlcS0+ZGV2LnBhcmVudC4gSSdtIG5v
dCBzdXJlIEkgCj4gdW5kZXJzdGFuZCB3aGF0IHByb2JsZW0geW91IHNlZS4KCkFoLiB5b3UncmUg
cmlnaHQuIEl0IGlzIG15IG1pc3VuZGVyc3RhbmQuIEkgdGhvdWdoIHRoYXQgdGhlcmUgYXJlIG5v
CmFueSB3YXkgdG8gZ2V0IHRoZSAnZGV2ZnJlcScgaW5zdGFuY2UgZnJvbSBkZXZpY2UgdHJlZS4g
QnV0LCBJIGNoZWNrZWQKdGhlIGRldmZyZXEtY29vbGluZy5jIGFnYWluLCBhcyB5b3UgY29tbWVu
dGVkLCB0aGUgZGV2ZnJlcS1jb29saW5nLmMKcHJvdmlkZXMgdGhlIG9mX2RldmZyZXFfY29vbGlu
Z19yZWlnc3RlcigpLgoKCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBF
bGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
