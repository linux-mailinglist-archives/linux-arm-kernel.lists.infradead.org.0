Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C6597EB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMOwnVxtALlkhELnErG6Qx6A6SxK2g0uZXNZFkY8VrM=; b=tOIVE5gs2iHt1n
	6SPRQjENwsJKgdsXlqAIhpkhwFzV++Vjg7afc1fXMYSiUjHkfI0HvXHY793Lc1EuAUdtCqY0bMJ6r
	AIdt9jB68zdCql4roOQL858ZfsnSw05IgVCAuxIiLvH66AT+PgiqDK0wAllwkhQFYxIyVjlGFw6e1
	Da6mwRqkTrFXqnC8BlQ169HxwVCw0i/gvBH9lb1TMw3uMnG5BF53wcBBpvTn2JP9oQrCqqhPUOtNE
	pDwzvPU/1YjotT4pPVLLMSRczfX2GZN7WN2MB/wSfXNpF9FnJi5YbG+FIpWtCw5hhewaejEx7JtrC
	J+gI3C0j7UF7npUqOPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SW8-0002Yd-46; Wed, 21 Aug 2019 15:27:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SVx-0002YB-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:27:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id 10so2565172wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 08:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HGjnR+JeXtSILg0y7nPF5A1P8FsCS4NKMJYCNq2YV2c=;
 b=FGl9svXFkYSJTzSupWCXQ6cziNXk0a+37iXMRCn2S1QlQh5y3VoaekP7pGUXr0ZzbC
 o60kVnGIT5CDqySFpgBzdKNHpuAkZxWuPfwYxxWpP1oUodYL1N7oxl2JW9gwOyJYw0W9
 /xg2EECrC3BaXbSBoVpFS7U3Umcc/sgYYR4hY62JuYztznjVzcvPEWeF62Xge+2TENIM
 jCjiDNhoQK5sC866tJuqhXQXJ0tk9BvNQVxpE5aQVr+4t55uTIXtD1b9FbwU4mrwQvDi
 08dU8KIIqnwW5ZIodBIilC8yWjBkgxRcHvX6XOSWQi9oxbwdwFzEuGAUfVRWz6kVfC/M
 LuiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HGjnR+JeXtSILg0y7nPF5A1P8FsCS4NKMJYCNq2YV2c=;
 b=LFsdZ4dm28P3tLwM+lEWRd1qFV8DOjJap49Yh0UBQs9jAZzQdgCIknH9Pab0eAkKrL
 VkVXsCeB9jhJFHpeZgVXa+H8FGOw5eSuHOE8VoYlU0T4XhVN05mdDnRHR4iUtNU2Vb7A
 8NsjhxXoDaZn8waopZrZ5ske3NjjUow49b0sA/j4VmstPESk/qFNiiKguri309na6x6S
 VgmPTUOapq6lH1sH2nKIwCe/xohHMbbFMCnKvDuRRjGRghs1lDhCBBAhQGq233uOUGPp
 aYB2uduHHfn3SObgEWn+bHCWtQEgnt/PazwCl1PSCQnBOITBcXJPAkZsc5J0G2Iaz95L
 1fzw==
X-Gm-Message-State: APjAAAWqRJinMf44iJE2LgXgNt6h8gezEWpxZEyUAqnT7/vGmMrSzNLk
 5twspe41Fu9bJhiOfWprhnc=
X-Google-Smtp-Source: APXvYqy46HO3/JbfAO6WK2wCD39hQ3tm+/7BkUzZeY4iqsSVWxbaaDpoIaiKbH5i+oeOYTWTv27Jbw==
X-Received: by 2002:a05:600c:551:: with SMTP id
 k17mr654942wmc.53.1566401227795; 
 Wed, 21 Aug 2019 08:27:07 -0700 (PDT)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id a19sm68421836wra.2.2019.08.21.08.27.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 08:27:06 -0700 (PDT)
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
 <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
 <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
 <20190814110804.2ceo2upc3su7muup@pengutronix.de>
 <95a9b7ed-71a5-f58c-92dd-913893535f3a@gmail.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <352d8f55-afe2-9f76-ad92-f15a9faa16a8@gmail.com>
Date: Wed, 21 Aug 2019 17:27:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <95a9b7ed-71a5-f58c-92dd-913893535f3a@gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_082709_703983_243E2BD0 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

TGUgMjAvMDgvMjAxOSDDoCAxNzo0NywgUmljaGFyZCBHZW5vdWQgYSDDqWNyaXTCoDoKPiBMZSAx
NC8wOC8yMDE5IMOgIDEzOjA4LCBVd2UgS2xlaW5lLUvDtm5pZyBhIMOpY3JpdMKgOgo+PiBPbiBX
ZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMjoyMDozM1BNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4g
d3JvdGU6Cj4+PiBIaSBVd2UsCj4+Pgo+Pj4gT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMTE6MzYg
QU0gVXdlIEtsZWluZS1Lw7ZuaWcKPj4+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
IHdyb3RlOgo+Pj4+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDExOjI5OjIyQU0gKzAyMDAsIEdl
ZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4+Pj4gU2luY2UgY29tbWl0IDFkMjY3ZWE2NTM5ZjI2
NjMgKCJzZXJpYWw6IG1jdHJsLWdwaW86IHNpbXBsaWZ5IGluaXQKPj4+Pj4gcm91dGluZSIpLCBt
Y3RybF9ncGlvX2luaXQoKSByZXR1cm5zIGZhaWx1cmUgaWYgdGhlIGFzc2lnbm1lbnQgdG8gYW55
Cj4+Pj4+IG1lbWJlciBvZiB0aGUgZ3BpbyBhcnJheSByZXN1bHRzIGluIGFuIGVycm9yIHBvaW50
ZXIuCj4+Pj4+IFNpbmNlIGNvbW1pdCBjMzU5NTIyMTk0NTkzODE1ICgic2VyaWFsOiBtY3RybF9n
cGlvOiBBdm9pZCBwcm9iZSBmYWlsdXJlcwo+Pj4+PiBpbiBjYXNlIG9mIG1pc3NpbmcgZ3Bpb2xp
YiIpLCBtY3RybF9ncGlvX3RvX2dwaW9kKCkgcmV0dXJucyBOVUxMIGluIHRoZQo+Pj4+PiAhQ09O
RklHX0dQSU9MSUIgY2FzZS4KPj4+Pj4gSGVuY2UgdGhlcmUgaXMgbm8gbG9uZ2VyIGEgbmVlZCB0
byBjaGVjayBmb3IgbWN0cmxfZ3Bpb190b19ncGlvZCgpCj4+Pj4+IHJldHVybmluZyBhbiBlcnJv
ciB2YWx1ZS4gIEEgc2ltcGxlIE5VTEwgY2hlY2sgaXMgc3VmZmljaWVudC4KPj4+Pj4KPj4+Pj4g
VGhpcyBmb2xsb3dzIHRoZSBzcGlyaXQgb2YgY29tbWl0IDQ0NWRmN2ZmM2ZkMWEwYTkgKCJzZXJp
YWw6IG1jdHJsLWdwaW86Cj4+Pj4+IGRyb3AgdXNhZ2VzIG9mIElTX0VSUl9PUl9OVUxMIikgaW4g
dGhlIG1jdHJsLWdwaW8gY29yZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0
dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+Pj4gLS0tCj4+Pj4+ICBkcml2
ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMgfCAxMiArKysrLS0tLS0tLS0KPj4+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMgYi9kcml2ZXJz
L3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPj4+Pj4gaW5kZXggMTlhODVkNmZlM2QyMDU0MS4u
ZTk2MjBhODExNjZiN2RjMSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2F0
bWVsX3NlcmlhbC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwu
Ywo+Pj4+PiBAQCAtMzAzLDMyICszMDMsMjggQEAgc3RhdGljIHVuc2lnbmVkIGludCBhdG1lbF9n
ZXRfbGluZXNfc3RhdHVzKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCj4+Pj4+Cj4+Pj4+ICAgICAg
IG1jdHJsX2dwaW9fZ2V0KGF0bWVsX3BvcnQtPmdwaW9zLCAmcmV0KTsKPj4+Pj4KPj4+Pj4gLSAg
ICAgaWYgKCFJU19FUlJfT1JfTlVMTChtY3RybF9ncGlvX3RvX2dwaW9kKGF0bWVsX3BvcnQtPmdw
aW9zLAo+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
VUFSVF9HUElPX0NUUykpKSB7Cj4+Pj4+ICsgICAgIGlmIChtY3RybF9ncGlvX3RvX2dwaW9kKGF0
bWVsX3BvcnQtPmdwaW9zLCBVQVJUX0dQSU9fQ1RTKSkgewo+Pj4+PiAgICAgICAgICAgICAgIGlm
IChyZXQgJiBUSU9DTV9DVFMpCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgJj0g
fkFUTUVMX1VTX0NUUzsKPj4+Pj4gICAgICAgICAgICAgICBlbHNlCj4+Pj4+ICAgICAgICAgICAg
ICAgICAgICAgICBzdGF0dXMgfD0gQVRNRUxfVVNfQ1RTOwo+Pj4+PiAgICAgICB9Cj4+Pj4KPj4+
PiBUaGUgY2hhbmdlIGlzIGZpbmUsIGJ1dCBpdCBzZWVtcyB0aGUgYXRtZWwgZHJpdmVyIGRvZXNu
J3QgdXNlIG1jdHJsX2dwaW8KPj4+PiBhcyBleHBlY3RlZCAoYXQgbGVhc3QgYXMgZXhwZWN0ZWQg
YnkgbWUpLiBJTUhPIGRyaXZpbmcgdGhlIGhhcmR3YXJlCj4+Pj4gZnVuY3Rpb24gb2YgdGhlIENU
UyBwaW4gc2hvdWxkbid0IGJlIGNvbmRpdGlvbmFsIG9uIHRoZSBwcmVzZW5jZSBvZiBhCj4+Pj4g
Y3RzLWdwaW8uIElzIHRoZXJlIGEgcmVhc29uIG5vdCB0byBqdXN0IGRyb3AgdGhlIGlmIGNvbXBs
ZXRlbHk/Cj4+Pgo+Pj4gVGhlIGFib3ZlIGNvZGUgcmV0dXJucyB0aGUgaGFyZHdhcmUgc3RhdHVz
IGlmIENUUyBpcyBub3QgYSBHUElPLCBhbmQKPj4+IHJldHVybnMgKG92ZXJyaWRlcyB3aXRoKSB0
aGUgR1BJTyBzdGF0dXMgaWYgQ1RTIGlzIGEgR1BJTy4KPj4+IElzbid0IHRoYXQgY29ycmVjdCwg
b3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KPj4KPj4gSSB0b29rIGEgZGVlcGVyIGxvb2sgaW50
byB0aGlzIGRyaXZlciBub3cuIFRoZSB0YXNrIGZvcgo+PiBhdG1lbF9nZXRfbGluZXNfc3RhdHVz
KCkgaXNuJ3QgdG8gaW1wbGVtZW50IHRoZSBnZXRfbWN0cmwoKSBjYWxsYmFjay4KPj4KPj4gSW5z
dGVhZCB0aGlzIGlzIGNhbGxlZCBpbiB0aGUgaXJxaGFuZGxlciB0byBzZXQgQVRNRUxfVVNfUkkg
aW4gYQo+PiAicGVuZGluZyIgdmFsdWUgdGhhdCB0aGVuIGxhdGVyIGluIGF0bWVsX2hhbmRsZV9z
dGF0dXMoKSBpcyB0cmFuc2xhdGVkCj4+IHRvIGEgInJpbmciIGV2ZW50IHRoYXQgaXMgaGFuZGxl
ZCB0aGVyZS4KPj4KPj4gU28gdGhlIHJpZ2h0IGNsZWFudXAgd291bGQgYmUgdG8gbGV0IGF0bWVs
X2dldF9saW5lc19zdGF0dXMoKSBqdXN0IGJlCj4+Cj4+IAlyZXR1cm4gYXRtZWxfdWFydF9yZWFk
bChwb3J0LCBBVE1FTF9VU19DU1IpOwo+Pgo+PiAuIElmIHNvbWV0aGluZyBoYXBwZW5kIG9uIHRo
ZSBsaW5lcyBpbXBsZW1lbnRlZCBhcyBncGlvIHRoZSBkcml2ZXIncyBpcnEKPj4gZnVuY3Rpb24g
aXNuJ3QgY2FsbGVkIGFueWhvdy4KPiAKPiBJJ2QgbGlrZSB0byBnaXZlIGl0IGEgZ29vZCB0ZXN0
IHRvIGJlIHN1cmUsIGFuZCBJJ2xsIGdldCBiYWNrIHRvIHlvdS4KClNvLCBVd2UgaXMgcmlnaHQu
ClNpbmNlIGNvbW1pdCBjZTU5ZTQ4ZmRiYWQgKCJzZXJpYWw6IG1jdHJsX2dwaW86IGltcGxlbWVu
dCBpbnRlcnJ1cHQgaGFuZGxpbmciKSwKYXRtZWxfZ2V0X2xpbmVzX3N0YXR1cygpIGNhbiBiZSBj
b21wbGV0bHkga2lsbGVkIGFuZCByZXBsYWNlZCBieSA6CmF0bWVsX3VhcnRfcmVhZGwocG9ydCwg
QVRNRUxfVVNfQ1NSKTsKCkdlZXJ0LCBkbyB5b3Ugd2FudCB0byBzZW5kIGEgcGF0Y2ggZm9yIHRo
YXQsIG9yIHNob3VsZCBJIGRvIGl0ID8KCgpUaGFua3MsClJpY2hhcmQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
