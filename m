Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BA110FA72
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fCVY7p212+k/psIUopMgRTO1r90BBFqrP3ixh3fuH1A=; b=fTlIrwXC3pdHI0IXGskrWP/kA
	0wU2s+cq4YB433AiyjnEqrRB561oWl2KmRl0ciZlV1h73jBmrVpA68QsUTLjorLcBvnFFzM+ag1ZG
	c/8yqD38x3Jt3g/eZSTDvpSU41uh/B3f2qkIOV5VjyTlAJ49USW6ca5yu+t/4Jv7q8kW/T1Wheb4l
	rIQG2CNUVEDcEbN/SgXub4yrKl8JOYOLm8I3YOblBn4Fv9bxhNXw9nn02M3HjRqqaZm89s6QJKNVT
	jAYwIv3Mh2u+kadVIqM4O+ccfiCcHpF7wB8V3ZKBDVFQWacKokM4e2O7rJ7K6zZ0Ene1LldCKy9n7
	pU47FCwlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic49w-0007XC-RD; Tue, 03 Dec 2019 09:07:52 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic49o-0007WS-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 09:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575364063; x=1577956063;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=10i8EiCkzUPFmpfc6SLZ/xEg14etjWsEQEJrNELNSt0=;
 b=hxMfjmuAWUJGb2hmFcrwdnABaUkDKa2gi0SCeGBGRDqm2rVxe6tImX/cniRK9z5k
 VhpybNJwioCX5+35J+zHQ/JGcI9VHGGBDS1GfA+igzpQNMM5wzq1Fz8W5NlRAz4l
 8oShGEHvUYjnxyMuid4tfSGa0++vqm7Z8SL5JllF4OE=;
X-AuditID: c39127d2-df9ff7000000408f-bb-5de625df13d0
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 11.B2.16527.FD526ED5;
 Tue,  3 Dec 2019 10:07:43 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120310074318-31143 ;
 Tue, 3 Dec 2019 10:07:43 +0100 
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
 <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
 <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
 <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
 <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <a23e4937-cc4a-f39f-fc22-696ed577c44c@phytec.de>
Date: Tue, 3 Dec 2019 10:07:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 03.12.2019 10:07:43,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 03.12.2019 10:07:43
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGLMWRmVeSWpSXmKPExsWyRoCBS/e+6rNYg88zRS2e3bzFZvHwqr/F
 qqk7WSw2Pb7GatH1ayWzxYddV5ktWvceYbd4sUXcgcNj56y77B5PJ0xm99i0qpPNY/OSeo+N
 73YwefT/NQhgi+KySUnNySxLLdK3S+DKWLkuoKDVu+LjyaQGxiaLLkZODgkBE4lv546zgNhC
 AlsZJR7OUOli5AKyTzFK/L/cBpYQFgiXWLdmMZgtIqAl8bf9PytIEbPAeUaJy+8aWCE6rjBL
 tLUtZwapYhNwklh8voMNxOYVsJE483guK4jNIqAiseLaRkYQW1QgQuL59huMEDWCEidnPgHb
 wClgKzF70RuwoRICVxglju3cxgZxq5DE6cVnwRYwC5hJzNv8EMoWl7j1ZD4ThK0tsWzha+YJ
 jEKzkMydhaRlFpKWWUhaFjCyrGIUys1Mzk4tyszWK8ioLElN1ktJ3cQIjJvDE9Uv7WDsm+Nx
 iJGJg/EQowQHs5II7zaJp7FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeTfwloQJCaQnlqRmp6YW
 pBbBZJk4OKUaGD3/Wkb5aD/5GRHof+Xyl7VHckyNKyrKwqeWXPrcuZMxdOOdwNizcZ8FHWSV
 qndtnVu5/tRUZtGod8/1fN/Gf5C2X1699KifpaBPwDnJyA/aShe2RjOZnpJ17vnlFrVr3sJ7
 hpXhl+9tu3I8Za18lsnMw47FeqvqnZxvTv3lxzX3RcLajwkeCUosxRmJhlrMRcWJAFb+co2J
 AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_010745_039071_FC8F628F 
X-CRM114-Status: GOOD (  31.16  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpPbiAwMy4xMi4xOSAwOTozMywgTWFyY28gRmVsc2NoIHdyb3RlOgo+IEhpIFN0
ZWZhbiwKPiAKPiBPbiAxOS0xMi0wMyAwOToxMSwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOgo+
PiBIaSBNYXJjbywKPj4KPj4gT24gMDIuMTIuMTkgMTU6NTMsIE1hcmNvIEZlbHNjaCB3cm90ZToK
Pj4+IE9uIDE5LTEyLTAyIDE1OjMwLCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6Cj4+Pj4gSGkg
TWFyY28sCj4+Pj4KPj4+PiBPbiAwMi4xMi4xOSAxNToxNCwgTWFyY28gRmVsc2NoIHdyb3RlOgo+
Pj4+PiBIaSBTdGVmYW4sCj4+Pj4+Cj4+Pj4+IE9uIDE5LTEyLTAyIDE0OjU1LCBTdGVmYW4gUmll
ZG3DvGxsZXIgd3JvdGU6Cj4+Pj4+PiBIaSBNYXJjbywKPj4+Pj4+Cj4+Pj4+PiBPbiAwMi4xMi4x
OSAxMzo0MiwgTWFyY28gRmVsc2NoIHdyb3RlOgo+Pj4+Pj4+IEhpIFN0ZWZhbiwKPj4+Pj4+Pgo+
Pj4+Pj4+IE9uIDE5LTEyLTAyIDExOjA5LCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6Cj4+Pj4+
Pj4+IEhpIE1hcmNvLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiB5b3VyIHByb3Bvc2VkIHNldHRpbmcgaXMg
b25seSB2YWxpZCBmb3IgdGhlIExETyBlbmFibGVkIGNhc2UgYnV0IG5vdCBmb3IgdGhlCj4+Pj4+
Pj4+IGNhc2Ugd2hlcmUgdGhlIExETydzIGFyZSBpbiBieXBhc3MgbW9kZS4gSXMgdGhhdCBpbnRl
bmRlZD8gSW4gYnlwYXNzIG1vZGUgaXQKPj4+Pj4+Pj4gYWN0dWFsbHkgbmVlZHMgdG8gYmUgMC45
MjUgViBtaW4gZm9yIEFSTSBhbmQgMS4xNSBWIG1pbiBmb3IgU09DLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
VGhlIGNhc2UgaXMgdGhhdCB0aGUgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydCB0aGUgYnlwYXNzIG1v
ZGUgY3VycmVudGx5IHNvCj4+Pj4+Pj4geWVzIGl0IHdhcyBpbnRlbmRlZC4KPj4+Pj4+Cj4+Pj4+
PiBPaywgSSBzZWUuCj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4+IERpZCB5b3UgZXhwZXJpZW5jZSBh
biBpc3N1ZSB3aXRoIHRoZSBjdXJyZW50IHNldHRpbmdzIG9yIGlzIHRoaXMganVzdCBhCj4+Pj4+
Pj4+IGNvc21ldGljIGNoYW5nZT8KPj4+Pj4+Pgo+Pj4+Pj4+IFRoZXJlIGlzIGN1cnJlbnRseSBu
byBpc3N1ZSBiZWNhdXNlIHRoZSBpbnRlcm5hbGx5IExETydzIGRvbid0IHRyeSB0bwo+Pj4+Pj4+
IGFwcGx5IHN1Y2ggYSBsb3cgdm9sdGFnZSB2YWx1ZS4gQnV0IEkgdGhpbmsgaXQgaXNuJ3QgYSBj
b3NtZXRpYyBjaGFuZ2UKPj4+Pj4+PiBiZWNhdXNlIHRoaXMgdmFsdWUgaXMgd3JvbmcuIFdlIG5l
ZWQgdG8gc3BlY2lmeSB0aGUgdmFsaWQgdm9sdGFnZSByYW5nZS4KPj4+Pj4+Cj4+Pj4+PiBQbGVh
c2UgY29ycmVjdCBtZSBpZiBJJ20gd3JvbmcsIGJ1dCBpc24ndCB0aGUgcmVndWxhdG9yLW1pbiBh
bmQKPj4+Pj4+IHJlZ3VsYXRvci1tYXggdmFsdWVzIHN1cHBvc2VkIHRvIHJlZmxlY3QgdGhlIG1p
biBhbmQgbWF4IHZhbHVlcyB0aGlzCj4+Pj4+PiByZWd1bGF0b3IgY2FuIGRlbGl2ZXI/Cj4+Pj4+
Cj4+Pj4+IE5vcGUsIHRoZSBjb25zdHJhaW50cyBhcmUgaGFyZCBjb2RlZCB3aXRoaW4gdGhlIGRy
aXZlciBlLmcuIGRhOTA2MjogPgo+Pj4+PiA4PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+IC8qIFJlZ3VsYXRvciBv
cGVyYXRpb25zICovCj4+Pj4+Cj4+Pj4+IC8qIEN1cnJlbnQgbGltaXRzIGFycmF5IChpbiB1QSkK
Pj4+Pj4gICAgICogLSBEQTkwNjFfSURfW0JVQ0sxfEJVQ0szXQo+Pj4+PiAgICAgKiAtIERBOTA2
Ml9JRF9bQlVDSzF8QlVDSzJ8QlVDSzRdCj4+Pj4+ICAgICAqIEVudHJ5IGluZGV4ZXMgY29ycmVz
cG9uZHMgdG8gcmVnaXN0ZXIgdmFsdWVzLgo+Pj4+PiAgICAgKi8KPj4+Pj4gc3RhdGljIGNvbnN0
IHVuc2lnbmVkIGludCBkYTkwNjJfYnVja19hX2xpbWl0c1tdID0gewo+Pj4+PiAJNTAwMDAwLCAg
NjAwMDAwLCAgNzAwMDAwLCAgODAwMDAwLCAgOTAwMDAwLCAxMDAwMDAwLAo+Pj4+PiAJMTEwMDAw
MCwgMTIwMDAwMCwKPj4+Pj4gCTEzMDAwMDAsIDE0MDAwMDAsIDE1MDAwMDAsIDE2MDAwMDAsIDE3
MDAwMDAsCj4+Pj4+IAkxODAwMDAwLCAxOTAwMDAwLCAyMDAwMDAwCj4+Pj4+IH07Cj4+Pj4+Cj4+
Pj4+IC8qIEN1cnJlbnQgbGltaXRzIGFycmF5IChpbiB1QSkKPj4+Pj4gICAgICogLSBEQTkwNjFf
SURfQlVDSzIKPj4+Pj4gICAgICogLSBEQTkwNjJfSURfQlVDSzMKPj4+Pj4gICAgICogRW50cnkg
aW5kZXhlcyBjb3JyZXNwb25kcyB0byByZWdpc3RlciB2YWx1ZXMuCj4+Pj4+ICAgICAqLwo+Pj4+
PiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50Cj4+Pj4+IGRhOTA2Ml9idWNrX2JfbGltaXRzW10g
PSB7Cj4+Pj4+IAkxNTAwMDAwLCAxNjAwMDAwLCAxNzAwMDAwLCAxODAwMDAwLAo+Pj4+PiAJMTkw
MDAwMCwgMjAwMDAwMCwgMjEwMDAwMCwgMjIwMDAwMCwKPj4+Pj4gCTIzMDAwMDAsIDI0MDAwMDAs
IDI1MDAwMDAsCj4+Pj4+IAkyNjAwMDAwLCAyNzAwMDAwLCAyODAwMDAwLAo+Pj4+PiAJMjkwMDAw
MCwgMzAwMDAwMAo+Pj4+PiB9Owo+Pj4+Pgo+Pj4+PiA4PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pj4+Cj4+Pj4KPj4+
PiBUaGVzZSBhcmUgdGhlIGF2YWlsYWJsZSBjdXJyZW50IGxpbWl0cyBmb3IgdGhlIGJ1Y2sgcmVn
dWxhdG9ycy4gSSBkb24ndCBzZWUKPj4+PiB3aGVyZSB0aGV5IGNvcnJlc3BvbmQgdG8gdGhlIG1p
bi9tYXggc2V0dGFibGUgb3V0cHV0IHZvbHRhZ2UuIE1heWJlIEkgbWlzc2VkCj4+Pj4gc29tZXRo
aW5nPwo+Pj4KPj4+IFBsZWFzZSBjaGVjayB0aGUgZm9sbG93aW5nIHN0cnVjdHM6Cj4+Pgo+Pj4g
ICAgLSBzdGF0aWMgY29uc3Qgc3RydWN0IGRhOTA2Ml9yZWd1bGF0b3JfaW5mbyBsb2NhbF9kYTkw
NjFfcmVndWxhdG9yX2luZm9bXQo+Pj4gICAgLSBzdGF0aWMgY29uc3Qgc3RydWN0IGRhOTA2Ml9y
ZWd1bGF0b3JfaW5mbyBsb2NhbF9kYTkwNjJfcmVndWxhdG9yX2luZm9bXQo+Pj4KPj4+IFRoZXJl
IHlvdSBoYXZlIHRoZSBtaW5fdVYsIHVWX3N0ZXAsIG5fdm9sdGFnZXMgc28gdGhlIGNvcmUgY2Fu
IHZhbGlkYXRlCj4+PiBpZiB0aGUgZHQtdmFsdWUgaXMgd2l0aGluIHRoZSByYW5nZS4KPj4KPj4g
VGhhbmtzLCB0aGF0IG1ha2VzIG1vcmUgc2Vuc2UuCj4+Cj4+Pgo+Pj4+IFRoZSByZWd1bGF0b3Ig
YmluZGluZ3Mgc3RhdGU6Cj4+Pj4gLSByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdDogc21hbGxlc3Qg
dm9sdGFnZSBjb25zdW1lcnMgbWF5IHNldAo+Pj4+Cj4+Pj4gLSByZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdDogbGFyZ2VzdCB2b2x0YWdlIGNvbnN1bWVycyBtYXkgc2V0Cj4+Pgo+Pj4gWWVzIGFuZCBh
Y2NvcmRpbmcgdGhlIGRhdGFzaGVldCBJIG1lbnRpb25pZWQgdGhlIGN1cnJlbnQgdmFsdWVzIGFy
ZW4ndAo+Pj4gY29ycmVjdC4KPj4+Cj4+Pj4gRm9yIG1lIHRoYXQgaXMgZGV2aWNlIGRlcGVuZGVk
IGFuZCBub3QgZGVzaWduIGRlcGVuZGVkLgo+Pj4+Cj4+Pj4gV2hhdCBpcyB0aGUgc2NlbmFyaW8g
eW91J3JlIHRoaW5raW5nIGFib3V0IHdoaWNoIHdvdWxkIGNhdXNlIHRoZSBTT0MsIGFzIGEKPj4+
PiBjb25zdW1lciwgdG8gcmVxdWVzdCBhIGxvd2VyIHZvbHRhZ2UgYXMgaXQgbmVlZHM/Cj4+Pgo+
Pj4gVGhlIHRoaW5nIGlzIHRoYXQgdGhlIERUIGFic3RyYWN0cyB0aGUgSFcgYW5kIHRoZXNlIHZh
bHVlcyBhcmUgbm90Cj4+PiBjb3JyZWN0LiBBcyBtZW50aW9uZWQgaW4gbXkgY29tbWl0IG1lc3Nh
Z2UgdGhlIHZhbHVlcyBzaG91bGQgbWVldAo+Pj4gdGhlIGRhdGFzaGVldCByZXN0cmljdGlvbnMg
YW5kIHRoaXMgaXNuJ3QgdGhlIGNhc2UgeWV0Lgo+Pgo+PiBJIGRvbid0IGFncmVlLiBUaGUgZGF0
YXNoZWV0IHlvdSBtZW50aW9uIGlzIHRoZSBpLk1YIDYgZGF0YXNoZWV0IGFuZCB0aHVzCj4+IHRo
ZSBsaW1pdGF0aW9uIHNob3VsZCByZXNpZGUgaW4gdGhlIGkuTVggNiByZWd1bGF0b3JzIGFuZCBu
b3QgaW4gdGhlIFBNSUMncy4KPj4gVGhpcyBsaW1pdGF0aW9uIGlzIG5vdCBqdXN0IHZhbGlkIGlu
IGNvbWJpbmF0aW9uIHdpdGggdGhhdCBQTUlDIGJ1dCBmb3IgYWxsCj4+IGkuTVggNi4KPiAKPiBU
aGUgZGF0YXNoZWV0IHRlbGxzIHlvdSB3aGljaCB2b2x0YWdlIHNob3VsZCBiZSBhcHBsaWVkIHRv
IHRoZSBpbXg2IGFuZAo+IHNvIHlvdSBoYXZlIHRvIHNldCB0aGlzIGhlcmUuIFdoYXQgaGFwcGVu
cyBpZiB0aGUgaW50ZXJuYWxseSBsZG8KPiByZXF1ZXN0IGEgdm9sdGFnZSB2YWx1ZSBiZWxvdyAw
LjlWPyBUaGVuIHRoZSB2YWx1ZSB3aWxsIGJlIGFwcGxpZWQKPiBiZWNhdXNlIHdlIHNwZWNpZmll
ZCAwLjczViBhbmQgdGhlIHN5c3RlbSBkb24ndCB3b3JrIGFueW1vcmUgb3IgZGlkIHlvdQo+IHZl
cmlmaWVkIHRoYXQgY2FzZT8KClRoZSBMRE8gc2hvdWxkIG5vdCBiZSBhYmxlIHRvIHJlcXVlc3Qg
YSB0b28gbG93IHZvbHRhZ2Ugc2luY2UgdGhlIHZhbHVlcyAKZnJvbSB0aGUgaS5NWCA2IGRhdGFz
aGVldCBuZWVkIHRvIGJlIGFwcGxpZWQgdG8gdGhlIExETyByZWd1bGF0b3IgYW5kIHRodXMgCnBy
ZXZlbnRpbmcgdGhlIExETyBmcm9tIHJlcXVlc3RpbmcgdGhpcyB0b28gbG93IHZvbHRhZ2UuIFdo
eSBqdXN0IGZpeCB0aGlzIApmb3IgdGhpcyBwYXJ0aWN1bGFyIGNhc2Ugd2l0aCB0aGlzIG9uZSBQ
TUlDIHdoZW4gaXQgYWN0dWFsbHkgY291bGQgYmUgZml4ZWQgCmZvciBhbGwgaS5NWCA2IFBNSUMg
Y29tYmluYXRpb25zPyBUaGVzZSBsaW1pdGF0aW9ucyBhcmUgZml4ZWQgbGltaXRhdGlvbnMgCmZy
b20gdGhlIGkuTVggNiBkYXRhc2hlZXQgYW5kIGRvIG5vdCByZXN1bHQgZnJvbSB0aGUgUE1JQyAr
IGkuTVggNiBjb21iaW5hdGlvbi4KCj4gCj4+IElmIEkgaGF2ZSB0aGlzIHdyb25nIGFuZCB0aGUg
bWFpbnRhaW5lcnMgYWdyZWUgd2l0aCB5b3UgY291bGQgeW91IHBsZWFzZQo+PiBtYWtlIHN1cmUg
dG8gYWNjb3VudCBmb3IgdGhlIGJ5cGFzcyBtb2RlIGFzIHdlbGwgc2luY2UgdGhlc2UgdmFsdWVz
IGZyb20gdGhlCj4+IGRhdGFzaGVldCBhcmUgdmFsaWQgdG9vPwo+IAo+IEFzIEkgc2FpZCwgdGhl
IGJ5cGFzcyBtb2RlIGlzbid0IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyIGFuZCBhbGwgaW14Ngo+
IGJhc2VkIGRldmljZXRyZWVzIGZvbGxvdyB0aGF0IGNhc2UuIFNvIHdlIGRvbid0IGhhdmUgdG8g
dGFrZSB0aGF0IGludG8KPiBhY2NvdW50LiBBbHNvIHdlIGNhbid0IG1lZXQgYm90aCBjb250cmFp
bnRzIHdpdGggb25lIGR0IGFuZCBmdXRoZXJtb3JlCj4gdGhlIGJ5cGFzcyBtb2RlIGRlY3JlYXNl
IHlvdXIgaW14NiBsaWZldGltZSBkdWUgdGhlIHRoZSBpbmNyZWFzZWQgcmlwcGxlCj4gb24gdGhl
IGFybS1jb3JlIHN1cHBseS4gU28gSSB0aGluayBubyBvbmUgd2FudHMgdGhpcyBzZXR1cCBpbiB0
aGUgbmVhcgo+IGZ1dHVyZS4KCk9rLgoKUmVnYXJkcywKU3RlZmFuCgo+IAo+IFJlZ2FyZHMsCj4g
ICAgTWFyY28KPiAKPj4gUmVnYXJkcywKPj4gU3RlZmFuCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+
ICAgICBNYXJjbwo+Pj4KPj4+PiBSZWdhcmRzLAo+Pj4+IFN0ZWZhbgo+Pj4+Cj4+Pj4+IFNvIHlv
dSBoYXZlIHRvIHNwZWNpZnkgdGhlIG1pbi9tYXggdm9sdGFnZSBmb3IgeW91ciBkZXNpZ24uCj4+
Pj4+Cj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+ICAgICAgTWFyY28KPj4+Pj4KPj4+Pj4+IE1heWJlIHlv
dXIgY2hhbmdlIGlzIGJldHRlciBwbGFjZWQgaW4gdGhlIGFuYXRvcCByZWd1bGF0b3JzLiBCdHcg
dGhleSBhbHNvCj4+Pj4+PiBoYXZlIGEgMC43MjUgViBtaW5pbXVtIHZvbHRhZ2U6Cj4+Pj4+Pgo+
Pj4+Pj4gICAgRnJvbSBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLmR0c2k6Cj4+Pj4+Pgo+Pj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWdfYXJtOiByZWd1bGF0b3It
dmRkY29yZSB7Cj4+Pj4+Pgo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGFuYXRvcC1yZWd1bGF0b3IiOwo+Pj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0g
InZkZGFybSI7Cj4+Pj4+Pgo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDcyNTAwMD47Cj4+Pj4+Pgo+Pj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDE0NTAwMDA+Owo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+Pj4+Pgo+Pj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1yZWctb2Zmc2V0
ID0gPDB4MTQwPjsKPj4+Pj4+Cj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYW5hdG9wLXZvbC1iaXQtc2hpZnQgPSA8MD47Cj4+Pj4+Pgo+Pj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC12b2wtYml0LXdp
ZHRoID0gPDU+Owo+Pj4+Pj4KPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBhbmF0b3AtZGVsYXktcmVnLW9mZnNldCA9IDwweDE3MD47Cj4+Pj4+Pgo+Pj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1kZWxh
eS1iaXQtc2hpZnQgPSA8MjQ+Owo+Pj4+Pj4KPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBhbmF0b3AtZGVsYXktYml0LXdpZHRoID0gPDI+Owo+Pj4+Pj4K
Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3At
bWluLWJpdC12YWwgPSA8MT47Cj4+Pj4+Pgo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGFuYXRvcC1taW4tdm9sdGFnZSA9IDw3MjUwMDA+Owo+Pj4+Pj4K
Pj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3At
bWF4LXZvbHRhZ2UgPSA8MTQ1MDAwMD47Cj4+Pj4+Pgo+Pj4+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB9Owo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBSZWdhcmRzLAo+Pj4+Pj4g
U3RlZmFuCj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gUmVnYXJkcywKPj4+Pj4+PiAgICAgICBNYXJj
bwo+Pj4+Pj4+Cj4+Pj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+Pj4+IFN0ZWZhbgo+Pj4+Pj4+Pgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBPbiAyOS4xMS4xOSAxNzo0OCwgTWFyY28gRmVsc2NoIHdyb3RlOgo+Pj4+
Pj4+Pj4gVGhlIGN1cnJlbnQgc2V0IG1pbmltdW0gdm9sdGFnZSBvZiA3MzAwMDBtViBzZWVtcyB0
byBiZSB3cm9uZy4gSSBkb24ndAo+Pj4+Pj4+Pj4ga25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3Bl
Y2lmaWVzIHRoYXQgYnV0IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwo+Pj4+Pj4+Pj4gdGhh
dCB0aGUgbWluaW11bSB2b2x0YWdlIHNob3VsZCBiZSAxLjA1ViBmb3IgVkREX0FSTSAoTERPIGVu
YWJsZWQsIGxvd2VzdAo+Pj4+Pj4+Pj4gb3BwKSBhbmQgMS4yNzVWIGZvciBWRERfU09DIChMRE8g
ZW5hYmxlZCwgbG93ZXN0IG9wcCkuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gRml4ZXM6IGRkZWM1ZDFj
MDA0NyAoIkFSTTogZHRzOiBpbXg2OiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBwaHlDT1JFLWku
TVggNiBTT00iKQo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNj
aEBwZW5ndXRyb25peC5kZT4KPj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4gICAgICAgYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSB8IDQgKystLQo+Pj4+Pj4+
Pj4gICAgICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5
dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4+Pj4+Pj4+IGluZGV4IDY0ODZkZjNlMjk0Mi4uNDZkNDk1
M2M1NTg4IDEwMDY0NAo+Pj4+Pj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1w
aHl0ZWMtcGh5Y29yZS1zb20uZHRzaQo+Pj4+Pj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaQo+Pj4+Pj4+Pj4gQEAgLTEwNywxNCArMTA3
LDE0IEBACj4+Pj4+Pj4+PiAgICAgICAJCXJlZ3VsYXRvcnMgewo+Pj4+Pj4+Pj4gICAgICAgCQkJ
dmRkX2FybTogYnVjazEgewo+Pj4+Pj4+Pj4gICAgICAgCQkJCXJlZ3VsYXRvci1uYW1lID0gInZk
ZF9hcm0iOwo+Pj4+Pj4+Pj4gLQkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3MzAwMDA+
Owo+Pj4+Pj4+Pj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDUwMDAwPjsKPj4+
Pj4+Pj4+ICAgICAgIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzgwMDAwPjsKPj4+
Pj4+Pj4+ICAgICAgIAkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+Pj4+Pj4gICAgICAgCQkJ
fTsKPj4+Pj4+Pj4+ICAgICAgIAkJCXZkZF9zb2M6IGJ1Y2syIHsKPj4+Pj4+Pj4+ICAgICAgIAkJ
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfc29jIjsKPj4+Pj4+Pj4+IC0JCQkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8NzMwMDAwPjsKPj4+Pj4+Pj4+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MTI3NTAwMD47Cj4+Pj4+Pj4+PiAgICAgICAJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTM4MDAwMD47Cj4+Pj4+Pj4+PiAgICAgICAJCQkJcmVndWxhdG9yLWFsd2F5cy1v
bjsKPj4+Pj4+Pj4+ICAgICAgIAkJCX07Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+
Pgo+Pj4+Pgo+Pj4+Cj4+Pgo+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
