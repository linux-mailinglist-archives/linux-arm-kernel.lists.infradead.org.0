Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCB2134434
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oe8SUyPT0KVtElkRktDmamVvARyDvOY+3sN8+pjTkKI=; b=Bq8EZpFS4W2OGx
	3lJWOu6MO49bvWhSF/0H03YhrQ2UK/hSvJK0mwR+vyGx8Y3rfw5KBPMgZrSFrrUz9hQOb4awUupAc
	jEiiaTeo8dk0y5iiB7HWF9pHrELOfEYW/sgzvG+Zr7hCJIiYVnxIlPh2CarG9LYQ3MB+U8Kd8WjWA
	YP1LyZFmrttgTssvcN1XfbDeH7BsKYgCmrJx1Mv+F8NfSgpGdUyBDo0sKxHOJYwSd8wya2u9wp2c7
	tHco1nVx7/ggaEm49wDM9zi6+yrPixW03p5pVn/Mt9ycMIwnLU4HFdeKgc+TrgfMcm0GaSrEJG610
	EZRMFRgU/gBPp3gUNh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBeL-0008U5-7w; Wed, 08 Jan 2020 13:45:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBe6-0008D4-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:45:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so3400407wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 05:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D3julrEGzeRkkk1/rWpHeUHdil17WhFSKQb41qCTkXU=;
 b=CmuPlTPtnDvtw5DZ0Qf+AY+3PDSptqSxspoms4tKXIS/QIm9A/auA6Wxgw6pNAFKoj
 td3GiUU5IqaNXopILg9AOXGMdZJBjW+mxw5FH/7rBL7o1vJUI3CaYhwZc54Nabakzoxm
 PuwKFLdRoJbfMZgcP1nbKTTBGDVNKS+EpEvsjC++htmhdwlVOzgv14/W8HD1c+avG5zs
 Bz+97NWA68uVKIO42UHin7omXsXG58hs9b5R3d0hEKuOtHul2VZfK9KXMAC5+y1VVWU7
 DYLtTaL0yRzdEA6h133vRPEktQdes5CG2TgYgryZ4DnLXJ9Zdd9v00DQDOT4RZ6fNy4x
 ox6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D3julrEGzeRkkk1/rWpHeUHdil17WhFSKQb41qCTkXU=;
 b=MUkMrLfC7ck2/VttgXRWsAHJ67IV3gPv2gbYD4YxL3i+n6LoZ//4/pz+qaGtDkpmzH
 XrdfLo0SVHR5KpvYsdMWNUvHvo2LcX07YUBl2l2RZApjkhjcU0JGxluDGICsxVxlsw94
 OTyB/X9deilEB+UWcbMmh4scRbR7sAT4+hbm8OjIyiWXMC/hcTn/n1c236gbTVA7Jfvt
 XIRSIDHpyOgFZiYQlJuIwQPq5qL1luGFUVhDF85NzBAbXjsHFjwxlXT7aZgL4TEGijhx
 FDnPy0yfFgjXUt/F5ep9ePHGj2ystymZtLzXxP2NR4eDV6ZXeEigL1V1fLGcrxN2kyvJ
 ORrw==
X-Gm-Message-State: APjAAAVCJIxPHtIgMdG33VIKwsMVm7cgwPBA27HHPxtYFPz3x5Etd1fR
 rInTTGFik8kfk0WK2aj1T04=
X-Google-Smtp-Source: APXvYqydIJGVwu3LvXKaQvn9RIqZzW5YK/ku5ofvBCC4NqIuj7GDOYB1gSeRTb1/toIU8zIihyDBJg==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr4726450wrs.365.1578491111308; 
 Wed, 08 Jan 2020 05:45:11 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id f127sm3821358wma.4.2020.01.08.05.45.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 05:45:10 -0800 (PST)
Subject: Re: [PATCH] tty/serial: atmel: RS485 & ISO7816: wait for TXRDY before
 sending data
To: Codrin.Ciubotariu@microchip.com, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200107111656.26308-1-codrin.ciubotariu@microchip.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
Date: Wed, 8 Jan 2020 14:45:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200107111656.26308-1-codrin.ciubotariu@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_054514_399015_2DE4A400 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregkh@linuxfoundation.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, jslaby@suse.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDcvMDEvMjAyMCDDoCAxMjoxNywgQ29kcmluLkNpdWJvdGFyaXVAbWljcm9jaGlwLmNvbSBh
IMOpY3JpdMKgOgo+IEF0IHRoaXMgbW9tZW50LCBUWEVNUFRZIGlzIGNoZWNrZWQgYmVmb3JlIHNl
bmRpbmcgZGF0YSBvbiBSUzQ4NSBhbmQgSVNPNzgxNgo+IG1vZGVzLiBIb3dldmVyLCBUWEVNUFRZ
IGlzIHJpc2VuIHdoZW4gRklGTyAoaWYgdXNlZCkgb3IgdGhlIFRyYW5zbWl0IFNoaWZ0Cj4gUmVn
aXN0ZXIgYXJlIGVtcHR5LCBldmVuIHRob3VnaCBUWFJEWSBtaWdodCBiZSB1cCBhbmQgY29udHJv
bGxlciBpcyBhYmxlIHRvCj4gcmVjZWl2ZSBkYXRhLiBTaW5jZSB0aGUgY29udHJvbGxlciBzZW5k
cyBkYXRhIG9ubHkgd2hlbiBUWEVNUFRZIGlzIHJlYWR5LAo+IG9uIFJTNDg1LCB3aGVuIERNQSBp
cyBub3QgdXNlZCwgdGhlIFJUUyBwaW4gaXMgZHJpdmVuIGxvdyBhZnRlciBlYWNoIGJ5dGUuCj4g
V2l0aCB0aGlzIHBhdGNoLCB0aGUgY2hhcmFjdGVycyB3aWxsIGJlIHRyYW5zbWl0dGVkIHdoZW4g
VFhSRFkgaXMgdXAgYW5kCj4gc28sIFJUUyBwaW4gd2lsbCByZW1haW4gaGlnaCBiZXR3ZWVuIGJ5
dGVzLgo+IFRoZSBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudCBvbiBSUzQ4NSBpcyBhYm91dCA4JSB3
aXRoIGEgYmF1ZHJhdGUgb2YgMzAwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENvZHJpbiBDaXVib3Rh
cml1IDxjb2RyaW4uY2l1Ym90YXJpdUBtaWNyb2NoaXAuY29tPgpzZWVtcyBvayB0byBtZQpBY2tl
ZC1ieTogUmljaGFyZCBHZW5vdWQgPHJpY2hhcmQuZ2Vub3VkQGdtYWlsLmNvbT4KCk5COiBNUyBl
eGNoYW5nZSBoYXMgYWRkZWQgc29tZSA9M0QgYW5kID0yMCBoZXJlIGFuZCB0aGVyZSwgYnV0IGdp
dCBhbQpkb2Vzbid0IHNlZW1zIHRvIGJlIGJvdGhlcmVkIGJ5IHRoZW0uCj4gLS0tCj4gIGRyaXZl
cnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYyB8IDI2ICsrKysrKysrKysrKysrKysrKystLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMgYi9kcml2
ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPiBpbmRleCBhOGRjOGFmODNmMzkuLjE5Yzhm
YjlmYWEzNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMK
PiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvYXRtZWxfc2VyaWFsLmMKPiBAQCAtMzEzLDcgKzMx
MywxMSBAQCBzdGF0aWMgaW50IGF0bWVsX2NvbmZpZ19yczQ4NShzdHJ1Y3QgdWFydF9wb3J0ICpw
b3J0LAo+ICAKPiAgCWlmIChyczQ4NWNvbmYtPmZsYWdzICYgU0VSX1JTNDg1X0VOQUJMRUQpIHsK
PiAgCQlkZXZfZGJnKHBvcnQtPmRldiwgIlNldHRpbmcgVUFSVCB0byBSUzQ4NVxuIik7Cj4gLQkJ
YXRtZWxfcG9ydC0+dHhfZG9uZV9tYXNrID0gQVRNRUxfVVNfVFhFTVBUWTsKPiArCQlpZiAocG9y
dC0+cnM0ODUuZmxhZ3MgJiBTRVJfUlM0ODVfUlhfRFVSSU5HX1RYKQo+ICsJCQlhdG1lbF9wb3J0
LT50eF9kb25lX21hc2sgPSBBVE1FTF9VU19UWFJEWTsKPiArCQllbHNlCj4gKwkJCWF0bWVsX3Bv
cnQtPnR4X2RvbmVfbWFzayA9IEFUTUVMX1VTX1RYRU1QVFk7Cj4gKwo+ICAJCWF0bWVsX3VhcnRf
d3JpdGVsKHBvcnQsIEFUTUVMX1VTX1RUR1IsCj4gIAkJCQkgIHJzNDg1Y29uZi0+ZGVsYXlfcnRz
X2FmdGVyX3NlbmQpOwo+ICAJCW1vZGUgfD0gQVRNRUxfVVNfVVNNT0RFX1JTNDg1Owo+IEBAIC04
MzEsNyArODM1LDcgQEAgc3RhdGljIHZvaWQgYXRtZWxfdHhfY2hhcnMoc3RydWN0IHVhcnRfcG9y
dCAqcG9ydCkKPiAgCXN0cnVjdCBhdG1lbF91YXJ0X3BvcnQgKmF0bWVsX3BvcnQgPSB0b19hdG1l
bF91YXJ0X3BvcnQocG9ydCk7Cj4gIAo+ICAJaWYgKHBvcnQtPnhfY2hhciAmJgo+IC0JICAgIChh
dG1lbF91YXJ0X3JlYWRsKHBvcnQsIEFUTUVMX1VTX0NTUikgJiBhdG1lbF9wb3J0LT50eF9kb25l
X21hc2spKSB7Cj4gKwkgICAgKGF0bWVsX3VhcnRfcmVhZGwocG9ydCwgQVRNRUxfVVNfQ1NSKSAm
IEFUTUVMX1VTX1RYUkRZKSkgewo+ICAJCWF0bWVsX3VhcnRfd3JpdGVfY2hhcihwb3J0LCBwb3J0
LT54X2NoYXIpOwo+ICAJCXBvcnQtPmljb3VudC50eCsrOwo+ICAJCXBvcnQtPnhfY2hhciA9IDA7
Cj4gQEAgLTgzOSw4ICs4NDMsNyBAQCBzdGF0aWMgdm9pZCBhdG1lbF90eF9jaGFycyhzdHJ1Y3Qg
dWFydF9wb3J0ICpwb3J0KQo+ICAJaWYgKHVhcnRfY2lyY19lbXB0eSh4bWl0KSB8fCB1YXJ0X3R4
X3N0b3BwZWQocG9ydCkpCj4gIAkJcmV0dXJuOwo+ICAKPiAtCXdoaWxlIChhdG1lbF91YXJ0X3Jl
YWRsKHBvcnQsIEFUTUVMX1VTX0NTUikgJgo+IC0JICAgICAgIGF0bWVsX3BvcnQtPnR4X2RvbmVf
bWFzaykgewo+ICsJd2hpbGUgKGF0bWVsX3VhcnRfcmVhZGwocG9ydCwgQVRNRUxfVVNfQ1NSKSAm
IEFUTUVMX1VTX1RYUkRZKSB7Cj4gIAkJYXRtZWxfdWFydF93cml0ZV9jaGFyKHBvcnQsIHhtaXQt
PmJ1Zlt4bWl0LT50YWlsXSk7Cj4gIAkJeG1pdC0+dGFpbCA9ICh4bWl0LT50YWlsICsgMSkgJiAo
VUFSVF9YTUlUX1NJWkUgLSAxKTsKPiAgCQlwb3J0LT5pY291bnQudHgrKzsKPiBAQCAtODUxLDEw
ICs4NTQsMjAgQEAgc3RhdGljIHZvaWQgYXRtZWxfdHhfY2hhcnMoc3RydWN0IHVhcnRfcG9ydCAq
cG9ydCkKPiAgCWlmICh1YXJ0X2NpcmNfY2hhcnNfcGVuZGluZyh4bWl0KSA8IFdBS0VVUF9DSEFS
UykKPiAgCQl1YXJ0X3dyaXRlX3dha2V1cChwb3J0KTsKPiAgCj4gLQlpZiAoIXVhcnRfY2lyY19l
bXB0eSh4bWl0KSkKPiArCWlmICghdWFydF9jaXJjX2VtcHR5KHhtaXQpKSB7Cj4gKwkJLyogd2Ug
c3RpbGwgaGF2ZSBjaGFyYWN0ZXJzIHRvIHRyYW5zbWl0LCBzbyB3ZSBzaG91bGQgY29udGludWUK
PiArCQkgKiB0cmFuc21pdHRpbmcgdGhlbSB3aGVuIFRYIGlzIHJlYWR5LCByZWdhcmRsZXNzIG9m
Cj4gKwkJICogbW9kZSBvciBkdXBsZXhpdHkKPiArCQkgKi8KPiArCQlhdG1lbF9wb3J0LT50eF9k
b25lX21hc2sgfD0gQVRNRUxfVVNfVFhSRFk7Cj4gKwo+ICAJCS8qIEVuYWJsZSBpbnRlcnJ1cHRz
ICovCj4gIAkJYXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfSUVSLAo+ICAJCQkJICBh
dG1lbF9wb3J0LT50eF9kb25lX21hc2spOwo+ICsJfSBlbHNlIHsKPiArCQlpZiAoYXRtZWxfdWFy
dF9pc19oYWxmX2R1cGxleChwb3J0KSkKPiArCQkJYXRtZWxfcG9ydC0+dHhfZG9uZV9tYXNrICY9
IH5BVE1FTF9VU19UWFJEWTsKPiArCX0KPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgYXRtZWxfY29t
cGxldGVfdHhfZG1hKHZvaWQgKmFyZykKPiBAQCAtMjUyNSw4ICsyNTM4LDcgQEAgc3RhdGljIGlu
dCBhdG1lbF9pbml0X3BvcnQoc3RydWN0IGF0bWVsX3VhcnRfcG9ydCAqYXRtZWxfcG9ydCwKPiAg
CSAqIFVzZSBUWEVNUFRZIGZvciBpbnRlcnJ1cHQgd2hlbiByczQ4NSBvciBJU083ODE2IGVsc2Ug
VFhSRFkgb3IKPiAgCSAqIEVORFRYfFRYQlVGRQo+ICAJICovCj4gLQlpZiAocG9ydC0+cnM0ODUu
ZmxhZ3MgJiBTRVJfUlM0ODVfRU5BQkxFRCB8fAo+IC0JICAgIHBvcnQtPmlzbzc4MTYuZmxhZ3Mg
JiBTRVJfSVNPNzgxNl9FTkFCTEVEKQo+ICsJaWYgKGF0bWVsX3VhcnRfaXNfaGFsZl9kdXBsZXgo
cG9ydCkpCj4gIAkJYXRtZWxfcG9ydC0+dHhfZG9uZV9tYXNrID0gQVRNRUxfVVNfVFhFTVBUWTsK
PiAgCWVsc2UgaWYgKGF0bWVsX3VzZV9wZGNfdHgocG9ydCkpIHsKPiAgCQlwb3J0LT5maWZvc2l6
ZSA9IFBEQ19CVUZGRVJfU0laRTsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
