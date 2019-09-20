Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED0BB8DBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 11:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNXK63F7Rt8yp7tsdeDJK189HNi/oPZxtIJA0it50hg=; b=pJKeBOReZcmOR3
	slQ5kTXI6d1n+fkEHB6q0M77x/OKBA0ioqDvFUsqJwkDlQx7ng/cLB8DBYTMQL7DjUUO5/vEfoy6r
	y6nlWjlkvnFmNDY+qOH5qAErGugMxPxKNNpwaJf+nNIhmXwMUf05VaI2l5PusxfmCTq6yd4q9IhNH
	mO6ff+2JcfPi6TRMnAKvJsxtbd4aCwLF1Hb1qrEdvy5/5/n11Spd8YPP0xVK8mqNqHbu7Fomb14DD
	gSlH8tzXKJmynLcP6O5z3yGJ9Oo/IHbvetcCHDP5GiJEkmot8k9XxeZXXIB/kEdhsLWB35/YlpTMc
	q1SS9X8TdkF8okuvYUjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFCL-0001Ly-LS; Fri, 20 Sep 2019 09:27:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFBt-0001ED-2u
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 09:27:02 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iBFBk-0004Qu-4T; Fri, 20 Sep 2019 11:26:52 +0200
Message-ID: <363fe4763ab3445f29f775b9694334acbe8638f1.camel@pengutronix.de>
Subject: Re: [PATCH v4 2/3] dmaengine: imx-sdma: fix dma freezes
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, Jan
 =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>, linux-kernel@vger.kernel.org
Date: Fri, 20 Sep 2019 11:26:51 +0200
In-Reply-To: <9305e5ff-f555-3c6e-9e99-36d88edcae0a@emlix.com>
References: <20190919142942.12469-1-philipp.puschmann@emlix.com>
 <20190919142942.12469-3-philipp.puschmann@emlix.com>
 <ad87f175496358adb825240f1de609318ed8204c.camel@pengutronix.de>
 <9305e5ff-f555-3c6e-9e99-36d88edcae0a@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_022701_123262_F304EECB 
X-CRM114-Status: GOOD (  31.87  )
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
Cc: fugang.duan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 vkoul@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com, yibin.gong@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnIsIDIwMTktMDktMjAgYXQgMTA6NTMgKzAyMDAsIFBoaWxpcHAgUHVzY2htYW5uIHdyb3Rl
Ogo+IEhpIEphbiwKPiAKPiBBbSAxOS4wOS4xOSB1bSAxNzoxOSBzY2hyaWViIEphbiBMw7xiYmU6
Cj4gPiBIaSBQaGlsaXBwLAo+ID4gCj4gPiBzZWUgYmVsb3cuLi4KPiA+IAo+ID4gT24gVGh1LCAy
MDE5LTA5LTE5IGF0IDE2OjI5ICswMjAwLCBQaGlsaXBwIFB1c2NobWFubiB3cm90ZToKPiA+ID4g
Rm9yIHNvbWUgeWVhcnMgYW5kIHNpbmNlIG1hbnkga2VybmVsIHZlcnNpb25zIHRoZXJlIGFyZSBy
ZXBvcnRzIHRoYXQgdGhlCj4gPiA+IFJYIFVBUlQgU0RNQSBjaGFubmVsIHN0b3BzIHdvcmtpbmcg
YXQgc29tZSBwb2ludC4gVGhlIHdvcmthcm91bmQgd2FzIHRvCj4gPiA+IGRpc2FibGUgRE1BIGZv
ciBSWC4gVGhpcyBjb21taXQgdHJpZXMgdG8gZml4IHRoZSBwcm9ibGVtIGl0c2VsZi4KPiA+ID4g
Cj4gPiA+IER1ZSB0byBpdHMgbGljZW5zZSBpIHdhc24ndCBhYmxlIHRvIGRlYnVnIHRoZSBzZG1h
IHNjcmlwdCBpdHNlbGYgYnV0IGl0Cj4gPiA+IHNvbWVob3cgbGVhZHMgdG8gYmxvY2tpbmcgdGhl
IHNjaGVkdWxpbmcgb2YgdGhlIGNoYW5uZWwgc2NyaXB0IHdoZW4gYQo+ID4gPiBydW5uaW5nIHNk
bWEgc2NyaXB0IGRvZXMgbm90IGZpbmQgYW55IGZyZWUgZGVzY3JpcHRvciBpbiB0aGUgcmluZyB0
byBwdXQKPiA+ID4gaXRzIGRhdGEgaW50by4KPiA+ID4gCj4gPiA+IElmIHdlIGRldGVjdCBzdWNo
IGEgcG90ZW50aWFsIGNhc2Ugd2UgbWFudWFsbHkgcmVzdGFydCB0aGUgY2hhbm5lbC4KPiA+ID4g
Cj4gPiA+IEFzIHNkbWFjLT5kZXNjIGlzIGNvbnN0YW50IHdlIGNhbiBtb3ZlIGRlc2Mgb3V0IG9m
IHRoZSBsb29wLgo+ID4gPiAKPiA+ID4gRml4ZXM6IDFlYzFlODJmMjUxMCAoImRtYWVuZ2luZTog
QWRkIEZyZWVzY2FsZSBpLk1YIFNETUEgc3VwcG9ydCIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFBo
aWxpcHAgUHVzY2htYW5uIDxwaGlsaXBwLnB1c2NobWFubkBlbWxpeC5jb20+Cj4gPiA+IFJldmll
d2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+ID4gLS0tCj4g
PiA+IAo+ID4gPiBDaGFuZ2Vsb2cgdjQ6Cj4gPiA+ICAtIGZpeGVkIHRoZSBmaXhlcyB0YWcKPiA+
ID4gIAo+ID4gPiBDaGFuZ2Vsb2cgdjM6Cj4gPiA+ICAtIHVzZSBjb3JyZWN0IGRtYV93bWIoKSBp
bnN0ZWFkIG9mIGRtYV93YigpCj4gPiA+ICAtIGFkZCBmaXhlcyB0YWcKPiA+ID4gIAo+ID4gPiBD
aGFuZ2Vsb2cgdjI6Cj4gPiA+ICAtIGNsYXJpZnkgY29tbWVudCBhbmQgY29tbWl0IGRlc2NyaXB0
aW9uCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9kbWEvaW14LXNkbWEuYyB8IDIxICsrKysrKysrKysr
KysrKysrLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvaW14LXNkbWEu
YyBiL2RyaXZlcnMvZG1hL2lteC1zZG1hLmMKPiA+ID4gaW5kZXggZTAyOWEyNDQzY2ZjLi5hMzJi
NTk2MjYzMGUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hL2lteC1zZG1hLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9kbWEvaW14LXNkbWEuYwo+ID4gPiBAQCAtNzc1LDIxICs3NzUsMjMgQEAg
c3RhdGljIHZvaWQgc2RtYV9zdGFydF9kZXNjKHN0cnVjdCBzZG1hX2NoYW5uZWwgKnNkbWFjKQo+
ID4gPiAgc3RhdGljIHZvaWQgc2RtYV91cGRhdGVfY2hhbm5lbF9sb29wKHN0cnVjdCBzZG1hX2No
YW5uZWwgKnNkbWFjKQo+ID4gPiAgewo+ID4gPiAgCXN0cnVjdCBzZG1hX2J1ZmZlcl9kZXNjcmlw
dG9yICpiZDsKPiA+ID4gLQlpbnQgZXJyb3IgPSAwOwo+ID4gPiAtCWVudW0gZG1hX3N0YXR1cwlv
bGRfc3RhdHVzID0gc2RtYWMtPnN0YXR1czsKPiA+ID4gKwlzdHJ1Y3Qgc2RtYV9kZXNjICpkZXNj
ID0gc2RtYWMtPmRlc2M7Cj4gPiA+ICsJaW50IGVycm9yID0gMCwgY250ID0gMDsKPiA+ID4gKwll
bnVtIGRtYV9zdGF0dXMgb2xkX3N0YXR1cyA9IHNkbWFjLT5zdGF0dXM7Cj4gPiA+ICAKPiA+ID4g
IAkvKgo+ID4gPiAgCSAqIGxvb3AgbW9kZS4gSXRlcmF0ZSBvdmVyIGRlc2NyaXB0b3JzLCByZS1z
ZXR1cCB0aGVtIGFuZAo+ID4gPiAgCSAqIGNhbGwgY2FsbGJhY2sgZnVuY3Rpb24uCj4gPiA+ICAJ
ICovCj4gPiA+IC0Jd2hpbGUgKHNkbWFjLT5kZXNjKSB7Cj4gPiA+IC0JCXN0cnVjdCBzZG1hX2Rl
c2MgKmRlc2MgPSBzZG1hYy0+ZGVzYzsKPiA+ID4gKwl3aGlsZSAoZGVzYykgewo+ID4gPiAgCj4g
PiA+ICAJCWJkID0gJmRlc2MtPmJkW2Rlc2MtPmJ1Zl90YWlsXTsKPiA+ID4gIAo+ID4gPiAgCQlp
ZiAoYmQtPm1vZGUuc3RhdHVzICYgQkRfRE9ORSkKPiA+ID4gIAkJCWJyZWFrOwo+ID4gPiAgCj4g
PiA+ICsJCWNudCsrOwo+ID4gPiArCj4gPiA+ICAJCWlmIChiZC0+bW9kZS5zdGF0dXMgJiBCRF9S
Uk9SKSB7Cj4gPiA+ICAJCQliZC0+bW9kZS5zdGF0dXMgJj0gfkJEX1JST1I7Cj4gPiA+ICAJCQlz
ZG1hYy0+c3RhdHVzID0gRE1BX0VSUk9SOwo+ID4gPiBAQCAtODIyLDYgKzgyNCwxNyBAQCBzdGF0
aWMgdm9pZCBzZG1hX3VwZGF0ZV9jaGFubmVsX2xvb3Aoc3RydWN0IHNkbWFfY2hhbm5lbCAqc2Rt
YWMpCj4gPiA+ICAJCWlmIChlcnJvcikKPiA+ID4gIAkJCXNkbWFjLT5zdGF0dXMgPSBvbGRfc3Rh
dHVzOwo+ID4gPiAgCX0KPiA+ID4gKwo+ID4gPiArCS8qIEluIHNvbWUgc2l0dWF0aW9ucyBpdCBt
YXkgaGFwcGVuIHRoYXQgdGhlIHNkbWEgZG9lcyBub3QgZm91bmQgYW55Cj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXiBoYXNuJ3QK
PiA+ID4gKwkgKiB1c2FibGUgZGVzY3JpcHRvciBpbiB0aGUgcmluZyB0byBwdXQgZGF0YSBpbnRv
LiBUaGUgY2hhbm5lbCBpcwo+ID4gPiArCSAqIHN0b3BwZWQgdGhlbi4gV2hpbGUgdGhlcmUgaXMg
bm8gc3BlY2lmaWMgZXJyb3IgY29uZGl0aW9uIHdlIGNhbgo+ID4gPiArCSAqIGNoZWNrIGZvciwg
YSBuZWNlc3NhcnkgY29uZGl0aW9uIGlzIHRoYXQgYWxsIGF2YWlsYWJsZSBidWZmZXJzIGZvcgo+
ID4gPiArCSAqIHRoZSBjdXJyZW50IGNoYW5uZWwgaGF2ZSBiZWVuIHdyaXR0ZW4gdG8gYnkgdGhl
IHNkbWEgc2NyaXB0LiBJbgo+ID4gPiArCSAqIHRoaXMgY2FzZSBhbmQgYWZ0ZXIgd2UgaGF2ZSBt
YWRlIHRoZSBidWZmZXJzIGF2YWlsYWJsZSBhZ2FpbiwKPiA+ID4gKwkgKiB3ZSByZXN0YXJ0IHRo
ZSBjaGFubmVsLgo+ID4gPiArCSAqLwo+ID4gCj4gPiBBcmUgeW91IHN1cmUgd2UgY2FuJ3QgbWlz
cyBjYXNlcyB3aGVyZSB3ZSBvbmx5IGhhZCB0byBtYWtlIHNvbWUgYnVmZmVycwo+ID4gYXZhaWxh
YmxlIGFnYWluLCBidXQgdGhlIFNETUEgYWxyZWFkeSByYW4gb3V0IG9mIGJ1ZmZlcnMgYmVmb3Jl
Pwo+IFRoaW5rIHNvLCB5ZXMuCj4gPiBBIHdoaWxlIGFnbywgSSB3YXMgZGVidWdnaW5nIGEgc2lt
aWxhciBpc3N1ZSB0cmlnZ2VyZWQgYnkgcmVjZWl2aW5nCj4gPiBkYXRhIHdpdGggYSB3cm9uZyBi
YXVkIHJhdGUsIHdoaWNoIGxlYWRzIHRvIGFsbCBkZXNjcmlwdG9ycyBiZWluZwo+ID4gbWFya2Vk
IHdpdGggdGhlIGVycm9yIGZsYWcgdmVyeSBxdWlja2x5IChhbmQgdGhlIFNETUEgc3RhbGxpbmcp
Lgo+ID4gSSBub3RpY2VkIHRoYXQgeW91IGNhbiBjaGVjayBpZiB0aGUgY2hhbm5lbCBpcyBzdGls
bCBydW5uaW5nIGJ5Cj4gPiBjaGVja2luZyB0aGUgU0RNQV9IX1NUQVRTVE9QIHJlZ2lzdGVyICYg
QklUKHNkbWFjLT5jaGFubmVsKS4KPiAKPiBJIHRoaW5rIGNoZWNraW5nIGZvciB0aGlzIHJlZ2lz
dGVyIGlzIHRoZSBiZXR0ZXIgYXBwcm9hY2guIFRoZW4gaSBjb3VsZCBkcm9wIHRoZQo+IGNudCB2
YXJpYWJsZS4gQW5kIGJ5IGRyb3BwdGluZyBjbnQgaSB3b3VsZCBwcm9wb3NlIHRvIG1vdmUgdGhl
IGNoZWNrIGFuZCByZWVuYWJsaW5nCj4gdG8gdGhlIGVuZCBvZiB0aGUgd2hpbGUgbG9vcCB0byBy
ZWVuYWJsZSB0aGUgY2hhbm5lbCBhZnRlciBmcmVlaW5nIGZpcnN0IGJ1ZmZlci4KCllvdSBjZXJ0
YWlubHkgZG9uJ3Qgd2FudCB0byBoYXZlIGEgTU1JTyByZWFkIGF0IGVhY2ggaXRlcmF0aW9uIG9m
IHRoZQpsb29wLCBhcyB0aGF0IHdvdWxkIGJlIHF1aXRlIGEgYml0IG9mIG92ZXJoZWFkLiBJJ20g
bm90IHN1cmUgaXQncyB3b3J0aAppdCB0byB0cnkgdG8gbWluaW1pemUgdGhlIGNoYW5uZWwgcmUt
ZW5hYmxlIGxhdGVuY3kuIFlvdSBhcmUgb25seQpnZXR0aW5nIGludG8gdGhpcyBzaXR1YXRpb24g
YmVjYXVzZSBvZiBiYWQgc3lzdGVtIGxhdGVuY2llcyBiZWZvcmUgdGhpcwpwYXJ0IG9mIHRoZSBj
b2RlIHJ1biwgc28gdGhlIGxpdHRsZSBiaXQgb2YgbGF0ZW5jeSBhZGRlZCBieSBjbGVhbmluZwp0
aGUgZGVzY3JpcHRvcnMgYmVmb3JlIHRyeWluZyB0byByZS1lbmFibGUgdGhlIGNoYW5uZWwgd2ls
bCBwcm9iYWJseQpub3QgYWRkIG11Y2ggZnVydGhlciBoYXJtIGFuZCB5b3UgZG9uJ3QgcmlzayBy
dW5uaW5nIGluIHRoZSBvdXQtb2YtCmRlc2NyaXB0b3JzIGVycm9yIGltbWVkaWF0ZWx5IGFnYWlu
LiBSZW1lbWJlciwgaW4gYSBwcmVlbXB0aWJsZSBrZXJuZWwKdGhlIHRhc2sgY2xlYW5pbmcgdGhl
IGRlc2NyaXB0b3JzIGNvdWxkIGJlIHB1dCB0byBzbGVlcCBpbW1lZGlhdGVseQphZnRlciB5b3Ug
eW91IGNsZWFuZWQgYSBzaW5nbGUgZGVzY3JpcHRvciBhbmQga2lja2VkIHRoZSBjaGFubmVsIGJh
Y2sKdG8gbGlmZS4KCj4gPiBJIGFsc28gYWRkZWQgYSBmbGFnIGZvciB0aGUgc2RtYWMtPmZsYWdz
IGZpZWxkIHRvIGFsbG93IHN0b3BwaW5nIHRoZQo+ID4gY2hhbm5lbCBmcm9tIHRoZSBjYWxsYmFj
ayAob3RoZXJ3aXNlIGl0IHdvdWxkIGVuYWJsZSB0aGUgY2hhbm5lbAo+ID4gYWdhaW4pLgo+IAo+
IENvdWxkIG1lbW9yeSBhbmQgY29tcGlsZXIgb3JkZXJpbmcgYSBwcm9ibGVtIGhlcmU/Cj4gSSdt
IG5vdCB0aGF0IGludG8gdGhlc2Uga2luZCBvZiBwcm9ibGVtcywgYnV0IGlzIHRoaXMKPiAJc2Rt
YWMtPmZsYWdzICY9IH5JTVhfRE1BX0FDVElWRTsKPiAgIAl3cml0ZWxfcmVsYXhlZChCSVQoY2hh
bm5lbCksIHNkbWEtPnJlZ3MgKyBTRE1BX0hfU1RBVFNUT1ApOwo+IGd1YXJhbnRlZWQgdG8gYmUg
ZnJlZSBvZiByYWNlIGNvbmRpdGlvbnM/CgpJbiBmYWN0IHRoZSB3cml0ZWxfcmVsYXhlZCBuZWVk
cyB0byBiZSByZXBsYWNlZCBieSB0aGUgbm9uLXJlbGF4ZWQKdmVyc2lvbiB0byBpbXBseSBhIHBy
b3BlciBtZW1vcnkgYmFycmllciBiZWZvcmUgdGhlIHJlZ2lzdGVyIHdyaXRlLgoKUmVnYXJkcywK
THVjYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
