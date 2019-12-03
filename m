Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF4610F986
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bCwXpmdil6oWzt8b8ZnhOqof3tiLbTwPMp68HhMbf3k=; b=aDLks680aBGYly+aRB4hUmqwE
	qLOnNw3kgoUyP6pgbg0xmH54GmqeBbqAD/4uJAjhmTRDsyseTwgFR5CJe1VgjKhz5Aj3aSWKysfDB
	AHob9NDg+cfCeyru4WgmTw+kRG8UfWFeWBDhh+ezQXqOvFrcCv6jV3OveoH1yT6Copab2wloof3AT
	qyEJfO+WmOtINckjZPqKJbQgJGvGVzqDI09OU/EToA/R3172CwoAxNAl46w7WCNvg0q5TTfkbPql2
	ZD+xSUi+uCAFvJdQSc+DK68xj1D7t4HOmJjAZNh5gedfN0Xr8MDwevw1NdCagKAesuMOc+6hSN//5
	f4JPVWDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3HR-0001pY-Jr; Tue, 03 Dec 2019 08:11:33 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3HK-0001p6-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 08:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575360682; x=1577952682;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ncMwT8esZ5+JBNC8DE0LbLxzJCEkIxMFyD6kjSoygkQ=;
 b=lDqoDdvCQrDW6u+xhk3Ey7HixdRk7hIpChsRpzZFsofFrcG7FtFJollxeLoJqIV6
 O0y4N7CFMBVvV7cvgW+S/Gs2CV490IM0hcUbz9rx40E8LqDDsWHEZ2niDMG5c7B2
 6arCLJ+Ixjj8zoGjCCix0MI+vpgDnL0xht2xddzHCvI=;
X-AuditID: c39127d2-df9ff7000000408f-ed-5de618a96912
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 42.22.16527.9A816ED5;
 Tue,  3 Dec 2019 09:11:21 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120309112109-30610 ;
 Tue, 3 Dec 2019 09:11:21 +0100 
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
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
Date: Tue, 3 Dec 2019 09:11:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 03.12.2019 09:11:21,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 03.12.2019 09:11:21
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBLMWRmVeSWpSXmKPExsWyRoCBS3eVxLNYg6mX+Cye3bzFZvHwqr/F
 qqk7WSw2Pb7GatH1ayWzxYddV5ktWvceYbd4sUXcgcNj56y77B5PJ0xm99i0qpPNY/OSeo+N
 73YwefT/NQhgi+KySUnNySxLLdK3S+DKmHfpNVPBBZuKpvvz2BoYD+h0MXJySAiYSExvb2Hv
 YuTiEBLYyijx7vEEJgjnFKPEvv0L2UCqhAXCJdatWcwCYosIaEn8bf/PClLELHCeUeLyuwZW
 iI53TBKr7yxjB6liE3CSWHy+A6ybV8BG4tH7J0BjOThYBFQk9s82AQmLCkRIPN9+gxGiRFDi
 5MwnYAs4BWwl2t4fADtJQuAK0EnTfrBB3CokcXrxWWYQm1nATGLe5odQtrjErSfzmSBsbYll
 C18zT2AUmoVk7iwkLbOQtMxC0rKAkWUVo1BuZnJ2alFmtl5BRmVJarJeSuomRmDsHJ6ofmkH
 Y98cj0OMTByMhxglOJiVRHi3STyNFeJNSaysSi3Kjy8qzUktPsQozcGiJM67gbckTEggPbEk
 NTs1tSC1CCbLxMEp1cC4UEY0t/ivdquT7qn4fezbEj4FO5xy3Szq+VXXXOcga+j+AubApydt
 isVuGLA+tX9/V+MIA0/zOo4YjabrO193qkiezIvQWxzSknTxVm6whXH79TUfij9GX3294I7a
 xFTzQs+OwAfRd022fW63nakXW5B84uvZ/VMPRZRZKTeIH7X/wzNR/LoSS3FGoqEWc1FxIgBV
 bRpWiwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_001126_681419_85E42C02 
X-CRM114-Status: GOOD (  25.84  )
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

SGkgTWFyY28sCgpPbiAwMi4xMi4xOSAxNTo1MywgTWFyY28gRmVsc2NoIHdyb3RlOgo+IE9uIDE5
LTEyLTAyIDE1OjMwLCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6Cj4+IEhpIE1hcmNvLAo+Pgo+
PiBPbiAwMi4xMi4xOSAxNToxNCwgTWFyY28gRmVsc2NoIHdyb3RlOgo+Pj4gSGkgU3RlZmFuLAo+
Pj4KPj4+IE9uIDE5LTEyLTAyIDE0OjU1LCBTdGVmYW4gUmllZG3DvGxsZXIgd3JvdGU6Cj4+Pj4g
SGkgTWFyY28sCj4+Pj4KPj4+PiBPbiAwMi4xMi4xOSAxMzo0MiwgTWFyY28gRmVsc2NoIHdyb3Rl
Ogo+Pj4+PiBIaSBTdGVmYW4sCj4+Pj4+Cj4+Pj4+IE9uIDE5LTEyLTAyIDExOjA5LCBTdGVmYW4g
UmllZG3DvGxsZXIgd3JvdGU6Cj4+Pj4+PiBIaSBNYXJjbywKPj4+Pj4+Cj4+Pj4+PiB5b3VyIHBy
b3Bvc2VkIHNldHRpbmcgaXMgb25seSB2YWxpZCBmb3IgdGhlIExETyBlbmFibGVkIGNhc2UgYnV0
IG5vdCBmb3IgdGhlCj4+Pj4+PiBjYXNlIHdoZXJlIHRoZSBMRE8ncyBhcmUgaW4gYnlwYXNzIG1v
ZGUuIElzIHRoYXQgaW50ZW5kZWQ/IEluIGJ5cGFzcyBtb2RlIGl0Cj4+Pj4+PiBhY3R1YWxseSBu
ZWVkcyB0byBiZSAwLjkyNSBWIG1pbiBmb3IgQVJNIGFuZCAxLjE1IFYgbWluIGZvciBTT0MuCj4+
Pj4+Cj4+Pj4+IFRoZSBjYXNlIGlzIHRoYXQgdGhlIGRyaXZlciBkb2Vzbid0IHN1cHBvcnQgdGhl
IGJ5cGFzcyBtb2RlIGN1cnJlbnRseSBzbwo+Pj4+PiB5ZXMgaXQgd2FzIGludGVuZGVkLgo+Pj4+
Cj4+Pj4gT2ssIEkgc2VlLgo+Pj4+Cj4+Pj4+Cj4+Pj4+PiBEaWQgeW91IGV4cGVyaWVuY2UgYW4g
aXNzdWUgd2l0aCB0aGUgY3VycmVudCBzZXR0aW5ncyBvciBpcyB0aGlzIGp1c3QgYQo+Pj4+Pj4g
Y29zbWV0aWMgY2hhbmdlPwo+Pj4+Pgo+Pj4+PiBUaGVyZSBpcyBjdXJyZW50bHkgbm8gaXNzdWUg
YmVjYXVzZSB0aGUgaW50ZXJuYWxseSBMRE8ncyBkb24ndCB0cnkgdG8KPj4+Pj4gYXBwbHkgc3Vj
aCBhIGxvdyB2b2x0YWdlIHZhbHVlLiBCdXQgSSB0aGluayBpdCBpc24ndCBhIGNvc21ldGljIGNo
YW5nZQo+Pj4+PiBiZWNhdXNlIHRoaXMgdmFsdWUgaXMgd3JvbmcuIFdlIG5lZWQgdG8gc3BlY2lm
eSB0aGUgdmFsaWQgdm9sdGFnZSByYW5nZS4KPj4+Pgo+Pj4+IFBsZWFzZSBjb3JyZWN0IG1lIGlm
IEknbSB3cm9uZywgYnV0IGlzbid0IHRoZSByZWd1bGF0b3ItbWluIGFuZAo+Pj4+IHJlZ3VsYXRv
ci1tYXggdmFsdWVzIHN1cHBvc2VkIHRvIHJlZmxlY3QgdGhlIG1pbiBhbmQgbWF4IHZhbHVlcyB0
aGlzCj4+Pj4gcmVndWxhdG9yIGNhbiBkZWxpdmVyPwo+Pj4KPj4+IE5vcGUsIHRoZSBjb25zdHJh
aW50cyBhcmUgaGFyZCBjb2RlZCB3aXRoaW4gdGhlIGRyaXZlciBlLmcuIGRhOTA2MjogPgo+Pj4g
ODwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+Pj4gLyogUmVndWxhdG9yIG9wZXJhdGlvbnMgKi8KPj4+Cj4+PiAvKiBDdXJy
ZW50IGxpbWl0cyBhcnJheSAoaW4gdUEpCj4+PiAgICAqIC0gREE5MDYxX0lEX1tCVUNLMXxCVUNL
M10KPj4+ICAgICogLSBEQTkwNjJfSURfW0JVQ0sxfEJVQ0syfEJVQ0s0XQo+Pj4gICAgKiBFbnRy
eSBpbmRleGVzIGNvcnJlc3BvbmRzIHRvIHJlZ2lzdGVyIHZhbHVlcy4KPj4+ICAgICovCj4+PiBz
dGF0aWMgY29uc3QgdW5zaWduZWQgaW50IGRhOTA2Ml9idWNrX2FfbGltaXRzW10gPSB7Cj4+PiAJ
NTAwMDAwLCAgNjAwMDAwLCAgNzAwMDAwLCAgODAwMDAwLCAgOTAwMDAwLCAxMDAwMDAwLAo+Pj4g
CTExMDAwMDAsIDEyMDAwMDAsCj4+PiAJMTMwMDAwMCwgMTQwMDAwMCwgMTUwMDAwMCwgMTYwMDAw
MCwgMTcwMDAwMCwKPj4+IAkxODAwMDAwLCAxOTAwMDAwLCAyMDAwMDAwCj4+PiB9Owo+Pj4KPj4+
IC8qIEN1cnJlbnQgbGltaXRzIGFycmF5IChpbiB1QSkKPj4+ICAgICogLSBEQTkwNjFfSURfQlVD
SzIKPj4+ICAgICogLSBEQTkwNjJfSURfQlVDSzMKPj4+ICAgICogRW50cnkgaW5kZXhlcyBjb3Jy
ZXNwb25kcyB0byByZWdpc3RlciB2YWx1ZXMuCj4+PiAgICAqLwo+Pj4gc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludAo+Pj4gZGE5MDYyX2J1Y2tfYl9saW1pdHNbXSA9IHsKPj4+IAkxNTAwMDAwLCAx
NjAwMDAwLCAxNzAwMDAwLCAxODAwMDAwLAo+Pj4gCTE5MDAwMDAsIDIwMDAwMDAsIDIxMDAwMDAs
IDIyMDAwMDAsCj4+PiAJMjMwMDAwMCwgMjQwMDAwMCwgMjUwMDAwMCwKPj4+IAkyNjAwMDAwLCAy
NzAwMDAwLCAyODAwMDAwLAo+Pj4gCTI5MDAwMDAsIDMwMDAwMDAKPj4+IH07Cj4+Pgo+Pj4gODwt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+Pj4KPj4KPj4gVGhlc2UgYXJlIHRoZSBhdmFpbGFibGUgY3VycmVudCBsaW1pdHMg
Zm9yIHRoZSBidWNrIHJlZ3VsYXRvcnMuIEkgZG9uJ3Qgc2VlCj4+IHdoZXJlIHRoZXkgY29ycmVz
cG9uZCB0byB0aGUgbWluL21heCBzZXR0YWJsZSBvdXRwdXQgdm9sdGFnZS4gTWF5YmUgSSBtaXNz
ZWQKPj4gc29tZXRoaW5nPwo+IAo+IFBsZWFzZSBjaGVjayB0aGUgZm9sbG93aW5nIHN0cnVjdHM6
Cj4gCj4gICAtIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGE5MDYyX3JlZ3VsYXRvcl9pbmZvIGxvY2Fs
X2RhOTA2MV9yZWd1bGF0b3JfaW5mb1tdCj4gICAtIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGE5MDYy
X3JlZ3VsYXRvcl9pbmZvIGxvY2FsX2RhOTA2Ml9yZWd1bGF0b3JfaW5mb1tdCj4gCj4gVGhlcmUg
eW91IGhhdmUgdGhlIG1pbl91ViwgdVZfc3RlcCwgbl92b2x0YWdlcyBzbyB0aGUgY29yZSBjYW4g
dmFsaWRhdGUKPiBpZiB0aGUgZHQtdmFsdWUgaXMgd2l0aGluIHRoZSByYW5nZS4KClRoYW5rcywg
dGhhdCBtYWtlcyBtb3JlIHNlbnNlLgoKPiAKPj4gVGhlIHJlZ3VsYXRvciBiaW5kaW5ncyBzdGF0
ZToKPj4gLSByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdDogc21hbGxlc3Qgdm9sdGFnZSBjb25zdW1l
cnMgbWF5IHNldAo+Pgo+PiAtIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0OiBsYXJnZXN0IHZvbHRh
Z2UgY29uc3VtZXJzIG1heSBzZXQKPiAKPiBZZXMgYW5kIGFjY29yZGluZyB0aGUgZGF0YXNoZWV0
IEkgbWVudGlvbmllZCB0aGUgY3VycmVudCB2YWx1ZXMgYXJlbid0Cj4gY29ycmVjdC4KPiAKPj4g
Rm9yIG1lIHRoYXQgaXMgZGV2aWNlIGRlcGVuZGVkIGFuZCBub3QgZGVzaWduIGRlcGVuZGVkLgo+
Pgo+PiBXaGF0IGlzIHRoZSBzY2VuYXJpbyB5b3UncmUgdGhpbmtpbmcgYWJvdXQgd2hpY2ggd291
bGQgY2F1c2UgdGhlIFNPQywgYXMgYQo+PiBjb25zdW1lciwgdG8gcmVxdWVzdCBhIGxvd2VyIHZv
bHRhZ2UgYXMgaXQgbmVlZHM/Cj4gCj4gVGhlIHRoaW5nIGlzIHRoYXQgdGhlIERUIGFic3RyYWN0
cyB0aGUgSFcgYW5kIHRoZXNlIHZhbHVlcyBhcmUgbm90Cj4gY29ycmVjdC4gQXMgbWVudGlvbmVk
IGluIG15IGNvbW1pdCBtZXNzYWdlIHRoZSB2YWx1ZXMgc2hvdWxkIG1lZXQKPiB0aGUgZGF0YXNo
ZWV0IHJlc3RyaWN0aW9ucyBhbmQgdGhpcyBpc24ndCB0aGUgY2FzZSB5ZXQuCgpJIGRvbid0IGFn
cmVlLiBUaGUgZGF0YXNoZWV0IHlvdSBtZW50aW9uIGlzIHRoZSBpLk1YIDYgZGF0YXNoZWV0IGFu
ZCB0aHVzIAp0aGUgbGltaXRhdGlvbiBzaG91bGQgcmVzaWRlIGluIHRoZSBpLk1YIDYgcmVndWxh
dG9ycyBhbmQgbm90IGluIHRoZSBQTUlDJ3MuIApUaGlzIGxpbWl0YXRpb24gaXMgbm90IGp1c3Qg
dmFsaWQgaW4gY29tYmluYXRpb24gd2l0aCB0aGF0IFBNSUMgYnV0IGZvciBhbGwgCmkuTVggNi4K
CklmIEkgaGF2ZSB0aGlzIHdyb25nIGFuZCB0aGUgbWFpbnRhaW5lcnMgYWdyZWUgd2l0aCB5b3Ug
Y291bGQgeW91IHBsZWFzZSAKbWFrZSBzdXJlIHRvIGFjY291bnQgZm9yIHRoZSBieXBhc3MgbW9k
ZSBhcyB3ZWxsIHNpbmNlIHRoZXNlIHZhbHVlcyBmcm9tIHRoZSAKZGF0YXNoZWV0IGFyZSB2YWxp
ZCB0b28/CgpSZWdhcmRzLApTdGVmYW4KCj4gCj4gUmVnYXJkcywKPiAgICBNYXJjbwo+IAo+PiBS
ZWdhcmRzLAo+PiBTdGVmYW4KPj4KPj4+IFNvIHlvdSBoYXZlIHRvIHNwZWNpZnkgdGhlIG1pbi9t
YXggdm9sdGFnZSBmb3IgeW91ciBkZXNpZ24uCj4+Pgo+Pj4gUmVnYXJkcywKPj4+ICAgICBNYXJj
bwo+Pj4KPj4+PiBNYXliZSB5b3VyIGNoYW5nZSBpcyBiZXR0ZXIgcGxhY2VkIGluIHRoZSBhbmF0
b3AgcmVndWxhdG9ycy4gQnR3IHRoZXkgYWxzbwo+Pj4+IGhhdmUgYSAwLjcyNSBWIG1pbmltdW0g
dm9sdGFnZToKPj4+Pgo+Pj4+ICAgRnJvbSBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLmR0c2k6
Cj4+Pj4KPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnX2FybTogcmVn
dWxhdG9yLXZkZGNvcmUgewo+Pj4+Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsYW5hdG9wLXJlZ3VsYXRvciI7Cj4+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAi
dmRkYXJtIjsKPj4+Pgo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDcyNTAwMD47Cj4+Pj4KPj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDwxNDUwMDAwPjsKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLXJlZy1vZmZzZXQgPSA8MHgxNDA+Owo+Pj4+Cj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLXZvbC1i
aXQtc2hpZnQgPSA8MD47Cj4+Pj4KPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBhbmF0b3Atdm9sLWJpdC13aWR0aCA9IDw1PjsKPj4+Pgo+Pj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1kZWxheS1yZWctb2Zmc2V0
ID0gPDB4MTcwPjsKPj4+Pgo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGFuYXRvcC1kZWxheS1iaXQtc2hpZnQgPSA8MjQ+Owo+Pj4+Cj4+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLWRlbGF5LWJpdC13aWR0aCA9
IDwyPjsKPj4+Pgo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGFuYXRvcC1taW4tYml0LXZhbCA9IDwxPjsKPj4+Pgo+Pj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1taW4tdm9sdGFnZSA9IDw3MjUwMDA+Owo+Pj4+
Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLW1h
eC12b2x0YWdlID0gPDE0NTAwMDA+Owo+Pj4+Cj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4+Pj4KPj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4gU3RlZmFuCj4+Pj4KPj4+
Pj4KPj4+Pj4gUmVnYXJkcywKPj4+Pj4gICAgICBNYXJjbwo+Pj4+Pgo+Pj4+Pj4gUmVnYXJkcywK
Pj4+Pj4+IFN0ZWZhbgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiAyOS4xMS4xOSAxNzo0OCwgTWFy
Y28gRmVsc2NoIHdyb3RlOgo+Pj4+Pj4+IFRoZSBjdXJyZW50IHNldCBtaW5pbXVtIHZvbHRhZ2Ug
b2YgNzMwMDAwbVYgc2VlbXMgdG8gYmUgd3JvbmcuIEkgZG9uJ3QKPj4+Pj4+PiBrbm93IHRoZSBk
b2N1bWVudCB3aGljaCBzcGVjaWZpZXMgdGhhdCBidXQgdGhlIGlteDZxZGwgZGF0YXNoZWV0cyBz
YXlzCj4+Pj4+Pj4gdGhhdCB0aGUgbWluaW11bSB2b2x0YWdlIHNob3VsZCBiZSAxLjA1ViBmb3Ig
VkREX0FSTSAoTERPIGVuYWJsZWQsIGxvd2VzdAo+Pj4+Pj4+IG9wcCkgYW5kIDEuMjc1ViBmb3Ig
VkREX1NPQyAoTERPIGVuYWJsZWQsIGxvd2VzdCBvcHApLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRml4ZXM6
IGRkZWM1ZDFjMDA0NyAoIkFSTTogZHRzOiBpbXg2OiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBw
aHlDT1JFLWkuTVggNiBTT00iKQo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIEZlbHNjaCA8
bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gICAgICBhcmNoL2Fy
bS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpIHwgNCArKy0tCj4+Pj4+
Pj4gICAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Pj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5
dGVjLXBoeWNvcmUtc29tLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1w
aHljb3JlLXNvbS5kdHNpCj4+Pj4+Pj4gaW5kZXggNjQ4NmRmM2UyOTQyLi40NmQ0OTUzYzU1ODgg
MTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5
Y29yZS1zb20uZHRzaQo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5
dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4+Pj4+PiBAQCAtMTA3LDE0ICsxMDcsMTQgQEAKPj4+Pj4+
PiAgICAgIAkJcmVndWxhdG9ycyB7Cj4+Pj4+Pj4gICAgICAJCQl2ZGRfYXJtOiBidWNrMSB7Cj4+
Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2FybSI7Cj4+Pj4+Pj4gLQkJCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3MzAwMDA+Owo+Pj4+Pj4+ICsJCQkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MTA1MDAwMD47Cj4+Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MTM4MDAwMD47Cj4+Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9yLWFsd2F5
cy1vbjsKPj4+Pj4+PiAgICAgIAkJCX07Cj4+Pj4+Pj4gICAgICAJCQl2ZGRfc29jOiBidWNrMiB7
Cj4+Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX3NvYyI7Cj4+Pj4+Pj4gLQkJ
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3MzAwMDA+Owo+Pj4+Pj4+ICsJCQkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MTI3NTAwMD47Cj4+Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MTM4MDAwMD47Cj4+Pj4+Pj4gICAgICAJCQkJcmVndWxhdG9yLWFs
d2F5cy1vbjsKPj4+Pj4+PiAgICAgIAkJCX07Cj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4+
Cj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
