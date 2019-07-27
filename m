Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F80577958
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzQ1sx9xl3461Mr7yNVJ0K5NvoyzM7YP9A3Gwcq3JHY=; b=Y76fKhhGdXewTo
	TK9GjXdahRsVT0B8AwAKKKac+Dko2Sk9zD1PVJNRtJGCYz33xhoF+DOEREcSqYw/el4gR1rYryvuw
	sM5YZdxr/yDg6HtGcgIJ6UtlnH+QRZtHnh3C1qeZaK4OJ/YPwVYlYrEwq15jQtR4B1KKEXgTaWU9y
	NeSoO4Y9e3bbXCe2C+kMXIOGXT2RhfI5Kl9zQxoBI2qiKGpkCPy7FlCf0u8idhgN9TqqbIplL0iG/
	TuAp7jvzIFBNPbgOnBTOg17GVHigDTuQnjv6K4i3OVk5Gfv4/B0ghgpAXdax3S/UWXxBTBx14P+Pv
	k6MZ51uIwKkohAZJPS4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrO6X-0007vr-CD; Sat, 27 Jul 2019 14:55:25 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrO5w-0007vX-3J
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:54:49 +0000
Received: by mail-ed1-f67.google.com with SMTP id e3so55665025edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 07:54:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rbC/42M5pQNTgrVBuOqW03/stnb0sjIXK4Z9mFvmX3A=;
 b=GSORr0uw3oWT1l9y64Elh+ejSBXw57nK474jr/Zm4Oxgg/y6V59/hW8Wyk4Awc5Mk3
 eSDZpeMJNlfqCSjXj+fWVo+yHHZ3nUaeD8Dm41R+VLcSf8Yjlsmz8EIMYAbuu3xRPHQ6
 DWZc/OINtyRL0rHmOJtGsYaSfq1ldDTWomk6zLEeLeyDqUKlQpnLv+RQIBTVeamrd7vE
 dpFFx7WmQIw6iAXcEcfaAQkgEjecgMDKLmfPndVV/+DMami4i8tcSvqyntl7AYspx6hc
 xbA6qDMIWIZxL6g49gu6BBL0TB1uactEU7ZEmESxi51p7kazpSX5uQsfOZ53tmoiQzII
 liNg==
X-Gm-Message-State: APjAAAXioM9MlP/8WeUVqBTyejMlFH0ZfE0Bxp6tS6SRDgli32OtpYpM
 jZs3GyyJXE2DZQkCeukuE40CCiw12oA=
X-Google-Smtp-Source: APXvYqx9uAFsFSElRMJHB8oOYIDUOJ0mDzV0sdF291KdslrlfCQoOVHosUTv9DOZnWEJbIZZKoieDA==
X-Received: by 2002:aa7:c559:: with SMTP id s25mr86323490edr.117.1564239285268; 
 Sat, 27 Jul 2019 07:54:45 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com.
 [209.85.221.49])
 by smtp.gmail.com with ESMTPSA id hh16sm10511207ejb.18.2019.07.27.07.54.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 07:54:44 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id x1so7377075wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 07:54:44 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr27625205wrv.167.1564239284357; 
 Sat, 27 Jul 2019 07:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-6-jernej.skrabec@siol.net>
 <20190727105008.he35sixfvoyl2lm7@flea.home>
 <4063694.66Ui2fGJfo@jernej-laptop>
In-Reply-To: <4063694.66Ui2fGJfo@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sat, 27 Jul 2019 22:54:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v65a9jF3QsEQgTim_XxXjhd9K0KwDRxtqYMqsiy2yWLeBg@mail.gmail.com>
Message-ID: <CAGb2v65a9jF3QsEQgTim_XxXjhd9K0KwDRxtqYMqsiy2yWLeBg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 5/6] pwm: sun4i: Add support to output
 source clock directly
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_075448_150645_FFD18FD2 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-pwm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdWwgMjcsIDIwMTkgYXQgMTA6MjggUE0gSmVybmVqIMWga3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BzaW9sLm5ldD4gd3JvdGU6Cj4KPiBEbmUgc29ib3RhLCAyNy4ganVsaWogMjAxOSBv
YiAxMjo1MDowOCBDRVNUIGplIE1heGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiA+IE9uIEZyaSwg
SnVsIDI2LCAyMDE5IGF0IDA4OjQwOjQ0UE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
ID4gPiBQV00gY29yZSBoYXMgYW4gb3B0aW9uIHRvIGJ5cGFzcyB3aG9sZSBsb2dpYyBhbmQgb3V0
cHV0IHVuY2hhbmdlZCBzb3VyY2UKPiA+ID4gY2xvY2sgYXMgUFdNIG91dHB1dC4gVGhpcyBpcyBh
Y2hpZXZlZCBieSBlbmFibGluZyBieXBhc3MgYml0Lgo+ID4gPgo+ID4gPiBOb3RlIHRoYXQgd2hl
biBieXBhc3MgaXMgZW5hYmxlZCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5pbmcsIG5v
dAo+ID4gPiBldmVuIGVuYWJsZSBiaXQuCj4gPiA+Cj4gPiA+IFRoaXMgbW9kZSBvZiBvcGVyYXRp
b24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRvCj4gPiA+IHNl
cnZlIGFzIGNsb2NrIHNvdXJjZSBmb3IgQUMyMDAgY2hpcCwgd2hpY2ggaXMgaW50ZWdyYXRlZCBp
bnRvIHNhbWUKPiA+ID4gcGFja2FnZSBhcyBINiBTb0MuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+Cj4gPiBJdCBk
b2Vzbid0IHNlZW0gdG8gYmUgYXZhaWxhYmxlIG9uIHRoZSBBMTAgKGF0IGxlYXN0KSB0aG91Z2gu
IFRoZSBBMTMKPiA+IHNlZW0gdG8gaGF2ZSBpdCwgc28geW91IHNob3VsZCBwcm9iYWJseSBjaGVj
ayB0aGF0LCBhbmQgbWFrZSB0aGF0Cj4gPiBjb25kaXRpb25hbCB0byB0aGUgY29tcGF0aWJsZSBp
ZiBub3QgYXZhaWxhYmxlIG9uIGFsbCBvZiB0aGVtLgo+Cj4gT2ssIGNhbiB5b3Ugc3VnZ2VzdCB0
aGUgbmFtZSBmb3IgdGhlIHF1aXJrPyAiaGFzX2J5cGFzcyIgaXMgc3VzcGljaW91c2x5Cj4gc2lt
aWxhciB0byAiaGFzX3ByZXNjYWxlcl9ieXBhc3MiLgoKaGFzX2RpcmVjdF9tb2RfY2xrX291dHB1
dD8KCj4gQWxzbywgaG93IHRvIG5hbWUgdGhlc2Ugc3VuNGlfcHdtX2RhdGEgc3RydWN0dXJlcz8g
Tm93IHRoYXQgdGhlcmUgYXJlICh3aWxsCj4gYmUpIHRocmVlIG5ldyBxdWlya3MsIG5hbWUgb2Yg
dGhlIHN0cnVjdHVyZSB3b3VsZCBiZSBqdXN0IHRvbyBsb25nLCBsaWtlCj4gInN1bjUwaV9wd21f
ZHVhbF9wcmVzY2FsZXJfYnlwYXNzX2Nsa19yc3RfYnlwYXNzIi4KCkp1c3QgdXNlIHRoZSBTb0Mg
bW9kZWwuIEFueSBsYXRlciBvbmVzIHRoYXQgaGF2ZSB0aGUgc2FtZSBxdWlya3Mgd2lsbCBsaWtl
bHkKdXNlIHRoZSBzYW1lIGNvbXBhdGlibGUgc3RyaW5nIGFueXdheS4KCkNoZW5ZdQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
