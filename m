Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3DE89855
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8K+rgSYB3ObDmoHEHGxRjy9mdvJ63ujvw3SDgXIcFwo=; b=Joxc4JHuBJ9BvS
	uN+F/lEtLMHd5xFHIpOc8zCZckWn740gyMCypHZZ/hcOFXDuThysQ8GUhV7j5gsZxj8UiIGO9gWFG
	j/8mIrWKRKObU2rUkedBmKJEfeRQGGGCjK5i7qt4IU4VSDOvwg08TQpUVYdH+QC9F2mvuYknnZ22g
	fo/+EuG6cp2H63tkkDQdmeNEa3mrlccEqkid4NmoUV8jSWVqAhbv3cfARmsjZ4CVRU0U70BejR1i1
	J83nBMWoap9nhLYRT15C2Q6R7WIc4EK9ZhxAhzbAfKS7zfxw10mpmiD+VdAZB86WvKC5YUe5PSU70
	jAHpd0kY0ryVvIET4SXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5AF-0005lg-SA; Mon, 12 Aug 2019 07:54:48 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx59m-0005lH-Rq
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:54:20 +0000
Received: by mail-ed1-f65.google.com with SMTP id f22so51569edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 00:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SOVNyFeEtai/A5ZZgvPx+OqlDS//TmiI6n774GHwAK8=;
 b=IhXpZ41OxNKsiO0262I4HgQK+7mkUQY0BIWjhfZtcKZh7NApuVYhhjrVUMf3w41UZR
 UpxPkll/Vm/ZQDHuJdMPvisA64VSC/6OQIZ0sGXfQpS3YF+YV72eoZpF0azMm7Ipq/l2
 yj8/5AGIN/HnDuhKL+00hfKdr5UeJRmss4x6oXy/7RKJLgZZWRw3/O7plhgZuHCfbCFX
 vs5hX/WodDrU255M9zPbN4cPzMmDtKKC3U1V5TBE2s7Mr0iPjKCtL60/iYF3Fmab3e5F
 /NbnLKmqps5doxLXciXFP6DqyVEnHjXbdnWH8kB8XYEqiaMk4SyjthE+DWKvypVf+es8
 GaAg==
X-Gm-Message-State: APjAAAXNNqaRGwUNl/obgKOIzKrvVmSi4utykHNbQOFuv9LcwtrycYqs
 o9u028NNjaFV2Ga7rvHWwaKfaPNSoPA=
X-Google-Smtp-Source: APXvYqz41WcY3pNQNfkVkx/WEyiPLSnz1t4OdLcdEE3QvlMmtmTUqulbRyV3Y3nJGIk67wbNmJYR3Q==
X-Received: by 2002:a17:906:49c8:: with SMTP id
 w8mr28897268ejv.259.1565596456480; 
 Mon, 12 Aug 2019 00:54:16 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id a22sm16870426eje.61.2019.08.12.00.54.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 00:54:15 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id z1so103718542wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 00:54:14 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr39772503wrn.279.1565596454773; 
 Mon, 12 Aug 2019 00:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190806155744.10263-1-megous@megous.com>
 <2218280.0sI6yjypBf@jernej-laptop>
In-Reply-To: <2218280.0sI6yjypBf@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 12 Aug 2019 15:54:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v67JVG2rhOdUwBmfsO0+RYb4DNOPmUo=Q_UhL3N+niLiEg@mail.gmail.com>
Message-ID: <CAGb2v67JVG2rhOdUwBmfsO0+RYb4DNOPmUo=Q_UhL3N+niLiEg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v8 0/4] Add support for Orange Pi 3
To: Jernej Skrabec <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_005419_038389_4B5AD39D 
X-CRM114-Status: GOOD (  33.23  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
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
Cc: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMzo0NSBQTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBEbmUgdG9yZWssIDA2LiBhdmd1c3QgMjAxOSBv
YiAxNzo1NzozOSBDRVNUIGplIG1lZ291c0BtZWdvdXMuY29tIG5hcGlzYWwoYSk6Cj4gPiBGcm9t
OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+Cj4gPiBUaGlzIHNlcmllcyBp
bXBsZW1lbnRzIHN1cHBvcnQgZm9yIFh1bmxvbmcgT3JhbmdlIFBpIDMgYm9hcmQuIFRoZXJlCj4g
PiBhcmUgb25seSBhIGZldyBwYXRjaGVzIHJlbWFpbmluZy4KPiA+Cj4gPiAtIGV0aGVybmV0IHN1
cHBvcnQgLSBqdXN0IGEgRFQgY2hhbmdlIChwYXRjaCAxKQo+ID4gLSBIRE1JIHN1cHBvcnQgKHBh
dGNoZXMgMi00KQo+ID4KPiA+IEZvciBzb21lIHBlb3BsZSwgZXRoZXJuZXQgZG9lc24ndCB3b3Jr
IGFmdGVyIHJlYm9vdCBiZWNhdXNlIHUtYm9vdCBkb2Vzbid0Cj4gPiBzdXBwb3J0IEFYUDgwNSBQ
TUlDLCBhbmQgd2lsbCBub3QgdHVybiBvZmYgdGhlIGV0aGVyZW50IFBIWSByZWd1bGF0b3JzLgo+
ID4gU28gdGhlIHJlZ3VsYXRvciBjb250cm9sbGVkIGJ5IGdwaW8gd2lsbCBiZSBzaHV0IGRvd24s
IGJ1dCB0aGUgb3RoZXIgb25lCj4gPiBjb250cm9sbGVkIGJ5IHRoZSBBWFAgUE1JQyB3aWxsIG5v
dC4KPiA+Cj4gPiBUaGlzIGlzIGEgcHJvYmxlbSBvbmx5IHdoZW4gcnVubmluZyB3aXRoIGEgYnVp
bHRpbiBkcml2ZXIuIFRoaXMgbmVlZHMKPiA+IHRvIGJlIGZpeGVkIGluIHUtYm9vdC4KPiA+Cj4g
Pgo+ID4gUGxlYXNlIHRha2UgYSBsb29rLgo+Cj4gSXMgdGhlcmUgYW55dGhpbmcgbWlzc2luZz8g
SXQgd291bGQgYmUgbmljZSB0byBnZXQgdGhpcyBpbiA1LjQuIFRoZXJlIGlzIGEgbG90Cj4gb2Yg
SDYgYm9hcmRzIHdoaWNoIG5lZWRzIEREQyBidXMgZW5hYmxlIG1lY2hhbmlzbSAocGFydCBvZiBI
NiByZWZlcmVuY2UKPiBkZXNpZ24pLCBpbmNsdWRpbmcgQmVlbGluayBHUzEgd2hpY2ggYWxyZWFk
eSBoYXMgSERNSSBub2RlIGluIG1haW5saW5lIGtlcm5lbAo+IERULCBidXQgZHVlIHRvIGRpc2Fi
bGVkIEREQyBsaW5lcyB3b3JrcyBvbmx5IHdpdGggMTAyNHg3NjggKGZhbGxiYWNrCj4gcmVzb2x1
dGlvbiBpbiBEUk0gY29yZSkuCgpJIGhhdmUgYSBmZXcgbWlub3IgY29tbWVudHMgYWJvdXQgcGF0
Y2ggMS4KCkkgdGhpbmsgdGhlIEhETUkgYml0cyBhcmUgZ29vZCwgYnV0IEkgZG9uJ3QgaGF2ZSBt
YWludGFpbmVyc2hpcCAvIGNvbW1pdApwZXJtaXNzaW9ucyBmb3IgZHJtLW1pc2MsIHNvIEknbGwg
aGF2ZSB0byB3YWl0IHVudGlsIHNvbWVvbmUgYXBwbGllcyBwYXRjaGVzCjIgYW5kIDMgYmVmb3Jl
IEkgYXBwbHkgcGF0Y2ggNC4KCkNoZW5ZdQoKPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4KPiA+
Cj4gPiB0aGFuayB5b3UgYW5kIHJlZ2FyZHMsCj4gPiAgIE9uZHJlaiBKaXJtYW4KPiA+Cj4gPiBD
aGFuZ2VzIGluIHY4Ogo+ID4gLSBhZGRlZCByZXZpZXdlZC1ieSB0YWdzCj4gPiAtIGRyb3BwZWQg
YWxyZWFkeSBhcHBsaWVkIHBhdGNoZXMKPiA+IC0gYWRkZWQgbW9yZSBpbmZvIGFib3V0IHRoZSBw
aHkgaW5pdGlhbGl6YXRpb24gaXNzdWUgYWZ0ZXIgcmVzZXQKPiA+Cj4gPiBDaGFuZ2VzIGluIHY3
Ogo+ID4gLSBkcm9wcGVkIHN0b3JlZCByZWZlcmVuY2UgdG8gY29ubmVjdG9yX3BkZXYgYXMgc3Vn
Z2VzdGVkIGJ5IEplcm5lago+ID4gLSBhZGRlZCBmb3Jnb3R0ZW4gZHQtYmluZGluZ3MgcmV2aWV3
ZWQtYnkgdGFnCj4gPgo+ID4gQ2hhbmdlcyBpbiB2NjoKPiA+IC0gYWRkZWQgZHQtYmluZGluZ3Mg
cmV2aWV3ZWQtYnkgdGFnCj4gPiAtIGZpeCB3b3JkaW5nIGluIHN0bW1hYyBjb21taXQgKGFzIHN1
Z2dlc3RlZCBieSBTZXJnZWkpCj4gPgo+ID4gQ2hhbmdlcyBpbiB2NToKPiA+IC0gZHJvcHBlZCBh
bHJlYWR5IGFwcGxpZWQgcGF0Y2hlcyAocGluY3RybCBwYXRjaGVzLCBtbWMxIHBpbmNvbmYgcGF0
Y2gpCj4gPiAtIHJlbmFtZSBHTUFDLTNWMyAtPiBHTUFDLTNWIHRvIG1hdGNoIHRoZSBzY2hlbWF0
aWMgKEphZ2FuKQo+ID4gLSBjaGFuZ2VkIGhkbWktY29ubmVjdG9yJ3MgZGRjLXN1cHBseSBwcm9w
ZXJ0eSB0byBkZGMtZW4tZ3Bpb3MKPiA+ICAgKFJvYiBIZXJyaW5nKQo+ID4KPiA+IENoYW5nZXMg
aW4gdjQ6Cj4gPiAtIGZpeCBjaGVja3BhdGNoIHdhcm5pbmdzL3N0eWxlIGlzc3Vlcwo+ID4gLSB1
c2UgZW51bSBpbiBzdHJ1Y3Qgc3VueGlfZGVzY19mdW5jdGlvbiBmb3IgaW9fYmlhc19jZmdfdmFy
aWFudAo+ID4gLSBjb2xsZWN0ZWQgYWNrZWQtYnkncwo+ID4gLSBmaXggY29tcGlsZSBlcnJvciBp
biBkcml2ZXJzL3BpbmN0cmwvc3VueGkvcGluY3RybC1zdW45aS1hODAtci5jOjE1Ngo+ID4gICBj
YXVzZWQgYnkgbWlzc2luZyBjb252ZXJzaW9uIGZyb20gaGFzX2lvX2JpYXNfY2ZnIHN0cnVjdCBt
ZW1iZXIKPiA+ICAgKEkndmUga2VwdCB0aGUgYWNrZWQtYnksIGJlY2F1c2UgaXQncyBhIHRyaXZp
YWwgY2hhbmdlLCBidXQgZmVlbCBmcmVlCj4gPiAgIHRvIG9iamVjdC4pIChyZXBvcnRlZCBieSBN
YXJ0aW4gQS4gb24gZ2l0aHViKQo+ID4gICBJIGRpZCBub3QgaGF2ZSBBODAgcGluY3RybCBlbmFi
bGVkIGZvciBzb21lIHJlYXNvbiwgc28gSSBkaWQgbm90IGNhdGNoCj4gPiAgIHRoaXMgc29vbmVy
Lgo+ID4gLSBkcm9wcGVkIGJyY20gZmlybXdhcmUgcGF0Y2ggKHdhcyBhbHJlYWR5IGFwcGxpZWQp
Cj4gPiAtIGRyb3BwZWQgdGhlIHdpZmkgZHRzIHBhdGNoICh3aWxsIHJlLXNlbmQgYWZ0ZXIgSDYg
UlRDIGdldHMgbWVyZ2VkLAo+ID4gICBhbG9uZyB3aXRoIGJsdWV0b290aCBzdXBwb3J0LCBpbiBh
IHNlcGFyYXRlIHNlcmllcykKPiA+Cj4gPiBDaGFuZ2VzIGluIHYzOgo+ID4gLSBkcm9wcGVkIGFs
cmVhZHkgYXBwbGllZCBwYXRjaGVzCj4gPiAtIGNoYW5nZWQgcGluY3RybCBJL08gYmlhcyBzZWxl
Y3Rpb24gY29uc3RhbnRzIHRvIGVudW0gYW5kIHJlbmFtZWQKPiA+IC0gYWRkZWQgL29taXQtaWYt
bm8tcmVmLyB0byBtbWMxX3BpbnMKPiA+IC0gbWFkZSBtbWMxX3BpbnMgZGVmYXVsdCBwaW5jb25m
IGZvciBtbWMxIGluIEg2IGR0c2kKPiA+IC0gbW92ZSBkZGMtc3VwcGx5IHRvIEhETUkgY29ubmVj
dG9yIG5vZGUsIHVwZGF0ZWQgcGF0Y2ggZGVzY3JpcHRpb25zLAo+ID4gICBjaGFuZ2VkIGR0LWJp
bmRpbmdzIGRvY3MKPiA+Cj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gLSBhZGRlZCBkdC1iaW5kaW5n
cyBkb2N1bWVudGF0aW9uIGZvciB0aGUgYm9hcmQncyBjb21wYXRpYmxlIHN0cmluZwo+ID4gICAo
c3VnZ2VzdGVkIGJ5IENsZW1lbnQpCj4gPiAtIGFkZHJlc3NlZCBjaGVja3BhdGNoIHdhcm5pbmdz
IGFuZCBjb2RlIGZvcm1hdHRpbmcgaXNzdWVzIChvbiBNYXhpbWUncwo+ID4gICBzdWdnZXN0aW9u
cykKPiA+IC0gc3RtbWFjOiBkcm9wcGVkIHVzZWxlc3MgcGFyZW50aGVzaXMsIHJld29yZGVkIGRl
c2NyaXB0aW9uIG9mIHRoZSBwYXRjaAo+ID4gICAoc3VnZ2VzdGVkIGJ5IFNlcmdlaSkKPiA+IC0g
ZHJvcCB1c2VsZXMgZGV2X2luZm8oKSBhYm91dCB0aGUgc2VsZWN0ZWQgaW8gYmlhcyB2b2x0YWdl
Cj4gPiAtIGRvY3VtbWVudGVkIGlvIHZvbHRhZ2UgYmlhcyBzZWxlY3Rpb24gdmFyaWFudCBtYWNy
b3MKPiA+IC0gd2lmaTogbWFya2VkIFdpRmkgRFRTIHBhdGNoIGFuZCByZWFsdGVkIG1tYzFfcGlu
cyBhcyAiRE8gTk9UIE1FUkdFIiwKPiA+ICAgYmVjYXVzZSB3aWZpIGRlcGVuZHMgb24gSDYgUlRD
IHN1cHBvcnQgdGhhdCdzIG5vdCBtZXJnZWQgeWV0IChzdWdnZXN0ZWQKPiA+ICAgYnkgQ2xlbWVu
dCkKPiA+IC0gYWRkZWQgbWlzc2luZyBzaWduZWQtb2YtYnlzCj4gPiAtIGNoYW5nZWQgJnVzYjJv
dGcgZHJfbW9kZSB0byBvdGcsIGFuZCBhZGRlZCBhIG5vdGUgYWJvdXQgVkJVUwo+ID4gLSBpbXBy
b3ZlZCB3b3JkaW5nIG9mIEhETUkgZHJpdmVyJ3MgRERDIHBvd2VyIHN1cHBseSBwYXRjaAo+ID4K
PiA+IE9uZHJlaiBKaXJtYW4gKDQpOgo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IG9yYW5n
ZS1waS0zOiBFbmFibGUgZXRoZXJuZXQKPiA+ICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IGhkbWkt
Y29ubmVjdG9yOiBTdXBwb3J0IEREQyBidXMgZW5hYmxlCj4gPiAgIGRybTogc3VuNGk6IEFkZCBz
dXBwb3J0IGZvciBlbmFibGluZyBEREMgSTJDIGJ1cyB0byBzdW44aV9kd19oZG1pIGdsdWUKPiA+
ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBvcmFuZ2UtcGktMzogRW5hYmxlIEhETUkgb3V0cHV0
Cj4gPgo+ID4gIC4uLi9kaXNwbGF5L2Nvbm5lY3Rvci9oZG1pLWNvbm5lY3Rvci50eHQgICAgICB8
ICAxICsKPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMgICAg
fCA3MCArKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhp
X2R3X2hkbWkuYyAgICAgICAgIHwgNTQgKysrKysrKysrKysrLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vc3VuNGkvc3VuOGlfZHdfaGRtaS5oICAgICAgICAgfCAgMiArCj4gPiAgNCBmaWxlcyBjaGFu
Z2VkLCAxMjMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+Cj4KPgo+IC0tCj4gWW91
IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUg
R29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+IFRvIHVuc3Vic2NyaWJlIGZyb20g
dGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1h
aWwgdG8gbGludXgtc3VueGkrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KPiBUbyB2aWV3
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViLCB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2QvbXNnaWQvbGludXgtc3VueGkvMjIxODI4MC4wc0k2eWp5cEJmJTQwamVybmVqLWxhcHRv
cC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
