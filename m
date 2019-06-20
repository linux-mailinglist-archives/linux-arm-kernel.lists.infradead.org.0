Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090364D280
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0bLboqcR9zdrN3HSfzWwFR/b2XbUSNOoVMAfQqopEw=; b=p8XKhbG+oigdek
	c9hWaDrmAcg993PmaYsy1QzlxofGAtF5xTi1LJ+AiMq96K+rL/G9OLCEnXUWm8cNL3sWHm39ExNo8
	iHoam1x3qM/rfw7HNHIqg8KRt8LE9XGzfxZaIGBgzMFUlU6x6TcveL49aDGsGT3WwUtLNlPtb7ucj
	QBuCOZDepXuLXpwSVz4U5w5Rc17blfougPGQomawCw0m2sqkKrBuY9H6LkbolkKRk5070MQUSKXUY
	MFW9m9k+l/U/TLu/jXSVi68wGsTe1Beh4mWhfPwxbFIo4vls31hiek7nSecuVZb2kAydN6HQOtInf
	gF+5kwsnSSqDchwD7jLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzOE-00058v-6K; Thu, 20 Jun 2019 15:54:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzNz-000589-Fv
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:54:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so3575119wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q2BZSgLwxymATwcz5mZeMXxgTAlopkINs/PMNefIvUU=;
 b=V44Esc+XKQSOQjNnaxw2MmMTKdJaJKQDxq17rl0lBAneRfZN1f8XeL5yyjyQyrOSOa
 FOfj2kwyNRS6HcW9PAPst6IjjKKkU3xxvrLkESfhmQZAPNvN6EkfJnAbjkY3PoX1v35I
 0monHG7qNbVh+PckIESPcARdhbOow9+mlJxI6YjsIIqmz532OE0y3GP28s3Ogpzt4z6/
 /n/pZlnjpYEvB1tlUCbEZawOHnoFxPDA+q5gLVoWxYEuh5iN8f5oZEqewN4ttmGHe0P3
 XoQRJJUakLeW6GigtSRWsIH0o1zAzuVucDEgR2zJlzBu4kv0rX7gVRK2zoVE0SSAu+rV
 +ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q2BZSgLwxymATwcz5mZeMXxgTAlopkINs/PMNefIvUU=;
 b=A66tghD0KukIK3c+ilYSgp1/FIyO4n4kXKU68p4DGG+v1B2Tsxlyakofn0VMfewA4v
 VLiUVXoRzrJBpRgiRSHVMPle0pxYsoBE5mD+IUuoIU0v/aK4JA3Et4wVrrvZexlXzm7L
 o611oft/GM1GnWuKeTwDcygo6pDMQEOXMkKxi5zG4bC1dp8JJFmRF1vAxAPThtmE+Am+
 NGF8KoeRfb8Rq7Hzn8cGVrMgRs/P3I35vUvl2L3CKqwg+SAcCaG7yA4hUFlHgvnitdwd
 nAy79Mxs+8pFX83/uNqDJQQ8Qy8Re68odzmLvu7v1zoAMxrvwxxpmynKTtUlzYYIB60h
 rC6A==
X-Gm-Message-State: APjAAAXDedNNWWVRseQXA0PJgYXJDfmlojNv4NGclBu4GtjahkDaCSZF
 j+9ns2ZGuiL4HDSiromYUYA=
X-Google-Smtp-Source: APXvYqwjinCWK/aSKbDmwODZdByqPtonNAHy81M6XwA7AeZJB8EfRvgjyd6heFibzYj9+zCcNldc5Q==
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr15094293wra.156.1561046042286; 
 Thu, 20 Jun 2019 08:54:02 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net.
 [86.58.52.202])
 by smtp.gmail.com with ESMTPSA id o13sm34914608wra.92.2019.06.20.08.53.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 08:54:00 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v7 0/6] Add support for Orange Pi 3
Date: Thu, 20 Jun 2019 17:53:58 +0200
Message-ID: <2263144.KN5DhQ2VKD@jernej-laptop>
In-Reply-To: <20190620134748.17866-1-megous@megous.com>
References: <20190620134748.17866-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_085405_241902_D24700BD 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDIwLiBqdW5paiAyMDE5IG9iIDE1OjQ3OjQyIENFU1QgamUgbWVn
b3VzIHZpYSBsaW51eC1zdW54aSAKbmFwaXNhbChhKToKPiBGcm9tOiBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KPiAKPiBUaGlzIHNlcmllcyBpbXBsZW1lbnRzIHN1cHBvcnQgZm9y
IFh1bmxvbmcgT3JhbmdlIFBpIDMgYm9hcmQuCj4gCj4gLSBldGhlcm5ldCBzdXBwb3J0IChwYXRj
aGVzIDEtMykKCkNvcnJlY3QgbWUgaWYgSSdtIHdyb25nLCBidXQgcGF0Y2hlcyAxLTIgYXJlbid0
IHN0cmljdGx5IG5lY2Vzc2FyeSBmb3IgCk9yYW5nZVBpIDMsIHJpZ2h0PyBINiBEVFNJIGFscmVh
ZHkgaGFzIGVtYWMgbm9kZSB3aXRoIGR1YWwgY29tcGF0aWJsZSAoSDYgYW5kIApBNjQpIGFuZCBz
aW5jZSBPcmFuZ2VQaSAzIHVzZXMgZ2lnYWJpdCBldGhlcm5ldCwgcXVpcmsgaW50cm9kdWNlZCBi
eSBwYXRjaGVzIAoxLTIgYXJlIG5vdCBuZWVkZWQuCgpIb3dldmVyLCBpdCBpcyBuaWNlIHRvIGhh
dmUgdGhpcyAxMDAgTWJpdCBmaXgsIGJlY2F1c2UgbW9zdCBTVEIgRFRTIHdpbGwgbmVlZCAKaXQu
CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAtIEhETUkgc3VwcG9ydCAocGF0Y2hlcyA0LTYpCj4g
Cj4gRm9yIHNvbWUgcGVvcGxlLCBldGhlcm5ldCBkb2Vzbid0IHdvcmsgYWZ0ZXIgcmVib290IChi
dXQgd29ya3Mgb24gY29sZAo+IGJvb3QpLCB3aGVuIHRoZSBzdG1tYWMgZHJpdmVyIGlzIGJ1aWx0
IGludG8gdGhlIGtlcm5lbC4gSXQgd29ya3Mgd2hlbgo+IHRoZSBkcml2ZXIgaXMgYnVpbHQgYXMg
YSBtb2R1bGUuIEl0J3MgZWl0aGVyIHNvbWUgdGltaW5nIGlzc3VlLCBvciBwb3dlcgo+IHN1cHBs
eSBpc3N1ZSBvciBhIGNvbWJpbmF0aW9uIG9mIGJvdGguIE1vZHVsZSBidWlsZCBpbmR1Y2VzIGEg
cG93ZXIKPiBjeWNsaW5nIG9mIHRoZSBwaHkuCj4gCj4gSSBlbmNvdXJhZ2UgcGVvcGxlIHdpdGgg
dGhpcyBpc3N1ZSwgdG8gYnVpbGQgdGhlIGRyaXZlciBpbnRvIHRoZSBrZXJuZWwsCj4gYW5kIHRy
eSB0byBhbHRlciB0aGUgcmVzZXQgdGltaW5ncyBmb3IgdGhlIHBoeSBpbiBEVFMgb3IKPiBzdGFy
dHVwLWRlbGF5LXVzIGFuZCByZXBvcnQgdGhlIGZpbmRpbmdzLgo+IAo+IAo+IFBsZWFzZSB0YWtl
IGEgbG9vay4KPiAKPiB0aGFuayB5b3UgYW5kIHJlZ2FyZHMsCj4gICBPbmRyZWogSmlybWFuCj4g
Cj4gCj4gQ2hhbmdlcyBpbiB2NzoKPiAtIGRyb3BwZWQgc3RvcmVkIHJlZmVyZW5jZSB0byBjb25u
ZWN0b3JfcGRldiBhcyBzdWdnZXN0ZWQgYnkgSmVybmVqCj4gLSBhZGRlZCBmb3Jnb3R0ZW4gZHQt
YmluZGluZ3MgcmV2aWV3ZWQtYnkgdGFnCj4gCj4gQ2hhbmdlcyBpbiB2NjoKPiAtIGFkZGVkIGR0
LWJpbmRpbmdzIHJldmlld2VkLWJ5IHRhZwo+IC0gZml4IHdvcmRpbmcgaW4gc3RtbWFjIGNvbW1p
dCAoYXMgc3VnZ2VzdGVkIGJ5IFNlcmdlaSkKPiAKPiBDaGFuZ2VzIGluIHY1Ogo+IC0gZHJvcHBl
ZCBhbHJlYWR5IGFwcGxpZWQgcGF0Y2hlcyAocGluY3RybCBwYXRjaGVzLCBtbWMxIHBpbmNvbmYg
cGF0Y2gpCj4gLSByZW5hbWUgR01BQy0zVjMgLT4gR01BQy0zViB0byBtYXRjaCB0aGUgc2NoZW1h
dGljIChKYWdhbikKPiAtIGNoYW5nZWQgaGRtaS1jb25uZWN0b3IncyBkZGMtc3VwcGx5IHByb3Bl
cnR5IHRvIGRkYy1lbi1ncGlvcwo+ICAgKFJvYiBIZXJyaW5nKQo+IAo+IENoYW5nZXMgaW4gdjQ6
Cj4gLSBmaXggY2hlY2twYXRjaCB3YXJuaW5ncy9zdHlsZSBpc3N1ZXMKPiAtIHVzZSBlbnVtIGlu
IHN0cnVjdCBzdW54aV9kZXNjX2Z1bmN0aW9uIGZvciBpb19iaWFzX2NmZ192YXJpYW50Cj4gLSBj
b2xsZWN0ZWQgYWNrZWQtYnkncwo+IC0gZml4IGNvbXBpbGUgZXJyb3IgaW4gZHJpdmVycy9waW5j
dHJsL3N1bnhpL3BpbmN0cmwtc3VuOWktYTgwLXIuYzoxNTYKPiAgIGNhdXNlZCBieSBtaXNzaW5n
IGNvbnZlcnNpb24gZnJvbSBoYXNfaW9fYmlhc19jZmcgc3RydWN0IG1lbWJlcgo+ICAgKEkndmUg
a2VwdCB0aGUgYWNrZWQtYnksIGJlY2F1c2UgaXQncyBhIHRyaXZpYWwgY2hhbmdlLCBidXQgZmVl
bCBmcmVlCj4gICB0byBvYmplY3QuKSAocmVwb3J0ZWQgYnkgTWFydGluIEEuIG9uIGdpdGh1YikK
PiAgIEkgZGlkIG5vdCBoYXZlIEE4MCBwaW5jdHJsIGVuYWJsZWQgZm9yIHNvbWUgcmVhc29uLCBz
byBJIGRpZCBub3QgY2F0Y2gKPiAgIHRoaXMgc29vbmVyLgo+IC0gZHJvcHBlZCBicmNtIGZpcm13
YXJlIHBhdGNoICh3YXMgYWxyZWFkeSBhcHBsaWVkKQo+IC0gZHJvcHBlZCB0aGUgd2lmaSBkdHMg
cGF0Y2ggKHdpbGwgcmUtc2VuZCBhZnRlciBINiBSVEMgZ2V0cyBtZXJnZWQsCj4gICBhbG9uZyB3
aXRoIGJsdWV0b290aCBzdXBwb3J0LCBpbiBhIHNlcGFyYXRlIHNlcmllcykKPiAKPiBDaGFuZ2Vz
IGluIHYzOgo+IC0gZHJvcHBlZCBhbHJlYWR5IGFwcGxpZWQgcGF0Y2hlcwo+IC0gY2hhbmdlZCBw
aW5jdHJsIEkvTyBiaWFzIHNlbGVjdGlvbiBjb25zdGFudHMgdG8gZW51bSBhbmQgcmVuYW1lZAo+
IC0gYWRkZWQgL29taXQtaWYtbm8tcmVmLyB0byBtbWMxX3BpbnMKPiAtIG1hZGUgbW1jMV9waW5z
IGRlZmF1bHQgcGluY29uZiBmb3IgbW1jMSBpbiBINiBkdHNpCj4gLSBtb3ZlIGRkYy1zdXBwbHkg
dG8gSERNSSBjb25uZWN0b3Igbm9kZSwgdXBkYXRlZCBwYXRjaCBkZXNjcmlwdGlvbnMsCj4gICBj
aGFuZ2VkIGR0LWJpbmRpbmdzIGRvY3MKPiAKPiBDaGFuZ2VzIGluIHYyOgo+IC0gYWRkZWQgZHQt
YmluZGluZ3MgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGJvYXJkJ3MgY29tcGF0aWJsZSBzdHJpbmcK
PiAgIChzdWdnZXN0ZWQgYnkgQ2xlbWVudCkKPiAtIGFkZHJlc3NlZCBjaGVja3BhdGNoIHdhcm5p
bmdzIGFuZCBjb2RlIGZvcm1hdHRpbmcgaXNzdWVzIChvbiBNYXhpbWUncwo+ICAgc3VnZ2VzdGlv
bnMpCj4gLSBzdG1tYWM6IGRyb3BwZWQgdXNlbGVzcyBwYXJlbnRoZXNpcywgcmV3b3JkZWQgZGVz
Y3JpcHRpb24gb2YgdGhlIHBhdGNoCj4gICAoc3VnZ2VzdGVkIGJ5IFNlcmdlaSkKPiAtIGRyb3Ag
dXNlbGVzIGRldl9pbmZvKCkgYWJvdXQgdGhlIHNlbGVjdGVkIGlvIGJpYXMgdm9sdGFnZQo+IC0g
ZG9jdW1tZW50ZWQgaW8gdm9sdGFnZSBiaWFzIHNlbGVjdGlvbiB2YXJpYW50IG1hY3Jvcwo+IC0g
d2lmaTogbWFya2VkIFdpRmkgRFRTIHBhdGNoIGFuZCByZWFsdGVkIG1tYzFfcGlucyBhcyAiRE8g
Tk9UIE1FUkdFIiwKPiAgIGJlY2F1c2Ugd2lmaSBkZXBlbmRzIG9uIEg2IFJUQyBzdXBwb3J0IHRo
YXQncyBub3QgbWVyZ2VkIHlldCAoc3VnZ2VzdGVkCj4gICBieSBDbGVtZW50KQo+IC0gYWRkZWQg
bWlzc2luZyBzaWduZWQtb2YtYnlzCj4gLSBjaGFuZ2VkICZ1c2Iyb3RnIGRyX21vZGUgdG8gb3Rn
LCBhbmQgYWRkZWQgYSBub3RlIGFib3V0IFZCVVMKPiAtIGltcHJvdmVkIHdvcmRpbmcgb2YgSERN
SSBkcml2ZXIncyBEREMgcG93ZXIgc3VwcGx5IHBhdGNoCj4gCj4gSWNlbm93eSBaaGVuZyAoMik6
Cj4gICBuZXQ6IHN0bW1hYzogc3VuOGk6IGFkZCBzdXBwb3J0IGZvciBBbGx3aW5uZXIgSDYgRU1B
Qwo+ICAgbmV0OiBzdG1tYWM6IHN1bjhpOiBmb3JjZSBzZWxlY3QgZXh0ZXJuYWwgUEhZIHdoZW4g
bm8gaW50ZXJuYWwgb25lCj4gCj4gT25kcmVqIEppcm1hbiAoNCk6Cj4gICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IG9yYW5nZS1waS0zOiBFbmFibGUgZXRoZXJuZXQKPiAgIGR0LWJpbmRpbmdzOiBk
aXNwbGF5OiBoZG1pLWNvbm5lY3RvcjogU3VwcG9ydCBEREMgYnVzIGVuYWJsZQo+ICAgZHJtOiBz
dW40aTogQWRkIHN1cHBvcnQgZm9yIGVuYWJsaW5nIEREQyBJMkMgYnVzIHRvIHN1bjhpX2R3X2hk
bWkgZ2x1ZQo+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBvcmFuZ2UtcGktMzogRW5hYmxlIEhE
TUkgb3V0cHV0Cj4gCj4gIC4uLi9kaXNwbGF5L2Nvbm5lY3Rvci9oZG1pLWNvbm5lY3Rvci50eHQg
ICAgICB8ICAxICsKPiAgLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRz
ICAgIHwgNzAgKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3Vu
OGlfZHdfaGRtaS5jICAgICAgICAgfCA1NCArKysrKysrKysrKystLQo+ICBkcml2ZXJzL2dwdS9k
cm0vc3VuNGkvc3VuOGlfZHdfaGRtaS5oICAgICAgICAgfCAgMiArCj4gIC4uLi9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtc3VuOGkuYyB8IDIxICsrKysrKwo+ICA1IGZpbGVzIGNo
YW5nZWQsIDE0NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
