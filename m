Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF3E11A5EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBQRrmJ0tQFFo/xDrjd7zicqe4QGALJZF9hFjIOTxwc=; b=rOr8HKABDtxo1Y
	UT81ip78tSlHzpdHF4lG9gYI2JX366lY/gSGNiKf/UzC812HNoMkCOpqATd94bniIwlTsXtV6O100
	FwkpnHZMawwR4htDmrt5dyZaBXFZc24DDfiXWJ+ABraLgjVjfZUUgPRr1l24M953QrNdq9jWaxVyH
	SZO8n7+HRgL//Pd1I7jaZgw5Zo3aL5Z9dvdMgGL0eqT64eszytOQ0z7TVOGJ1xarm+V2EYveN7+MP
	1kdeWz8jaZAdqX9HgiGDBs78JtR/apCEm1sFo1yDSNRmxiXSnTdahN9h96yynq5kT61wTxM3ri/PS
	3pXG2MomVXhxvIktp/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexRI-0000l8-0v; Wed, 11 Dec 2019 08:33:44 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexR9-0000kH-03
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:33:36 +0000
Received: by mail-ed1-f67.google.com with SMTP id dc19so18643882edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 00:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HzQhBjl4CEATxmwnIgxUg2g0u1Z69db5jVtArs+GAuc=;
 b=AMYDWXDOHUn89luro8psgQFGcigSRd3tPYKzmXkDhSt/1jtnzzsOzrrWckpz7Q4wQB
 DWZiSMPFo6xXu22KfEbsN5BTQK++AwdmBA1fDmQPh9q/wrDSk0mFDDckwfA+ObYeoA+1
 EfgKlubtODqnNvg7GUFFrxAbgxEdeGAEEqnKikuoxcW8r/fF5SGYMD9Mk7rZ8C22kQ0V
 baG2gRw/tVx1VM7X4b7NR4iCO9jO6nCnFB9huvMQG8xnjQ1NDQilym+TfgB4hJIg28z6
 FFJNjGDgVtotBI9hKSHm0wNGj1V+ph/ia/6kfiszyYymwcsKzY6saSQZXsl/0uM4VEVh
 wrnw==
X-Gm-Message-State: APjAAAWayijSfx/+4U5JEk2F361WeuHDTKBNCFMTbyMuQmWl6kOjkgF3
 xhutX+QA7bWe/feqeC2QJ5NTS0TZb4A=
X-Google-Smtp-Source: APXvYqxanZiW2ScQh1RVoBpu7hg+DOcUD1o7Bh8TuKHm2A9lCERcxTE1MV/+YzTNSITjDyM6ll8y7A==
X-Received: by 2002:a50:f38e:: with SMTP id g14mr1905318edm.168.1576053212709; 
 Wed, 11 Dec 2019 00:33:32 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id 2sm20422edv.87.2019.12.11.00.33.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 00:33:32 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id d16so22984182wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 00:33:32 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr2310139wra.23.1576053211823;
 Wed, 11 Dec 2019 00:33:31 -0800 (PST)
MIME-Version: 1.0
References: <20191210174710.10649-1-peron.clem@gmail.com>
 <20191211080633.a6yzwbxi7fcmislp@gilmour.lan>
In-Reply-To: <20191211080633.a6yzwbxi7fcmislp@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 11 Dec 2019 16:33:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mWgDKyZEWVVYqq5McOaYmiY0PSP7iXE8TBtVZv03u1Q@mail.gmail.com>
Message-ID: <CAGb2v66mWgDKyZEWVVYqq5McOaYmiY0PSP7iXE8TBtVZv03u1Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pwm: allwinner: Fix missing header in H6
 example
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_003335_041046_AC43EF46 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgNDowNiBQTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vy
bm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBUdWUsIERlYyAxMCwgMjAxOSBhdCAwNjo0NzoxMFBNICsw
MTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBMYXRlc3QgbGludXgtbmV4dCBkb2Vzbid0
IGJ1aWxkIGR1ZSB0byB0aGUgZm9sbG93aW5nIGVycm9yOgo+ID4KPiA+IEVycm9yOiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLmV4
YW1wbGUuZHRzOjM1LjM3LTM4Cj4gPiBzeW50YXggZXJyb3IKPiA+IEZBVEFMIEVSUk9SOiBVbmFi
bGUgdG8gcGFyc2UgaW5wdXQgdHJlZQo+ID4gbWFrZVsxXTogKioqIFtEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLmV4YW1wbGUuZHQu
eWFtbF0KPiA+IEVycm9yIDEKPiA+Cj4gPiBUaGlzIGlzIGR1ZSB0byBtaXNzaW5nIGhlYWRlciBp
biB0aGUgZGV2aWNlLXRyZWUgeWFtbCBleGFtcGxlLgo+ID4KPiA+IEZpeCB0aGlzIGJ5IGFkZGlu
ZyB0aGUgbWlzc2luZyBoZWFkZXJzLgo+ID4KPiA+IEZpeGVzOiA0ZWU5MjliM2YwOGUgKCJkdC1i
aW5kaW5nczogcHdtOiBhbGx3aW5uZXI6IEFkZCBINiBQV00gZGVzY3JpcHRpb24iKQo+ID4gUmVw
b3J0ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+Cj4gQXBwbGllZCwg
dGhhbmtzIQo+IE1heGltZQoKTWF5YmUgc3F1YXNoIGl0IGluc3RlYWQ/IDopCgpDaGVuWXUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
