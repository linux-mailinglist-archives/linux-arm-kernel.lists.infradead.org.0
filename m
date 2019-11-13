Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01976FAA68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 07:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inVIEP0sQIo3Bgph/JFXs4fXRO0Px8pmlAqILNDYUbk=; b=cst7yGOi3NcvsH
	o60iI3Hnz4ZLKV70sZLaTO8T7H7bgOLfvfXi7NFUbdxVupqovdWSWLU9CGqPOYsZmbOvEBXi9Dfsk
	zaT9ywOXUvw2npGpMDQ9UU4pMquEl6nUTlmXxQCuJ2CNx+4U+QdjX4y1fFZHLrJpmcVLXT8L6THTp
	0CsHSx6eOCvaLieIHguuo1Mxm6XR4YIbPo2uOKgH74PhsCAX+uOnb0zHhseAR7oOSQ6eyymkU1pQc
	/1vEi2NG1vkd5l6Q0YPvDlcas5Ngx7J4PMsYRWMEqUz9ulYk7l8T3eLWrLu0zNS6K+M5zBAztEmuN
	jzRkB0Wa9gLyd474i+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmQf-0005mj-Rx; Wed, 13 Nov 2019 06:47:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmQX-0005m4-Jb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 06:46:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD6kppY017248;
 Wed, 13 Nov 2019 00:46:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573627611;
 bh=x2h5LxHXZug+wqRXSRWXSn/T/yqH7K6RNcNFs8WuSfY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ewgsk6hPYVYgRQIXFah+1EWOXyNUNH6YNiZg68tuBuUpxI4fCgQBYElShR9TTeq2q
 QqriaCv6brxq1jVMxJgrYOsVK11yZFf7Il3WOsmYwtErJP7pNMmGMHY7raUgDwSRb9
 qmnPsaT+KmlCTZghM/Z2HtGdOsanHQ5T1GjzHs7s=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD6kpQZ053087;
 Wed, 13 Nov 2019 00:46:51 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 00:46:50 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 00:46:33 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD6kmSq025956;
 Wed, 13 Nov 2019 00:46:49 -0600
Subject: Re: [PATCH] firmware: ti_sci: rm: Add support for tx_tdtype parameter
 for tx channel
To: Tero Kristo <t-kristo@ti.com>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20191025084715.25098-1-peter.ujfalusi@ti.com>
 <b2231065-ae16-8870-03ac-a435f190ee9f@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <31bce7ea-1769-c299-03a6-60c5b699fd7f@ti.com>
Date: Wed, 13 Nov 2019 08:48:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b2231065-ae16-8870-03ac-a435f190ee9f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_224653_751399_BB4374BF 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vinod <vkoul@kernel.org>, grygorii.strashko@ti.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIFRlcm8sCgpPbiAwMS8xMS8yMDE5IDEwLjIzLCBUZXJvIEtyaXN0byB3cm90ZToKPiBP
biAyNS8xMC8yMDE5IDExOjQ3LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gVGhlIHN5c3RlbSBj
b250cm9sbGVyJ3MgcmVzb3VyY2UgbWFuYWdlciBoYXZlIHN1cHBvcnQgZm9yIGNvbmZpZ3VyaW5n
IHRoZQo+PiBURFRZUEUgb2YgVENIQU5fQ0ZHIHJlZ2lzdGVyIG9uIGo3MjFlLgo+PiBXaXRoIHRo
aXMgcGFyYW1ldGVyIHRoZSB0ZWFyZG93biBjb21wbGV0aW9uIGNhbiBiZSBjb250cm9sbGVkOgo+
PiBURFRZUEUgPT0gMDogUmV0dXJuIHdpdGhvdXQgd2FpdGluZyBmb3IgcGVlciB0byBjb21wbGV0
ZSB0aGUgdGVhcmRvd24KPj4gVERUWVBFID09IDE6IFdhaXQgZm9yIHBlZXIgdG8gY29tcGxldGUg
dGhlIHRlYXJkb3duCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51
amZhbHVzaUB0aS5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IFRlcm8gS3Jpc3RvIDx0LWtyaXN0b0B0
aS5jb20+CgpJJ2xsIHRha2UgdGhpcyBwYXRjaCBhcyBwYXJ0IG9mIHRoZSB1cGNvbWluZyB2NiBv
ZiB0aGUgazMgRE1BIHN1cHBvcnQKc2VyaWVzIHRvIG1ha2Ugc3VyZSBpdCBpcyBidWlsZGFibGUg
dW5sZXNzIHNvbWVvbmUgd2lsbCBwaWNrIHRoaXMgZm9yCjUuNS1yYzEuCgotIFDDqXRlcgoKPiAK
Pj4gLS0tCj4+IEhpLAo+Pgo+PiBJIGtub3cgaXQgaXMga2luZCBvZiBnZXR0aW5nIGxhdGUgZm9y
IDUuNSwgYnV0IGNhbiB5b3UgY29uc2lkZXIgdGhpcwo+PiBzbWFsbAo+PiBhZGRpdGlvbiBzbyBJ
IGNhbiBhZGQgdGhlIHN1cHBvcnQgZm9yIGl0IGluIHRoZSBpbml0aWFsIERNQSBkcml2ZXI/Cj4+
Cj4+IFRoYW5rcyBhbmQgcmVnYXJkcywKPj4gUGV0ZXIKPj4KPj4gwqAgZHJpdmVycy9maXJtd2Fy
ZS90aV9zY2kuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4+IMKgIGRyaXZlcnMv
ZmlybXdhcmUvdGlfc2NpLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDcgKysrKysrKwo+
PiDCoCBpbmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJvdG9jb2wuaCB8IDIgKysKPj4gwqAg
MyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Zpcm13YXJlL3RpX3NjaS5jIGIvZHJpdmVycy9maXJtd2FyZS90aV9zY2kuYwo+PiBpbmRl
eCA0MTI2YmU5ZTMyMTYuLmYxM2U0YTk2ZjNiNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9maXJt
d2FyZS90aV9zY2kuYwo+PiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jCj4+IEBAIC0y
NDEyLDYgKzI0MTIsNyBAQCBzdGF0aWMgaW50IHRpX3NjaV9jbWRfcm1fdWRtYXBfdHhfY2hfY2Zn
KGNvbnN0Cj4+IHN0cnVjdCB0aV9zY2lfaGFuZGxlICpoYW5kbGUsCj4+IMKgwqDCoMKgwqAgcmVx
LT5mZGVwdGggPSBwYXJhbXMtPmZkZXB0aDsKPj4gwqDCoMKgwqDCoCByZXEtPnR4X3NjaGVkX3By
aW9yaXR5ID0gcGFyYW1zLT50eF9zY2hlZF9wcmlvcml0eTsKPj4gwqDCoMKgwqDCoCByZXEtPnR4
X2J1cnN0X3NpemUgPSBwYXJhbXMtPnR4X2J1cnN0X3NpemU7Cj4+ICvCoMKgwqAgcmVxLT50eF90
ZHR5cGUgPSBwYXJhbXMtPnR4X3RkdHlwZTsKPj4gwqAgwqDCoMKgwqDCoCByZXQgPSB0aV9zY2lf
ZG9feGZlcihpbmZvLCB4ZmVyKTsKPj4gwqDCoMKgwqDCoCBpZiAocmV0KSB7Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5oIGIvZHJpdmVycy9maXJtd2FyZS90aV9zY2ku
aAo+PiBpbmRleCBmMGQwNjhjMDM5NDQuLjI1NTMyNzE3MWRhZSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9maXJtd2FyZS90aV9zY2kuaAo+PiArKysgYi9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5o
Cj4+IEBAIC05MTAsNiArOTEwLDcgQEAgc3RydWN0IHJtX3RpX3NjaV9tc2dfdWRtYXBfcnhfZmxv
d19vcHRfY2ZnIHsKPj4gwqDCoCAqwqDCoCAxMiAtIFZhbGlkIGJpdCBmb3IgQHJlZgo+PiB0aV9z
Y2lfbXNnX3JtX3VkbWFwX3R4X2NoX2NmZzo6dHhfY3JlZGl0X2NvdW50Cj4+IMKgwqAgKsKgwqAg
MTMgLSBWYWxpZCBiaXQgZm9yIEByZWYgdGlfc2NpX21zZ19ybV91ZG1hcF90eF9jaF9jZmc6OmZk
ZXB0aAo+PiDCoMKgICrCoMKgIDE0IC0gVmFsaWQgYml0IGZvciBAcmVmCj4+IHRpX3NjaV9tc2df
cm1fdWRtYXBfdHhfY2hfY2ZnOjp0eF9idXJzdF9zaXplCj4+ICsgKsKgwqAgMTUgLSBWYWxpZCBi
aXQgZm9yIEByZWYgdGlfc2NpX21zZ19ybV91ZG1hcF90eF9jaF9jZmc6OnR4X3RkdHlwZQo+PiDC
oMKgICoKPj4gwqDCoCAqIEBuYXZfaWQ6IFNvQyBkZXZpY2UgSUQgb2YgTmF2aWdhdG9yIFN1YnN5
c3RlbSB3aGVyZSB0eCBjaGFubmVsIGlzCj4+IGxvY2F0ZWQKPj4gwqDCoCAqCj4+IEBAIC05NzMs
NiArOTc0LDExIEBAIHN0cnVjdCBybV90aV9zY2lfbXNnX3VkbWFwX3J4X2Zsb3dfb3B0X2NmZyB7
Cj4+IMKgwqAgKgo+PiDCoMKgICogQHR4X2J1cnN0X3NpemU6IFVETUFQIHRyYW5zbWl0IGNoYW5u
ZWwgYnVyc3Qgc2l6ZSBjb25maWd1cmF0aW9uCj4+IHRvIGJlCj4+IMKgwqAgKiBwcm9ncmFtbWVk
IGludG8gdGhlIHR4X2J1cnN0X3NpemUgZmllbGQgb2YgdGhlIFRDSEFOX1RDRkcgcmVnaXN0ZXIu
Cj4+ICsgKgo+PiArICogQHR4X3RkdHlwZTogVURNQVAgdHJhbnNtaXQgY2hhbm5lbCB0ZWFyZG93
biB0eXBlIGNvbmZpZ3VyYXRpb24gdG8gYmUKPj4gKyAqIHByb2dyYW1tZWQgaW50byB0aGUgdGR0
eXBlIGZpZWxkIG9mIHRoZSBUQ0hBTl9UQ0ZHIHJlZ2lzdGVyOgo+PiArICogMCAtIFJldHVybiBp
bW1lZGlhdGVseQo+PiArICogMSAtIFdhaXQgZm9yIGNvbXBsZXRpb24gbWVzc2FnZSBmcm9tIHJl
bW90ZSBwZWVyCj4+IMKgwqAgKi8KPj4gwqAgc3RydWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhf
Y2hfY2ZnX3JlcSB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHRpX3NjaV9tc2dfaGRyIGhkcjsKPj4g
QEAgLTk5NCw2ICsxMDAwLDcgQEAgc3RydWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hfY2Zn
X3JlcSB7Cj4+IMKgwqDCoMKgwqAgdTE2IGZkZXB0aDsKPj4gwqDCoMKgwqDCoCB1OCB0eF9zY2hl
ZF9wcmlvcml0eTsKPj4gwqDCoMKgwqDCoCB1OCB0eF9idXJzdF9zaXplOwo+PiArwqDCoMKgIHU4
IHR4X3RkdHlwZTsKPj4gwqAgfSBfX3BhY2tlZDsKPj4gwqAgwqAgLyoqCj4+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJvdG9jb2wuaAo+PiBiL2luY2x1ZGUvbGlu
dXgvc29jL3RpL3RpX3NjaV9wcm90b2NvbC5oCj4+IGluZGV4IDk1MzFlYzgyMzI5OC4uZjNhZWQw
YjkxNTY0IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJvdG9j
b2wuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L3NvYy90aS90aV9zY2lfcHJvdG9jb2wuaAo+PiBA
QCAtMzQyLDYgKzM0Miw3IEBAIHN0cnVjdCB0aV9zY2lfbXNnX3JtX3VkbWFwX3R4X2NoX2NmZyB7
Cj4+IMKgICNkZWZpbmUgVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9DSF9UWF9TVVBSX1REUEtU
X1ZBTElEwqDCoMKgwqDCoMKgwqAgQklUKDExKQo+PiDCoCAjZGVmaW5lIFRJX1NDSV9NU0dfVkFM
VUVfUk1fVURNQVBfQ0hfVFhfQ1JFRElUX0NPVU5UX1ZBTElEwqDCoMKgwqDCoCBCSVQoMTIpCj4+
IMKgICNkZWZpbmUgVElfU0NJX01TR19WQUxVRV9STV9VRE1BUF9DSF9UWF9GREVQVEhfVkFMSUTC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCgxMykKPj4gKyNkZWZpbmUgVElfU0NJX01TR19WQUxV
RV9STV9VRE1BUF9DSF9UWF9URFRZUEVfVkFMSUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCgx
NSkKPj4gwqDCoMKgwqDCoCB1MTYgbmF2X2lkOwo+PiDCoMKgwqDCoMKgIHUxNiBpbmRleDsKPj4g
wqDCoMKgwqDCoCB1OCB0eF9wYXVzZV9vbl9lcnI7Cj4+IEBAIC0zNTksNiArMzYwLDcgQEAgc3Ry
dWN0IHRpX3NjaV9tc2dfcm1fdWRtYXBfdHhfY2hfY2ZnIHsKPj4gwqDCoMKgwqDCoCB1MTYgZmRl
cHRoOwo+PiDCoMKgwqDCoMKgIHU4IHR4X3NjaGVkX3ByaW9yaXR5Owo+PiDCoMKgwqDCoMKgIHU4
IHR4X2J1cnN0X3NpemU7Cj4+ICvCoMKgwqAgdTggdHhfdGR0eXBlOwo+PiDCoCB9Owo+PiDCoCDC
oCAvKioKPj4KPiAKPiAtLSAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2Fs
YW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKVGV4YXMgSW5zdHJ1bWVudHMgRmlu
bGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2lu
ZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
