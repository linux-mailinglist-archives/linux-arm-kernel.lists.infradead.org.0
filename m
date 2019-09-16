Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF85B3B99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/LaAZy+tvxJJMYnaC6Xs3kVVOeMXEg/YzzZq8JpbFk=; b=omQUfxCC8fUmzs
	rdDrCS206DfnHWMIS6SV4y+8842tASXgn46JQCTlo5XRDfyNvkZ7/jcpNzd0zI1rgiajx6IttBlno
	JEbqBrYTjSDvSL/kBy5yYvCeEhoqc6Ct+Bq8WvNWkFp1k3Z+xIncMEVwqfT/IHrRAcu97+bBXAI7X
	J03Tj60XhhUSW5w+ZD3VRcQXv35o4tzhVz+hXz5WBrpbv8BqqB/LoMo1Fa/JitykPBWP/JufxU1Uh
	56/uF0rF47ks035+Zqp2WDRgnY6soJSdqzKqiBmLwburxwio04Ng//ettQ1qK5aEXP4h9AUKnJkNh
	eJSIwRO7wp8OGzaIHuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rHA-00007I-M2; Mon, 16 Sep 2019 13:42:44 +0000
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rGL-00005e-Ut
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:41:56 +0000
Received: from mailer.emlix.com (unknown [81.20.119.6])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 186535FAD2;
 Mon, 16 Sep 2019 15:41:50 +0200 (CEST)
Subject: Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
To: Robin Gong <yibin.gong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <VE1PR04MB66383FAB08506993B305AC8D898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
From: Philipp Puschmann <philipp.puschmann@emlix.com>
Openpgp: preference=signencrypt
Message-ID: <29d03762-866a-4fdc-eddb-e24f6e631412@emlix.com>
Date: Mon, 16 Sep 2019 15:41:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66383FAB08506993B305AC8D898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064154_387064_82C7F659 
X-CRM114-Status: GOOD (  19.33  )
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
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jslaby@suse.com" <jslaby@suse.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTYuMDkuMTkgdW0gMTA6MDIgc2NocmllYiBSb2JpbiBHb25nOgo+IE9uIDIwMTkvOS8xMSBQ
aGlsaXBwIFB1c2NobWFubiA8cGhpbGlwcC5wdXNjaG1hbm5AZW1saXguY29tPiB3cm90ZToKPj4g
Rm9yIHNvbWUgeWVhcnMgYW5kIHNpbmNlIG1hbnkga2VybmVsIHZlcnNpb25zIHRoZXJlIGFyZSBy
ZXBvcnRzIHRoYXQgUlgKPj4gVUFSVCBETUEgY2hhbm5lbCBzdG9wcyB3b3JraW5nIGF0IG9uZSBw
b2ludC4gU28gZmFyIHRoZSB1c3VhbCB3b3JrYXJvdW5kCj4+IHdhcyB0byBkaXNhYmxlIFJYIERN
QS4gVGhpcyBwYXRjaGVzIHRyeSB0byBmaXggdGhlIHVuZGVybHlpbmcgcHJvYmxlbS4KPj4KPj4g
V2hlbiBhIHJ1bm5pbmcgc2RtYSBzY3JpcHQgZG9lcyBub3QgZmluZCBhbnkgdXNhYmxlIGRlc3Rp
bmF0aW9uIGJ1ZmZlciB0byBwdXQKPj4gaXRzIGRhdGEgaW50byBpdCBqdXN0IGxlYWRzIHRvIHN0
b3BwaW5nIHRoZSBjaGFubmVsIGJlaW5nIHNjaGVkdWxlZCBhZ2Fpbi4gQXMKPj4gc29sdXRpb24g
d2Ugd2UgbWFudWFsbHkgcmV0cmlnZ2VyIHRoZSBzZG1hIHNjcmlwdCBmb3IgdGhpcyBjaGFubmVs
IGFuZCBieSB0aGlzCj4+IGRpc3NvbHZlIHRoZSBmcmVlemUuCj4+Cj4+IFdoaWxlIHRoaXMgc2Vl
bXMgdG8gd29yayBmaW5lIHNvIGZhciBhIGZ1cnRoZXIgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgaW5j
cmVhc2VzIHRoZQo+PiBudW1iZXIgb2YgUlggRE1BIHBlcmlvZHMgZm9yIFVBUlQgdG8gcmVkdWNl
IHVzZSBjYXNlcyBydW5uaW5nIGludG8gc3VjaCBhCj4+IHNpdHVhdGlvbi4KPj4KPj4gVGhpcyBw
YXRjaCBzZXJpZXMgd2FzIHRlc3RlZCB3aXRoIHRoZSBjdXJyZW50IGtlcm5lbCBhbmQgYmFja3Bv
cnRlZCB0byBrZXJuZWwKPj4gNC4xNSB3aXRoIGEgc3BlY2lhbCB1c2UgY2FzZSB1c2luZyBhIFdM
MTgzN01PRCB2aWEgVUFSVCBhbmQgcHJvdm9raW5nIHRoZQo+IEhpIFBoaWxpcHAsIENvdWxkIHlv
dXIgQmx1ZXRvb3RoIGlzc3VlIGJlIHJlcHJvZHVjZSBvbiBsYXRlc3QgbGludXgtbmV4dD8gT3Ig
ZGlkCj4geW91ciBrZXJuZWwgd2hpY2ggY2FuIGJlIHJlcHJvZHVjZWQgaW5jbHVkZSB0aGUgYmVs
b3cgcGF0Y2g/Cj4gCj4gY29tbWl0IGQxYTc5MmYzYjQwNzJiZmFjNDE1MGJiNjJhYTM0OTE3Yjc3
ZmRiNmQKPiBBdXRob3I6IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCA8bGludXhAYXJtLmxpbnV4
Lm9yZy51az4KPiBEYXRlOiAgIFdlZCBKdW4gMjUgMTM6MDA6MzMgMjAxNCArMDEwMAo+IAoKSGkg
Um9iaW4sIHllcyBpIGhhdmUgcmVwcm9kdWNlZCB0aGUgQmx1ZXRvb3RoIGlzc3VlIHdpdGggbXkg
dGVzdCBjYXNlIHdpdGgga2VybmVsIDQuMTUKYW5kIHRoZSBuZXdlc3QgNS4zLjAtcmM4LW5leHQt
MjAxOTA5MTUuIE15IHRlc3QtY2FzZSBpbmNsdWRlcyBzZXZlcmFsIGN1c3RvbS1ib2FyZHMKY29t
bXVuaWNhdGluZyB2aWEgQmx1ZXRvb3RoIHdpdGggZWFjaCBvdGhlci4gSSBzZWUgdGhlIGVycm9y
IHdpdGhpbiBzZWNvbmRzIHRvIGZldyBtaW51dGVzLgoKPiAgICAgVXBkYXRlIGlteC1zZG1hIGN5
Y2xpYyBoYW5kbGluZyB0byByZXBvcnQgcmVzaWR1ZQo+PiBoYW5naW5nIG9mIFVBUlQgUlggRE1B
IHdpdGhpbiBzZWNvbmRzIGFmdGVyIHN0YXJ0aW5nIGEgdGVzdCBhcHBsaWNhdGlvbi4KPj4gSXQg
cmVzdWx0ZWQgaW4gd2VsbCBrbm93bgo+PiAgICJCbHVldG9vdGg6IGhjaTA6IGNvbW1hbmQgMHgw
NDA4IHR4IHRpbWVvdXQiCj4+IGVycm9ycyBhbmQgY29tcGxldGUgc3RvcCBvZiBVQVJUIGRhdGEg
cmVjZXB0aW9uLiBPdXIgQmx1ZXRvb3RoIHRyYWZmaWMKPj4gY29uc2lzdHMgb2YgbWFueSBpbmRl
cGVuZGVudCBzbWFsbCBwYWNrZXRzLCBtb3N0bHkgb25seSBhIGZldyBieXRlcywgY2F1c2luZwo+
PiBoaWdoIHVzYWdlIG9mIHBlcmlvZHMuCj4+Cj4+Cj4+IFBoaWxpcHAgUHVzY2htYW5uICg0KToK
Pj4gICBkbWFlbmdpbmU6IGlteC1zZG1hOiBmaXggYnVmZmVyIG93bmVyc2hpcAo+PiAgIGRtYWVu
Z2luZTogaW14LXNkbWE6IGZpeCBkbWEgZnJlZXplcwo+PiAgIHNlcmlhbDogaW14OiBhZGFwdCBy
eCBidWZmZXIgYW5kIGRtYSBwZXJpb2RzCj4+ICAgZG1hZW5naW5lOiBpbXgtc2RtYTogZHJvcCBy
ZWR1bmRhbnQgdmFyaWFibGUKPj4KPj4gIGRyaXZlcnMvZG1hL2lteC1zZG1hLmMgICB8IDMyICsr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4+ICBkcml2ZXJzL3R0eS9zZXJpYWwvaW14
LmMgfCAgNSArKy0tLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxMyBk
ZWxldGlvbnMoLSkKPj4KPj4gLS0KPj4gMi4yMy4wCj4gCgotLSAKClBoaWxpcHAgUHVzY2htYW5u
LCBlbWxpeCBHbWJILCBodHRwOi8vd3d3LmVtbGl4LmNvbQpGb24gKzQ5IDU1MSAzMDY2NC0wLCBG
YXggKzQ5IDU1MSAzMDY2NC0xMQpHb3RoYWVyIFBsYXR6IDMsIDM3MDgzIEfDtnR0aW5nZW4sIEdl
cm1hbnkKU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBHw7Z0dGluZ2VuLCBBbXRzZ2VyaWNodCBHb2V0
dGluZ2VuIEhSIEIgMzE2MApHZXNjaGFlZnRzZsO8aHJ1bmc6IEhlaWtlIEpvcmRhbiwgRHIuIFV3
ZSBLcmFja2UKVXN0LUlkTnIuOiBERSAyMDUgMTk4IDA1NQoKZW1saXggLSBzbWFydCBlbWJlZGRl
ZCBvcGVuIHNvdXJjZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
