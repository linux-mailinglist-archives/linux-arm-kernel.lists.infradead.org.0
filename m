Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AD99BDDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1fqzp3icjs4WprRZhJGWsEdbIHNSa2oTxQPXeBfRJg=; b=Hb2UyEqBCR03PG
	RkxrYyJRx19Dp/y5fbFiyPKW5vn9pRws7FhtKqaBKZtxk3oxavVPqrR2jKeJEDHFOmBimpCVuaPu5
	xLoFAyqH7YxLyYjI7rmNlshiW6ztdUTXkUDW+S7aHdxOdqYdJKrnDpjQMrv56TXXqqTQ9fURBcbA4
	kRq69Fuu5FlM6uxOAYJJbJs3TNKT25PQPft0xF/MaVFM2Sf6ScrTaXH4l+PgWMoD0NAf/YvT/g9uZ
	IArYWZcnHI7mjxCv9TkvMy+9aFRJzU01lWuwcZi4GVW32Ne/TqCxW7AIeuRR6VwLqIgwfP1SKzqDf
	LK4P9wnumw1T6kf9u6GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Vcp-000598-53; Sat, 24 Aug 2019 12:58:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Vcc-00058B-N1
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:58:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so11037462wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 05:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G3ESOa9NJAsJUjWNrnPnjDwZTftOkLGFak1OQN0gsQY=;
 b=pS2MueYxkxOtPkyoyubWuGXipuqh1lUTQY8+f9ixzmA2IcpJ4t+vdZaU3md1a1hkcj
 15qq+3OxdR4ejdehk8ZdEKFoLJV/6s7ZuCoTJRBXp3RVeHu9G+2jpfPeyypn1/uynj5Q
 JQlN8yVLwswe8A7AlZ123AQFV78hQX+XpIrZ2C9u77NxUukNcXwPUy5hxCgsd4+w97NI
 htGZKxKbTKrb9epfwxraThNtwV3jLXkZ4mvwP+o+Qw9hJCgRK+mkwNe1ilj3Qd3ddLYa
 89XYy9ZNkm9vPfdTrdBJME2wr1pxAK2iwxbqY9hfFM65othgp32J1tCy5jGiLuASmDll
 8oLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G3ESOa9NJAsJUjWNrnPnjDwZTftOkLGFak1OQN0gsQY=;
 b=UgOruy0W41LkQbbTVYL6Jc65NWOk9AUdozUFaX+A/QhQ4tbbQFxweK7dhcfW3EybJg
 yhfXNaJyDf+nmVoplVznofROV9UZZGVcwM4o6AkKICTOrBmCGhxKBp3Kg0nP/XTSuQz3
 sth0Ifu5IjXZ/iNef3wrmiPe0mWi2GVsSkgh6T/H4aM/P+tKtANxm4eYNYX+Egugd0RK
 VI4i7hB+GZO2ElCYIUtQFAi6h5p30bAiCjgUIKifuLXQmH0VzhD9Z0wnUzTVKAIv1HnH
 BV22K71z/N0+7NxK30eqZz7IptTL+K3Ml+cCRQHU9J1tzeq+HPObefBiz96BLcm6ZQh0
 CvkQ==
X-Gm-Message-State: APjAAAW7yOStdCzR2dtrtqjJGzyHWS52HqofiZQQ+Yg+yMAOffRhqCqF
 jygZNqldcQTyNm+YifzEpKlCQPIYylw=
X-Google-Smtp-Source: APXvYqy3Ct7oHiXUax0h3AwE0TyEtr9iN5AotacP/QNPLTugY4xowy0h9NzSGdA8CGU0p2Yk+53E1A==
X-Received: by 2002:adf:eec5:: with SMTP id a5mr10971378wrp.352.1566651500828; 
 Sat, 24 Aug 2019 05:58:20 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id o8sm11023525wma.1.2019.08.24.05.58.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 05:58:20 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 0/3] Add basic support for RTC on
 Allwinner H6 SoC
Date: Sat, 24 Aug 2019 14:58:18 +0200
Message-ID: <2660592.K6CN9dZ0QN@jernej-laptop>
In-Reply-To: <20190824125612.zq5qsay2wv62wykt@core.my.home>
References: <20190820151934.3860-1-megous@megous.com>
 <5421621.t8Lore9UF7@jernej-laptop>
 <20190824125612.zq5qsay2wv62wykt@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_055822_755784_464BD530 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDE0OjU2OjEyIENFU1QgamUgT25kxZllaiBK
aXJtYW4gbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAxMDow
NjoxNEFNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgc29ib3RhLCAyNC4g
YXZndXN0IDIwMTkgb2IgMTA6MDQ6MjQgQ0VTVCBqZSBKZXJuZWogxaBrcmFiZWMgbmFwaXNhbChh
KToKPiA+ID4gSGkhCj4gPiA+IAo+ID4gPiBEbmUgdG9yZWssIDIwLiBhdmd1c3QgMjAxOSBvYiAx
NzoxOTozMSBDRVNUIGplIG1lZ291c0BtZWdvdXMuY29tIApuYXBpc2FsKGEpOgo+ID4gPiA+IEZy
b206IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+IAo+ID4gPiA+IEkg
d2VudCB0aHJvdWdoIHRoZSBkYXRhc2hlZXRzIGZvciBINiBhbmQgSDUsIGFuZCBjb21wYXJlZCB0
aGUKPiA+ID4gPiBkaWZmZXJlbmNlcy4KPiA+ID4gPiBSVENzIGFyZSBsYXJnZWx5IHNpbWlsYXIs
IGJ1dCBub3QgZW50aXJlbHkgY29tcGF0aWJsZS4KPiA+ID4gPiBJbmNvbXBhdGliaWxpdGllcwo+
ID4gPiA+IGFyZSBpbiBkZXRhaWxzIG5vdCB5ZXQgaW1wbGVtZW50ZWQgYnkgdGhlIHJ0YyBkcml2
ZXIgdGhvdWdoLgo+ID4gPiA+IAo+ID4gPiA+IEkgYWxzbyBjb3JyZWN0ZWQgdGhlIGNsb2NrIHRy
ZWUgaW4gSDYgRFRTSS4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGlzIG5lY2Vzc2Fy
eSBmb3IgaW1wbGVtZW50aW5nIHRoZSBXaUZpL0JsdWV0b290aCBzdXBwb3J0Cj4gPiA+ID4gb24g
Ym9hcmRzIHVzaW5nIEg2IFNvQy4KPiA+ID4gPiAKPiA+ID4gPiBUaGVyZSB3YXMgc29tZSBkaXNj
dXNzaW9uIHByZXZpb3VzbHkgb2YgZGVzY3JpYmluZyBIT1NDLCBEQ1hPIGFuZCBYTwo+ID4gPiA+
IG9zY2lsbGF0b3JzIGFuZCBjbG9ja3MgYXMgcGFydCBvZiBSVEMgaW4gRFQsIGJ1dCBJIGRlY2lk
ZWQgYWdhaW5zdCBpdAo+ID4gPiA+IGJlY2F1c2UgaXQncyBub3QgbmVjZXNzYXJ5LCBiZWN1c2Ug
aW5mb3JtYXRpb24gdGhhdCB3b3VsZCBiZSBwcm92aWRlZAo+ID4gPiA+IGFzIGEgcGFydCBvZiBE
VCBjYW4gYWxyZWFkeSBiZSBkZXRlcm1pbmVkIGF0IHJ1bnRpbWUgZnJvbSBSVEMKPiA+ID4gPiBy
ZWdpc3RlcnMsCj4gPiA+ID4gc28gdGhpcyB3b3Vkbid0IGFkZCBhbnkgdmFsdWUgYW5kIHdvdWxk
IG9ubHkgaW50cm9kdWNlIGNvbXBsaWNhdGlvbnMKPiA+ID4gPiB0byB0aGUgZHJpdmVyLiBTZWU6
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTA4OTgwODMvCj4gPiA+ID4gCj4g
PiA+ID4gUGxlYXNlIHRha2UgYSBsb29rLgo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IFRoYW5r
IHlvdSBhbmQgcmVnYXJkcywKPiA+ID4gPiAKPiA+ID4gPiAgIE9uZHJlaiBKaXJtYW4KPiA+ID4g
Cj4gPiA+IFNvcnJ5IGZvciBhIGJpdCBsYXRlIHRlc3QsIGJ1dCB3aXRoIHlvdXIgcGF0Y2hlcyBv
biBUYW5peCBUWDYgYm94IEkgZ2V0Cj4gPiA+IHRoaXMgaW4gZG1lc2c6Cj4gPiA+IAo+ID4gPiBb
ICAgMTcuNDMxNzQyXSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IEZhaWxlZCB0byBzZXQgcnRjIHRp
bWUuCj4gPiA+IFsgICAyMC40Mzk3NDJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcnRjIGlzIHN0
aWxsIGJ1c3kuCj4gPiA+IFsgICAyMS40MzU3NDRdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcnRj
IGlzIHN0aWxsIGJ1c3kuCj4gPiA+IFsgICAyNC4wNTU3NDFdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0
YzogcnRjIGlzIHN0aWxsIGJ1c3kuCj4gPiA+IFsgICAyNC40Mzk3NTJdIHN1bjZpLXJ0YyA3MDAw
MDAwLnJ0YzogcnRjIGlzIHN0aWxsIGJ1c3kuCj4gPiA+IAo+ID4gPiBMYXN0IGxpbmUgaXMgcmVw
ZWF0ZWQgbm9uLXN0b3AuCj4gPiA+IAo+ID4gPiBBbnkgaWRlYSB3aGF0IGNvdWxkIGJlIHdyb25n
Pwo+ID4gCj4gPiBBZGRpdGlvbmFsIGluZm8gLSB0aGlzIGlzIG9uIGtlcm5lbCA1LjIuNiB3aXRo
IHlvdXIgcGF0Y2hlcyBhcHBsaWVkLgo+IAo+IERvIHlvdSBoYXZlIHNjaGVtYXRpY3MsIG9yIGEg
RkVYIGZpbGUgZm9yIHRoZSBib2FyZCBvciBhbnkgb3RoZXIgaW5mbyBvbiBob3cKPiB0aGUgUlRD
IGlzIHNldCB1cCBvbiB0aGF0IGJvYXJkPwo+IAo+IENhbiB5b3UgZHVtcCB0aGUgUlRDIHJlZ2lz
dGVyIHJhbmdlPwoKSSBoYXZlIG9ubHkgQW5kcm9pZCBEVCwgYnV0IGFzIEkgYWxyZWFkeSBzYWlk
IGluIGxhdGVzdCByZXBseSB0byBwYXRjaCAyLCAKY2hhbmdpbmcgc3dpdGNoIGJ5cGFzcyB0byBi
aXQgMTQgaW5zdGVhZCBvZiAxNSBzb2x2ZWQgYWxsIGlzc3Vlcy4KCkJlc3QgcmVnYXJkcywKSmVy
bmVqCgo+IAo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoK
PiA+IAo+ID4gCj4gPiAKPiA+IAo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
