Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A5B963DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcKpsixkHRigvtVfqAKbPd5ypmYldTFQxePa17RLA/A=; b=EvAClqQ38GO95s
	FUUzSpMFpnhObhiX9gHbMGgMbfXieCaWwIadZ1NLRJmweFrfRqUHS+bmtTarbVg/udYcbwYPI7MZN
	CJ70hSZK/WPxt72hkfL32q4C8xm1L3kJ7zxV5RJ6HjcJt8bM/kAkuCKO/47cFWyJYwfCNjKGuM1cQ
	qnru3jxnlDZGDS8bYaTDU5NdkVYtESSWXzwr8A97jW+TvaDPcezqdSxJH/dxlkG+2LLp1/GK3fGfh
	Swv1AWe8rkdTUL0GdO9g1JJ+c6sZ2CkUxZytdc3r2gbH5cUuX5yWtsX3PxWu0VFVKcx+dYh6qJ62O
	A+2tV0kRBCcM2/UiNCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05o6-0005CL-7H; Tue, 20 Aug 2019 15:12:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05nu-0005C0-UD
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:12:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id q12so12775118wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 08:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dKdQuwZho07axOitnBUWXA6Q8k137FEMkmPLh6RmOhw=;
 b=G1ymaBsxmt35xAAfqF7fRnZ/ONwJaQUIH39QLqJp40qLd/v9GATTe1V1qZ+acBGrF5
 uCQAjFQN9UwH3q0sMK/9tkBPWemv0hG6F5oj5GL7+zIObz+r3xx6pcx8IfJDGKr3YMZ2
 665a4w3gwpwvChxHQqcj3W1Mgz4bZ7QIS/XQNAUvzAbp99Ba4zHEU8vnnPv+RP4eZIXG
 clNmHfP52jOsqPB4M1qtQC379AlMFbOlbhh9esTnMnBJt5Nswr3otIPRBJE74eMmBRYx
 DqL7e2WfUv71WGeIUiLis22x5zJDsd/4Rn+T9Xg4LTJvLHrsk9xo1qj1MBayZnn8fbaJ
 7Acg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dKdQuwZho07axOitnBUWXA6Q8k137FEMkmPLh6RmOhw=;
 b=Zc6ZWxpO6fONmVGegFPwZkMTe9yH2Y1Znh9zvIOCgdyGaRDEjDS2s1hLVEndNYucEt
 OOQGnNZMfTqUqrQQ/jaCjHU1FRyaABzqVu927XsUgkZg9xAbAf3Nv/LrgbXgcyqDUaS5
 0fTVghFJkgAWZRWEYIiush0qAnEKoK2UBleZ3IPMyagq9x5Vg8hpEj7KcbGF6tRa/UTg
 RWNG3SsKPEZvaa38TeoE4nbs8hevTgX39bJF1KWaZrMv4uSbUtETz8QEvebtEn6G67qz
 DgbfITUXq6hUMo0H4waPuGC7+FMWFSx7sz5Nr5m2MT7f8/PSGw5OuZR3XrgJvcwVBVXt
 D0ug==
X-Gm-Message-State: APjAAAVJugXVXigb5gk+ftJbAoRhvScDmBXGaGevPKlyokRd1kYCGo7U
 hyboq5UmsFdR1WlWydr1KWA=
X-Google-Smtp-Source: APXvYqxO0jy9AQ8t47aDAVTk1kfQTXX8cglGGpZTPFubBItCMScY6EqdbmFATv4grXtnt25iNMncLA==
X-Received: by 2002:a05:6000:1085:: with SMTP id
 y5mr34675544wrw.285.1566313928659; 
 Tue, 20 Aug 2019 08:12:08 -0700 (PDT)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id u129sm212061wmb.12.2019.08.20.08.12.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:12:07 -0700 (PDT)
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
 <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
 <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <fc23b475-db5f-a311-5c7e-9fac15da3684@gmail.com>
Date: Tue, 20 Aug 2019 17:11:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_081210_977031_B58C06F9 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCkxlIDE0LzA4LzIwMTkgw6AgMTI6MjAsIEdlZXJ0IFV5dHRlcmhvZXZlbiBhIMOpY3JpdMKg
Ogo+IEhpIFV3ZSwKPiAKPiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMTozNiBBTSBVd2UgS2xl
aW5lLUvDtm5pZwo+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+PiBP
biBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMToyOToyMkFNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2
ZW4gd3JvdGU6Cj4+PiBTaW5jZSBjb21taXQgMWQyNjdlYTY1MzlmMjY2MyAoInNlcmlhbDogbWN0
cmwtZ3Bpbzogc2ltcGxpZnkgaW5pdAo+Pj4gcm91dGluZSIpLCBtY3RybF9ncGlvX2luaXQoKSBy
ZXR1cm5zIGZhaWx1cmUgaWYgdGhlIGFzc2lnbm1lbnQgdG8gYW55Cj4+PiBtZW1iZXIgb2YgdGhl
IGdwaW8gYXJyYXkgcmVzdWx0cyBpbiBhbiBlcnJvciBwb2ludGVyLgo+Pj4gU2luY2UgY29tbWl0
IGMzNTk1MjIxOTQ1OTM4MTUgKCJzZXJpYWw6IG1jdHJsX2dwaW86IEF2b2lkIHByb2JlIGZhaWx1
cmVzCj4+PiBpbiBjYXNlIG9mIG1pc3NpbmcgZ3Bpb2xpYiIpLCBtY3RybF9ncGlvX3RvX2dwaW9k
KCkgcmV0dXJucyBOVUxMIGluIHRoZQo+Pj4gIUNPTkZJR19HUElPTElCIGNhc2UuCj4+PiBIZW5j
ZSB0aGVyZSBpcyBubyBsb25nZXIgYSBuZWVkIHRvIGNoZWNrIGZvciBtY3RybF9ncGlvX3RvX2dw
aW9kKCkKPj4+IHJldHVybmluZyBhbiBlcnJvciB2YWx1ZS4gIEEgc2ltcGxlIE5VTEwgY2hlY2sg
aXMgc3VmZmljaWVudC4KPj4+Cj4+PiBUaGlzIGZvbGxvd3MgdGhlIHNwaXJpdCBvZiBjb21taXQg
NDQ1ZGY3ZmYzZmQxYTBhOSAoInNlcmlhbDogbWN0cmwtZ3BpbzoKPj4+IGRyb3AgdXNhZ2VzIG9m
IElTX0VSUl9PUl9OVUxMIikgaW4gdGhlIG1jdHJsLWdwaW8gY29yZS4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4g
LS0tCj4+PiAgZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIHwgMTIgKysrKy0tLS0t
LS0tCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIGIv
ZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jCj4+PiBpbmRleCAxOWE4NWQ2ZmUzZDIw
NTQxLi5lOTYyMGE4MTE2NmI3ZGMxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFs
L2F0bWVsX3NlcmlhbC5jCj4+PiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFs
LmMKPj4+IEBAIC0zMDMsMzIgKzMwMywyOCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGF0bWVsX2dl
dF9saW5lc19zdGF0dXMoc3RydWN0IHVhcnRfcG9ydCAqcG9ydCkKPj4+Cj4+PiAgICAgICBtY3Ry
bF9ncGlvX2dldChhdG1lbF9wb3J0LT5ncGlvcywgJnJldCk7Cj4+Pgo+Pj4gLSAgICAgaWYgKCFJ
U19FUlJfT1JfTlVMTChtY3RybF9ncGlvX3RvX2dwaW9kKGF0bWVsX3BvcnQtPmdwaW9zLAo+Pj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFVBUlRfR1BJT19D
VFMpKSkgewo+Pj4gKyAgICAgaWYgKG1jdHJsX2dwaW9fdG9fZ3Bpb2QoYXRtZWxfcG9ydC0+Z3Bp
b3MsIFVBUlRfR1BJT19DVFMpKSB7Cj4+PiAgICAgICAgICAgICAgIGlmIChyZXQgJiBUSU9DTV9D
VFMpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzICY9IH5BVE1FTF9VU19DVFM7Cj4+
PiAgICAgICAgICAgICAgIGVsc2UKPj4+ICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgfD0g
QVRNRUxfVVNfQ1RTOwo+Pj4gICAgICAgfQo+Pgo+PiBUaGUgY2hhbmdlIGlzIGZpbmUsIGJ1dCBp
dCBzZWVtcyB0aGUgYXRtZWwgZHJpdmVyIGRvZXNuJ3QgdXNlIG1jdHJsX2dwaW8KPj4gYXMgZXhw
ZWN0ZWQgKGF0IGxlYXN0IGFzIGV4cGVjdGVkIGJ5IG1lKS4gSU1ITyBkcml2aW5nIHRoZSBoYXJk
d2FyZQo+PiBmdW5jdGlvbiBvZiB0aGUgQ1RTIHBpbiBzaG91bGRuJ3QgYmUgY29uZGl0aW9uYWwg
b24gdGhlIHByZXNlbmNlIG9mIGEKPj4gY3RzLWdwaW8uIElzIHRoZXJlIGEgcmVhc29uIG5vdCB0
byBqdXN0IGRyb3AgdGhlIGlmIGNvbXBsZXRlbHk/Cj4gCj4gVGhlIGFib3ZlIGNvZGUgcmV0dXJu
cyB0aGUgaGFyZHdhcmUgc3RhdHVzIGlmIENUUyBpcyBub3QgYSBHUElPLCBhbmQKPiByZXR1cm5z
IChvdmVycmlkZXMgd2l0aCkgdGhlIEdQSU8gc3RhdHVzIGlmIENUUyBpcyBhIEdQSU8uCj4gSXNu
J3QgdGhhdCBjb3JyZWN0LCBvciBhbSBJIG1pc3Npbmcgc29tZXRoaW5nPwpZZXMsIHRoYXQncyBj
b3JyZWN0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
