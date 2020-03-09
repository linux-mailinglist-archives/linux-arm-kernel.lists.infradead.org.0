Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BB617E03F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfsxQ8dbzdySuQSUl3fGeomabEm9Jrx5mI7/0eNhyjM=; b=d0ENHedFdznhs/
	oVd89sufkQPjmJfDGCjCRqnA0CFBGMmhoFZjJdP/qe8nuuEmPZdbI17c1p5r2HVqqOoUD/ABTYH0z
	GbOSfFeYqd6B9fdFWJrHhTPM9gMOIDP52YJUBzIWgJvbQgeurM/2NWUX23Ablv4Wwlo9jmB8V3XgY
	Cll8OJRIcu50C1zjJOSr2R8QKGTKX4AAplbtxydsuG7vfOXuR77IUwIqNxO4XPhM8J8XLlhdpDLDN
	qUMei9Xt2UrFo05g141oJQB5Rje601kO8bmu5wuDtmRIYjn1ENwuDbI2qUmVPi8kRPD4TueqZTo7Z
	Nq+0uuVI/FQUZhpz/2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHWo-0007ZD-R6; Mon, 09 Mar 2020 12:29:02 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHWg-0007S4-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:28:56 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48bcw124fbz1rnrY;
 Mon,  9 Mar 2020 13:28:49 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48bcw10bNHz1qwyg;
 Mon,  9 Mar 2020 13:28:49 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id dqRSDODqEJnb; Mon,  9 Mar 2020 13:28:47 +0100 (CET)
X-Auth-Info: HH+q97FjzenHCVHdQZ7Q00Kt0uoz/tI7kmujMvv24y8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  9 Mar 2020 13:28:47 +0100 (CET)
Subject: Re: [PATCH] drm/stm: repair runtime power management
To: Yannick FERTRE <yannick.fertre@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20200229221649.90813-1-marex@denx.de>
 <a30ad5a774004221903292871797607a@SFHDAG6NODE1.st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <64ea7f77-0a0b-ae3a-2911-5fdc8633255e@denx.de>
Date: Mon, 9 Mar 2020 12:57:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a30ad5a774004221903292871797607a@SFHDAG6NODE1.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052854_829412_B686F185 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Philippe CORNU <philippe.cornu@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy85LzIwIDExOjM1IEFNLCBZYW5uaWNrIEZFUlRSRSB3cm90ZToKPiBIZWxsbyBNYXJlaywK
CkhpLAoKKHBsZWFzZSBzdG9wIHRvcC1wb3N0aW5nKQoKPiBUaGFuayBmb3IgeW91ciBwYXRjaC4g
UG1fcnVudGltZV9wdXRfc3luYyBpcyBhbHNvIGRvbmUgaW50byBmdW5jdGlvbiBsdGRjX2NydGNf
bW9kZV9maXh1cC4KPiBUbyBhdm9pZCBzZXZlcmFsIGNhbGwgb2YgUG1fcnVudGltZV9wdXRfc3lu
YywgaXQgY291bGQgYmUgYmV0dGVyIHRvIGNoZWNrIHBtX3J1bnRpbWUgYWN0aXZpdHk6Cj4gCj4g
KwlpbnQgcmV0Owo+ICAKPiAgCURSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gIAo+ICsJaWYgKCFw
bV9ydW50aW1lX2FjdGl2ZShkZGV2LT5kZXYpKSB7Cj4gKwkJcmV0ID0gcG1fcnVudGltZV9nZXRf
c3luYyhkZGV2LT5kZXYpOwo+ICsJCWlmIChyZXQpIHsKPiArCQkJRFJNX0VSUk9SKCJGYWlsZWQg
dG8gZW5hYmxlIGNydGMsIGNhbm5vdCBnZXQgc3luY1xuIik7Cj4gKwkJCXJldHVybjsKPiArCQl9
Cj4gKwl9Cj4gKwoKV2hlcmUgc2hvdWxkIHRoaXMgZ28gPyBBbmQgd291bGRuJ3QgdGhhdCBvbmx5
IGhpZGUgbmFzdGllciBQTSBpbWJhbGFuY2UKaXNzdWVzID8KCj4gIEJlc3QgcmVnYXJkcwo+IAo+
IFlhbm5pY2sgRmVydHLDqQo+IAo+IAo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJv
bTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+IAo+IFNlbnQ6IHNhbWVkaSAyOSBmw6l2cmll
ciAyMDIwIDIzOjE3Cj4gVG86IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzog
TWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+OyBZYW5uaWNrIEZFUlRSRSA8eWFubmljay5mZXJ0
cmVAc3QuY29tPjsgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT47IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPjsgVmluY2VudCBBQlJJ
T1UgPHZpbmNlbnQuYWJyaW91QHN0LmNvbT47IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0
bTMyQGdtYWlsLmNvbT47IEFsZXhhbmRyZSBUT1JHVUUgPGFsZXhhbmRyZS50b3JndWVAc3QuY29t
PjsgbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbTsgbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gU3ViamVjdDogW1BBVENIXSBkcm0vc3RtOiByZXBh
aXIgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50Cj4gCj4gQWRkIG1pc3NpbmcgcG1fcnVudGltZV9n
ZXRfc3luYygpIGludG8gbHRkY19jcnRjX2F0b21pY19lbmFibGUoKSB0byBtYXRjaCBwbV9ydW50
aW1lX3B1dF9zeW5jKCkgaW4gbHRkY19jcnRjX2F0b21pY19kaXNhYmxlKCksIG90aGVyd2lzZSB0
aGUgTFREQyBtaWdodCBzdXNwZW5kIHZpYSBydW50aW1lIFBNLCBkaXNhYmxlIGNsb2NrLCBhbmQg
dGhlbiBmYWlsIHRvIHJlc3VtZSBsYXRlciBvbi4KPiAKPiBUaGUgdGVzdCB3aGljaCB0cmlnZ2Vy
cyBpdCBpcyByb3VnaGx5IC0tIHJ1biBxdDUgYXBwbGljYXRpb24gd2hpY2ggdXNlcyBlZ2xmcyBw
bGF0Zm9ybSBhbmQgZXRuYXZpdiwgc3RvcCB0aGUgYXBwbGljYXRpb24sIHNsZWVwIGZvciAxNSBt
aW51dGVzLCBydW4gdGhlIGFwcGxpY2F0aW9uIGFnYWluLiBUaGlzIGxlYWRzIHRvIGEgdGltZW91
dCB3YWl0aW5nIGZvciB2c3luYywgYmVjYXVzZSB0aGUgTFREQyBoYXMgc3VzcGVuZGVkLCBidXQg
ZGlkIG5vdCByZXN1bWUuCj4gCj4gRml4ZXM6IDM1YWI2Y2ZiZjIxMSAoImRybS9zdG06IHN1cHBv
cnQgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50IikKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1
dCA8bWFyZXhAZGVueC5kZT4KPiBDYzogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBz
dC5jb20+Cj4gQ2M6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Cj4gQ2M6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IENjOiBW
aW5jZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgo+IENjOiBNYXhpbWUgQ29xdWVs
aW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFs
ZXhhbmRyZS50b3JndWVAc3QuY29tPgo+IFRvOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPiBDYzog
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gLS0tCj4gLS0tLS0tLS0tLS0t
WyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gV0FSTklORzogQ1BVOiAwIFBJRDogMjk3IGF0IGRy
aXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX2hlbHBlci5jOjE0OTQgZHJtX2F0b21pY19oZWxwZXJf
d2FpdF9mb3JfdmJsYW5rcysweDFkYy8weDIwMAo+IFtDUlRDOjM1OmNydGMtMF0gdmJsYW5rIHdh
aXQgdGltZWQgb3V0Cj4gTW9kdWxlcyBsaW5rZWQgaW46Cj4gQ1BVOiAwIFBJRDogMjk3IENvbW06
IFFTR1JlbmRlclRocmVhZCBOb3QgdGFpbnRlZCA1LjYuMC1yYzMtbmV4dC0yMDIwMDIyOC0wMDAx
MC1nMzE4YmYwZmMwOGVmICMyIEhhcmR3YXJlIG5hbWU6IFNUTTMyIChEZXZpY2UgVHJlZSBTdXBw
b3J0KSBbPGMwMTBmMThjPl0gKHVud2luZF9iYWNrdHJhY2UpIGZyb20gWzxjMDEwYWZiOD5dIChz
aG93X3N0YWNrKzB4MTAvMHgxNCkgWzxjMDEwYWZiOD5dIChzaG93X3N0YWNrKSBmcm9tIFs8YzA3
YjFkM2M+XSAoZHVtcF9zdGFjaysweGI0LzB4ZDApIFs8YzA3YjFkM2M+XSAoZHVtcF9zdGFjaykg
ZnJvbSBbPGMwMTFkOGI4Pl0gKF9fd2FybisweGQ0LzB4ZjApIFs8YzAxMWQ4Yjg+XSAoX193YXJu
KSBmcm9tIFs8YzAxMWRjNGM+XSAod2Fybl9zbG93cGF0aF9mbXQrMHg3OC8weGE4KSBbPGMwMTFk
YzRjPl0gKHdhcm5fc2xvd3BhdGhfZm10KSBmcm9tIFs8YzA0YTI2NmM+XSAoZHJtX2F0b21pY19o
ZWxwZXJfd2FpdF9mb3JfdmJsYW5rcysweDFkYy8weDIwMCkKPiBbPGMwNGEyNjZjPl0gKGRybV9h
dG9taWNfaGVscGVyX3dhaXRfZm9yX3ZibGFua3MpIGZyb20gWzxjMDRhNTEwYz5dIChkcm1fYXRv
bWljX2hlbHBlcl9jb21taXRfdGFpbCswCj4geDUwLzB4NjApCj4gWzxjMDRhNTEwYz5dIChkcm1f
YXRvbWljX2hlbHBlcl9jb21taXRfdGFpbCkgZnJvbSBbPGMwNGE1MmE4Pl0gKGNvbW1pdF90YWls
KzB4MTJjLzB4MTNjKSBbPGMwNGE1MmE4Pl0gKGNvbW1pdF90YWlsKSBmcm9tIFs8YzA0YTUzYjQ+
XSAoZHJtX2F0b21pY19oZWxwZXJfY29tbWl0KzB4ZjQvMHgxMDApCj4gWzxjMDRhNTNiND5dIChk
cm1fYXRvbWljX2hlbHBlcl9jb21taXQpIGZyb20gWzxjMDRhMmQzOD5dIChkcm1fYXRvbWljX2hl
bHBlcl9zZXRfY29uZmlnKzB4NTgvMHg2YykKPiBbPGMwNGEyZDM4Pl0gKGRybV9hdG9taWNfaGVs
cGVyX3NldF9jb25maWcpIGZyb20gWzxjMDRiMTk5ND5dIChkcm1fbW9kZV9zZXRjcnRjKzB4NDUw
LzB4NTUwKSBbPGMwNGIxOTk0Pl0gKGRybV9tb2RlX3NldGNydGMpIGZyb20gWzxjMDRhZDU3MD5d
IChkcm1faW9jdGxfa2VybmVsKzB4OTAvMHhlOCkgWzxjMDRhZDU3MD5dIChkcm1faW9jdGxfa2Vy
bmVsKSBmcm9tIFs8YzA0YWQ4YWM+XSAoZHJtX2lvY3RsKzB4MmU0LzB4MzJjKSBbPGMwNGFkOGFj
Pl0gKGRybV9pb2N0bCkgZnJvbSBbPGMwMjQ2Nzg0Pl0gKHZmc19pb2N0bCsweDIwLzB4MzgpIFs8
YzAyNDY3ODQ+XSAodmZzX2lvY3RsKSBmcm9tIFs8YzAyNDcwZjA+XSAoa3N5c19pb2N0bCsweGJj
LzB4N2IwKSBbPGMwMjQ3MGYwPl0gKGtzeXNfaW9jdGwpIGZyb20gWzxjMDEwMTAwMD5dIChyZXRf
ZmFzdF9zeXNjYWxsKzB4MC8weDU0KSBFeGNlcHRpb24gc3RhY2soMHhlZThmM2ZhOCB0byAweGVl
OGYzZmYwKQo+IDNmYTA6ICAgICAgICAgICAgICAgICAgIDAwMDAwMDA1IGFkY2JlYjE4IDAwMDAw
MDA1IGMwNjg2NGEyIGFkY2JlYjE4IDAwMDAwMDAxCj4gM2ZjMDogMDAwMDAwMDUgYWRjYmViMTgg
YzA2ODY0YTIgMDAwMDAwMzYgMDAwMDAwMjkgMDAwMDAwMjMgMDAwMDAwMjMgMDAwMDAwMDcKPiAz
ZmUwOiBiMTEzYjA5OCBhZGNiZWFmYyBiMTEyNTQxMyBiNjE1NWNmOCAtLS1bIGVuZCB0cmFjZSAy
YWQ1YmE5NTRjZWI3NjdhIF0tLS0KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMg
fCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRj
LmMgaW5kZXggOTliZjkzZThiMzZmLi4zMDFkZTA0OTgwNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3N0bS9sdGRjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+
IEBAIC00MjUsOSArNDI1LDEyIEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZW5hYmxl
KHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiAgCQkJCSAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUg
Km9sZF9zdGF0ZSkgIHsKPiAgCXN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9fbHRk
YyhjcnRjKTsKPiArCXN0cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gY3J0Yy0+ZGV2Owo+ICAKPiAg
CURSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gIAo+ICsJcG1fcnVudGltZV9nZXRfc3luYyhkZGV2
LT5kZXYpOwo+ICsKPiAgCS8qIFNldHMgdGhlIGJhY2tncm91bmQgY29sb3IgdmFsdWUgKi8KPiAg
CXJlZ193cml0ZShsZGV2LT5yZWdzLCBMVERDX0JDQ1IsIEJDQ1JfQkNCTEFDSyk7Cj4gIAo+IC0t
Cj4gMi4yNS4wCj4gCgoKLS0gCkJlc3QgcmVnYXJkcywKTWFyZWsgVmFzdXQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
