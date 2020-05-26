Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099211E2FBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Klki14kA4UA73YTrcjc5GyqnKIb2BWOEW0Ia5AlmQkE=; b=F4Bt2GSAmzu8E/
	LNgwWGMoHtPOSOEBkwnoMosPqbCMQ5c6R1w3u5GPYknLujmKHIyJIGhW0hB/KOFr44CKrquvtiSWR
	oXDS0QFt6ou+YCu2DP8J7Y7ZfUsT77Yu41/YOYDBtNl4CIxA0j/PDj5E10W7s0fE1ocPcijII1KOr
	0Zi5yuBIcP3TZK5hFMHELHmkTWK8GcE2/djskuDUpQGYY+9SNVK/h5B5PTkUQe3Q71oXJu9UYLirV
	fxITuyOyQdSim3FSJf9yX15srFuvKil4/98R7U3ZOyfr+TnMjqfpAfankTL3J+pu1oxa0iNpkUNdF
	3UYskSzPG8TFHEod6yQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfn5-0006mL-NS; Tue, 26 May 2020 20:03:11 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfhA-0007nH-VA
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:57:06 +0000
Received: by mail-qk1-f194.google.com with SMTP id c12so3097218qkk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 12:57:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Tv568JygARptrMAgf1Gov6V8e1gDgQj+1HZxw3kgZEU=;
 b=Te+e/BYwWehG3FBkERFrr3Sz7IsMeUQy73GNTbja1m2z/F//T4BwBz8KhitAwZgn9u
 IUFyTy9QHv1vEFvuPAqdUnH7030jFDjOk6Duo0ayy37ktf/yENfEhyepRA/ogqDSQ4zz
 k3HiOxVVf93mFYNI61Crt2DpeBhBHFvb8mxkCvBDi2sYnovBHLwBTZADnDas0dbVcfhR
 7s496ds2wbxdpdpzFeGO1sfVLvCOC83of+vhi+iaYT76lEe6f5HPRCnWzW+zE1kHt3iT
 +O3pxN0dJ+1g5PbYhB2kAaTiDD17y7ig4fm2Dt3PHKQGrVMRTx4mpSEHxuxwiPyc6jb0
 Zlqw==
X-Gm-Message-State: AOAM533Z2L48gzNPSx+XdnUXXh45/ai26m0ECyW6FN0fR91BygThEe1f
 va1i2xepZZo5zFaQDvvEOb9fEe4VxW8=
X-Google-Smtp-Source: ABdhPJwR7Hq6JvJGUzF2BbW3Y9WpwX0LZk90LbMYvR/4Q9U4qmqrtuCyqJRUxNI9rbU7wMRSEcDn/g==
X-Received: by 2002:a37:85c4:: with SMTP id h187mr482109qkd.179.1590523022887; 
 Tue, 26 May 2020 12:57:02 -0700 (PDT)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com.
 [209.85.222.180])
 by smtp.gmail.com with ESMTPSA id d140sm518260qkc.22.2020.05.26.12.57.01
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 12:57:02 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id 205so8868348qkg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 12:57:01 -0700 (PDT)
X-Received: by 2002:a37:ecc:: with SMTP id 195mr457918qko.469.1590523021692;
 Tue, 26 May 2020 12:57:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200518221904.GA22274@embeddedor>
 <202005181529.C0CB448FBB@keescook>
 <CADRPPNR-Croux9FgnrQJJmdF2jNnuAmC+2xMJSgSbkbRv9u8Mw@mail.gmail.com>
 <202005202022.588918E61@keescook>
 <CADRPPNTuUUVOHs76JVzELcsyRH_LSi2PGML1t2wob+45LJCXvA@mail.gmail.com>
 <VE1PR04MB67682776BDC5682B3B330D6A91B30@VE1PR04MB6768.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB67682776BDC5682B3B330D6A91B30@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 26 May 2020 14:56:33 -0500
X-Gmail-Original-Message-ID: <CADRPPNSX9cRjuogv1W1TCGzdn0uJWZ3_QBrjDKfdHgaSq0JLdQ@mail.gmail.com>
Message-ID: <CADRPPNSX9cRjuogv1W1TCGzdn0uJWZ3_QBrjDKfdHgaSq0JLdQ@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
To: Qiang Zhao <qiang.zhao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125705_011544_AC5C5337 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXkgMjQsIDIwMjAgYXQgOTo0OSBQTSBRaWFuZyBaaGFvIDxxaWFuZy56aGFvQG54
cC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgMjMsIDIwMjAgYXQgNToyMiBQTSBMaSBZYW5n
IDxsZW95YW5nLmxpQG54cC5jb20+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4g
RnJvbTogTGkgWWFuZyA8bGVveWFuZy5saUBueHAuY29tPgo+ID4gU2VudDogMjAyMOW5tDXmnIgy
M+aXpSA1OjIyCj4gPiBUbzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4gPiBD
YzogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPjsgUWlhbmcgWmhh
bwo+ID4gPHFpYW5nLnpoYW9AbnhwLmNvbT47IGxpbnV4cHBjLWRldiA8bGludXhwcGMtZGV2QGxp
c3RzLm96bGFicy5vcmc+Owo+ID4gbW9kZXJhdGVkIGxpc3Q6QVJNL0ZSRUVTQ0FMRSBJTVggLyBN
WEMgQVJNIEFSQ0hJVEVDVFVSRQo+ID4gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZz47IGxrbWwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+Owo+ID4gR3VzdGF2byBB
LiBSLiBTaWx2YSA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNvbT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFU
Q0hdIHNvYzogZnNsOiBxZTogUmVwbGFjZSBvbmUtZWxlbWVudCBhcnJheSBhbmQgdXNlCj4gPiBz
dHJ1Y3Rfc2l6ZSgpIGhlbHBlcgo+ID4KPiA+IE9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDEwOjI0
IFBNIEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgo+ID4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IE9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDA2OjUyOjIxUE0gLTA1MDAsIExpIFlhbmcgd3Jv
dGU6Cj4gPiA+ID4gT24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgNTo1NyBQTSBLZWVzIENvb2sgPGtl
ZXNjb29rQGNocm9taXVtLm9yZz4KPiA+IHdyb3RlOgo+ID4gPiA+ID4gSG0sIGxvb2tpbmcgYXQg
dGhpcyBjb2RlLCBJIHNlZSBhIGZldyBvdGhlciB0aGluZ3MgdGhhdCBuZWVkIHRvIGJlCj4gPiA+
ID4gPiBmaXhlZDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiAxKSBkcml2ZXJzL3R0eS9zZXJpYWwvdWNj
X3VhcnQuYyBkb2VzIG5vdCBkbyBhIGJlMzJfdG9fY3B1KCkgY29udmVyc2lvbgo+ID4gPiA+ID4g
ICAgb24gdGhlIGxlbmd0aCB0ZXN0ICh1bmRlcnN0YW5kYWJseSwgYSBsaXR0bGUtZW5kaWFuIHN5
c3RlbSBoYXMgbmV2ZXIKPiA+IHJ1bgo+ID4gPiA+ID4gICAgdGhpcyBjb2RlIHNpbmNlIGl0J3Mg
cHBjIHNwZWNpZmljKSwgYnV0IGl0J3Mgc3RpbGwgd3Jvbmc6Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
ICAgICAgICBpZiAoZmlybXdhcmUtPmhlYWRlci5sZW5ndGggIT0gZnctPnNpemUpIHsKPiA+ID4g
PiA+Cj4gPiA+ID4gPiAgICBjb21wYXJlIHRvIHRoZSBmaXJtd2FyZSBsb2FkZXI6Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gICAgICAgICBsZW5ndGggPSBiZTMyX3RvX2NwdShoZHItPmxlbmd0aCk7Cj4g
PiA+ID4gPgo+ID4gPiA+ID4gMikgZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgZG9lcyBub3QgcGVy
Zm9ybSBib3VuZHMgY2hlY2tpbmcgb24gdGhlCj4gPiA+ID4gPiAgICBwZXItbWljcm9jb2RlIG9m
ZnNldHMsIHNvIHRoZSB1cGxvYWRlciBtaWdodCBzZW5kIGRhdGEgb3V0c2lkZSB0aGUKPiA+ID4g
PiA+ICAgIGZpcm13YXJlIGJ1ZmZlci4gUGVyaGFwczoKPiA+ID4gPgo+ID4gPiA+IFdlIGRvIHZh
bGlkYXRlIHRoZSBDUkMgZm9yIGVhY2ggbWljcm9jb2RlLCBpdCBpcyB1bmxpa2VseSB0aGUgQ1JD
Cj4gPiA+ID4gY2hlY2sgY2FuIHBhc3MgaWYgdGhlIG9mZnNldCBvciBsZW5ndGggaXMgbm90IGNv
cnJlY3QuICBCdXQgeW91IGFyZQo+ID4gPiA+IHByb2JhYmx5IHJpZ2h0IHRoYXQgaXQgd2lsbCBi
ZSBzYWZlciB0byBjaGVjayB0aGUgYm91bmRhcnkgYW5kIGZhaWwKPiA+ID4KPiA+ID4gUmlnaHQs
IGJ1dCBhIG1hbGljaW91cyBmaXJtd2FyZSBmaWxlIGNvdWxkIHN0aWxsIG1hdGNoIENSQyBidXQg
dHJpY2sKPiA+ID4gdGhlIGtlcm5lbCBjb2RlLgo+ID4gPgo+ID4gPiA+IHF1aWNrZXIgYmVmb3Jl
IHdlIGFjdHVhbGx5IHN0YXJ0IHRoZSBDUkMgY2hlY2suICBXaWxsIHlvdSBjb21lIHVwCj4gPiA+
ID4gd2l0aCBhIGZvcm1hbCBwYXRjaCBvciB5b3Ugd2FudCB1cyB0byBkZWFsIHdpdGggaXQ/Cj4g
PiA+Cj4gPiA+IEl0IHNvdW5kcyBsaWtlIEd1c3Rhdm8gd2lsbCBiZSBzZW5kaW5nIG9uZSwgdGhv
dWdoIEkgZG9uJ3QgdGhpbmsKPiA+ID4gZWl0aGVyIG9mIHVzIGhhdmUgdGhlIGhhcmR3YXJlIHRv
IHRlc3QgaXQgd2l0aCwgc28gaWYgeW91IGNvdWxkIGRvCj4gPiA+IHRoYXQgcGFydCwgdGhhdCB3
b3VsZCBiZSBncmVhdCEgOikKPiA+Cj4gPiBUaGF0IHdpbGwgYmUgZ3JlYXQuICBJIHRoaW5rIFpo
YW8gUWlhbmcgY2FuIGhlbHAgd2l0aCB0aGUgdGVzdGluZyBwYXJ0Lgo+ID4KPgo+IE5vdyB0aGUg
ZmlybXdhcmUgYXJlIGxvYWRlZCBpbiB1Ym9vdCwgYW5kIGtlcm5lbCB3aWxsIGRvIG5vdGhpbmcg
Zm9yIGl0Lgo+IFNvIHRlc3Rpbmcgb24gaXQgbWF5YmUgbmVlZCBzb21lIGV4dHJhIGNvZGVzIGJv
dGggaW4gZHJpdmVyIGFuZCBkdHMuCj4gSW4gdGhlIG1lYW53aGlsZSwgSSBhbSBzbyBidXN5IG9u
IHNvbWUgaGlnaCBwcmlvcml0eSB3b3JrIHRoYXQgbWF5YmUgdGVzdCB3b3JrCj4gY291bGQgbm90
IGJlIGRvbmUgaW4gdGltZS4KPiBPbmNlIEkgYW0gZnJlZSwgSSB3aWxsIGRvIGl0LgoKVGhhbmtz
LiAgWW91IGFyZSByaWdodCB0aGF0IG1vc3Qgb2YgdGhlIFFFIGRyaXZlcnMgZG9lc24ndCBzdXBw
b3J0CnJlcXVlc3RpbmcgZmlybXdhcmUgaW4ga2VybmVsIGV4Y2VwdCB0aGUgdWNjX3VhcnQuICBT
byBpdCBwcm9iYWJseSBjYW4KYmUgdGVzdGVkIHdpdGggdGhhdCBkcml2ZXIgd2l0aG91dCByZXF1
aXJpbmcgY29kZSBjaGFuZ2UuCgo+Cj4gQmVzdCBSZWdhcmRzCj4gUWlhbmcgWmhhbwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
