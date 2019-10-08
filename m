Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CB1CF6C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 12:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvYdq2EVDFIdKU1dH31tjFJs4vgzTPrlchwliKsJndE=; b=FxN/0fCwkp0eTb
	GBUAG9agkj33ZSbR6Ae9i1p60LM8a9l28NSY/JJP2HOSfb9lv7TGtPhTf5PDdwbalvfo91VlF1v5o
	pPaEQbUTyAiL3rmQAlxthADvLhETubSb+bsmuTaSVPWxF9jKSRkYJCc15IGGqDk8f+Lt6U1vPONdt
	zETzPM7CNRn9oxKcooNDiAi0Mhluv9/vJafkHSnNA5/QaEMXCJdoSrRzgNgaW2PNmr+NqFUvtovfC
	r1ieCp8nXbzUBJwsK87Zh8HynDuxyMxAWUjY8MIXjF+rBHTqM6dYoYVvT+zNUpX3BCdWyWdGe85nu
	y/vEaHLCHg9CQssScvtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHmQi-0000QB-UX; Tue, 08 Oct 2019 10:09:20 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHmQb-0000PV-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 10:09:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x98A937D068103;
 Tue, 8 Oct 2019 05:09:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570529344;
 bh=FkNiIod96/3T2zF68YAgCCg2oYEqg3sIPlPb6RVQtJU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=rqMjNPvD+0W8D0F/WVHwVLj73f3VdnSnzzhobu03+GT+LpwtlmnElkM6+UnCNa2sw
 8ybL4vocG5xUba642POMwE/IomSzf/qjbYfgZPXOQW3CKZ5Ig6SJZ4QNZP+PbL4K/R
 8RJvjvO1x23sLcJ8v/RAtTk5F+ZLBrlCfGxQOyDE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x98A9373015293;
 Tue, 8 Oct 2019 05:09:03 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 8 Oct
 2019 05:09:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 8 Oct 2019 05:09:02 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x98A8xv6073491;
 Tue, 8 Oct 2019 05:08:59 -0500
Subject: Re: [PATCH v3 00/14] dmaengine/soc: Add Texas Instruments UDMA support
To: <santosh.shilimkar@oracle.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>, 
 <nm@ti.com>, <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <c567c1a2-2e74-3809-8e0f-4c2049ba4747@oracle.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <7dd18208-1ca5-c902-dc11-edbd4ded51ed@ti.com>
Date: Tue, 8 Oct 2019 13:09:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c567c1a2-2e74-3809-8e0f-4c2049ba4747@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_030913_461073_39793103 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FudG9zaCwKCk9uIDA0LzEwLzIwMTkgMTkuMzUsIHNhbnRvc2guc2hpbGlta2FyQG9yYWNs
ZS5jb20gd3JvdGU6Cj4gT24gOS8zMC8xOSAxMToxNiBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6
Cj4+IEhpLAo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYyCj4+IClodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbGludXgtZG1hZW5naW5lL2xpc3QvP3Nlcmllcz0xNTI2MDkmc3RhdGU9
KikKPj4KPj4gLSBCYXNlZCBvbiA1LjQtcmMxCj4+IC0gU3VwcG9ydCBmb3IgRmxvdyBvbmx5IGRh
dGEgdHJhbnNmZXIgZm9yIHRoZSBnbHVlIGxheWVyCj4+Cj4gCj4+Cj4+IEdyeWdvcmlpIFN0cmFz
aGtvICgzKToKPj4gwqDCoCBiaW5kaW5nczogc29jOiB0aTogYWRkIGRvY3VtZW50YXRpb24gZm9y
IGszIHJpbmdhY2MKPj4gwqDCoCBzb2M6IHRpOiBrMzogYWRkIG5hdnNzIHJpbmdhY2MgZHJpdmVy
Cj4+IMKgwqAgZG1hZW5naW5lOiB0aTogazMtdWRtYTogQWRkIGdsdWUgbGF5ZXIgZm9yIG5vbiBE
TUFlbmdpbmUgdXNlcnMKPj4KPj4gUGV0ZXIgVWpmYWx1c2kgKDExKToKPj4gwqDCoCBkbWFlbmdp
bmU6IGRvYzogQWRkIHNlY3Rpb25zIGZvciBwZXIgZGVzY3JpcHRvciBtZXRhZGF0YSBzdXBwb3J0
Cj4+IMKgwqAgZG1hZW5naW5lOiBBZGQgbWV0YWRhdGFfb3BzIGZvciBkbWFfYXN5bmNfdHhfZGVz
Y3JpcHRvcgo+PiDCoMKgIGRtYWVuZ2luZTogQWRkIHN1cHBvcnQgZm9yIHJlcG9ydGluZyBETUEg
Y2FjaGVkIGRhdGEgYW1vdW50Cj4+IMKgwqAgZG1hZW5naW5lOiB0aTogQWRkIGNwcGk1IGhlYWRl
ciBmb3IgVURNQQo+PiDCoMKgIGR0LWJpbmRpbmdzOiBkbWE6IHRpOiBBZGQgZG9jdW1lbnQgZm9y
IEszIFVETUEKPj4gwqDCoCBkbWFlbmdpbmU6IHRpOiBOZXcgZHJpdmVyIGZvciBLMyBVRE1BIC0g
c3BsaXQjMTogZGVmaW5lcywgc3RydWN0cywgaW8KPj4gwqDCoMKgwqAgZnVuYwo+PiDCoMKgIGRt
YWVuZ2luZTogdGk6IE5ldyBkcml2ZXIgZm9yIEszIFVETUEgLSBzcGxpdCMyOiBwcm9iZS9yZW1v
dmUsIHhsYXRlCj4+IMKgwqDCoMKgIGFuZCBmaWx0ZXJfZm4KPj4gwqDCoCBkbWFlbmdpbmU6IHRp
OiBOZXcgZHJpdmVyIGZvciBLMyBVRE1BIC0gc3BsaXQjMzogYWxsb2MvZnJlZQo+PiDCoMKgwqDC
oCBjaGFuX3Jlc291cmNlcwo+PiDCoMKgIGRtYWVuZ2luZTogdGk6IE5ldyBkcml2ZXIgZm9yIEsz
IFVETUEgLSBzcGxpdCM0OiBkbWFfZGV2aWNlIGNhbGxiYWNrcwo+PiDCoMKgwqDCoCAxCj4+IMKg
wqAgZG1hZW5naW5lOiB0aTogTmV3IGRyaXZlciBmb3IgSzMgVURNQSAtIHNwbGl0IzU6IGRtYV9k
ZXZpY2UgY2FsbGJhY2tzCj4+IMKgwqDCoMKgIDIKPj4gwqDCoCBkbWFlbmdpbmU6IHRpOiBOZXcg
ZHJpdmVyIGZvciBLMyBVRE1BIC0gc3BsaXQjNjogS2NvbmZpZyBhbmQgTWFrZWZpbGUKPj4KPj4g
wqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEudHh0wqDCoMKgIHzCoCAx
ODUgKwo+PiDCoCAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvdGkvazMtcmluZ2FjYy50eHQg
fMKgwqAgNTkgKwo+PiDCoCBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hZW5naW5lL2NsaWVu
dC5yc3QgfMKgwqAgNzUgKwo+PiDCoCAuLi4vZHJpdmVyLWFwaS9kbWFlbmdpbmUvcHJvdmlkZXIu
cnN0wqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA0NiArCj4+IMKgIGRyaXZlcnMvZG1hL2RtYWVuZ2lu
ZS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgNzMg
Kwo+PiDCoCBkcml2ZXJzL2RtYS9kbWFlbmdpbmUuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgOCArCj4+IMKgIGRyaXZlcnMvZG1hL3RpL0tjb25m
aWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIy
ICsKPj4gwqAgZHJpdmVycy9kbWEvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDIgKwo+PiDCoCBkcml2ZXJzL2RtYS90aS9rMy11
ZG1hLWdsdWUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTIyNSArKysrKysK
Pj4gwqAgZHJpdmVycy9kbWEvdGkvazMtdWRtYS1wcml2YXRlLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqAgMTQxICsKPj4gwqAgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMzUyNSArKysrKysrKysrKysrKysr
Kwo+PiDCoCBkcml2ZXJzL2RtYS90aS9rMy11ZG1hLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgIDE2MSArCj4+IMKgIGRyaXZlcnMvc29jL3RpL0tjb25maWfC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEyICsK
Pj4gwqAgZHJpdmVycy9zb2MvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgKwo+PiDCoCBkcml2ZXJzL3NvYy90aS9rMy1yaW5n
YWNjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMTY1ICsrKysrKwo+
PiDCoCBpbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11ZG1hLmjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgwqAgMTAgKwo+PiDCoCBpbmNsdWRlL2xpbnV4L2RtYS9rMy11ZG1hLWdsdWUuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMzQgKwo+PiDCoCBpbmNsdWRlL2xpbnV4L2Rt
YS90aS1jcHBpNS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEwNDkgKysr
KysKPj4gwqAgaW5jbHVkZS9saW51eC9kbWFlbmdpbmUuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgIDExMCArCj4+IMKgIGluY2x1ZGUvbGludXgvc29jL3RpL2sz
LXJpbmdhY2MuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjQ1ICsrCj4+IMKgIDIwIGZp
bGVzIGNoYW5nZWQsIDgyNDggaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnR4dAo+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NvYy90aS9rMy1yaW5nYWNjLnR4dAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9k
bWEvdGkvazMtdWRtYS1nbHVlLmMKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1h
L3RpL2szLXVkbWEtcHJpdmF0ZS5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Rt
YS90aS9rMy11ZG1hLmMKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2sz
LXVkbWEuaAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvdGkvazMtcmluZ2Fj
Yy5jCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2RtYS9rMy11
ZG1hLmgKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvZG1hL2szLXVkbWEt
Z2x1ZS5oCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L2RtYS90aS1jcHBp
NS5oCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3NvYy90aS9rMy1yaW5n
YWNjLmgKPj4KPiBDYW4geW91IHBsZWFzZSBzcGxpdCB0aGlzIHNlcmllcyBhbmQgcG9zdCBkcml2
ZXJzL3NvYy8qIGJpdHMKPiBzZXBhcmF0ZWx5ID/CoCBJZiBpdHMgcmVhZHksIEkgY2FuIGFwcGx5
IGszLXJpbmdhY2MuYyBjaGFuZ2VzLgoKSSdsbCB3YWl0IGNvdXBsZSBvZiBkYXlzIGZvciBndXlz
IHRvIGNoZWNrIHRoZSBzZXJpZXMsIHRoZW4gSSBjYW4gc2VuZAp0aGUgc3BsaXQgb3V0IHJpbmdh
Y2MgcGF0Y2hlcyBzZXBhcmF0ZWx5LgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxh
bmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVz
cyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
