Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C39C08D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV6tXEUvXI1nDT3MZRLGsX73cY604gPZz+SrA8F9XTw=; b=XvIAhLUWEjAt8y
	a/iFagMTSktivHNPW7T3VXoh5a77sbb5BwSsq7Q9bmEgVeB3KLK0FpKpozVnhe0utqbUk6HeOGtE4
	PMmhsN0gcPiI5PnP84lC/Mspa+dPRy6VXoxGrXHUFWxKLPuWd4YG64TBte9GdETBxAuc3WjWGRZLe
	HuatJtlh5/4A8bO+sbcPeawaabmKv0U4GNJJc37+ZrjtRG8wI+8quJ/p7q4tKGUsSn4mbC54tKS7Z
	o70uT7hdU1yeeCkYTQ0SkXXSqea0PIxBNRuFDhbM/D/6llGAybeVWa2o4G6qV3VGdtn1OtZcoZynP
	s13e5CcMcCMyJreus39Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1diK-0007XU-A9; Sat, 24 Aug 2019 21:36:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1di2-0007Wn-Um
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 21:36:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id 10so11963288wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 14:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TO0VXq9p9jk6JyqDRkPQMqRwi7hPTlHb4mG3H1wkzKo=;
 b=gq4JZhQ6lGZA3R4u07JRf0ucdDI3M1XYbiFCAgA7Q+SaGcCInKtRkbBgmPYbCLdHf/
 snWtIbJtXZl2r4xV6MkglSpO1dDzMalPDzIIbR+Ysv86o8KUFlA0NVC1/BeI75fr449c
 ktJcs6Z1bXPV7tjS2fBzZhcLBqbGJXShnZutrnM19Gvc2rDrUT9YHKw/Ryk4O0tphkgs
 2fMmduibQ0EXwt9cPGHvwAb8SJKE5TBDyT7g2DjfVW4Te54/vNvcJOIsN3xSdhnopqi/
 s18w8M5wRbcjXZKuGEhoFzJk1c7vMhPDjsQI8p8sz/84OJm4/KrUqpuQA6SnoXorqcrZ
 McyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TO0VXq9p9jk6JyqDRkPQMqRwi7hPTlHb4mG3H1wkzKo=;
 b=VteTe+5uQX6N26EL6WwHMxTICm5dOiY9o7p4t4LeDSJbjCOrmk8QPAf2TiRBFO5pYg
 KXE4EMRecFwu0sXq43xFiMw8IAHaPBnBZgb80SlEXy297v0ox3mMAbhOmwdB5hRKCWco
 fF1iTwRvCnGGkNPbSiTEEYbBouuQJY71jt7DTmz+TMcT8npC0eHhiM+M3UECcO+LcMoF
 X/FDEsaZiLTWZEdtFzV3YG/xjpd/PAIAzrswbRMrxOt0Pt4Je+WnP/oNf7MDE7BG3l3y
 wrZKDN2XLlMgnd3U3ZgbHhDIJItE7ZZ0gxuPw43mmF+4f+3nrzUSB3TBIcwvDFyr8G3M
 4eKQ==
X-Gm-Message-State: APjAAAXE9MvXghu4TBl6GqhrfmzdSQDziwwNdoZIf9dBSQt3kezXKtuF
 XSRhDtAynvEQGv1ZIqr0nrU=
X-Google-Smtp-Source: APXvYqzxcqv5xb7sIjkMyUOoUWDuMhBA+aSF+kFWJlAXsr7b1dzTNuRd8ckbPMO8r+VndOTvj2Lv7g==
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr12390462wmh.65.1566682589356; 
 Sat, 24 Aug 2019 14:36:29 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id a18sm8394239wrt.18.2019.08.24.14.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 14:36:28 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Date: Sat, 24 Aug 2019 23:36:26 +0200
Message-ID: <7913281.jYEbquIlsS@jernej-laptop>
In-Reply-To: <20190824212746.a5pyilkrrvysjjbd@core.my.home>
References: <20190820151934.3860-1-megous@megous.com>
 <1690798.2HKiRSsjat@jernej-laptop>
 <20190824212746.a5pyilkrrvysjjbd@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_143630_992353_27D51F67 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDIzOjI3OjQ2IENFU1QgamUgT25kxZllaiBK
aXJtYW4gbmFwaXNhbChhKToKPiBIZWxsbyBKZXJuZWosCj4gCj4gT24gU2F0LCBBdWcgMjQsIDIw
MTkgYXQgMTE6MDk6NDlQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiBWaXN1
YWxseT8KPiA+ID4gCj4gPiA+IFRoYXQgd291bGQgZXhwbGFpbiB3aHkgaXQgZG9lc24ndCB3b3Jr
IGZvciB5b3UuIFRoZSBtYWlubGluZSBSVEMgZHJpdmVyCj4gPiA+IGRpc2FibGVzIGF1dG8tc3dp
dGNoIGZlYXR1cmUsIGFuZCBpZiB5b3VyIGJvYXJkIGRvZXNuJ3QgaGF2ZSBhIGNyeXN0YWwKPiA+
ID4gZm9yCj4gPiA+IExPU0MsIFJUQyB3aWxsIG5vdCBnZW5lcmF0ZSBhIGNsb2NrIGZvciB0aGUg
UlRDLgo+ID4gPiAKPiA+ID4gSDYncyBkdHNpIGRlc2NyaWJlcyBieSBkZWZhdWx0IGEgc2l0dWF0
aXVvbiB3aXRoIGV4dGVybmFsIDMyayBjcnlzdGFsCj4gPiA+IG9zY2lsbGF0b3IuIFNlZSBleHRf
b3NjMzJrIG5vZGUuIFRoYXQncyBpbmNvcnJlY3QgZm9yIHlvdXIgYm9hcmQgaWYgaXQKPiA+ID4g
ZG9lc24ndCBoYXZlIHRoZSBjcnlzdGFsLiBZb3UgbmVlZCB0byBmaXggdGhpcyBpbiB0aGUgRFRT
IGZvciB5b3VyIGJvYXJkCj4gPiA+IGluc3RlYWQgb2YgcGF0Y2hpbmcgdGhlIGRyaXZlci4KPiA+
IAo+ID4gSSBzZWUgdGhhdCByZXBhcmVudGluZyBpcyBzdXBwb3J0ZWQsIGJ1dCBJJ20gbm90IHN1
cmUgaG93IHRvIGZpeCB0aGF0IGluCj4gPiBEVC4gQW55IHN1Z2dlc3Rpb24/Cj4gCj4gWW91IG1h
eSB0cnkgcmVtb3ZpbmcgdGhlIGNsb2NrcyBwcm9wZXJ0eSBmcm9tIHJ0YyBub2RlLgoKSSBkb24n
dCB0aGluayB0aGlzIHdvdWxkIHdvcms6Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMjTDI0NgoKPiAKPiA+ID4gVGhl
IGRyaXZlciBoYXMgcGFyZW50IGNsb2NrIHNlbGVjdGlvbiBsb2dpYyBpbiBjYXNlIHRoZSBMT1ND
IGNyeXN0YWwgaXMKPiA+ID4gbm90Cj4gPiA+IHVzZWQuCj4gPiA+IAo+ID4gPiBZb3VyIHBhdGNo
IGVuYWJsZXMgYXV0b21hdGljIGRldGVjdGlvbiBvZiBMT1NDIGZhaWx1cmUgYW5kIFJUQyBjaGFu
Z2VzCj4gPiA+IGNsb2NrIHRvIExPU0MgYXV0b21hdGljYWxseSwgZGVzcGl0ZSB3aGF0J3MgZGVz
Y3JpYmVkIGluIHRoZSBEVFMuIFRoYXQKPiA+ID4gbWF5IGZpeCB0aGUgaXNzdWUsIGJ1dCBpcyBu
b3QgdGhlIGNvcnJlY3Qgc29sdXRpb24uCj4gPiA+IAo+ID4gPiBSZWdpc3RlcnMgb24gbXkgYm9h
cmQgbG9vayBsaWtlIHRoaXMgKGV4dGVybmFsIDMyayBvc2MgaXMgdXNlZCkgZm9yCj4gPiA+IHJl
ZmVyZW5jZToKPiA+ID4gCj4gPiA+IExPU0NfQ1RSTF9SRUdbNzAwMDAwMF06IDgwMTEKPiA+ID4g
Cj4gPiA+IAlLRVlfRklFTEQgICAgICAgICAgICAgICAgICAgICAgPz8/ICAgICAgICAgICAgICAg
ICAgKDApCj4gPiA+IAlMT1NDX0FVVE9fU1dUX0JZUEFTUyAgICAgICAgICAgRU4gICAgICAgICAg
ICAgICAgICAgKDEpCj4gPiA+IAlMT1NDX0FVVE9fU1dUX0VOICAgICAgICAgICAgICAgRElTICAg
ICAgICAgICAgICAgICAgKDApCj4gPiA+IAlFWFRfTE9TQ19FTiAgICAgICAgICAgICAgICAgICAg
RU4gICAgICAgICAgICAgICAgICAgKDEpCj4gPiA+IAlFWFRfTE9TQ19HU00gICAgICAgICAgICAg
ICAgICAgTE9XICAgICAgICAgICAgICAgICAgKDApCj4gPiA+IAlCQVRURVJZX0RJUiAgICAgICAg
ICAgICAgICAgICAgRElTQ0hBUkdFICAgICAgICAgICAgKDApCj4gPiA+IAlMT1NDX1NSQ19TRUwg
ICAgICAgICAgICAgICAgICAgRVhUMzJrICAgICAgICAgICAgICAgKDEpCj4gPiA+IAo+ID4gPiBM
T1NDX0FVVE9fU1dUX1NUQV9SRUdbNzAwMDAwNF06IDEKPiA+ID4gCj4gPiA+IAlFWFRfTE9TQ19T
VEEgICAgICAgICAgICAgICAgICAgT0sgICAgICAgICAgICAgICAgICAgKDApCj4gPiA+IAlMT1ND
X0FVVE9fU1dUX1BFTkQgICAgICAgICAgICAgTk9FRkYgICAgICAgICAgICAgICAgKDApCj4gPiA+
IAlMT1NDX1NSQ19TRUxfU1RBICAgICAgICAgICAgICAgRVhUMzJLICAgICAgICAgICAgICAgKDEp
Cj4gPiAKPiA+IEluIG15IGNhc2UgTE9TQ19DVFJMX1JFRyBoYXMgdmFsdWUgMHg0MDEwIGFuZCBM
T1NDX0FVVE9fU1dUX1NUQV9SRUcKPiA+IGhhcyB2YWx1ZSAweDQsIHNvIHRoZXJlIGlzIGlzc3Vl
IHdpdGggZXh0ZXJuYWwgY3J5c3RhbCAoaXQncyBtaXNzaW5nKSBhbmQKPiA+IFJUQyBzd2l0Y2hl
ZCB0byBpbnRlcm5hbCBvbmUuCj4gPiAKPiA+IEJUVywgd2hhdCdzIHdyb25nIHdpdGggYXV0b21h
dGljIHN3aXRjaGluZz8gV2h5IGlzIGl0IGRpc2FibGVkPwo+IAo+IEl0IGFsd2F5cyB3YXMgZGlz
YWJsZWQgb24gbWFpbmxpbmUgKGJpdCAxNCB3YXMgc2V0IHRvIDAgZXZlbiBiZWZvcmUgbXkKPiBw
YXRjaCkuIEg2IGp1c3QgcHJvYmFibHkgaGFzIGFub3RoZXIgZXh0cmEgdW5kb2N1bW1lbnRlZCBi
aXQsIHRoYXQncyBuZWVkZWQKPiB0byBkaXNhYmxlcyBpdCBwcm9wZXJseS4KPiAKPiBZb3UgcHJv
YmFibHkgZG9uJ3Qgd2FudCBhIGdsaXRjaCB0byBzd2l0Y2ggeW91ciBSVEMgZnJvbSBoaWdoLXBy
ZWNpc2lvbgo+IGNsb2NrIHRvIGEgbG93IHByZWNpc2lvbiBvbmUgcG9zc2libHkgd2l0aG91dCBh
bnkgaW5kaWNhdGlvbiBpbiB0aGUKPiB1c2Vyc3BhY2Ugb3IgYSBrZXJuZWwgbG9nLgo+IAo+IFJl
Z2FyZGxlc3Mgb2YgYWxsIHRoaXMsIERUUyBuZWVkcyB0byBoYXZlIGEgY29ycmVjdCBkZXNjcmlw
dGlvbiBvZiB0aGUgSFcsCj4gd2hpY2ggbWVhbnMgaWYgUlRDIG1vZHVsZSBpcyBub3QgY29ubmVj
dGVkIHRvIHRoZSAzMi43NTdrSHogY3J5c3RhbC9jbG9jaywKPiBjbG9ja3MgcHJvcGVydHkgc2hv
dWxkIGJlIGVtcHR5LgoKSWYgd2UgYXJlIHRhbGtpbmcgYWJvdXQgY29ycmVjdCBIVyBkZXNjcmlw
dGlvbiwgdGhlbiBjbG9jayBwcm9wZXJ0eSBzaG91bGQgCmFjdHVhbGx5IGhhdmUgcG9zc2liaWxp
dHkgdGhhdCB0d28gY2xvY2tzIGFyZSBkZWZpbmVkIC0gb25lIGZvciBpbnRlcm5hbCBSQyAKKGFs
d2F5cyBwcmVzZW50KSBhbmQgb25lIGV4dGVybmFsIGNyeXN0YWwgKG9wdGlvbmFsKS4gSW4gc3Vj
aCBjYXNlIEkgY291bGQgCnJlYWxseSBqdXN0IG9taXQgZXh0ZXJuYWwgY2xvY2sgYW5kIGJlIGRv
bmUgd2l0aCBpdC4gQnV0IEknbSBub3Qgc3VyZSBpZiBzdWNoIApzb2x1dGlvbiBpcyBhY2NlcHRh
YmxlIGF0IHRoaXMgcG9pbnQuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAKPiByZWdhcmRzLAo+
IAlvLgo+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+ID4gcmVnYXJkcywK
PiA+ID4gCj4gPiA+IAlvLgo+ID4gPiAJCj4gPiA+ID4gPiBUaGUgcmVhbCBpc3N1ZSBwcm9iYWJs
eSBpcyB0aGF0IHRoZSBtYWlubGluZSBkcml2ZXIgaXMgbWlzc2luZyB0aGlzOgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMv
cnRjLXN1bnhpLmM/aD1oNi00LjktYgo+ID4gPiA+ID4gc3Ajbgo+ID4gPiA+ID4gNjUwCj4gPiA+
ID4gCj4gPiA+ID4gTm90IHN1cmUgd2hhdCB5b3UgbWVhbiBieSB0aGF0LiBleHQgdnMuIGludCBz
b3VyY2Ugc2VsZWN0aW9uPwo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IEJlc3Qg
cmVnYXJkcywKPiA+ID4gPiBKZXJuZWoKPiA+ID4gPiAKPiA+ID4gPiA+IHJlZ2FyZHMsCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IAlvLgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
