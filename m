Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947C7107EB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 15:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJt4ozNogsm9S5iC4V/hPG+3XPiiWqv23M+qXnqDUAw=; b=RRvHOHtrY4ZJ+Q
	GyjvXkqAmSKGVwS2tZQy+CwcmGv7ZUBKd2ZXlz1/v7b8rL05slxEuDXrVKUT7/CVY0ocIJs3PnMXB
	Mps6fgJr5ccnVjhH/1ViYmD/Z19ybITNF9VrAR9k9IwygEtx3Fi+sBFmR2OpO8HemX4yR8s7Ez5i5
	Rj3KBW8DXt/v4HMJ+jNnBGtuDzeIAyLtGTDmkFOCZ4DZd1mQfVDBRcUkmTCIlFX03XopW7c50DDQD
	nM331UtKWonfh0SZbOQZI9XdRFO0pymOJgCf50rtc92cZlNExHdKAwcO5/OnRwF8oR9vGgi4e/XNH
	yxrup/MH6Y038JYyCkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYW39-0006QQ-L1; Sat, 23 Nov 2019 14:06:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYW2z-0006Pl-6K
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 14:06:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so9507275wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 Nov 2019 06:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LzBH6Boadl2X4V0qpKJ4GfJzn4lxVk+taIl7e3TfpSk=;
 b=cVo0f2SQMjG9Hgm32KC4vK1EUx4QadFWHUqq7hfcMMWd+XuTsowzRLm3k0R/vUC8HK
 IkHaynx9K6q1/mekm7TxG6YSsLMpuulArhGMSyaAc0DJJ1OcMyVHXtKRUN4eBpYOYHuS
 F1a/7LyF/FotC/2joRQLgndM9zVKLVziEKlwYZZwlfB06tadQsqqGJ6Y/8nDrmj+N/HE
 7sQPjZe7S8gSTA7DcOiR8D+zkfpPG4NPwR5ApV6hN4VWMi5UEx9eTLaUtujLdwwvC0YI
 cbZzRF+j+eLqIv7BpJT0kvu8mtTYKWtk2ooCYEiqH5MeRgtF+JEbp37IfMILyiqamr8X
 4XTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LzBH6Boadl2X4V0qpKJ4GfJzn4lxVk+taIl7e3TfpSk=;
 b=h8C4RK0cAYh7pmQu48ThGuYe/UKEfxHpAqO/pnPXIW0VdoAP6INn1W1eDbyhoxZhNU
 cGuQFdIxlQjhb0kSkOI5N1oxCvHY4JyqD44cO7AfWXElrvYHIoVF3IvLHn5Ty15WouwG
 BEtw/utMQb/5GyESfimT00NMtOI6itoTCodnNVMESKDK0eORIcF4+Ckdw72gJsMywQjE
 IJ3BaVhJkm1+Zu8UaJZ4GfOWuywStpspAVh3k5+O0CYNKAw098SBd2fmNByjsD8heTmt
 lBu6UYsqdWC+C/3Kpmj+05aDGoYXbtPvMPPqQB8WqT+Paplz20Ug6njdYa3jhgXf8RuN
 66pw==
X-Gm-Message-State: APjAAAU21jBUh+J0P78xKwDoYRkFtnghEzTOWdSusAmDwatxnmZ4hYXo
 ACc1akNOVTS8yCS6XpkP5TprtbHc9BTKL7H0337I5c2E
X-Google-Smtp-Source: APXvYqzVqWiQ+apKsrT0oBiaeec4gy/zoma0dtQBf07yF7JGCR5SNhAzslSYZ+fTDlHPoKxtqDWGDPl4l7/aBmKHdYM=
X-Received: by 2002:a7b:c411:: with SMTP id k17mr20668890wmi.119.1574517959360; 
 Sat, 23 Nov 2019 06:05:59 -0800 (PST)
MIME-Version: 1.0
References: <20191121195902.6906-1-peron.clem@gmail.com>
 <20191121195902.6906-6-peron.clem@gmail.com>
 <20191121211630.slgayfbuykwvlvdt@pengutronix.de>
 <CAJiuCcdhH9zbRMMYsZbBYL-H8YWn2kimvJEjZ8Z8kF7Uh9MCpg@mail.gmail.com>
In-Reply-To: <CAJiuCcdhH9zbRMMYsZbBYL-H8YWn2kimvJEjZ8Z8kF7Uh9MCpg@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 23 Nov 2019 15:05:48 +0100
Message-ID: <CAJiuCcd8VK2xHqRuWTVpNvw4e+rCR9-KjOSF5KsTcN9qQhaNVw@mail.gmail.com>
Subject: Re: [PATCH v8 5/6] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_060601_259885_47665ECB 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCAyMSBOb3YgMjAxOSBhdCAyMjoyMSwgQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBVd2UsCj4KPiBPbiBUaHUsIDIxIE5v
diAyMDE5IGF0IDIyOjE2LCBVd2UgS2xlaW5lLUvDtm5pZwo+IDx1LmtsZWluZS1rb2VuaWdAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgTm92IDIxLCAyMDE5IGF0IDA4OjU5
OjAxUE0gKzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gRnJvbTogSmVybmVqIFNr
cmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPgo+ID4gPiBQV00gY29yZSBoYXMg
YW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9sZSBsb2dpYyBhbmQgb3V0cHV0IHVuY2hhbmdlZCBzb3Vy
Y2UKPiA+ID4gY2xvY2sgYXMgUFdNIG91dHB1dC4gVGhpcyBpcyBhY2hpZXZlZCBieSBlbmFibGlu
ZyBieXBhc3MgYml0Lgo+ID4gPgo+ID4gPiBOb3RlIHRoYXQgd2hlbiBieXBhc3MgaXMgZW5hYmxl
ZCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5pbmcsIG5vdAo+ID4gPiBldmVuIGVuYWJs
ZSBiaXQuCj4gPiA+Cj4gPiA+IFRoaXMgbW9kZSBvZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFj
aGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRvCj4gPiA+IHNlcnZlIGFzIGNsb2NrIHNvdXJj
ZSBmb3IgQUMyMDAgY2hpcCB3aGljaCBpcyBpbnRlZ3JhdGVkIGludG8gc2FtZQo+ID4gPiBwYWNr
YWdlIGFzIEg2IFNvQy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQ
w6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvcHdt
L3B3bS1zdW40aS5jIHwgNDggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiBpbmRleCAxZmEyMDU3NDE5ZmIuLjBmZTljNjgwZDZk
MCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gQEAgLTMsNiArMywxMCBAQAo+ID4gPiAgICog
RHJpdmVyIGZvciBBbGx3aW5uZXIgc3VuNGkgUHVsc2UgV2lkdGggTW9kdWxhdGlvbiBDb250cm9s
bGVyCj4gPiA+ICAgKgo+ID4gPiAgICogQ29weXJpZ2h0IChDKSAyMDE0IEFsZXhhbmRyZSBCZWxs
b25pIDxhbGV4YW5kcmUuYmVsbG9uaUBmcmVlLWVsZWN0cm9ucy5jb20+Cj4gPiA+ICsgKgo+ID4g
PiArICogTGltaXRhdGlvbnM6Cj4gPiA+ICsgKiAtIFdoZW4gb3V0cHV0aW5nIHRoZSBzb3VyY2Ug
Y2xvY2sgZGlyZWN0bHksIHRoZSBQV00gbG9naWMgd2lsbCBiZSBieXBhc3NlZAo+ID4gPiArICog
ICBhbmQgdGhlIGN1cnJlbnRseSBydW5uaW5nIHBlcmlvZCBpcyBub3QgZ3VhcmFudGVlZCB0byBi
ZSBjb21wbGV0ZWQKPiA+ID4gICAqLwo+ID4gPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9w
cy5oPgo+ID4gPiBAQCAtNzMsNiArNzcsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHByZXNjYWxlcl90
YWJsZVtdID0gewo+ID4gPgo+ID4gPiAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+ID4gICAg
ICAgYm9vbCBoYXNfcHJlc2NhbGVyX2J5cGFzczsKPiA+ID4gKyAgICAgYm9vbCBoYXNfZGlyZWN0
X21vZF9jbGtfb3V0cHV0Owo+ID4gPiAgICAgICB1bnNpZ25lZCBpbnQgbnB3bTsKPiA+ID4gIH07
Cj4gPiA+Cj4gPiA+IEBAIC0xMTgsNiArMTIzLDIwIEBAIHN0YXRpYyB2b2lkIHN1bjRpX3B3bV9n
ZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAo+ID4gPgo+ID4gPiAgICAgICB2YWwgPSBz
dW40aV9wd21fcmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4gPgo+ID4gPiArICAg
ICAvKgo+ID4gPiArICAgICAgKiBQV00gY2hhcHRlciBpbiBINiBtYW51YWwgaGFzIGEgZGlhZ3Jh
bSB3aGljaCBleHBsYWlucyB0aGF0IGlmIGJ5cGFzcwo+ID4gPiArICAgICAgKiBiaXQgaXMgc2V0
LCBubyBvdGhlciBzZXR0aW5nIGhhcyBhbnkgbWVhbmluZy4gRXZlbiBtb3JlLCBleHBlcmltZW50
Cj4gPiA+ICsgICAgICAqIHByb3ZlZCB0aGF0IGFsc28gZW5hYmxlIGJpdCBpcyBpZ25vcmVkIGlu
IHRoaXMgY2FzZS4KPiA+ID4gKyAgICAgICovCj4gPiA+ICsgICAgIGlmICgodmFsICYgQklUX0NI
KFBXTV9CWVBBU1MsIHB3bS0+aHdwd20pKSAmJgo+ID4gPiArICAgICAgICAgc3VuNGlfcHdtLT5k
YXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gPiA+ICsgICAgICAgICAgICAgc3Rh
dGUtPnBlcmlvZCA9IERJVl9ST1VORF9VUF9VTEwoTlNFQ19QRVJfU0VDLCBjbGtfcmF0ZSk7Cj4g
PiA+ICsgICAgICAgICAgICAgc3RhdGUtPmR1dHlfY3ljbGUgPSBESVZfUk9VTkRfVVBfVUxMKHN0
YXRlLT5wZXJpb2QsIDIpOwo+ID4gPiArICAgICAgICAgICAgIHN0YXRlLT5wb2xhcml0eSA9IFBX
TV9QT0xBUklUWV9OT1JNQUw7Cj4gPiA+ICsgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSB0
cnVlOwo+ID4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4g
PiA+ICAgICAgIGlmICgoUFdNX1JFR19QUkVTQ0FMKHZhbCwgcHdtLT5od3B3bSkgPT0gUFdNX1BS
RVNDQUxfTUFTSykgJiYKPiA+ID4gICAgICAgICAgIHN1bjRpX3B3bS0+ZGF0YS0+aGFzX3ByZXNj
YWxlcl9ieXBhc3MpCj4gPiA+ICAgICAgICAgICAgICAgcHJlc2NhbGVyID0gMTsKPiA+ID4gQEAg
LTE0OSwxMyArMTY4LDI0IEBAIHN0YXRpYyB2b2lkIHN1bjRpX3B3bV9nZXRfc3RhdGUoc3RydWN0
IHB3bV9jaGlwICpjaGlwLAo+ID4gPgo+ID4gPiAgc3RhdGljIGludCBzdW40aV9wd21fY2FsY3Vs
YXRlKHN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtLAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBwd21fc3RhdGUgKnN0YXRlLAo+ID4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiAqZHR5LCB1MzIgKnByZCwgdW5zaWduZWQgaW50
ICpwcnNjbHIpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyICpkdHksIHUz
MiAqcHJkLCB1bnNpZ25lZCBpbnQgKnByc2NsciwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBib29sICpieXBhc3MpCj4gPiA+ICB7Cj4gPiA+ICAgICAgIHU2NCBjbGtfcmF0ZSwg
ZGl2ID0gMDsKPiA+ID4gICAgICAgdW5zaWduZWQgaW50IHB2YWwsIHByZXNjYWxlciA9IDA7Cj4g
PiA+Cj4gPiA+ICAgICAgIGNsa19yYXRlID0gY2xrX2dldF9yYXRlKHN1bjRpX3B3bS0+Y2xrKTsK
PiA+ID4KPiA+ID4gKyAgICAgKmJ5cGFzcyA9IHN1bjRpX3B3bS0+ZGF0YS0+aGFzX2RpcmVjdF9t
b2RfY2xrX291dHB1dCAmJgo+ID4gPiArICAgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgJiYK
PiA+ID4gKyAgICAgICAgICAgICAgIChzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19Q
RVJfU0VDKSAmJgo+ID4gPiArICAgICAgICAgICAgICAgKHN0YXRlLT5wZXJpb2QgKiBjbGtfcmF0
ZSA8IDIgKiBOU0VDX1BFUl9TRUMpICYmCj4gPiA+ICsgICAgICAgICAgICAgICAoc3RhdGUtPmR1
dHlfY3ljbGUgKiBjbGtfcmF0ZSAqIDIgPj0gTlNFQ19QRVJfU0VDKTsKPiA+ID4gKwo+ID4gPiAr
ICAgICAvKiBTa2lwIGNhbGN1bGF0aW9uIG9mIG90aGVyIHBhcmFtZXRlcnMgaWYgd2UgYnlwYXNz
IHRoZW0gKi8KPiA+ID4gKyAgICAgaWYgKCpieXBhc3MpCj4gPiA+ICsgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4gPiA+ICsKPiA+ID4gICAgICAgaWYgKHN1bjRpX3B3bS0+ZGF0YS0+aGFzX3ByZXNj
YWxlcl9ieXBhc3MpIHsKPiA+ID4gICAgICAgICAgICAgICAvKiBGaXJzdCwgdGVzdCB3aXRob3V0
IGFueSBwcmVzY2FsZXIgd2hlbiBhdmFpbGFibGUgKi8KPiA+ID4gICAgICAgICAgICAgICBwcmVz
Y2FsZXIgPSBQV01fUFJFU0NBTF9NQVNLOwo+ID4gPiBAQCAtMjA2LDYgKzIzNiw3IEBAIHN0YXRp
YyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9k
ZXZpY2UgKnB3bSwKPiA+ID4gICAgICAgaW50IHJldDsKPiA+ID4gICAgICAgdW5zaWduZWQgaW50
IGRlbGF5X3VzLCBwcmVzY2FsZXI7Cj4gPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgbm93Owo+ID4g
PiArICAgICBib29sIGJ5cGFzczsKPiA+ID4KPiA+ID4gICAgICAgcHdtX2dldF9zdGF0ZShwd20s
ICZjc3RhdGUpOwo+ID4gPgo+ID4gPiBAQCAtMjIwLDcgKzI1MSw4IEBAIHN0YXRpYyBpbnQgc3Vu
NGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3
bSwKPiA+ID4gICAgICAgc3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiA+ICAg
ICAgIGN0cmwgPSBzdW40aV9wd21fcmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwo+ID4g
Pgo+ID4gPiAtICAgICByZXQgPSBzdW40aV9wd21fY2FsY3VsYXRlKHN1bjRpX3B3bSwgc3RhdGUs
ICZkdXR5LCAmcGVyaW9kLCAmcHJlc2NhbGVyKTsKPiA+ID4gKyAgICAgcmV0ID0gc3VuNGlfcHdt
X2NhbGN1bGF0ZShzdW40aV9wd20sIHN0YXRlLCAmZHV0eSwgJnBlcmlvZCwgJnByZXNjYWxlciwK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmYnlwYXNzKTsKPiA+ID4gICAg
ICAgaWYgKHJldCkgewo+ID4gPiAgICAgICAgICAgICAgIGRldl9lcnIoY2hpcC0+ZGV2LCAicGVy
aW9kIGV4Y2VlZHMgdGhlIG1heGltdW0gdmFsdWVcbiIpOwo+ID4gPiAgICAgICAgICAgICAgIHNw
aW5fdW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Cj4gPiA+IEBAIC0yMjksNiArMjYxLDE4
IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3Ry
dWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4g
PiAgICAgICB9Cj4gPiA+Cj4gPiA+ICsgICAgIGlmIChzdW40aV9wd20tPmRhdGEtPmhhc19kaXJl
Y3RfbW9kX2Nsa19vdXRwdXQpIHsKPiA+ID4gKyAgICAgICAgICAgICBpZiAoYnlwYXNzKSB7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICBjdHJsIHw9IEJJVF9DSChQV01fQllQQVNTLCBwd20t
Pmh3cHdtKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIC8qIFdlIGNhbiBza2lwIG90aGVy
IHBhcmFtZXRlciAqLwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgc3VuNGlfcHdtX3dyaXRl
bChzdW40aV9wd20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ICsgICAgICAgICAgICAgfSBlbHNlIHsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIGN0cmwgJj0gfkJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3
cHdtKTsKPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ICsgICAgIH0KPiA+Cj4gPiBUaGlzIGNv
dWxkIGJlIHNpbXBsaWZpZWQgdG86Cj4gPgo+ID4gICAgICAgICBpZiAoYnlwYXNzKSB7Cj4gPiAg
ICAgICAgICAgICAgICAgY3RybCB8PSBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSk7Cj4g
PiAgICAgICAgICAgICAgICAgLyoKPiA+ICAgICAgICAgICAgICAgICAgKiBPdGhlciBwYXJhbWV0
ZXJzIGFyZSBub3QgcmVsZXZhbnQgaW4gdGhpcyBtb2RlIGFuZCBzbwo+ID4gICAgICAgICAgICAg
ICAgICAqIHdyaXRpbmcgdGhlbSBjYW4gYmUgc2tpcHBlZAo+ID4gICAgICAgICAgICAgICAgICAq
Lwo+ID4gICAgICAgICAgICAgICAgIHN1bjRpX3B3bV93cml0ZWwoc3VuNGlfcHdtLCBjdHJsLCBQ
V01fQ1RSTF9SRUcpOwo+ID4gICAgICAgICAgICAgICAgIHNwaW5fdW5sb2NrKCZzdW40aV9wd20t
PmN0cmxfbG9jayk7Cj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAgICAgICAgIH0g
ZWxzZSB7Cj4gPiAgICAgICAgICAgICAgICAgY3RybCAmPSB+QklUX0NIKFBXTV9CWVBBU1MsIHB3
bS0+aHdwd20pOwo+ID4gICAgICAgICB9Cj4gPgo+ID4gd2hpY2ggaGFzIHRoZSBhZHZhbnRhZ2Uo
PykgdGhhdCB0aGUgYnlwYXNzIGJpdCBpcyBhbHNvIChtb3JlIG9idmlvdXNseSkKPiA+IGNsZWFy
ZWQgZm9yIFNvQ3MgdGhhdCBkb24ndCBzdXBwb3J0IGl0IGFuZCBpdCByZWR1Y2VzIHRoZSBpbmRl
bnRpb24KPiA+IGxldmVsLgo+Cj4gVGhpcyBiaXQgaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgcmVz
ZXJ2ZWQgZm9yIGFsbCB0aGUgU29DIHZhcmlhbnRzLgo+Cj4gSSBkb24ndCB0aGluayBpdCdzIGEg
Z29vZCBpZGVhIHRvIHNldCB0byAwIGEgYml0IHdoaWNoIGlzIHVuZGVmaW5lZC4KCkxldCBtZSBr
bm93IGlmIHlvdSBhZ3JlZSBvciBub3Qgd2l0aCB0aGlzIGFuZCBJIHNlbmQgdGhlIHY5IGFjY29y
ZGluZwp0byB5b3VyIGFuc3dlci4KClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4gUmVnYXJkcywKPiBD
bGVtZW50Cj4KPiA+Cj4gPiBCZXN0IHJlZ2FyZHMKPiA+IFV3ZQo+ID4KPiA+IC0tCj4gPiBQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5p
ZyAgICAgICAgICAgIHwKPiA+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAg
ICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRlLyB8CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
