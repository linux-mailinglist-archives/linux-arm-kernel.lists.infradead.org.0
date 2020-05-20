Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122F51DC14D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfEwdr9ndyo9W8fDcIc2wTg8iRF9aKrhZqHb6p2hZSE=; b=pLdlG8U0K7wTKp
	tZpXMu948RC+Nz2dtchoxyrzYAQsKhmYAVkeOLM1F6xFtXm3D8WoRPACExfhhK34qPmN+WJPl++d+
	hXXOuMiqQ/hWCSpaTik+9gMMFGWCa22UqpTo5W24OERHJXUduyOHpZo2ku6f+hC0c9L2GVzCgoaxS
	7qYqJ12PumnbQUIfx0UsXqrtBImbU7elk1ad4YXYTOCLiwDPnafWQw1OK0rE8F/ngiYJX48hbDTYV
	y8Z/BGWJoAmg5Y9OIsxR8FgOe6vKan7AUttYi5rPBQvdvxvs1t0wPEVHJhl+7+iV+R4W0+6e9lneb
	kIWKCYFCBlWi5Ja4w0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWBM-00063n-OE; Wed, 20 May 2020 21:23:20 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWBC-00061o-R4; Wed, 20 May 2020 21:23:12 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MOiU5-1jPjHl3NwF-00QDgP; Wed, 20 May 2020 23:23:03 +0200
Received: by mail-qk1-f169.google.com with SMTP id b6so5141324qkh.11;
 Wed, 20 May 2020 14:23:02 -0700 (PDT)
X-Gm-Message-State: AOAM533xv3RHliXHN9havLXi5FJfs7vTxG4Nwg9+8uqPYzbGzoy6B435
 oU57+PoAXxHfAfD9BQT0uPPZN+HCpIvjNfhbdug=
X-Google-Smtp-Source: ABdhPJwZcCZSxDynCH3r3gKmPJPpPeE9FrIMPWva+zbjlW1lcOdkg0GE0sngrt5N6VQ/g7lU1Cjl02NdfnJS0lbfHTc=
X-Received: by 2002:a37:46c9:: with SMTP id t192mr3853110qka.3.1590009781522; 
 Wed, 20 May 2020 14:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200520112523.30995-1-brgl@bgdev.pl>
 <20200520112523.30995-7-brgl@bgdev.pl>
 <CAK8P3a3jhrQ3p1JsqMNMOOnfo9t=rAPWaOAwAdDuFMh7wUtZQw@mail.gmail.com>
 <CAMRc=MeuQk9rFDFGWK0ijsiM-r296cVz9Rth8hWhW5Aeeti_cA@mail.gmail.com>
In-Reply-To: <CAMRc=MeuQk9rFDFGWK0ijsiM-r296cVz9Rth8hWhW5Aeeti_cA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 23:22:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1nhPj6kRhwyXzDK3BGbh66XG6Fmp44QuM1NhFPPBTtPQ@mail.gmail.com>
Message-ID: <CAK8P3a1nhPj6kRhwyXzDK3BGbh66XG6Fmp44QuM1NhFPPBTtPQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:+1SUH5KS1rWl69qYyEzMIWR4iDsiPH34/aB+PyerFSkH6Ap/DF/
 P7S4kbf08CVVFMYlT4i/jqGjGBAfybWwT4QXLpEaOq8Z2wEw0PjxzEF5PMFICeov5dpbXpj
 eNR3lMMDlZN3vOrGZpZxEa8qIqOaiM6TjrGv99cyPtUtRPnYXNOWxNvvYR0T2m55kIX52F1
 LYytxjgg5SXTpfy4PZ9iQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:N5bPJCuntLs=:QmEvbbv8JelmGHLBpdoZBa
 SRVD6+gfBS9VjyVv0AsCg2IEB1zjBOIBlWnu6EojQr9OWRjJwQ0j5PWk8MSBBEe1mZFb3G7f1
 4CtGapX9BPPJiR3iX9jWVuRV6lXQQN7wtIg07azEl2X1dIzqddzdBRwofT9La1CgwP7SebsrB
 SDlB7dOthLqZhdYW8JBwkKBG3Yz/ZJA/ux8k7+Xvf+851S6qYzMTMmOLXJ846S3VboH48sHX4
 fArca49QzMD8V1O8FtkNFP0JeRt1bzxXa9NqyMWS9GSeXYE7EBaW2qsaVjBwbtPyfimsgqyUq
 /kzbotUWv2rwtsbakMcYGPWeCr365EROBEP/DRMe513RPwdaY7u2/OUPjLMG1nc5lAL+lxEpT
 C0t3VafHEkvFcWWB+XWdE0OrneC1gqGwO5D3KPEbCaCG9pzjplbTmyDyPERAPzL8yuggfHywL
 CqrHPMptyy/SucAoL72lLS+gQP8no0llW5aUHsaG6j13srQaJNBBeEO2tCoJv9S8pQsfWrOXG
 vZ3Spw2dqPUgAJEFNGMIuX1Q1wiJ74qoEATC1+WiUe0l8/5NPfDpXLIBlATM9tu/hdo4Gl3BW
 qzsILsxgYemuXwmtrEWM90IDetAFZUupbU0YFwjV4THfQsKXyv5/75XT95BgL2rYn6Ti7LbWJ
 SECGek2H/2CjHQRg9VKlBfA2W6jKyO3Lvm43eHKtvZpH2iC0RRLDJuaEjIVCDeVuaq3Z/sYtb
 R1bOLqdyVe8AMwBQCtka9BE21aV8+EgglYQQGVZLr66BXDkHycIeDJWPoGc4mHoKHO47gOdbT
 C3SsArSAxgZ4qfKcZ7R+/t91LSEU78da8076qfgsaEPd1cMKWY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_142311_190479_7BF0DCB3 
X-CRM114-Status: GOOD (  28.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Networking <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgNzozNSBQTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmds
QGJnZGV2LnBsPiB3cm90ZToKPiDFm3IuLCAyMCBtYWogMjAyMCBvIDE2OjM3IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgoKPiA+IEkganVzdCBub3RpY2VkIGhvdyB0
aGUgbmFtaW5nIG9mIE5FVF9NRURJQVRFS19NQUMgYW5kIE5FVF9NRURJQVRFS19TT0MKPiA+IGZv
ciB0d28gZGlmZmVyZW50IGRyaXZlcnMgZG9pbmcgdGhlIHNhbWUgdGhpbmcgaXMgcmVhbGx5IGNv
bmZ1c2luZy4KPiA+Cj4gPiBNYXliZSBzb21lb25lIGNhbiBjb21lIHVwIHdpdGggYSBiZXR0ZXIg
bmFtZSwgc3VjaCBhcyBvbmUKPiA+IGJhc2VkIG9uIHRoZSBzb2MgaXQgZmlyc3Qgc2hvd2VkIHVw
IGluLgo+ID4KPgo+IFRoaXMgaGFzIGJlZW4gZGlzY3Vzc2VkIHVuZGVyIG9uZSBvZiB0aGUgcHJl
dmlvdXMgc3VibWlzc2lvbnMuCj4gTWVkaWFUZWsgd2FudHMgdG8gdXNlIHRoaXMgSVAgb24gZnV0
dXJlIGRlc2lnbnMgYXMgd2VsbCBhbmQgaXQncwo+IGFscmVhZHkgdXNlZCBvbiBtdWx0aXBsZSBT
b0NzIHNvIHRoZXkgd2FudCB0aGUgbmFtZSB0byBiZSBnZW5lcmljLiBJCj4gYWxzbyBhcmd1ZWQg
dGhhdCB0aGlzIGlzIGEgZHJpdmVyIHN0cm9uZ2x5IHRpZWQgdG8gYSBzcGVjaWZpYwo+IHBsYXRm
b3JtKHMpIHNvIGlmIHNvbWVvbmUgd2FudHMgdG8gY29tcGlsZSBpdCAtIHRoZXkgcHJvYmFibHkg
a25vdwo+IHdoYXQgdGhleSdyZSBkb2luZy4KPgo+IFRoYXQgYmVpbmcgc2FpZDogSSB2ZXJpZmll
ZCB3aXRoIE1lZGlhVGVrIGFuZCB0aGUgbmFtZSBvZiB0aGUgSVAgSSBjYW4KPiB1c2UgaXMgInN0
YXIiIHNvIHRoZXkgcHJvcG9zZWQgIm10ay1zdGFyLWV0aCIuIEkgd291bGQgcGVyc29uYWxseQo+
IG1heWJlIGdvIHdpdGggIm10ay1zdGFyLW1hYyIuIEhvdyBhYm91dCB0aG9zZSB0d28/CgpCb3Ro
IHNlZW0gZmluZSB0byBtZS4gSWYgdGhpcyB3YXMgcHJldmlvdXNseSBkaXNjdXNzZWQsIEkgZG9u
J3Qgd2FudApkbyBmdXJ0aGVyIGJpa2Utc2hlZGRpbmcgYW5kIEknZCB0cnVzdCB5b3UgdG8gcGlj
ayBhIHNlbnNpYmxlIG5hbWUKYmFzZWQgb24gdGhlIGVhcmxpZXIgZGlzY3Vzc2lvbnMuCgo+ID4g
ICsgICAgICAgICAgICAgICAvKiBPbmUgb2YgdGhlIGNvdW50ZXJzIHJlYWNoZWQgMHg4MDAwMDAw
IC0gdXBkYXRlIHN0YXRzIGFuZAo+ID4gPiArICAgICAgICAgICAgICAgICogcmVzZXQgYWxsIGNv
dW50ZXJzLgo+ID4gPiArICAgICAgICAgICAgICAgICovCj4gPiA+ICsgICAgICAgICAgICAgICBp
ZiAodW5saWtlbHkoc3RhdHVzICYgTVRLX01BQ19SRUdfSU5UX1NUU19NSUJfQ05UX1RIKSkgewo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWFjX2ludHJfZGlzYWJsZV9zdGF0cyhw
cml2KTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgc2NoZWR1bGVfd29yaygmcHJpdi0+
c3RhdHNfd29yayk7Cj4gPiA+ICsgICAgICAgICAgICAgICB9Cj4gPiA+ICsgYmVmb3IKPiA+ID4g
KyAgICAgICAgICAgICAgIG10a19tYWNfaW50cl9hY2tfYWxsKHByaXYpOwo+ID4KPiA+IFRoZSBh
Y2sgaGVyZSBuZWVkcyB0byBiZSBkcm9wcGVkLCBvdGhlcndpc2UgeW91IGNhbiBnZXQgZnVydGhl
cgo+ID4gaW50ZXJydXB0cyBiZWZvcmUgdGhlIGJvdHRvbSBoYWxmIGhhcyBoYWQgYSBjaGFuY2Ug
dG8gcnVuLgo+ID4KPgo+IE15IHRoaW5raW5nIHdhcyB0aGlzOiBpZiBJIG1hc2sgdGhlIHJlbGV2
YW50IGludGVycnVwdCAoVFgvUlgKPiBjb21wbGV0ZSkgYW5kIGFjayBpdCByaWdodCBhd2F5LCB0
aGUgc3RhdHVzIGJpdCB3aWxsIGJlIGFzc2VydGVkIG9uCj4gdGhlIG5leHQgcGFja2V0IHJlY2Vp
dmVkL3NlbnQgYnV0IHRoZSBwcm9jZXNzIHdvbid0IGdldCBpbnRlcnJ1cHRlZAo+IGFuZCB3aGVu
IEkgdW5tYXNrIGl0LCBpdCB3aWxsIGZpcmUgcmlnaHQgYXdheSBhbmQgSSB3b24ndCBoYXZlIHRv
Cj4gcmVjaGVjayB0aGUgc3RhdHVzIHJlZ2lzdGVyLiBJIG5vdGljZWQgdGhhdCBpZiBJIGFjayBp
dCBhdCB0aGUgZW5kIG9mCj4gbmFwaSBwb2xsIGNhbGxiYWNrLCBJIGVuZCB1cCBtaXNzaW5nIGNl
cnRhaW4gVFggY29tcGxldGUgaW50ZXJydXB0cwo+IGFuZCBlbmQgdXAgc2VlaW5nIGEgbG90IG9m
IHJldHJhbnNtaXNzaW9ucyBldmVuIGlmIEkgcmVyZWFkIHRoZSBzdGF0dXMKPiByZWdpc3Rlci4g
SSdtIG5vdCB5ZXQgc3VyZSB3aGVyZSB0aGlzIHJhY2UgaGFwcGVucy4KClJpZ2h0LCBJIHNlZS4g
SWYgeW91IGp1c3QgYWNrIGF0IHRoZSBlbmQgb2YgdGhlIHBvbGwgZnVuY3Rpb24sIHlvdSBuZWVk
CnRvIGNoZWNrIHRoZSByaW5ncyBhZ2FpbiB0byBlbnN1cmUgeW91IGRpZCBub3QgbWlzcyBhbiBp
bnRlcnJ1cHQKYmV0d2VlbiBjaGVja2luZyBvYnNlcnZpbmcgYm90aCByaW5ncyB0byBiZSBlbXB0
eSBhbmQgdGhlIGlycS1hY2suCgpJIHN1c3BlY3QgaXQncyBzdGlsbCBjaGVhcGVyIHRvIGNoZWNr
IHRoZSB0d28gcmluZ3Mgd2l0aCBhbiB1bmNhY2hlZApyZWFkIGZyb20gbWVtb3J5IHRoYW4gdG8g
dG8gZG8gdGhlIHJlYWQtbW9kaWZ5LXdyaXRlIG9uIHRoZSBtbWlvLApidXQgeW91J2QgaGF2ZSB0
byBtZWFzdXJlIHRoYXQgdG8gYmUgc3VyZS4KCj4gPiA+ICtzdGF0aWMgdm9pZCBtdGtfbWFjX3R4
X2NvbXBsZXRlX2FsbChzdHJ1Y3QgbXRrX21hY19wcml2ICpwcml2KQo+ID4gPiArewo+ID4gPiAr
ICAgICAgIHN0cnVjdCBtdGtfbWFjX3JpbmcgKnJpbmcgPSAmcHJpdi0+dHhfcmluZzsKPiA+ID4g
KyAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRldiA9IHByaXYtPm5kZXY7Cj4gPiA+ICsgICAg
ICAgaW50IHJldCwgcGt0c19jb21wbCwgYnl0ZXNfY29tcGw7Cj4gPiA+ICsgICAgICAgYm9vbCB3
YWtlID0gZmFsc2U7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBtdGtfbWFjX2xvY2socHJpdik7Cj4g
PiA+ICsKPiA+ID4gKyAgICAgICBmb3IgKHBrdHNfY29tcGwgPSAwLCBieXRlc19jb21wbCA9IDA7
Owo+ID4gPiArICAgICAgICAgICAgcGt0c19jb21wbCsrLCBieXRlc19jb21wbCArPSByZXQsIHdh
a2UgPSB0cnVlKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBpZiAoIW10a19tYWNfcmluZ19kZXNj
c19hdmFpbGFibGUocmluZykpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICByZXQgPSBtdGtfbWFjX3R4X2NvbXBsZXRlX29u
ZShwcml2KTsKPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gKyAgICAgICB9Cj4gPiA+ICsKPiA+ID4gKyAg
ICAgICBuZXRkZXZfY29tcGxldGVkX3F1ZXVlKG5kZXYsIHBrdHNfY29tcGwsIGJ5dGVzX2NvbXBs
KTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGlmICh3YWtlICYmIG5ldGlmX3F1ZXVlX3N0b3BwZWQo
bmRldikpCj4gPiA+ICsgICAgICAgICAgICAgICBuZXRpZl93YWtlX3F1ZXVlKG5kZXYpOwo+ID4g
PiArCj4gPiA+ICsgICAgICAgbXRrX21hY19pbnRyX2VuYWJsZV90eChwcml2KTsKPiA+Cj4gPiBO
byBuZWVkIHRvIGFjayB0aGUgaW50ZXJydXB0IGhlcmUgaWYgbmFwaSBpcyBzdGlsbCBhY3RpdmUu
IEp1c3QKPiA+IGFjayBib3RoIHJ4IGFuZCB0eCB3aGVuIGNhbGxpbmcgbmFwaV9jb21wbGV0ZSgp
Lgo+ID4KPiA+IFNvbWUgZHJpdmVycyBhY3R1YWxseSB1c2UgdGhlIG5hcGkgYnVkZ2V0IGZvciBi
b3RoIHJ4IGFuZCB0eDoKPiA+IGlmIHlvdSBoYXZlIG1vcmUgdGhhbiAnYnVkZ2V0JyBjb21wbGV0
ZWQgdHggZnJhbWVzLCByZXR1cm4KPiA+IGVhcmx5IGZyb20gdGhpcyBmdW5jdGlvbiBhbmQgc2tp
cCB0aGUgbmFwaV9jb21wbGV0ZSBldmVuCj4gPiB3aGVuIGxlc3MgdGhhbiAnYnVkZ2V0JyByeCBm
cmFtZXMgaGF2ZSBhcnJpdmVkLgo+ID4KPgo+IElJUkMgSmFrdWIgc2FpZCB0aGF0IHRoZSBtb3N0
IHNlZW4gYXBwcm9hY2ggaXMgdG8gZnJlZSBhbGwgVFggZGVzY3MKPiBhbmQgcmVjZWl2ZSB1cCB0
byBidWRnZXQgcGFja2V0cywgc28gdGhpcyBpcyB3aGF0IEkgZGlkLiBJIHRoaW5rIGl0Cj4gbWFr
ZXMgdGhlIG1vc3Qgc2Vuc2UuCgpPaywgaGUncyBwcm9iYWJseSByaWdodCB0aGVuLgoKTXkgaWRl
YSB3YXMgdGhhdCB0aGUgZG1hX3VubWFwIG9wZXJhdGlvbiBmb3IgdGhlIHR4IGNsZWFudXAgaXMK
cmF0aGVyIGV4cGVuc2l2ZSBvbiBjaGlwcyB3aXRob3V0IGNhY2hlLWNvaGVyZW50IERNQSwgc28g
eW91Cm1pZ2h0IG5vdCB3YW50IHRvIGRvIHRvbyBtdWNoIG9mIGl0IGJ1dCByYXRoZXIgZG8gaXQg
aW4gcmVhc29uYWJseQpzaXplZCBiYXRjaGVzLiBJdCB3b3VsZCBhbHNvIGF2b2lkIHRoZSBjYXNl
IHdoZXJlIHlvdSByZW5hYmxlIHRoZQp0eC1jb21wbGV0ZSBpbnRlcnJ1cHQgYWZ0ZXIgY2xlYW5p
bmcgdGhlIGFscmVhZHktc2VudCBmcmFtZXMgYnV0CnRoZW4gaW1tZWRpYXRlbHkgZ2V0IGFuIGly
cSB3aGVuIHRoZSBuZXh0IGZyYW1lIHRoYXQgaXMgYWxyZWFkeQpxdWV1ZWQgaXMgZG9uZS4KClRo
aXMgcHJvYmFibHkgZGVwZW5kcyBvbiB0aGUgc3BlY2lmaWMgd29ya2xvYWQgd2hpY2ggb25lIHdv
cmtzCmJldHRlciBoZXJlLgoKICAgICAgICAgQXJuZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
