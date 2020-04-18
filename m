Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5320B1AF524
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 23:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xxzaij5LuwOJmsUaw5Lho3fozvRB7YFbpJ2tvxHC4iQ=; b=qODoldcpuw69MW
	kR/kipiJJBizhMxOwZenySLMevs1tPcDgfKX8FZxPFVGjGg6YgHMx8phx60UfyADS1Uj7Yb2OZ8CG
	qsFfYyH6dQxSl+b6kLEAVWasGuQ38gmoJIQ/UjUYyxMhaoYx39p1ycbN/yybNHKv3MDLIZbIEUxFI
	hGEozZrFDOFcsCa6efYzQdUib415wZCsPn4ueaHZKll1rWer7GdKA47srXRXbJctmK3ejPRue1i0S
	a3EJ+cBSVn/F2fD7ibLZSM3GOXi3EmIQ8nx1SUTeqrxT3OvBcQgIS5ah/zSBZrFXLG0GbxSxnTXRo
	cRGVmXIG94LWSmGy/Hig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPv2o-0005pt-Oq; Sat, 18 Apr 2020 21:30:34 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPv2i-0005pV-KD
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 21:30:30 +0000
Received: by mail-il1-x144.google.com with SMTP id t10so5819874ilg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 14:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nKuUM6IHW8RYHdTcFjqmk2a4BW3C6dzC42TENSM2aLE=;
 b=PBweGkuNrIIhqTHUkOqGVSkGqJB1PNvsadvz8LjfFnZ6P4CKIZCf1OAKrTNC4fy/ci
 4Rp54B1F6f+fHirPVBzu+pGSLCRXannDPndxPXIipkYN04OXsDitRYo8dMu6UkvQ7wka
 mHlk2SqG72sY3ogGch4dFZJ5dabTsi5z1+3kdAhCfWGUt7A+bnu61TA2CtygquAFmihW
 ia+COjjURroAkwcgnA79DX9SyvVhL0/SIcGzfzTafYQuR5zcQ3p1u0mLakhEy0SG5eMN
 ukpZ34SJsxEsGD8VCPxfd/24Qf4ZqKsbkfRiDsxCLI5BV5p0WpoconaIixFeUU6D9fyd
 Snhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nKuUM6IHW8RYHdTcFjqmk2a4BW3C6dzC42TENSM2aLE=;
 b=IOYasJbvlo/Yt6ePWjhfRiTo8hbdZ6nYsdrLL92PfNENrGbrkrxXXX+dh89ELnYchD
 X6wHCq/kAdt++pvn3WDH/PFvD6NmOh1clscpMxp7t5ZEZm7CV94C8KPkIphIDCAFRdK/
 BscterwJa7LddhZsWbRzVq8Z5FHqq90k8MSJjxeLybOgsDO/iMGFFiOhCFuSncvImQu1
 TDApotltZUNeyL0T8WlAAOzmVDMap5aGXPyhIHLkY/pMEniau9jvfI2LXsJ5d31G0AjW
 uqmD4pbO5BceytEgWJ5ldONqKPbbe/ueDmS/iETxSoQYHLdEmNgwzN7s625qL1vyO/qs
 8/gA==
X-Gm-Message-State: AGi0Pua+eY7aAnCddYK46RTS4xGGxUdtHctyJZ+oiEMEhgoWAuEa/Z8n
 HpRksdCYfBEnAkIFUozfRZUzYiTpJp928svlwqmbAiIajf4=
X-Google-Smtp-Source: APiQypJzTdzColiYA6jI5kUE3R3feOOH5KcSAgB1jGYlnjTxo7vews7lVZM8Ee7P9ayUu0/SV24dV3u7niNPl+4w1Io=
X-Received: by 2002:a92:540f:: with SMTP id i15mr8784006ilb.59.1587245427254; 
 Sat, 18 Apr 2020 14:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200418143923.19608-1-peron.clem@gmail.com>
 <20200418143923.19608-5-peron.clem@gmail.com>
In-Reply-To: <20200418143923.19608-5-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 18 Apr 2020 23:30:16 +0200
Message-ID: <CAJiuCcdH0=wdKfmAquNfv=0AT_S8qx0Nasbb4m6itWXjUyw8_g@mail.gmail.com>
Subject: Re: [PATCH 4/7] ASoC: sun4i-i2s: Set sign extend sample
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_143028_687583_C3FFDD53 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marcus Cooper <codekipper@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTYXQsIDE4IEFwciAyMDIwIGF0IDE2OjM5LCBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBw
ZXJAZ21haWwuY29tPgo+Cj4gT24gdGhlIG5ld2VyIFNvQ3Mgc3VjaCBhcyB0aGUgSDMgYW5kIEE2
NCB0aGlzIGlzIHNldCBieSBkZWZhdWx0Cj4gdG8gdHJhbnNmZXIgYSAwIGFmdGVyIGVhY2ggc2Ft
cGxlIGluIGVhY2ggc2xvdC4gSG93ZXZlciB0aGUgQTEwCj4gYW5kIEEyMCBTb0NzIHRoYXQgdGhp
cyBkcml2ZXIgd2FzIGRldmVsb3BlZCBvbiBoYWQgYSBkZWZhdWx0Cj4gc2V0dGluZyB3aGVyZSBp
dCBwYWRkZWQgdGhlIGF1ZGlvIGdhaW4gd2l0aCB6ZXJvcy4KPgo+IFRoaXMgaXNuJ3QgYSBwcm9i
bGVtIHdoaWxzdCB3ZSBoYXZlIG9ubHkgc3VwcG9ydCBmb3IgMTZiaXQgYXVkaW8KPiBidXQgd2l0
aCBsYXJnZXIgc2FtcGxlIHJlc29sdXRpb24gcmF0ZXMgaW4gdGhlIHBpcGVsaW5lIHRoZW4gU0VY
VAo+IGJpdHMgc2hvdWxkIGJlIGNsZWFyZWQgc28gdGhhdCB0aGV5IGFsc28gcGFkIGF0IHRoZSBM
U0IuIFdpdGhvdXQKPiB0aGlzIHRoZSBhdWRpbyBnZXRzIGRpc3RvcnRlZC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gLS0tCj4gIHNvdW5k
L3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDE2ICsrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvc3VueGkv
c3VuNGktaTJzLmMgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKPiBpbmRleCBhMjNjOWYy
YTNmOGMuLmU1ZjAwYmU4Y2RjZiAxMDA2NDQKPiAtLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGkt
aTJzLmMKPiArKysgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKPiBAQCAtNjYzLDYgKzY2
MywxMiBAQCBzdGF0aWMgaW50IHN1bjRpX2kyc19zZXRfc29jX2ZtdChjb25zdCBzdHJ1Y3Qgc3Vu
NGlfaTJzICppMnMsCj4gICAgICAgICB9Cj4gICAgICAgICByZWdtYXBfdXBkYXRlX2JpdHMoaTJz
LT5yZWdtYXAsIFNVTjRJX0kyU19DVFJMX1JFRywKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBTVU40SV9JMlNfQ1RSTF9NT0RFX01BU0ssIHZhbCk7Cj4gKwo+ICsgICAgICAgLyogU2V0IHNp
Z24gZXh0ZW5zaW9uIHRvIHBhZCBvdXQgTFNCIHdpdGggMCAqLwo+ICsgICAgICAgcmVnbWFwX3Vw
ZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgU1VONElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICBTVU40SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7CgpNeSBhcG9sb2dp
ZXMsIEkgbWFkZSBhIG1pc3Rha2UgZHVyaW5nIHRoZSByZWJhc2UgYmV0d2VlbiBvbGQgTWFyY3Vz
CkNvb3BlciBwYXRjaGVzIGFuZCBuZXcgb25lLgpBbmQgc2FkbHkgSSBsb3N0IHRoZSBkZWZpbmVz
IHJlcXVpcmVkIGhlcmUgd2l0aG91dCBub3RpY2luZyBpdC4KCldpbGwgc2VuZCBhIHYyLgoKU29y
cnkgZm9yIHRoYXQsCkNsZW1lbnQKCj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IEBA
IC03NjUsNiArNzcxLDExIEBAIHN0YXRpYyBpbnQgc3VuOGlfaTJzX3NldF9zb2NfZm10KGNvbnN0
IHN0cnVjdCBzdW40aV9pMnMgKmkycywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBTVU44
SV9JMlNfQ1RSTF9CQ0xLX09VVCB8IFNVTjhJX0kyU19DVFJMX0xSQ0tfT1VULAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZhbCk7Cj4KPiArICAgICAgIC8qIFNldCBzaWduIGV4dGVuc2lv
biB0byBwYWQgb3V0IExTQiB3aXRoIDAgKi8KPiArICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhp
MnMtPnJlZ21hcCwgU1VONElfSTJTX0ZNVDFfUkVHLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgIFNVTjhJX0kyU19GTVQxX1JFR19TRVhUX01BU0ssCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFQoMCkpOwo+ICsKPiAgICAgICAgIHJldHVybiAw
Owo+ICB9Cj4KPiBAQCAtODY3LDYgKzg3OCwxMSBAQCBzdGF0aWMgaW50IHN1bjUwaV9pMnNfc2V0
X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFNVTjhJX0kyU19DVFJMX0JDTEtfT1VUIHwgU1VOOElfSTJTX0NUUkxfTFJDS19P
VVQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsKTsKPgo+ICsgICAgICAgLyogU2V0
IHNpZ24gZXh0ZW5zaW9uIHRvIHBhZCBvdXQgTFNCIHdpdGggMCAqLwo+ICsgICAgICAgcmVnbWFw
X3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7Cj4gKwo+ICAg
ICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IC0tCj4gMi4yMC4xCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
