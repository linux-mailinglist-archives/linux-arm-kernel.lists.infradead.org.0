Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA851BBB1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wqF2N3svcrbsKXxqsmCGny/RjYweDmNig0IEFMyNKY=; b=OaxwCM4bxKa4Iq
	6mq82RZOz4RpfSgIyoG9b0hJ5G+gKIq/HrBDV5zIp2sxWNvTyhsjomaPnQWrLSyX35DnLU90u6W56
	B8p8IMWjtjOo2X/rGDyECeIogW+lh/9mBRYq+P8tqghW04jx+379EeiKLdAGQ28ljSwx/2f0AeLqm
	ZQ+6RBeltpHmB5JQVsjLNQ6QAizeeA6uUGVp+ri/okufTMxRukXNcyjQlvZ291WuB01McXZZuIRpR
	eJbdwofq6w2rxoCGZyPMbaJ0e6xejFt06exiOQoCCatiSssRZqog31zzexfBm26eVuKfimTuhmSWY
	MKlTgidxiYXDbTp+LJfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNM4-0006J5-EA; Tue, 28 Apr 2020 10:20:44 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNLt-0006Gw-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:20:36 +0000
Received: by mail-ed1-f68.google.com with SMTP id f12so15932329edn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8XVZLy+Z2aeMWzOQ+xj/bdTQQafaM8Qg8Ml+JBIWjas=;
 b=EYjqsF1B64fGqQ6AoepDSXk90XLFXl7FwZ12pzM13vrrWv077iiyCtScmp12fa8cYO
 PDX8JntAgH03BRRMkRCqycdcV4kOGO9T8cuD1uzzi+TeXcufTW4lt69HXhsuC8TRNTrI
 Ir7By4Jw6jx27wgqDol3w99uhRD2elWMWCpOxpdmVGfUCUGOm9xRehFeqNo5fAQ6G9RO
 sdC8qtkK3uC9ZbUi/qF8KV9ka4l7gptk+hUfv72UvFTRwfpm/urYRjv8oXw/YMVeVq0+
 HmpfIi4PlPPFFRj3mX4biG8dYbp37u1MVqpRPAw/N7UzQpW8fBLFvVw7x7KAvaPdf6+0
 OGpQ==
X-Gm-Message-State: AGi0Pua7+1x0fyjQEeK2kxV4aJy5pXZN6m+NnDJoPPp9GbUUfK9dtuoa
 oH4KSss7eUQXj7goTWv3C+o=
X-Google-Smtp-Source: APiQypIlj9J3oWIIsF+MLx39oTKzFj0RUM+Tt9CdhuA54Gum3uRwO43yYz3yLqCIKNQNoLSMIfC2Hw==
X-Received: by 2002:aa7:d5d4:: with SMTP id d20mr22422707eds.369.1588069228872; 
 Tue, 28 Apr 2020 03:20:28 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id r19sm260813edo.12.2020.04.28.03.20.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:20:28 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:20:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 06/13] arm: dts: s5pv210: aries: Add support for more
 devices
Message-ID: <20200428102026.GB23963@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660563639D091548BFCCFF2A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660563639D091548BFCCFF2A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_032033_827655_736076B2 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMTE6MzU6NTdBTSAtMDcwMCwgSm9uYXRoYW4gQmFra2Vy
IHdyb3RlOgo+IEFkZCBzdXBwb3J0IGZvciBmb2xsb3dpbmcgZGV2aWNlczoKPiAgIC0gdG91Y2hr
ZXlzIGNvbm5lY3RlZCBvdmVyIGkyYy1ncGlvCj4gICAtIHM2ZTYzbTAgcGFuZWwgY29ubmVjdGVk
IG92ZXIgc3BpLWdwaW8KPiAgIC0gZnNhOTQ4MCBtaWNyb3VzYiBzd2l0Y2ggb3ZlciBpMmMtZ3Bp
bwo+ICAgLSB3bTg5OTQgb3ZlciBpMmMtZ3BpbyAobm8gbWFjaGluZSBkcml2ZXIgeWV0KQo+ICAg
LSBhbGwgY29tbW9uIGkyYy1ncGlvIGRldmljZXMKClBsZWFzZSBzcGxpdCBpdCBwZXIgZnVuY3Rp
b25hbGl0eSwgZS5nLjoKMS4gQWRkIHNvdW5kLAoyLiBBZGQgcGFuZWwsCjMuIEFkZCB0b3VjaGtl
eXMgKHVubGVzcyBwYXJ0IG9mIHBhbmVsKSwKNC4gVGhlIHJlbWFpbmluZyBpMmMtZ3BpbyBkZXZp
Y2VzIHdpdGhvdXQgYmluZGluZ3MgY291bGQgZ28gYXMgb25lLgoKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBKb25hdGhhbiBCYWtrZXIgPHhjLXJhY2VyMkBsaXZlLmNhPgo+IFNpZ25lZC1vZmYtYnk6IFBh
d2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJj
aC9hcm0vYm9vdC9kdHMvczVwdjIxMC1hcmllcy5kdHNpICAgICAgfCAyODIgKysrKysrKysrKysr
KysrKysrKystLQo+ICBhcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWZhc2NpbmF0ZTRnLmR0cyB8
ICAgNiArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjcwIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kKPiBpbmRleCBmODNkZjQy
NmYyYjYuLmVmOTY2ZDEzZDgzZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zNXB2
MjEwLWFyaWVzLmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0
c2kKPiBAQCAtMTIsOCArMTIsMTQgQEAKPiAgCWNvbXBhdGlibGUgPSAic2Ftc3VuZyxhcmllcyIs
ICJzYW1zdW5nLHM1cHYyMTAiOwo+ICAKPiAgCWFsaWFzZXMgewo+ICsJCWkyYzQgPSAmaTJjX3Nv
dW5kOwo+ICsJCWkyYzUgPSAmaTJjX2FjY2VsOwo+ICAJCWkyYzYgPSAmaTJjX3BtaWM7Cj4gKwkJ
aTJjNyA9ICZpMmNfbXVzYjsKPiAgCQlpMmM5ID0gJmkyY19mdWVsOwo+ICsJCWkyYzEwID0gJmky
Y190b3VjaGtleTsKPiArCQlpMmMxMSA9ICZpMmNfcHJveDsKPiArCQlpMmMxMiA9ICZpMmNfbWFn
bmV0b21ldGVyOwo+ICAJfTsKPiAgCj4gIAltZW1vcnlAMzAwMDAwMDAgewo+IEBAIC00OCw2ICs1
NCwxOCBAQAo+ICAJCWdwaW8gPSA8JmdwajEgMSBHUElPX0FDVElWRV9ISUdIPjsKPiAgCX07Cj4g
IAo+ICsJdG91Y2hrZXlfdmRkOiByZWd1bGF0b3ItZml4ZWQtMSB7Cj4gKwkJY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3VsYXRvci1uYW1lID0gIlZUT1VDSF8zLjNWIjsK
PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQlyZWd1bGF0b3It
bWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gKwkJ
Z3BpbyA9IDwmZ3BqMyAyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsKPiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+ICsJCXBpbmN0cmwtMCA9IDwmdG91Y2hrZXlfdmRkX2VuYT47Cj4gKwl9
Owo+ICsKPiAgCXdpZmlfcHdyc2VxOiB3aWZpLXB3cnNlcSB7Cj4gIAkJY29tcGF0aWJsZSA9ICJt
bWMtcHdyc2VxLXNpbXBsZSI7Cj4gIAkJcmVzZXQtZ3Bpb3MgPSA8JmdwZzEgMiBHUElPX0FDVElW
RV9MT1c+Owo+IEBAIC01Nyw3ICs3NSw2OSBAQAo+ICAJCXBvd2VyLW9mZi1kZWxheS11cyA9IDw1
MDA+Owo+ICAJfTsKPiAgCj4gLQlpMmNfcG1pYzogaTJjLWdwaW8tMCB7Cj4gKwlpMmNfc291bmQ6
IGkyYy1ncGlvLTAgewo+ICsJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOwo+ICsJCXNkYS1ncGlv
cyA9IDwmbXAwNSAzIChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gKwkJ
c2NsLWdwaW9zID0gPCZtcDA1IDIgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4p
PjsKPiArCQlpMmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKPiArCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnNvdW5kX2kyY19waW5zPjsKPiArCj4gKwkJd204OTk0
OiB3bTg5OTRAMWEgewo+ICsJCQljb21wYXRpYmxlID0gIndsZix3bTg5OTQiOwo+ICsJCQlyZWcg
PSA8MHgxYT47Cj4gKwo+ICsJCQkjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJZ3Bp
by1jb250cm9sbGVyOwo+ICsJCQkjZ3Bpby1jZWxscyA9IDwyPjsKPiArCj4gKwkJCWNsb2NrcyA9
IDwmY2xvY2tzIE1PVVRfQ0xLT1VUPjsKPiArCQkJY2xvY2stbmFtZXMgPSAiTUNMSzEiOwo+ICsK
PiArCQkJQVZERDItc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+ICsJCQlEQlZERC1zdXBwbHkgPSA8
JmJ1Y2szX3JlZz47CgpObyBzdWNoIHN1cHBseSwgY2hlY2sgdGhlIGJpbmRpbmdzLgoKPiArCQkJ
Q1BWREQtc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+ICsJCQlTUEtWREQxLXN1cHBseSA9IDwmYnVj
azNfcmVnPjsKPiArCQkJU1BLVkREMi1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gKwo+ICsJCQl3
bGYsZ3Bpby1jZmcgPSA8MHhhMTAxIDB4ODEwMCAweDAxMDAgMHgwMTAwIDB4ODEwMAo+ICsJCQkJ
CTB4YTEwMSAweDAxMDAgMHg4MTAwIDB4MDEwMCAweDAxMDAKPiArCQkJCQkweDAxMDA+Owo+ICsK
PiArCQkJd2xmLGxkbzFlbmEgPSA8JmdwZjMgNCBHUElPX0FDVElWRV9ISUdIPjsKPiArCQkJd2xm
LGxkbzJlbmEgPSA8JmdwZjMgNCBHUElPX0FDVElWRV9ISUdIPjsKPiArCj4gKwkJCXdsZixsaW5l
b3V0MS1zZTsKPiArCQkJd2xmLGxpbmVvdXQyLXNlOwo+ICsKPiArCQkJYXNzaWduZWQtY2xvY2tz
ID0gPCZjbG9ja3MgTU9VVF9DTEtPVVQ+Owo+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDww
PjsKPiArCQkJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmeHVzYnh0aT47Cj4gKwo+ICsJCQlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCQlwaW5jdHJsLTAgPSA8JmNvZGVjX2xkbz47
Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICsJaTJjX2FjY2VsOiBpMmMtZ3Bpby0xIHsKPiArCQljb21w
YXRpYmxlID0gImkyYy1ncGlvIjsKPiArCQlzZGEtZ3Bpb3MgPSA8JmdwajMgNiAoR1BJT19BQ1RJ
VkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICsJCXNjbC1ncGlvcyA9IDwmZ3BqMyA3IChH
UElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gKwkJaTJjLWdwaW8sZGVsYXkt
dXMgPSA8Mj47Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2VsbHMgPSA8
MD47Cj4gKwo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0g
PCZhY2NlbF9pMmNfcGlucz47Cj4gKwo+ICsJCS8qIGJtYTAyMyBhY2NlbGVyb21ldGVyLCBubyBt
YWlubGluZSBiaW5kaW5nICovCgpzdGF0dXMgZGlzYWJsZWQgLi4uIHVubGVzcyB5b3UgbmVlZCBp
dCBmb3IgdXNlci1zcGFjZSBJMkMgdG9vbHM/Cgo+ICsJfTsKPiArCj4gKwlpMmNfcG1pYzogaTJj
LWdwaW8tMiB7Cj4gIAkJY29tcGF0aWJsZSA9ICJpMmMtZ3BpbyI7Cj4gIAkJc2RhLWdwaW9zID0g
PCZncGo0IDAgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsKPiAgCQlzY2wt
Z3Bpb3MgPSA8JmdwajQgMyAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+
IEBAIC0xMzcsOCArMjE3LDYgQEAKPiAgCQkJCQlyZWd1bGF0b3ItbmFtZSA9ICJWTENEXzEuOFYi
Owo+ICAJCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ICAJCQkJCXJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+IC0JCQkJCS8qIFRpbGwgd2UgZ2V0
IHBhbmVsIGRyaXZlciAqLwo+IC0JCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gIAo+ICAJCQkJ
CXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICAJCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7
Cj4gQEAgLTIzNyw4ICszMTUsNiBAQAo+ICAJCQkJCXJlZ3VsYXRvci1uYW1lID0gIlZDQ18zLjBW
X0xDRCI7Cj4gIAkJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gIAkJ
CQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gLQkJCQkJLyogVGlsbCB3
ZSBnZXQgcGFuZWwgZHJpdmVyICovCj4gLQkJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAgCj4g
IAkJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gIAkJCQkJCXJlZ3VsYXRvci1vZmYtaW4tc3Vz
cGVuZDsKPiBAQCAtMzA5LDcgKzM4NSwyNiBAQAo+ICAJCX07Cj4gIAl9Owo+ICAKPiAtCWkyY19m
dWVsOiBpMmMtZ3Bpby0xIHsKPiArCWkyY19tdXNiOiBpMmMtZ3Bpby0zIHsKPiArCQljb21wYXRp
YmxlID0gImkyYy1ncGlvIjsKPiArCQlzZGEtZ3Bpb3MgPSA8JmdwajMgNCAoR1BJT19BQ1RJVkVf
SElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICsJCXNjbC1ncGlvcyA9IDwmZ3BqMyA1IChHUElP
X0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gKwkJaTJjLWdwaW8sZGVsYXktdXMg
PSA8Mj47Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2VsbHMgPSA8MD47
Cj4gKwo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZt
dXNiX2kyY19waW5zPjsKPiArCj4gKwkJZnNhOTQ4MDogbXVzYkAyNSB7Cj4gKwkJCWNvbXBhdGli
bGUgPSAiZmNzLGZzYTk0ODAiOwo+ICsJCQlyZWcgPSA8MHgyNT47Cj4gKwkJCWludGVycnVwdC1w
YXJlbnQgPSA8JmdwaDI+Owo+ICsJCQlpbnRlcnJ1cHRzID0gPDcgSVJRX1RZUEVfRURHRV9GQUxM
SU5HPjsKPiArCQl9Owo+ICsJfTsKPiArCj4gKwlpMmNfZnVlbDogaTJjLWdwaW8tNCB7Cj4gIAkJ
Y29tcGF0aWJsZSA9ICJpMmMtZ3BpbyI7Cj4gIAkJc2RhLWdwaW9zID0gPCZtcDA1IDEgKEdQSU9f
QUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsKPiAgCQlzY2wtZ3Bpb3MgPSA8Jm1wMDUg
MCAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+IEBAIC0zMjgsNiArNDIz
LDYwIEBACj4gIAkJfTsKPiAgCX07Cj4gIAo+ICsJaTJjX3RvdWNoa2V5OiBpMmMtZ3Bpby01IHsK
PiArCQljb21wYXRpYmxlID0gImkyYy1ncGlvIjsKPiArCQlzZGEtZ3Bpb3MgPSA8JmdwajMgMCAo
R1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICsJCXNjbC1ncGlvcyA9IDwm
Z3BqMyAxIChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gKwkJaTJjLWdw
aW8sZGVsYXktdXMgPSA8Mj47Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3NpemUt
Y2VsbHMgPSA8MD47Cj4gKwo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGlu
Y3RybC0wID0gPCZ0b3VjaGtleV9pMmNfcGlucz47Cj4gKwo+ICsJCXRvdWNoa2V5QDIwIHsKPiAr
CQkJY29tcGF0aWJsZSA9ICJjeXByZXNzLGFyaWVzLXRvdWNoa2V5IjsKPiArCQkJcmVnID0gPDB4
MjA+Owo+ICsJCQl2ZGQtc3VwcGx5ID0gPCZ0b3VjaGtleV92ZGQ+Owo+ICsJCQl2Y2Mtc3VwcGx5
ID0gPCZidWNrM19yZWc+Owo+ICsJCQlsaW51eCxrZXljb2RlcyA9IDxLRVlfTUVOVSBLRVlfQkFD
Swo+ICsJCQkJCSAgS0VZX0hPTUVQQUdFIEtFWV9TRUFSQ0g+Owo+ICsJCQlpbnRlcnJ1cHQtcGFy
ZW50ID0gPCZncGo0PjsKPiArCQkJaW50ZXJydXB0cyA9IDwxIElSUV9UWVBFX0xFVkVMX0xPVz47
Cj4gKwo+ICsJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCQlwaW5jdHJsLTAgPSA8
JnRvdWNoa2V5X2lycT47Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICsJaTJjX3Byb3g6IGkyYy1ncGlv
LTYgewo+ICsJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOwo+ICsJCXNkYS1ncGlvcyA9IDwmZ3Bn
MiAyIChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gKwkJc2NsLWdwaW9z
ID0gPCZncGcwIDIgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsKPiArCQlp
MmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKPiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkj
c2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAr
CQlwaW5jdHJsLTAgPSA8JnByb3hfaTJjX3BpbnM+Owo+ICsKPiArCQkvKiBTaGFycCBncDJhIHBy
b3gvbGlnaHQgc2Vuc29yLCBpbmNvbXBsZXRlIG1haW5saW5lIGJpbmRpbmcgKi8KClRoZSBzYW1l
IC0gZGlzYWJsZSwgdW5sZXNzIHlvdSBhY2Nlc3MgaXQgZnJvbSB1c2VyLXNwYWNlLgoKPiArCX07
Cj4gKwo+ICsJaTJjX21hZ25ldG9tZXRlcjogaTJjLWdwaW8tNyB7Cj4gKwkJY29tcGF0aWJsZSA9
ICJpMmMtZ3BpbyI7Cj4gKwkJc2RhLWdwaW9zID0gPCZncGowIDEgKEdQSU9fQUNUSVZFX0hJR0gg
fCBHUElPX09QRU5fRFJBSU4pPjsKPiArCQlzY2wtZ3Bpb3MgPSA8JmdwajAgMCAoR1BJT19BQ1RJ
VkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICsJCWkyYy1ncGlvLGRlbGF5LXVzID0gPDI+
Owo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+ICsK
PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXBpbmN0cmwtMCA9IDwmbWFnbmV0
b21ldGVyX2kyY19waW5zPjsKPiArCj4gKwkJLyogWWFtYWhhIHlhczUyOSBtYWduZXRvbWV0ZXIs
IG5vIG1haW5saW5lIGJpbmRpbmcgKi8KClRoZSBzYW1lIC0gZGlzYWJsZSwgdW5sZXNzIHlvdSBh
Y2Nlc3MgaXQgZnJvbSB1c2VyLXNwYWNlLgoKPiArCX07Cj4gKwo+ICAJdmlicmF0b3I6IHB3bS12
aWJyYXRvciB7Cj4gIAkJY29tcGF0aWJsZSA9ICJwd20tdmlicmF0b3IiOwo+ICAJCXB3bXMgPSA8
JnB3bSAxIDQ0NjQyIDA+Owo+IEBAIC0zNDMsNiArNDkyLDM5IEBACj4gIAkJb2Zmc2V0ID0gPDB4
NjgxYz47IC8qIFBTX0hPTERfQ09OVFJPTCAqLwo+ICAJCXZhbHVlID0gPDB4NTIwMD47Cj4gIAl9
Owo+ICsKPiArCXNwaV9sY2Q6IHNwaS1ncGlvLTAgewo+ICsJCWNvbXBhdGlibGUgPSAic3BpLWdw
aW8iOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCSNzaXplLWNlbGxzID0gPDA+Owo+
ICsKPiArCQlzY2stZ3Bpb3MgPSA8Jm1wMDQgMSBHUElPX0FDVElWRV9ISUdIPjsKPiArCQltb3Np
LWdwaW9zID0gPCZtcDA0IDMgR1BJT19BQ1RJVkVfSElHSD47Cj4gKwkJY3MtZ3Bpb3MgPSA8Jm1w
MDEgMSBHUElPX0FDVElWRV9ISUdIPjsKPiArCQludW0tY2hpcHNlbGVjdHMgPSA8MT47Cj4gKwo+
ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZsY2Rfc3Bp
X3BpbnM+Owo+ICsKPiArCQlwYW5lbEAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJzYW1zdW5nLHM2
ZTYzbTAiOwo+ICsJCQlyZWcgPSA8MD47Cj4gKwkJCXJlc2V0LWdwaW9zID0gPCZtcDA1IDUgR1BJ
T19BQ1RJVkVfTE9XPjsKPiArCQkJdmRkMy1zdXBwbHkgPSA8JmxkbzdfcmVnPjsKPiArCQkJdmNp
LXN1cHBseSA9IDwmbGRvMTdfcmVnPjsKPiArCQkJc3BpLWNzLWhpZ2g7Cj4gKwkJCXNwaS1tYXgt
ZnJlcXVlbmN5ID0gPDEyMDAwMDA+Owo+ICsKPiArCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiArCQkJcGluY3RybC0wID0gPCZwYW5lbF9yc3Q+Owo+ICsKPiArCQkJcG9ydCB7Cj4gKwkJ
CQlsY2RfZXA6IGVuZHBvaW50IHsKPiArCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmZpbWRfZXA+
Owo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQl9Owo+ICsJfTsKPiAgfTsKPiAgCj4gICZmaW1kIHsK
PiBAQCAtMzUzLDE4ICs1MzUsMTMgQEAKPiAgCXNhbXN1bmcsaW52ZXJ0LXZkZW47Cj4gIAlzYW1z
dW5nLGludmVydC12Y2xrOwo+ICAKPiAtCWRpc3BsYXktdGltaW5ncyB7Cj4gLQkJdGltaW5nLTAg
ewo+IC0JCQkvKiA0ODB4ODAwQDYwSHogKi8KPiAtCQkJY2xvY2stZnJlcXVlbmN5ID0gPDI1NjI4
MDQwPjsKPiAtCQkJaGFjdGl2ZSA9IDw0ODA+Owo+IC0JCQl2YWN0aXZlID0gPDgwMD47Cj4gLQkJ
CWhmcm9udC1wb3JjaCA9IDwxNj47Cj4gLQkJCWhiYWNrLXBvcmNoID0gPDE2PjsKPiAtCQkJaHN5
bmMtbGVuID0gPDI+Owo+IC0JCQl2ZnJvbnQtcG9yY2ggPSA8Mjg+Owo+IC0JCQl2YmFjay1wb3Jj
aCA9IDwxPjsKPiAtCQkJdnN5bmMtbGVuID0gPDI+Owo+ICsJI2FkZHJlc3MtY2VsbHMgPSA8MT47
Cj4gKwkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwlwb3J0QDMgewo+ICsJCXJlZyA9IDwzPjsK
PiArCQlmaW1kX2VwOiBlbmRwb2ludCB7Cj4gKwkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbGNkX2Vw
PjsKPiAgCQl9Owo+ICAJfTsKPiAgfTsKPiBAQCAtNDA1LDYgKzU4MiwxOSBAQAo+ICAJCXNhbXN1
bmcscGluLXZhbCA9IDwxPjsKPiAgCX07Cj4gIAo+ICsJY29kZWNfbGRvOiBjb2RlYy1sZG8gewo+
ICsJCXNhbXN1bmcscGlucyA9ICJncGYzLTQiOwo+ICsJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0g
PEVYWU5PU19QSU5fRlVOQ19PVVRQVVQ+Owo+ICsJCXNhbXN1bmcscGluLXB1ZCA9IDxTM0M2NFhY
X1BJTl9QVUxMX05PTkU+Owo+ICsJfTsKPiArCj4gKwlwcm94X2kyY19waW5zOiBncDJhLWkyYy1w
aW5zIHsKPiArCQlzYW1zdW5nLHBpbnMgPSAiZ3BnMC0yIiwgImdwZzItMiI7Cj4gKwkJc2Ftc3Vu
ZyxwaW4tZnVuY3Rpb24gPSA8RVhZTk9TX1BJTl9GVU5DX0Y+Owo+ICsJCXNhbXN1bmcscGluLXB1
ZCA9IDxTM0M2NFhYX1BJTl9QVUxMX05PTkU+Owo+ICsJCXNhbXN1bmcscGluLWRydiA9IDxFWFlO
T1M0X1BJTl9EUlZfTFYxPjsKPiArCX07Cj4gKwo+ICAJd2xhbl9ncGlvX3JzdDogd2xhbi1ncGlv
LXJzdCB7Cj4gIAkJc2Ftc3VuZyxwaW5zID0gImdwZzEtMiI7Cj4gIAkJc2Ftc3VuZyxwaW4tZnVu
Y3Rpb24gPSA8RVhZTk9TX1BJTl9GVU5DX09VVFBVVD47Cj4gQEAgLTQzOCw2ICs2MjgsMTMgQEAK
PiAgCQlzYW1zdW5nLHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5fUFVMTF9OT05FPjsKPiAgCX07Cj4g
IAo+ICsJbWFnbmV0b21ldGVyX2kyY19waW5zOiB5YXM1MjktaTJjLXBpbnMgewo+ICsJCXNhbXN1
bmcscGlucyA9ICJncGowLTAiLCAiZ3BqMC0xIjsKPiArCQlzYW1zdW5nLHBpbi1mdW5jdGlvbiA9
IDxFWFlOT1NfUElOX0ZVTkNfRj47Cj4gKwkJc2Ftc3VuZyxwaW4tcHVkID0gPFMzQzY0WFhfUElO
X1BVTExfTk9ORT47Cj4gKwkJc2Ftc3VuZyxwaW4tZHJ2ID0gPEVYWU5PUzRfUElOX0RSVl9MVjE+
Owo+ICsJfTsKPiArCj4gIAl0c19pcnE6IHRzLWlycSB7Cj4gIAkJc2Ftc3VuZyxwaW5zID0gImdw
ajAtNSI7Cj4gIAkJc2Ftc3VuZyxwaW4tZnVuY3Rpb24gPSA8RVhZTk9TX1BJTl9GVU5DX0lOUFVU
PjsKPiBAQCAtNDQ1LDE3ICs2NDIsNjYgQEAKPiAgCQlzYW1zdW5nLHBpbi1kcnYgPSA8RVhZTk9T
NF9QSU5fRFJWX0xWMT47Cj4gIAl9Owo+ICAKPiArCXRvdWNoa2V5X2kyY19waW5zOiB0b3VjaGtl
eS1pMmMtcGlucyB7Cj4gKwkJc2Ftc3VuZyxwaW5zID0gImdwajMtMCIsICJncGozLTEiOwo+ICsJ
CXNhbXN1bmcscGluLXB1ZCA9IDxTM0M2NFhYX1BJTl9QVUxMX05PTkU+Owo+ICsJCXNhbXN1bmcs
cGluLWRydiA9IDxFWFlOT1M0X1BJTl9EUlZfTFYxPjsKPiArCX07Cj4gKwo+ICsJdG91Y2hrZXlf
dmRkX2VuYTogdG91Y2hrZXktdmRkLWVuYSB7Cj4gKwkJc2Ftc3VuZyxwaW5zID0gImdwajMtMiI7
Cj4gKwkJc2Ftc3VuZyxwaW4tcHVkID0gPFMzQzY0WFhfUElOX1BVTExfTk9ORT47Cj4gKwkJc2Ft
c3VuZyxwaW4tZHJ2ID0gPEVYWU5PUzRfUElOX0RSVl9MVjE+Owo+ICsJfTsKPiArCj4gKwltdXNi
X2kyY19waW5zOiBtdXNiLWkyYy1waW5zIHsKPiArCQlzYW1zdW5nLHBpbnMgPSAiZ3BqMy00Iiwg
ImdwajMtNSI7Cj4gKwkJc2Ftc3VuZyxwaW4tcHVkID0gPFMzQzY0WFhfUElOX1BVTExfTk9ORT47
Cj4gKwkJc2Ftc3VuZyxwaW4tZHJ2ID0gPEVYWU5PUzRfUElOX0RSVl9MVjE+Owo+ICsJfTsKPiAr
Cj4gKwlhY2NlbF9pMmNfcGluczogYWNjZWwtaTJjLXBpbnMgewo+ICsJCXNhbXN1bmcscGlucyA9
ICJncGozLTYiLCAiZ3BqMy03IjsKPiArCQlzYW1zdW5nLHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5f
UFVMTF9OT05FPjsKPiArCQlzYW1zdW5nLHBpbi1kcnYgPSA8RVhZTk9TNF9QSU5fRFJWX0xWMT47
Cj4gKwl9Owo+ICsKPiAgCXBtaWNfaTJjX3BpbnM6IHBtaWMtaTJjLXBpbnMgewo+ICAJCXNhbXN1
bmcscGlucyA9ICJncGo0LTAiLCAiZ3BqNC0zIjsKPiAgCQlzYW1zdW5nLHBpbi1wdWQgPSA8UzND
NjRYWF9QSU5fUFVMTF9OT05FPjsKPiAgCQlzYW1zdW5nLHBpbi1kcnYgPSA8RVhZTk9TNF9QSU5f
RFJWX0xWMT47Cj4gIAl9Owo+ICAKPiArCXRvdWNoa2V5X2lycTogdG91Y2hrZXktaXJxIHsKPiAr
CQlzYW1zdW5nLHBpbnMgPSAiZ3BqNC0xIjsKPiArCQlzYW1zdW5nLHBpbi1mdW5jdGlvbiA9IDxF
WFlOT1NfUElOX0ZVTkNfSU5QVVQ+Owo+ICsJCXNhbXN1bmcscGluLXB1ZCA9IDxTM0M2NFhYX1BJ
Tl9QVUxMX1VQPjsKPiArCQlzYW1zdW5nLHBpbi1kcnYgPSA8RVhZTk9TNF9QSU5fRFJWX0xWMT47
Cj4gKwl9Owo+ICsKPiArCWxjZF9zcGlfcGluczogc3BpLWxjZC1waW5zIHsKPiArCQlzYW1zdW5n
LHBpbnMgPSAibXAwMS0xIiwgIm1wMDQtMSIsICJtcDA0LTMiOwo+ICsJCXNhbXN1bmcscGluLXB1
ZCA9IDxTM0M2NFhYX1BJTl9QVUxMX05PTkU+Owo+ICsJCXNhbXN1bmcscGluLWRydiA9IDxFWFlO
T1M0X1BJTl9EUlZfTFYxPjsKPiArCX07Cj4gKwo+ICAJZmdfaTJjX3BpbnM6IGZnLWkyYy1waW5z
IHsKPiAgCQlzYW1zdW5nLHBpbnMgPSAibXAwNS0wIiwgIm1wMDUtMSI7Cj4gIAkJc2Ftc3VuZyxw
aW4tcHVkID0gPFMzQzY0WFhfUElOX1BVTExfTk9ORT47Cj4gIAkJc2Ftc3VuZyxwaW4tZHJ2ID0g
PEVYWU5PUzRfUElOX0RSVl9MVjE+Owo+ICAJfTsKPiArCj4gKwlzb3VuZF9pMmNfcGluczogc291
bmQtaTJjLXBpbnMgewo+ICsJCXNhbXN1bmcscGlucyA9ICJtcDA1LTIiLCAibXAwNS0zIjsKPiAr
CQlzYW1zdW5nLHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5fUFVMTF9OT05FPjsKPiArCQlzYW1zdW5n
LHBpbi1kcnYgPSA8RVhZTk9TNF9QSU5fRFJWX0xWMT47Cj4gKwl9Owo+ICsKPiArCXBhbmVsX3Jz
dDogcGFuZWwtcnN0IHsKPiArCQlzYW1zdW5nLHBpbnMgPSAibXAwNS01IjsKPiArCQlzYW1zdW5n
LHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5fUFVMTF9OT05FPjsKPiArCQlzYW1zdW5nLHBpbi1kcnYg
PSA8RVhZTk9TNF9QSU5fRFJWX0xWMT47Cj4gKwl9Owo+ICB9Owo+ICAKPiAgJnB3bSB7Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZmFzY2luYXRlNGcuZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvczVwdjIxMC1mYXNjaW5hdGU0Zy5kdHMKPiBpbmRleCA5NGRjYjliNjRi
OWEuLjQyZTZlMmRlMTk3ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEw
LWZhc2NpbmF0ZTRnLmR0cwo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZmFzY2lu
YXRlNGcuZHRzCj4gQEAgLTI3OCwzICsyNzgsOSBAQAo+ICAJCVBJTl9TTFAobXAwNy03LCBJTlBV
VCwgRE9XTik7Cj4gIAl9Owo+ICB9Owo+ICsKPiArJndtODk5NCB7Cj4gKwkvKiBHUElPMyAoQkNM
SzIpIGFuZCBHUElPNCAoTFJDTEsyKSBhcyBvdXRwdXRzICovCj4gKwl3bGYsZ3Bpby1jZmcgPSA8
MHhhMTAxIDB4ODEwMCAweDgxMDAgMHg4MTAwIDB4ODEwMCAweGExMDEKPiArCQkweDAxMDAgMHg4
MTAwIDB4MDEwMCAweDAxMDAgMHgwMTAwPjsKCkluZGVudCB0aGUgbGluZSB0aWxsIG9wZW5pbmcg
PC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
