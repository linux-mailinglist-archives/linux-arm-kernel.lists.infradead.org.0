Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779C17AE6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 19:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yrPUBsA/sHk/vobg6nmeFRRHQg6GHmz1eLMq7lgyC0=; b=pUIJz86Et2gXSr
	D+mtDTnWGdRpeD53yK88oB+FaUyj9ySQam20MxAq8Rp9bJMB0ocBQQQvaMI5Ex2Cbpcdex7Fxi9LA
	ZP0XKDHkL6Qx9oKtJlUbA7CuXarJ7Ri9rgHV7qYpgMjbbTpxeSQfiPq8XES8qTogmO7wVsyohfSnt
	xzPcVL0jiqztXh8KxFX4nF81O+fFqw8ihaMSuMXBnSQX5bMdk0W7j43qO+xYHeJOYjtjwxqr2NWrE
	na4YaqYum8cu9VvnznDzYtYEJBuLcsZmCvU3EXSoYMVXr2YxibU+JbwUnSLvFm0TLQvBlajzHH9a4
	iTcnYd+Hy7KsoDHyONRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9vW4-0003mT-F3; Thu, 05 Mar 2020 18:46:40 +0000
Received: from forward501p.mail.yandex.net ([77.88.28.111])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9vVx-0003lz-Aa
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 18:46:35 +0000
Received: from mxback30g.mail.yandex.net (mxback30g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:330])
 by forward501p.mail.yandex.net (Yandex) with ESMTP id E27733500531;
 Thu,  5 Mar 2020 21:46:27 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback30g.mail.yandex.net (mxback/Yandex) with ESMTP id iGuMvhqZaa-kQYi1aoQ;
 Thu, 05 Mar 2020 21:46:27 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1583433987; bh=WbDDv6qYTqWmJsP3qfohS0aAr3PAr4lOdDNrBRZ/zy8=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=ipHhDMSs/4/WhzPQcS4NsH6Fqom/ChEWJK8QdMv5iXS+oV6rBy30120HjwOyBNt5t
 mUAmwqLxUU5qvsdfQ4GCFVpREBaLoKGLT1NvHO99TNyNdhFzax2k4JT+gbUd9e21cK
 Mn581akDZSmN+GZfCnzfca8SnNumZTpfYVGVEi14=
Authentication-Results: mxback30g.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by myt3-605d5ea4bc20.qloud-c.yandex.net with HTTP;
 Thu, 05 Mar 2020 21:46:26 +0300
From: nikita.shubin@maquefel.me
To: Mathieu Poirier <mathieu.poirier@linaro.org>
In-Reply-To: <CANLsYkyHaZFrCYFxWZVGqy=QwU86i2E2o9ENZ7k2mv70jU9pqg@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
 <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
 <CANLsYkxj=1o8Y0V0WedbVirj9seZSArWeCvQvwk+N7wZa2_hPQ@mail.gmail.com>
 <266371583430956@iva3-67f911cb3a01.qloud-c.yandex.net>
 <CANLsYkyHaZFrCYFxWZVGqy=QwU86i2E2o9ENZ7k2mv70jU9pqg@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 05 Mar 2020 21:46:26 +0300
Message-Id: <272401583433950@myt4-c14277df27e9.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_104633_720740_F31EB4D9 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.111 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <nshubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhdCdzIHRvdGFsbHkgb2theSAtIHRoYW5rIHlvdSBmb3IgcmV2aWV3LgoKMDUuMDMuMjAyMCwg
MjE6MzYsICJNYXRoaWV1IFBvaXJpZXIiIDxtYXRoaWV1LnBvaXJpZXJAbGluYXJvLm9yZz46Cj4g
T24gVGh1LCA1IE1hciAyMDIwIGF0IDExOjA3LCA8bmlraXRhLnNodWJpbkBtYXF1ZWZlbC5tZT4g
d3JvdGU6Cj4+IMKgMDUuMDMuMjAyMCwgMjA6NTQsICJNYXRoaWV1IFBvaXJpZXIiIDxtYXRoaWV1
LnBvaXJpZXJAbGluYXJvLm9yZz46Cj4+IMKgPiBPbiBUaHUsIDUgTWFyIDIwMjAgYXQgMTA6Mjks
IDxuaWtpdGEuc2h1YmluQG1hcXVlZmVsLm1lPiB3cm90ZToKPj4gwqA+PiAwNS4wMy4yMDIwLCAx
OToxNywgIk1hdGhpZXUgUG9pcmllciIgPG1hdGhpZXUucG9pcmllckBsaW5hcm8ub3JnPjoKPj4g
wqA+PiA+IE9uIFdlZCwgNCBNYXIgMjAyMCBhdCAwNzoyNSwgTmlraXRhIFNodWJpbiA8TlNodWJp
bkB0b3Bjb24uY29tPiB3cm90ZToKPj4gwqA+PiA+PiBhZGQga2ljayBtZXRob2QgdGhhdCBkb2Vz
IG5vdGhpbmcsIHRvIGF2b2lkIGVycm9ycyBpbiBycHJvY192aXJ0aW9fbm90aWZ5Lgo+PiDCoD4+
ID4+Cj4+IMKgPj4gPj4gU2lnbmVkLW9mZi1ieTogTmlraXRhIFNodWJpbiA8TlNodWJpbkB0b3Bj
b24uY29tPgo+PiDCoD4+ID4+IC0tLQo+PiDCoD4+ID4+IGRyaXZlcnMvcmVtb3RlcHJvYy9pbXhf
cnByb2MuYyB8IDYgKysrKysrCj4+IMKgPj4gPj4gMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKQo+PiDCoD4+ID4+Cj4+IMKgPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVtb3RlcHJv
Yy9pbXhfcnByb2MuYyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYwo+PiDCoD4+ID4+
IGluZGV4IDNlNzJiNmYzOGQ0Yi4uNzk2YjZiODY1NTBhIDEwMDY0NAo+PiDCoD4+ID4+IC0tLSBh
L2RyaXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYwo+PiDCoD4+ID4+ICsrKyBiL2RyaXZlcnMv
cmVtb3RlcHJvYy9pbXhfcnByb2MuYwo+PiDCoD4+ID4+IEBAIC0yNDAsOSArMjQwLDE1IEBAIHN0
YXRpYyB2b2lkICppbXhfcnByb2NfZGFfdG9fdmEoc3RydWN0IHJwcm9jICpycHJvYywgdTY0IGRh
LCBpbnQgbGVuKQo+PiDCoD4+ID4+IHJldHVybiB2YTsKPj4gwqA+PiA+PiB9Cj4+IMKgPj4gPj4K
Pj4gwqA+PiA+PiArc3RhdGljIHZvaWQgaW14X3Jwcm9jX2tpY2soc3RydWN0IHJwcm9jICpycHJv
YywgaW50IHZxaWQpCj4+IMKgPj4gPj4gK3sKPj4gwqA+PiA+PiArCj4+IMKgPj4gPj4gK30KPj4g
wqA+PiA+PiArCj4+IMKgPj4gPgo+PiDCoD4+ID4gSWYgcnByb2M6OmtpY2soKSBpcyBlbXB0eSwg
aG93IGRvZXMgdGhlIE1DVSBrbm93IHRoZXJlIGlzIHBhY2tldHMgdG8KPj4gwqA+PiA+IGZldGNo
IGluIHRoZSB2aXJ0aW8gcXVldWVzPwo+PiDCoD4+Cj4+IMKgPj4gV2VsbCwgb2YgY291cnNlIGl0
IGRvZXNuJ3QgaSB1bmRlcnN0YW5kIHRoaXMgcGVyZmVjdGx5IC0ganVzdCBmb2xsb3dpbmcgZG9j
dW1lbnRhdGlvbiBjaXRpbmc6Cj4+IMKgPj4KPj4gwqA+PiB8IEV2ZXJ5IHJlbW90ZXByb2MgaW1w
bGVtZW50YXRpb24gc2hvdWxkIGF0IGxlYXN0IHByb3ZpZGUgdGhlIC0+c3RhcnQgYW5kIC0+c3Rv
cAo+PiDCoD4+IHwgaGFuZGxlcnMuIElmIHJwbXNnL3ZpcnRpbyBmdW5jdGlvbmFsaXR5IGlzIGFs
c28gZGVzaXJlZCwgdGhlbiB0aGUgLT5raWNrIGhhbmRsZXIKPj4gwqA+PiB8IHNob3VsZCBiZSBw
cm92aWRlZCBhcyB3ZWxsLgo+PiDCoD4+Cj4+IMKgPj4gQnV0IGkgYXMgaSBtZW50aW9uZWQgaW4g
InJlbW90ZXByb2M6IEZpeCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gcnByb2NfdmlydGlv
X25vdGlmeSIga2ljayBtZXRob2Qgd2lsbCBiZSBjYWxsZWQgaWYKPj4gwqA+PiAicmVzb3VyY2Vf
dGFibGUgZXhpc3RzIGluIGZpcm13YXJlIGFuZCBoYXMgIlZpcnRpbyBkZXZpY2UgZW50cnkiIGRl
ZmluZWQiIGFueXdheSwgdGhlIGlteF9ycHJvYyBpcyBub3QgaW4gY29udHJvbCBvZiB3aGF0Cj4+
IMKgPj4gZXhhY3RseSBpdCBpcyBib290aW5nLCBzbyBzdWNoIHNpdHVhdGlvbiBjYW4gb2NjdXIu
Cj4+IMKgPgo+PiDCoD4gSWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgdGhlIE1DVSBjYW4gYm9v
dCBpbWFnZXMgdGhhdCBoYXZlIGEgdmlydGlvCj4+IMKgPiBkZXZpY2UgaW4gaXRzIHJlc291cmNl
IHRhYmxlIGFuZCBzdGlsbCBkbyB1c2VmdWwgd29yayBldmVuIGlmIHRoZQo+PiDCoD4gdmlydGlv
IGRldmljZS9ycG1zZyBidXMgY2FuJ3QgYmUgc2V0dXAgLSBpcyB0aGlzIGNvcnJlY3Q/Cj4+Cj4+
IMKgWWVzLCB0aGlzIGFzc3VtcHRpb24gaXMgY29ycmVjdC4KPj4KPj4gwqBEZXNwaXRlIHRoaXMg
c2l0dWF0aW9uIGlzIG5vdCBpIGRlc2lyZSBhdCBhbGwgLSBzdWNoIHRoaW5nIGNhbiBoYXBwZW4u
Cj4+IMKgSSBhbSBjdXJyZW50bHkgdXNpbmcgY28tcHJvYyBhcyBhIHJlYWx0aW1lIHBhcnQgb2Yg
VUdWIGNvbnRyb2wsCj4+IMKgc28gaXQgbXVzdCBpbW1lZGlhdGVseSBzdG9wIHRoZSBlbmdpbmVz
LCBpZiBub3QgcHJvdmlkZWQgd2l0aCBuYXZpZ2F0aW9uYWwgaW5mb3JtYXRpb24uCj4+Cj4+IMKg
VGhlIGlteDdkIE1DVSBoYXZlIGFjY2VzcyB0byB0aGUgbW9zdCBwZXJpcGhlcnkgdGhhdCBoYXZl
IHRoZSBtYWluIHByb2Nlc3Nvci4KPj4KPj4gwqBPZiBjb3Vyc2UgdGhlIGtpY2sgbWV0aG9kIHNo
b3VsZCBkbyByZWFsIHdvcmssIGJ1dCBpIGRlY2lkZWQgdG8gc3VibWl0IHN0ZXAgYnkgc3RlcCBp
ZiBpIGFtIGFsbG93ZWQgdG8gZG8gc28uCj4KPiBPaywgdGhlIHNpdHVhdGlvbiBpcyBjbGVhcmVy
IG5vdyBhbmQgSSBoYXZlIHB1dCB5b3VyIHBhdGNoZXMgYmFjayBpbgo+IG15IHF1ZXVlLiBJIGFt
IHNlcmlvdXNseSBiYWNrLWxvZ2dlZCBhdCB0aGlzIHRpbWUgc28gaXQgd2lsbCB0YWtlIGEKPiBs
aXR0bGUgd2hpbGUgYmVmb3JlIEkgZ2V0IHRvIHRoZW0uCj4KPj4gwqA+Cj4+IMKgPiBUaGFua3Ms
Cj4+IMKgPiBNYXRoaWV1Cj4+IMKgPgo+PiDCoD4+ID4KPj4gwqA+PiA+PiBzdGF0aWMgY29uc3Qg
c3RydWN0IHJwcm9jX29wcyBpbXhfcnByb2Nfb3BzID0gewo+PiDCoD4+ID4+IC5zdGFydCA9IGlt
eF9ycHJvY19zdGFydCwKPj4gwqA+PiA+PiAuc3RvcCA9IGlteF9ycHJvY19zdG9wLAo+PiDCoD4+
ID4+ICsgLmtpY2sgPSBpbXhfcnByb2Nfa2ljaywKPj4gwqA+PiA+PiAuZGFfdG9fdmEgPSBpbXhf
cnByb2NfZGFfdG9fdmEsCj4+IMKgPj4gPj4gfTsKPj4gwqA+PiA+Pgo+PiDCoD4+ID4+IC0tCj4+
IMKgPj4gPj4gMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
