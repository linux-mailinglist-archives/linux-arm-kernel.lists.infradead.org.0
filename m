Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB764A7ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drMHHTk5GzGVaV8SOQxe9Y5Rjv6a0F9kbr1Py33BEpw=; b=I8MfytcnSDi9+O
	l8lVJqHelSJb4Tmn5xiG/fgwkjJL64l1cp+J0v2zItvfpfc6f8nFal0jWGztCqBGV/J3QYWBbuhdl
	3W6iVErVfhxmmU2/0xKwlo2XZAKzY6JB6H7QiNvDqAn35LkLN86iwwOziPxlFBKIDP9sCOYRpQQ2/
	E+JmRfP72rkLfuQnPp9W6Bw3qE3854qO71a6mBn0CwOQqHuHSCYb/15KpL00ucqphBAhcGwflhDjI
	Gy1cUjnXJKvPPlPoK7RA0EaT5HEgKJItNuuomCDdhV4/zg86NcZVWY1ljX2BobeR0fjEq+LnmtkQY
	gKmFU8kt6OcmfVTea9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHeI-00010n-H7; Tue, 18 Jun 2019 17:11:58 +0000
Received: from p3plmtsmtp02.prod.phx3.secureserver.net ([184.168.131.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHe9-000106-3X
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:11:50 +0000
Received: from n16.mail01.mtsvc.net ([216.70.64.51]) by :MT-SMTP: with ESMTP
 id dHbGhUOck5laqdHbGhX09V; Tue, 18 Jun 2019 10:08:50 -0700
X-SID: dHbGhUOck5laq
Received: from cpe-71-75-202-74.carolina.res.rr.com ([71.75.202.74]:64400
 helo=SBGCLTOFFICE)
 by n16.mail01.mtsvc.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <tkrantz@stahurabrenner.com>)
 id 1hdHb7-0005KB-Pu; Tue, 18 Jun 2019 13:08:50 -0400
From: "Timothy Krantz" <tkrantz@stahurabrenner.com>
To: "'Miquel Raynal'" <miquel.raynal@bootlin.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>	<20190429095727.48de0b7c@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>	<20190617113841.60032387@xps13>	<20190617114016.10fb9e03@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>	<20190618095812.48a2746b@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADKxydx2LOeRKSPqV4VA77dAQAAAAA=@stahurabrenner.com>	<20190618162428.0417f247@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAACUGsZ5zJFbR6X1CG+aiyUMAQAAAAA=@stahurabrenner.com>
 <20190618173604.4958474c@xps13>
In-Reply-To: <20190618173604.4958474c@xps13>
Subject: RE: espressobin device tree with kernel 5.1 RC
Date: Tue, 18 Jun 2019 13:08:39 -0400
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADpLpjRTgFBSZBSAreF/AshAQAAAAA=@stahurabrenner.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHHHNahTQSMuKl1SiqoWXgyzEZ1/QHhLXjKAr/FJm4BlquXjgGHPVqnAl/7lIABsUbEsALMcFvIApCqywoCZezFgQH6aymXphFJivA=
Content-Language: en-us
X-Authenticated-User: 902853 tkrantz@stahurabrenner.com
X-MT-ID: C1A731F58FEDE20B47E8EFF5D29156B2BFE18A53
X-CMAE-Envelope: MS4wfEtCkj6sM71+/KlVWsm/pdZ1HvsNUkb1aGA5tnTS+nIFTXrvIoyfdXvVj3uJUuxO/HxcDoyTtxkB/d1Sx+75LLJaYKj2qMQmmraIxdnql5WFn4bQIhrJ
 LBG2ICc+9VOZQ0RqdsKXqtRNPV8yr0ftkxFSeAtB2lkmkFBXwCYCmoDWFy0dLBtTPxqSmCJRSXWz9zAV3zQvw+FBFQcg6C1ROxxoKsl9RQ1Ja0vcZFlUi+Pe
 4ZCxqYg1F/BWedVZukIXmg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_101149_164920_5738CDBB 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.168.131.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWlxdWVsLAoKCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBNaXF1ZWwgUmF5
bmFsIFttYWlsdG86bWlxdWVsLnJheW5hbEBib290bGluLmNvbV0KPiBTZW50OiBUdWVzZGF5LCBK
dW5lIDE4LCAyMDE5IDExOjM2IEFNCj4gVG86IFRpbW90aHkgS3JhbnR6IDx0a3JhbnR6QHN0YWh1
cmFicmVubmVyLmNvbT4KPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gU3ViamVjdDogUmU6IGVzcHJlc3NvYmluIGRldmljZSB0cmVlIHdpdGgga2VybmVsIDUuMSBS
Qwo+IAo+IEhpIFRpbW90aHksCj4gCj4gPiA+ID4gWyAgICA0LjIwMzY5Ml0gY2FjaGVpbmZvOiBV
bmFibGUgdG8gZGV0ZWN0IGNhY2hlIGhpZXJhcmNoeSBmb3IgQ1BVIDAKPiA+ID4gPiBbICAgIDQu
MjEwMTkyXSBpbiBtdmVidSBwcm9iZQo+ID4gPiA+IFsgICAgNC4yMTI5MjRdIGNoZWNrIGRldmlj
ZSBtYXRjaAo+ID4gPiA+IFsgICAgNC4yMTYwMjZdIGRldmljZSBkaWQgbWF0Y2gKPiA+ID4gPiBb
ICAgIDQuMjE5MDU4XSBjaGVjayByZXNvdXJjZXMKPiA+ID4gPiBbICAgIDQuMjIxODU4XSByZXNv
dXJjZXMgb2sKPiA+ID4gPiBbICAgIDQuMjI0NDU4XSBlbmFibGUgcmVzb3VyY2VzCj4gPiA+ID4g
WyAgICA0LjIyNzQwNV0gcGFzdCBlbmFibGUgcmVzb3VyY2VzCj4gPiA+ID4gWyAgICA0LjIzMDgx
N10gZGlzZW5hYmxlIHJlc291cmNlcwo+ID4gPiA+IFsgICAgNC4yMzQwNDJdIHBhc3QgZGlzYWJs
ZSByZXNvdXJjZXMKPiA+ID4gPiBbICAgIDQuMjM3NTM2XSBpbml0IGhvc3QKPiA+ID4gPiBbICAg
IDQuMjM5OTMxXSBhaGNpLW12ZWJ1IGQwMGUwMDAwLnNhdGE6IEFIQ0kgMDAwMS4wMzAwIDMyIHNs
b3RzIDEgcG9ydHMKPiA2Cj4gPiA+IEdicHMgMHgxIGltcGwgcGxhdGZvcm0gbW9kZQo+ID4gPiA+
IFsgICAgNC4yNDkxOTZdIGFoY2ktbXZlYnUgZDAwZTAwMDAuc2F0YTogZmxhZ3M6IG5jcSBzbnRm
IGxlZCBvbmx5IHBtcCBmYnMKPiBwaW8KPiA+ID4gc2x1bSBwYXJ0IHN4cwo+ID4gPiA+IFsgICAg
NC4yNTg2NDddIHNjc2kgaG9zdDA6IGFoY2ktbXZlYnUKPiA+ID4gPiBbICAgIDQuMjYyNDkxXSBh
dGExOiBTQVRBIG1heCBVRE1BLzEzMyBtbWlvIFttZW0gMHhkMDBlMDAwMC0KPiA+ID4gMHhkMDBl
MWZmZl0gcG9ydCAweDEwMCBpcnEgMjEKPiA+ID4gPiBbICAgIDQuMjcwNjA5XSBwYXN0IGluaXQg
aG9zdAo+ID4gPiA+IFsgICAgNC4yNzMzNTNdIHBhc3QgcmMgY2hlY2sKPiA+ID4gPiBbICAgIDQu
Mjc2NDU1XSBFdGhlcm5ldCBDaGFubmVsIEJvbmRpbmcgRHJpdmVyOiB2My43LjEgKEFwcmlsIDI3
LCAyMDExKQo+ID4gPiA+IFsgICAgNC4yODQ0MDhdIE1BQ3NlYyBJRUVFIDgwMi4xQUUKPiA+ID4g
PiBbICAgIDQuMjg3OTY1XSBsaWJwaHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQKPiA+ID4gPiBb
c25pcF0KPiA+ID4gPgo+ID4gPiA+IFVuZm9ydHVuYXRlbHkgdGhhdCBkb2VzIG5vdCB0ZWxsIG1l
IG11Y2guICBEb2VzIGl0IHNheSBhbnl0aGluZyB0byB5b3U/Cj4gPiA+ID4gSSBtZWFuIEkgZ3Vl
c3MgICAgICAgIHJjID0gYWhjaV9wbGF0Zm9ybV9lbmFibGVfcmVzb3VyY2VzKGhwcml2KTsgSXMK
PiBmYWlsaW5nLAo+ID4gPiBzaG91bGQgSSBwdXQgc29tZSB0cmFjZXMgaW4gdGhhdD8KPiA+ID4K
PiA+ID4gWWVzLCBpbiBwYXJ0aWN1bGFyIGFyb3VuZCB0aGUgUEhZIGluaXRpYWxpemF0aW9uLCB1
bnRpbCB5b3UgZm91bmQKPiA+ID4gd2hlcmUgaXQgZmFpbHMgZXhhY3RseS4KPiA+ID4KPiA+ID4K
PiA+ID4gVGhhbmtzLAo+ID4gPiBNaXF1w6hsCj4gPgo+ID4gSSBoYXZlIHRyYWNlZCBpdCBkb3du
IHRvIHBoeV9pbml0IGluIHBoeS1jb3JlLmMgYW5kIGhhdmUgcHV0IGluIHRoZSBmb2xsb3dpbmcK
PiB0cmFjZXM6Cj4gPgo+ID4gaW50IHBoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiA+IHsKPiA+
ICAgICAgICAgaW50IHJldDsKPiA+Cj4gPiAgICAgICAgIGlmICghcGh5KQo+ID4gICAgICAgICAg
ICAgICAgIHJldHVybiAwOwo+ID4KPiA+ICAgICAgICAgcmV0ID0gcGh5X3BtX3J1bnRpbWVfZ2V0
X3N5bmMocGh5KTsKPiA+ICAgICAgICAgaWYgKHJldCA8IDAgJiYgcmV0ICE9IC1FTk9UU1VQUCkK
PiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gICAgICAgICByZXQgPSAwOyAvKiBP
dmVycmlkZSBwb3NzaWJsZSByZXQgPT0gLUVOT1RTVVBQICovCj4gPgo+ID4gICAgICAgICBtdXRl
eF9sb2NrKCZwaHktPm11dGV4KTsKPiA+IHByaW50ayhLRVJOX0lORk8gImluIHBoeSBpbml0IGJl
Zm9yZSBjaGVja1xuIik7IHByaW50ayhLRVJOX0lORk8KPiA+ICJwaHktPmluaXRfY291bnQgJWRc
biIsIHBoeS0+aW5pdF9jb3VudCk7IHByaW50ayhLRVJOX0lORk8KPiA+ICJwaHktPm9wcy0+aW5p
dCAlcHJcbiIsIHBoeS0+b3BzLT5pbml0KTsKPiA+ICAgICAgICAgaWYgKHBoeS0+aW5pdF9jb3Vu
dCA9PSAwICYmIHBoeS0+b3BzLT5pbml0KSB7IHByaW50ayhLRVJOX0lORk8KPiA+ICJpbiBwaHkg
aW5pdCBwYXN0IGNoZWNrXG4iKTsKPiA+ICAgICAgICAgICAgICAgICByZXQgPSBwaHktPm9wcy0+
aW5pdChwaHkpOwo+ID4gICAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4gPiBwcmludGso
S0VSTl9JTkZPICJpbiBwaHkgaW5pdCAgcGh5LT5vcHMtPmluaXQocGh5KSBmYWlsZWRcbiIpOwo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycigmcGh5LT5kZXYsICJwaHkgaW5pdCBm
YWlsZWQgLS0+ICVkXG4iLCByZXQpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgZ290byBv
dXQ7Cj4gPiAgICAgICAgICAgICAgICAgfQo+ID4gICAgICAgICB9Cj4gPiAgICAgICAgICsrcGh5
LT5pbml0X2NvdW50Owo+ID4KPiA+IG91dDoKPiA+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwaHkt
Pm11dGV4KTsKPiA+ICAgICAgICAgcGh5X3BtX3J1bnRpbWVfcHV0KHBoeSk7Cj4gPiAgICAgICAg
IHJldHVybiByZXQ7Cj4gPiB9Cj4gPgo+ID4gV2hpY2ggcHJvZHVjZXMgdGhlIGZvbGxvd2luZyBk
bWVzZyA6Cj4gPiBbICAgIDQuMTk0ODM1XSBTZXJpYWw6IDgyNTAvMTY1NTAgZHJpdmVyLCAzMiBw
b3J0cywgSVJRIHNoYXJpbmcgZW5hYmxlZAo+ID4gWyAgICA0LjIwNTI3MF0gY2FjaGVpbmZvOiBV
bmFibGUgdG8gZGV0ZWN0IGNhY2hlIGhpZXJhcmNoeSBmb3IgQ1BVIDAKPiA+IFsgICAgNC4yMTE3
NzddIGluIG12ZWJ1IHByb2JlCj4gPiBbICAgIDQuMjE0NTA4XSBjaGVjayBkZXZpY2UgbWF0Y2gK
PiA+IFsgICAgNC4yMTc2MDldIGRldmljZSBkaWQgbWF0Y2gKPiA+IFsgICAgNC4yMjA2NjJdIGNo
ZWNrIHJlc291cmNlcwo+ID4gWyAgICA0LjIyMzQ1NV0gcmVzb3VyY2VzIG9rCj4gPiBbICAgIDQu
MjI2MDYxXSBpbiBwaHkgaW5pdCBiZWZvcmUgY2hlY2sKPiA+IFsgICAgNC4yMjk3MThdIHBoeS0+
aW5pdF9jb3VudCAwCj4gPiBbICAgIDQuMjMyNzc0XSBwaHktPm9wcy0+aW5pdCAobnVsbCkKPiA+
IFsgICAgNC4yMzYxODhdIHBoeSBwaHktZDAwMTgzMDAucGh5LjI6IHBoeSBwb3dlcm9uIGZhaWxl
ZCAtLT4gLTEKPiA+IFsgICAgNC4yNDIwOTVdIGVuYWJsZSByZXNvdXJjZXMKPiA+IFsgICAgNC4y
NDUwNzJdIGFoY2ktbXZlYnU6IHByb2JlIG9mIGQwMGUwMDAwLnNhdGEgZmFpbGVkIHdpdGggZXJy
b3IgLTEKPiA+IFsgICAgNC4yNTE4MzFdIEV0aGVybmV0IENoYW5uZWwgQm9uZGluZyBEcml2ZXI6
IHYzLjcuMSAoQXByaWwgMjcsIDIwMTEpCj4gPiBbICAgIDQuMjU5NzUzXSBNQUNzZWMgSUVFRSA4
MDIuMUFFCj4gPiBbICAgIDQuMjYzMzcxXSBsaWJwaHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQK
PiA+IFsgICAgNC4yNjc3NzddIHR1bjogVW5pdmVyc2FsIFRVTi9UQVAgZGV2aWNlIGRyaXZlciwg
MS42Cj4gPiBbICAgIDQuMjczMzc1XSBsaWJwaHk6IG9yaW9uX21kaW9fYnVzOiBwcm9iZWQKPiA+
Cj4gPiBJIGJlbGlldmUgdGhlIHNpZ25pZmljYW50IGxpbmUgaXMgWyAgICA0LjIzMjc3NF0gcGh5
LT5vcHMtPmluaXQgKG51bGwpCj4gPgo+ID4gSSdtIG5vdCBzdXJlIHdoZXJlIHRoYXQgd2FzIHN1
cHBvc2VkIHRvIGhhdmUgYmVlbiBpbml0aWFsaXplZCBidXQgaXQKPiBhcHBhcmVudGx5IHdhcyBu
b3QuCj4gCj4gU29tZXRoaW5nIGxvb2tzIHdyb25nIGluIHlvdXIgbG9nczogeW91IGhhdmUgaW5p
dF9jb3VudCB0byAwIGFuZAo+IG9wcy0+aW5pdCgpIHRvIE5VTEwsIGhvdyBjYW4gIihwaHktPmlu
aXRfY291bnQgPT0gMCAmJiBwaHktPm9wcy0+aW5pdCkiCj4gYmUgZXZhbHVhdGVkIHRvIHRydWU/
Cj4gCj4gTWlxdcOobAoKTXkgcHJpb3IgYXNzZXJ0aW9uIHRoYXQgdGhlIGlmIGRpZCBub3QgZXZh
bHVhdGUgdHJ1ZSBpcyBiYXNlZCBvbiBub3Qgc2VlaW5nIHRoZSA6CgpwcmludGsoS0VSTl9JTkZP
ICJpbiBwaHkgaW5pdCBwYXN0IGNoZWNrXG4iKTsKCmluc2lkZSBvZiB0aGUgaWYgc3RhdGVtZW50
LgoKVGhhdCBiZWluZyBzYWlkLiAgSSBoYXZlIDMgZXNwcmVzc29iaW5zLCBvbmUgZnJvbSB0aGUg
b3JpZ2luYWwga2lja3N0YXJ0LCBvbmUgYm91Z2h0IG9uIGFtYXpvbiBhbmQgcHVycG9ydGVkIHRv
IGJlIGEgdjUgYm9hcmQgYW5kIG9uZSB2NyBib2FyZCBib3VnaHQgZnJvbSBnbG9iYWxzY2FsZSBk
aXJlY3RseS4KCkFsbCBvZiB0aGUgdGVzdGluZyBJIGhhdmUgZG9uZSBoYXMgYmVlbiBvbiB0aGUg
djUgYm9hcmQuICBJcyB0aGVyZSBhbnkgY2hhbmNlIHRoYXQgdGhlcmUgbWlnaHQgYmUgc29tZSBk
aWZmZXJlbmNlcyBpbiB0aGUgdmFyaW91cyByZXZpc2lvbnM/ICBXYW50IHJldmlzaW9uIGJvYXJk
IGFyZSB5b3UgdGVzdGluZyBvbj8gIElmIEkgaGF2ZSBvbmUgdGhhdCBtYXRjaGVzIEkgd2lsbCB0
ZXN0IG9uIHRoYXQgb25lIGFzIHdlbGwuCgpUaW0KCnAucy4gVGhhbmsgeW91IGZvciB5b3VyIHBh
dGllbmNlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
