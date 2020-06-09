Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CCE1F3450
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 08:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OopDE0Ldruj7h+icAX6tAQFRdiNLgy8FVjGLKwn/ooA=; b=LATWgluhD2Xyyx
	TUIjRJNx/UBJV6cfP7GuiAHf6BcgfIr/agE/WF+AVD6lDJH6UPOzGDNIV3qg+iExWl3IVLv22/LMx
	UavpGAYUnGJ0K7UFBvpux2RBSUL2Yxuir5y85eOh+uTJnnlIuy/8PvuwdzwhXww4NhhN2K/+vML1K
	SaUYyJDsqdDiA77Uw5FOA0ZXUDCcWHs20kDITssBm+JhNrLwQV6+rYEco04LE1qCPhia8rMrtdHMP
	+0G1EMgJwPzaQJ5rtkN+wlXBs6EHPh04YJMSXj9iz3Ac5oM51kc22Y4Bf45iVxIWRQXwr3ZmSSWAJ
	ialek46lZFXUFtXKV5LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiY32-0003Ww-H5; Tue, 09 Jun 2020 06:47:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiY2v-0003WI-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 06:47:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id k26so1885698wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 23:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AwtDdz17DFDmRBPEGuRAOpx0vtQ2m9UoLoRBSQqsyp0=;
 b=f0FgM4Vro6vfvlNeSVfc1iBcrhCl+E0gwx58KhDVXNN908yZbqUz+mMshmPtCEnlmR
 VwW2GNhT56ZYbGOa1IoMFhQ73ta0IpXBTP+UnYFqFIqeYSD8Q+KmHWAe9EUQkVP/Ti54
 2XsWxtT9M+slp4+imVCL4xcL/NqM/6mxNI8M3B+BWoOxSuhJuafxLu/sZkpSqDM/DOJ/
 rGB3oVrbVqO7RWvp+yWo1R+iT3pmyikiZZmMzq6MGzQC6rPJSiovGWM2xWLq4hKl1H0Z
 /bougyij11X7OPIzVjdnCIsdwnbNAwC3aiABpVHKE4o5DP2Fj70XHrncpk+OoU1zAf64
 asXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AwtDdz17DFDmRBPEGuRAOpx0vtQ2m9UoLoRBSQqsyp0=;
 b=aYnTcmNE2nBrAQDo4HxSlRx1TldQOI7MsUrkCzCxltudVKKveR5HHuE2JYBthz7ppp
 m4NSuMFj1WGrUzw5Ow3+9SenB0EH5+ljj3Au2fJIWf0joy7PpCObnm8K9tyBtbIphaYL
 sFFQz7lwoVdAlS+ZZYqfTm2nKw+Zzoigp4q3ZRgIcxJoCVZQrd28Ze1+yVswwtjlEXE/
 lI44c1ZIOhBwkb//OSBeqf8R1zSNUNNEIySMb6+bVNrn++SFFeXinJAWa8niM1objHzL
 TpDBS7ilgk4QoWFLYd69v0oVxaByzMnSKmuqNYZBYpg8Kg/AYMtXqwhTmXqJXyLsJkh6
 pKAg==
X-Gm-Message-State: AOAM533XlPZCSAW2AzWBq9PvuI29e3uASfFx+r2w+6DljtFhwYtLuruz
 CTc/OBWOWw+Kp10P4H87c69hXQ==
X-Google-Smtp-Source: ABdhPJyLJRU7T7hP/+Yp6Xb+G+8dn3OI3DNS03pAkr/nWuDA1Spa9xboardProc7fDE8512XGawIOA==
X-Received: by 2002:a7b:c7d8:: with SMTP id z24mr2371607wmk.28.1591685258604; 
 Mon, 08 Jun 2020 23:47:38 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id x205sm1818570wmx.21.2020.06.08.23.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 23:47:37 -0700 (PDT)
Date: Tue, 9 Jun 2020 07:47:35 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609064735.GH4106@dell>
References: <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_234741_984133_4AB2101F 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

T24gTW9uLCAwOCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0w
OCAyMDo1Niwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBNb24sIDA4IEp1biAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gCj4gPiA+IEFtIDIwMjAtMDYtMDggMTI6MDIsIHNjaHJpZWIg
QW5keSBTaGV2Y2hlbmtvOgo+ID4gPiA+ICtDYzogc29tZSBJbnRlbCBwZW9wbGUgV1JUIG91ciBp
bnRlcm5hbCBkaXNjdXNzaW9uIGFib3V0IHNpbWlsYXIKPiA+ID4gPiBwcm9ibGVtIGFuZCBzb2x1
dGlvbnMuCj4gPiA+ID4KPiA+ID4gPiBPbiBNb24sIEp1biA4LCAyMDIwIGF0IDExOjMwIEFNIExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gT24gU2F0LCAw
NiBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+ID4gQW0gMjAyMC0wNi0w
NiAxMzo0Niwgc2NocmllYiBNYXJrIEJyb3duOgo+ID4gPiA+ID4gPiA+IE9uIEZyaSwgSnVuIDA1
LCAyMDIwIGF0IDEwOjA3OjM2UE0gKzAyMDAsIE1pY2hhZWwgV2FsbGUgd3JvdGU6Cj4gPiA+ID4g
PiA+ID4gPiBBbSAyMDIwLTA2LTA1IDEyOjUwLCBzY2hyaWViIE1hcmsgQnJvd246Cj4gPiA+ID4K
PiA+ID4gPiAuLi4KPiA+ID4gPgo+ID4gPiA+ID4gUmlnaHQuICBJJ20gc3VnZ2VzdGluZyBhIG1l
YW5zIHRvIGV4dHJhcG9sYXRlIGNvbXBsZXggc2hhcmVkIGFuZAo+ID4gPiA+ID4gc29tZXRpbWVz
IGludGVydHdpbmVkIGJhdGNoZXMgb2YgcmVnaXN0ZXIgc2V0cyB0byBiZSBjb25zdW1lZCBieQo+
ID4gPiA+ID4gbXVsdGlwbGUgKHN1Yi0pZGV2aWNlcyBzcGFubmluZyBkaWZmZXJlbnQgc3Vic3lz
dGVtcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBY3R1YWxseSBzY3JhcCB0aGF0LiAgVGhlIG1vc3Qg
Y29tbW9uIGNhc2UgSSBzZWUgaXMgYSBzaW5nbGUgUmVnbWFwCj4gPiA+ID4gPiBjb3ZlcmluZyBh
bGwgY2hpbGQtZGV2aWNlcy4KPiA+ID4gPgo+ID4gPiA+IFllcywgYmVjYXVzZSBvZnRlbiB3ZSBu
ZWVkIGEgc3luY2hyb25pemF0aW9uIGFjcm9zcyB0aGUgZW50aXJlIGFkZHJlc3MKPiA+ID4gPiBz
cGFjZSBvZiB0aGUgKHBhcmVudCkgZGV2aWNlIGluIHF1ZXN0aW9uLgo+ID4gPiA+Cj4gPiA+ID4g
PiAgSXQgd291bGQgYmUgZ3JlYXQgaWYgdGhlcmUgd2FzIGEgd2F5IGluCj4gPiA+ID4gPiB3aGlj
aCB3ZSBjb3VsZCBtYWtlIGFuIGFzc3VtcHRpb24gdGhhdCB0aGUgZW50aXJlIHJlZ2lzdGVyIGFk
ZHJlc3MKPiA+ID4gPiA+IHNwYWNlIGZvciBhICd0YWdnZWQnIChNRkQpIGRldmljZSBpcyB0byBi
ZSBzaGFyZWQgKHZpYSBSZWdtYXApIGJldHdlZW4KPiA+ID4gPiA+IGVhY2ggb2YgdGhlIGRldmlj
ZXMgZGVzY3JpYmVkIGJ5IGl0cyBjaGlsZC1ub2Rlcy4gIFByb2JhYmx5IGJ5IHBpY2tpbmcKPiA+
ID4gPiA+IHVwIG9uIHRoZSAnc2ltcGxlLW1mZCcgY29tcGF0aWJsZSBzdHJpbmcgaW4gdGhlIGZp
cnN0IGluc3RhbmNlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFJvYiwgaXMgdGhlIGFib3ZlIHNvbWV0
aGluZyB5b3Ugd291bGQgY29udGVtcGxhdGU/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gTWljaGFlbCwg
ZG8geW91ciByZWdpc3RlciBhZGRyZXNzZXMgb3ZlcmxhcCBpLmUuIGFyZSB0aGV5IGludGVybWlu
Z2xlZAo+ID4gPiA+ID4gd2l0aCBvbmUgYW5vdGhlcj8gIERvIG11bHRpcGxlIGNoaWxkIGRldmlj
ZXMgbmVlZCBhY2Nlc3MgdG8gdGhlIHNhbWUKPiA+ID4gPiA+IHJlZ2lzdGVycyBpLmUuIGFyZSB0
aGV5IHNoYXJlZD8KPiA+ID4gCj4gPiA+IE5vIHRoZXkgZG9uJ3Qgb3ZlcmxhcCwgZXhwZWN0IGZv
ciBtYXliZSB0aGUgdmVyc2lvbiByZWdpc3Rlciwgd2hpY2ggaXMKPiA+ID4ganVzdCB0aGVyZSBv
bmNlIGFuZCBub3QgcGVyIGZ1bmN0aW9uIGJsb2NrLgo+ID4gCj4gPiBUaGVuIHdoYXQncyBzdG9w
cGluZyB5b3UgaGF2aW5nIGVhY2ggZGV2aWNlIFJlZ21hcCB0aGVpciBvd24gc3BhY2U/Cj4gCj4g
QmVjYXVzZSBpdHMganVzdCBvbmUgSTJDIGRldmljZSwgQUZBSUsgdGhhdHMgbm90IHBvc3NpYmxl
LCByaWdodD8KCk5vdCBzdXJlIHdoYXQgKGlmIGFueSkgdGhlIHJlc3RyaWN0aW9ucyBhcmUuCgpJ
IGNhbid0IHRoaW5rIG9mIGFueSByZWFzb25zIHdoeSBub3QsIG9mZiB0aGUgdG9wIG9mIG15IGhl
YWQuCgpEb2VzIFJlZ21hcCBvbmx5IGRlYWwgd2l0aCBzaGFyZWQgYWNjZXNzZXMgZnJvbSBtdWx0
aXBsZSBkZXZpY2VzCmFjY2Vzc2luZyBhIHNpbmdsZSByZWdpc3RlciBtYXAsIG9yIGNhbiBpdCBh
bHNvIGhhbmRsZSBtdWx0aXBsZQpkZXZpY2VzIGNvbW11bmljYXRpbmcgb3ZlciBhIHNpbmdsZSBJ
MkMgY2hhbm5lbD8KCk9uZSBmb3IgTWFyayBwZXJoYXBzLgoKPiA+IFRoZSBpc3N1ZXMgSSB3aXNo
IHRvIHJlc29sdmUgdXNpbmcgJ3NpbXBsZS1tZmQnIGFyZSB3aGVuIHN1Yi1kZXZpY2VzCj4gPiBy
ZWdpc3RlciBtYXBzIG92ZXJsYXAgYW5kIGludGVydHdpbmUuCgpbLi4uXQoKPiA+ID4gPiA+IFdo
YXQgZG8gdGhlc2UgYml0cyBjb25maWd1cmU/Cj4gPiA+IAo+ID4gPiAtIGhhcmR3YXJlIHN0cmFw
cGluZ3Mgd2hpY2ggaGF2ZSB0byBiZSB0aGVyZSBiZWZvcmUgdGhlIGJvYXJkIHBvd2Vycwo+ID4g
PiB1cCwKPiA+ID4gICBsaWtlIGNsb2NraW5nIG1vZGUgZm9yIGRpZmZlcmVudCBTZXJEZXMgc2V0
dGluZ3MKPiA+ID4gLSAia2VlcC1pbi1yZXNldCIgYml0cyBmb3Igb25ib2FyZCBwZXJpcGhlcmFs
cyBpZiB5b3Ugd2FudCB0byBzYXZlCj4gPiA+IHBvd2VyCj4gPiA+IC0gZGlzYWJsZSB3YXRjaGRv
ZyBiaXRzICh0aGVyZSBpcyBhIHdhdGNoZG9nIHdoaWNoIGlzIGFjdGl2ZSByaWdodAo+ID4gPiBm
cm9tCj4gPiA+ICAgdGhlIHN0YXJ0IGFuZCBzdXBlcnZpc2VzIHRoZSBib290bG9hZGVyIHN0YXJ0
IGFuZCBzd2l0Y2hlcyB0bwo+ID4gPiBmYWlsc2FmZQo+ID4gPiAgIG1vZGUgaWYgaXQgd2Fzbid0
IHN1Y2Nlc3NmdWxseSBzdGFydGVkKQo+ID4gPiAtIHNwZWNpYWwgYm9vdCBtb2RlcywgbGlrZSBl
TU1DLCBldGMuCj4gPiA+IAo+ID4gPiBUaGluayBvZiBpdCBhcyBhIDE2Yml0IGNvbmZpZ3VyYXRp
b24gd29yZC4KPiA+IAo+ID4gQW5kIHlvdSB3aXNoIGZvciB1c2VycyB0byBiZSBhYmxlIHRvIHZp
ZXcgdGhlc2UgYXQgcnVuLXRpbWU/Cj4gCj4gQW5kIGVzcC4gY2hhbmdlIHRoZW0uCj4gCj4gPiBD
YW4gdGhleSBhZGFwdCBhbnkgb2YgdGhlbSBvbi10aGUtZmx5IG9yIHdpbGwgdGhlIGJlIFJPPwo+
IAo+IFRoZXkgYXJlIFIvVyBidXQgb25seSB3aWxsIG9ubHkgYWZmZWN0IHRoZSBib2FyZCBiZWhh
dmlvciBhZnRlciBhIHJlc2V0LgoKSSBzZWUuICBNYWtlcyBzZW5zZS4gIFRoaXMgaXMgYm9hcmQg
Y29udHJvbGxlciB0ZXJyaXRvcnkuICBQZXJoYXBzCnN1aXRhYmxlIGZvciBpbmNsdXNpb24gaW50
byBkcml2ZXJzL3NvYyBvciBkcml2ZXJzL3BsYXRmb3JtLgoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZh
Y2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
