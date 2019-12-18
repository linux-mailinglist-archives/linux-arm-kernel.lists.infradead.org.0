Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83592124556
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBJDlRIgr9XXx1mn/FnDvUtiJJ50UXhNghZYbJaQO9U=; b=IRIv4gK2Bcz2qJ
	bgk3yB6xCeW4jTuuEMslmu/uhHj5mFhZiA9lANakKcz9ehygILA/LoKmuaJmmCpbNdXWx11/xE9+D
	pUfuW2Au59xsIDGzM+QNT5oYfkKdjNUZZ5EBVSXvgENTDeiv1diawdFvrI2qk7pys64pSWfiJJa/Z
	Lzs1zjSf8HTG5g2hzl97x6XWPMrrSzIJrPA8kvdsWrJAwNwv0xpPtHvsJ9ma/pwDaB0G0DVOjdfsn
	NlRy6NBSnJegKrWBw4Gz6NbaN84RyEFjLoRAF20zS7pBqGNKXE7LD9rkHacJJGc9hEwAAmwrdSaJA
	NJMCUdTcKYs/yTxVLc/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihX9r-0007UB-EV; Wed, 18 Dec 2019 11:06:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihX9f-0007Te-78
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:06:12 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B05521D7D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576667170;
 bh=T+lH8bJxMA3antgWa53mmQwA212SQMB99c3fW+LhwCk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U6y+wFZlMneOyvFVXlVmT9NAoJK9qKiIRr4ZWY9SIOPnXD6ghsuufJsTcO+UvqUyc
 nuix7OhsOk/VAmBPgi25sfTsTBnlnxeGW7777zao8ROqFQfm/PP5jIM4kTViXjqEhk
 oX9RADWYfvfWW7DXoiWICPR98BXBM+fil2Ki2C6c=
Received: by mail-lj1-f173.google.com with SMTP id l2so1645986lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 03:06:10 -0800 (PST)
X-Gm-Message-State: APjAAAXJ7j6X01la+PXBMSKcpDeoPTTaol3+FTmL0EVtFp/w2bqmMSvE
 PvGf5YxsRVJ8mZERScy1oGFa1uaFPgp4uS92i1o=
X-Google-Smtp-Source: APXvYqxFqmEzLfRtA5LIKkLhHUdcqgmVQa4Gh13Gq0MRklJ/wwcukLDCLMxwYsSm8EMPDm2MdkofX2tLdCyM06y4H2I=
X-Received: by 2002:a2e:91cb:: with SMTP id u11mr1318444ljg.82.1576667168599; 
 Wed, 18 Dec 2019 03:06:08 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9@epcas5p3.samsung.com>
 <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
 <4d45cd39-24df-1714-0a27-5019c1367063@samsung.com>
 <VI1PR04MB7023F511BAE7D1EDF971CC48EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <60fe19c6-6e73-4133-ed7e-a13a875589c0@samsung.com>
 <VI1PR04MB7023DAC69C8B4B7CF144F29EEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023DAC69C8B4B7CF144F29EEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Wed, 18 Dec 2019 20:05:32 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1omr9jqRv9JX+X253YardFx_B26Hm-cT8UNF2J7eC_og@mail.gmail.com>
Message-ID: <CAGTfZH1omr9jqRv9JX+X253YardFx_B26Hm-cT8UNF2J7eC_og@mail.gmail.com>
Subject: Re: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_030611_301533_9C41FC65 
X-CRM114-Status: GOOD (  34.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCAxMuyblCAxOOydvCAo7IiYKSDsmKTtm4QgNzoxNCwgTGVvbmFyZCBDcmVzdGV6IDxs
ZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gT24gMTcuMTIuMjAxOSAw
Mjo1NSwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+ID4gT24gMTIvMTcvMTkgMTI6MDAgQU0sIExlb25h
cmQgQ3Jlc3RleiB3cm90ZToKPiA+PiBPbiAxMy4xMi4yMDE5IDA2OjIyLCBDaGFud29vIENob2kg
d3JvdGU6Cj4gPj4+IEhpLAo+ID4+Pgo+ID4+PiBPbiAxMS8xNS8xOSA1OjA5IEFNLCBMZW9uYXJk
IENyZXN0ZXogd3JvdGU6Cj4gPj4+PiBUaGVyZSBpcyBubyBzaW5nbGUgZGV2aWNlIHdoaWNoIGNh
biByZXByZXNlbnQgdGhlIGlteCBpbnRlcmNvbm5lY3QuCj4gPj4+PiBJbnN0ZWFkIG9mIGFkZGlu
ZyBhIHZpcnR1YWwgb25lIGp1c3QgbWFrZSB0aGUgbWFpbiAmbm9jIGFjdCBhcyB0aGUKPiA+Pj4+
IGdsb2JhbCBpbnRlcmNvbm5lY3QgcHJvdmlkZXIuCj4gPj4+Pgo+ID4+Pj4gVGhlIGlteCBpbnRl
cmNvbm5lY3QgcHJvdmlkZXIgZHJpdmVyIHdpbGwgc2NhbGUgdGhlIE5PQyBhbmQgRERSQyBiYXNl
ZAo+ID4+Pj4gb24gYmFuZHdpZHRoIHJlcXVlc3QuIE1vcmUgc2NhbGFibGUgbm9kZXMgY2FuIGJl
IGFkZGVkIGluIHRoZSBmdXR1cmUsCj4gPj4+PiBmb3IgZXhhbXBsZSBmb3IgYXVkaW8vZGlzcGxh
eS92cHUvZ3B1IE5JQ3MuCj4gPj4+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVz
dGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4gICAgZHJpdmVy
cy9kZXZmcmVxL2lteC1kZXZmcmVxLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ID4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKykKPiA+Pj4+
Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2lteC1kZXZmcmVxLmMgYi9kcml2
ZXJzL2RldmZyZXEvaW14LWRldmZyZXEuYwo+ID4+Pj4gaW5kZXggNjIwYjM0NGU4N2FhLi41ODVk
MzQwYzBmNmUgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvaW14LWRldmZyZXEu
Ywo+ID4+Pj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2lteC1kZXZmcmVxLmMKPiA+Pj4+IEBAIC0x
NSwxMCArMTUsMTEgQEAKPiA+Pj4+ICAgIHN0cnVjdCBpbXhfZGV2ZnJlcSB7Cj4gPj4+PiAgICAg
ICAgICAgIHN0cnVjdCBkZXZmcmVxX2Rldl9wcm9maWxlIHByb2ZpbGU7Cj4gPj4+PiAgICAgICAg
ICAgIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxOwo+ID4+Pj4gICAgICAgICAgICBzdHJ1Y3QgY2xr
ICpjbGs7Cj4gPj4+PiAgICAgICAgICAgIHN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSBwYXNz
aXZlX2RhdGE7Cj4gPj4+PiArICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICppY2NfcGRldjsKPiA+
Pj4+ICAgIH07Cj4gPj4+Pgo+ID4+Pj4gICAgc3RhdGljIGludCBpbXhfZGV2ZnJlcV90YXJnZXQo
c3RydWN0IGRldmljZSAqZGV2LAo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgbG9uZyAqZnJlcSwgdTMyIGZsYWdzKQo+ID4+Pj4gICAgewo+ID4+Pj4gQEAg
LTYwLDExICs2MSw0MCBAQCBzdGF0aWMgaW50IGlteF9kZXZmcmVxX2dldF9kZXZfc3RhdHVzKHN0
cnVjdCBkZXZpY2UgKmRldiwKPiA+Pj4+ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPj4+PiAgICB9
Cj4gPj4+Pgo+ID4+Pj4gICAgc3RhdGljIHZvaWQgaW14X2RldmZyZXFfZXhpdChzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gPj4+PiAgICB7Cj4gPj4+PiArICBzdHJ1Y3QgaW14X2RldmZyZXEgKnByaXYg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+Pj4+ICsKPiA+Pj4+ICAgICAgICAgICAgZGV2X3Bt
X29wcF9vZl9yZW1vdmVfdGFibGUoZGV2KTsKPiA+Pj4+ICsgIHBsYXRmb3JtX2RldmljZV91bnJl
Z2lzdGVyKHByaXYtPmljY19wZGV2KTsKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArLyogaW14
X2RldmZyZXFfaW5pdF9pY2MoKSAtIHJlZ2lzdGVyIG1hdGNoaW5nIGljYyBwcm92aWRlciBpZiBy
ZXF1aXJlZCAqLwo+ID4+Pj4gK3N0YXRpYyBpbnQgaW14X2RldmZyZXFfaW5pdF9pY2Moc3RydWN0
IGRldmljZSAqZGV2KQo+ID4+Pj4gK3sKPiA+Pj4+ICsgIHN0cnVjdCBpbXhfZGV2ZnJlcSAqcHJp
diA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4+Pj4gKyAgY29uc3QgY2hhciAqaWNjX2RyaXZl
cl9uYW1lOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19JTlRFUkNP
Tk5FQ1RfSU1YKSkKPiA+Pj4+ICsgICAgICAgICAgcmV0dXJuIDA7Cj4gPj4+Cj4gPj4+IEl0IGlz
IG5vdCBwcm9wZXIgdG8gY2hlY2sgdGhlIGVuYWJsZSBzdGF0ZSBvZiBDT05GSUdfSU5URVJDT05O
RUNUX0lNWCBjb25maWd1cmF0aW9uCj4gPj4+IG9uIGRldmljZSBkcml2ZXIuIFdoeSBkb24ndCB5
b3UgYWRkIHRoZSAnc2VsZWN0IENPTkZJR19JTlRFUkNPTk5FQ1RfSU1YJyBvbiBLY29uZmlnPwo+
ID4+Cj4gPj4gQmVjYXVzZSBpdCdzIG9wdGlvbmFsLgo+ID4+Cj4gPj4gWW91IGNhbiBkaXNhYmxl
IGludGVyY29ubmVjdCBzdXBwb3J0IGFuZCBqdXN0IHR3ZWFrIGZyZXF1ZW5jaWVzIHVzaW5nCj4g
Pj4gdGhlIGRldmZyZXEgc3lzZnMgQVBJLiBCdXQgaW5kZWVkIHdvdWxkIG9ubHkgcmVhbGx5IGJl
IHVzZWZ1bCBmb3IgZGVidWdnaW5nLgo+ID4KPiA+IEV2ZW4gaWYgaXQncyBvcHRpb25hbCwgSSBk
b24ndCBwcmVmZXIgdG8gdXNlICdJU19FTkFCTEVEJyBtYWNyby4KPiA+Cj4gPiBHZW5lcmFsbHks
IGFkZCBvciBkZWxldGUgdGhlIHByb3BlcnR5IG9yIHZhbHVlIGF0IERUIGZpbGUKPiA+IHRvIGVp
dGhlciBlbmFibGUgb3IgZGlzYWJsZSB0aGUgc29tZSBmZWF0dXJlIHByb3ZpZGVkIGJ5IGRldmlj
ZSBkcml2ZXIKPiA+IGluc3RlYWQgb2YgY2hlY2tpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCj4gPgo+
ID4gSWYgdXNlciBhZGRzIHRoZSBwcm9wZXJ0eS92YWx1ZSByZWxhdGVkIHRvIGludGVyY29ubmVj
dAo+ID4gYW5kIGlteC1idXMuYyBjb25maWd1cmF0aW9uIGlzIGVuYWJsZWQsIHRoZSBiZWhhdmlv
cgo+ID4gcmVsYXRlZCB0byBpbnRlcmNvbm5lY3Qgb24gaW14LWJ1cy5jIGRvZXNuJ3Qgd29yay4g
SXQgbWFrZSBzb21lIGNvbmZ1c2lvbi4KPgo+IE1heWJlIEkgY291bGQgcHJpbnQgYSB3YXJuaW5n
IGlmICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgcHJlc2VudCBidXQKPiBDT05GSUdfSU5URVJDT05O
RUNUX0lNWCBpcyBvZmY/CgpBY3R1YWxseSwgdXNlciBtaWdodCB0aGluayB0aGF0IGlmIGlteC1i
dXMuYyBpcyBlbmFibGVkCiwgQ09ORklHX0lOVEVSQ09OTkVDVF9NSVggaXMgZW5hYmxlZC4KQmVj
YXVzZSwgdGhlIGR0IGJpbmRpbmcgZG9jdW1lbnQgb2YgaW14LWJ1cy5jIHdpbGwKY29udGFpbiB0
aGUgcHJvcGVydHkgZm9yIGludGVyY29ubmVjdC4KCklmIGRldmljZSBkcml2ZXIgc3VwcG9ydCB0
aGUgdmFyaW91cyBmZWF0dXJlLAp0aGUgZGV2aWNlIGRyaXZlciBoYXZlIHRvIGVuYWJsZSBhbGwg
Y29uZmlndXJhdGlvbgppbiBvcmRlciB0byBzdXBwb3J0IHRoZSBmZWF0dXJlcyBmb3IgdXNlci4K
Cj4KPiBBbiBleHBsaWNpdCBzZWxlY3QgaW4gS2NvbmZpZyBzZWVtcyBsaWtlIGEgcG9pbnRsZXNz
IGxpbWl0YXRpb24gYnV0IGluCj4gcHJhY3RpY2UgaXQgd291bGQgYWxtb3N0IG5ldmVyIGJlIHVz
ZWZ1bCB0byBidWlsZCBvbmUgd2l0aG91dCB0aGUgb3RoZXIuCgpUaGlzIHBhdGNoIGlzIGZvciB0
aGUgc29tZSBDT05GSUdfSU5URVJDT05ORUNUX0lNWCBkcml2ZXIuCkkgZG9uJ3QgdW5kZXJzdGFu
ZCB3aHkgaXMgbm90IG1lYW5pbmdmdWwgdG8gc2VsZWN0IENPTkZJR19JTlRFUkNPTk5FQ1RfSU1Y
CmluIEtjb25maWc/Cgo+Cj4gPiBUaGUgaW14LWJ1cy5jIGhhdmUgdG8gYWRkIHRoZSAnc2VsZWN0
IENPTkZJR19JTlRFUkNPTk5FQ1RfSU1YJwo+ID4gYW5kIGhhbmQgb3ZlciB0aGUgcmlnaHQgd2hp
Y2ggdXNlIHRoZSBpbnRlcmNvbm5lY3QgZmVhdHVyZSBvciBub3QsIHRvIHVzZXIuCj4gPgo+ID4g
SWYgdGhlcmUgYXJlIGFueSByZXF1aXJlbWVudCB0byBhZGQgdGhlIGFkZGl0aW9uYWwgcHJvcGVy
dHkKPiA+IHRvIGNoZWNrIHdoZXRoZXIgaW50ZXJjb25uZWN0IGZlYXR1cmUgd2lsbCBiZSB1c2Vk
IG9yIG5vdCwKPiA+IHlvdSBjYW4gYWRkIHRoZSBleHRyYSBwcm9wZXJ0eS4gQnV0LCBJIHRoaW5r
IHRoYXQgaXQgaXMgZW5vdWdoCj4gPiB0byBjaGVjayB0aGUgJyNpbnRlcmNvbm5lY3QtY2VsbHMn
Lgo+ID4KPiA+IEluIHJlc3VsdCwgSSB0aGluayB0aGF0IGl0IGlzIHJpZ2h0IHRvIGRlY2lkZSB0
aGUgdXNhZ2Ugb2YgZmVhdHVyZQo+ID4gb2YgZGV2aWNlIGRyaXZlciBieSB1c2VyIG9uIERldmlj
ZXRyZWUuCj4gPgo+ID4+Cj4gPj4+PiArICBpZiAoIW9mX2dldF9wcm9wZXJ0eShkZXYtPm9mX25v
ZGUsICIjaW50ZXJjb25uZWN0LWNlbGxzIiwgMCkpCj4gPj4+PiArICAgICAgICAgIHJldHVybiAw
Owo+ID4+Pj4gKwo+ID4+Pj4gKyAgaWNjX2RyaXZlcl9uYW1lID0gb2ZfZGV2aWNlX2dldF9tYXRj
aF9kYXRhKGRldik7Cj4gPj4+PiArICBpZiAoIWljY19kcml2ZXJfbmFtZSkKPiA+Pj4+ICsgICAg
ICAgICAgcmV0dXJuIDA7Cj4gPj4+PiArCj4gPj4+PiArICBwcml2LT5pY2NfcGRldiA9IHBsYXRm
b3JtX2RldmljZV9yZWdpc3Rlcl9kYXRhKAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgIGRldiwg
aWNjX2RyaXZlcl9uYW1lLCAwLCBOVUxMLCAwKTsKPiA+Pj4+ICsgIGlmIChJU19FUlIocHJpdi0+
aWNjX3BkZXYpKSB7Cj4gPj4+PiArICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHJl
Z2lzdGVyIGljYyBwcm92aWRlciAlczogJWxkXG4iLAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgaWNjX2RyaXZlcl9uYW1lLCBQVFJfRVJSKHByaXYtPmRldmZyZXEpKTsKPiA+Pj4+
ICsgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocHJpdi0+ZGV2ZnJlcSk7Cj4gPj4+PiArICB9Cj4g
Pj4+PiArCj4gPj4+PiArICByZXR1cm4gMDsKPiA+Pj4+ICAgIH0KPiA+Pj4+Cj4gPj4+PiAgICBz
dGF0aWMgaW50IGlteF9kZXZmcmVxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gPj4+PiAgICB7Cj4gPj4+PiAgICAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2
LT5kZXY7Cj4gPj4+PiBAQCAtMTIwLDE4ICsxNTAsMjUgQEAgc3RhdGljIGludCBpbXhfZGV2ZnJl
cV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4+Pj4gICAgICAgICAgICAg
ICAgICAgIHJldCA9IFBUUl9FUlIocHJpdi0+ZGV2ZnJlcSk7Cj4gPj4+PiAgICAgICAgICAgICAg
ICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2aWNlOiAlZFxuIiwg
cmV0KTsKPiA+Pj4+ICAgICAgICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+Pj4+ICAgICAgICAg
ICAgfQo+ID4+Pj4KPiA+Pj4+ICsgIHJldCA9IGlteF9kZXZmcmVxX2luaXRfaWNjKGRldik7Cj4g
Pj4+PiArICBpZiAocmV0KQo+ID4+Pj4gKyAgICAgICAgICBnb3RvIGVycjsKPiA+Pj4+ICsKPiA+
Pj4+ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPj4+Pgo+ID4+Pj4gICAgZXJyOgo+ID4+Pj4gICAg
ICAgICAgICBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZShkZXYpOwo+ID4+Pj4gICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4+Pj4gICAgfQo+ID4+Pj4KPiA+Pj4+ICAgIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kZXZmcmVxX29mX21hdGNoW10gPSB7Cj4gPj4+PiArICB7
IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bXEtbm9jIiwgLmRhdGEgPSAiaW14OG1xLWludGVyY29u
bmVjdCIsIH0sCj4gPj4+PiArICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bW0tbm9jIiwgLmRh
dGEgPSAiaW14OG1tLWludGVyY29ubmVjdCIsIH0sCj4gPj4+PiArICB7IC5jb21wYXRpYmxlID0g
ImZzbCxpbXg4bW4tbm9jIiwgLmRhdGEgPSAiaW14OG1uLWludGVyY29ubmVjdCIsIH0sCj4gPj4+
PiAgICAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDhtLW5vYyIsIH0sCj4gPj4+PiAg
ICAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDhtLW5pYyIsIH0sCj4gPj4+PiAgICAg
ICAgICAgIHsgLyogc2VudGluZWwgKi8gfSwKPiA+Pj4+ICAgIH07Cj4gPj4+PiAgICBNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCBpbXhfZGV2ZnJlcV9vZl9tYXRjaCk7Cj4gPj4KPiA+Pgo+ID4KPiA+
Cj4KCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
