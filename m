Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F793396A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5n/aIFd+aqDrDFJ06LEKPJLLuLKjk6v5a69wh7rLO0=; b=C4UvfCm7E/etHtk/o/i39gPWOA
	GB2BF8CV8iqK7/y2XwFONiKknYFRm/RbiObqDCxJ8Ndj0BkXjrR635WkLdYAXYZmMd4bXov3tvu0e
	yOpqGpos/btFMRgou77WryN72K15KIgFlev3gzL7kDb2GNyXgQkLTAvAxd6wMoJR3apmotVx3sonc
	q0b+XCAB/tayrV2ZugkF9vEW68g7zXOG8gpLifSBJSxMjT7k8d+SpBfyjW19/VIbN0Mw/qj6+ZT4P
	pu7bkms6OCcDHMtAWD2pNzK1zHPUm8NWotAgBmsNwyso853JVJ02e5akgE6dcwyXo5t6I5CyxH2Ld
	SNOSKxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXt6S-0005NO-67; Mon, 03 Jun 2019 19:58:44 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXt6K-0005Mx-81
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:58:37 +0000
Received: by mail-yw1-xc43.google.com with SMTP id t2so61849ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 12:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zPryCWRXLrnucE/JiySfXexBGbsw2P5i9EkkB29EvlE=;
 b=HLZNA8/ZMSuzdLWUPd4akHsIoEpYyGMtqR3HnJRPDBzklcWqP6gjMSNIXSDelJSVEW
 0wNE4StLBsfUYnsnHUKpFd7VNbBWqrfJOZrEH3SgIeL17ZXPXL/xcEkSiiVvYdh+9slb
 2NnpcvWS8HoiqZeR+0eYK2AUr5jNztb969b+o31CSMw01nsrl+ViEipKBHbtgG8bqSyk
 OqtL3KSE4mOsvz7AHivcmik0/fmJBXnFiIOSID5pJN10fGyZHnS5xftTM7oGXzoKNzKU
 S3awdcqnUupx2m0brs0AM6e5sgMmu7sx0SFOpef0J8wNAVNnbb5+RMVrWKcMpZwFgVUE
 Ncdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=zPryCWRXLrnucE/JiySfXexBGbsw2P5i9EkkB29EvlE=;
 b=d+psUWru7tJdxWdhDcS/SW7MvX6caFf+PdqYpW+zuk/Sserg4vH51BBs28FFe4xN2v
 lysH3SYWHJ4m21GOR663ybQsbynMWP2/yOH2IJBFBEtimE+PsHGHwQeGHtnrE/hALGo8
 /KZ2tlsMd6Kd5lKmIv7ldTBfDiS865FII7rUbmKG21BRs0nxfFYfP5ybwuZIPCCF1va6
 rABfpXgDXb5kvx/SJwAjG01PpctPrpn/0DFtVMz4OFtnf/+GFC9G7qZFvgcXZlNm8znc
 RAoxG3rVZW1KxSCKuFSlfNmus4MrKiszzoC5/rG/ip98GOumBE811z+9vsp1cNrNQVUR
 bBTw==
X-Gm-Message-State: APjAAAWJ8ZU3F+B8PZTMLNUQAajGTZnEtYElYsC8OYWFXCe3tFvaJnz+
 GUDrgx8Xf9dNJT3ifuzmrJTZOkEWEZuzcQ7raq4=
X-Google-Smtp-Source: APXvYqzaF/pj6WIIK9LanDm75fPkG92GCmUpgNneIxy1L5Op0Sc7dgolS/x3xgH4Zsp5WeDNIduylRNudGOABU+uGpc=
X-Received: by 2002:a0d:de01:: with SMTP id h1mr14385025ywe.349.1559591914679; 
 Mon, 03 Jun 2019 12:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-11-peron.clem@gmail.com>
 <20190530145550.amalnxmx7kpokykv@core.my.home>
 <CAJiuCce7nHSktVsDKcR8GLRpD3WrN5yP3Nb_Hbu_Q9NjUQbSMw@mail.gmail.com>
 <20190531124630.q2guo54kjfzr7rkn@core.my.home>
In-Reply-To: <20190531124630.q2guo54kjfzr7rkn@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 3 Jun 2019 21:58:23 +0200
Message-ID: <CAJiuCcdMftAjCwk2_naE9VBGGqS=OY9xcqv6+5pDX2Z8O=L28w@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v3 10/12] arm64: dts: allwinner: h6: Add
 IR receiver node
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125836_342894_56C6FD3F 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGkgT25kcmVqLAoKT24gRnJpLCAzMSBNYXkgMjAxOSBhdCAxNDo0NiwgT25kxZllaiBKaXJtYW4g
PG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPgo+IEhlbGxvIENsw6ltZW50LAo+Cj4gT24gRnJp
LCBNYXkgMzEsIDIwMTkgYXQgMTI6MjU6MzJBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3Rl
Ogo+ID4gSGkgT25kcmVqLAo+ID4KPiA+IE9uIFRodSwgMzAgTWF5IDIwMTkgYXQgMTY6NTUsIE9u
ZMWZZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhlbGxv
IENsw6ltZW50LAo+ID4gPgo+ID4gPiBPbiBUdWUsIE1heSAyOCwgMjAxOSBhdCAwNjoxNDozOFBN
ICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gQWxsd2lubmVyIEg2IElSIGlz
IHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUgZHJpdmVyLgo+ID4gPiA+Cj4gPiA+ID4g
QWRkIHN1cHBvcnQgZm9yIGl0Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1l
bnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxOSArKysrKysrKysr
KysrKysrKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gPiA+
ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aQo+ID4gPiA+IGluZGV4IDE2YzVjM2QwZmQ4MS4uNjQ5Y2JkZmU0NTJlIDEwMDY0NAo+ID4gPiA+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4gPiA+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+
ID4gPiBAQCAtNjQ3LDYgKzY0NywyNSBAQAo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBpbnMgPSAiUEwwIiwgIlBMMSI7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZnVuY3Rpb24gPSAic19pMmMiOwo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcl9pcl9yeF9waW46
IHItaXItcngtcGluIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5z
ID0gIlBMOSI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24g
PSAic19jaXJfcngiOwo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiA+ICsg
ICAgICAgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICByX2lyOiBpckA3
MDQwMDAwIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtaXIiLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4MDcwNDAwMDAgMHg0MDA+Owo+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQ
SSAxMDkgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZyX2NjdSBDTEtfUl9BUEIxX0lSPiwKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnJfY2N1IENMS19JUj47Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXBiIiwgImlyIjsK
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JnJfY2N1IFJT
VF9SX0FQQjFfSVI+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcGluY3RybC0wID0gPCZyX2lyX3J4X3Bpbj47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gPiAgICAgICAgICAgICAgIH07
Cj4gPiA+Cj4gPiA+IFBsZWFzZSBtYWtlIGEgY29tbWVudCBoZXJlLCB0aGF0IHRoaXMgaXMga25v
d24gYnJva2VuIG9uIHNvbWUgYm9hcmRzIGFuZCBtYXkKPiA+ID4gcmVzdWx0IElSUSBmbG9vZCBp
ZiBlbmFibGVkLiBPdGhlcndpc2Ugbm9vbmUgd2lsbCBrbm93Lgo+ID4KPiA+IEknbSBwbGFubmlu
ZyB0byBzZW5kIGEgdjQgbmV4dCB3ZWVrIHdpdGggdGhlIElSUV9OT05FIHJldHVybiBhcyBNYXhp
bWUKPiA+IHN1Z2dlc3RlZCBpdC4KPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9jbGVtZW50cGVyb24v
bGludXgvdHJlZS9oNl9pcl92NAo+ID4KPiA+IEJ1dCBtYXliZSB3ZSBjb3VsZCBhbHNvIHVzZSB0
aGUgYml0IDUgb2YgdGhlIElSUSBzdGF0dXMuCj4KPiBUaGFua3MsIHRoYXQncyBuaWNlLCBidXQg
dGhhdCB3aWxsIG5vdCBtYWtlIHRoZSBIVyB3b3JrLiBUaGF0IHdpbGwganVzdCBkaXNhYmxlCj4g
aXQuIFRoZSBjb21tZW50IGlzIHN0aWxsIG5lY2Vzc2FyeS4KSSBoYXZlIHB1c2hlZCBhIG5ldyB2
ZXJzaW9uIG9uIG15IGdpdGh1Yi4KaHR0cHM6Ly9naXRodWIuY29tL2NsZW1lbnRwZXJvbi9saW51
eC9jb21taXRzL2g2X2lyX3Y0CgpJIHdpbGwgc3VibWl0IGl0LCBpZiB5b3UgYXJlIG9rIHdpdGgg
aXQuCgpUaGFua3MsCkNsw6ltZW50Cgo+Cj4gdGhhbmsgeW91LAo+ICAgICAgICAgby4KPgo+ID4g
UmVnYXJkcywgQ2xlbWVudAo+ID4KPiA+ID4KPiA+ID4gdGhhbmtzLAo+ID4gPiAgICAgICAgIG8u
Cj4gPiA+Cj4gPiA+ID4gICAgICAgICAgICAgICByX2kyYzogaTJjQDcwODE0MDAgewo+ID4gPiA+
IC0tCj4gPiA+ID4gMi4yMC4xCj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPiA+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKPiA+Cj4gPiAtLQo+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBi
ZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3Vu
eGkiIGdyb3VwLgo+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1
YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24g
dGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1
bnhpL0NBSml1Q2NlN25IU2t0VnNES2NSOEdMUnBEM1dyTjV5UDNOYl9IYnVfUTlOalVRYlNNdyU0
MG1haWwuZ21haWwuY29tLgo+ID4gRm9yIG1vcmUgb3B0aW9ucywgdmlzaXQgaHR0cHM6Ly9ncm91
cHMuZ29vZ2xlLmNvbS9kL29wdG91dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
