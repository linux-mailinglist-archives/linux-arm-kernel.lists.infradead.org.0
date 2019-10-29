Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839ABE7D75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDEVJLH6EpsV0StmbUr9i/ecaTyUPUE0Kf4+2nLNkuc=; b=oYgzJv9OOag9DO
	gFF4VngnnJG3ukPMTnkVs+icA0/TXd/pXGd/BHyWyBGdjJ6kSC7pz9GbNurbIDr16Q5Ku6sslwAev
	liZol3FeAkKYhRvTnn8L0zodDPAUBAdq+xX5RSL0/O3M9WDWb+N7kEHhBhpv61fcPx8zGrneTd1Ss
	H0yZgYe5LRBbW+TsiH8ixv1jG9FsCv+049SzJsQXzRHFT+ebhFAHEOsck/pOaE50CpG4eeFJqD210
	V4yMgs/PE8t0KlT37Vk1nrU710POtg+4K3ZTGJAPWuO42dfTBilOrYPlx9SkDj2DAj/cbpM0MVDp7
	X7s3JZDk3qYHpnuQGkzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPF8E-0001LD-VO; Tue, 29 Oct 2019 00:13:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPF84-0001Kr-6A
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:12:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id c7so6974267pfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 17:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=A5yaNWv/seSl0C8AghK+VDA/9mfH1ZBe7Dx7Tv/glfs=;
 b=Iasc2Z6T19iMWg44i7udDoIG+WipYhIzrHUEMTfbXZzB6OmNtDS+/BoCJ6NRSYpx+r
 YuJ2L9Gk5ELKHCYyEgX23prPM8HURNK4bXD8seGpd3uXji+JDjhtWffOMixxw79aMIz6
 qrmy3Sq7gE3cpPV/LQO6slKe+axxu3zCIn9KBrNegcEfFe/zMgOa3GW4kgfn1r3SI29a
 T6DYoXsuyEG3rWRF0nSKf89Z09zd3PtuvANpCLkH2IvLTgpfzCq/XLekWTm8IwJlw/A3
 WhIgGB1cQ2DlACH8j4CANJ9MeEzwjnpZJWU+GeKxz1OhWN2WSeGOGFn/2RX+HKP8rCuJ
 Kdng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=A5yaNWv/seSl0C8AghK+VDA/9mfH1ZBe7Dx7Tv/glfs=;
 b=ufVEvv+1mp+vpg0YnUzDRXjKEqpLjjjR90xCa5CNbKW0UKrRwXC+gm7DYQK21n0Msl
 U8iBP3V4yn8R1oHWXf4r7nQCkxW3wRJA2EYaAAO9nydC8k5+TKex+jgtVp0m92dKTQ43
 w/LCYPWvBq85DK7Xv8fAR0u6eATOA8yprI0HaPmc488oayfzupTnELaALohd2idcIvv7
 OHF1zglzRJ4J6qRW07E73TUsIG/fBJphrugYHuUK/IHpkCLWEWpGepiNInD6sEO3asLC
 oYBbuSv506Gg9hznnvsLrq1lel8EPmp4j5PzONpYTLLVO9vEzjD1bPJdv0uTJr1tBpA/
 KDKQ==
X-Gm-Message-State: APjAAAWMFpe9YPBYy/vyEZ4ddr4LxvwNrADNAO5rwQmWy4jBx6beN9+a
 Lh19aKgqVRy773pKxleC13M=
X-Google-Smtp-Source: APXvYqxxDw4ncyQIZPOiJf5E3XENtqZsrbt+OFXIeyq46XTgCttk1fe12p28+YLNCsYlI7hzlyIQfQ==
X-Received: by 2002:a17:90a:8a0d:: with SMTP id
 w13mr2412350pjn.137.1572307974732; 
 Mon, 28 Oct 2019 17:12:54 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id c12sm7702901pfp.67.2019.10.28.17.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 17:12:53 -0700 (PDT)
Date: Mon, 28 Oct 2019 17:12:50 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: linux-sunxi@googlegroups.com, Hans de Goede <hdegoede@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] input: sun4i-lradc-keys: Add wakup support
Message-ID: <20191029001250.GB57214@dtor-ws>
References: <20191028221502.3503543-1-megous@megous.com>
 <20191028233828.GA57214@dtor-ws>
 <20191028235626.5afvszxtppsieywi@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028235626.5afvszxtppsieywi@core.my.home>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_171256_253174_B90ECD37 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTI6NTY6MjZBTSArMDEwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gSGVsbG8gRG1pdHJ5LAo+IAo+IE9uIE1vbiwgT2N0IDI4LCAyMDE5IGF0IDA0OjM4
OjI4UE0gLTA3MDAsIERtaXRyeSBUb3Jva2hvdiB3cm90ZToKPiA+IEhpIE9uZHJlaiwKPiA+IAo+
ID4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMTE6MTU6MDJQTSArMDEwMCwgT25kcmVqIEppcm1h
biB3cm90ZToKPiA+ID4gQWxsb3cgdGhlIGRyaXZlciB0byB3YWtldXAgdGhlIHN5c3RlbSBvbiBr
ZXkgcHJlc3MuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdv
dXNAbWVnb3VzLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2lucHV0L2tleWJvYXJkL3N1
bjRpLWxyYWRjLWtleXMuYyB8IDIyICsrKysrKysrKysrKysrKysrKy0tLS0KPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5wdXQva2V5Ym9hcmQvc3VuNGktbHJhZGMta2V5cy5jIGIv
ZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zdW40aS1scmFkYy1rZXlzLmMKPiA+ID4gaW5kZXggNGE3
OTZiZWQ0OGFjLi5iYmE2NzlkN2I1NGIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvaW5wdXQv
a2V5Ym9hcmQvc3VuNGktbHJhZGMta2V5cy5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvaW5wdXQva2V5
Ym9hcmQvc3VuNGktbHJhZGMta2V5cy5jCj4gPiA+IEBAIC0yMiw2ICsyMiw4IEBACj4gPiA+ICAj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZv
cm0uaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ID4gKyNp
bmNsdWRlIDxsaW51eC9wbV93YWtlaXJxLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvcG1fd2Fr
ZXVwLmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+Cj4gPiA+
ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ID4gPiAgCj4gPiA+IEBAIC0yMjYsOCArMjI4LDcg
QEAgc3RhdGljIGludCBzdW40aV9scmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gPiAgewo+ID4gPiAgCXN0cnVjdCBzdW40aV9scmFkY19kYXRhICpscmFkYzsKPiA+
ID4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gPiAtCWludCBpOwo+ID4g
PiAtCWludCBlcnJvcjsKPiA+ID4gKwlpbnQgaSwgZXJyb3IsIGlycTsKPiA+ID4gIAo+ID4gPiAg
CWxyYWRjID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKHN0cnVjdCBzdW40aV9scmFkY19kYXRh
KSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ICAJaWYgKCFscmFkYykKPiA+ID4gQEAgLTI3Miw4ICsyNzMs
MTMgQEAgc3RhdGljIGludCBzdW40aV9scmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4gPiAgCWlmIChJU19FUlIobHJhZGMtPmJhc2UpKQo+ID4gPiAgCQlyZXR1cm4g
UFRSX0VSUihscmFkYy0+YmFzZSk7Cj4gPiA+ICAKPiA+ID4gLQllcnJvciA9IGRldm1fcmVxdWVz
dF9pcnEoZGV2LCBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApLAo+ID4gPiAtCQkJCSBzdW40aV9s
cmFkY19pcnEsIDAsCj4gPiA+ICsJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiA+
ID4gKwlpZiAoaXJxIDwgMCkgewo+ID4gPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQg
dG8gZ2V0IElSUVxuIik7Cj4gPiA+ICsJCXJldHVybiBpcnE7Cj4gPiA+ICsJfQo+ID4gPiArCj4g
PiA+ICsJZXJyb3IgPSBkZXZtX3JlcXVlc3RfaXJxKGRldiwgaXJxLCBzdW40aV9scmFkY19pcnEs
IDAsCj4gPiA+ICAJCQkJICJzdW40aS1hMTAtbHJhZGMta2V5cyIsIGxyYWRjKTsKPiA+ID4gIAlp
ZiAoZXJyb3IpCj4gPiA+ICAJCXJldHVybiBlcnJvcjsKPiA+ID4gQEAgLTI4Miw2ICsyODgsMTQg
QEAgc3RhdGljIGludCBzdW40aV9scmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gPiAgCWlmIChlcnJvcikKPiA+ID4gIAkJcmV0dXJuIGVycm9yOwo+ID4gPiAgCj4g
PiA+ICsJZGV2aWNlX2luaXRfd2FrZXVwKGRldiwgdHJ1ZSk7Cj4gPiAKPiA+IEkgZG8gbm90IHRo
aW5rIHdlIHdhbnQgdG8gZG8gdGhpcyB1bmNvbmRpdGlvbmFsbHkuIENhbiB3ZSBtYXliZSBrZXkg
b2ZmCj4gPiAid2FrZXVwLXNvdXJjZSIgZGV2aWNlIHByb3BlcnR5Lgo+IAo+IFN1cmUgdGhpbmcu
Cj4gCj4gPiA+ICsKPiA+ID4gKwllcnJvciA9IGRldl9wbV9zZXRfd2FrZV9pcnEoZGV2LCBpcnEp
Owo+ID4gPiArCWlmIChlcnJvcikgewo+ID4gPiArCQlkZXZfZXJyKGRldiwgIkNvdWxkIG5vdCBz
ZXQgd2FrZSBJUlFcbiIpOwo+ID4gPiArCQlyZXR1cm4gZXJyb3I7Cj4gPiA+ICsJfQo+ID4gPiAr
Cj4gPiAKPiA+IEkgd29uZGVyIGlmIHdlIGNvdWxkIHRlYWNoIHBsYXRmb3JtIGRyaXZlciBjb3Jl
IHRvIGhhbmRsZSB0aGlzIGZvciB1cy4KPiAKPiBOb3Qgc3VyZSwgc29tZSBkcml2ZXJzIGRvIGVu
YWJsZS9kaXNhYmxlIHdha2VfaXJxIGJ5IGhhbmQgaW4gc3VzcGVuZC9yZXN1bWUKPiBjYWxsYmFj
a3MsIHNvIGl0IHdvdWxkIHByb2JhYmx5IG5lZWQgdG8gYmUgb3B0LWluIHNvbWVob3cuIEkgZ3Vl
c3MgY2FsbGluZyB0aGUKPiBmdW5jdGlvbiBsaWtlIHRoaXMgaXMgb25lIHdheSB0byBtYWtlIGl0
IG9wdC1pbi4KPiAKPiBUaGUgb3RoZXIgd2F5IG1heSBiZSBieSBwYXNzaW5nIGEgZmxhZyBzb21l
d2hlcmUsIGxpa2UgdG8KPiByZXF1ZXN0X3RocmVhZGVkX2lycS4gRGlkIHlvdSBoYXZlIHNvbWV0
aGluZyBtb3JlIGNvbmNyZXRlIGluIG1pbmQ/CgpJIHRoaW5rIGl0IGlzIHBlcmZlY3RseSBmaW5l
IHRvIGNvbnRpbnVlIHVzaW5nIGVuYWJsZV9pcnFfd2FrZSBhbmQKZGlzYWJsZV9pcnFfd2FrZSBm
cm9tIHRoZSBkcml2ZXIgd2hpbGUgbWFya2luZyBpcnEgYXMgYmVpbmcgd2FrZSBpcnEKZm9ybSB0
aGUgY29yZS4KClRoYW5rcy4KCi0tIApEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
