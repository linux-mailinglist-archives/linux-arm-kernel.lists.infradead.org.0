Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A9E2B7FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+02C5XHJyGPYcyr+ext+MaziC50NgcuSOrJYjXPp5os=; b=UxHeLum3s3MtgdUMVCoSnRiF9D
	g073fmLLBimEDgRAsVxsiS/3qtKluWZpKqvjl4UOLbThnwlKMC1rDsQdnPx0AfdVAXlpDMswPmf/K
	A2hMDOvdt6JTc1Rm9GBdOyTVlVMppaj8YD3vNCOxp0jdmDyHahCS7h34+VmgQEcB8apkT3MP6S5rj
	k2j/noY3045+KaMcGWKMQcXJhUxgVtPvUIAXCnwe+rdQHWD7/q/Q0EscAUjhSPMmq3RHrqMm1r52y
	/tdMdvmEuU8qpEGi9Jm1EPW0NYYFN8inaDSAxKksnSLmiMB94mfoKhJJNLJEkVO7c20FZVcxBnnPs
	2IeE/oLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVH7A-00070W-Ce; Mon, 27 May 2019 15:00:40 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVH6K-0005FU-Hv
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:00:01 +0000
Received: by mail-yb1-xb42.google.com with SMTP id w127so4829660yba.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 07:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=qHKlqaDcjkkJBYjpD6p5oVuBHv3/XDA8/X7EQnB7SeY=;
 b=SXkK6kBCFfbLWyL8ky6jB32sMjtkgipf5iPMaiQvEQlh1c8BE9HZm4zfmahGWPH44f
 BgzQvy+TwIpvXWgH3ugw/56DlzKr2xioHXkSYmaMNcOIsxYv/c7wj8eRXsO4/78DSHE8
 sRbSpiIzqb8EtSXt0ILGkSFa2G/1f+tklT5EtEmLF/mLV7iLgC2dJuDWkQrY9CpCtUfo
 UYHBmslUM1zUJthKMQ0rOkjrZWPwKeZRx+afnk5AhUzamFa1H5zjgiHexTTfDILstfc4
 kmWOoV25LeeJT+d9vifZs0IKB69qUyB6p8rLkqxEr3ovyUQvLprM99ti6xRexUEaqfJG
 Eppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=qHKlqaDcjkkJBYjpD6p5oVuBHv3/XDA8/X7EQnB7SeY=;
 b=YMK65i09qaOX3vNphZCfFaK4ysOWQpxZYVt5stlcjpiTkIcZ2Gu1UeejD4OaZJs+gE
 xP5AO2pvduJDNVmyVc4RkN5yx8MMZNpijgr5lezB8nMO2eGAZuAiG9mDTZ28HwdpYHa8
 4oGIFjexYyKvPzhtN509wunnSqLkakziMLLhI5TpOVNKw5dQqoC0xFV6Gfs74BOUqWRH
 BcgJdirCW6II1d9xddAXP1ydQyUydcb4FVNINgMvsfF+nPsXSUiBoxoYmmQrXwlnafxr
 m3zLU48AU41gEQRVFwGwZQuINAP9Sds5GNrkTAhWufdm0jV9THRcdBEeXgen2jGIdQaQ
 pgeQ==
X-Gm-Message-State: APjAAAWgQP4TzxuVlrkJciN+HHG+O8Peo/niS4xRb9F/lxGeHrzlYznl
 a7c1qZcRevoP68iDqjZZDJWeYgP04JxNosety8A=
X-Google-Smtp-Source: APXvYqzIB91v4uwsl17oRKUKktkU9IRGKO5MyrKYomIW70qShKac/i2k5ZBdNkZTwL9MRRb3bjsZpmhw8fwpTTZ/CKU=
X-Received: by 2002:a25:138a:: with SMTP id 132mr54282750ybt.127.1558969186997; 
 Mon, 27 May 2019 07:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
In-Reply-To: <20190527134805.j7t4ffstrnhdml47@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 27 May 2019 16:59:35 +0200
Message-ID: <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_075949_284520_CB7C7AE7 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kxZllaiwKCk9uIE1vbiwgMjcgTWF5IDIwMTkgYXQgMTU6NDgsIE9uZMWZZWogSmlybWFu
IDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4KPiBIaSBDbMOpbWVudCwKPgo+IE9uIE1vbiwg
TWF5IDI3LCAyMDE5IGF0IDEyOjI1OjI2QU0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToK
PiA+IEhpLAo+ID4KPiA+IEE2NCBJUiBzdXBwb3J0IHNlcmllc1sxXSBwb2ludGVkIG91dCB0aGF0
IGFuIEEzMSBiaW5kaW5ncyBzaG91bGQgYmUKPiA+IGludHJvZHVjZWQuCj4gPgo+ID4gVGhpcyBz
ZXJpZXMgaW50cm9kdWNlIHRoZSBBMzEgY29tcGF0aWJsZSBiaW5kaW5ncywgdGhlbiBzd2l0Y2gg
aXQgb24KPiA+IHRoZSBhbHJlYWR5IGV4aXN0aW5nIGJvYXJkLgo+ID4KPiA+IEZpbmFsbHkgaW50
cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KPgo+IERvZXMgSDYgc3VwcG9ydCBhY3R1YWxseSB3
b3JrPyBJIGRvbid0IHNlZSBhbnkgZHJpdmVyIGNoYW5nZXMgYW5kIGxhc3QgdGltZQo+IEkgdHJp
ZWQgd2l0aCB0aGUgZXhhY3Qgc2FtZSBiaW5kaW5ncywgSSBnb3QgUkNVIHN0YWxscyBzaG9ydGx5
IGFmdGVyIGJvb3QuCgpBY3R1YWxseSwgSSBoYXZlIHRlc3RlZCBvbmx5IG9uIEg2IG9uIG15IEJl
ZWxpbmsgR1MxIHdpdGggYSAiTkVDIiByZW1vdGUuCgpJIGhhdmUgbWFudWFsbHkgdG9nZ2xlIHRo
ZSBwcm90b2NvbHMgYW5kIGRvIGEgc2ltcGxlIGNhdCBpbiAvZGV2L2lucHV0L2V2ZW50MAojIGVj
aG8gbmVjID4gL3N5cy9jbGFzcy9yYy9yYzAvcHJvdG9jb2xzCiMgY2F0IC9kZXYvaW5wdXQvZXZl
bnQwIHwgaGV4ZHVtcAowMDAwMDAwIDAwOTMgMDAwMCAwMDAwIDAwMDAgOGJmYiAwMDA5IDAwMDAg
MDAwMAowMDAwMDEwIDAwMDQgMDAwNCA4MDI4IDAwMDAgMDA5MyAwMDAwIDAwMDAgMDAwMAowMDAw
MDIwIDhiZmIgMDAwOSAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMAowMDAwMDMwIDAwOTMg
MDAwMCAwMDAwIDAwMDAgNTViZSAwMDBhIDAwMDAgMDAwMAowMDAwMDQwIDAwMDQgMDAwNCA4MDI4
IDAwMDAgMDA5MyAwMDAwIDAwMDAgMDAwMAowMDAwMDUwIDU1YmUgMDAwYSAwMDAwIDAwMDAgMDAw
MCAwMDAwIDAwMDAgMDAwMAowMDAwMDYwIDAwOTMgMDAwMCAwMDAwIDAwMDAgZmE0MiAwMDBkIDAw
MDAgMDAwMAowMDAwMDcwIDAwMDQgMDAwNCA4MDI4IDAwMDAgMDA5MyAwMDAwIDAwMDAgMDAwMAow
MDAwMDgwIGZhNDIgMDAwZCAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMAowMDAwMDkwIDAw
OTMgMDAwMCAwMDAwIDAwMDAgYzQxYSAwMDBlIDAwMDAgMDAwMAowMDAwMGEwIDAwMDQgMDAwNCA4
MDI4IDAwMDAgMDA5MyAwMDAwIDAwMDAgMDAwMAowMDAwMGIwIGM0MWEgMDAwZSAwMDAwIDAwMDAg
MDAwMCAwMDAwIDAwMDAgMDAwMAoKCldoaWNoIGtlcm5lbCBkaWQgeW91IHRlc3Qgd2l0aD8gRG8g
eW91IGhhdmUgYW55IGxvZz8KClRoYW5rcywKQ2zDqW1lbnQKCj4KPiBFbmFibGluZy9kaXNhYmxp
bmcgaXIgbm9kZSB3YXMgZW5vdWdoIHRvIHRyaWdnZXIvc3RvcCB0aGUgUkNVIHN0YWxscyBvbiBI
Ni4KPgo+IHJlZ2FyZHMsCj4gICAgICAgICBvLgo+Cj4gPiBSZWdhcmRzLAo+ID4gQ2zDqW1lbnQK
PiA+Cj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwMzEz
OTAvIzEyMjE0NjQKPiA+Cj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4gIC0gRG9jdW1lbnQgcmVz
ZXQgbGluZXMgYXMgcmVxdWlyZWQgc2luY2UgQTMxCj4gPiAgLSBFeHBsYWluIHRoZSBtZW1vcnkg
bWFwcGluZyBkaWZmZXJlbmNlIGluIGNvbW1pdCBsb2cKPiA+ICAtIEZpeCBtaXNzcGVsbGluZyAi
QWxsd2luZXIiIHRvICJBbGx3aW5uZXIiCj4gPgo+ID4gQ2zDqW1lbnQgUMOpcm9uICg4KToKPiA+
ICAgZHQtYmluZGluZ3M6IG1lZGlhOiBzdW54aS1pcjogYWRkIEEzMSBjb21wYXRpYmxlCj4gPiAg
IG1lZGlhOiByYzogc3VueGk6IEFkZCBBMzEgY29tcGF0aWJsZQo+ID4gICBBUk06IGR0czogc3Vu
eGk6IHByZWZlciBBMzEgaW5zdGVhZCBvZiBBMTMgZm9yIGlyCj4gPiAgIGR0LWJpbmRpbmdzOiBt
ZWRpYTogc3VueGktaXI6IEFkZCBBNjQgY29tcGF0aWJsZQo+ID4gICBkdC1iaW5kaW5nczogbWVk
aWE6IHN1bnhpLWlyOiBBZGQgSDYgY29tcGF0aWJsZQo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5u
ZXI6IGg2OiBBZGQgSVIgcmVjZWl2ZXIgbm9kZQo+ID4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6
IGg2OiBFbmFibGUgSVIgb24gSDYgYm9hcmRzCj4gPiAgIGFybTY0OiBkZWZjb25maWc6IGVuYWJs
ZSBJUiBTVU5YSSBvcHRpb24KPiA+Cj4gPiBJZ29ycyBNYWtlamV2cyAoMSk6Cj4gPiAgIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQgSVIgbm9kZQo+ID4KPiA+IEplcm5laiBTa3JhYmVj
ICgxKToKPiA+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEVuYWJsZSBJUiBvbiBPcmFu
Z2UgUGkgV2luCj4gPgo+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWly
LnR4dCAgICB8IDExICsrKysrKysrKy0tCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VuNmktYTMx
LmR0c2kgICAgICAgICAgICAgIHwgIDIgKy0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1h
ODN0LmR0c2kgICAgICAgICAgICAgfCAgMiArLQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjlp
LWE4MC5kdHNpICAgICAgICAgICAgICB8ICAyICstCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3Vu
eGktaDMtaDUuZHRzaSAgICAgICAgICAgIHwgIDIgKy0KPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9z
dW41MGktYTY0LW9yYW5nZXBpLXdpbi5kdHMgfCAgNCArKysrCj4gPiAgYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIHwgMTggKysrKysrKysrKysrKysrKysrCj4g
PiAgLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgIDQgKysr
Kwo+ID4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA0
ICsrKysKPiA+ICAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMg
fCAgNCArKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0
c2kgIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+ID4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ICBkcml2ZXJzL21lZGlhL3JjL3N1bnhp
LWNpci5jICAgICAgICAgICAgICAgICAgfCAgMSArCj4gPiAgMTMgZmlsZXMgY2hhbmdlZCwgNjgg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiAtLQo+ID4gMi4yMC4xCj4gPgo+
ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
