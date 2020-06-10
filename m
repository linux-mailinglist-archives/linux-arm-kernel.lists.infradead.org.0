Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95E71F4EBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAJhRlaJXFaHznN9m3Zd2qBr7BELpXkGgLMBtsyeE1A=; b=aYT8nqaWS7F4Cv
	xkfp1ABINF4pV+idY67EIhb9w01eNxLZp0bLM7vFr3AH9elxWmsirj9GioacpgabPbkZB38PYCtKD
	/bSwtz9yjwCnYJNNQYhpp+FGY5R3K20K+EMMQLGRgrK1vHZE+5O+/mGTZeSxCXZpAVMqEhn3ZMJxe
	tx2Od2HaMPCi1u2SG1UbEhl0Faz2fsiRWIFuiv7hcZBP54Fylf2RCTShMdVwgXzQNpVIp+6LUd2P8
	dZFNWGiI3ZQPR/pGEmQz1IG0NxQIh+L1YszH11Qh6f7Tn9ZnVqqZcvv1GZTp0Bx7rqvWjEsrT0wR0
	qGBTDPjB5+sdKPlqoNCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiv1e-00070P-Fh; Wed, 10 Jun 2020 07:19:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiv1V-0006zu-CL
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:19:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id j10so985967wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 00:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=11ciiGFTUr2GF55cgml5pBiTEF8081Q9X8UCb/QcHRA=;
 b=Y9ae5q6P3q0sJJ1zZgF5extf7FxIBPJDw9AERd1YPcixBQAP0Gr+TCXETNfkI0Ur3N
 B8mPHGrm319rRaMA4hgm+eI0R3VG+o6oRgiiCl8INYlYZnx1OnsY1uuUZyOnYb9PXFEf
 5Mn3qxOZjRhNgI7R7zTJRQP4nS22KepHMy5J6lwf0eqyJYSEFoUgcuipvEYeo9d5tFgj
 uHcfLI/dm118AnKQJoCfnCkZm8DPVRTv3Mv35S+aFF9S/ifBiRJl6V58bk5CCgr3Na7f
 VB7ylHcVoSU5G6Cgq0d1kRMjbpWguWaBM4S6/TkoWS4gIyzZL6hewxemNDEwJJG0prKJ
 fzyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=11ciiGFTUr2GF55cgml5pBiTEF8081Q9X8UCb/QcHRA=;
 b=JMqMYmz8fHFJfl44wCSHa8uBUlc+2mb6JFcMb4OpNZfzYKbwFUa00hikwP3ToHOgGy
 sVU/JN4/UwF8fntpgepvNKoeSl8+IPHIfkt69zVvFN3QOb1JG4tAeTzaEyTjzD16YqkL
 GYlibtDnMUbqRL0lj2qvd8Iie4FAychji/VjZzudCyhLSdp2TmZ0nd612wiPK+1ZYc6Z
 Nrd1rARSJhXHC9yTfQSHUjGo3rpo0jyFsJPKBwHPWY95mAMadNpZCIHM/6j/9H1Ci0nM
 d/wQXlhuao3Im45GarUmRFXOdr8QgULWjNTMxpUAcGt0EOWe1M+dba03JM7Vt42xRehp
 jBBg==
X-Gm-Message-State: AOAM5322gDDXF4/2rRTysa9z7GhYDUwOKPclYmta+4RKMPlILcf2d1td
 JlxKO7jP0Cfm2KDi9tZ07LpmNA==
X-Google-Smtp-Source: ABdhPJx35j366zEzN8LJVnCpeR2FpiGqjvYG09aoVlwPYi548sT34jyAOpph5ZNw8v8eHkYZVutgRw==
X-Received: by 2002:adf:e84c:: with SMTP id d12mr1957757wrn.284.1591773582952; 
 Wed, 10 Jun 2020 00:19:42 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id 67sm7063666wrk.49.2020.06.10.00.19.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 00:19:42 -0700 (PDT)
Date: Wed, 10 Jun 2020 08:19:40 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200610071940.GS4106@dell>
References: <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
 <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a6931248f0efcaf8efbb5425a9bd833@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_001945_429212_9FC6AE5C 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

T24gV2VkLCAxMCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiBBbSAyMDIwLTA2LTA5
IDIxOjQ1LCBzY2hyaWViIExlZSBKb25lczoKPiA+IE9uIFR1ZSwgMDkgSnVuIDIwMjAsIE1pY2hh
ZWwgV2FsbGUgd3JvdGU6Cj4gPiA+ID4gV2UgZG8gbm90IG5lZWQgYSAnc2ltcGxlLXJlZ21hcCcg
c29sdXRpb24gZm9yIHlvdXIgdXNlLWNhc2UuCj4gPiA+ID4KPiA+ID4gPiBTaW5jZSB5b3VyIGRl
dmljZSdzIHJlZ2lzdGVycyBhcmUgc2VncmVnYXRlZCwganVzdCBzcGxpdCB1cCB0aGUKPiA+ID4g
PiByZWdpc3RlciBtYXAgYW5kIGFsbG9jYXRlIGVhY2ggc3ViLWRldmljZSB3aXRoIGl0J3Mgb3du
IHNsaWNlLgo+ID4gPiAKPiA+ID4gSSBkb24ndCBnZXQgaXQsIGNvdWxkIHlvdSBtYWtlIGEgZGV2
aWNlIHRyZWUgZXhhbXBsZSBmb3IgbXkKPiA+ID4gdXNlLWNhc2U/IChzZWUgYWxzbyBhYm92ZSkK
PiA+IAo+ID4gICAgICZpMmNidXMgewo+ID4gICAgICAgICBtZmQtZGV2aWNlQDEwIHsKPiA+ICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLW1mZCI7Cj4gPiAgICAgICAgICAgICByZWcg
PSA8MTA+Owo+ID4gCj4gPiAgICAgICAgICAgICBzdWItZGV2aWNlQDEwIHsKPiA+ICAgICAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gInZlbmRvcixzdWItZGV2aWNlIjsKPiA+ICAgICAgICAgICAg
ICAgICByZWcgPSA8MTA+Owo+ID4gICAgICAgICAgICAgfTsKPiA+ICAgIH07Cj4gPiAKPiA+IFRo
ZSBSZWdtYXAgY29uZmlnIHdvdWxkIGJlIHByZXNlbnQgaW4gZWFjaCBvZiB0aGUgY2hpbGQgZGV2
aWNlcy4KPiA+IAo+ID4gRWFjaCBjaGlsZCBkZXZpY2Ugd291bGQgY2FsbCBkZXZtX3JlZ21hcF9p
bml0X2kyYygpIGluIC5wcm9iZSgpLgo+IAo+IEFoLCBJIHNlZS4gSWYgSSdtIG5vdCB3cm9uZywg
dGhpcyBzdGlsbCBtZWFucyB0byBjcmVhdGUgYW4gaTJjCj4gZGV2aWNlIGRyaXZlciB3aXRoIHRo
ZSBuYW1lICJzaW1wbGUtbWZkIi4KClllcywgaXQgZG9lcy4KCj4gQmVzaWRlcyB0aGF0LCBJIGRv
bid0IGxpa2UgdGhpcywgYmVjYXVzZToKPiAgLSBSb2IgYWxyZWFkeSBleHByZXNzZWQgaXRzIGNv
bmNlcm5zIHdpdGggInNpbXBsZS1tZmQiIGFuZCBzbyBvbi4KCldoZXJlIGRpZCB0aGlzIHRha2Ug
cGxhY2U/ICBJJ2QgbGlrZSB0byByZWFkIHVwIG9uIHRoaXMuCgo+ICAtIHlvdSBuZWVkIHRvIGR1
cGxpY2F0ZSB0aGUgY29uZmlnIGluIGVhY2ggc3ViIGRldmljZQoKWW91IGNhbiBoYXZlIGEgc2hh
cmUgYSBzaW5nbGUgY29uZmlnLgoKPiAgLSB3aGljaCBhbHNvIG1lYW5zIHlvdSBhcmUgcmVzdHJp
Y3RpbmcgdGhlIHN1YiBkZXZpY2VzIHRvIGJlCj4gICAgaTJjIG9ubHkgKHVubGVzcyB5b3UgaW1w
bGVtZW50IGFuZCBkdXBsaWNhdGUgb3RoZXIgcmVnbWFwIGNvbmZpZ3MsCj4gICAgdG9vKS4gRm9y
IHRoaXMgZHJpdmVyLCBTUEkgYW5kIE1NSU8gbWF5IGJlIHZpYWJsZSBvcHRpb25zLgoKWW91IGNv
dWxkIGFsc28gaGF2ZSBhIHNoYXJlZCBpbXBsZW1lbnRhdGlvbiB0byBjaG9vc2UgYmV0d2VlbiBk
aWZmZXJlbnQKYnVzc2VzLgoKPiBUaHVzLCBJJ2QgcmF0aGVyIGltcGxlbWVudCBhIHNpbXBsZS1t
ZmQuYyB3aGljaCBpbXBsZW1lbnQgYSBjb21tb24KPiBJMkMgZHJpdmVyIGZvciBub3cgYW5kIHBv
cHVsYXRlIGl0cyBjaGlsZHJlbiB1c2luZwo+IGRldm1fb2ZfcGxhdGZvcm1fcG9wdWxhdGUoKS4g
VGhpcyBjb3VsZCBiZSBleHRlbmRlZCB0byBzdXBwb3J0IG90aGVyCj4gdHlwZSBvZiByZWdtYXBz
IGxpa2UgU1BJIGluIHRoZSBmdXR1cmUuCj4gCj4gQWxzbyBzb21lIE1GRCBkcml2ZXJzIGNvdWxk
IGJlIG1vdmVkIHRvIHRoaXMsIGEgbGlrZWx5IGNhbmRpZGF0ZSBpcwo+IHRoZSBzbXNjLWVjZTEw
OTkuYy4gQWx0aG91Z2ggSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCBpdHMgcHVycG9zZSwKPiBp
ZiBkb24ndCBoYXZlIENPTkZJR19PRi4KPiAKPiBKdWRnaW5nIGZyb20gdGhlIGV4aXN0aW5nIGNv
ZGUsIHRoaXMgc2ltcGxlLW1mZC5jIHdvdWxkbid0IGp1c3QgYmUKPiAiYSBsaXN0IG9mIGNvbXBh
dGlibGUiIHN0cmluZ3MgYnV0IGFsc28gYWRkaXRpb25hbCBxdWlya3MgYW5kIHR3ZWFrcwo+IGZv
ciBwYXJ0aWN1bGFyIGRldmljZXMgaW4gdGhpcyBsaXN0LgoKSG9sZCBvZmYgb24gdGhlIHNpbXBs
ZS1tZmQuYyBpZGVhLCBhcyBJJ20gbm90IHRha2VuIGJ5IGl0IHlldCBhbmQKd291bGRuJ3Qgd2Fu
dCB5b3UgdG8gd2FzdGUgeW91ciB0aW1lLiAgSSBoYXZlIGFub3RoZXIgaWRlYSB3aGljaCB3b3Vs
ZApoZWxwLiAgR2l2ZSBtZSBhIGZldyBkYXlzIHRvIHB1dCBzb21ldGhpbmcgdG9nZXRoZXIuCgot
LSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3Bl
ciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNv
Q3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
