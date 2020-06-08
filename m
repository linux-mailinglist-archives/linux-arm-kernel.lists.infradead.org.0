Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6301F1F5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWRS4whrzP7cFIqhp6ti0aqFkHWIMvmgEmql2iSPmNc=; b=rgzatMwpiQsNG9
	l7g8pbtGiHvY9gHcQayUE/3rR/T3L4uAxZu3gX7BdCqCxAQf61H4/pyCxDcYoppi+Km9FUmxA3S23
	1VKSDoy3fmYC9CR7m9xGTtBLOJFrlihq9oEscOr15BxRbRl1LCcCkbw93CCpJkToIUrOOPUWuUTwA
	91HtfM0IZgBUhePD37IvBX/2dQVd8ktz3sBRcx0Oo0FI5LusJ9vIwy/aor8lJKkW7Gx+93T3pAmSE
	bm5od5pir5nSnTQguTGqSEz+6QYydcfVojteHjM5UefVTZAcv9PkSzD6KnhLpJPKZmODzQ6t5gjBB
	rANaoNZG2EIapT9a6Amw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMxD-0001Be-PL; Mon, 08 Jun 2020 18:57:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMx5-0001Ax-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:56:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id c71so536240wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=bbezwn5gwDlTS6iFB4r9mviI0BHif4uVVFtQV600W10=;
 b=bYuLeFsFLMkDx3qZeqjTwTuymeICsPggctKvZNcicEBsCT6pD6pMA7MDedxcCgxxxv
 DaXRWn69Tos6NjXf9n4UhHrwGd5gC47tLeiiskVQVlVn7tUdf+gKVD++b2pSx6mjt0Wt
 /GROQLIkv8ERRIXfaTl+IBNn5ySBixDUBCavUZXD4GOr2RPx8jv98AlcXxuFAvV8TSzH
 uUzKSnqPFAIyr30pkKt7Dm8kolIvPkY4GfLVcdkgaBEz6LXVbdJwTjtf+/4f8Isg7P1S
 KORdnXpCjh3OH33CQNPDcXraPiI3zvS0de9sedU66a7jPu3xIf4o9mtqTrhWJsUZrxQa
 4t6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=bbezwn5gwDlTS6iFB4r9mviI0BHif4uVVFtQV600W10=;
 b=bq6Qadoa4cF/KjKnyPJQuRONIjl/g76sis4xpbPoqEj1y8ko9w/sXOYHlJWfHHZdXr
 783Jk4p3k9TlCHVFAObLvFHEdWD+GxcaqdEN0NJxWm+wMXXI5q2r3u26dbooCMRJnFQ/
 +7/lfm83W48ljVMElVRT7ru2lFsSPZ/wLCLRB6Y7n1VtTtx5NLG6RbvSVVRTsCgSoBH7
 gw44Q9BVBWt1U5o2fkRFoEjZXiEPR45s/WOBZQecWjkYgFaiWKmqHAh2ptdkGjuyxRKl
 RDbP3LQWiZEKoO0w3ZyeJZMP+ByRn95CQvdNANXsx3VOsCqksR85BlVzBRV2O1sTCdEU
 nYdA==
X-Gm-Message-State: AOAM533JMqTxMA2bxwBxbjFt/d4dz67z5zOpXVwmZ8e5gEneb2co25ar
 F+KmHONeNsAJ+Tsl9lp+HxwCSA==
X-Google-Smtp-Source: ABdhPJyiWUVMEiOfAXAeFrqmYgqJgRJgWv1aBrPn0d5IckEE0fOBQCHvZfLUDwPo686MnqwrE6u1gg==
X-Received: by 2002:a1c:80d4:: with SMTP id b203mr135522wmd.138.1591642613825; 
 Mon, 08 Jun 2020 11:56:53 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id l17sm431519wmi.16.2020.06.08.11.56.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:56:53 -0700 (PDT)
Date: Mon, 8 Jun 2020 19:56:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200608185651.GD4106@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_115655_659705_202DA8A5 
X-CRM114-Status: GOOD (  39.71  )
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
OCAxMjowMiwgc2NocmllYiBBbmR5IFNoZXZjaGVua286Cj4gPiArQ2M6IHNvbWUgSW50ZWwgcGVv
cGxlIFdSVCBvdXIgaW50ZXJuYWwgZGlzY3Vzc2lvbiBhYm91dCBzaW1pbGFyCj4gPiBwcm9ibGVt
IGFuZCBzb2x1dGlvbnMuCj4gPiAKPiA+IE9uIE1vbiwgSnVuIDgsIDIwMjAgYXQgMTE6MzAgQU0g
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFNhdCwgMDYg
SnVuIDIwMjAsIE1pY2hhZWwgV2FsbGUgd3JvdGU6Cj4gPiA+ID4gQW0gMjAyMC0wNi0wNiAxMzo0
Niwgc2NocmllYiBNYXJrIEJyb3duOgo+ID4gPiA+ID4gT24gRnJpLCBKdW4gMDUsIDIwMjAgYXQg
MTA6MDc6MzZQTSArMDIwMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKPiA+ID4gPiA+ID4gQW0gMjAy
MC0wNi0wNSAxMjo1MCwgc2NocmllYiBNYXJrIEJyb3duOgo+ID4gCj4gPiAuLi4KPiA+IAo+ID4g
PiBSaWdodC4gIEknbSBzdWdnZXN0aW5nIGEgbWVhbnMgdG8gZXh0cmFwb2xhdGUgY29tcGxleCBz
aGFyZWQgYW5kCj4gPiA+IHNvbWV0aW1lcyBpbnRlcnR3aW5lZCBiYXRjaGVzIG9mIHJlZ2lzdGVy
IHNldHMgdG8gYmUgY29uc3VtZWQgYnkKPiA+ID4gbXVsdGlwbGUgKHN1Yi0pZGV2aWNlcyBzcGFu
bmluZyBkaWZmZXJlbnQgc3Vic3lzdGVtcy4KPiA+ID4gCj4gPiA+IEFjdHVhbGx5IHNjcmFwIHRo
YXQuICBUaGUgbW9zdCBjb21tb24gY2FzZSBJIHNlZSBpcyBhIHNpbmdsZSBSZWdtYXAKPiA+ID4g
Y292ZXJpbmcgYWxsIGNoaWxkLWRldmljZXMuCj4gPiAKPiA+IFllcywgYmVjYXVzZSBvZnRlbiB3
ZSBuZWVkIGEgc3luY2hyb25pemF0aW9uIGFjcm9zcyB0aGUgZW50aXJlIGFkZHJlc3MKPiA+IHNw
YWNlIG9mIHRoZSAocGFyZW50KSBkZXZpY2UgaW4gcXVlc3Rpb24uCj4gPiAKPiA+ID4gIEl0IHdv
dWxkIGJlIGdyZWF0IGlmIHRoZXJlIHdhcyBhIHdheSBpbgo+ID4gPiB3aGljaCB3ZSBjb3VsZCBt
YWtlIGFuIGFzc3VtcHRpb24gdGhhdCB0aGUgZW50aXJlIHJlZ2lzdGVyIGFkZHJlc3MKPiA+ID4g
c3BhY2UgZm9yIGEgJ3RhZ2dlZCcgKE1GRCkgZGV2aWNlIGlzIHRvIGJlIHNoYXJlZCAodmlhIFJl
Z21hcCkgYmV0d2Vlbgo+ID4gPiBlYWNoIG9mIHRoZSBkZXZpY2VzIGRlc2NyaWJlZCBieSBpdHMg
Y2hpbGQtbm9kZXMuICBQcm9iYWJseSBieSBwaWNraW5nCj4gPiA+IHVwIG9uIHRoZSAnc2ltcGxl
LW1mZCcgY29tcGF0aWJsZSBzdHJpbmcgaW4gdGhlIGZpcnN0IGluc3RhbmNlLgo+ID4gPiAKPiA+
ID4gUm9iLCBpcyB0aGUgYWJvdmUgc29tZXRoaW5nIHlvdSB3b3VsZCBjb250ZW1wbGF0ZT8KPiA+
ID4gCj4gPiA+IE1pY2hhZWwsIGRvIHlvdXIgcmVnaXN0ZXIgYWRkcmVzc2VzIG92ZXJsYXAgaS5l
LiBhcmUgdGhleSBpbnRlcm1pbmdsZWQKPiA+ID4gd2l0aCBvbmUgYW5vdGhlcj8gIERvIG11bHRp
cGxlIGNoaWxkIGRldmljZXMgbmVlZCBhY2Nlc3MgdG8gdGhlIHNhbWUKPiA+ID4gcmVnaXN0ZXJz
IGkuZS4gYXJlIHRoZXkgc2hhcmVkPwo+IAo+IE5vIHRoZXkgZG9uJ3Qgb3ZlcmxhcCwgZXhwZWN0
IGZvciBtYXliZSB0aGUgdmVyc2lvbiByZWdpc3Rlciwgd2hpY2ggaXMKPiBqdXN0IHRoZXJlIG9u
Y2UgYW5kIG5vdCBwZXIgZnVuY3Rpb24gYmxvY2suCgpUaGVuIHdoYXQncyBzdG9wcGluZyB5b3Ug
aGF2aW5nIGVhY2ggZGV2aWNlIFJlZ21hcCB0aGVpciBvd24gc3BhY2U/CgpUaGUgaXNzdWVzIEkg
d2lzaCB0byByZXNvbHZlIHVzaW5nICdzaW1wbGUtbWZkJyBhcmUgd2hlbiBzdWItZGV2aWNlcwpy
ZWdpc3RlciBtYXBzIG92ZXJsYXAgYW5kIGludGVydHdpbmUuCgo+ID4gPiA+ID4gPiBCdXQsIHRo
ZXJlIGlzIG1vcmUgaW4gbXkgZHJpdmVyOgo+ID4gPiA+ID4gPiAgKDEpIHRoZXJlIGlzIGEgdmVy
c2lvbiBjaGVjawo+ID4gPiAKPiA+ID4gSWYgd2UgY2FuIHJpZCB0aGUgUmVnbWFwIGRlcGVuZGVu
Y3ksIHRoZW4gY3JlYXRpbmcgYW4gZW50aXJlIGRyaXZlciB0bwo+ID4gPiBjb25kdWN0IGEgdmVy
c2lvbiBjaGVjayBpcyB1bmp1c3RpZmlhYmxlLiAgVGhpcyBjb3VsZCBiZWNvbWUgYW4gaW5saW5l
Cj4gPiA+IGZ1bmN0aW9uIHdoaWNoIGlzIGNhbGxlZCBieSBlYWNoIG9mIHRoZSBzdWItZGV2aWNl
cyBpbnN0ZWFkLCBmb3IKPiA+ID4gZXhhbXBsZS4KPiAKPiBzb3VuZHMgZ29vZCB0byBtZS4gKGFs
dGhvdWdoIHRoZXJlIHdvdWxkIHRoZW4gYmUgYSBwcm9iZSBmYWlsIHBlciBzdWItZGV2aWNlCj4g
aWYgdGhlIHZlcnNpb24gaXMgbm90IHN1cHBvcnRlZCkKCkkgZG9uJ3Qgc2VlIGFuIGlzc3VlIHdp
dGggdGhhdC4gIEkgd291bGQgcHV0IHRoYXQgY2hlY2sgaW5zaWRlIGEKc2hhcmVkIGNhbGwgdGhv
dWdoLCBjb21wbGV0ZSB3aXRoIHN1cHBvcnQgZm9yIGxvY2tpbmcuCgo+ID4gPiA+ID4gPiAgKDIp
IHRoZXJlIGlzIGFub3RoZXIgZnVuY3Rpb24gZm9yIHdoaWNoIHRoZXJlIGlzIG5vIHN1aXRhYmxl
IGxpbnV4Cj4gPiA+ID4gPiA+ICAgICAgc3Vic3lzdGVtIEknbSBhd2FyZSBvZiBhbmQgdGh1cyB3
aGljaCBJJ2QgbGlrZSB0byB1cyBzeXNmcwo+ID4gPiA+ID4gPiAgICAgIGF0dHJpYnV0ZXMgZm9y
OiBUaGlzIGNvbnRyb2xsZXIgc3VwcG9ydHMgMTYgbm9uLXZvbGF0aWxlCj4gPiA+ID4gPiA+ICAg
ICAgY29uZmlndXJhdGlvbiBiaXRzLiAodGhpcyBpcyBzdGlsbCBUQkQpCj4gPiA+IAo+ID4gPiBU
aGVyZSBpcyBhIHBsYWNlIGZvciBldmVyeXRoaW5nIGluIExpbnV4Lgo+ID4gPiAKPiA+ID4gV2hh
dCBkbyB0aGVzZSBiaXRzIGNvbmZpZ3VyZT8KPiAKPiAtIGhhcmR3YXJlIHN0cmFwcGluZ3Mgd2hp
Y2ggaGF2ZSB0byBiZSB0aGVyZSBiZWZvcmUgdGhlIGJvYXJkIHBvd2VycyB1cCwKPiAgIGxpa2Ug
Y2xvY2tpbmcgbW9kZSBmb3IgZGlmZmVyZW50IFNlckRlcyBzZXR0aW5ncwo+IC0gImtlZXAtaW4t
cmVzZXQiIGJpdHMgZm9yIG9uYm9hcmQgcGVyaXBoZXJhbHMgaWYgeW91IHdhbnQgdG8gc2F2ZSBw
b3dlcgo+IC0gZGlzYWJsZSB3YXRjaGRvZyBiaXRzICh0aGVyZSBpcyBhIHdhdGNoZG9nIHdoaWNo
IGlzIGFjdGl2ZSByaWdodCBmcm9tCj4gICB0aGUgc3RhcnQgYW5kIHN1cGVydmlzZXMgdGhlIGJv
b3Rsb2FkZXIgc3RhcnQgYW5kIHN3aXRjaGVzIHRvIGZhaWxzYWZlCj4gICBtb2RlIGlmIGl0IHdh
c24ndCBzdWNjZXNzZnVsbHkgc3RhcnRlZCkKPiAtIHNwZWNpYWwgYm9vdCBtb2RlcywgbGlrZSBl
TU1DLCBldGMuCj4gCj4gVGhpbmsgb2YgaXQgYXMgYSAxNmJpdCBjb25maWd1cmF0aW9uIHdvcmQu
CgpBbmQgeW91IHdpc2ggZm9yIHVzZXJzIHRvIGJlIGFibGUgdG8gdmlldyB0aGVzZSBhdCBydW4t
dGltZT8KCkNhbiB0aGV5IGFkYXB0IGFueSBvZiB0aGVtIG9uLXRoZS1mbHkgb3Igd2lsbCB0aGUg
YmUgUk8/Cgo+ID4gPiA+ID4gVEJIIEknZCBhbHNvIHNheSB0aGF0IHRoZSBlbnVtZXJhdGlvbiBv
ZiB0aGUgc3ViZGV2aWNlcyBmb3IgdGhpcwo+ID4gPiA+ID4gZGV2aWNlIHNob3VsZCBiZSBpbiB0
aGUgZGV2aWNlIHJhdGhlciB0aGFuIHRoZSBEVCwgdGhleSBkb24ndAo+ID4gPiA+ID4gc2VlbSB0
byBiZSB0aGluZ3MgdGhhdCBleGlzdCBvdXRzaWRlIG9mIHRoaXMgb25lIGRldmljZS4KPiA+ID4g
Pgo+ID4gPiA+IFdlJ3JlIGdvaW5nIGNpcmNsZXMgaGVyZSwgZm9ybWVybHkgdGhleSB3ZXJlIGVu
dW1lcmF0ZWQgaW4gdGhlIE1GRC4KPiA+ID4gPiBZZXMsIHRoZXkgYXJlIGRldmljZXMgd2hpY2gg
YXJlbid0IGxpa2VseSBiZSB1c2VkIG91dHNpZGUgYQo+ID4gPiA+ICJzbDI4Y3BsZCIsIGJ1dCB0
aGVyZSBtaWdodCB0aGVyZSBtaWdodCBiZSBvdGhlciB2ZXJzaW9ucyBvZiB0aGUKPiA+ID4gPiBz
bDI4Y3BsZCB3aXRoIG90aGVyIGNvbXBvbmVudHMgb24gZGlmZmVyZW50IGJhc2UgYWRkcmVzc2Vz
LiBJCj4gPiA+ID4gZG9uJ3QgY2FyZSBpZiB0aGV5IGFyZSBlbnVtZXJhdGVkIGluIERUIG9yIE1G
RCwgYWN0dWFsbHksIEknZAo+ID4gPiA+IHByZWZlciB0aGUgbGF0dGVyLiBfQnV0XyBJIHdvdWxk
IGxpa2UgdG8gaGF2ZSB0aGUgZGV2aWNlIHRyZWUKPiA+ID4gPiBwcm9wZXJ0aWVzIGZvciBpdHMg
c3ViZGV2aWNlcywgZS5nLiB0aGUgb25lcyBmb3IgdGhlIHdhdGNoZG9nIG9yCj4gPiA+ID4gd2hh
dGV2ZXIgY29tcG9uZW50cyB0aGVyZSBtaWdodCBiZSBpbiB0aGUgZnV0dXJlLgo+ID4gPiAKPiA+
ID4gWy4uLl0KPiA+ID4gCj4gPiA+ID4gTUZEIGNvcmUgY2FuCj4gPiA+ID4gbWF0Y2ggYSBkZXZp
Y2UgdHJlZSBub2RlIHRvZGF5OyBidXQgb25seSBvbmUgcGVyIHVuaXF1ZSBjb21wYXRpYmxlCj4g
PiA+ID4gc3RyaW5nLiBTbyB3aGF0IHNob3VsZCBJIHVzZSB0byBkaWZmZXJlbnRpYXRlIHRoZSBk
aWZmZXJlbnQKPiA+ID4gPiBzdWJkZXZpY2VzPwo+ID4gPiAKPiA+ID4gUmlnaHQuICBJIGhhdmUg
YmVlbiBhd2FyZSBvZiB0aGlzIGlzc3VlLiAgVGhlIG9ubHkgc3VpdGFibGUgc29sdXRpb24KPiA+
ID4gdG8gdGhpcyB3b3VsZCBiZSB0byBtYXRjaCBvbiAncmVnJy4KPiAKPiBzZWUgYmVsb3cgKDEp
Cj4gCj4gPiA+IAo+ID4gPiBGWUk6IEkgcGxhbiB0byBmaXggdGhpcy4KPiA+ID4gCj4gPiA+IElm
IHlvdXIgcmVnaXN0ZXIgbWFwIG5lZWRzIHRvIGNoYW5nZSwgdGhlbiBJIHN1Z2dlc3QgdGhhdCB0
aGlzIGlzCj4gPiA+IGVpdGhlciBhIG5ldyBkZXZpY2Ugb3IgYXQgbGVhc3QgYSBkaWZmZXJlbnQg
dmVyc2lvbiBvZiB0aGUgZGV2aWNlIGFuZAo+ID4gPiB3b3VsZCBhbHNvIGhhdmUgdG8gYmUgcmVw
cmVzZW50ZWQgYXMgZGlmZmVyZW50IChzdWItKW1mZF9jZWxsLgo+ID4gPiAKPiA+ID4gPiBSb2Ig
c3VnZ2VzdGVkIHRoZSBpbnRlcm5hbCBvZmZzZXQsIHdoaWNoIEkgZGlkIGhlcmUuCj4gPiA+IAo+
ID4gPiBGV0lXLCBJIGRvbid0IGxpa2UgdGhpcyBpZGVhLiAgRFRzIHNob3VsZCBub3QgaGF2ZSB0
byBiZSBtb2RpZmllZAo+ID4gPiAoZWl0aGVyIGluIHRoZSBmaXJzdCBpbnN0YW5jZSBvciBzdWJz
ZXF1ZW50bHkpIG9yIHNwZWNpZmljYWxseQo+ID4gPiBkZXNpZ25lZCB0byBwYXRjaCBpbmFkZXF1
YWNpZXMgaW4gYW55IGdpdmVuIE9TLgo+IAo+IEhvdyBkb2VzICgxKSBwbGF5IHRvZ2V0aGVyIHdp
dGggdGhpcz8gV2hhdCBkbyB5b3UgcHJvcG9zZSB0aGUgInJlZyIKPiBwcm9wZXJ0eSBzaG91bGQg
Y29udGFpbj8KCldoYXRldmVyIGlzIGluIHRoZSAncmVnJyBwcm9wZXJ0eSBjb250YWluZWQgaW4g
dGhlIERldmljZSBUcmVlIG5vZGUuCkVpdGhlciB0aGUgZnVsbCBhZGRyZXNzIG9yIGFuIG9mZnNl
dCB3b3VsZCBiZSBzdWl0YWJsZS4KCkNhdmVhdDogQWxsIHRoaXMgdGhpbmtpbmcgaGFzIGJlZW4g
ZG9uZSBvbi10aGUtZmx5LiAgSSB3b3VsZCBuZWVkIHRvCmxvb2sgYXQgc29tZSBleGFtcGxlcyBv
ZiBleGlzdGluZyBkZXZpY2VzIGFuZCBzdGFydCBjb2RpbmcgYmVmb3JlIEkKY291bGQgcmVhbGx5
IHRoaW5rIHRoZSBzb2x1dGlvbiB0aHJvdWdoLgoKSGFwcHkgdG8gZGlzY3VzcyBhbmQvb3IgdGFr
ZSByZWNvbW1lbmRhdGlvbnMgdGhvdWdoLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5p
b3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
