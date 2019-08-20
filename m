Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D2A9650F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vidUUKOZwffYuK5qB6VUO8iFVMbXM5001FD86LnqJQ4=; b=urrR72u62x8pPe
	1a3CDeWKPAhx2kfHpBpYPVZUs3DZn5YtPSvkWp96tXOBorfmLaQ2ipoc4234fgRBl+ndcyZk15sCo
	PDK6ly535/tLF4Y1vpf2t1uEuTEnP20ihlF1M2kVzqopvEtnABLj8Oi9NUQVDefhLGvojV2XbIHBe
	j0Y+GnCx7JHiYUECTugrbcL0bOGrbwejykWLjPeD3nBSktCeaCHeP0KogUFF+kt7SEGBAg+XF1IaI
	rXELZL7TXmaW4LVDmOd24dfPYi9TPJPvOfdEp/WTncSelQi7y31788UfXRj+8VYFpO/I0QMzF220g
	fgdho7SM41QaOR7j9HaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Mc-0000vU-Dp; Tue, 20 Aug 2019 15:48:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06MQ-0000v9-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:47:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so12892096wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 08:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CQXdl8MQKSfAVMGTcNyhlk2RDIadKLCT6/GSCMZ/+7Q=;
 b=g4+C/cCKU1zuU7pgUVuybaSTEWXVz9x5UXtyitwUC1J2PUjIxgdrVahwEygsEYbSlA
 qL1ICqq/Kgwk8D9Y0UMpv39w9bPxXdein8NRDb1LDk/W/fZUgWJTzincMarkF8WF7xbe
 RNjW38KDttZaFRHxuuq0/II+bqJAJYSPIkdLL4zfrrpA/F50EwSgeO+U6Ac6XPczncrx
 I4QUCca/GQA5+kfih92cjQ2m89wYXdfWuDnEu4Uv3Hj0E5p5QvlJax3iXag466U4WM5o
 gHsiY0O8poqoNMlduuVjPx6yyzsIYKjdjExkEYZYi5Qv664JhjBziQL7ZZqDRiMhVFiP
 uhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CQXdl8MQKSfAVMGTcNyhlk2RDIadKLCT6/GSCMZ/+7Q=;
 b=RhsDeVwqWFn2W8KzUU+pWOx3r80kT0sZBoC8EiDqg8sqq59wZDDuuHTsHInOeJolzR
 ql2jRyZxolxh1bwit9DoCw8NDHszJnxjh8+t0dMxlARDJZzd5tdsfpTHqvBPug55R1p1
 fzS/2izzi5+R43XQzBkFlj3hhukU9wH+WRaAs2ikGlliAabHUOqGParkMN3IPub7h78D
 tJsbTNK40Yjw4ehn+Sowec3FRwB5xAw0cGA/T6qHFxDQ57Wt7RavTyjrTxNWeSBcvQS7
 6EKsaB3QeiNXZmX5Zvwg3pP6ExyoELpjTpKRXe9ViDamTu35bL46Lsvr6jh32cnKmZmr
 y2ZQ==
X-Gm-Message-State: APjAAAUtyyYCHMeP7z57m2Y+CCs8NuRSUgjqXZjyc94mLHrVmuAHB4kW
 jCu3rOT9RcLUjoxykyBwWIw=
X-Google-Smtp-Source: APXvYqxL6PKxMepQ+OYGPx47LNzVl74MWc8etEYRwm2GcdIgYDs9tXF+lOR42vlVB9NtT7N45IqdbQ==
X-Received: by 2002:adf:c7cb:: with SMTP id y11mr28615611wrg.281.1566316069291; 
 Tue, 20 Aug 2019 08:47:49 -0700 (PDT)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id g14sm36284276wrb.38.2019.08.20.08.47.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 08:47:48 -0700 (PDT)
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
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <95a9b7ed-71a5-f58c-92dd-913893535f3a@gmail.com>
Date: Tue, 20 Aug 2019 17:47:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814110804.2ceo2upc3su7muup@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_084750_654042_138EE4CE 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

TGUgMTQvMDgvMjAxOSDDoCAxMzowOCwgVXdlIEtsZWluZS1Lw7ZuaWcgYSDDqWNyaXTCoDoKPiBP
biBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMjoyMDozM1BNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2
ZW4gd3JvdGU6Cj4+IEhpIFV3ZSwKPj4KPj4gT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMTE6MzYg
QU0gVXdlIEtsZWluZS1Lw7ZuaWcKPj4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4g
d3JvdGU6Cj4+PiBPbiBXZWQsIEF1ZyAxNCwgMjAxOSBhdCAxMToyOToyMkFNICswMjAwLCBHZWVy
dCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+Pj4gU2luY2UgY29tbWl0IDFkMjY3ZWE2NTM5ZjI2NjMg
KCJzZXJpYWw6IG1jdHJsLWdwaW86IHNpbXBsaWZ5IGluaXQKPj4+PiByb3V0aW5lIiksIG1jdHJs
X2dwaW9faW5pdCgpIHJldHVybnMgZmFpbHVyZSBpZiB0aGUgYXNzaWdubWVudCB0byBhbnkKPj4+
PiBtZW1iZXIgb2YgdGhlIGdwaW8gYXJyYXkgcmVzdWx0cyBpbiBhbiBlcnJvciBwb2ludGVyLgo+
Pj4+IFNpbmNlIGNvbW1pdCBjMzU5NTIyMTk0NTkzODE1ICgic2VyaWFsOiBtY3RybF9ncGlvOiBB
dm9pZCBwcm9iZSBmYWlsdXJlcwo+Pj4+IGluIGNhc2Ugb2YgbWlzc2luZyBncGlvbGliIiksIG1j
dHJsX2dwaW9fdG9fZ3Bpb2QoKSByZXR1cm5zIE5VTEwgaW4gdGhlCj4+Pj4gIUNPTkZJR19HUElP
TElCIGNhc2UuCj4+Pj4gSGVuY2UgdGhlcmUgaXMgbm8gbG9uZ2VyIGEgbmVlZCB0byBjaGVjayBm
b3IgbWN0cmxfZ3Bpb190b19ncGlvZCgpCj4+Pj4gcmV0dXJuaW5nIGFuIGVycm9yIHZhbHVlLiAg
QSBzaW1wbGUgTlVMTCBjaGVjayBpcyBzdWZmaWNpZW50Lgo+Pj4+Cj4+Pj4gVGhpcyBmb2xsb3dz
IHRoZSBzcGlyaXQgb2YgY29tbWl0IDQ0NWRmN2ZmM2ZkMWEwYTkgKCJzZXJpYWw6IG1jdHJsLWdw
aW86Cj4+Pj4gZHJvcCB1c2FnZXMgb2YgSVNfRVJSX09SX05VTEwiKSBpbiB0aGUgbWN0cmwtZ3Bp
byBjb3JlLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVy
dCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+PiAtLS0KPj4+PiAgZHJpdmVycy90dHkvc2VyaWFsL2F0
bWVsX3NlcmlhbC5jIHwgMTIgKysrKy0tLS0tLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIGIvZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3Nl
cmlhbC5jCj4+Pj4gaW5kZXggMTlhODVkNmZlM2QyMDU0MS4uZTk2MjBhODExNjZiN2RjMSAxMDA2
NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPj4+PiArKysg
Yi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPj4+PiBAQCAtMzAzLDMyICszMDMs
MjggQEAgc3RhdGljIHVuc2lnbmVkIGludCBhdG1lbF9nZXRfbGluZXNfc3RhdHVzKHN0cnVjdCB1
YXJ0X3BvcnQgKnBvcnQpCj4+Pj4KPj4+PiAgICAgICBtY3RybF9ncGlvX2dldChhdG1lbF9wb3J0
LT5ncGlvcywgJnJldCk7Cj4+Pj4KPj4+PiAtICAgICBpZiAoIUlTX0VSUl9PUl9OVUxMKG1jdHJs
X2dwaW9fdG9fZ3Bpb2QoYXRtZWxfcG9ydC0+Z3Bpb3MsCj4+Pj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFVBUlRfR1BJT19DVFMpKSkgewo+Pj4+ICsgICAg
IGlmIChtY3RybF9ncGlvX3RvX2dwaW9kKGF0bWVsX3BvcnQtPmdwaW9zLCBVQVJUX0dQSU9fQ1RT
KSkgewo+Pj4+ICAgICAgICAgICAgICAgaWYgKHJldCAmIFRJT0NNX0NUUykKPj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgc3RhdHVzICY9IH5BVE1FTF9VU19DVFM7Cj4+Pj4gICAgICAgICAgICAg
ICBlbHNlCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyB8PSBBVE1FTF9VU19DVFM7
Cj4+Pj4gICAgICAgfQo+Pj4KPj4+IFRoZSBjaGFuZ2UgaXMgZmluZSwgYnV0IGl0IHNlZW1zIHRo
ZSBhdG1lbCBkcml2ZXIgZG9lc24ndCB1c2UgbWN0cmxfZ3Bpbwo+Pj4gYXMgZXhwZWN0ZWQgKGF0
IGxlYXN0IGFzIGV4cGVjdGVkIGJ5IG1lKS4gSU1ITyBkcml2aW5nIHRoZSBoYXJkd2FyZQo+Pj4g
ZnVuY3Rpb24gb2YgdGhlIENUUyBwaW4gc2hvdWxkbid0IGJlIGNvbmRpdGlvbmFsIG9uIHRoZSBw
cmVzZW5jZSBvZiBhCj4+PiBjdHMtZ3Bpby4gSXMgdGhlcmUgYSByZWFzb24gbm90IHRvIGp1c3Qg
ZHJvcCB0aGUgaWYgY29tcGxldGVseT8KPj4KPj4gVGhlIGFib3ZlIGNvZGUgcmV0dXJucyB0aGUg
aGFyZHdhcmUgc3RhdHVzIGlmIENUUyBpcyBub3QgYSBHUElPLCBhbmQKPj4gcmV0dXJucyAob3Zl
cnJpZGVzIHdpdGgpIHRoZSBHUElPIHN0YXR1cyBpZiBDVFMgaXMgYSBHUElPLgo+PiBJc24ndCB0
aGF0IGNvcnJlY3QsIG9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmc/Cj4gCj4gSSB0b29rIGEgZGVl
cGVyIGxvb2sgaW50byB0aGlzIGRyaXZlciBub3cuIFRoZSB0YXNrIGZvcgo+IGF0bWVsX2dldF9s
aW5lc19zdGF0dXMoKSBpc24ndCB0byBpbXBsZW1lbnQgdGhlIGdldF9tY3RybCgpIGNhbGxiYWNr
Lgo+IAo+IEluc3RlYWQgdGhpcyBpcyBjYWxsZWQgaW4gdGhlIGlycWhhbmRsZXIgdG8gc2V0IEFU
TUVMX1VTX1JJIGluIGEKPiAicGVuZGluZyIgdmFsdWUgdGhhdCB0aGVuIGxhdGVyIGluIGF0bWVs
X2hhbmRsZV9zdGF0dXMoKSBpcyB0cmFuc2xhdGVkCj4gdG8gYSAicmluZyIgZXZlbnQgdGhhdCBp
cyBoYW5kbGVkIHRoZXJlLgo+IAo+IFNvIHRoZSByaWdodCBjbGVhbnVwIHdvdWxkIGJlIHRvIGxl
dCBhdG1lbF9nZXRfbGluZXNfc3RhdHVzKCkganVzdCBiZQo+IAo+IAlyZXR1cm4gYXRtZWxfdWFy
dF9yZWFkbChwb3J0LCBBVE1FTF9VU19DU1IpOwo+IAo+IC4gSWYgc29tZXRoaW5nIGhhcHBlbmQg
b24gdGhlIGxpbmVzIGltcGxlbWVudGVkIGFzIGdwaW8gdGhlIGRyaXZlcidzIGlycQo+IGZ1bmN0
aW9uIGlzbid0IGNhbGxlZCBhbnlob3cuCgpJJ2QgbGlrZSB0byBnaXZlIGl0IGEgZ29vZCB0ZXN0
IHRvIGJlIHN1cmUsIGFuZCBJJ2xsIGdldCBiYWNrIHRvIHlvdS4KClRoYW5rcywKUmljaGFyZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
