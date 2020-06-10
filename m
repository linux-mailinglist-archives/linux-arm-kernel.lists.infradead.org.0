Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316A81F5AF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdbuVmCWyOYO1Zk1Z5bYvQb56fPpckmVcVNVrBFxo3I=; b=MjUrOmwyuGnl+g
	AXSO6nUbp4W/1OZht8c/ueHuYgaah2Xy4v8scP/66+NAeJgNAC5pvU3HqQSe8kqs8uNvtmiPTbm2y
	OiZsS6Avo8k0z1pyN+/KN90vf6TzLIL+1BfsdGxkUW3Dyp88frbPTra29ZhTS2q+dUBTa2YKKry9L
	z3fa3TIC33vtpz9jjzhYPSbPIIaepBnF3gS5yuTPHyJXjInVk/mGQ/jtPPqPsUj6ujtfpw+0KWyID
	Kz24YZKx560P5ZNlEChDtkxI7n+6XMsU6+4ojJidCmyfq5GqMDjZfQXqxl8jKGteNcquHW2p5M99H
	R0fCdIWy66L3bpAWkmqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj53y-0002HI-Te; Wed, 10 Jun 2020 18:02:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj53n-0002Gl-Oc
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:02:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id k26so2666253wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JxeiI81YmGg5d9U0C/O9qY0Fd0/ZtRnG2PDA0HglqPI=;
 b=a/0EIHUrn6R4n3hmim8fYaSU+3VEc6XzE/W9OBdliAF/zvveloGdlLfeLyj/O+g0S+
 xtGgV00xUPkUAOEq/5grpicbBu7iVxTzPCJLDkCVX4eExpPDvDyft+HwHi6O6t6ksH3Y
 gwTO7zIdQuRfQxyrmebXQg9q0Ji4x4FAbf0y6TrEfSfCWIculPyuWE6YNUT6KQW8+agX
 kd9q7mNOJoM/eU9Ca7bX4t6jq0Dy8hfpfOoAwmzi2B+UJN2Mip2mPsRVCPqoaqUtBSgd
 kj+aPAukgh6gQ0GWPjFa1SHsVOhg58J1eVSu9CuTFweyULX/38yDxnzZD7r2E+cp2gi8
 RllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JxeiI81YmGg5d9U0C/O9qY0Fd0/ZtRnG2PDA0HglqPI=;
 b=J8r83KQSyRiJVU4Md06JnMcw5AAINds4v5CT11QILoXvSp6AGCKAWf4JL0QlUn9Mwj
 /V7NOxrow6QWcZtfiqDr6D3ilCZB9SWMBVaN6OIe9YfzBdbXNsgubM64/yzhGJtsy8Yv
 eAB+hnmXE0PGTnRRBaXKImcnk6Naw8VaKMYBO19TGBJsxkk+GCJeQoRBfW7vq/P6psMv
 oroLWik1UYZF0dF3S13JO/0/M6jtrLbsP2H717MrIBveFEi2ISdPjnJVlOrl8xifho/A
 DLfh/zz8kifqAp6uta24I4I+cPuO5B5qADQzfley88v1Bf80Glp8zhLbUpAE7pMWH36c
 y3kg==
X-Gm-Message-State: AOAM533Dtq+sIC7DdkGpCtWNnZgxtDG2m0Dc2PIjYrseWL8IZjeXjCSd
 ueSZZ7W+v/CFOE4NOcPnggYEfw==
X-Google-Smtp-Source: ABdhPJw80wfVrkd4Pt8pEq+dAgi4oji9xyaGUc5f8gKzhaU2nyB3JgXw9lNxPsej44PCRcfJ5yA8YA==
X-Received: by 2002:a05:600c:287:: with SMTP id 7mr4521647wmk.91.1591812164504; 
 Wed, 10 Jun 2020 11:02:44 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id f11sm832108wrj.2.2020.06.10.11.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 11:02:43 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:02:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200610180241.GU4106@dell>
References: <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
 <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc>
 <20200610071940.GS4106@dell>
 <CAL_JsqKr1aDVzgAMjwwK8E8O_f29vSrx1HXk81FF+rd3sEe==w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKr1aDVzgAMjwwK8E8O_f29vSrx1HXk81FF+rd3sEe==w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_110247_833180_A56B2CF9 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux HWMON List <linux-hwmon@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMCBKdW4gMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFdlZCwgSnVuIDEw
LCAyMDIwIGF0IDE6MTkgQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gV2VkLCAxMCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4g
QW0gMjAyMC0wNi0wOSAyMTo0NSwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiA+ID4gT24gVHVlLCAw
OSBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+ID4gV2UgZG8gbm90IG5l
ZWQgYSAnc2ltcGxlLXJlZ21hcCcgc29sdXRpb24gZm9yIHlvdXIgdXNlLWNhc2UuCj4gPiA+ID4g
PiA+Cj4gPiA+ID4gPiA+IFNpbmNlIHlvdXIgZGV2aWNlJ3MgcmVnaXN0ZXJzIGFyZSBzZWdyZWdh
dGVkLCBqdXN0IHNwbGl0IHVwIHRoZQo+ID4gPiA+ID4gPiByZWdpc3RlciBtYXAgYW5kIGFsbG9j
YXRlIGVhY2ggc3ViLWRldmljZSB3aXRoIGl0J3Mgb3duIHNsaWNlLgo+ID4gPiA+ID4KPiA+ID4g
PiA+IEkgZG9uJ3QgZ2V0IGl0LCBjb3VsZCB5b3UgbWFrZSBhIGRldmljZSB0cmVlIGV4YW1wbGUg
Zm9yIG15Cj4gPiA+ID4gPiB1c2UtY2FzZT8gKHNlZSBhbHNvIGFib3ZlKQo+ID4gPiA+Cj4gPiA+
ID4gICAgICZpMmNidXMgewo+ID4gPiA+ICAgICAgICAgbWZkLWRldmljZUAxMCB7Cj4gPiA+ID4g
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtbWZkIjsKPiA+ID4gPiAgICAgICAgICAg
ICByZWcgPSA8MTA+Owo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICAgICAgc3ViLWRldmljZUAxMCB7
Cj4gPiA+ID4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAidmVuZG9yLHN1Yi1kZXZpY2Ui
Owo+ID4gPiA+ICAgICAgICAgICAgICAgICByZWcgPSA8MTA+Owo+ID4gPiA+ICAgICAgICAgICAg
IH07Cj4gPiA+ID4gICAgfTsKPiA+ID4gPgo+ID4gPiA+IFRoZSBSZWdtYXAgY29uZmlnIHdvdWxk
IGJlIHByZXNlbnQgaW4gZWFjaCBvZiB0aGUgY2hpbGQgZGV2aWNlcy4KPiA+ID4gPgo+ID4gPiA+
IEVhY2ggY2hpbGQgZGV2aWNlIHdvdWxkIGNhbGwgZGV2bV9yZWdtYXBfaW5pdF9pMmMoKSBpbiAu
cHJvYmUoKS4KPiA+ID4KPiA+ID4gQWgsIEkgc2VlLiBJZiBJJ20gbm90IHdyb25nLCB0aGlzIHN0
aWxsIG1lYW5zIHRvIGNyZWF0ZSBhbiBpMmMKPiA+ID4gZGV2aWNlIGRyaXZlciB3aXRoIHRoZSBu
YW1lICJzaW1wbGUtbWZkIi4KPiA+Cj4gPiBZZXMsIGl0IGRvZXMuCj4gCj4gVEJDLCB3aGlsZSBm
aW5lIGZvciBhIGRyaXZlciB0byBiaW5kIG9uICdzaW1wbGUtbWZkJywgYSBEVCBjb21wYXRpYmxl
Cj4gd2l0aCB0aGF0IGFsb25lIGlzIG5vdCBmaW5lLgoKJ3NpbXBsZS1tZmQnIGVzc2VudGlhbGx5
IG1lYW5zOgoKICAiVGhpcyBkZXZpY2UgZG9lc24ndCBkbyBhbnl0aGluZyB1c2VmdWwsIGJ1dCB0
aGUgY2hpbGRyZW4gZG8uIgoKV2hlbiB1c2VkIHdpdGggJ3N5c2NvbicgaXQgbWVhbnM6CgogICJN
ZW1vcnkgZm9yIHRoaXMgZGV2aWNlIGlzIHNoYXJlZCBiZXR3ZWVuIGFsbCBjaGlsZHJlbiIKCkFk
ZGluZyBtb3JlIHNwZWNpZmljL2Rlc2NyaXB0aXZlIGNvbXBhdGlibGUgc3RyaW5ncyBpcyBjb25j
ZXB0dWFsbHkKZmluZSwgYnV0IHRoZXkgc2hvdWxkIG5vdCBiZSBmb3JjZWQgdG8gYmluZCB0byBh
IHJlYWwgZHJpdmVyIHVzaW5nCnRoZW0uICBFbHNlIHdlJ3JlIGNyZWF0aW5nIGRyaXZlcnMgZm9y
IHRoZSBzYWtlIG9mIGNyZWF0aW5nIGRyaXZlcnMuCgpUaGlzIGlzIGVzcGVjaWFsbHkgdHJ1ZSB3
aXRoICdzaW1wbGUtbWZkJyBpcyB1c2VkIHdpdGhvdXQgJ3N5c2NvbicuCgo+ID4gPiBCZXNpZGVz
IHRoYXQsIEkgZG9uJ3QgbGlrZSB0aGlzLCBiZWNhdXNlOgo+ID4gPiAgLSBSb2IgYWxyZWFkeSBl
eHByZXNzZWQgaXRzIGNvbmNlcm5zIHdpdGggInNpbXBsZS1tZmQiIGFuZCBzbyBvbi4KPiA+Cj4g
PiBXaGVyZSBkaWQgdGhpcyB0YWtlIHBsYWNlPyAgSSdkIGxpa2UgdG8gcmVhZCB1cCBvbiB0aGlz
Lgo+ID4KPiA+ID4gIC0geW91IG5lZWQgdG8gZHVwbGljYXRlIHRoZSBjb25maWcgaW4gZWFjaCBz
dWIgZGV2aWNlCj4gPgo+ID4gWW91IGNhbiBoYXZlIGEgc2hhcmUgYSBzaW5nbGUgY29uZmlnLgo+
ID4KPiA+ID4gIC0gd2hpY2ggYWxzbyBtZWFucyB5b3UgYXJlIHJlc3RyaWN0aW5nIHRoZSBzdWIg
ZGV2aWNlcyB0byBiZQo+ID4gPiAgICBpMmMgb25seSAodW5sZXNzIHlvdSBpbXBsZW1lbnQgYW5k
IGR1cGxpY2F0ZSBvdGhlciByZWdtYXAgY29uZmlncywKPiA+ID4gICAgdG9vKS4gRm9yIHRoaXMg
ZHJpdmVyLCBTUEkgYW5kIE1NSU8gbWF5IGJlIHZpYWJsZSBvcHRpb25zLgo+ID4KPiA+IFlvdSBj
b3VsZCBhbHNvIGhhdmUgYSBzaGFyZWQgaW1wbGVtZW50YXRpb24gdG8gY2hvb3NlIGJldHdlZW4g
ZGlmZmVyZW50Cj4gPiBidXNzZXMuCj4gCj4gSSB0aGluayBpdCBpcyByZWFsbHkgdGhlIHN5c2Nv
biBtZmQgZHJpdmVyIHlvdSB3YW50IHRvIGdlbmVyYWxpemUgdG8KPiBvdGhlciBidXNlcy4gVGhv
dWdoIHdpdGggYSBxdWljayBsb29rIGF0IGl0LCB0aGVyZSdzIG5vdCByZWFsbHkgYQo+IHdob2xl
IGxvdCB0byBzaGFyZS4gVGhlIHJlZ21hcCBsb29rdXAgd291bGQgYmUgdGhlIG1haW4gdGhpbmcu
IFlvdSBhcmUKPiBnb2luZyB0byBuZWVkIGEgZHJpdmVyIGluc3RhbmNlIGZvciBlYWNoIGJ1cyB0
eXBlLgoKT24gaXQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwg
TGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
