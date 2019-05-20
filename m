Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0C722E50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrwCEr3oyCFPShwcQU+MWqCHyYLPQUV3tgmNXO3vWO4=; b=LvcEvvq64K02ul
	vtJXaYf7NbPH/hkHL0A00aidy2SsQ8G1WxdR/4iUxPFr8R+s1azY42J5bu2WocbVaQrbimSEbJxmS
	ViLuWZR07jbJJO9UKEXUa7Cr5Z/QWyY2jQv1mR384Z5QD19kMCokQeJUzbVGE9Mz7y7/02mOSl0cp
	lu96/1jhYOJup8HO3qsCHSkymSjAJ5WLCyoWo6tg/Yvn7nVcGEeQkFVm6BHVQz/EM8Et7Sup+vA3u
	4+VskH/HoqghAnApph79N24Ef3OfS9YwREF1ydx84FI3NzDBiv4DD5LsPsPLNhZ1PE5AA4fro3eSU
	Tv4ZjAJAqjEnPILwn8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdYX-0006Ok-4o; Mon, 20 May 2019 08:22:01 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdYP-0006Nu-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:21:55 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e68so5532267ywf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6qhO6B8/Z9D9GEePABEHToMQA2Zs+IWYeC8mEzi25YY=;
 b=R5Z+RjbqwZV78P9ToAX8cdQxWCGGQYpG1b6umNEBYkosWgExwZSU1q71Zp4WbGmGoc
 op/1g+RlSnWhVDVr7/H45rTEmKBCB4wb688alowDLxBL6pV0XbRjLU5Gi0BBFccrvmuC
 Ec1i+bsCKfe4Jteg4849yH84Lki5NlCEColC4Uzgr5WhH+nycTgaEI+nX2cHyWddzsQD
 Ah42AhDZoAVxhulQEcfV5SywwNSXTT2ZWi0y+ciBePITT9EpBXPKtYwiolfHgVgnAOtY
 ElcQ2Lke+RZepMdrTWaQJ1sKMR0IW4Kp9HSZYG0YbaY/IR1g+Qw6Ji1ngvrX8u6KIBlW
 Obhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6qhO6B8/Z9D9GEePABEHToMQA2Zs+IWYeC8mEzi25YY=;
 b=hhiqVlwP/Lk6gBJdxpL0M4W6KV2EngCIJ1dFp3wFf7ap6kz5A9nDstQy7YpROoejkB
 cT/yQimbahgwFu/gxDgaqOmGsSZvOIVcdjGnYLfVZSHhQeNmNwxGMAWrH5cINWlkcaOS
 j+aCUJhnvpVnm7QArMZS1FWZUO4mOfvgocu7zQ3NvqyZfiB9z9Thw36GNpb0gTnYj0bO
 3dgjjWtNAvoBtfNMqGk1LfJ6tfamLUIrqSfsrDdINhFCYAn4OlynPxv1WESNJKHzQAwO
 rZ2ZibDizI7Xn/TvUTXbwIRii1VTuR6SqrzVYBYUW8e0Ze3+hUzH4NilTiMCb4fWbChG
 F0+g==
X-Gm-Message-State: APjAAAVKGXX0R+OpZm/GLS2V32rHL4j1nF35S5oZ336fJ5L5ARGOhIht
 pen6Pb3Kjle5GR1Fek5vbDPeUaBei/PPVjuQCp8=
X-Google-Smtp-Source: APXvYqxTV7Y4TX39GVp8m3uUIqRHuAd4Xg7evnIjykjVPrMlj+RftBbiQ1AZDp3Zzok2g/gdO2GsZt9sT8nrTtl+3xE=
X-Received: by 2002:a81:59c2:: with SMTP id n185mr33786741ywb.21.1558340511959; 
 Mon, 20 May 2019 01:21:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-3-peron.clem@gmail.com>
 <20190520073652.itk452vrpnicta5v@flea>
In-Reply-To: <20190520073652.itk452vrpnicta5v@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 May 2019 10:21:40 +0200
Message-ID: <CAJiuCceEL9xH45P6Gj99YTir_1tkyraf5HefDNfm9p+UtdLs8w@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: allwinner: h6: add watchdog node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_012153_850508_203A4B9B 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDIwIE1heSAyMDE5IGF0IDA5OjM2LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUu
cmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgTWF5IDE4LCAyMDE5IGF0IDA1
OjIzOjUzUE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEFsbHdpbm5lciBINiBo
YXMgYSB3YXRjaG9nIG5vZGUgd2hpY2ggc2VlbXMgYnJva2VuCj4gPiBvbiBzb21lIGJvYXJkcy4K
PiA+Cj4gPiBUZXN0IGhhcyBiZWVuIHBlcmZvcm1lZCBvbiBzZXZlcmFsIGJvYXJkcy4KPiA+Cj4g
PiBDaGVuLVl1IFRzYWkgYm9hcmRzOgo+ID4gUGluZSBINjQgLSBINjQ0OEJBIDc3ODIgPT4gT0sK
PiA+IE9yYW5nZVBpIExpdGUgMiAtIEg4MDY4QkEgNjFDMiA9PiBLTwo+ID4KPiA+IE1hcnRpbiBB
eW90dGUgYm9hcmRzOgo+ID4gUGluZSBINjQgLSBIODA2OUJBIDY4OTIgPT4gT0sKPiA+IE9yYW5n
ZVBpIDMgLSBIQTA0N0JBIDY5VzIgPT4gS08KPiA+IE9yYW5nZVBpIE9uZSBQbHVzIC0gSDczMTBC
QSA2ODQyID0+IEtPCj4gPiBPcmFuZ2VQaSBMaXRlMiAtIEg2NDQ4QkEgNjY2MiA9PiBLTwo+ID4K
PiA+IENsw6ltZW50IFDDqXJvbiBib2FyZDoKPiA+IEJlZWxpbmsgR1MxIC0gSDczMDlCQSA2ODQy
ID0+IEtPCj4gPgo+ID4gQXMgaXQgc2VlbXMgbm90IGZpeGFibGUgZm9yIG5vdywgZGVjbGFyZSB0
aGUgbm9kZQo+ID4gYnV0IGxlYXZlIGl0IGRpc2FibGUgd2l0aCBhIGNvbW1lbnQuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPgo+
IElmIGl0IGRvZXNuJ3Qgd29yayBtb3N0IGJvYXJkcywgdGhlbiB3aHkgZG8gd2UgbmVlZCB0byBt
ZXJnZSB0aGF0Cj4gcGF0Y2ggaW4gdGhlIGZpcnN0IHBsYWNlPwoKTXkgcGVyc29ubmFsIG9waW5p
b24sIGlzIHRoYXQgaGF2aW5nIHRoZSBJUCBkZWNsYXJlZCBhbmQgZGlzYWJsZWQgd2l0aAphIGNv
bW1lbnQgc2F5aW5nICJpdCdzIGJyb2tlbiBvbiBzb21lIGJvYXJkcyIgaW4gdGhlIGRldmljZS10
cmVlIGlzCmJldHRlciB0aGFuIG5vdCBoYXZpbmcgYXQgYWxsLgoKVGhpcyB3aWxsIGV4cGxpY2l0
IHNheSAidGhlIElQIGV4aXN0IGJ1dCBkb24ndCB1c2UgaXQhIi4KTWF5YmUgc29tZSBwZW9wbGUg
d2l0aCBhIGZ1bmN0aW9ubmFsIGJvYXJkIHdvdWxkIGxpa2UgdG8gZXhwbGljaXRseQp1c2UgaXQg
b24gdGhlaXIgZHRzLgoKQWdhaW4ganVzdCBteSBwZXJzb25uYWwgb3BpbmlvbiwKVGhhbmtzIGZv
ciB0aGUgcmV2aWV3LApDbMOpbWVudAoKPgo+IE1heGltZQo+Cj4gLS0KPiBNYXhpbWUgUmlwYXJk
LCBCb290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBz
Oi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
