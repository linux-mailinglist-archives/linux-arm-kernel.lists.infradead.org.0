Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929811E1C28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMjA5mG83Wx7ZKdy2KqyVkTdt6FvmL6bjuX2Sk+/SOM=; b=b+lw//wURDPCJq
	h8mgwV+SX075DbhZ6mbB8EAPJJMO4fanfFmf+evL4hV9VSVl1ZExPdD1dbca9pG7l7rl9z0S5VDzc
	DfPpka+QhPpf3dQ2Wx7k4wh4gf024PGsaforzno/73Rck9gCLH5FM49jzN74c7+3SCqfU3ZMh7xOR
	11jufwNTW7w8SBTsZEn8nyBLmyCk1pLjjCm2hVunmoGWCKHoPxDdB02B8XqmkuUbXZl4Z39HOThr1
	pLw3pOafFD2aWpyxzWK/qvNk4ZtGeP1EltcA+SsvVAszgDP43h467qQV313hdfhERJYcHLBNKbQy4
	Q5YA6BVO/16ZcYBQ8fFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTx9-0003qD-5w; Tue, 26 May 2020 07:24:47 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTwu-0003pH-Vh
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:24:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id y5so2187584wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=MecCjMd20t1+f6I9nwNK+2FBCJgJkQD5Pmqxvgh9VA8=;
 b=eiHKETmZiOUORm6uj3B4kuDo0VRvtDLuGSC0gNQ3a59gj373QKgaE721sKr/ykkKkg
 7qdUWclvwqMnNLFiJQqjOOugsHtPFLM6VSvw6jGro/v/ZXUj3U7qc3cxhrGVP5Clff5C
 8I/kJG/n5bQk4GhT/fjWSKolKOJzr1yVQ8sa3VNlxlUkbdNRZnRxvvQcDeRvrUdeGhOX
 vnUF6o45Z9ZzuAllwXv+BGt/2TaKUqdapTdBLjOcpj6v24tMnf5vLKUJ7owDZVWdzoRu
 kiTlj5+sDCTHTBvmnRy3l/AhKDw/A1M3UghofyLUTYtjHz0QfkOD1gcfXFTNU12x61J9
 25PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=MecCjMd20t1+f6I9nwNK+2FBCJgJkQD5Pmqxvgh9VA8=;
 b=bNUkzR2HOe3YhI1XdjmN9BP+seA9FJqvJWKXIrzPlh5vE9Rf+77sD3ixg2z6YhtrTM
 BMtgAHtKr8Z976Trc7Ui/++/cWbMjNNlXNI0UeLdn/9sJE7BjCqFHnmNRiprMlvXYsyt
 SPyAG+WBIHQOudYcAseSo0RDtAIdOBJ35evR0yQFJkMaQG/MvyFKmST6W0Xh7dnd7XE9
 1SqHYDOrC0WVdFTMJPeph7umGPpqu7YxT+l9ucTFxZFDIldL0ayBugfPkTBQ8fyL1d9e
 dy7UUNlcvgn3sN4uRgfcix5kVgu3gcstbGkW+OYfqUjVRw+heCcn6eMoAp3ILJsmJyN2
 fHVw==
X-Gm-Message-State: AOAM530ivWg2bn56hLzelP+2mPoFnI4vfOyukAkmcC45gFh8rxe9gRiZ
 xvwF1S6QNUiqs60AyCzVqAFj7Q==
X-Google-Smtp-Source: ABdhPJwmU+QRbZ/BsP6+F83Pu7Mwfeap63WbqvY224Kv0JCyRvDBG7exlrbFRDFk1GmkCzHs6nyaKg==
X-Received: by 2002:a1c:acc8:: with SMTP id v191mr59767wme.154.1590477870140; 
 Tue, 26 May 2020 00:24:30 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id l17sm6343895wmi.3.2020.05.26.00.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:24:29 -0700 (PDT)
Date: Tue, 26 May 2020 08:24:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200526072427.GC3628@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
 <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_002433_088040_5D568D1F 
X-CRM114-Status: GOOD (  28.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNSBNYXkgMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNS0x
NSAxMjoyOCwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBUaHUsIDMwIEFwciAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gCj4gPiA+IEhpIExlZSwKPiA+ID4gCj4gPiA+IEFtIDIwMjAt
MDQtMjMgMTk6NDUsIHNjaHJpZWIgTWljaGFlbCBXYWxsZToKPiA+ID4gPiBUaGVyZSBtaWdodCBi
ZSBtdWx0aXBsZSBjaGlsZHJlbiB3aXRoIHRoZSBkZXZpY2UgdHJlZSBjb21wYXRpYmxlLCBmb3IK
PiA+ID4gPiBleGFtcGxlIGlmIGEgTUZEIGhhcyBtdWx0aXBsZSBpbnN0YW5jZXMgb2YgdGhlIHNh
bWUgZnVuY3Rpb24uIEluIHRoaXMKPiA+ID4gPiBjYXNlIG9ubHkgdGhlIGZpcnN0IGlzIG1hdGNo
ZWQgYW5kIHRoZSBvdGhlciBjaGlsZHJlbiBnZXQgYSB3cm9uZwo+ID4gPiA+IG9mX25vZGUgcmVm
ZXJlbmNlLgo+ID4gPiA+IEFkZCBhIG5ldyBvcHRpb24gdG8gbWF0Y2ggYWxzbyBhZ2FpbnN0IHRo
ZSB1bml0IGFkZHJlc3Mgb2YgdGhlIGNoaWxkCj4gPiA+ID4gbm9kZS4gQWRkaXRvbmFsbHksIGEg
bmV3IGhlbHBlciBPRl9NRkRfQ0VMTF9SRUcgaXMgYWRkZWQuCj4gPiA+IAo+ID4gPiAKPiA+ID4g
RG8geW91IHRoaW5rIHRoaXMgaXMgZmVhc2libGU/IEkgZ3Vlc3MgdGhpcyBpcyB0aGUgYmlnZ2Vz
dCB1bmNlcnRhaW50eQo+ID4gPiBmb3IgbWUgYXQgdGhlIG1vbWVudCBpbiB0aGlzIHBhdGNoIHNl
cmllcy4KPiA+IAo+ID4gSSB0aGluayBpdCBzb3VuZHMgZmluZSBpbiBwcmluY2lwbGUuICBTbyBs
b25nIGFzIGl0IGRvZXNuJ3QgY2hhbmdlIHRoZQo+ID4gZXhpc3RpbmcgYmVoYXZpb3VyIHdoZW4g
b2ZfcmVnIGlzbid0IHNldC4KPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgV2Fs
bGUgPG1pY2hhZWxAd2FsbGUuY2M+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvbWZkL21m
ZC1jb3JlLmMgICB8IDI5ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gPiA+ID4gIGlu
Y2x1ZGUvbGludXgvbWZkL2NvcmUuaCB8IDI2ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4g
PiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0p
CgpbLi4uXQoKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tZmQvY29yZS5oIGIv
aW5jbHVkZS9saW51eC9tZmQvY29yZS5oCj4gPiA+ID4gaW5kZXggZDAxZDEyOTllNDlkLi5jMmMw
YWQ2YjE0ZjMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9tZmQvY29yZS5oCj4g
PiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQvY29yZS5oCj4gPiA+ID4gQEAgLTEzLDggKzEz
LDExIEBACj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiA+ID4g
Pgo+ID4gPiA+ICAjZGVmaW5lIE1GRF9SRVNfU0laRShhcnIpIChzaXplb2YoYXJyKSAvIHNpemVv
ZihzdHJ1Y3QgcmVzb3VyY2UpKQo+ID4gPiA+ICsjZGVmaW5lIE1GRF9PRl9SRUdfVkFMSUQJQklU
KDMxKQo+ID4gCj4gPiBXaGF0IGFib3V0IDY0Yml0IHBsYXRmb3Jtcz8KPiAKPiBUaGUgaWRlYSB3
YXMgdG8gaGF2ZSB0aGlzIGFzIGEgbG9naWNhbCBudW1iZXIuIEkuZS4gZm9yIG5vdyB5b3UgbWF5
IG9ubHkKPiBoYXZlIG9uZSBzdWJkZXZpY2UgcGVyIHVuaXF1ZSBjb21wYXRpYmxlIHN0cmluZy4g
SW4gZmFjdCwgaWYgeW91IGhhdmUgYQo+IGxvb2sgYXQgdGhlIGFiODUwMC5jLCB0aGVyZSBhcmUg
bXVsdGlwbGUgInN0ZXJpY3Nzb24sYWI4NTAwLXB3bSIKPiBzdWJkZXZpY2VzLiBCdXQgdGhlcmUg
aXMgb25seSBvbmUgRFQgbm9kZSBmb3IgYWxsIHRocmVlIG9mIGl0LiBJIGd1ZXNzCj4gdGhpcyB3
b3JrcyBhcyBsb25nIGFzIHlvdSBkb24ndCB1c2UgcGhhbmRsZXMgdG8gcmVmZXJlbmNlIHRoZSBw
d20gbm9kZQo+IGluIHRoZSBkZXZpY2UgdHJlZS4gT3IgeW91IGRvbid0IHdhbnQgdG8gdXNlIGRl
dmljZSB0cmVlIHByb3BlcnRpZXMKPiBwZXIgc3ViZGV2aWNlIChmb3IgZXhhbXBsZSB0aGUgInRp
bWVvdXQtc2VjIiBvZiBhIHdhdGNoZG9nIGRldmljZSkuCj4gCj4gU28gdG8gY2lyY3VtdmVudCB0
aGlzLCBJIHRob3VnaHQgb2YgaGF2aW5nIHRoZSB1bml0LWFkZHJlc3MgKGFuZCB0aHVzCj4gdGhl
ICJyZWciIHByb3BlcnR5KSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gbXVsdGlwbGUgc3ViZGV2
aWNlcy4gTm93Cj4gdGhlcmUgaXMgb25lIHNwZWNpYWwgY2FzZSBmb3IgbWU6IHRoaXMgYm9hcmQg
bWFuYWdlbWVudCBjb250cm9sbGVyCj4gbWlnaHQgYmUgdXBncmFkYWJsZSBhbmQgaXQgbWlnaHQg
Y2hhbmdlIGludGVybmFsbHkuIFRodXMgSSBjYW1lIHVwCj4gd2l0aCB0aGF0IGxvZ2ljYWwgbnVt
YmVyaW5nIG9mIHN1YmRldmljZXMuIFJvYiBkb2Vzbid0IHNlZW0gdG8gYmUgYQo+IGZhbiBvZiB0
aGF0LCB0aG91Z2guIFRoZXJlZm9yZSwgaGF2aW5nIGJpdCAzMSBhcyBhIHZhbGlkIGluZGljYXRv
cgo+IGxlYXZlcyB5b3Ugd2l0aCAyXjMxIGxvZ2ljYWwgZGV2aWNlcywgd2hpY2ggc2hvdWxkIGJl
IGVub3VnaCA7KQo+IAo+IFJvYiBwcm9wb3NlZCB0byBoYXZlIHRoZSBpbnRlcm5hbCBvZmZzZXQg
YXMgdGhlIHVuaXQtYWRkcmVzcy4gQnV0Cj4gaW4gdGhhdCBjYXNlIEkgY2FuIGFsc28gdXNlIGRl
dm1fb2ZfcGxhdGZvcm1fcG9wdWxhdGUoKSBhbmQgZG9uJ3QKPiBuZWVkIHRoZSBPRl9NRkRfQ0VM
TF9SRUc7IEknZCBqdXN0IHBhcnNlIHRoZSByZWcgb2Zmc2V0IGluIGVhY2gKPiBpbmRpdmlkdWFs
IHN1YmRldmljZSBkcml2ZXIuIEJ1dCBsaWtlIEkgc2FpZCwgSSB3YW50ZWQgdG8ga2VlcCB0aGUK
PiBpbnRlcm5hbCBvZmZzZXRzIG91dCBvZiB0aGUgZGV2aWNlIHRyZWUuCgpPaCwgSSBzZWUgd2hh
dCB5b3UncmUgZG9pbmcuCgpTbyB5b3UncmUgYWRkaW5nIGFuIGFyYml0cmFyeSBJRCB0byB0aGUg
ZGV2aWNlJ3MgcmVnIHByb3BlcnR5IGluIERUPwoKSG93IGlzIHRoaXMgbm90IGEgaGFjaz8KCldo
eSBkb24ndCB5b3UgdXNlIHRoZSBmdWxsIGFkZHJlc3MgZm9yIGlkZW50aWZpY2F0aW9uPwoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
