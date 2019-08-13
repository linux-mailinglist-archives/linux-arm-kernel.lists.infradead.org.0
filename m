Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F7C8B65C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaN39TZEnPo0/L+rqKDZknE9oUeIkIeqcloZLp0LShc=; b=YLBSeVAYgvJlJh
	NLh4woZFDjzvaHzTf/7lLf3f29H1Ozq6IaHMP+t6iXwn/FKlOrmD/DY+HUrRZ3zRROr6fNVnyz4Je
	rSQLpzD3ldD8IDtDLIqWhnFaXQ2mvMcmGCci+IHo33BPAEQMhau1gaZrGXvcFLe2cI+RgyZ1zA9Uy
	U76Vjq7j19FHioGscTUm8/zOgvqZE/VdXZBP1TLQkDU4XwMODnCKPa2aY/2HkxEOgpRbKCOn14VJp
	e8OiSPcLB1PANXNzlH6dYlgLIfoTGvEGQsB8lr9HQOGuZ2o6xj36IhecNIUSZEciowWap3U7vnxam
	/naas1pJFpuV+IO99u3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUfF-0001Gg-0B; Tue, 13 Aug 2019 11:08:29 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUew-0001Fw-QS
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:08:12 +0000
Received: by mail-qt1-f194.google.com with SMTP id d17so26926129qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:08:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HIB1FeBMw0kT4n5nY36MOBb0YBcd6Z0mN5e+AnqNyZE=;
 b=Ua2xuurii2oinMKKjGr7NxvPknRu88ZncVkxXYap1kElRi1DGJtTGTGJcbd7bc7USR
 AoZrgBQmxGz+kNnOTGsyC4ZlxKt/OUQXxwCY+BSZ9I++RH6sk9+3bvgJ2L735zsLIHaP
 2cKzpd3qFddp/o3mVHsb8c7eTdP/jlzN5tdfbsGrpIJH2/XxXOgnwWA6r9YFNbAz666M
 SJHlptrMov8wGjMq1cm9UZW3277bTS4AcCgakAwCgyVX1nyYLgDvyrYVqKZUYsFVRJ7p
 TU4o6+xeW2LIhPMancnn5Pqm4GmQYQlGetzhj6HQHKWiqYU5n9YqrWFkIKxC0kOZtIZD
 4nVw==
X-Gm-Message-State: APjAAAVkuBCxctuj7yB8ROZ5Vx7hQIRYZFwgbXrVqJv+iKyjHI61nd9n
 +7k5OE+C5Ig2sBWoF+yxW892Olf3Ei7Ebzsx9LI=
X-Google-Smtp-Source: APXvYqx/nZIPgpCg9fJQAkQukfWpNlMRwI/isdIkz0cHDQdJwM+9xSo+AwlCQhvXJshxqmstDvAO0AUSd3UXwUs7kpw=
X-Received: by 2002:ad4:53cb:: with SMTP id k11mr1250357qvv.93.1565694488565; 
 Tue, 13 Aug 2019 04:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565367567.git.agx@sigxcpu.org>
 <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
 <CAK8P3a3Vrd+sttJrQwD-jA9p_egG4x-hc41eGK8H-_aVm-uoYw@mail.gmail.com>
 <20190813101057.GB10751@bogon.m.sigxcpu.org>
In-Reply-To: <20190813101057.GB10751@bogon.m.sigxcpu.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 13:07:52 +0200
Message-ID: <CAK8P3a1q9G8VKgNKh+6khzoW3bFTVR_Zorygy=Qqsq-PYzM4=g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040810_858831_F8C31606 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMTI6MTAgUE0gR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4gd3JvdGU6Cj4gT24gVHVlLCBBdWcgMTMsIDIwMTkgYXQgMTA6MDg6NDRBTSArMDIw
MCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+IE9uIEZyaSwgQXVnIDksIDIwMTkgYXQgNjoyNCBQ
TSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gVGhp
cyBhZGRzIGFsbCB0aGUgZ3ByIHJlZ2lzdGVycyBhbmQgdGhlIGRlZmluZSBuZWVkZWQgZm9yIHNl
bGVjdGluZwo+ID4gPiB0aGUgaW5wdXQgc291cmNlIGluIHRoZSBpbXgtbndsIGRybSBicmlkZ2Uu
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5v
cmc+Cj4gPiA+ICsKPiA+ID4gKyNkZWZpbmUgSU9NVVhDX0dQUjAgICAgMHgwMAo+ID4gPiArI2Rl
ZmluZSBJT01VWENfR1BSMSAgICAweDA0Cj4gPiA+ICsjZGVmaW5lIElPTVVYQ19HUFIyICAgIDB4
MDgKPiA+ID4gKyNkZWZpbmUgSU9NVVhDX0dQUjMgICAgMHgwYwo+ID4gPiArI2RlZmluZSBJT01V
WENfR1BSNCAgICAweDEwCj4gPiA+ICsjZGVmaW5lIElPTVVYQ19HUFI1ICAgIDB4MTQKPiA+ID4g
KyNkZWZpbmUgSU9NVVhDX0dQUjYgICAgMHgxOAo+ID4gPiArI2RlZmluZSBJT01VWENfR1BSNyAg
ICAweDFjCj4gPiAobW9yZSBvZiB0aGUgc2FtZSkKPiA+Cj4gPiBodWg/Cj4KPiBUaGVzZSBhcmUg
dGhlIG5hbWVzIGZyb20gdGhlIGlteDhNUSByZWZlcmVuY2UgbWFudWFsIChnZW5lcmFsIHB1cnBv
c2UKPiByZWdpc3RlcnMsIHRoZXkgbHVtcCB0b2dldGhlciBhbGwgc29ydHMgb2YgdGhpbmdzKSwg
aXQncyB0aGUgc2FtZSBvbgo+IGlteDYvaW14Nyk6Cj4KPiAgICAgaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvaW5j
bHVkZS9saW51eC9tZmQvc3lzY29uL2lteDZxLWlvbXV4Yy1ncHIuaAo+ICAgICBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
dHJlZS9pbmNsdWRlL2xpbnV4L21mZC9zeXNjb24vaW14Ny1pb211eGMtZ3ByLmgKPgo+ID4gPiAr
LyogaS5NWDhNcSBpb211eCBncHIgcmVnaXN0ZXIgZmllbGQgZGVmaW5lcyAqLwo+ID4gPiArI2Rl
ZmluZSBJTVg4TVFfR1BSMTNfTUlQSV9NVVhfU0VMICAgICAgICAgICAgICBCSVQoMikKPiA+Cj4g
PiBJIHRoaW5rIHRoaXMgZGVmaW5lIHNob3VsZCBwcm9iYWJseSBiZSBsb2NhbCB0byB0aGUgcGlu
Y3RybCBkcml2ZXIsIHRvCj4gPiBlbnN1cmUgdGhhdCBubyBvdGhlciBkcml2ZXJzIGZpZGRsZSB3
aXRoIHRoZSByZWdpc3RlcnMgbWFudWFsbHkuCj4KPiBUaGUgcHVycG9zZSBvZiB0aGVzZSBiaXRz
IGlzIGZvciBhIGRyaXZlciB0byBmaWRkbGUgd2l0aCB0aGVtIHRvIHNlbGVjdAo+IHRoZSBpbnB1
dCBzb3VyY2UuIFNpbWlsYXIgb24gaW14NyBpdCdzIGFscmVhZHkgdXNlZCBmb3IgZS5nLiB0aGUg
cGh5Cj4gcmVmY2xrIGluIHRoZSBwY2kgY29udHJvbGxlcjoKPgo+ICAgICBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJl
ZS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktaW14Ni5jI242MzgKClRoYXQgb25lIHNo
b3VsZCBsaWtlbHkgdXNlIGVpdGhlciB0aGUgY2xrIGludGVyZmFjZSBvciB0aGUgcGh5CmludGVy
ZmFjZSBpbnN0ZWFkLgoKPiBUaGUgR1BScyBhcmUgbm90IGFib3V0IHBhZCBjb25maWd1cmF0aW9u
IGJ1dCBnYXRoZXIgYWxsIHNvcnRzIG9mIHRoaW5ncwo+IChzZWN0aW9uIDguMi40IG9mIHRoZSBp
bXg4bXEgcmVmZXJlbmNlIG1hbnVhbCk6IHBjaWUgc2V0dXAsIGRzaSByZWxhdGVkCj4gYml0cyBz
byBJIGRvbid0IHRoaW5rIHRoaXMgc2hvdWxkIGJlIGRvbmUgdmlhIGEgcGluY3RybAo+IGRyaXZl
ci4gU2hvdWxkIHdlIGhhbmRsZSB0aGF0IGRpZmZlcmVudGx5IHRoYW4gb24gaW14Ni83PwoKSXQg
d291bGQgYmUgbmljZSB0byBmaXggdGhlIGV4aXN0aW5nIGNvZGUgYXMgd2VsbCwgYnV0IGZvciB0
aGUgbW9tZW50LApJIG9ubHkgdGhpbmsgd2Ugc2hvdWxkIG5vdCBhZGQgbW9yZSBvZiB0aGF0LgoK
R2VuZXJhbGx5IHNwZWFraW5nLCB3ZSBjYW4gdXNlIHN5c2NvbiB0byBkbyByYW5kb20gdGhpbmdz
IHRoYXQgZG9uJ3QKaGF2ZSBhIHN1YnN5c3RlbSBvZiB0aGVpciBvd24sIGJ1dCB3ZSBzaG91bGQg
bm90IHVzZSBpdCB0byBkbyB0aGluZ3MKdGhhdCBoYXZlIGFuIGV4aXN0aW5nIGRyaXZlciBmcmFt
ZXdvcmsgbGlrZSBwaW5jdHJsLCBjbG9jaywgcmVzZXQsIHBoeQpldGMuCgogICAgICAgQXJuZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
