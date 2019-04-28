Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A552AB5F9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5gwukG3XWGqpSBI10BzFfUGfN1z86+HZJpddM/7kA0=; b=Si82tFNDG83Byc
	t0PDbeIX74EAs181M/rAQ8WCOYfg6zBA5PNdIPOnoVC5qXgZrjFv4V8e+h4tm4WzBO1D2/9gOfeK7
	NoVKGeWgQi833/Z+AWD/QNaelIQxpJafOAM5pCSFDiQUpTZEgy9Ay29OddgS0QPi6I5M/cOXTtjsn
	xY7iwrf++beN99/+pSxEnkrHpcJJFHlIOMeDs52ymHTrxSKWxsdCkMJn2gzDvP+IKOP063XpUhZ3u
	NfVlpdpIHSaXcXqHTB61mt144m7h3BqviRspzPOfW+b2nwP3f/S6v/tfNREi+Ib5Sy5jnCqy/o27D
	Y+oUw0fS3xdPzAiCeAAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKjDU-00005i-9P; Sun, 28 Apr 2019 12:47:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKjDM-00005K-Gl
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 12:47:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id h11so11429765wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 05:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HeqZfMG85Hh9y7RrB9f0z3kHk2qos78GYvMoJ7R8cWc=;
 b=VIDd54xqsBjyWypghXVEKrXZmwbUthgDhIYp4h4EKt+H2hiO84916d5PZjDtYd3Kd1
 CaJvrtquCfh/T2kxNygu5iUZUx788BEmM7mYi+gN2E3B9cjDKvgYFb1hAGRpFGX7Afzp
 daWy9XFgKszgHtzO3ACjjUyA7Vo5HzfKOvx4ijsRNuOCX03PyjYMpOZ8q5NoQxw2h7gw
 Rj4N0MNmCGuGlKjqpvUyxKBD0ey4Gb5mHIZJNUJiLq9dNkeFylNtNKncPORFIqYCTJV4
 3Sgr3dgDCUkzr/UkxmEjVuQeWDsuQbOMaH5dZ8tUw5sdgxLcyEOs/MnjrtbbbOnozXUM
 h8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HeqZfMG85Hh9y7RrB9f0z3kHk2qos78GYvMoJ7R8cWc=;
 b=BzooTPTKBvJFxhX0oUFxWJbuOTOHgTxE6pkwY+qXcOCaPM7k8iVnFpv8MPG5NKObat
 hp67m1/dOaIqbcgXX1ePd5LT9HY/5tv7WWukN7p9chkFk0mUwbILIwb6Qz2MyS6gp9zo
 PayRng7xE7HuJ6HSQbC1eF75FUNacXTHrQoPExAujrZL1FNZQQygi9mWa41TaVr7SK9U
 S6EkEHhr6dqvl0Guu54/HnOv6Kt45mV7q0VvLYfatAv7NB88HE5+TqihLtOYLLjdoWBw
 bYV12KbPK0UTE5IM2cOdIuo5acgSYbwpO96fbJAjsW7IBGl4OvIQ5+SfDw2uM2w/zrQW
 8yVg==
X-Gm-Message-State: APjAAAWadfRbyokwypusiPb9UAJ0ZQU78MdlEsSR5ssEgaeuvio740CY
 6x39piPSaN6tu1eyz3mQnoqiyA==
X-Google-Smtp-Source: APXvYqwkZgNRFbMqz/Vpf+gKG6RMI2QqcdMUVem2/kPB4Xo68FgesFEo4ptEr/mPbC86hsEJdvNNrQ==
X-Received: by 2002:a7b:c00e:: with SMTP id c14mr13864555wmb.110.1556455646425; 
 Sun, 28 Apr 2019 05:47:26 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id o5sm28238015wmc.16.2019.04.28.05.47.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 05:47:25 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: at91sam9261ek: remove unused chosen nodes
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
References: <20190408151155.20279-1-alexandre.belloni@bootlin.com>
 <2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org>
Message-ID: <c71a65c4-51bd-2dec-07bb-31daa3715325@linaro.org>
Date: Sun, 28 Apr 2019 14:47:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_054728_590160_5319330B 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cGluZyA/CgoKT24gMDgvMDQvMjAxOSAxODozMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gCj4g
SGkgUm9iLAo+IAo+IHRoZSBmb2xsb3dpbmcgcGF0Y2ggaGFzIGJlZW4gcHVzaGVkIGluIDIwMTYg
YnkgY29tbWl0IDUxZjBhZWIyZDIxZjEuCj4gCj4gQmVpbmcgYWJsZSB0byBzcGVjaWZ5IHdoaWNo
IHRpbWVyIHNob3VsZCBhY3QgYXMgYSBjbG9ja3NvdXJjZSBvciBhCj4gY2xvY2tldmVudCBpcyBv
ZnRlbiByZXF1ZXN0ZWQuIERvaW5nIHRoaXMgZnJvbSB0aGUgZHJpdmVyIGl0c2VsZiBmb3JjZXMK
PiB0byBkbyBzb21lIGFzc3VtcHRpb24gaW4gdGhlIHRpbWVyIGRlZmluaXRpb24gb3JkZXJpbmcg
aW4gdGhlIERULgo+IAo+IFRoYXQgaW1wYWN0cyBiYWRseSB0aGUgcmVzdWx0aW5nIGNvZGUgYW5k
IGl0cyBzZWxmLWVuY2Fwc3VsYXRpb24uCj4gCj4gIC0gVGhlcmUgaXMgb25lIG5vZGUgYW5kIHRo
ZSBkcml2ZXIgaGFyZGNvZGVzIHRoZSB2YWx1ZSBhbmQgaW5pdGlhbGl6ZXMKPiBhIGNsb2Nrc291
cmNlIGFuZCBhIGNsb2NrZXZlbnQKPiAKPiAgLSBUaGVyZSBhcmUgc2V2ZXJhbCBub2Rlcywgb25l
IGZvciB0aGUgY2xvY2tzb3VyY2UgYW5kIG9uZSBmb3IgdGhlCj4gY2xvY2tldmVudCwgYW5kIHRo
ZSBkcml2ZXIgYXNzdW1lcyB0aGUgb3JkZXIgb2YgdGhlIG5vZGUgaW4gdGhlIERUCj4gCj4gIC0g
VGhlcmUgYXJlIHNldmVyYWwgbm9kZXMgYW5kIG11bHRpcGxlIGNoYW5uZWxzIGFuZCB0aG9zZSBh
cmUgdXNlZCBmb3IKPiBQV00uIEl0IGlzIGltcG9zc2libGUgdG8ga25vdyB3aGljaCBvbmUgYXJl
IHVzZWQgZm9yIFBXTSBvciBmb3IgdGhlCj4gY2xvY2tzb3VyY2Ugb3IgZm9yIHRoZSBjbG9ja2V2
ZW50Cj4gCj4gRm9yIGV4YW1wbGUgd2l0aCBTVE0zMiwgd2Ugc2hvdWxkIGJlIGFibGUgdG8gc3Bl
Y2lmeSB3aGljaCB0aW1lciB0byB1c2UuCj4gVGhlcmUgYXJlIDE2IHRpbWVycyBJSVJDLCB0aGV5
IGNhbiBiZSB1c2VkIGZvciBQV00sIGNsb2Nrc291cmNlIG9yCj4gY2xvY2tldmVudC4gSGFsZiBp
cyAxNiBiaXRzLCBvdGhlciBoYWxmIGlzIDMyIGJpdHMsIGRlcGVuZGluZyBvbiB0aGUKPiBkZXN0
aW5hdGlvbiBvZiB0aGUgcGxhdGZvcm0gd2UgY2FuIGJlIGludGVyZXN0ZWQgdG8gdXNlIG9uZSBv
ciBhbm90aGVyCj4gd2l0aG91dCByZWNvbXBpbGluZyBhIGtlcm5lbCBidXQganVzdCB0aGUgRFQu
Cj4gCj4gV2UgbmVlZCBhIHdheSB0byBzcGVjaWZ5IHdoaWNoIHRpbWVyIHRvIGJlIHVzZWQgZnJv
bSB0aGUgRFQuIFRoZSBwYXRjaAo+IGJlbG93IHNvdW5kZWQgbGlrZSBhIGdvb2Qgd2F5IHRvIGNo
YXJhY3Rlcml6ZSB0aGUgbm9kZXMgYXMgdGhleSBiZWxvbmcKPiB0byB0aGUgJ2Nob3Nlbicgbm9k
ZSBhbmQgd2Ugc3RheSB0byBhICdsaW51eCcgdGhpbmcuCj4gCj4gV2hhdCBkbyB5b3UgdGhpbmsg
Pwo+IAo+IAo+IE9uIDA4LzA0LzIwMTkgMTc6MTEsIEFsZXhhbmRyZSBCZWxsb25pIHdyb3RlOgo+
PiBUaGUgY2hvc2VuIGNsb2Nrc291cmNlIGFuZCBjbG9ja2V2ZW50IGJpbmRpbmdzIGhhdmUgbmV2
ZXIgYmVlbiBhY2NlcHRlZCBhbmQKPj4gcGFyc2VkLCByZW1vdmUgdGhlbS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29t
Pgo+PiAtLS0KPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYxZWsuZHRzIHwgOCAtLS0t
LS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOTI2MWVrLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2F0OTFzYW05MjYxZWsuZHRzCj4+IGluZGV4IGE1N2YyZDQzNWRjYS4uMTFlZDU1ZDhhODdkIDEw
MDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOTI2MWVrLmR0cwo+PiArKysg
Yi9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOTI2MWVrLmR0cwo+PiBAQCAtMTUsMTQgKzE1LDYg
QEAKPj4gIAljaG9zZW4gewo+PiAgCQlib290YXJncyA9ICJyb290ZnN0eXBlPXViaWZzIHViaS5t
dGQ9NSByb290PXViaTA6cm9vdGZzIHJ3IjsKPj4gIAkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMDox
MTUyMDBuOCI7Cj4+IC0KPj4gLQkJY2xvY2tzb3VyY2Ugewo+PiAtCQkJdGltZXIgPSA8JnRpbWVy
MD47Cj4+IC0JCX07Cj4+IC0KPj4gLQkJY2xvY2tldmVudCB7Cj4+IC0JCQl0aW1lciA9IDwmdGlt
ZXIxPjsKPj4gLQkJfTsKPj4gIAl9Owo+PiAgCj4+ICAJbWVtb3J5IHsKPj4KPiAKPiAKCgotLSAK
IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
