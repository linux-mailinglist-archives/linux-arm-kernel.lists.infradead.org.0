Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B590F194E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucOWuqdMW9a2zOkhp+RUMGqiWYmqvVRVknRtI5/B4R8=; b=gcQ1Y78xmMsN+3
	AKjYXGZ03BeVk+9SXlWs/GahPWKJdSgXM54Jjw6HSeV+usTsZK6dj5gm8dJE3YSOuMUBRicpH7aSx
	fdokaIwPkchwe6CUQJHESQazmUH3daNPYhhMWnz7VTIwQgAlpu+9cNwq0BfWnU8GmMILsSHii9QYr
	jkVbs581CbyKI3MBFlVH+wwiHIVEa12V2tOqUaZIriX/CDbT2w+Ye75y3uLiwcO7kuwW7eiLbmyDF
	b4v1tvvvlHLya7vmgU3G8uXt3MENdzb1IY4z7rsYUgXkXrl7XxCM5JSBpyjhkYAKU6O3Nz7StlMje
	PuO9Jm7t5LrN7bW4VVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMob-0006XY-J8; Wed, 06 Nov 2019 15:01:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMoT-0006WR-Gt
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:01:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DA6F46A;
 Wed,  6 Nov 2019 07:01:35 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A418A3F71A;
 Wed,  6 Nov 2019 07:01:33 -0800 (PST)
Date: Wed, 6 Nov 2019 15:01:28 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "M.h. Lian" <minghuan.lian@nxp.com>
Subject: Re: [PATCH v6 3/3] PCI: layerscape: Add LS1028a support
Message-ID: <20191106150128.GA18689@e121166-lin.cambridge.arm.com>
References: <20190902034319.14026-1-xiaowei.bao@nxp.com>
 <20190902034319.14026-3-xiaowei.bao@nxp.com>
 <20191105123233.GA26960@e121166-lin.cambridge.arm.com>
 <AM5PR04MB32999C59EE51DACC030E13D7F5790@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <VI1PR0401MB22372AF4F02D3F22EA2184BEE8790@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB22372AF4F02D3F22EA2184BEE8790@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_070137_645257_B1AD1B69 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMDM6NDY6MTdBTSArMDAwMCwgTS5oLiBMaWFuIHdyb3Rl
Ogo+IEhpIExvcmVuem8sCj4gCj4gU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5Lgo+IAo+IEFja2Vk
LWJ5OiBNaW5naHVhbiBMaWFuIDxtaW5naHVhbi5MaWFuQG54cC5jb20+CgpodHRwczovL2VuLndp
a2lwZWRpYS5vcmcvd2lraS9Qb3N0aW5nX3N0eWxlI1RvcC1wb3N0aW5nCgpOZXZlciB0b3AtcG9z
dCBvbiBrZXJuZWwgbWFpbGluZyBsaXN0cy4KClRoYW5rcywKTG9yZW56bwoKPiBUaGFua3MsCj4g
TWluZ2h1YW4KPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBYaWFv
d2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1i
ZXIgNiwgMjAxOSAxMTozNiBBTQo+ID4gVG86IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBp
ZXJhbGlzaUBhcm0uY29tPgo+ID4gQ2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5k
QGFybS5jb207IHNoYXduZ3VvQGtlcm5lbC5vcmc7Cj4gPiBMZW8gTGkgPGxlb3lhbmcubGlAbnhw
LmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgTWluZ2thaQo+ID4gSHUg
PG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbGludXgt
Cj4gPiBwY2lAdmdlci5rZXJuZWwub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgtCj4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmc7IGxpbnV4cHBjLQo+ID4gZGV2QGxpc3RzLm96bGFicy5vcmc7IGJoZWxnYWFz
QGdvb2dsZS5jb207IFoucS4gSG91Cj4gPiA8emhpcWlhbmcuaG91QG54cC5jb20+Cj4gPiBTdWJq
ZWN0OiBSRTogW1BBVENIIHY2IDMvM10gUENJOiBsYXllcnNjYXBlOiBBZGQgTFMxMDI4YSBzdXBw
b3J0Cj4gPiAKPiA+IAo+ID4gCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+
IEZyb206IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+ID4g
PiBTZW50OiAyMDE55bm0MTHmnIg15pelIDIwOjMzCj4gPiA+IFRvOiBYaWFvd2VpIEJhbyA8eGlh
b3dlaS5iYW9AbnhwLmNvbT4KPiA+ID4gQ2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRs
YW5kQGFybS5jb207IHNoYXduZ3VvQGtlcm5lbC5vcmc7Cj4gPiBMZW8KPiA+ID4gTGkgPGxlb3lh
bmcubGlAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgTWluZ2th
aQo+ID4gSHUKPiA+ID4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveSBaYW5nIDxyb3kuemFuZ0Bu
eHAuY29tPjsKPiA+ID4gbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmc7Cj4gPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+ID4gbGludXhwcGMtZGV2QGxpc3RzLm96
bGFicy5vcmc7IGJoZWxnYWFzQGdvb2dsZS5jb207IFoucS4gSG91Cj4gPiA+IDx6aGlxaWFuZy5o
b3VAbnhwLmNvbT4KPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAzLzNdIFBDSTogbGF5ZXJz
Y2FwZTogQWRkIExTMTAyOGEgc3VwcG9ydAo+ID4gPgo+ID4gPiBPbiBNb24sIFNlcCAwMiwgMjAx
OSBhdCAxMTo0MzoxOUFNICswODAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+ID4gPiBBZGQgc3Vw
cG9ydCBmb3IgdGhlIExTMTAyOGEgUENJZSBjb250cm9sbGVyLgo+ID4gPiA+Cj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogSG91IFpoaXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4KPiA+ID4gPiAt
LS0KPiA+ID4gPiB2MjoKPiA+ID4gPiAgLSBObyBjaGFuZ2UuCj4gPiA+ID4gdjM6Cj4gPiA+ID4g
IC0gUmV1c2UgdGhlIGxzMjA4OCBkcml2ZXIgZGF0YSBzdHJ1Y3R1cnQuCj4gPiA+ID4gdjQ6Cj4g
PiA+ID4gIC0gTm8gY2hhbmdlLgo+ID4gPiA+IHY1Ogo+ID4gPiA+ICAtIE5vIGNoYW5nZS4KPiA+
ID4gPiB2NjoKPiA+ID4gPiAgLSBObyBjaGFuZ2UuCj4gPiA+ID4KPiA+ID4gPiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYyB8IDEgKwo+ID4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+ID4KPiA+ID4gSSBoYXZlIG5vdCBzZWVuIGFueSBj
b21tZW50IG9uIGFueSBsYXllcnNjYXBlIGRyaXZlciBwYXRjaGVzIGNvbWluZwo+ID4gPiBmcm9t
IHRoZSBtYWludGFpbmVycyBhcyBsaXN0ZWQgaW4gdGhlIE1BSU5UQUlORVJTIGZpbGUgKGFuZCBD
Q2VkIGluIHRoaXMKPiA+IHNlcmllcykuCj4gPiA+Cj4gPiA+IEkgcmVxdWVzdCBtYWludGFpbmVy
cyBBQ0sgb24gdGhlc2UgcGF0Y2hlcyBhbmQgSSBleHBlY3QgdGhlbSB0byBzdGFydAo+ID4gPiBy
ZXZpZXdpbmcgeW91ciBjb2RlIGlmIHRoZXkgd2FudCB0byBiZSBzdGlsbCBjb25zaWRlcmVkIG1h
aW50YWluZXJzCj4gPiA+IGZvciB0aGlzIGRyaXZlci4KPiA+ID4KPiA+ID4gVGhlIGNoYW5nZXMg
bG9vayBPSyBtaW51cyBTaGF3bidzIHJlbWFyayBvbiBjb21wYXRpYmxlIHN0cmluZyB0aGF0IHdh
cwo+ID4gPiBpZ25vcmVkLgo+ID4gCj4gPiBIaSBMb3JlbnpvLAo+ID4gCj4gPiBUaGFua3MgZm9y
IHlvdXIgY29tbWVudHMuCj4gPiAKPiA+IEluIGZhY3QsIHRoZSBwYXRjaGVzIGhhdmUgcmV2aWV3
ZWQgaW4gb3VyIGludGVybmFsIG1haWwgbGlzdCwgYWZ0ZXIgdGhlIHJldmlldyBieQo+ID4gTWlu
Z2h1YW4gYW5kIE1pbmdrYWksIEkgd2lsbCBzZW5kIHRoZXNlIHBhdGNoZXMgdG8gb3BlbnNvdXJj
ZSwgdGhleSB3aWxsCj4gPiBnaXZlIHRoZSBBQ0sgd2hlbiB0aGVzZSBwYXRjaGVzIHNlZW1zIGlz
IE9LIGFuZCBubyBjb21tZW50cyBvbiB0aGlzLgo+ID4gCj4gPiBUaGFua3MKPiA+IFhpYW93ZWkK
PiA+IAo+ID4gPgo+ID4gPiBUaGFua3MsCj4gPiA+IExvcmVuem8KPiA+ID4KPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYwo+ID4g
PiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYwo+ID4gPiA+
IGluZGV4IDNhNWZhMjYuLmYyNGY3OWEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMKPiA+ID4gPiBAQCAtMjYzLDYgKzI2Myw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbHNfcGNpZV9kcnZkYXRhCj4gPiA+ID4gbHMyMDg4X2Ry
dmRhdGEgPSB7ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBsc19wY2llX29mX21h
dGNoW10gPSB7Cj4gPiA+ID4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwMTJhLXBjaWUiLCAu
ZGF0YSA9ICZsczEwNDZfZHJ2ZGF0YSB9LAo+ID4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2ws
bHMxMDIxYS1wY2llIiwgLmRhdGEgPSAmbHMxMDIxX2RydmRhdGEgfSwKPiA+ID4gPiArCXsgLmNv
bXBhdGlibGUgPSAiZnNsLGxzMTAyOGEtcGNpZSIsIC5kYXRhID0gJmxzMjA4OF9kcnZkYXRhIH0s
Cj4gPiA+ID4gIAl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwNDNhLXBjaWUiLCAuZGF0YSA9ICZs
czEwNDNfZHJ2ZGF0YSB9LAo+ID4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHMxMDQ2YS1w
Y2llIiwgLmRhdGEgPSAmbHMxMDQ2X2RydmRhdGEgfSwKPiA+ID4gPiAgCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGxzMjA4MGEtcGNpZSIsIC5kYXRhID0gJmxzMjA4MF9kcnZkYXRhIH0sCj4gPiA+ID4g
LS0KPiA+ID4gPiAyLjkuNQo+ID4gPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
