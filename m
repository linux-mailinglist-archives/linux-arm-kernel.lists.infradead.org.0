Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C5F18B4B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4ToD5IRee/7vHRNUo9nSEtZgvSZM5mnVP47ugqsIpc=; b=F9qLoRCQa9KxUx
	/uWiPNVHbaUvsnYxzcblHc4rVVYdFLJi2sfjoZT5d/+TKU9SvwmKOvev5znNbD+x56JwJ8MfLjge5
	2uGuNNPTRgNhD0qZYq4YUi6N3uuEiyGbhs2kbbfoyWYqgnkPLCd8SfPJNUOrSpBxv9v1Vw+0q7UL6
	WaLAJesHv3Aupfio8bdOspd2Hgi/ToEs/0qP4XBV6qMxdoEwk7cpC6EYU8zJeX8ow4Vr2do1QdQAR
	kTQmfP84yQtFIfPX55U6hn4FM/PfRfa+X1BMvY9KheJwb6zqFxX1WrWosCyzkWyoN+U39V825IILd
	Wb4PHNCfIZRJLmGXetrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuxy-0000qO-Gy; Thu, 19 Mar 2020 13:12:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuxk-0000p1-JA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:11:58 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02JDBmqj074753;
 Thu, 19 Mar 2020 08:11:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584623508;
 bh=bbVbAlz+mY6H/xGlr1K7rl0RJD3b+k/5plvkLwV9JK0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TiwLdULmrdDQtTVsRL77Wo9yEBvLIoYkwj6xBlLOvQx+QVGWdv2VE4RISAm48+omu
 +BAPId0DPVGFtBHkJAhxlRP1kOD454Whau8ChN7xS+7bFoqgin3IQnL6RTDhSiqd6I
 M+MrbtURN7A22/E7ZfggvQWYH87ldXhNqjI/m0z0=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JDBmvl077871;
 Thu, 19 Mar 2020 08:11:48 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 08:11:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 08:11:48 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JDBjWb006865;
 Thu, 19 Mar 2020 08:11:45 -0500
Subject: Re: [PATCH net-next v4 06/11] net: ethernet: ti: introduce
 am65x/j721e gigabit eth subsystem driver
To: Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo
 <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>, netdev
 <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
References: <20200317072739.23950-1-grygorii.strashko@ti.com>
 <20200317072739.23950-7-grygorii.strashko@ti.com>
 <dcd70320-8f1e-dbb5-c275-3b203e9b5851@ti.com>
 <78bc1ee2-5a56-82e7-229d-52cea8002eec@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <d789fce6-9911-a602-83ca-eb7cb9bcd48b@ti.com>
Date: Thu, 19 Mar 2020 15:11:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <78bc1ee2-5a56-82e7-229d-52cea8002eec@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_061157_349394_E8B68817 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Murali Karicheri <m-karicheri2@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3J5Z29yaWksCgpPbiAxOS8wMy8yMDIwIDE1LjA5LCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90
ZToKPiAKPiAKPiBPbiAxOS8wMy8yMDIwIDEzOjQ2LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4g
SGkgR3J5Z29yaWksCj4+Cj4+IE9uIDE3LzAzLzIwMjAgOS4yNywgR3J5Z29yaWkgU3RyYXNoa28g
d3JvdGU6Cj4+PiBUaGUgVEkgQU02NXgvSjcyMUUgU29DcyBHaWdhYml0IEV0aGVybmV0IFN3aXRj
aCBzdWJzeXN0ZW0gKENQU1cyRwo+Pj4gTlVTUykgaGFzCj4+PiB0d28gcG9ydHMgLSBPbmUgRXRo
ZXJuZXQgcG9ydCAocG9ydCAxKSB3aXRoIHNlbGVjdGFibGUgUkdNSUkgYW5kIFJNSUkKPj4+IGlu
dGVyZmFjZXMgYW5kIGFuIGludGVybmFsIENvbW11bmljYXRpb25zIFBvcnQgUHJvZ3JhbW1pbmcg
SW50ZXJmYWNlCj4+PiAoQ1BQSSkKPj4+IHBvcnQgKEhvc3QgcG9ydCAwKSBhbmQgd2l0aCBBTEUg
aW4gYmV0d2Vlbi4gSXQgYWxzbyBjb250YWlucwo+Pj4gwqAgLSBNYW5hZ2VtZW50IERhdGEgSW5w
dXQvT3V0cHV0IChNRElPKSBpbnRlcmZhY2UgZm9yIHBoeXNpY2FsIGxheWVyCj4+PiBkZXZpY2UK
Pj4+IChQSFkpIG1hbmFnZW1lbnQ7Cj4+PiDCoCAtIFVwZGF0ZWQgQWRkcmVzcyBMb29rdXAgRW5n
aW5lIChBTEUpIG1vZHVsZTsKPj4+IMKgIC0gKFRCRCkgTmV3IHZlcnNpb24gb2YgQ29tbW9uIHBs
YXRmb3JtIHRpbWUgc3luYyAoQ1BUUykgbW9kdWxlLgo+Pj4KPj4+IE9uIHRoZSBUSSBhbTY1eC9K
NzIxRSBTb0NzIENQU1cgTlVTUyBFdGhlcm5ldCBzdWJzeXN0ZW0gaW50byBkZXZpY2UgTUNVCj4+
PiBkb21haW4gbmFtZWQgTUNVX0NQU1cwLgo+Pj4KPj4+IEhvc3QgUG9ydCAwIENQUEkgUGFja2V0
IFN0cmVhbWluZyBJbnRlcmZhY2UgaW50ZXJmYWNlIHN1cHBvcnRzIDggVFgKPj4+IGNoYW5uZWxz
IGFuZCBvbmUgUlggY2hhbm5lbHMgb3BlcmF0aW5nIGJ5IFRJIGFtNjU0IE5BVlNTIFVuaWZpZWQg
RE1BCj4+PiBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKSBjb250cm9sbGVyLgo+Pj4K
Pj4+IEludHJvZHVjZWQgZHJpdmVyIHByb3ZpZGVzIHN0YW5kYXJkIExpbnV4IG5ldF9kZXZpY2Ug
dG8gdXNlciBzcGFjZQo+Pj4gYW5kIHN1cHBvcnRzOgo+Pj4gwqAgLSBpZmNvbmZpZyB1cC9kb3du
Cj4+PiDCoCAtIE1BQyBhZGRyZXNzIGNvbmZpZ3VyYXRpb24KPj4+IMKgIC0gZXRodG9vbCBvcGVy
YXRpb246Cj4+PiDCoMKgwqAgLS1kcml2ZXIKPj4+IMKgwqDCoCAtLWNoYW5nZQo+Pj4gwqDCoMKg
IC0tcmVnaXN0ZXItZHVtcAo+Pj4gwqDCoMKgIC0tbmVnb3RpYXRlIHBoeQo+Pj4gwqDCoMKgIC0t
c3RhdGlzdGljcwo+Pj4gwqDCoMKgIC0tc2V0LWVlZSBwaHkKPj4+IMKgwqDCoCAtLXNob3ctcmlu
Zwo+Pj4gwqDCoMKgIC0tc2hvdy1jaGFubmVscwo+Pj4gwqDCoMKgIC0tc2V0LWNoYW5uZWxzCj4+
PiDCoCAtIG5ldF9kZXZpY2UgaW9jdGwgbWlpLWNvbnRyb2wKPj4+IMKgIC0gcHJvbWlzYyBtb2Rl
Cj4+Pgo+Pj4gwqAgLSByeCBjaGVja3N1bSBvZmZsb2FkIGZvciBub24tZnJhZ21lbnRlZCBJUHY0
L0lQdjYgVENQL1VEUCBwYWNrZXRzLgo+Pj4gwqDCoMKgIFRoZSBDUFNXIE5VU1MgY2FuIHZlcmlm
eSBJUHY0L0lQdjYgVENQL1VEUCBwYWNrZXRzIGNoZWNrc3VtIGFuZAo+Pj4gZmlsbHMKPj4+IMKg
wqDCoCBjc3VtIGluZm9ybWF0aW9uIGZvciBlYWNoIHBhY2tldCBpbiBwc2RhdGFbMl0gd29yZDoK
Pj4+IMKgwqDCoCAtIEJJVCgxNikgQ0hFQ0tTVU1fRVJST1IgLSBpbmRpY2F0ZXMgY3N1bSBlcnJv
cgo+Pj4gwqDCoMKgIC0gQklUKDE3KSBGUkFHTUVOVCAtwqAgaW5kaWNhdGVzIGZyYWdtZW50ZWQg
cGFja2V0Cj4+PiDCoMKgwqAgLSBCSVQoMTgpIFRDUF9VRFBfTiAtwqAgSW5kaWNhdGVzIFRDUCBw
YWNrZXQgd2FzIGRldGVjdGVkCj4+PiDCoMKgwqAgLSBCSVQoMTkpIElQVjZfVkFMSUQswqAgQklU
KDIwKSBJUFY0X1ZBTElEIC0gaW5kaWNhdGVzIElQdjYvSVB2NAo+Pj4gcGFja2V0Cj4+PiDCoMKg
wqAgLSBCSVQoMTUsIDApIENIRUNLU1VNX0FERCAtIFRoaXMgaXMgdGhlIHZhbHVlIHRoYXQgd2Fz
IHN1bW1lZAo+Pj4gwqDCoMKgIGR1cmluZyB0aGUgY2hlY2tzdW0gY29tcHV0YXRpb24uIFRoaXMg
dmFsdWUgaXMgRkZGRmggZm9yIG5vbgo+Pj4gZnJhZ21lbnRlZAo+Pj4gwqDCoMKgIElQVjQvNiBV
RFAvVENQIHBhY2tldHMgd2l0aCBubyBjaGVja3N1bSBlcnJvci4KPj4+Cj4+PiDCoMKgwqAgUlgg
Y3N1bSBvZmZsb2FkIGNhbiBiZSBkaXNhYmxlZDoKPj4+IMKgwqDCoMKgIGV0aHRvb2wgLUsgPGRl
dj4gcngtY2hlY2tzdW0gb258b2ZmCj4+Pgo+Pj4gwqAgLSB0eCBjaGVja3N1bSBvZmZsb2FkIHN1
cHBvcnQgZm9yIElQdjQvSVB2NiBUQ1AvVURQIHBhY2tldHMgKEo3MjFFCj4+PiBvbmx5KS4KPj4+
IMKgwqDCoCBUWCBjc3VtIEhXIG9mZmxvYWTCoCBjYW4gYmUgZW5hYmxlZC9kaXNhYmxlZDoKPj4+
IMKgwqDCoMKgIGV0aHRvb2wgLUsgPGRldj4gdHgtY2hlY2tzdW0taXAtZ2VuZXJpYyBvbnxvZmYK
Pj4+Cj4+PiDCoCAtIG11bHRpcSBhbmQgc3dpdGNoIGJldHdlZW4gcm91bmQgcm9iaW4vcHJpbyBt
b2RlcyBmb3IgY3BwaSB0eAo+Pj4gcXVldWVzIGJ5Cj4+PiDCoMKgwqAgdXNpbmcgTmV0ZGV2IHBy
aXZhdGUgZmxhZyAicDAtcngtcHR5cGUtcnJvYmluIiB0byBzd2l0Y2ggYmV0d2Vlbgo+Pj4gwqDC
oMKgIFJvdW5kIFJvYmluIGFuZCBGaXhlZCBwcmlvcml0eSBtb2RlczoKPj4+IMKgwqDCoMKgICMg
ZXRodG9vbCAtLXNob3ctcHJpdi1mbGFncyBldGgwCj4+PiDCoMKgwqDCoCBQcml2YXRlIGZsYWdz
IGZvciBldGgwOgo+Pj4gwqDCoMKgwqAgcDAtcngtcHR5cGUtcnJvYmluOiBvbgo+Pj4gwqDCoMKg
wqAgIyBldGh0b29sIC0tc2V0LXByaXYtZmxhZ3MgZXRoMCBwMC1yeC1wdHlwZS1ycm9iaW4gb2Zm
Cj4+Pgo+Pj4gwqDCoMKgIE51bWJlciBvZiBUWCBETUEgY2hhbm5lbHMgY2FuIGJlIGNoYW5nZWQg
dXNpbmcgImV0aHRvb2wgLUwgZXRoMAo+Pj4gdHggPE4+Ii4KPj4+Cj4+PiDCoCAtIEdSTyBzdXBw
b3J0OiB0aGUgbmFwaV9ncm9fcmVjZWl2ZSgpIGFuZCBuYXBpX2NvbXBsZXRlX2RvbmUoKSBhcmUK
Pj4+IHVzZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogR3J5Z29yaWkgU3RyYXNoa28gPGdyeWdv
cmlpLnN0cmFzaGtvQHRpLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
dGkvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxOSArLQo+Pj4gwqAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKg
wqAgMyArCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctZXRodG9vbC5j
IHzCoCA3NDcgKysrKysrKwo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3
LW51c3MuY8KgwqDCoCB8IDE5NjUgKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LW51c3MuaMKgwqDCoCB8wqAgMTQzICsrCj4+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9rMy11ZG1hLWRlc2MtcG9vbC5jIHzCoCAxMjYgKysKPj4+
IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2szLXVkbWEtZGVzYy1wb29sLmggfMKgwqAgMzAg
Kwo+Pgo+PiBJIHdvdWxkIHJhdGhlciBsb29zZSB0aGUgJ3VkbWEnIGZyb20gdGhlIG5hbWUgYW5k
IEFQSS4gSXQgaXMgbW9yZSBsaWtlCj4+IENQUEk1IGRlc2NyaXB0b3IgcG9vbCB0aGFuIFVETUEu
IFVETUEgaXMganVzdCBoYXBwZW4gdG8gdXNlIENQUEk1Lgo+PiBQcm9iYWJseSB0aS1jcHBpNS1k
ZXNjLXBvb2w/Cj4gCj4gb2suIEknbGwgdXBkYXRlIGFuZCByZS1zZW5kCgpUaGFuayB5b3UhClBy
b2JhYmx5IGRyb3AgdGhlIHRpLSBwcmVmaXggYXMgd2VsbCBmcm9tIHRoZSBmaWxlbmFtZSBhcyBp
dCBpcyB1bmRlciBhCnRpIGRpcmVjdG9yeT8KCj4+Cj4+PiDCoCA3IGZpbGVzIGNoYW5nZWQsIDMw
MzEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctZXRodG9vbC5jCj4+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LW51c3MuYwo+
Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bz
dy1udXNzLmgKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90
aS9rMy11ZG1hLWRlc2MtcG9vbC5jCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvdGkvazMtdWRtYS1kZXNjLXBvb2wuaAo+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L3RpL0tjb25maWcKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
dGkvS2NvbmZpZwo+Pj4gaW5kZXggOGE2Y2ExNmVlZTNiLi44OWNlYzc3OGNmMmQgMTAwNjQ0Cj4+
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC90aS9LY29uZmlnCj4+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC90aS9LY29uZmlnCj4+PiBAQCAtNiw3ICs2LDcgQEAKPj4+IMKgIGNvbmZp
ZyBORVRfVkVORE9SX1RJCj4+PiDCoMKgwqDCoMKgIGJvb2wgIlRleGFzIEluc3RydW1lbnRzIChU
SSkgZGV2aWNlcyIKPj4+IMKgwqDCoMKgwqAgZGVmYXVsdCB5Cj4+PiAtwqDCoMKgIGRlcGVuZHMg
b24gUENJIHx8IEVJU0EgfHwgQVI3IHx8IEFSQ0hfREFWSU5DSSB8fCBBUkNIX09NQVAyUExVUwo+
Pj4gfHwgQVJDSF9LRVlTVE9ORQo+Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIFBDSSB8fCBFSVNBIHx8
IEFSNyB8fCBBUkNIX0RBVklOQ0kgfHwgQVJDSF9PTUFQMlBMVVMKPj4+IHx8IEFSQ0hfS0VZU1RP
TkUgfHwgQVJDSF9LMwo+Pj4gwqDCoMKgwqDCoCAtLS1oZWxwLS0tCj4+PiDCoMKgwqDCoMKgwqDC
oCBJZiB5b3UgaGF2ZSBhIG5ldHdvcmsgKEV0aGVybmV0KSBjYXJkIGJlbG9uZ2luZyB0byB0aGlz
Cj4+PiBjbGFzcywgc2F5IFkuCj4+PiDCoCBAQCAtMzEsNyArMzEsNyBAQCBjb25maWcgVElfREFW
SU5DSV9FTUFDCj4+PiDCoCDCoCBjb25maWcgVElfREFWSU5DSV9NRElPCj4+PiDCoMKgwqDCoMKg
IHRyaXN0YXRlICJUSSBEYVZpbmNpIE1ESU8gU3VwcG9ydCIKPj4+IC3CoMKgwqAgZGVwZW5kcyBv
biBBUkNIX0RBVklOQ0kgfHwgQVJDSF9PTUFQMlBMVVMgfHwgQVJDSF9LRVlTVE9ORSB8fAo+Pj4g
Q09NUElMRV9URVNUCj4+PiArwqDCoMKgIGRlcGVuZHMgb24gQVJDSF9EQVZJTkNJIHx8IEFSQ0hf
T01BUDJQTFVTIHx8IEFSQ0hfS0VZU1RPTkUgfHwKPj4+IEFSQ0hfSzMgfHwgQ09NUElMRV9URVNU
Cj4+PiDCoMKgwqDCoMKgIHNlbGVjdCBQSFlMSUIKPj4+IMKgwqDCoMKgwqAgLS0taGVscC0tLQo+
Pj4gwqDCoMKgwqDCoMKgwqAgVGhpcyBkcml2ZXIgc3VwcG9ydHMgVEkncyBEYVZpbmNpIE1ESU8g
bW9kdWxlLgo+Pj4gQEAgLTk1LDYgKzk1LDIxIEBAIGNvbmZpZyBUSV9DUFRTX01PRAo+Pj4gwqDC
oMKgwqDCoCBpbXBseSBQVFBfMTU4OF9DTE9DSwo+Pj4gwqDCoMKgwqDCoCBkZWZhdWx0IG0KPj4+
IMKgICtjb25maWcgVElfSzNfQU02NV9DUFNXX05VU1MKPj4+ICvCoMKgwqAgdHJpc3RhdGUgIlRJ
IEszIEFNNjU0eC9KNzIxRSBDUFNXIEV0aGVybmV0IGRyaXZlciIKPj4+ICvCoMKgwqAgZGVwZW5k
cyBvbiBBUkNIX0szICYmIE9GICYmIFRJX0szX1VETUFfR0xVRV9MQVlFUgo+Pj4gK8KgwqDCoCBz
ZWxlY3QgVElfREFWSU5DSV9NRElPCj4+PiArwqDCoMKgIGltcGx5IFBIWV9USV9HTUlJX1NFTAo+
Pj4gK8KgwqDCoCBoZWxwCj4+PiArwqDCoMKgwqDCoCBUaGlzIGRyaXZlciBzdXBwb3J0cyBUSSBL
MyBBTTY1NC9KNzIxRSBDUFNXMkcgRXRoZXJuZXQgU3ViU3lzdGVtLgo+Pj4gK8KgwqDCoMKgwqAg
VGhlIHR3by1wb3J0IEdpZ2FiaXQgRXRoZXJuZXQgTUFDIChNQ1VfQ1BTVzApIHN1YnN5c3RlbSBw
cm92aWRlcwo+Pj4gK8KgwqDCoMKgwqAgRXRoZXJuZXQgcGFja2V0IGNvbW11bmljYXRpb24gZm9y
IHRoZSBkZXZpY2U6IE9uZSBFdGhlcm5ldCBwb3J0Cj4+PiArwqDCoMKgwqDCoCAocG9ydCAxKSB3
aXRoIHNlbGVjdGFibGUgUkdNSUkgYW5kIFJNSUkgaW50ZXJmYWNlcyBhbmQgYW4KPj4+IGludGVy
bmFsCj4+PiArwqDCoMKgwqDCoCBDb21tdW5pY2F0aW9ucyBQb3J0IFByb2dyYW1taW5nIEludGVy
ZmFjZSAoQ1BQSSkgcG9ydCAocG9ydCAwKS4KPj4+ICsKPj4+ICvCoMKgwqDCoMKgIFRvIGNvbXBp
bGUgdGhpcyBkcml2ZXIgYXMgYSBtb2R1bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUKPj4+
ICvCoMKgwqDCoMKgIHdpbGwgYmUgY2FsbGVkIHRpLWFtNjUtY3Bzdy1udXNzLgo+Pj4gKwo+Pj4g
wqAgY29uZmlnIFRJX0tFWVNUT05FX05FVENQCj4+PiDCoMKgwqDCoMKgIHRyaXN0YXRlICJUSSBL
ZXlzdG9uZSBORVRDUCBDb3JlIFN1cHBvcnQiCj4+PiDCoMKgwqDCoMKgIHNlbGVjdCBUSV9EQVZJ
TkNJX01ESU8KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC90aS9NYWtlZmls
ZQo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC90aS9NYWtlZmlsZQo+Pj4gaW5kZXggZWNmNzc2
YWQ4Njg5Li42MzYyYTliMGJiOGEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC90aS9NYWtlZmlsZQo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvTWFrZWZpbGUK
Pj4+IEBAIC0yMywzICsyMyw2IEBAIG9iai0kKENPTkZJR19USV9LRVlTVE9ORV9ORVRDUCkgKz0g
a2V5c3RvbmVfbmV0Y3Aubwo+Pj4gwqAga2V5c3RvbmVfbmV0Y3AteSA6PSBuZXRjcF9jb3JlLm8g
Y3Bzd19hbGUubwo+Pj4gwqAgb2JqLSQoQ09ORklHX1RJX0tFWVNUT05FX05FVENQX0VUSFNTKSAr
PSBrZXlzdG9uZV9uZXRjcF9ldGhzcy5vCj4+PiDCoCBrZXlzdG9uZV9uZXRjcF9ldGhzcy15IDo9
IG5ldGNwX2V0aHNzLm8gbmV0Y3Bfc2dtaWkubwo+Pj4gbmV0Y3BfeGdiZXBjc3IubyBjcHN3X2Fs
ZS5vCj4+PiArCj4+PiArb2JqLSQoQ09ORklHX1RJX0szX0FNNjVfQ1BTV19OVVNTKSArPSB0aS1h
bTY1LWNwc3ctbnVzcy5vCj4+PiArdGktYW02NS1jcHN3LW51c3MteSA6PSBhbTY1LWNwc3ctbnVz
cy5vIGNwc3dfc2wubwo+Pj4gYW02NS1jcHN3LWV0aHRvb2wubyBjcHN3X2FsZS5vIGszLXVkbWEt
ZGVzYy1wb29sLm8KPj4KPj4gV291bGQgbm90IGJlIGJldHRlciB0byBoYXZlIHRoZSBkZXNjLXBv
b2wgKHNpbGVudCkgS2NvbmZpZyBzZWxlY3RhYmxlPwo+PiBUaGUgbm90IHlldCB1cHN0cmVhbSBp
Y3NzZy1wcnVldGggYWxzbyBuZWVkcyB0aGUgc2FtZSBkZXNjLXBvb2wgbGlicmFyeQo+PiBhcyBj
cHN3Lgo+Pgo+IAo+IEknZCBwcmVmZXIgbm90IHRvIGFkZCBuZXcgS2NvbmZpZyBvcHRpb25zIHVu
bGVzcyByZXF1aXJlZC4KPiBUaGlzIGRyaXZlciBzaW1wbHkgbm90IHdvcmsgd2l0aG91dCBpdCwg
c28gbm8gS2NvbmZpZyBvcHRpb24gZm9yIG5vdy4KCk9LLCBmYWlyIGVub3VnaC4KCi0gUMOpdGVy
CgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBI
ZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21p
Y2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
