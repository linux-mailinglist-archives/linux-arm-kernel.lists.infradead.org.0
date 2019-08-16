Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5F28FF73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 11:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BYk1rC4eXdre/EsAmk5qm7Wo+TwCtiUwOebWCMM5mo=; b=c+xz7Ucq+jphV1
	h8YDSHuD9F6IFFAbO70A8YdYIMNE0BFPKdRbKG9xTGq3cv+dgtx1zFp73ZVuUNC8LS/XKVqzpmfy1
	YhW391y8MqwFg3r7CXIdE8RyD/VNQzKF8sJlt+NiukGnlu36JaQ9LKg7jduH/eouf9Uwq4HdSot0f
	HVaIeKh1bi4RckXsqI0wW2EStakAbO60NN1QaXXBC0uvzpo0wb7vO8O0H4nKD0VmfKVy2RmQy0Hs+
	/TGEczQQgklr5rGadd9RiMUAMTIUVMJUOFhM6YSkZNel51nvidLvDS8H9qeG0jKBqIgg/6UeS/y/E
	hVfPj+T0BUPxCpcAMvZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYsn-0001Lo-L1; Fri, 16 Aug 2019 09:50:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYsa-0001LN-S2
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 09:50:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id o4so3550295wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 02:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/HQvzLuPAQzjKYNQcL4AudsvSLCJBYrtDqCfaQEVXs=;
 b=XfDCPmmDvgMEo9nSZCmOTkdIcYwbI4SSP722mwKE9xlgtpOudXrDNTFX6AnvRaQ5mc
 ULRJKcs+rhNt1YMZrquluQMOQdw4FfRxSuYz/L+LPRJd5jtYAqwMYKujzVCWg8XiYSIg
 sZqjv/HBTRVciGEmbL9sKRDTtS4ccaBPBmOJZeV3FqdPuKtBfZOSkWFYEZvBKFW1L5fA
 GyCFloxyiD1v7YjVrUQLEylEw65+cCp7vc1v1/ePjOhz0LigqqgpoIAX1yaBTGCxPmNd
 7hvHEDyTfcbaUm+tUwnjgsVZL5oHgJtEGIyiwMwfaov7HlrsWqQ+hqPMaoZFN5i4tJmU
 LYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/HQvzLuPAQzjKYNQcL4AudsvSLCJBYrtDqCfaQEVXs=;
 b=IGDxJ7Yfz7tOemYNRB4Qui1GaXoVpNYIe40X7H25REutZdrx+5o3z586PyvPsNr6ci
 3NbHoPprRz5Pozw6w9IZbFKwrw9lHITdTXBbaiNIiwICTDAgua1SRpBQ4vZxk+0ggeje
 gv2oLl+uwfJdkQs/L3GAPjrp/fiVuSFMfzP8Nhq65mSMCZF7cW+BCmo/oyDPxxKmYkIs
 NLHo5UU3Yq91hgy7UJqwiDQsGJs0LzX+MhwYQnPGnYkauS6Da+D3WKc5Tt3VcTbp5VHj
 iEPXtJEQT2+yD+cU8yuff0kBb9dG87L8YSQPXhBHZuUMcGRPXdEPxMsRy+uZJWN1eARu
 pAhg==
X-Gm-Message-State: APjAAAVi+6mwy4fqks2Dot0kcJqPCtjR5o7Y0RuGGTO8lSqyC1verVTf
 U+f0YkFqF8gNeogZjDHrF1k=
X-Google-Smtp-Source: APXvYqwout1PTGybrAk1uFRmU1LEyuvD8f9+M7j9OpOBrAG0FWKgRTuABVYoIjQHW3/bgSyt+ktSjw==
X-Received: by 2002:a05:600c:2111:: with SMTP id
 u17mr6781103wml.64.1565949038988; 
 Fri, 16 Aug 2019 02:50:38 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id h23sm4076063wml.43.2019.08.16.02.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 02:50:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, peron.clem@gmail.com
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
Date: Fri, 16 Aug 2019 11:50:35 +0200
Message-ID: <2361666.6tDiKGV9WF@jernej-laptop>
In-Reply-To: <CAJiuCcfASQriPLMuwuDCn9bU=_8q4jL+KkPo8NmMrrYpOqy2qA@mail.gmail.com>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <20190814132001.GC24324@Red>
 <CAJiuCcfASQriPLMuwuDCn9bU=_8q4jL+KkPo8NmMrrYpOqy2qA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_025041_394048_51B0BAAD 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, clabbe.montjoie@gmail.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAxNC4gYXZndXN0IDIwMTkgb2IgMTU6Mjg6NTMgQ0VTVCBqZSBDbMOpbWVudCBQ
w6lyb24gbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBXZWQsIDE0IEF1ZyAyMDE5IGF0IDE1OjIw
LCBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNvbT4gCndyb3RlOgo+ID4g
T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTI6NTY6NTZQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+ID4gPiBEbmUgxI1ldHJ0ZWssIDA4LiBhdmd1c3QgMjAxOSBvYiAxMDo0Mjo1MyBD
RVNUIGplIENvcmVudGluIExhYmJlIApuYXBpc2FsKGEpOgo+ID4gPiA+IFRoaXMgcGF0Y2ggYWRk
cyB0aGUgZXZhbHVhdGlvbiB2YXJpYW50IG9mIHRoZSBtb2RlbCBBIG9mIHRoZSBQaW5lSDY0Lgo+
ID4gPiA+IFRoZSBtb2RlbCBBIGhhcyB0aGUgc2FtZSBzaXplIG9mIHRoZSBwaW5lNjQgYW5kIGhh
cyBhIFBDSUUgc2xvdC4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgb25seSBkZXZpY2V0cmVlIGRpZmZl
cmVuY2Ugd2l0aCBjdXJyZW50IHBpbmVINjQsIGlzIHRoZSBQSFkKPiA+ID4gPiByZWd1bGF0b3Iu
Cj4gPiA+IAo+ID4gPiBJIGhhdmUgTW9kZWwgQSBib2FyZCB3aGljaCBhbHNvIG5lZWRzIGRkYy1l
bi1ncGlvcyBwcm9wZXJ0eSBmb3IgSERNSQo+ID4gPiBjb25uZWN0b3IgaW4gb3JkZXIgZm9yIEhE
TUkgdG8gd29yayBjb3JyZWN0bHkuIE90aGVyd2lzZSBpdCB3aWxsIGp1c3QKPiA+ID4gdXNlIDEw
MjR4NzY4IHJlc29sdXRpb24uIENhbiB5b3UgY29uZmlybSB0aGF0Pwo+IAo+IFNjaGVtYXRpY3Mg
UmV2IEE6Cj4gaHR0cDovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL1BpbmUlMjBINjQvUGluZSUyMEg2
NCUyMFZlcjEuMS0yMDE4MDEwNC5wZGYKPiAKPiBSZXYgQjoKPiBodHRwOi8vZmlsZXMucGluZTY0
Lm9yZy9kb2MvUGluZSUyMEg2NC9QSU5FLUg2LW1vZGVsLUItMjAxODEyMTItc2NoZW1hdGljLnBk
Cj4gZgo+IAo+IFRoZXJlIGlzIGEgRERDX0VOIG9uIFJFViBBIG5vdCBvbiBSRVYgQgo+IAo+IFJl
Z2FyZHMsCj4gQ2zDqW1lbnQKPiAKPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBKZXJuZWoKPiA+
IAo+ID4gU29ycnkgSSBkaWRudCB1c2UgYXQgYWxsIHZpZGVvIHN0dWZmIChsaWtlIEhETUkpLCBz
byBJIGNhbm5vdCBhbnN3ZXIgbm93Lgo+ID4gCj4gPiBDb3VsZCB5b3Ugc2VuZCBtZSBhIHBhdGNo
IGFnYWluc3QgbXkgZnV0dXJlIHYyIGFuZCBJIGNvdWxkIHRlc3QKPiA+IHdpdGgvd2l0aG91dC4K
CkkgZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8gbXkgTW9kZWwgQSBib2FyZCBjdXJyZW50bHksIGJ1dCB0
aGlzIHNob3VsZCBzdWZmaWNlOgoKJmNvbm5lY3RvciB7CglkZGMtZW4tZ3Bpb3MgPSA8JnBpbyA3
IDIgR1BJT19BQ1RJVkVfSElHSD47IC8qIFBIMiAqLwp9OwoKQmVzdCByZWdhcmRzLApKZXJuZWoK
Cj4gPiAKPiA+IFJlZ2FyZHMKPiA+IAo+ID4gLS0KPiA+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3Nh
Z2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMKPiA+ICJs
aW51eC1zdW54aSIgZ3JvdXAuIFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3Rv
cCByZWNlaXZpbmcKPiA+IGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvCj4gPiBsaW51
eC1zdW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLiBUbyB2aWV3IHRoaXMgZGlzY3Vz
c2lvbiBvbiB0aGUKPiA+IHdlYiwgdmlzaXQKPiA+IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20v
ZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDgxNDEzMjAwMS5HQzI0MzI0JTQwUmUKPiA+IGQuCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
