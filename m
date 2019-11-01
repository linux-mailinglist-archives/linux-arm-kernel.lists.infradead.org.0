Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A179EBBDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltgb5Izw9uK14DfuAYSEyRmhk8iPKh8pcAKiEg4dAfw=; b=EC4l+O4xgT/Cmo
	B3igXee6tC5O17MI4ZXNJuAQUAymY0MBRd8bsn3uR2jyPxp+5zhAqyOmWZeSQXTLxPDbj7l1VLENX
	8LfFEdMzzrHOg8dgi0ti3N7SEG5b85f/FBQxuFcVPByg3yN5h/tw8cEo/qLIbSi7jXCjN39EAVP7v
	PmbLP5rh1FBrOHvpogVEjq6B1FXQjdCBwrXmYqJsiSC9NTzscGNRUkoKYWwSHj/0v6ch95N+EwXVq
	owU0FRtBGPRLRktZjP0z1wz4icrMQs+AdvTBzGgWJyflJj8RL1PYO/aKyRNRWJHCY9o3lGxzsK2GY
	Jj4g2U39OWcYB7BbuLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMM1-0001u0-54; Fri, 01 Nov 2019 02:07:57 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMLr-0001sK-5w
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:07:49 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191101020741epoutp028c2de7814db0b3d3b3473797a4f10afc~S58bfW-_l2699326993epoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 Nov 2019 02:07:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191101020741epoutp028c2de7814db0b3d3b3473797a4f10afc~S58bfW-_l2699326993epoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572574061;
 bh=Mjkj938/enFh7TXgaZ4m6p1lCXUWvuW9Fi6TAR5IgyY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=UQI/U/mQ0UOLZsR749FoTtbV97Y3bFFCvqC4JmhF8yi1GM3YSE/sxtoQ706aP5VXj
 ANXgMgfhuqj8TvDCLhr8KlYN4kwTe7q7TO2pJJVNCZeRN165vu1iBojXwKvPkPHKCN
 fL4BxPHGRO+811nTZQ2Cn8HbetiGwunDVpn6gDkc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191101020740epcas1p2aa32d253a377589e7581435ad5e84c8c~S58amUT1O0469504695epcas1p2W;
 Fri,  1 Nov 2019 02:07:40 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.155]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4745Dk4NC4zMqYlr; Fri,  1 Nov
 2019 02:07:34 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 EC.6A.04068.6639BBD5; Fri,  1 Nov 2019 11:07:34 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191101020733epcas1p26a7edb3b5ccfc94dba4457a1f6fda43e~S58ULdvBy0471704717epcas1p2H;
 Fri,  1 Nov 2019 02:07:33 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191101020733epsmtrp219afc68ffdf8456c7c4b7d35e274d609~S58UKYD2D0860008600epsmtrp2U;
 Fri,  1 Nov 2019 02:07:33 +0000 (GMT)
X-AuditID: b6c32a39-f47ff70000000fe4-88-5dbb936682dd
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5D.05.25663.5639BBD5; Fri,  1 Nov 2019 11:07:33 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191101020733epsmtip1151317cac9cd94cb06cd606ab23fc878~S58T2ig891794917949epsmtip1X;
 Fri,  1 Nov 2019 02:07:33 +0000 (GMT)
Subject: Re: [PATCH v10 06/11] PM / QoS: Reorder pm_qos/freq_qos/dev_pm_qos
 structs
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <072ef916-1753-ddc9-0fe8-7704b85def7a@samsung.com>
Date: Fri, 1 Nov 2019 11:13:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <254e9ed653c7d9d866a860673629d02351c1afd8.1572556786.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPJsWRmVeSWpSXmKPExsWy7bCmvm7a5N2xBm2zlS0OHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW6y4+5HVYtPja6wWXb9WMlt87j3CaPF5w2NGi9uNK9gs
 Vp87yGZx5vQloOyhv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyWPL1XYWj74tqxg9Pm+SC+COyrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1
 tLQwV1LIS8xNtVVy8QnQdcvMAXpHSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNg
 WaBXnJhbXJqXrpecn2tlaGBgZApUmJCdcfvyD5aCZbIVTxpbmRsYd4p3MXJySAiYSCy7NJGt
 i5GLQ0hgB6PEnttfGSGcT4wSvbM7oDLfGCWebNjCDtOy/PkFqMReRokbzZeYIJz3jBKTPh1l
 A6kSFgiVOHmijRkkISKwjlHiz+EusCpmgQfMEpOm/mYEqWIT0JLY/+IGWAe/gKLE1R+PweK8
 AnYSz9vegNksAioSK740AdVwcIgKREic/poIUSIocXLmExYQm1MgTqJl8lcmEJtZQFzi1pP5
 ULa8RPPW2WBHSAjcYpd4PeMXI8QPLhJPf/eyQNjCEq+Ow/wmJfH53V42CLtaYuXJI2wQzR2M
 Elv2X2CFSBhL7F86mQnkIGYBTYn1u/QhwooSO3/PZYRYzCfx7msPK0iJhACvREebEESJssTl
 B3eZIGxJicXtnWwTGJVmIXlnFpIXZiF5YRbCsgWMLKsYxVILinPTU4sNC0yR43sTIzixa1nu
 YDx2zucQowAHoxIP74yu3bFCrIllxZW5hxglOJiVRHi/2eyMFeJNSaysSi3Kjy8qzUktPsRo
 CgzsicxSosn5wKyTVxJvaGpkbGxsYWJoZmpoqCTO67h8aayQQHpiSWp2ampBahFMHxMHp1QD
 o/FZE+Nt1VtyXry4uPxUh/E5hsQYful2H6a175ZW3/x9aPsv90DGZxLtm1e32hmeSPZOZzj/
 zmr5xf6w/c5f5M15LWrn6zN69k5UkCmcH8lR61Ire8i8ozt3l8KEaFWFRFZBxy9/Vi+51Nv9
 wnDXm+8Tk3eyqrFf5Uvnn22zREhf1MmyRv6dEktxRqKhFnNRcSIAhmHqiwIEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsWy7bCSnG7q5N2xBnvOCVkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM3izOlLQNlDf9ksNn71cBDweH+jld1jdsNFFo8Fm0o9Nq3qZPO4c20Pm8fmJfUeG9/t
 YPI4+G4Pk8eWq+0sHn1bVjF6fN4kF8AdxWWTkpqTWZZapG+XwJVx+/IPloJlshVPGluZGxh3
 incxcnJICJhILH9+ga2LkYtDSGA3o8TjtjlsEAlJiWkXjzJ3MXIA2cIShw8XQ9S8ZZSY/PQD
 WI2wQKjEyRNtzCAJEYENjBIrt/5lAnGYBR4xS2w79BVq7CNGiePTmphBWtgEtCT2v7gB1s4v
 oChx9cdjRhCbV8BO4nnbGzCbRUBFYsWXJrAaUYEIiefbb0DVCEqcnPmEBcTmFIiTaJn8lQnE
 ZhZQl/gz7xIzhC0ucevJfKi4vETz1tnMExiFZyFpn4WkZRaSlllIWhYwsqxilEwtKM5Nzy02
 LDDKSy3XK07MLS7NS9dLzs/dxAiOcS2tHYwnTsQfYhTgYFTi4Z3RtTtWiDWxrLgy9xCjBAez
 kgjvN5udsUK8KYmVValF+fFFpTmpxYcYpTlYlMR55fOPRQoJpCeWpGanphakFsFkmTg4pRoY
 C/f7ufq1XufsZDybd+xq5bRcFbN8mWObLF1DQ2KXbNXaU84Zzbj0Ks/hqXkqzPLXphR1LpPp
 Xmq+ieFEB5Oy357XMxhY9z7iU5Xse2/m5N10Smx9WdnlSd8tqmNeK2vvXzF5dp/8tES1owaV
 W/1l4v/z2r8rPbCpmfPd5OBtPyVUxQ9N/e2gxFKckWioxVxUnAgAmOw9Ze0CAAA=
X-CMS-MailID: 20191101020733epcas1p26a7edb3b5ccfc94dba4457a1f6fda43e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191031213442epcas1p41dc9214e98c05c634647ef06cdd0a7f3
References: <cover.1572556786.git.leonard.crestez@nxp.com>
 <CGME20191031213442epcas1p41dc9214e98c05c634647ef06cdd0a7f3@epcas1p4.samsung.com>
 <254e9ed653c7d9d866a860673629d02351c1afd8.1572556786.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_190747_737819_B521C946 
X-CRM114-Status: GOOD (  23.03  )
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
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKCldoeSBkbyB5b3UgYWRkIHRoZSBuZXcgcGF0Y2hlcyBvbiB2MTAgKHBhdGNo
Ni83LzgpCmluIHRoaXMgc2VyaWVzPyBJZiB5b3UgdGhpbmsgdGhhdCBuZWVkIHRvIHVwZGF0ZQp0
aGUgcG1fcW9zIGNvcmUsIHlvdSBoYXZlIHRvIHNlbmQgdGhlIG5ldyBwYXRjaHNldApvbiBzZXBh
cmF0ZSBtYWlsIHRocmVhZC4gSXQgbWFrZSB0aGUgZGlmZmljdWx0CnRvIG1lcmdlIHRoZSBQTV9R
b1Mgc3VwcG9ydCBvZiBkZXZmcmVxLgoKUGxlYXNlIHNwbGl0IG91dCB0aGUgcGF0Y2g2LzcvOCBm
cm9tIHRoaXMgc2VyaWVzLgoKT24gMTkuIDExLiAxLiDsmKTsoIQgNjozNCwgTGVvbmFyZCBDcmVz
dGV6IHdyb3RlOgo+IFRoaXMgYWxsb3dzIGRldl9wbV9xb3MgdG8gZW1iZWQgZnJlcV9xb3Mgc3Ry
dWN0cywgd2hpY2ggaXMgZG9uZSBpbiB0aGUKPiBuZXh0IHBhdGNoLiBTZXBhcmF0ZSBjb21taXQg
dG8gbWFrZSBpdCBlYXNpZXIgdG8gcmV2aWV3Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQg
Q3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvbGludXgv
cG1fcW9zLmggfCA3NCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BtX3Fvcy5oIGIvaW5jbHVkZS9saW51eC9wbV9x
b3MuaAo+IGluZGV4IGMzNWZmMjFlOGE0MC4uYThlMTQ4NmUzMjAwIDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvcG1fcW9zLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L3BtX3Fvcy5oCj4gQEAg
LTQ3LDI1ICs0NywxMCBAQCBzdHJ1Y3QgcG1fcW9zX3JlcXVlc3Qgewo+ICBzdHJ1Y3QgcG1fcW9z
X2ZsYWdzX3JlcXVlc3Qgewo+ICAJc3RydWN0IGxpc3RfaGVhZCBub2RlOwo+ICAJczMyIGZsYWdz
OwkvKiBEbyBub3QgY2hhbmdlIHRvIDY0IGJpdCAqLwo+ICB9Owo+ICAKPiAtZW51bSBkZXZfcG1f
cW9zX3JlcV90eXBlIHsKPiAtCURFVl9QTV9RT1NfUkVTVU1FX0xBVEVOQ1kgPSAxLAo+IC0JREVW
X1BNX1FPU19MQVRFTkNZX1RPTEVSQU5DRSwKPiAtCURFVl9QTV9RT1NfRkxBR1MsCj4gLX07Cj4g
LQo+IC1zdHJ1Y3QgZGV2X3BtX3Fvc19yZXF1ZXN0IHsKPiAtCWVudW0gZGV2X3BtX3Fvc19yZXFf
dHlwZSB0eXBlOwo+IC0JdW5pb24gewo+IC0JCXN0cnVjdCBwbGlzdF9ub2RlIHBub2RlOwo+IC0J
CXN0cnVjdCBwbV9xb3NfZmxhZ3NfcmVxdWVzdCBmbHI7Cj4gLQl9IGRhdGE7Cj4gLQlzdHJ1Y3Qg
ZGV2aWNlICpkZXY7Cj4gLX07Cj4gLQo+ICBlbnVtIHBtX3Fvc190eXBlIHsKPiAgCVBNX1FPU19V
TklUSUFMSVpFRCwKPiAgCVBNX1FPU19NQVgsCQkvKiByZXR1cm4gdGhlIGxhcmdlc3QgdmFsdWUg
Ki8KPiAgCVBNX1FPU19NSU4sCQkvKiByZXR1cm4gdGhlIHNtYWxsZXN0IHZhbHVlICovCj4gIAlQ
TV9RT1NfU1VNCQkvKiByZXR1cm4gdGhlIHN1bSAqLwo+IEBAIC04OCwxMCArNzMsNDggQEAgc3Ry
dWN0IHBtX3Fvc19jb25zdHJhaW50cyB7Cj4gIHN0cnVjdCBwbV9xb3NfZmxhZ3Mgewo+ICAJc3Ry
dWN0IGxpc3RfaGVhZCBsaXN0Owo+ICAJczMyIGVmZmVjdGl2ZV9mbGFnczsJLyogRG8gbm90IGNo
YW5nZSB0byA2NCBiaXQgKi8KPiAgfTsKPiAgCj4gKwo+ICsjZGVmaW5lIEZSRVFfUU9TX01JTl9E
RUZBVUxUX1ZBTFVFCTAKPiArI2RlZmluZSBGUkVRX1FPU19NQVhfREVGQVVMVF9WQUxVRQkoLTEp
Cj4gKwo+ICtlbnVtIGZyZXFfcW9zX3JlcV90eXBlIHsKPiArCUZSRVFfUU9TX01JTiA9IDEsCj4g
KwlGUkVRX1FPU19NQVgsCj4gK307Cj4gKwo+ICtzdHJ1Y3QgZnJlcV9jb25zdHJhaW50cyB7Cj4g
KwlzdHJ1Y3QgcG1fcW9zX2NvbnN0cmFpbnRzIG1pbl9mcmVxOwo+ICsJc3RydWN0IGJsb2NraW5n
X25vdGlmaWVyX2hlYWQgbWluX2ZyZXFfbm90aWZpZXJzOwo+ICsJc3RydWN0IHBtX3Fvc19jb25z
dHJhaW50cyBtYXhfZnJlcTsKPiArCXN0cnVjdCBibG9ja2luZ19ub3RpZmllcl9oZWFkIG1heF9m
cmVxX25vdGlmaWVyczsKPiArfTsKPiArCj4gK3N0cnVjdCBmcmVxX3Fvc19yZXF1ZXN0IHsKPiAr
CWVudW0gZnJlcV9xb3NfcmVxX3R5cGUgdHlwZTsKPiArCXN0cnVjdCBwbGlzdF9ub2RlIHBub2Rl
Owo+ICsJc3RydWN0IGZyZXFfY29uc3RyYWludHMgKnFvczsKPiArfTsKPiArCj4gKwo+ICtlbnVt
IGRldl9wbV9xb3NfcmVxX3R5cGUgewo+ICsJREVWX1BNX1FPU19SRVNVTUVfTEFURU5DWSA9IDEs
Cj4gKwlERVZfUE1fUU9TX0xBVEVOQ1lfVE9MRVJBTkNFLAo+ICsJREVWX1BNX1FPU19GTEFHUywK
PiArfTsKPiArCj4gK3N0cnVjdCBkZXZfcG1fcW9zX3JlcXVlc3Qgewo+ICsJZW51bSBkZXZfcG1f
cW9zX3JlcV90eXBlIHR5cGU7Cj4gKwl1bmlvbiB7Cj4gKwkJc3RydWN0IHBsaXN0X25vZGUgcG5v
ZGU7Cj4gKwkJc3RydWN0IHBtX3Fvc19mbGFnc19yZXF1ZXN0IGZscjsKPiArCX0gZGF0YTsKPiAr
CXN0cnVjdCBkZXZpY2UgKmRldjsKPiArfTsKPiArCj4gIHN0cnVjdCBkZXZfcG1fcW9zIHsKPiAg
CXN0cnVjdCBwbV9xb3NfY29uc3RyYWludHMgcmVzdW1lX2xhdGVuY3k7Cj4gIAlzdHJ1Y3QgcG1f
cW9zX2NvbnN0cmFpbnRzIGxhdGVuY3lfdG9sZXJhbmNlOwo+ICAJc3RydWN0IHBtX3Fvc19mbGFn
cyBmbGFnczsKPiAgCXN0cnVjdCBkZXZfcG1fcW9zX3JlcXVlc3QgKnJlc3VtZV9sYXRlbmN5X3Jl
cTsKPiBAQCAtMjUzLDMxICsyNzYsMTAgQEAgc3RhdGljIGlubGluZSBzMzIgZGV2X3BtX3Fvc19y
YXdfcmVzdW1lX2xhdGVuY3koc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlyZXR1cm4gUE1f
UU9TX1JFU1VNRV9MQVRFTkNZX05PX0NPTlNUUkFJTlQ7Cj4gIH0KPiAgI2VuZGlmCj4gIAo+IC0j
ZGVmaW5lIEZSRVFfUU9TX01JTl9ERUZBVUxUX1ZBTFVFCTAKPiAtI2RlZmluZSBGUkVRX1FPU19N
QVhfREVGQVVMVF9WQUxVRQkoLTEpCj4gLQo+IC1lbnVtIGZyZXFfcW9zX3JlcV90eXBlIHsKPiAt
CUZSRVFfUU9TX01JTiA9IDEsCj4gLQlGUkVRX1FPU19NQVgsCj4gLX07Cj4gLQo+IC1zdHJ1Y3Qg
ZnJlcV9jb25zdHJhaW50cyB7Cj4gLQlzdHJ1Y3QgcG1fcW9zX2NvbnN0cmFpbnRzIG1pbl9mcmVx
Owo+IC0Jc3RydWN0IGJsb2NraW5nX25vdGlmaWVyX2hlYWQgbWluX2ZyZXFfbm90aWZpZXJzOwo+
IC0Jc3RydWN0IHBtX3Fvc19jb25zdHJhaW50cyBtYXhfZnJlcTsKPiAtCXN0cnVjdCBibG9ja2lu
Z19ub3RpZmllcl9oZWFkIG1heF9mcmVxX25vdGlmaWVyczsKPiAtfTsKPiAtCj4gLXN0cnVjdCBm
cmVxX3Fvc19yZXF1ZXN0IHsKPiAtCWVudW0gZnJlcV9xb3NfcmVxX3R5cGUgdHlwZTsKPiAtCXN0
cnVjdCBwbGlzdF9ub2RlIHBub2RlOwo+IC0Jc3RydWN0IGZyZXFfY29uc3RyYWludHMgKnFvczsK
PiAtfTsKPiAtCj4gIHN0YXRpYyBpbmxpbmUgaW50IGZyZXFfcW9zX3JlcXVlc3RfYWN0aXZlKHN0
cnVjdCBmcmVxX3Fvc19yZXF1ZXN0ICpyZXEpCj4gIHsKPiAgCXJldHVybiAhSVNfRVJSX09SX05V
TEwocmVxLT5xb3MpOwo+ICB9Cj4gIAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hv
aQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
