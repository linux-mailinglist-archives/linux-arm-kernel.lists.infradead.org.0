Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBF81BC5BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vk8WxWmbRDxpZCr3kG46XPlqAl7hLQ7w2OIOQI+9604=; b=gutSOZ7rIQ+PFz
	0t5gxhXLi6kkRv/P39rgTfn1sDPg2tmJOEjM5s0wYzotXIvfyPWBUrcbZngLNzPy38WbqRLTqE7eK
	xtIky4Ar7gYsLGby2OCg8xo5PmP94wwrPh4LjWsymAL8y+M6Sf2NRXqfWNka4pMhk7E4Lvr2OUN8e
	k5rWg48p4VDICQyRopcIiHiT4SSV4bdRbleN9NGJi5eVXMM1KGo2e0qZlCoXiOIzW94tuzW8oB/qQ
	qcwRTjx1CSvKHdMuAGSqV+pmHMDMwWNapEngDJ+jua8eUcEGauxLN5AUjU9fOm3vMq4BXYDeMZ2in
	u1nPf/wSnuTgpCOJv4nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTQO-0004Ad-CS; Tue, 28 Apr 2020 16:49:36 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQD-00049D-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:26 +0000
Received: by mail-io1-xd29.google.com with SMTP id f3so23791420ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JS/Zae/slzX90tyUKT8r1SH4RG9V4TT4VPt705M4mKg=;
 b=V2Zm63dUiV3TTv4NusICrNtW9C+4hSQl0AvbqXXwN9RUmiI2qh/MP3EwePMMaD6a3H
 kFLvQEXGLfR1WPfk4I0a9Y2RxpET6/nFUP4Ft4xTMJcAII5++HFxk1cCU3ABcP0WGCBv
 nndZMG95rXNmP//mN3kFoluvP77qYaq7X9cyIGn8PEzpTldV/jmN3iYRV7+m55+o0q8V
 q07b1GUUU5enXKzG3nfwrzvw+qOQ73O7dRelONAy1hj+91aCmG8VWR4zYfgXV/fjDWx6
 sMJi9jhhaPpWcMWsBcS3Gue2AI67aQf4styimAP23+ASIOpa5fzTd70raNY04b0R9qT2
 ibjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JS/Zae/slzX90tyUKT8r1SH4RG9V4TT4VPt705M4mKg=;
 b=WFOtMV2kztH2wQRI9Wbf2TH0XC2Yxta5fQFFZBGzrq/WdZeDdo8w8Gpcc9LwWavEID
 XSX1RkzbYKKONBOtKHoJwD/+xXzar24L8WW3RKMTV5ATUM/rxKbpRAWDZcPoxiNHw9D9
 NQPFpPw4ngS6VbnzDzzLXkTbPRP6JXFkeijYmsiJ7n2RbKLavxYtV9fW5rdnlhReDa05
 +y34jem3RlOhNR4kjDysKp6sVUPWdkWnGE4vbhqMg1OoOLNpACz55u4i2r+v8/dE2gFm
 03a7yM2GwB939tSTsI3Kx7ByicY7R8EXXlITtDXypIVCaWg5G27Zo6K56lDdHvjf5ZBc
 3uLg==
X-Gm-Message-State: AGi0PuYTN7CpelwsAqnwK0z/xu1UGhaClFegwhpQysXXhrUW/GLxYWHc
 YL45AKxE3o2vwozOmCGzT9MsV+SJTMiZIBdFoVI=
X-Google-Smtp-Source: APiQypKVVDj4+SrA1Wh3npapyS8is6Ny7tWN7gGRKKd2wbPbADnpfEAZaApyWXCE8Ach3PRxG824Bn1lotSb4OuXfiE=
X-Received: by 2002:a5d:9494:: with SMTP id v20mr26961821ioj.101.1588092561434; 
 Tue, 28 Apr 2020 09:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
In-Reply-To: <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 18:49:10 +0200
Message-ID: <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
Subject: Audio sound card name [was [PATCH 4/7] arm64: dts: allwinner: a64:
 Add HDMI audio]
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094925_307083_5EEF1899 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywgUm9iLAoKT24gVHVlLCAyOCBBcHIgMjAyMCBhdCAxODowNCwgTWF4aW1lIFJpcGFy
ZCA8bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlOgo+Cj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQg
MTA6NTQ6MDBBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gSGkgTWF4aW1lLAo+
ID4KPiA+IE9uIFR1ZSwgMjggQXByIDIwMjAgYXQgMTA6MDAsIE1heGltZSBSaXBhcmQgPG1heGlt
ZUBjZXJuby50ZWNoPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQg
MDI6MDQ6MzlQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gPiA+IEZyb206IE1h
cmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgo+ID4gPiA+Cj4gPiA+ID4gQWRkIGEg
c2ltcGxlLXNvdW5kY2FyZCB0byBsaW5rIGF1ZGlvIGJldHdlZW4gSERNSSBhbmQgSTJTLgo+ID4g
PiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVj
QHNpb2wubmV0Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBw
ZXJAZ21haWwuY29tPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysKPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+ID4gPiBp
bmRleCBlNTZlMWUzZDRiNzMuLjA4YWI2YjVlNzJhNSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+ID4gPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPiA+ID4gPiBAQCAt
MTAyLDYgKzEwMiwyNSBAQAo+ID4gPiA+ICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKPiA+ID4gPiAgICAgICB9Owo+ID4gPiA+Cj4gPiA+ID4gKyAgICAgaGRtaV9zb3VuZDogaGRt
aS1zb3VuZCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRp
by1jYXJkIjsKPiA+ID4gPiArICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9
ICJpMnMiOwo+ID4gPiA+ICsgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSA9ICJh
bGx3aW5uZXIsaGRtaSI7Cj4gPiA+Cj4gPiA+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSB1c3VhbCBj
YXJkIG5hbWUgc2hvdWxkIGJlIGxpa2UgdGhvdWdoLiBJIHdvdWxkIGFzc3VtZSB0aGF0Cj4gPiA+
IHRoaXMgc2hvdWxkIGJlIHNvbWV0aGluZyBzcGVjaWZpYyBlbm91Z2ggc28gdGhhdCB5b3UncmUg
YWJsZSB0byBkaWZmZXJlbnRpYXRlCj4gPiA+IGJldHdlZW4gYm9hcmRzIC8gU29DIHNvIHRoYXQg
dGhlIHVzZXJzcGFjZSBjYW4gY2hvb3NlIGEgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24KPiA+ID4g
YmFzZWQgb24gaXQ/Cj4gPgo+ID4gSSByZWFsbHkgZG9uJ3Qga25vdyB3aGF0IHdlIHNob3VsZCB1
c2UgaGVyZSwKPiA+IEkganVzdCBoYXZlIGEgbG9vayBhdCBvdGhlciBTb0M6Cj4gPiByazMzMjg6
ICJIRE1JIgo+ID4gcmszMzk5OiAiaGRtaS1zb3VuZCIKPiA+IHI4YTc3NGMwLWNhdDg3NDogIkNB
VDg3NCBIRE1JIHNvdW5kIgo+ID4KPiA+IEJ1dCBtYXliZSBpdCdzIHRpbWUgdG8gaW50cm9kdWNl
IHByb3BlciBuYW1lOgo+ID4gV2hhdCBhYm91dCA6Cj4gPiBwYXQKPiA+IHN1bjUwaS1oNi1oZG1p
Cj4KPiBJdCdzIHByZXR0eSBtdWNoIHdoYXQgd2UndmUgYmVlbiB1c2luZyBmb3IgdGhlIG90aGVy
IHNvdW5kIGNhcmRzIHdlIGhhdmUsIHNvIGl0Cj4gbWFrZXMgc2Vuc2UgdG8gbWUuCgpJIGhhdmUg
YSBxdWVzdGlvbiByZWdhcmRpbmcgdGhlIHNpbXBsZS1hdWRpby1jYXJkLG5hbWUuCkluIHRoaXMg
cGF0Y2gsIEkgd291bGQgbGlrZSB0byBpbnRyb2R1Y2UgYSBzaW1wbGUtYXVkaW8tY2FyZCBmb3Ig
dGhlCkFsbHdpbm5lciBBNjQgSERNSS4KCldoYXQgc2hvdWxkIGJlIHRoZSBwcmVmZXJyZWQgbmFt
ZSBmb3IgdGhpcyBzb3VuZCBjYXJkPwoic3VuNTBpLWE2NC1oZG1pIiA/ICJhbGx3aW5uZXIsIHN1
bjUwaS1hNjQtaGRtaSIgPwoKVGhhbmtzIGZvciB5b3VyIHRpcHMsCkNsZW1lbnQKCj4KPiA+IEhv
dyBzaG91bGQgd2UgaGFuZGxlIHRoaXMgd2l0aCBoMyAvIGg1ID8KPiA+IHNldHRpbmdzIHRoZSBz
aW1wbGUtYXVkaW8tY2FyZCxuYW1lIGluIGVhY2ggU29DIGR0cz8KPiA+IE9yIHVzaW5nIHN1bjUw
aS1oMy1oZG1pIGFzIHRoZXkgYXJlIGJvdGggaWRlbnRpY2FsPwo+Cj4gWWVhaCwgd2UgY2FuIGRv
IHRoZSBsYXR0ZXIKPgo+IE1heGltZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
