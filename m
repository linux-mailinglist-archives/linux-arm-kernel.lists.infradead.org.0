Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF03F5FC27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 19:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fg4GfswWMSOajty474xrdsGTPuKb2x8KX6CmIokucOM=; b=IRCTPo5xUse0nX
	+me7K7GIVLSmSe2ovHa1g5VfE1rIRCLV3rACnP69RFeB9ZUJ+F+avXI/D3fbFP1Rm6GcGFXsis23q
	+SJSAOsEc4CeW/nv7HlYjQYxOvFuVb6RBRtgxiIBZI9IOZfKvdyDweFaHkaeA/teRyYEbEgMvgq9p
	97GlmNUKWbVJ+t38Ajtk+T+1J3//jTT3qqYagYPbywMYp+LoFfl4BMCfPflSEFiyvE939Yk55blOZ
	7wEBUDxitO9hewi0mAe/FACQ0VoZ+PbJ3A+cDd2qdns+dpx0DJ4Qw0V091P6iWpC0DCfB9wrQ/JiC
	4zSdcuO8fl1goGjFCpfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj58P-0004Xi-JZ; Thu, 04 Jul 2019 17:03:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj58E-0004Wi-97; Thu, 04 Jul 2019 17:02:52 +0000
Received: from [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3] (unknown
 [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tonyk)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7DE0E28B065;
 Thu,  4 Jul 2019 18:02:34 +0100 (BST)
Subject: Re: [PATCH v7 02/14] media: doc: add document for rkisp1 meta buffer
 format
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190703190910.32633-1-helen.koike@collabora.com>
 <20190703190910.32633-3-helen.koike@collabora.com>
From: =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@collabora.com>
Message-ID: <73414230-8e9a-a1f3-c121-fdd5b87cb5b2@collabora.com>
Date: Thu, 4 Jul 2019 14:01:50 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703190910.32633-3-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_100250_590922_F17F8E3B 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Jacob Chen <jacob-chen@rock-chips.com>,
 jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Yong Zhi <yong.zhi@intel.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 Guennadi Liakhovetski <g.liakhovetski@gmx.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSGVsZW4sCgpPbiA3LzMvMTkgNDowOCBQTSwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gRnJv
bTogSmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4KPiBUaGlzIGNvbW1p
dCBhZGQgZG9jdW1lbnQgZm9yIHJraXNwMSBtZXRhIGJ1ZmZlciBmb3JtYXQKPgo+IFNpZ25lZC1v
ZmYtYnk6IEphY29iIENoZW4gPGphY29iLWNoZW5Acm9jay1jaGlwcy5jb20+Cj4gQWNrZWQtYnk6
IEhhbnMgVmVya3VpbCA8aGFucy52ZXJrdWlsQGNpc2NvLmNvbT4KPiBbdXBkYXRlIGZvciB1cHN0
cmVhbV0KPiBTaWduZWQtb2ZmLWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4ua29pa2VAY29sbGFib3Jh
LmNvbT4KPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2NzoKPiAtIHMvY29ycmVzcG9uZC9jb3JyZXNw
b25kaW5nCj4gLSBzL3VzZS91c2VzCj4gLSBzL2RvY3VlbW50L2RvY3VtZW50Cj4KPiAgRG9jdW1l
bnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9tZXRhLWZvcm1hdHMucnN0IHwgIDIgKysKPiAgLi4uL3Vh
cGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1wYXJhbXMucnN0ICAgIHwgMjAgKysrKysrKysrKysr
KysrKysrKwo+ICAuLi4vdWFwaS92NGwvcGl4Zm10LW1ldGEtcmtpc3AxLXN0YXQucnN0ICAgICAg
fCAxOCArKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDQwIGluc2VydGlvbnMo
KykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vbWVkaWEvdWFwaS92NGwvcGl4
Zm10LW1ldGEtcmtpc3AxLXBhcmFtcy5yc3QKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vbWVkaWEvdWFwaS92NGwvcGl4Zm10LW1ldGEtcmtpc3AxLXN0YXQucnN0Cj4KPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9tZXRhLWZvcm1hdHMucnN0IGIv
RG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9tZXRhLWZvcm1hdHMucnN0Cj4gaW5kZXggYjEw
Y2E5ZWUzOTY4Li41ZGU2MjFmZWEzY2MgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9tZWRp
YS91YXBpL3Y0bC9tZXRhLWZvcm1hdHMucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9tZWRpYS91
YXBpL3Y0bC9tZXRhLWZvcm1hdHMucnN0Cj4gQEAgLTI0LDMgKzI0LDUgQEAgVGhlc2UgZm9ybWF0
cyBhcmUgdXNlZCBmb3IgdGhlIDpyZWY6YG1ldGFkYXRhYCBpbnRlcmZhY2Ugb25seS4KPiAgICAg
IHBpeGZtdC1tZXRhLXV2Ywo+ICAgICAgcGl4Zm10LW1ldGEtdnNwMS1oZ28KPiAgICAgIHBpeGZt
dC1tZXRhLXZzcDEtaGd0Cj4gKyAgICBwaXhmbXQtbWV0YS1ya2lzcDEtcGFyYW1zCj4gKyAgICBw
aXhmbXQtbWV0YS1ya2lzcDEtc3RhdAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL21lZGlh
L3VhcGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1wYXJhbXMucnN0IGIvRG9jdW1lbnRhdGlvbi9t
ZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lzcDEtcGFyYW1zLnJzdAo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi42MWI4MTMzMWY4MjAKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lz
cDEtcGFyYW1zLnJzdAo+IEBAIC0wLDAgKzEsMjAgQEAKWW91IGNhbiBhZGQgYSBsaWNlbnNlIGlu
Zm9ybWF0aW9uIGhlcmUsIGxpa2UgdGhpczoKLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAKPiArLi4gLSotIGNvZGluZzogdXRmLTg7IG1vZGU6IHJzdCAtKi0KSSBiZWxpZXZlIGl0
J3Mgbm90IGEgZ29vZCBpZGVhIHRvIGluY2x1ZGUgRW1hY3MgY29uZmlndXJhdGlvbiBpbiB0aGUK
c291cmNlIFsxXS4KPiArCj4gKy4uIF92NGwyLW1ldGEtZm10LXJraXNwMS1wYXJhbXM6Cj4gKwo+
ICsqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCj4gK1Y0TDJfTUVUQV9GTVRfUktfSVNQ
MV9QQVJBTVMKPiArKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgpUaGVyZSdzIDMgZXh0
cmEgYCpgLCBrZWVwIHRoZSBsZW5ndGggb2YgbWFya3MganVzdCBhcyB0aGUgbGVuZ3RoIG9mIHRo
ZQp0ZXh0LgpBbHNvLCBmb3IgdGl0bGVzLCB5b3Ugc2hvdWxkIHVzZSBgPWAgWzJdIGluc3RlYWQg
b2YgYCpgLCBsaWtlIHRoaXM6Cj09PT09ClRpdGxlCj09PT09Cj4gKwo+ICtSb2NrY2hpcCBJU1Ax
IFBhcmFtZXRlcnMgRGF0YQo+ICsKPiArRGVzY3JpcHRpb24KPiArPT09PT09PT09PT0KPiArCj4g
K1RoaXMgZm9ybWF0IGRlc2NyaWJlcyBpbnB1dCBwYXJhbWV0ZXJzIGZvciB0aGUgUm9ja2NoaXAg
SVNQMS4KPiArCj4gK0l0IHVzZXMgYy1zdHJ1Y3QgOmM6dHlwZTpgcmtpc3AxX2lzcF9wYXJhbXNf
Y2ZnYCwgd2hpY2ggaXMgZGVmaW5lZCBpbgo+ICt0aGUgYGBsaW51eC9ya2lzcDEtY29uZmlnLmhg
YCBoZWFkZXIgZmlsZSwgc2VlIGl0IGZvciBkZXRhaWxzLgpTaW5jZSB0aGUgc3RydWN0IGlzIGFs
cmVhZHkgdXNpbmcga2VybmVsLWRvYyBzeW50YXgsIHlvdSBjYW4gaW5jbHVkaW5nCmluIHRoaXMg
ZmlsZSB1c2luZyBzb21ldGhpbmcgbGlrZSB0aGlzOgouLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91
YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaArCoMKgIDpmdW5jdGlvbnM6IHJraXNwMV9pc3BfcGFy
YW1zX2NmZwo+ICsKPiArVGhlIHBhcmFtZXRlcnMgY29uc2lzdCBvZiBtdWx0aXBsZSBtb2R1bGVz
Lgo+ICtUaGUgbW9kdWxlIHdvbid0IGJlIHVwZGF0ZWQgaWYgdGhlIGNvcnJlc3BvbmRpbmcgYml0
IHdhcyBub3Qgc2V0IGluIG1vZHVsZV8qX3VwZGF0ZS4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0YS1ya2lzcDEtc3RhdC5yc3QgYi9Eb2N1bWVu
dGF0aW9uL21lZGlhL3VhcGkvdjRsL3BpeGZtdC1tZXRhLXJraXNwMS1zdGF0LnJzdAo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi41NDk2ZTFkNDIyNzMKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9tZWRpYS91YXBpL3Y0bC9waXhmbXQtbWV0
YS1ya2lzcDEtc3RhdC5yc3QKVGhlIHByZXZpb3VzIGZlZWRiYWNrIGFsc28gYXBwbGllcyB0byB0
aGlzIGZpbGUuCj4gQEAgLTAsMCArMSwxOCBAQAo+ICsuLiAtKi0gY29kaW5nOiB1dGYtODsgbW9k
ZTogcnN0IC0qLQo+ICsKPiArLi4gX3Y0bDItbWV0YS1mbXQtcmtpc3AxLXN0YXQ6Cj4gKwo+ICsq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCj4gK1Y0TDJfTUVUQV9GTVRfUktfSVNQMV9T
VEFUXzNBCj4gKyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKPiArCj4gK1JvY2tjaGlw
IElTUDEgU3RhdGlzdGljcyBEYXRhCj4gKwo+ICtEZXNjcmlwdGlvbgo+ICs9PT09PT09PT09PQo+
ICsKPiArVGhpcyBmb3JtYXQgZGVzY3JpYmVzIGltYWdlIGNvbG9yIHN0YXRpc3RpY3MgaW5mb3Jt
YXRpb24gZ2VuZXJhdGVkIGJ5IHRoZSBSb2NrY2hpcAo+ICtJU1AxLgo+ICsKPiArSXQgdXNlcyBj
LXN0cnVjdCA6Yzp0eXBlOmBya2lzcDFfc3RhdF9idWZmZXJgLCB3aGljaCBpcyBkZWZpbmVkIGlu
Cj4gK3RoZSBgYGxpbnV4L2NpZmlzcF9zdGF0LmhgYCBoZWFkZXIgZmlsZSwgc2VlIGl0IGZvciBk
ZXRhaWxzLgpSZWdhcmRzLArCoMKgwqAgQW5kcsOpCgpbMV0KaHR0cHM6Ly93d3cua2VybmVsLm9y
Zy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9jb2Rpbmctc3R5bGUuaHRtbCNlZGl0b3ItbW9kZWxp
bmVzLWFuZC1vdGhlci1jcnVmdApbMl0KaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9s
YXRlc3QvZG9jLWd1aWRlL3NwaGlueC5odG1sI3NwZWNpZmljLWd1aWRlbGluZXMtZm9yLXRoZS1r
ZXJuZWwtZG9jdW1lbnRhdGlvbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
