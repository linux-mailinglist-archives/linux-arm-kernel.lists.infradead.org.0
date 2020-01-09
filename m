Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25849135759
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFQ+1RrcFgyd2JYW+2ZWkNqxtsCf6KJyJny3RsMkWbY=; b=Cin9uKxZNAqiKR
	KL6qjp4R+3ZePFOabd5N8A3ZqfG1efZ7xFCG1+JPKyOfkUpkjcSH5Pbg8CtpFrtWEAknsL+tQspVT
	zlCQXLu9GqpDzKPbQQ2Lcvl1Fy9Qk9ISB1ubRZM8HOvGoAvgcEBBhzccXh1Ovtd/fb6LrMwx3rgQW
	hJDN+CvZL2YqoxLBm4TcZafTqcFgsvo5QuCOtBb8cmFTHULScZhny8xg7M38uDNff90V/O0gqNKik
	3QT+Bl6APIWf51eHKzwPvAEiJclcx+wJ6p/ORKXTHrN/opKwN0wtCYUY5DhZyb9+IiCFTT0uOPWF+
	o6OImlKbrxNeXH83T/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVLP-0007RD-1O; Thu, 09 Jan 2020 10:47:15 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVLF-0007PS-VR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:47:07 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200109104701epoutp024358a3b0a12e9dd6c79aae814ca5b33c~oMikyM0jf1258612586epoutp02P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  9 Jan 2020 10:47:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200109104701epoutp024358a3b0a12e9dd6c79aae814ca5b33c~oMikyM0jf1258612586epoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578566821;
 bh=q8vj0BcK18G8xmFgVWnFYICGZOyJli/3tcnfk3LTJ8A=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Vhlsglha3Fm/BY5NMERIOFlFGbKnYdhVjVpipaiOuL4mlVuv3qZjQmaQ+PKg17+xY
 UKmRdiHDkRSczn8/6UP4Uzi1++NZrAt5EQZigEq4tW6H/dzmo5DuaddnRucNv9zf91
 38lHeFfFC7jkfOTNziphBIVcDNLl1e3CfLWb6Z/A=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200109104701epcas1p29b302a54bf7ad5b1f453de9d6e965274~oMikScT0K0845108451epcas1p20;
 Thu,  9 Jan 2020 10:47:01 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47tjVB1bSXzMqYkZ; Thu,  9 Jan
 2020 10:46:58 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 20.0F.48498.2A4071E5; Thu,  9 Jan 2020 19:46:58 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200109104657epcas1p41d90cb9037af506897e14e15b0ed43a0~oMihCjHQe2909129091epcas1p48;
 Thu,  9 Jan 2020 10:46:57 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200109104657epsmtrp1a2c3598f84f274456c8b5ffb4bc4a7de~oMihBp2MA0405704057epsmtrp1J;
 Thu,  9 Jan 2020 10:46:57 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-29-5e1704a2a1a7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AA.14.06569.1A4071E5; Thu,  9 Jan 2020 19:46:57 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200109104657epsmtip1cf3e05328ada9f32d7e46b8409ca6f84~oMigv4SII0075600756epsmtip1A;
 Thu,  9 Jan 2020 10:46:57 +0000 (GMT)
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
To: Lukasz Luba <lukasz.luba@arm.com>, robh+dt@kernel.org, krzk@kernel.org,
 heiko@sntech.de, leonard.crestez@nxp.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <22cde618-d51e-2d4d-461e-e2d2c1b52af2@samsung.com>
Date: Thu, 9 Jan 2020 19:54:04 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <b9a1ebe5-e114-3a6b-6081-c794e1341329@arm.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIJsWRmVeSWpSXmKPExsWy7bCmvu4iFvE4g74OTov781oZLeYfOcdq
 8f/Ra1aL/sevmS3On9/AbnG26Q27xYq7H1ktNj2+xmpxedccNovPvUcYLT49+M9sMeP8PiaL
 hU0t7BZrj9xlt1h6/SKTxe3GFWwWrXuPsDsIeqyZt4bRY9OqTjaPzUvqPTa+28Hk0bdlFaPH
 9mvzmD0+b5ILYI/KtslITUxJLVJIzUvOT8nMS7dV8g6Od443NTMw1DW0tDBXUshLzE21VXLx
 CdB1y8wB+kBJoSwxpxQoFJBYXKykb2dTlF9akqqQkV9cYquUWpCSU2BZoFecmFtcmpeul5yf
 a2VoYGBkClSYkJ3x4vBZpoKzyhVnJrYyNzD+ke1i5OSQEDCR2HO7hb2LkYtDSGAHo8SFj7dZ
 IZxPjBKLljyFcr4BZbYvYIZpeXblKBtEYi+jxKmXHVD97xkl1nxYygZSJSwQI/Fx4QZWEFtE
 oExiwp6bjCBFzAI3mCQutyxgB0mwCWhJ7H9xA6yBX0BR4uqPx4wgNq+AncSkzcvAmlkEVCR2
 7nsEFhcVCJM4ua0FqkZQ4uTMJywgNqeAtcSr17/B6pkFxCVuPZnPBGHLSzRvnQ119il2iVkd
 8RC2i0T/qrmsELawxKvjW9ghbCmJl/1tUHa1xMqTR8DelBDoYJTYsv8CVIOxxP6lk4EWcAAt
 0JRYv0sfIqwosfP3XEaIvXwS7772sIKUSAjwSnS0CUGUKEtcfnCXCcKWlFjc3sk2gVFpFpJv
 ZiH5YBaSD2YhLFvAyLKKUSy1oDg3PbXYsMAIObo3MYKTt5bZDsZF53wOMQpwMCrx8DIoicUJ
 sSaWFVfmHmKU4GBWEuE9egMoxJuSWFmVWpQfX1Sak1p8iNEUGNgTmaVEk/OBmSWvJN7Q1MjY
 2NjCxNDM1NBQSZyX48fFWCGB9MSS1OzU1ILUIpg+Jg5OqQZGn2uV/29Iz5SvZUlbrvWV6eJ9
 na9cUvL3bknN2cs0f5PrYcG1089F/9/B9zk9e79h1H3D1Y52F7oNHieu8711yCtHvqY5MGvj
 YWfR9I8H/vQKajPr8B95/Dvm49nP71KC1/DX30x4Hmh4Y+r+irB09V2v+uST66wj3m94z68q
 538rLi0vycxTiaU4I9FQi7moOBEAnoLKzfQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsWy7bCSnO5CFvE4g9tXdCzuz2tltJh/5Byr
 xf9Hr1kt+h+/ZrY4f34Du8XZpjfsFivufmS12PT4GqvF5V1z2Cw+9x5htPj04D+zxYzz+5gs
 Fja1sFusPXKX3WLp9YtMFrcbV7BZtO49wu4g6LFm3hpGj02rOtk8Ni+p99j4bgeTR9+WVYwe
 26/NY/b4vEkugD2KyyYlNSezLLVI3y6BK+PF4bNMBWeVK85MbGVuYPwj28XIySEhYCLx7MpR
 ti5GLg4hgd2MElP/fWaGSEhKTLt4FMjmALKFJQ4fLoaoecsoMefEHiaQGmGBGImPCzewgtgi
 AmUSm9YtZwcpYha4wSRx8PwMVoiOD4wS3d9nM4JUsQloSex/cYMNxOYXUJS4+uMxWJxXwE5i
 0uZlYJNYBFQkdu57BBYXFQiT2LnkMRNEjaDEyZlPWEBsTgFriVevf4PVMwuoS/yZd4kZwhaX
 uPVkPhOELS/RvHU28wRG4VlI2mchaZmFpGUWkpYFjCyrGCVTC4pz03OLDQuM8lLL9YoTc4tL
 89L1kvNzNzGC41hLawfjiRPxhxgFOBiVeHgZlMTihFgTy4orcw8xSnAwK4nwHr0BFOJNSays
 Si3Kjy8qzUktPsQozcGiJM4rn38sUkggPbEkNTs1tSC1CCbLxMEp1cAoxKLu+mJ/QL8pg9OO
 oxfW//qwcGq27BTnjyx/fMQOpZ4Onhj65flN97vteSpF7kq39wUcUkqyddrsZqIrzFhUuerP
 sQnJPTVZbJK7mz7LmJ5ewGL/42FFeX91Cv+0ne7LCzVYtNY4hGtemqvWpDPFlu/HhvrSJR38
 z1kVFkgynA1peRO+eKYSS3FGoqEWc1FxIgAEWzda3wIAAA==
X-CMS-MailID: 20200109104657epcas1p41d90cb9037af506897e14e15b0ed43a0
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
 <b9a1ebe5-e114-3a6b-6081-c794e1341329@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_024706_360461_4CE8A281 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS85LzIwIDc6MzcgUE0sIEx1a2FzeiBMdWJhIHdyb3RlOgo+IEhpIENoYW53b28sCj4gCj4g
T24gMTIvMjAvMTkgMTI6MjQgQU0sIENoYW53b28gQ2hvaSB3cm90ZToKPj4gUHJldmlvdXNseSwg
ZGV2ZnJlcSBjb3JlIHN1cHBvcnQgJ2RldmZyZXEnIHByb3BlcnR5IGluIG9yZGVyIHRvIGdldAo+
PiB0aGUgZGV2ZnJlcSBkZXZpY2UgYnkgcGhhbmRsZS4gQnV0LCAnZGV2ZnJlcScgcHJvcGVydHkg
bmFtZSBpcyBub3QgcHJvcGVyCj4+IG9uIGRldmljZXRyZWUgYmluZGluZyBiZWNhdXNlIHRoaXMg
bmFtZSBkb2Vzbid0IG1lYW4gdGhlIGFueSBoL3cgYXR0cmlidXRlLgo+Pgo+PiBUaGUgZGV2ZnJl
cSBjb3JlIGhhbmQgb3ZlciB0aGUgcmlnaHQgdG8gZGVjaWRlIHRoZSBwcm9wZXJ0eSBuYW1lCj4+
IGZvciBnZXR0aW5nIHRoZSBkZXZmcmVxIGRldmljZSBvbiBkZXZpY2V0cmVlLiBFYWNoIGRldmZy
ZXEgZHJpdmVyCj4+IHdpbGwgZGVjaWRlIHRoZSBwcm9wZXJ0eSBuYW1lIG9uIGRldmljZXRyZWUg
YmluZGluZyBhbmQgdGhlbiBnZXQKPj4gdGhlIGRldmZyZXEgZGV2aWNlIGJ5IHVzaW5nIGRldmZy
ZXFfZ2V0X2RldmZyZXFfYnlfbm9kZSgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaGFud29vIENo
b2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZGV2ZnJlcS9k
ZXZmcmVxLmPCoMKgwqAgfCAzNSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
PiDCoCBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgMTIgKysrKysrKysrKystCj4+IMKg
IGluY2x1ZGUvbGludXgvZGV2ZnJlcS5owqDCoMKgwqDCoCB8wqAgOCAtLS0tLS0tLQo+PiDCoCAz
IGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQ0IGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYyBiL2RyaXZlcnMvZGV2ZnJlcS9k
ZXZmcmVxLmMKPj4gaW5kZXggY2I4Y2E4MWM4OTczLi5jM2QzYzdjODAyYTAgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2Rl
dmZyZXEuYwo+PiBAQCAtOTkxLDQ4ICs5OTEsMTMgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFf
Z2V0X2RldmZyZXFfYnlfbm9kZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCj4+IMKgIMKgwqDC
oMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4+IMKgIH0KPj4gLQo+PiAtLyoKPj4gLSAq
IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZSAtIEdldCB0aGUgZGV2ZnJlcSBkZXZpY2Ug
ZnJvbSBkZXZpY2V0cmVlCj4+IC0gKiBAZGV2IC0gaW5zdGFuY2UgdG8gdGhlIGdpdmVuIGRldmlj
ZQo+PiAtICogQGluZGV4IC0gaW5kZXggaW50byBsaXN0IG9mIGRldmZyZXEKPj4gLSAqCj4+IC0g
KiByZXR1cm4gdGhlIGluc3RhbmNlIG9mIGRldmZyZXEgZGV2aWNlCj4+IC0gKi8KPj4gLXN0cnVj
dCBkZXZmcmVxICpkZXZmcmVxX2dldF9kZXZmcmVxX2J5X3BoYW5kbGUoc3RydWN0IGRldmljZSAq
ZGV2LCBpbnQgaW5kZXgpCj4+IC17Cj4+IC3CoMKgwqAgc3RydWN0IGRldmljZV9ub2RlICpub2Rl
Owo+PiAtwqDCoMKgIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxOwo+PiAtCj4+IC3CoMKgwqAgaWYg
KCFkZXYpCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPj4gLQo+
PiAtwqDCoMKgIGlmICghZGV2LT5vZl9ub2RlKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIEVS
Ul9QVFIoLUVJTlZBTCk7Cj4+IC0KPj4gLcKgwqDCoCBub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShk
ZXYtPm9mX25vZGUsICJkZXZmcmVxIiwgaW5kZXgpOwo+PiAtwqDCoMKgIGlmICghbm9kZSkKPj4g
LcKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwo+PiAtCj4+IC3CoMKgwqAg
ZGV2ZnJlcSA9IGRldmZyZXFfZ2V0X2RldmZyZXFfYnlfbm9kZShub2RlKTsKPj4gLcKgwqDCoCBv
Zl9ub2RlX3B1dChub2RlKTsKPj4gLQo+PiAtwqDCoMKgIHJldHVybiBkZXZmcmVxOwo+PiAtfQo+
PiAtCj4+IMKgICNlbHNlCj4+IMKgIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2dldF9kZXZmcmVx
X2J5X25vZGUoc3RydWN0IGRldmljZV9ub2RlICpub2RlKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAg
cmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4+IMKgIH0KPj4gLQo+PiAtc3RydWN0IGRldmZyZXEg
KmRldmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBp
bmRleCkKPj4gLXsKPj4gLcKgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKPj4gLX0KPj4g
wqAgI2VuZGlmIC8qIENPTkZJR19PRiAqLwo+PiDCoCBFWFBPUlRfU1lNQk9MX0dQTChkZXZmcmVx
X2dldF9kZXZmcmVxX2J5X25vZGUpOwo+PiAtRVhQT1JUX1NZTUJPTF9HUEwoZGV2ZnJlcV9nZXRf
ZGV2ZnJlcV9ieV9waGFuZGxlKTsKPj4gwqAgwqAgLyoqCj4+IMKgwqAgKiBkZXZtX2RldmZyZXFf
cmVtb3ZlX2RldmljZSgpIC0gUmVzb3VyY2UtbWFuYWdlZCBkZXZmcmVxX3JlbW92ZV9kZXZpY2Uo
KQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyBiL2RyaXZlcnMv
ZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4gaW5kZXggN2Y1OTE3ZDU5MDcyLi4xYmM0ZTNjODExMTUg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPj4gKysrIGIvZHJp
dmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+PiBAQCAtODYsNiArODYsMTYgQEAgc3RhdGljIGlu
dCBleHlub3NfYnVzX2dldF9ldmVudChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+PiDCoMKgwqDC
oMKgIHJldHVybiByZXQ7Cj4+IMKgIH0KPj4gwqAgK3N0YXRpYyBzdHJ1Y3QgZGV2ZnJlcSAqZXh5
bm9zX2J1c19nZXRfcGFyZW50X2RldmZyZXEoc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4gK3sK
Pj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5w
LCAiZGV2ZnJlcSIsIDApOwo+PiArCj4+ICvCoMKgwqAgaWYgKCFub2RlKQo+PiArwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gZGV2
ZnJlcV9nZXRfZGV2ZnJlcV9ieV9ub2RlKG5vZGUpOwo+PiArfQo+PiArCj4+IMKgIC8qCj4+IMKg
wqAgKiBkZXZmcmVxIGZ1bmN0aW9uIGZvciBib3RoIHNpbXBsZS1vbmRlbWFuZCBhbmQgcGFzc2l2
ZSBnb3Zlcm5vcgo+PiDCoMKgICovCj4+IEBAIC0zNTMsNyArMzYzLDcgQEAgc3RhdGljIGludCBl
eHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4+
IMKgwqDCoMKgwqAgcHJvZmlsZS0+ZXhpdCA9IGV4eW5vc19idXNfcGFzc2l2ZV9leGl0Owo+PiDC
oCDCoMKgwqDCoMKgIC8qIEdldCB0aGUgaW5zdGFuY2Ugb2YgcGFyZW50IGRldmZyZXEgZGV2aWNl
ICovCj4+IC3CoMKgwqAgcGFyZW50X2RldmZyZXEgPSBkZXZmcmVxX2dldF9kZXZmcmVxX2J5X3Bo
YW5kbGUoZGV2LCAwKTsKPj4gK8KgwqDCoCBwYXJlbnRfZGV2ZnJlcSA9IGV4eW5vc19idXNfZ2V0
X3BhcmVudF9kZXZmcmVxKGRldi0+b2Zfbm9kZSk7Cj4+IMKgwqDCoMKgwqAgaWYgKElTX0VSUihw
YXJlbnRfZGV2ZnJlcSkpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVQUk9CRV9ERUZF
UjsKPj4gwqAgCj4gCj4gVGhlc2UgY2hhbmdlcyB3b24ndCBhcHBseSwgcHJvYmFibHkgSSBuZWVk
IHNvbWUgYmFzZSBmb3IgaXQuCgpJIGRldmVsb3BlZCBpdCBvbiBkZXZmcmVxLW5leHQgYnJhbmNo
WzFdClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9j
aGFud29vL2xpbnV4LmdpdC9sb2cvP2g9ZGV2ZnJlcS1uZXh0CgpBbmQgSSB0cnkgdG8gYXBwbHkg
dGhlc2UgcGF0Y2hzZXQgdG8gbGludXgtbmV4dFsyXSB3aXRoIHRhZ3MvbmV4dC0yMDIwMDEwOS4K
QnV0LCBwYXRjaDEwLzExIG9mIGRldmljZWV0cmVlIGhhcyBzb21lIG1lcmdlIGNvbmZsaWN0CmJl
Y2F1c2UgcGF0Y2hbM10gcmVsYXRlZCB0byBleHlub3MtYnVzIHdhcyBtZXJnZWQuClsyXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5l
eHQuZ2l0L2xvZy8KWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEzMDMy
MzUvCiAgICAtIFt2MiwwLzJdIEV4eW5vczU0MjI6IGZpeCBidXMgcmVsYXRlZCBPUFBzIGZvciBP
ZHJvaWQgWFUzL1hVNC9IQzEKCk9uIG5leHQgdmVyc2lvbiwgSSdsbCByZWJhc2UgaXQgb24gbGF0
ZXN0IHBhdGNoZXMuCgo+IAo+IFJlZ2FyZHMsCj4gTHVrYXN6Cj4gCj4gCj4gCgoKLS0gCkJlc3Qg
UmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
