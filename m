Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA51F4FC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWS6oYzFftUpwN9G57qFBLYQvviaAHCWkwt/P19klHI=; b=m6njL9gLfJhK/o
	xRpVHX/joEIzY8XrrYUC1c139WlL9mTAS4zQYvqFN42Zoxsk+qCx79bGmai+n6K5Of1hMiOVL4tg1
	/3WqbGURcgM5rPdM11omD7JilaJktVyGOqDzlZLVR5zRlBCl5NvYmkPhXMmipxyqyKPIl4FJyPF0f
	2+3KxxBRg3+ClBnmSuGjHacJD6EI/qV/xzhXuAEHPWJTiQiNFNHf8avMsfxrf6l5vv99ZynPzxpCD
	5tHF/rOj5DoOG0R3CEC6uOiE7s+1Uyf3cLuhUm4Uk7bog+mO65LWawcpw88troJ6q1ljdmbsl6Hy7
	O1M5l4APEc6r5CtswcWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivb3-0002ds-D7; Wed, 10 Jun 2020 07:56:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivat-0002dV-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:56:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id k26so877255wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 00:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Cjs3WhIrv+bZ6tn9UnNffYVU8+Ox2fEIN+JVYQ0tTkQ=;
 b=hYehp6XskwVDZoGE5ageQYvHlfDRosdHG6iYynruU1WqmbKbXefVWCnOKYS8Uh1fwG
 Ieijl7uUSji9Zdxkh7TeS/tMfiqEdwSx5IohccvO5W6XGiQLULHFi30N3+oPGSts+oPh
 PQ/hitEMIo40Zaoi36s0Jfn1ThnSezQMlenC+D9osIYBJ1Van6hfMeZP8OPEV2ietICv
 oldT+A22CuexgCG9cM3mXYKbrzmtA2Pf2pspXcpOx2j/ZaZzIoT6EpPhx/28u48D2BBX
 D7y8l6udc4EsrQJcpl6guFRmu3cpVFmH8r0txjOLugD/nif96/2cI3cicci7RAgSLdqW
 ol7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Cjs3WhIrv+bZ6tn9UnNffYVU8+Ox2fEIN+JVYQ0tTkQ=;
 b=htwgAGair/r+mrBooBzlrZlF2Qns6Pc1azTZvLgAR59dYR3+v8MAhbAHU7XCvn4bm6
 4HZBAg1xyaweMRS5ibmncitEO0OEdYduCr73bEer7YHlqi1a+p+zDi0Z80VHqPlWXnsY
 nbMltteUsVInawbukIqQtw6jsFkDM45qTdq8dH1mX89W3ATjPV3IUKG7SWZsGg3sIy7S
 g31aYh6FF0CYTdEuO283+CjKC1hkxuPuWTPHIwpDA8eIJ9TTh8Drrpcb1hdPAPnS1yCq
 bIxmmD8dBMcI8dEEDiSZ8ReqFZAURs+i4777GMUZvJAHq9Cfu0pbN5mJiOw/CALRNnnM
 GU/Q==
X-Gm-Message-State: AOAM531klHv1JTmq9dG4kmH/i9nuG0IUF20UBBY9fv5KUGTF9QB7ZT46
 RpqQUszb9/UDiigdi1cX8HMXng==
X-Google-Smtp-Source: ABdhPJylShHmodnuyhsFhzN3mLes6/LNfzgEosdeRQ8I8kMe2B7dQDQ69G3lIdZnvQwR99SfqAy50w==
X-Received: by 2002:a7b:cc82:: with SMTP id p2mr1841279wma.101.1591775777865; 
 Wed, 10 Jun 2020 00:56:17 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id k26sm5924954wmi.27.2020.06.10.00.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 00:56:17 -0700 (PDT)
Date: Wed, 10 Jun 2020 08:56:15 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200610075615.GT4106@dell>
References: <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
 <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc>
 <20200610071940.GS4106@dell>
 <f7b2b690750edd022000ab56d2f58154@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7b2b690750edd022000ab56d2f58154@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_005619_796470_769965B1 
X-CRM114-Status: GOOD (  29.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0x
MCAwOToxOSwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBXZWQsIDEwIEp1biAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gPiBBbSAyMDIwLTA2LTA5IDIxOjQ1LCBzY2hyaWViIExlZSBK
b25lczoKPiA+ID4gPiBPbiBUdWUsIDA5IEp1biAyMDIwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+
ID4gPiA+ID4gPiBXZSBkbyBub3QgbmVlZCBhICdzaW1wbGUtcmVnbWFwJyBzb2x1dGlvbiBmb3Ig
eW91ciB1c2UtY2FzZS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU2luY2UgeW91ciBkZXZpY2Un
cyByZWdpc3RlcnMgYXJlIHNlZ3JlZ2F0ZWQsIGp1c3Qgc3BsaXQgdXAgdGhlCj4gPiA+ID4gPiA+
IHJlZ2lzdGVyIG1hcCBhbmQgYWxsb2NhdGUgZWFjaCBzdWItZGV2aWNlIHdpdGggaXQncyBvd24g
c2xpY2UuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSBkb24ndCBnZXQgaXQsIGNvdWxkIHlvdSBtYWtl
IGEgZGV2aWNlIHRyZWUgZXhhbXBsZSBmb3IgbXkKPiA+ID4gPiA+IHVzZS1jYXNlPyAoc2VlIGFs
c28gYWJvdmUpCj4gPiA+ID4KPiA+ID4gPiAgICAgJmkyY2J1cyB7Cj4gPiA+ID4gICAgICAgICBt
ZmQtZGV2aWNlQDEwIHsKPiA+ID4gPiAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1t
ZmQiOwo+ID4gPiA+ICAgICAgICAgICAgIHJlZyA9IDwxMD47Cj4gPiA+ID4KPiA+ID4gPiAgICAg
ICAgICAgICBzdWItZGV2aWNlQDEwIHsKPiA+ID4gPiAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJ2ZW5kb3Isc3ViLWRldmljZSI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgIHJlZyA9IDwx
MD47Cj4gPiA+ID4gICAgICAgICAgICAgfTsKPiA+ID4gPiAgICB9Owo+ID4gPiA+Cj4gPiA+ID4g
VGhlIFJlZ21hcCBjb25maWcgd291bGQgYmUgcHJlc2VudCBpbiBlYWNoIG9mIHRoZSBjaGlsZCBk
ZXZpY2VzLgo+ID4gPiA+Cj4gPiA+ID4gRWFjaCBjaGlsZCBkZXZpY2Ugd291bGQgY2FsbCBkZXZt
X3JlZ21hcF9pbml0X2kyYygpIGluIC5wcm9iZSgpLgo+ID4gPiAKPiA+ID4gQWgsIEkgc2VlLiBJ
ZiBJJ20gbm90IHdyb25nLCB0aGlzIHN0aWxsIG1lYW5zIHRvIGNyZWF0ZSBhbiBpMmMKPiA+ID4g
ZGV2aWNlIGRyaXZlciB3aXRoIHRoZSBuYW1lICJzaW1wbGUtbWZkIi4KPiA+IAo+ID4gWWVzLCBp
dCBkb2VzLgo+ID4gCj4gPiA+IEJlc2lkZXMgdGhhdCwgSSBkb24ndCBsaWtlIHRoaXMsIGJlY2F1
c2U6Cj4gPiA+ICAtIFJvYiBhbHJlYWR5IGV4cHJlc3NlZCBpdHMgY29uY2VybnMgd2l0aCAic2lt
cGxlLW1mZCIgYW5kIHNvIG9uLgo+ID4gCj4gPiBXaGVyZSBkaWQgdGhpcyB0YWtlIHBsYWNlPyAg
SSdkIGxpa2UgdG8gcmVhZCB1cCBvbiB0aGlzLgo+IAo+IEluIHRoaXMgdGhyZWFkOgo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAyMDA2MDQyMTEwMzkuMTI2ODkt
MS1taWNoYWVsQHdhbGxlLmNjL1QvI20xNmZkYmE1OTYyMDY5ZTdjZDRhYTgxNzU4MmVlMzU4Yzlm
ZTJlY2JmCj4gCj4gPiAKPiA+ID4gIC0geW91IG5lZWQgdG8gZHVwbGljYXRlIHRoZSBjb25maWcg
aW4gZWFjaCBzdWIgZGV2aWNlCj4gPiAKPiA+IFlvdSBjYW4gaGF2ZSBhIHNoYXJlIGEgc2luZ2xl
IGNvbmZpZy4KPiA+IAo+ID4gPiAgLSB3aGljaCBhbHNvIG1lYW5zIHlvdSBhcmUgcmVzdHJpY3Rp
bmcgdGhlIHN1YiBkZXZpY2VzIHRvIGJlCj4gPiA+ICAgIGkyYyBvbmx5ICh1bmxlc3MgeW91IGlt
cGxlbWVudCBhbmQgZHVwbGljYXRlIG90aGVyIHJlZ21hcCBjb25maWdzLAo+ID4gPiAgICB0b28p
LiBGb3IgdGhpcyBkcml2ZXIsIFNQSSBhbmQgTU1JTyBtYXkgYmUgdmlhYmxlIG9wdGlvbnMuCj4g
PiAKPiA+IFlvdSBjb3VsZCBhbHNvIGhhdmUgYSBzaGFyZWQgaW1wbGVtZW50YXRpb24gdG8gY2hv
b3NlIGJldHdlZW4gZGlmZmVyZW50Cj4gPiBidXNzZXMuCj4gCj4gVGhlbiB3aGF0IGlzIHRoZSBk
aWZmZXJlbmNlIGJldHdlZW4gdG8gaGF2ZSB0aGlzIHNoYXJlZCBjb25maWcgaW4gdGhlCj4gcGFy
ZW50IGRyaXZlciBvbmx5IGFuZCB1c2UgdGhlIGZ1bmN0aW9ucyB3aGljaCBhcmUgYWxyZWFkeSB0
aGVyZSwgaS5lLgo+IGRldl9nZXRfcmVnbWFwKHBhcmVudCkuIEJ1dCBzZWUsIGJlbG93LCBJJ2xs
IHdhaXQgd2l0aCB3aGF0IHlvdSdyZQo+IGNvbWluZyB1cC4KClRoZSBkaWZmZXJlbmNlIGlzIHRo
ZSBvbWlzc2lvbiBvZiBhbiBvdGhlcndpc2UgcG9pbnRsZXNzL3N1cGVyZmx1b3VzCmRyaXZlci4g
IEFjdHVhbGx5LCBpdCdzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIG9taXNzaW9uIG9mIDEw
CnBvaW50bGVzcyBkcml2ZXJzIQoKPiA+ID4gVGh1cywgSSdkIHJhdGhlciBpbXBsZW1lbnQgYSBz
aW1wbGUtbWZkLmMgd2hpY2ggaW1wbGVtZW50IGEgY29tbW9uCj4gPiA+IEkyQyBkcml2ZXIgZm9y
IG5vdyBhbmQgcG9wdWxhdGUgaXRzIGNoaWxkcmVuIHVzaW5nCj4gPiA+IGRldm1fb2ZfcGxhdGZv
cm1fcG9wdWxhdGUoKS4gVGhpcyBjb3VsZCBiZSBleHRlbmRlZCB0byBzdXBwb3J0IG90aGVyCj4g
PiA+IHR5cGUgb2YgcmVnbWFwcyBsaWtlIFNQSSBpbiB0aGUgZnV0dXJlLgo+ID4gPiAKPiA+ID4g
QWxzbyBzb21lIE1GRCBkcml2ZXJzIGNvdWxkIGJlIG1vdmVkIHRvIHRoaXMsIGEgbGlrZWx5IGNh
bmRpZGF0ZSBpcwo+ID4gPiB0aGUgc21zYy1lY2UxMDk5LmMuIEFsdGhvdWdoIEkgZG9uJ3QgcmVh
bGx5IHVuZGVyc3RhbmQgaXRzIHB1cnBvc2UsCj4gPiA+IGlmIGRvbid0IGhhdmUgQ09ORklHX09G
Lgo+ID4gPiAKPiA+ID4gSnVkZ2luZyBmcm9tIHRoZSBleGlzdGluZyBjb2RlLCB0aGlzIHNpbXBs
ZS1tZmQuYyB3b3VsZG4ndCBqdXN0IGJlCj4gPiA+ICJhIGxpc3Qgb2YgY29tcGF0aWJsZSIgc3Ry
aW5ncyBidXQgYWxzbyBhZGRpdGlvbmFsIHF1aXJrcyBhbmQgdHdlYWtzCj4gPiA+IGZvciBwYXJ0
aWN1bGFyIGRldmljZXMgaW4gdGhpcyBsaXN0Lgo+ID4gCj4gPiBIb2xkIG9mZiBvbiB0aGUgc2lt
cGxlLW1mZC5jIGlkZWEsIGFzIEknbSBub3QgdGFrZW4gYnkgaXQgeWV0IGFuZAo+ID4gd291bGRu
J3Qgd2FudCB5b3UgdG8gd2FzdGUgeW91ciB0aW1lLiAgSSBoYXZlIGFub3RoZXIgaWRlYSB3aGlj
aCB3b3VsZAo+ID4gaGVscC4gIEdpdmUgbWUgYSBmZXcgZGF5cyB0byBwdXQgc29tZXRoaW5nIHRv
Z2V0aGVyLgo+IAo+IFN1cmUuIEknbSBqdXN0IGdsYWQgdGhlcmUgaXMgbm93IGEgZGlzY3Vzc2lv
biBhYm91dCB0aGlzIGlzc3VlLgoKSXQncyB2ZXJ5IG11Y2ggaW4gbXkgbWluZC4KCkkndmUgYmVl
biBtZWFuaW5nIHRvIGRvIHNvbWV0aGluZyBhYm91dCBpdCBmb3IgcXVpdGUgc29tZSB0aW1lLgoK
LS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9w
ZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
