Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3514A5AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrXb2B0wqSuoWSYe9hGg2j6dN6BUZWZODJCJ3mqWUa4=; b=LUA0UPRMGPV9yp
	JZAutV3JUCeEOa7+cZGSYsf++h0qYXZ6l8LIDExh1WNSP+L9+Ao/XW2Q4bEWwLVPjHoJf8jDJZFKv
	OkO1kasM4WiE3pa8nDcrG1lMAj/Lt8wi7FdeyBSemGQUpwkHZL0E/2jhTLWjyi6dZWFS273i1Hb7x
	L82rxC+IfoTGFT548ybjH9Yk6jwvk3nM8FsZ0obSyTPcoqDlERhjtyo9VKjll9DTAc0JLNeJGZaQw
	iNj2PRpWXBkowtv+OIwpa/H7yk8dPK/tEMpoI6tKGjmqyowFrVKrBOmH0lmmG1Cxy48w3870+0tYG
	/eMgoDy5/GttZMpB3tpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGGU-0006n4-FG; Tue, 18 Jun 2019 15:43:18 +0000
Received: from p3plmtsmtp02.prod.phx3.secureserver.net ([184.168.131.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGGJ-0006lz-Lj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:43:09 +0000
Received: from n16.mail01.mtsvc.net ([216.70.64.51]) by :MT-SMTP: with ESMTP
 id dGFnhUH745laqdGFnhWvFv; Tue, 18 Jun 2019 08:42:35 -0700
X-SID: dGFnhUH745laq
Received: from cpe-71-75-202-74.carolina.res.rr.com ([71.75.202.74]:64224
 helo=SBGCLTOFFICE)
 by n16.mail01.mtsvc.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <tkrantz@stahurabrenner.com>)
 id 1hdGFf-0000Y7-JK; Tue, 18 Jun 2019 11:42:35 -0400
From: "Timothy Krantz" <tkrantz@stahurabrenner.com>
To: "'Miquel Raynal'" <miquel.raynal@bootlin.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>	<20190429095727.48de0b7c@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>	<20190617113841.60032387@xps13>	<20190617114016.10fb9e03@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>	<20190618095812.48a2746b@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADKxydx2LOeRKSPqV4VA77dAQAAAAA=@stahurabrenner.com>	<20190618162428.0417f247@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAACUGsZ5zJFbR6X1CG+aiyUMAQAAAAA=@stahurabrenner.com>
 <20190618173604.4958474c@xps13>
In-Reply-To: <20190618173604.4958474c@xps13>
Subject: RE: espressobin device tree with kernel 5.1 RC
Date: Tue, 18 Jun 2019 11:42:25 -0400
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAD0x6xNgaufTpiiNY/BBdJYAQAAAAA=@stahurabrenner.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHHHNahTQSMuKl1SiqoWXgyzEZ1/QHhLXjKAr/FJm4BlquXjgGHPVqnAl/7lIABsUbEsALMcFvIApCqywoCZezFgQH6aymXphEyEVA=
Content-Language: en-us
X-Authenticated-User: 902853 tkrantz@stahurabrenner.com
X-MT-ID: C1A731F58FEDE20B47E8EFF5D29156B2BFE18A53
X-CMAE-Envelope: MS4wfOWd82gZyFFSwCz1k5D5swN968qTWIQZm46+KfUc8vgF/XMu9S31sO5wRx7teM9wunWh4j+bu0iRksT7+uMDlblCcD+TKw9OGIpX+NUAnXi6P37LYFKk
 I69J4M1vGBhBk01Csy1CoVZtHu50nfMuVetgkepKHdZMup5S7pX1KUMR+d3cmUggGrjE0/QCkRWxFxhoQcD9GNXqXCTSxBEmplPUinH4ySnaX6iY9cDDrpWg
 smXS/HT2gtU9o5/faE1xSQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_084307_757393_E07620CD 
X-CRM114-Status: GOOD (  15.78  )
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

SGkgTWlxdWVsLAoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IE1pcXVlbCBS
YXluYWwgW21haWx0bzptaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tXQo+IFNlbnQ6IFR1ZXNkYXks
IEp1bmUgMTgsIDIwMTkgMTE6MzYgQU0KPiBUbzogVGltb3RoeSBLcmFudHogPHRrcmFudHpAc3Rh
aHVyYWJyZW5uZXIuY29tPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBTdWJqZWN0OiBSZTogZXNwcmVzc29iaW4gZGV2aWNlIHRyZWUgd2l0aCBrZXJuZWwgNS4x
IFJDCj4gCj4gSGkgVGltb3RoeSwKPiAKPiA+ID4gPiBbICAgIDQuMjAzNjkyXSBjYWNoZWluZm86
IFVuYWJsZSB0byBkZXRlY3QgY2FjaGUgaGllcmFyY2h5IGZvciBDUFUgMAo+ID4gPiA+IFsgICAg
NC4yMTAxOTJdIGluIG12ZWJ1IHByb2JlCj4gPiA+ID4gWyAgICA0LjIxMjkyNF0gY2hlY2sgZGV2
aWNlIG1hdGNoCj4gPiA+ID4gWyAgICA0LjIxNjAyNl0gZGV2aWNlIGRpZCBtYXRjaAo+ID4gPiA+
IFsgICAgNC4yMTkwNThdIGNoZWNrIHJlc291cmNlcwo+ID4gPiA+IFsgICAgNC4yMjE4NThdIHJl
c291cmNlcyBvawo+ID4gPiA+IFsgICAgNC4yMjQ0NThdIGVuYWJsZSByZXNvdXJjZXMKPiA+ID4g
PiBbICAgIDQuMjI3NDA1XSBwYXN0IGVuYWJsZSByZXNvdXJjZXMKPiA+ID4gPiBbICAgIDQuMjMw
ODE3XSBkaXNlbmFibGUgcmVzb3VyY2VzCj4gPiA+ID4gWyAgICA0LjIzNDA0Ml0gcGFzdCBkaXNh
YmxlIHJlc291cmNlcwo+ID4gPiA+IFsgICAgNC4yMzc1MzZdIGluaXQgaG9zdAo+ID4gPiA+IFsg
ICAgNC4yMzk5MzFdIGFoY2ktbXZlYnUgZDAwZTAwMDAuc2F0YTogQUhDSSAwMDAxLjAzMDAgMzIg
c2xvdHMgMSBwb3J0cwo+IDYKPiA+ID4gR2JwcyAweDEgaW1wbCBwbGF0Zm9ybSBtb2RlCj4gPiA+
ID4gWyAgICA0LjI0OTE5Nl0gYWhjaS1tdmVidSBkMDBlMDAwMC5zYXRhOiBmbGFnczogbmNxIHNu
dGYgbGVkIG9ubHkgcG1wIGZicwo+IHBpbwo+ID4gPiBzbHVtIHBhcnQgc3hzCj4gPiA+ID4gWyAg
ICA0LjI1ODY0N10gc2NzaSBob3N0MDogYWhjaS1tdmVidQo+ID4gPiA+IFsgICAgNC4yNjI0OTFd
IGF0YTE6IFNBVEEgbWF4IFVETUEvMTMzIG1taW8gW21lbSAweGQwMGUwMDAwLQo+ID4gPiAweGQw
MGUxZmZmXSBwb3J0IDB4MTAwIGlycSAyMQo+ID4gPiA+IFsgICAgNC4yNzA2MDldIHBhc3QgaW5p
dCBob3N0Cj4gPiA+ID4gWyAgICA0LjI3MzM1M10gcGFzdCByYyBjaGVjawo+ID4gPiA+IFsgICAg
NC4yNzY0NTVdIEV0aGVybmV0IENoYW5uZWwgQm9uZGluZyBEcml2ZXI6IHYzLjcuMSAoQXByaWwg
MjcsIDIwMTEpCj4gPiA+ID4gWyAgICA0LjI4NDQwOF0gTUFDc2VjIElFRUUgODAyLjFBRQo+ID4g
PiA+IFsgICAgNC4yODc5NjVdIGxpYnBoeTogRml4ZWQgTURJTyBCdXM6IHByb2JlZAo+ID4gPiA+
IFtzbmlwXQo+ID4gPiA+Cj4gPiA+ID4gVW5mb3J0dW5hdGVseSB0aGF0IGRvZXMgbm90IHRlbGwg
bWUgbXVjaC4gIERvZXMgaXQgc2F5IGFueXRoaW5nIHRvIHlvdT8KPiA+ID4gPiBJIG1lYW4gSSBn
dWVzcyAgICAgICAgcmMgPSBhaGNpX3BsYXRmb3JtX2VuYWJsZV9yZXNvdXJjZXMoaHByaXYpOyBJ
cwo+IGZhaWxpbmcsCj4gPiA+IHNob3VsZCBJIHB1dCBzb21lIHRyYWNlcyBpbiB0aGF0Pwo+ID4g
Pgo+ID4gPiBZZXMsIGluIHBhcnRpY3VsYXIgYXJvdW5kIHRoZSBQSFkgaW5pdGlhbGl6YXRpb24s
IHVudGlsIHlvdSBmb3VuZAo+ID4gPiB3aGVyZSBpdCBmYWlscyBleGFjdGx5Lgo+ID4gPgo+ID4g
Pgo+ID4gPiBUaGFua3MsCj4gPiA+IE1pcXXDqGwKPiA+Cj4gPiBJIGhhdmUgdHJhY2VkIGl0IGRv
d24gdG8gcGh5X2luaXQgaW4gcGh5LWNvcmUuYyBhbmQgaGF2ZSBwdXQgaW4gdGhlIGZvbGxvd2lu
Zwo+IHRyYWNlczoKPiA+Cj4gPiBpbnQgcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ID4gewo+
ID4gICAgICAgICBpbnQgcmV0Owo+ID4KPiA+ICAgICAgICAgaWYgKCFwaHkpCj4gPiAgICAgICAg
ICAgICAgICAgcmV0dXJuIDA7Cj4gPgo+ID4gICAgICAgICByZXQgPSBwaHlfcG1fcnVudGltZV9n
ZXRfc3luYyhwaHkpOwo+ID4gICAgICAgICBpZiAocmV0IDwgMCAmJiByZXQgIT0gLUVOT1RTVVBQ
KQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiAgICAgICAgIHJldCA9IDA7IC8q
IE92ZXJyaWRlIHBvc3NpYmxlIHJldCA9PSAtRU5PVFNVUFAgKi8KPiA+Cj4gPiAgICAgICAgIG11
dGV4X2xvY2soJnBoeS0+bXV0ZXgpOwo+ID4gcHJpbnRrKEtFUk5fSU5GTyAiaW4gcGh5IGluaXQg
YmVmb3JlIGNoZWNrXG4iKTsgcHJpbnRrKEtFUk5fSU5GTwo+ID4gInBoeS0+aW5pdF9jb3VudCAl
ZFxuIiwgcGh5LT5pbml0X2NvdW50KTsgcHJpbnRrKEtFUk5fSU5GTwo+ID4gInBoeS0+b3BzLT5p
bml0ICVwclxuIiwgcGh5LT5vcHMtPmluaXQpOwo+ID4gICAgICAgICBpZiAocGh5LT5pbml0X2Nv
dW50ID09IDAgJiYgcGh5LT5vcHMtPmluaXQpIHsgcHJpbnRrKEtFUk5fSU5GTwo+ID4gImluIHBo
eSBpbml0IHBhc3QgY2hlY2tcbiIpOwo+ID4gICAgICAgICAgICAgICAgIHJldCA9IHBoeS0+b3Bz
LT5pbml0KHBoeSk7Cj4gPiAgICAgICAgICAgICAgICAgaWYgKHJldCA8IDApIHsKPiA+IHByaW50
ayhLRVJOX0lORk8gImluIHBoeSBpbml0ICBwaHktPm9wcy0+aW5pdChwaHkpIGZhaWxlZFxuIik7
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwaHktPmRldiwgInBoeSBpbml0
IGZhaWxlZCAtLT4gJWRcbiIsIHJldCk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3Rv
IG91dDsKPiA+ICAgICAgICAgICAgICAgICB9Cj4gPiAgICAgICAgIH0KPiA+ICAgICAgICAgKytw
aHktPmluaXRfY291bnQ7Cj4gPgo+ID4gb3V0Ogo+ID4gICAgICAgICBtdXRleF91bmxvY2soJnBo
eS0+bXV0ZXgpOwo+ID4gICAgICAgICBwaHlfcG1fcnVudGltZV9wdXQocGh5KTsKPiA+ICAgICAg
ICAgcmV0dXJuIHJldDsKPiA+IH0KPiA+Cj4gPiBXaGljaCBwcm9kdWNlcyB0aGUgZm9sbG93aW5n
IGRtZXNnIDoKPiA+IFsgICAgNC4xOTQ4MzVdIFNlcmlhbDogODI1MC8xNjU1MCBkcml2ZXIsIDMy
IHBvcnRzLCBJUlEgc2hhcmluZyBlbmFibGVkCj4gPiBbICAgIDQuMjA1MjcwXSBjYWNoZWluZm86
IFVuYWJsZSB0byBkZXRlY3QgY2FjaGUgaGllcmFyY2h5IGZvciBDUFUgMAo+ID4gWyAgICA0LjIx
MTc3N10gaW4gbXZlYnUgcHJvYmUKPiA+IFsgICAgNC4yMTQ1MDhdIGNoZWNrIGRldmljZSBtYXRj
aAo+ID4gWyAgICA0LjIxNzYwOV0gZGV2aWNlIGRpZCBtYXRjaAo+ID4gWyAgICA0LjIyMDY2Ml0g
Y2hlY2sgcmVzb3VyY2VzCj4gPiBbICAgIDQuMjIzNDU1XSByZXNvdXJjZXMgb2sKPiA+IFsgICAg
NC4yMjYwNjFdIGluIHBoeSBpbml0IGJlZm9yZSBjaGVjawo+ID4gWyAgICA0LjIyOTcxOF0gcGh5
LT5pbml0X2NvdW50IDAKPiA+IFsgICAgNC4yMzI3NzRdIHBoeS0+b3BzLT5pbml0IChudWxsKQo+
ID4gWyAgICA0LjIzNjE4OF0gcGh5IHBoeS1kMDAxODMwMC5waHkuMjogcGh5IHBvd2Vyb24gZmFp
bGVkIC0tPiAtMQo+ID4gWyAgICA0LjI0MjA5NV0gZW5hYmxlIHJlc291cmNlcwo+ID4gWyAgICA0
LjI0NTA3Ml0gYWhjaS1tdmVidTogcHJvYmUgb2YgZDAwZTAwMDAuc2F0YSBmYWlsZWQgd2l0aCBl
cnJvciAtMQo+ID4gWyAgICA0LjI1MTgzMV0gRXRoZXJuZXQgQ2hhbm5lbCBCb25kaW5nIERyaXZl
cjogdjMuNy4xIChBcHJpbCAyNywgMjAxMSkKPiA+IFsgICAgNC4yNTk3NTNdIE1BQ3NlYyBJRUVF
IDgwMi4xQUUKPiA+IFsgICAgNC4yNjMzNzFdIGxpYnBoeTogRml4ZWQgTURJTyBCdXM6IHByb2Jl
ZAo+ID4gWyAgICA0LjI2Nzc3N10gdHVuOiBVbml2ZXJzYWwgVFVOL1RBUCBkZXZpY2UgZHJpdmVy
LCAxLjYKPiA+IFsgICAgNC4yNzMzNzVdIGxpYnBoeTogb3Jpb25fbWRpb19idXM6IHByb2JlZAo+
ID4KPiA+IEkgYmVsaWV2ZSB0aGUgc2lnbmlmaWNhbnQgbGluZSBpcyBbICAgIDQuMjMyNzc0XSBw
aHktPm9wcy0+aW5pdCAobnVsbCkKPiA+Cj4gPiBJJ20gbm90IHN1cmUgd2hlcmUgdGhhdCB3YXMg
c3VwcG9zZWQgdG8gaGF2ZSBiZWVuIGluaXRpYWxpemVkIGJ1dCBpdAo+IGFwcGFyZW50bHkgd2Fz
IG5vdC4KPiAKPiBTb21ldGhpbmcgbG9va3Mgd3JvbmcgaW4geW91ciBsb2dzOiB5b3UgaGF2ZSBp
bml0X2NvdW50IHRvIDAgYW5kCj4gb3BzLT5pbml0KCkgdG8gTlVMTCwgaG93IGNhbiAiKHBoeS0+
aW5pdF9jb3VudCA9PSAwICYmIHBoeS0+b3BzLT5pbml0KSIKPiBiZSBldmFsdWF0ZWQgdG8gdHJ1
ZT8KPiAKPiBNaXF1w6hsCgpJIGRvIG5vdCBiZWxpZXZlIGl0IGRpZCBldmFsdWF0ZSB0cnVlLiAg
SSBiZWxpZXZlIGl0IGZlbGwgdGhyb3VnaCB0byAKPiAgICAgICAgICsrcGh5LT5pbml0X2NvdW50
Owo+Cj4gb3V0Ogo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZwaHktPm11dGV4KTsKPiAgICAgICAg
IHBoeV9wbV9ydW50aW1lX3B1dChwaHkpOwo+ICAgICAgICAgcmV0dXJuIHJldDsKPiB9CgpUaW0K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
