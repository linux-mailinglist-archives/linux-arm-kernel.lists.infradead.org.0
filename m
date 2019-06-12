Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389FE419C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qxHgop1XKtADtp3VTQ5swodYHfCQ4DGCPCuODL9vew=; b=kyloezBLqLM3Wn
	x3Hj6toniai8HZ6Wme/tRDCj3Ri793fgZ9wafkSLAcDpPdT0mGU/HuVCkJ5XAToQlCPsa+mHOt0/6
	CPdeGliIWu0mAoE0qfSlQPjBE2m8gZFUKzGRkflWQN88ZP5MXq5jsSVc29dLLFRYjHNFbi3R3ZEgs
	cl4Dk5VrL1DklGKlpT1C1Yk8g0sZvS9T37O/b8e8eZute9vET5m8VkrAo9e3sSdt2gj3LrGomvkuL
	tFwXHo7/mYvR3ZpdfjXuye79s1I71+imtlY9mg4SCz2y7llBorFfJn1oMSHEnt81mem46VHqh7uZz
	pSbe8pmfAiw8M/fQKY/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harbF-00043S-Ni; Wed, 12 Jun 2019 00:58:49 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harb4-00042g-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:58:39 +0000
Received: by mail-qk1-x744.google.com with SMTP id a27so8926224qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 17:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=lCyIvXUF/KVDLpAYcUT+Ck5ZH0kz/HDS3rHiDVetioQ=;
 b=KVoUy7zQH//7/UopVPM441Ud29XCSoOL3F993oSS4Aju2MULAyOcmNN1ggtBuDt5wd
 dOKY1LEltzP9rNvjuAUtL4rTWo1rVE/dMmU6311VzxTBvXevWRHkTZIOlFOIG00r7BCU
 ZVhfMWYEx22jcetcnXnMGuttdFW4pWXCRrrJTCxYlOFKqW1ZQ6YgppnX3KVqxGsbCdf1
 QhvP5VIxeUshfA9QA+bUbSq3m6jD8uBDucMEXNGEdl6JrBrKJzJZWVHsskqpyS/eWyzP
 O9nHDuHfAcr2Ysfr4F/kgtxJysGn67Dfh5QuXab+86bcIaafX5I2OG20jz7FlX8fAaHU
 OP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=lCyIvXUF/KVDLpAYcUT+Ck5ZH0kz/HDS3rHiDVetioQ=;
 b=EQaqtdjTXYzubkDzHFTI/CvIRiyEc8SUKzCav5ZcTPDTpDI+fdwYu0Y/RWxa6v85ev
 dn8WS7npZLU3qm15EXz5Oye8bZDZnAKKz0/4bP8vQ4ujSycVkg6ofjunmeITODmMJSCv
 K2CW+69ZDGaXOjC1sJHHBivyu7fL478/RtB4u4UHGftsyLVnh+v3Kv4jUuGidr5VYrFA
 sB9aboLHTVhgRy9j4K4t+GlT/YCIc7mq1Y4aXYrfN0ZjkrGhwolAnXY2oW6evEUpdWRU
 Q6K9z5D8hYIqc9EWfQ/gZ1+JuO2netE2gbveldOt8nNyjt7CqVh3AYAwAF2mFACut8fv
 rxkw==
X-Gm-Message-State: APjAAAXhJ49GiO7wVG0dn1xBeDwXEGf9XHWMVvfRTw35THZEjHQN8xNk
 NpXeBBgtN+ePefTxzoRiFq5SZw==
X-Google-Smtp-Source: APXvYqxZR85xJdgsXY+YNlNTC3iOdxqJUmzjZIfm3dI75Ue5eLolzP3t9Y33Jnlpbd7riDNlFijOCg==
X-Received: by 2002:a37:660b:: with SMTP id a11mr62787324qkc.342.1560301116293; 
 Tue, 11 Jun 2019 17:58:36 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id u125sm7255907qkd.5.2019.06.11.17.58.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 17:58:34 -0700 (PDT)
Message-ID: <1d2adae2b6d0f370f17b9bac94ae4e9207dccbad.camel@ndufresne.ca>
Subject: Re: [PATCH v7 2/4] media: videodev2: add
 V4L2_FMT_FLAG_FIXED_RESOLUTION
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil
 <hverkuil@xs4all.nl>,  Maxime Jourdan <mjourdan@baylibre.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Date: Tue, 11 Jun 2019 20:58:32 -0400
In-Reply-To: <1560243127.13886.3.camel@pengutronix.de>
References: <20190531093126.26956-1-mjourdan@baylibre.com>
 <20190531093126.26956-3-mjourdan@baylibre.com>
 <9731b2db-efd4-87d0-c48d-87adec433747@xs4all.nl>
 <1560243127.13886.3.camel@pengutronix.de>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_175838_635954_66A7FA9D 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyZGkgMTEganVpbiAyMDE5IMOgIDEwOjUyICswMjAwLCBQaGlsaXBwIFphYmVsIGEgw6lj
cml0IDoKPiBPbiBXZWQsIDIwMTktMDYtMDUgYXQgMTU6MzkgKzAyMDAsIEhhbnMgVmVya3VpbCB3
cm90ZToKPiA+IEhpIE1heGltZSwKPiA+IAo+ID4gSSBhbSB3b25kZXJpbmcgaWYgdGhpcyBmbGFn
IHNob3VsZG4ndCBiZSBpbnZlcnRlZDogeW91IHNldAo+ID4gVjRMMl9GTVRfRkxBR19EWU5fUkVT
T0xVVElPTiBpZiBkeW5hbWljIHJlc29sdXRpb24gaXMgc3VwcG9ydGVkLAo+ID4gb3RoZXJ3aXNl
IGl0IGlzbid0Lgo+ID4gCj4gPiBDYW4gYWxsIHRoZSBleGlzdGluZyBtYWlubGluZWQgY29kZWMg
ZHJpdmVycyBoYW5kbGUgbWlkc3RyZWFtCj4gPiByZXNvbHV0aW9uIGNoYW5nZXM/Cj4gPiAKPiA+
IHM1cC1tZmMsIHZlbnVzIGFuZCBtZWRpYXRlayBjYW4sIGJ1dCBJIHNlZSBubyBTT1VSQ0VfQ0hB
TkdFIGV2ZW50IGluCj4gPiB0aGUgY29kYSBkcml2ZXJzLCBzbyBJIHN1c3BlY3QgdGhhdCB0aGF0
IGNhbid0IGhhbmRsZSB0aGlzLgo+ID4gCj4gPiBQaGlsaXBwLCB3aGF0IGlzIHRoZSBzdGF0dXMg
b2YgdGhlIGNvZGEgZHJpdmVyIGZvciBkeW5hbWljIHJlc29sdXRpb24KPiA+IGNoYW5nZXM/Cj4g
Cj4gRlRSLCB0byBteSBrbm93bGVkZ2UgdGhlcmUgaXMgbm8gZHluYW1pYyByZXNvbHV0aW9uIGNo
YW5nZSBzdXBwb3J0IGluCj4gdGhlIGZpcm13YXJlLCBhcyB0aGVyZSBpcyBubyBzaWduYWwgKGlu
dGVycnVwdCBub3IgcGljdHVyZSBydW4gcmV0dXJuCj4gdmFsdWUpIHRvIGluZGljYXRlIHRoYXQg
ZGlmZmVyZW50IGhlYWRlcnMgd2VyZSBwYXJzZWQuCj4gCj4gSSBhbSBwbGFubmluZyB0byBhZGQg
dGhlIGluaXRpYWwgc291cmNlIGNoYW5nZSBldmVudCByZXF1aXJlZCBieSB0aGUKPiBjdXJyZW50
IGRlY29kZXIgQVBJIGRvY3VtZW50YXRpb24sIGJ1dCBJIGFtIGFmcmFpZCB0aGVyZSB3aWxsIGJl
IG5vCj4gc3VwcG9ydCBmb3Igc291cmNlIGNoYW5nZXMgZHVlIHRvIG1pZC1zdHJlYW0gcmVzb2x1
dGlvbiBjaGFuZ2VzIGR1ZSB0bwo+IGZpcm13YXJlIGxpbWl0YXRpb25zLgoKSSdtIGZhciBmcm9t
IGZhbWlsaWFyIHdpdGggdGhpcyBJUCwgYnV0IGF0IGxlYXN0IG9uIENPREE5ODgsIEkgY2FuIHJl
YWQKZnJvbSB0aGUgbWFudWFsIHRoYXQgdGhlIHdvcmtmbG93IGlzIHRvIGZpcnN0IGd1ZXNzIHRo
ZSBhbGxvY2F0aW9uLCBhbmQKaWYgeW91IGd1ZXNzIGl0IHdyb25nLCBhbiBlcnJvciBpcyByZXR1
cm5lZC4gV2hhdCBzZWVtcyB0byBtYXRjaCB0aGUKU09VUkNFX0NIQU5HRSBldmVudCBpbiB0aGF0
IHZlcnNpb24gd291bGQgYmUgaW4gdGhlIHBpY3R1cmUgc3RhdHVzCnJlZ2lzdGVyLCB0aGUgYml0
IDIwLCB3aGljaCBpcyBkb2N1bWVudGVkIGFzIHRyaWdnZXJlZCBpZiB0aGUgc3RyZWFtCnJlcXVp
cmVzIGJpZ2dlciBidWZmZXJzIHNpemVzLCBvciBtb3JlIGJ1ZmZlcnMuIEFmdGVyIGZpeGluZyB0
aGF0LCB5b3UKc2hvdWxkLCBpZiBJIHJlYWQgY29ycmVjdGx5LCByZXRyeS4KCkl0IGRvZXMgbm90
IG5vdGlmeSBpZiB0aGUgYnVmZmVycyBhcmUgdG9vIGxhcmdlLCBidXQgeW91IGNhbiBkZXRlY3Qs
CnNpbmNlIHRoZXJlIGlzIHJlZ2lzdGVyIHdpdGggdGhlIG91dHB1dCBzdHJlYW0gaW5mb3JtYXRp
b24uIFRoaXMKYmFzaWNhbGx5IG1lYW5zIHRoYXQgZm9yIFY0TDIgcmVzdHJpY3Rpb24sIHlvdSdk
IGhhdmUgdG8gYm91bmNlIHRoZQpidWZmZXJzIG9uIGZyYW1lIHNpemUgYm91bmRhcnkgb3Igc29t
ZXRoaW5nIGxpa2UgdGhpc8OpCgpUaGlzIHdvcmtmbG93IGlzIHZlcnkgc2ltaWxhciB0byBob3cg
T01YIHdvcmtzLCBidXQgVjRMMiBpcyBldmVuIGxlc3MKZmxleGlibGUgb24gYWxsb2NhdGlvbiB2
cyBmb3JtYXQsIGZvcmNpbmcgbW9yZSByZS1hbGxvY2F0aW9uLgoKPiAKPiByZWdhcmRzCj4gUGhp
bGlwcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
