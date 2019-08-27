Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD10A9E6FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wY7lBaLsSgyLKooB97S70K+kWLv19IdOYANPlZtCyXA=; b=dQ7LXZ77glEJ/a7kSM1m0Jca9
	bAWEa/ApGPjjDtcfsOlON4ghn7BnSRfsbu5Ez+HaP2lyZoaOD6Rsp7OoVfp7tbGwP+8+c+BdM5jmZ
	x2OFolrwoqVaJA3HzxZ0p0u7fq5l9EwCBgMqnLGwFbuTZ/hcEgZ5St1VQlcu8mkOtKrrgHjNLBvgW
	G6R4FwfTSr/w7dcu+AQG/5Tcz23CKaWk6R1T23G7l4cLEGsuN8v6ODLoHq4Jt55YKBlcXDIhmzcu6
	nnV7HpsCTZ5hvl/7GAJukY5N+Olx6HaRe0aHFBvAqQj9jEEfh36viXskLCRCJBfooEBo6hvZXx7QK
	VhOVwbfRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Zuu-0000k8-I5; Tue, 27 Aug 2019 11:45:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Zub-0000jd-Bn; Tue, 27 Aug 2019 11:45:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id c5so2664518wmb.5;
 Tue, 27 Aug 2019 04:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=BBAQbvGI5m70IT7gwpTqMd9Zxn3yd9mTcRYoUs8xzbo=;
 b=onXy4iVllrd8c4tpFtOk7zTSpflQfzAmBza47ZPpMBD67DZVWF+bgwvur2nW8uV81m
 yl1frnPuQ2uV8k/J3BxTZO5onKpRKgKJpmx0VtxxjgZfh8RWg7Y3OS/iQRzllrVwtwUP
 J/PvrSfiQcIoAecJsZR6bg4I53j4x0xXH7l6qjIiiLG9fjtelD6VQoFnIYntnQAMW1FK
 oq2M0hEJgmdzWoYbjCZ7TAMvSPXceV6VvyXGqQhuap+F8030c4bCfS54LYchwHwABoEr
 xiDmS2AG+b4Ohu3XSLGdKibKcWsogYlWMP93JkX592MYkrTQcX+IrEDXzDrgPkk9FvO2
 ErEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=BBAQbvGI5m70IT7gwpTqMd9Zxn3yd9mTcRYoUs8xzbo=;
 b=FyGxUeEfZXR4A5nw4IZp898+zrBPt5txsJngGMdECm4EOUokcpMmiwKOgGQ3sNR+Lu
 H7sRHD3y4o0i2te9Vq0TFkeQKoxZnnwqq5IA4EHfxjyo75ECj/71ceCf71/KI1rzMu/Z
 9lioJNRL8ggVLgIJqR9i8U3x7m/UZUomZOsRh2VTQtfKM3jiI7KYobDSKPGG3dQkX+pN
 vPZ8LfjFdFA23/ZaQzu1px1p9ZaTdrlbrxCyT7WXQefzOlllWOEXZPIkPerjsbwZr82B
 J4NOIImE5I/ztRpPLVygnt+fm4tD/M0n6Mnpp6WrlghEk3anQhelWMvKweFenNDYrRyD
 jBlw==
X-Gm-Message-State: APjAAAV5Pp9QCrXeC0kesJAFMh0uWyupxrItk8oxLL+gAJ3FbtORdPKn
 f1Mqvzg85mqlP3YsMq5xBIo=
X-Google-Smtp-Source: APXvYqySe4Ye5opeQvHzGYvU2Vu8TM7L6knp50soVvwu97HlfmYY8RXSTSpUCe49OrrLZ0z616MefA==
X-Received: by 2002:a1c:9648:: with SMTP id y69mr26034632wmd.122.1566906319448; 
 Tue, 27 Aug 2019 04:45:19 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id t8sm37020305wra.73.2019.08.27.04.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 04:45:18 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Tue, 27 Aug 2019 13:45:16 +0200
MIME-Version: 1.0
Message-ID: <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com>
In-Reply-To: <20190817174140.6394-1-vicencb@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_044521_408114_AB70BB69 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0dXJkYXksIEF1Z3VzdCAxNywgMjAxOSA3OjQxOjQwIFBNIENFU1QsIFZpY2VudGUgQmVy
Z2FzIHdyb3RlOgo+IE90aGVyd2lzZSB0aGUgZGV2aWNlIGtlZXBzIHdyaXRpbmcgdG8gbWVtb3J5
IGFmdGVyIGtleGVjIGFuZCBkaXN0dXJicwo+IHRoZSBuZXh0IGtlcm5lbC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jIHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQo+Cj4gSGkgRmVsaXBlLCBSb2JpbiwKPiB0aGlzIHZlcnNpb24gY2Fs
bHMgJ3JlbW92ZScgZnJvbSAnc2h1dGRvd24nIGluc3RlYWQgb2YganVzdCBhc3NlcnRpbmcKPiBh
IHJlc2V0IGJlY2F1c2UgaXQgbG9va3MgbGlrZSBhIGNsZWFuZXIgd2F5IHRvIHN0b3AgdGhlIGRl
dmljZS4KPgo+IENhbGxpbmcgcmVtb3ZlIGZyb20gc2h1dGRvd24gaW4gY29yZS5jIGluc3RlYWQg
b2YgZHdjMy1vZi1zaW1wbGUuYyBkb2VzIG5vdAo+IGZpeCB0aGUgaXNzdWUgZWl0aGVyLgo+Cj4g
SXQgaGFzIGJlZW4gdGVzdGVkIG9uIHRoZSBzYXBwaGlyZSBib2FyZCwgYSBSSzMzOTkgcGxhdGZv
cm0uCj4KPiBSZWdhcmRzLAo+ICAgVmljZW7Dpy4KPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vz
Yi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMgCj4gYi9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2lt
cGxlLmMKPiBpbmRleCBiZGFjM2U3ZDdiMTguLmQ1ZmQ0NWM2NDkwMSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMKPiArKysgYi9kcml2ZXJzL3VzYi9kd2Mz
L2R3YzMtb2Ytc2ltcGxlLmMKPiBAQCAtMTMzLDYgKzEzMywxMSBAQCBzdGF0aWMgaW50IGR3YzNf
b2Zfc2ltcGxlX3JlbW92ZShzdHJ1Y3QgCj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJcmV0
dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGR3YzNfb2Zfc2ltcGxlX3NodXRkb3duKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gK3sKPiArCWR3YzNfb2Zfc2ltcGxlX3JlbW92
ZShwZGV2KTsKPiArfQo+ICsKPiAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCAKPiBkd2MzX29m
X3NpbXBsZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1
Y3QgZHdjM19vZl9zaW1wbGUJKnNpbXBsZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+IEBAIC0x
OTAsNiArMTk1LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgb2ZfZHdjM19zaW1wbGVfbWF0
Y2gpOwo+ICBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBkd2MzX29mX3NpbXBsZV9kcml2
ZXIgPSB7Cj4gIAkucHJvYmUJCT0gZHdjM19vZl9zaW1wbGVfcHJvYmUsCj4gIAkucmVtb3ZlCQk9
IGR3YzNfb2Zfc2ltcGxlX3JlbW92ZSwKPiArCS5zaHV0ZG93bgk9IGR3YzNfb2Zfc2ltcGxlX3No
dXRkb3duLAo+ICAJLmRyaXZlcgkJPSB7Cj4gIAkJLm5hbWUJPSAiZHdjMy1vZi1zaW1wbGUiLAo+
ICAJCS5vZl9tYXRjaF90YWJsZSA9IG9mX2R3YzNfc2ltcGxlX21hdGNoLAoKSGksCnBsZWFzZSwg
Y2FuIHlvdSBwcm92aWRlIHNvbWUgZmVlZGJhY2sgb24gdGhpcz8KClJlZ2FyZHMsCiAgVmljZW7D
py4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
