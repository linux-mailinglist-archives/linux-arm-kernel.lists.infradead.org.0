Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590031F46A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOncwHQVMT69qY8mQ86uF48YRHMV1fmvBG+GLZ+xD8Q=; b=isuT/SscIYhGZZ
	Ctq3Mf5+K+MGqGafF/MeY4jFc71RjSJFuY+o1QRTvoNSpFiovUkNj/DPdDQTL7RjIoD5hRiswnWpN
	8czRdVnn3msYaDBQS00jDwjzva5Pnn6a9ZspLSonj1mHQd3UKniZwU1m8X6AjYVTqj0F1TxFiDzP6
	fwaKr5uyivns0yJrv1hwCzhZNdX0tk1xdyVBbifVXHAO97SG9QkjDj0A3b8WQuWy4OdKhqig0Xs/H
	9Qxnw9i1gFYEsggXEfZcZmXweiGhCf98p9cRziAFQiXBOIg3Ay9yQI8VbZB5NZCNPfDducSg58n6m
	Wrp7Vh/jaGeRqPEP8Mig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijMc-0005Ex-BI; Tue, 09 Jun 2020 18:52:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijMR-0005Ee-Ta
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:52:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so4176952wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Rx+KqvmtdByLRiHw7ISbnHgkCLyaMrdXIypQJ9D83NM=;
 b=ArNCp5jy8xw0o8QYdJ3Qz1qQoc5OchvaEoyPj/G3Qwd05C7R7/XwhufiBSsQAM3dmM
 o0o0yks+I4S6jJDHffPGL+45DtgPleewkT66ldWqf86ww/dLeMP4ZtCohqmksRgJPz/3
 cg7JbiDfz+XazkwnFo3bl4Qh1Pgcd7l+MUv645Vmj6YkhES6S5IX42bQhMaCpXAnhpFH
 8d43uufA2OACUuQ9lwM1TydKIO0QRdLKkPIMNd8j9lf3nKqYCXvC8ZnBgxtwxqH3Js7M
 lE2iXBVCw2E3+yLybw5nLs2eUzHLcDA9pV66llGAGFA074R7HHjv9OaEJR6iGCSCMiKi
 Vjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Rx+KqvmtdByLRiHw7ISbnHgkCLyaMrdXIypQJ9D83NM=;
 b=jP8yT9ybdpsQL8ygpk1veNC6kdj9buXUvNBa9n2D6QiE0jfxcsARINCKrVfwoP7sbq
 a8NYVjzifAohmyhpJQ6JqW/szCdFurDpAEeH6NJ74taycKD/ghSiqLfwbPoT5AHaKspI
 hn4zXak2keep3UGAnz7MV5A5XSFz7+a2O2jVJPyjdhmf7wnVb808dux8hWOAyunsjNwK
 2IMz9udnWVwsOBzIVpCHgbksxWVVyZ2cTHxoT1jqf6dgl5xdK7wRNRZaIiWjrfbDmOFN
 m3y5loXLrDudzK/O4+nf30gWJBV43X2OPCh6nvNgBwiSV4w3Sb+RbL0X/zjyIVLncq+h
 EVFA==
X-Gm-Message-State: AOAM5335iImsbqOtQYILAfocBCA9A5E4jra51CljLGv32oph06Q9qg5x
 pqdtXOuKNamfA8tLzj/SlUpJxg==
X-Google-Smtp-Source: ABdhPJwpZZ7S4GqJFNik24T6FJp5nAop3BUokybQq1cMXdlH57TCJy3rpjeZBHUZlWR02zEPG6whnQ==
X-Received: by 2002:a1c:2b01:: with SMTP id r1mr5692273wmr.26.1591728754296;
 Tue, 09 Jun 2020 11:52:34 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id b185sm4390216wmd.3.2020.06.09.11.52.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:52:33 -0700 (PDT)
Date: Tue, 9 Jun 2020 19:52:31 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609185231.GO4106@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
 <20200608082827.GB3567@dell> <20200609165401.GB1019634@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609165401.GB1019634@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_115235_961103_F3687B29 
X-CRM114-Status: GOOD (  31.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOSBKdW4gMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIE1vbiwgSnVuIDA4
LCAyMDIwIGF0IDA5OjI4OjI3QU0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IFJvYiwgc29t
ZXRoaW5nIGZvciB5b3UgYmVsb3cuCj4gPiAKPiA+IE9uIFNhdCwgMDYgSnVuIDIwMjAsIE1pY2hh
ZWwgV2FsbGUgd3JvdGU6Cj4gPiA+IEFtIDIwMjAtMDYtMDYgMTM6NDYsIHNjaHJpZWIgTWFyayBC
cm93bjoKPiA+ID4gPiBPbiBGcmksIEp1biAwNSwgMjAyMCBhdCAxMDowNzozNlBNICswMjAwLCBN
aWNoYWVsIFdhbGxlIHdyb3RlOgo+ID4gPiA+ID4gQW0gMjAyMC0wNi0wNSAxMjo1MCwgc2Nocmll
YiBNYXJrIEJyb3duOgo+ID4gPiA+IAo+ID4gPiA+ID4gPiBJIGhhdmUgbm8gaWRlYSB3aGF0IHlv
dSBhcmUgdGhpbmtpbmcgb2Ygd2hlbiB5b3Ugc2F5ICJzaW1wbGUtcmVnbWFwIiBzbwo+ID4gPiA+
ID4gPiBpdCBpcyBkaWZmaWN1bHQgdG8gY29tbWVudC4KPiA+ID4gPiAKPiA+ID4gPiA+IEkgZ3Vl
c3MsIExlZSBpcyBzdWdnZXN0aW5nIHRvIGJlIGFibGUgdG8gY3JlYXRlIGEgcmVnbWFwIGluc3Rh
bmNlIHZpYQo+ID4gPiA+ID4gZGV2aWNlIHRyZWUgKGFuZCBwb3B1bGF0ZSBpdHMgY2hpbGQgbm9k
ZXM/KS4gTGlrZQo+ID4gPiA+ID4gICBjb21wYXRpYmxlID0gInN5c2NvbiIsICJzaW1wbGUtbWZk
IjsKPiA+ID4gPiA+IGJ1dCBmb3IgYW55IHJlZ21hcCwgbm90IGp1c3QgTU1JTy4KPiA+IAo+ID4g
QmluZ28hCj4gPiAKPiA+ID4gPiBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHRoaXMgd291bGQgYmUg
YW55dGhpbmcgc2VwYXJhdGUgdG8KPiA+ID4gPiBzaW1wbGUtbWZkLgo+ID4gPiAKPiA+ID4gRG9u
J3QganVzdCBzaW1wbGUtbWZkIHRlbGxzIHRoZSBvZiBjb3JlLCB0byBwcm9iZSB0aGUgY2hpbGRy
ZW4gdGhpcwo+ID4gPiBub2RlPyBXaGVyZSBkb2VzIHRoZSByZWdtYXAgdGhlbiBjb21lIGZyb20/
Cj4gPiAKPiA+IFJpZ2h0LiAgSSdtIHN1Z2dlc3RpbmcgYSBtZWFucyB0byBleHRyYXBvbGF0ZSBj
b21wbGV4IHNoYXJlZCBhbmQKPiA+IHNvbWV0aW1lcyBpbnRlcnR3aW5lZCBiYXRjaGVzIG9mIHJl
Z2lzdGVyIHNldHMgdG8gYmUgY29uc3VtZWQgYnkKPiA+IG11bHRpcGxlIChzdWItKWRldmljZXMg
c3Bhbm5pbmcgZGlmZmVyZW50IHN1YnN5c3RlbXMuCj4gPiAKPiA+IEFjdHVhbGx5IHNjcmFwIHRo
YXQuICBUaGUgbW9zdCBjb21tb24gY2FzZSBJIHNlZSBpcyBhIHNpbmdsZSBSZWdtYXAKPiA+IGNv
dmVyaW5nIGFsbCBjaGlsZC1kZXZpY2VzLiAgSXQgd291bGQgYmUgZ3JlYXQgaWYgdGhlcmUgd2Fz
IGEgd2F5IGluCj4gPiB3aGljaCB3ZSBjb3VsZCBtYWtlIGFuIGFzc3VtcHRpb24gdGhhdCB0aGUg
ZW50aXJlIHJlZ2lzdGVyIGFkZHJlc3MKPiA+IHNwYWNlIGZvciBhICd0YWdnZWQnIChNRkQpIGRl
dmljZSBpcyB0byBiZSBzaGFyZWQgKHZpYSBSZWdtYXApIGJldHdlZW4KPiA+IGVhY2ggb2YgdGhl
IGRldmljZXMgZGVzY3JpYmVkIGJ5IGl0cyBjaGlsZC1ub2Rlcy4gIFByb2JhYmx5IGJ5IHBpY2tp
bmcKPiA+IHVwIG9uIHRoZSAnc2ltcGxlLW1mZCcgY29tcGF0aWJsZSBzdHJpbmcgaW4gdGhlIGZp
cnN0IGluc3RhbmNlLgo+ID4gCj4gPiBSb2IsIGlzIHRoZSBhYm92ZSBzb21ldGhpbmcgeW91IHdv
dWxkIGNvbnRlbXBsYXRlPwo+IAo+IE5vLiBJJ2QgbGlrZSB0byBqdXN0IGtpbGwgb2ZmIHN5c2Nv
biBhbmQgc2ltcGxlLW1mZCByZWFsbHkuIFRob3NlIGFyZSAKPiBqdXN0IGhpbnRzIG1lYW5pbmcg
YSBzcGVjaWZpYyBjb21wYXRpYmxlIGlzIHN0aWxsIG5lZWRlZCwgYnV0IEkgc2VlIHRoZW0gCj4g
YWxsIHRoZSB0aW1lIGFsb25lIChvciBjb21iaW5lZCBsaWtlIGFib3ZlKS4gJ3N5c2NvbicganVz
dCBzZXJ2ZXMgdG8gCj4gY3JlYXRlIGEgcmVnbWFwLiBUaGlzIGNvdWxkIGJlIGFjY29tcGxpc2hl
ZCBqdXN0IHdpdGggYSBsaXN0IG9mIAo+IGNvbXBhdGlibGVzIHRvIHJlZ2lzdGVyIGEgcmVnbWFw
IGZvci4gVGhhdCBtaWdodCBiZSBhIGxvbmdpc2ggbGlzdCwgYnV0IAo+IHdhbnRpbmcgYSByZWdt
YXAgaXMgcmVhbGx5IGEga2VybmVsIGltcGxlbWVudGF0aW9uIGRldGFpbCBhbmQgZGVjaXNpb24u
CgpFeGFjdGx5LiAgU3lzY29uIGlzIGEgcmVhbCB0YW5naWJsZSB0aGluZyBhbmQgUmVnbWFwIGlz
IGEgTGludXgKc3Vic3lzdGVtLiAgU28gc3dhcHBpbmcgb3V0IHRoZSBmb3JtZXIgZm9yIHRoZSBs
YXR0ZXIgc291bmRzIGxpa2UgdGhlCm9wcG9zaXRlIG9mIHdoYXQgeW91J2Qgd2FudCB0byBkby4K
Cj4gPiA+IE1GRCBjb3JlIGNhbgo+ID4gPiBtYXRjaCBhIGRldmljZSB0cmVlIG5vZGUgdG9kYXk7
IGJ1dCBvbmx5IG9uZSBwZXIgdW5pcXVlIGNvbXBhdGlibGUKPiA+ID4gc3RyaW5nLiBTbyB3aGF0
IHNob3VsZCBJIHVzZSB0byBkaWZmZXJlbnRpYXRlIHRoZSBkaWZmZXJlbnQKPiA+ID4gc3ViZGV2
aWNlcz8KPiA+IAo+ID4gUmlnaHQuICBJIGhhdmUgYmVlbiBhd2FyZSBvZiB0aGlzIGlzc3VlLiAg
VGhlIG9ubHkgc3VpdGFibGUgc29sdXRpb24KPiA+IHRvIHRoaXMgd291bGQgYmUgdG8gbWF0Y2gg
b24gJ3JlZycuCj4gPiAKPiA+IEZZSTogSSBwbGFuIHRvIGZpeCB0aGlzLgo+ID4gCj4gPiBJZiB5
b3VyIHJlZ2lzdGVyIG1hcCBuZWVkcyB0byBjaGFuZ2UsIHRoZW4gSSBzdWdnZXN0IHRoYXQgdGhp
cyBpcwo+ID4gZWl0aGVyIGEgbmV3IGRldmljZSBvciBhdCBsZWFzdCBhIGRpZmZlcmVudCB2ZXJz
aW9uIG9mIHRoZSBkZXZpY2UgYW5kCj4gPiB3b3VsZCBhbHNvIGhhdmUgdG8gYmUgcmVwcmVzZW50
ZWQgYXMgZGlmZmVyZW50IChzdWItKW1mZF9jZWxsLgo+IAo+IFRoZSBzYW1lIHJlZ2lzdGVyIHNl
dCBhdCBhIGRpZmZlcmVudCBvZmZzZXQgaXMgdGhlIHNhbWUgKHN1YilkZXZpY2UuCgpTZWUgYmVs
b3cuCgo+ID4gPiBSb2Igc3VnZ2VzdGVkIHRoZSBpbnRlcm5hbCBvZmZzZXQsIHdoaWNoIEkgZGlk
IGhlcmUuCj4gPiAKPiA+IEZXSVcsIEkgZG9uJ3QgbGlrZSB0aGlzIGlkZWEuICBEVHMgc2hvdWxk
IG5vdCBoYXZlIHRvIGJlIG1vZGlmaWVkCj4gPiAoZWl0aGVyIGluIHRoZSBmaXJzdCBpbnN0YW5j
ZSBvciBzdWJzZXF1ZW50bHkpIG9yIHNwZWNpZmljYWxseQo+ID4gZGVzaWduZWQgdG8gcGF0Y2gg
aW5hZGVxdWFjaWVzIGluIGFueSBnaXZlbiBPUy4KPiAKPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRo
ZXJlIGNhbiBiZSBkaWZmZXJpbmcgY29tYmluYXRpb25zIG9yIG51bWJlciBvZiAKPiBpbnN0YW5j
ZXMgb2Ygc3ViIGRldmljZXMgZm9yIHRoaXMgZGV2aWNlLiBUaGF0J3Mgd2hlbiBoYXZpbmcgRFQg
c3ViIAo+IGRldmljZXMgbWFrZXMgc2Vuc2UuIElmIHRoZSBoL3cgY2hhbmdlcywgdGhlbiB0aGUg
RFQgc2hvdWxkIGNoYW5nZS4KClRoaXMgaXMgdGhlIHNhbWUgcG9pbnQgSSB3YXMgbWFraW5nIGFi
b3ZlLgoKPiBNdWx0aXBsZSBpbnN0YW5jZXMgb2YgZGV2aWNlcyByZXF1aXJlIGFuIGFkZHJlc3Mg
dG8gaWRlbnRpZnkgdGhlbSBhbmQgd2UgCj4gZG9uJ3QgbWFrZSB1cCBudW1iZXJpbmcgaWYgd2Ug
Y2FuIGF2b2lkIGl0LiBUaGUgZWFybGllciByZXZpc2lvbnMganVzdCAKPiBoYWQgbWFkZSB1cCBp
bmRpY2VzIGZvciBhZGRyZXNzZXMuCgpSaWdodC4gIFdoaWNoIEknbSBhZ2FpbnN0LgoKUGxhY2lu
ZyAiaW50ZXJuYWwgb2Zmc2V0cyIgaW50byB0aGUgJ3JlZycgcHJvcGVydHkgaXMgYSBoYWNrLgoK
VGhlIGlzc3VlIGlzLCBpZiB3ZSBuZWVkIHRvIGNvbmZpZ3VyZSB0aGUgZGV2aWNlcyBkaWZmZXJl
bnRseSwgdGhlbgpob3cgZG8gd2UgaWRlbnRpZnkgdGhlbSBpbiBvcmRlciB0byBlbnN1cmUgdGhl
IGNvcnJlY3QgT0Ygbm9kZSBwb2ludGVyCmlzIGFsbG9jYXRlZCB0byB0aGUgY29ycmVjdCBwbGF0
Zm9ybSBkZXZpY2U/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwg
TGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
