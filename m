Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B92E5679A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnllDq01L0ymI687TkB/eTrSQIRY3P2PKc7ElAr4PN8=; b=jt6hw2u92Ufvqt
	/K4uqAsiq+K4PoLTja+Vgxk6f7H8nIRSjGD+a0+3GhZZtXvdCf7WoBMTWMnTv/cdfB050jC/1eQTa
	6HnTAHIJ4WktmJAKtV2TMKB+fbDOPyFYhOTEVCtlq+N1KiMsSY3MOQYv1X8m+qLn8xdhk6gVLsowO
	g3LPvlmsj65iBpm+3xwqtTR17f/0EzKGTonEiiGWK+hRjWVk0GoCP/ZZaq36PFTuJbwJrp/jGjVhq
	6cBlsu99Uy9trwVr8iRmYgZqcIMBGjQ6vs+EevpvvNlHqOmIwu0XbUihnPMxkO6Vbz6iMmwTyzPbC
	m+/AW21WEtLexOybZ0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg66V-0003g8-1i; Wed, 26 Jun 2019 11:28:43 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg66J-0003f5-FK
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:28:33 +0000
Received: by mail-ot1-f65.google.com with SMTP id d17so2137646oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 04:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zYG7+FYrQci0B0NIIaV4SdyVIkXx7HP7jsA5/CTPT+A=;
 b=uhCqAGT28cinp7vle2tvRT/baNCdcrcU4cEU0xzt74OjNcWM11GmRsz/O43DbfMyFc
 L0ou3cvMJ5ugW2jxkgAVXuy7ddpoKimVw1sCF3qMCE0yWbkkNPfngxrMSKJu5TyzuvBd
 8GOmfAXkBQWu7hRG8W/RiTyisLKQcZmQvlGpGMUTVfZYPQAALFqOqtORdw8p0HtJmfSQ
 xnkkoWBCIdhXPoQ+6WdjDvSq8Wq7CcU/QQKN4HMinoASNcBPeWowiNkem5x4m46DN2Yc
 0L2dyBiOSMabCqdhp2BMEqhXbVs3osQeXN/oWezgkoNwu38By4Lqb6jb7MYY9twholKu
 y8/w==
X-Gm-Message-State: APjAAAVXZ80PTnHF451byB/cquR8GAvr0pZkwkOqzqHjvqzYvWvER/Bl
 by0AS0e4qO9kdPxwkf7lKRmOXvplXyusAjHftPo=
X-Google-Smtp-Source: APXvYqxQcfGkDZskFmpDKI+mK6sXWnA1QxcoJlpLtksnfosbfzd0ZwAqux1kiyfOCsazXPoyKgzI+/UQgzyr5VyCpbU=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr2713084oto.118.1561548510328; 
 Wed, 26 Jun 2019 04:28:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
 <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
 <20190626063716.cechnzsb75q5lclr@vireshk-i7>
 <CAJZ5v0jFXmJ3ikEPQUp-cLv3+ZSnp1kP8CxdkZVofV1BS3+UwQ@mail.gmail.com>
 <8a9b7bd0-9b21-1ce1-6176-cffff4b8d739@linaro.org>
In-Reply-To: <8a9b7bd0-9b21-1ce1-6176-cffff4b8d739@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 26 Jun 2019 13:28:19 +0200
Message-ID: <CAJZ5v0h7=BqnQqvULnQr3MuQsS2qwSn7RCZbMo-V+cUi+kbvSg@mail.gmail.com>
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_042831_517937_B02332C6 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Fabio Estevam <festevam@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMjYsIDIwMTkgYXQgMTI6MTkgUE0gRGFuaWVsIExlemNhbm8KPGRhbmllbC5s
ZXpjYW5vQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjYvMDYvMjAxOSAxMTowNiwgUmFmYWVs
IEouIFd5c29ja2kgd3JvdGU6Cj4gPiBPbiBXZWQsIEp1biAyNiwgMjAxOSBhdCA4OjM3IEFNIFZp
cmVzaCBLdW1hciA8dmlyZXNoLmt1bWFyQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4+Cj4gPj4gT24g
MjYtMDYtMTksIDA4OjAyLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiA+Pj4gT24gMjYvMDYvMjAx
OSAwNDo1OCwgVmlyZXNoIEt1bWFyIHdyb3RlOgo+ID4+Pj4gT24gMjUtMDYtMTksIDEzOjMyLCBE
YW5pZWwgTGV6Y2FubyB3cm90ZToKPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVmcmVx
L2NwdWZyZXEuYyBiL2RyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMKPiA+Pj4+PiBpbmRleCBhZWUw
MjRlNDI2MTguLmYwNzQ1NDI0OWZiYyAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL2NwdWZy
ZXEvY3B1ZnJlcS5jCj4gPj4+Pj4gKysrIGIvZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEuYwo+ID4+
Pj4+IEBAIC0xMzc5LDggKzEzNzksOCBAQCBzdGF0aWMgaW50IGNwdWZyZXFfb25saW5lKHVuc2ln
bmVkIGludCBjcHUpCj4gPj4+Pj4gICAgICAgICAgICBjcHVmcmVxX2RyaXZlci0+cmVhZHkocG9s
aWN5KTsKPiA+Pj4+Pgo+ID4+Pj4+ICAgIGlmIChjcHVmcmVxX3RoZXJtYWxfY29udHJvbF9lbmFi
bGVkKGNwdWZyZXFfZHJpdmVyKSkKPiA+Pj4+PiAtICAgICAgICAgIHBvbGljeS0+Y2RldiA9IG9m
X2NwdWZyZXFfY29vbGluZ19yZWdpc3Rlcihwb2xpY3kpOwo+ID4+Pj4+IC0KPiA+Pj4+PiArICAg
ICAgICAgIG9mX2NwdWZyZXFfY29vbGluZ19yZWdpc3Rlcihwb2xpY3kpOwo+ID4+Pj4+ICsKPiA+
Pj4+Cj4gPj4+PiBXZSBkb24ndCBuZWVkIGFueSBlcnJvciBjaGVja2luZyBoZXJlIGFueW1vcmUg
Pwo+ID4+Pgo+ID4+PiBUaGVyZSB3YXMgbm8gZXJyb3IgY2hlY2tpbmcgaW5pdGlhbGx5LiBUaGlz
IGNvbW1lbnQgYW5kIHRoZSBvdGhlcnMgYmVsb3cKPiA+Pj4gYXJlIGZvciBhbiBhZGRpdGlvbmFs
IHBhdGNoIElNTywgbm90IGEgY2hhbmdlIGluIHRoaXMgb25lLgo+ID4+Cj4gPj4gcmlnaHQsIGJ1
dCAuLi4KPiA+Pgo+ID4+Pj4+IC12b2lkIGNwdWZyZXFfY29vbGluZ191bnJlZ2lzdGVyKHN0cnVj
dCB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlICpjZGV2KQo+ID4+Pj4+ICt2b2lkIGNwdWZyZXFfY29v
bGluZ191bnJlZ2lzdGVyKHN0cnVjdCBjcHVmcmVxX3BvbGljeSAqcG9saWN5KQo+ID4+Pj4+ICB7
Cj4gPj4+Pj4gICAgc3RydWN0IGNwdWZyZXFfY29vbGluZ19kZXZpY2UgKmNwdWZyZXFfY2RldjsK
PiA+Pj4+PiAgICBib29sIGxhc3Q7Cj4gPj4+Pj4KPiA+Pj4+PiAtICBpZiAoIWNkZXYpCj4gPj4+
Pj4gLSAgICAgICAgICByZXR1cm47Cj4gPj4KPiA+PiB3ZSB1c2VkIHRvIHJldHVybiB3aXRob3V0
IGFueSBlcnJvcnMgZnJvbSBoZXJlLiBOb3cgd2Ugd2lsbCBoYXZlCj4gPj4gcHJvYmxlbXMgaWYg
cmVnc2l0ZXJpbmcgZmFpbHMgZm9yIHNvbWUgcmVhc29uLgo+ID4KPiA+IFNwZWNpZmljYWxseSwg
dGhlIGxhc3QgY3B1ZnJlcV9jZGV2IGluIHRoZSBsaXN0IHdpbGwgYmUgdW5yZWdpc3RlcmVkCj4g
PiBBRkFJQ1MsIGFuZCB3aXRob3V0IHJlbW92aW5nIGl0IGZyb20gdGhlIGxpc3QgZm9yIHRoYXQg
bWF0dGVyLCB3aGljaAo+ID4gaXNuJ3Qgd2hhdCB0aGUgY2FsbGVyIHdhbnRzLgo+Cj4gSW5kZWVk
LAo+Cj4gV2hhdCBhYm91dCB0aGUgcmVzdWx0aW5nIGNvZGUgYWJvdmU6Cj4KPiB2b2lkIF9fY3B1
ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIoc3RydWN0IGNwdWZyZXFfY29vbGluZ19kZXZpY2UKPiAq
Y3B1ZnJlcV9jZGV2LCBpbnQgbGFzdCkKPiB7Cj4gICAgICAgICAvKiBVbnJlZ2lzdGVyIHRoZSBu
b3RpZmllciBmb3IgdGhlIGxhc3QgY3B1ZnJlcSBjb29saW5nIGRldmljZSAqLwo+ICAgICAgICAg
aWYgKGxhc3QpCj4gICAgICAgICAgICAgICAgIGNwdWZyZXFfdW5yZWdpc3Rlcl9ub3RpZmllcigm
dGhlcm1hbF9jcHVmcmVxX25vdGlmaWVyX2Jsb2NrLAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgQ1BVRlJFUV9QT0xJQ1lfTk9USUZJRVIpOwo+CgpEb2Vzbid0
IHRoZSBub3RpZmllciBuZWVkIHRvIGJlIHVucmVnaXN0ZXJlZCB1bmRlciBjb29saW5nX2xpc3Rf
bG9jayA/Cgo+ICAgICAgICAgdGhlcm1hbF9jb29saW5nX2RldmljZV91bnJlZ2lzdGVyKGNwdWZy
ZXFfY2Rldi0+Y2Rldik7Cj4gICAgICAgICBpZGFfc2ltcGxlX3JlbW92ZSgmY3B1ZnJlcV9pZGEs
IGNwdWZyZXFfY2Rldi0+aWQpOwo+ICAgICAgICAga2ZyZWUoY3B1ZnJlcV9jZGV2LT5pZGxlX3Rp
bWUpOwo+ICAgICAgICAga2ZyZWUoY3B1ZnJlcV9jZGV2KTsKPiB9Cj4KPiAvKioKPgo+ICAqIGNw
dWZyZXFfY29vbGluZ191bnJlZ2lzdGVyIC0gZnVuY3Rpb24gdG8gcmVtb3ZlIGNwdWZyZXEgY29v
bGluZwo+IGRldmljZS4KPiAgKiBAY2RldjogdGhlcm1hbCBjb29saW5nIGRldmljZSBwb2ludGVy
Lgo+Cj4gICoKPgo+ICAqIFRoaXMgaW50ZXJmYWNlIGZ1bmN0aW9uIHVucmVnaXN0ZXJzIHRoZSAi
dGhlcm1hbC1jcHVmcmVxLSV4IiBjb29saW5nCj4gZGV2aWNlLgo+ICAqLwo+IHZvaWQgY3B1ZnJl
cV9jb29saW5nX3VucmVnaXN0ZXIoc3RydWN0IGNwdWZyZXFfcG9saWN5ICpwb2xpY3kpCj4gewo+
ICAgICAgICAgc3RydWN0IGNwdWZyZXFfY29vbGluZ19kZXZpY2UgKmNwdWZyZXFfY2RldjsKPiAg
ICAgICAgIGJvb2wgbGFzdDsKPgo+ICAgICAgICAgbXV0ZXhfbG9jaygmY29vbGluZ19saXN0X2xv
Y2spOwo+ICAgICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeShjcHVmcmVxX2NkZXYsICZjcHVmcmVx
X2NkZXZfbGlzdCwgbm9kZSkgewo+ICAgICAgICAgICAgICAgICBpZiAoY3B1ZnJlcV9jZGV2LT5w
b2xpY3kgPT0gcG9saWN5KSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgbGlzdF9kZWwoJmNw
dWZyZXFfY2Rldi0+bm9kZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgbGFzdCA9IGxpc3Rf
ZW1wdHkoJmNwdWZyZXFfY2Rldl9saXN0KTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVh
azsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgfQo+ICAgICAgICAgbXV0ZXhfdW5sb2Nr
KCZjb29saW5nX2xpc3RfbG9jayk7Cj4KPiAgICAgICAgIGlmIChjcHVmcmVxX2NkZXYtPnBvbGlj
eSA9PSBwb2xpY3kpCj4gICAgICAgICAgICAgICAgIF9fY3B1ZnJlcV9jb29saW5nX3VucmVnaXN0
ZXIoY3B1ZnJlcV9jZGV2LCBsYXN0KTsKPiB9Cj4gRVhQT1JUX1NZTUJPTF9HUEwoY3B1ZnJlcV9j
b29saW5nX3VucmVnaXN0ZXIpOwo+Cj4KPgo+Cj4gLS0KPiAgPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+Cj4g
Rm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZh
Y2Vib29rIHwKPiA8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cj4g
PGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
