Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4181B0A8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQkvPzo+voP8/2v1ikgurOmYbloP5qEIr2bP5xSELh4=; b=gnPMZGK3YdVQYC
	EM967R29qMs5l+rZOvGYirdE3rnbVGXIxmr9jSknn55HTBCOV/65SP+VJ3nszVPtyCAtVDP7xc3Dw
	nbo5XwUwSYfi75QJJ+N8hv9SmUh94dYN2lv2WgtTToPDoiktIXd2qnMUnmZYNAFnMGsUo3QDeVFEr
	Nb11vZFPPT0yuxFp3Mc9um7QoMZHDswtbb1DXywp8iKB1vzHpvkkI4srV8udcqBszGwAJ83psKKDS
	Za96GooLMeYGbrHWkAQ/golUis5p9VDCwS1i0Sn+Yot3FfDsHSvvX1t6pmiyddVo+dKc8h7FtRL39
	OjIvxDcCwTXiSvKNHP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVrm-0007yP-DT; Mon, 20 Apr 2020 12:49:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVrZ-0007wz-BM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:49:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id p10so1202361ioh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 05:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iDvRfbVf9THDBf1Pms1SmVEOSBofYzkdzChDMla8Sj4=;
 b=qoPTTH/C2gxv+dLqooKi0oP3etwgI2MpwMv7iq5bECuizrvtm90YtPVA/uQC0xtVsp
 RBdXZuvVgfFQOjVxyzj+l9GGJ1oADnVXGV+VpFtsPf7iGoWE8BgdqaQPp5oEr/sneSbI
 SXrIatCRCy7xtcqpy+b72+TLU22Vk8sD3R8hc41cXo2R1C6uCx4BAzOlh4lAcorO9hLL
 jW0R8stz9JxFsvWD5Bh1sYLoiL2u7OaVLwHVyFWmjr7Yfyzg8WkM+JBjruB5kzuEGX6H
 NKCuOyq+L2NH/9GtrF28S11HqxeIpVjPnC/CJT8ZUBNA6v0d6bxolTYo2J8PQWXHif81
 rUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iDvRfbVf9THDBf1Pms1SmVEOSBofYzkdzChDMla8Sj4=;
 b=HbA6eA6eEp5eCHVN45/Pwah8rQg3xeeaYQd0AOV1UAYFhRvtv+6u3LLTbiNLZj4Y6S
 lto93KxF48/4O++NsSJED+6uNfhCI70dedYWR/2w0YpvN+APnrdK4pAMf2/Pdj/dt3xA
 Guj4bDsddgFvfGuuzEYPAS/wMkswyIDICjUiI5MxpM68cMVysNM3549+qYYMWFyR9aFq
 Obehyiv5/uebCYXVsKwRCx3zpeSMKTNeSVNYwdflpHJ3fZr5ckEoMCTv+AxeBdEPhJVG
 04/LffLM/ktWM8hMz81W1urp31dkCh+/MTTj1AYBjv1VnduS1eBnYxbPSNior2cIyhBc
 1LUg==
X-Gm-Message-State: AGi0PuaSth55978Y20yjzPfY971j7fbQR7g2FpMUHd6Iy1ZG8+zCUQsJ
 K509nkvvU1O0n3/U5RwdKY2B86LlvJnt5WlirnE=
X-Google-Smtp-Source: APiQypKaZSsBFHDRc6ZNUTLfTPUf2bTUloz2jpZ0tEKTf3jF6cmVOHfHfGCVReoOY4Y95r/EhQK2KpRAhO9PiADwFPw=
X-Received: by 2002:a6b:dd16:: with SMTP id f22mr15266052ioc.178.1587386964385; 
 Mon, 20 Apr 2020 05:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200419135011.18010-1-peron.clem@gmail.com>
 <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
 <20200420103927.uvzotrolz2inz6q2@core.my.home>
 <CAJiuCcdDge21pRmN8LzKv_tMqBoD9KHg96MUxDS9gp0+xbroJg@mail.gmail.com>
 <20200420124739.pxmtvktlyt7ppfjb@gilmour.lan>
In-Reply-To: <20200420124739.pxmtvktlyt7ppfjb@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 20 Apr 2020 14:49:13 +0200
Message-ID: <CAJiuCcdy-yKU61z30CxY7=aMedaRp928_FYffB9X=ergj9a2kw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054929_053202_57F47130 
X-CRM114-Status: GOOD (  27.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lCgpPbiBNb24sIDIwIEFwciAyMDIwIGF0IDE0OjQ3LCBNYXhpbWUgUmlwYXJkIDxt
YXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBNb24sIEFwciAyMCwgMjAyMCBhdCAwMjoz
NjozMlBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSBPbmRyZWosIE1heGlt
ZSwKPiA+Cj4gPiBPbiBNb24sIDIwIEFwciAyMDIwIGF0IDEyOjM5LCBPbmTFmWVqIEppcm1hbiA8
bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBNYXhpbWUsCj4gPiA+Cj4g
PiA+IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDEwOjQ1OjQ3QU0gKzAyMDAsIE1heGltZSBSaXBh
cmQgd3JvdGU6Cj4gPiA+ID4gSGksCj4gPiA+ID4KPiA+ID4gPiBPbiBTdW4sIEFwciAxOSwgMjAy
MCBhdCAwMzo1MDowNFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gPiBO
b3cgdGhhdCByZXF1aXJlZCBkcml2ZXJzIGFyZSBtZXJnZWQgd2UgY2FuIGNvbnRpYnV0ZSBvbiBE
VkZTCj4gPiA+ID4gPiBzdXBwb3J0IGZvciBBbGx3aW5uZXIgSDYuCj4gPiA+ID4gPgo+ID4gPiA+
ID4gVGhpcyBzZXJpZSBpcyBiYXNlZCBvbiBZYW5ndGFvIExpIHNlcmllWzBdIGFuZCBPbmTFmWVq
IEppcm1hbiB3b3JrWzFdLgo+ID4gPiA+ID4KPiA+ID4gPiA+IE1vc3Qgb2YgdGhlIE9QUCB0YWJs
ZXMgYXJlIHRha2VuIGZyb20gb3JpZ2luYWwgdmVuZG9yIGtlcm5lbFsyXS4KPiA+ID4gPiA+IFBs
dXMgdGhlcmUgYXJlIG5ldyBDUFUgZnJlcXVlbmNpZXMgYXQgMS42R0h6LCAxLjdHSHogYW5kIDEu
OEdIei4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIHdyb3RlIGEgc2ltcGxlIHNjcmlwdCB0byByYW5k
b21seSBzZXQgYSBmcmVxdWVuY3kgZHVyaW5nCj4gPiA+ID4gPiBhIHJhbmRvbSB0aW1lWzNdLiBU
aGlzIHNjcmlwdCBpcyBxdWl0ZSBzdHJlc3NmdWxsIGFuZCBzZXQgc29tZSBoaWdoCj4gPiA+ID4g
PiBmcmVxdWVuY3kgd2l0aG91dCBjaGVja2luZyB0ZW1wZXJhdHVyZS4gVGhpcyBjYW4gcmVzdWx0
IG9uIGJlaGF2aW9yCj4gPiA+ID4gPiB0aGF0IHdob3VsZCBub3Qgb2NjdXJzIHdpdGggdGhlIHJl
YWwgY3B1ZnJlcSBmcmFtZXdvcmsuCj4gPiA+ID4gPiBBcyBNYXhpbWUgcG9pbnQgb3V0IEkgYWxz
byB0ZXN0ZWQgd2l0aCBjcHVmcmVxLWxqdC1zdHJlc3MtdGVzdAo+ID4gPiA+ID4gKGZvdW5kIGhl
cmUgaHR0cHM6Ly9naXRodWIuY29tL3NzdmIvY3B1YnVybi1hcm0pLgo+ID4gPiA+ID4gVGhpcyBz
Y3JpcHQgZG9lc24ndCB0cmlnZ2VyIGFueSBpc3N1ZS4KPiA+ID4gPiA+IEkgYWxzbyB0ZXN0IHRo
YXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBhbmQgZG9pbmcgRFZGUyBvbiBvdGhlciBDUFVzCj4gPiA+
ID4gPiB3b3Jrcy4gQXMgQ1BVIHJlZ3VsYXRvciBpcyBvbmx5IHNldCBmb3IgQ1BVMC4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBUaGUgR1BVIGRldmZyZXEgd2FzIGRyb3AgYXMgdGhlIHJlZ3VsYXRvciBp
cyBzdGlsbCBub3QgcHJvcGVybHkKPiA+ID4gPiA+IGRyaXZlIGJ5IHBhbmZyb3N0IGRyaXZlcls0
XS4KPiA+ID4gPiA+IEkgd2lsbCByZS1pbnRyb2R1Y2UgaXQgbGF0ZXIuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gT25kxZllaiBKaXJtYW4gaGFzIGFuIE9yYW5nZSBQaSAzLCBKZXJuZWogaGFzIGEgUGlu
ZUg2NCBhbmQgYSBUYW5peAo+ID4gPiA+ID4gVFg2IGJvYXJkcyBhbmQgSSBoYXZlIGEgQmVlbGlu
ayBHUzEgYm9hcmQgc28gSSBoYXZlIGVuYWJsZSB0aGVzZQo+ID4gPiA+ID4gYm9hcmRzLiBCdXQg
Q1BVIERldmZyZXEgaXMgcmVhbGx5IHRvdWNoeSBoYXMgaXQgZGVwZW5kcyBvbjoKPiA+ID4gPiA+
IGJvYXJkIGRlc2lnbiwgU29DIHNwZWVkX2dyYWRlIGFuZCBlbnZpcm9uZW1lbnQgd2hpY2ggY2Fu
IGFmZmVjdAo+ID4gPiA+ID4gdGhlcm1hbCBjb29saW5nIGFuZCBoYXZlIGRpZmZlcmVudCBiZWhh
dmlvciBmb3IgZGlmZmVyZW50IHVzZXIuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSWYgcGVvcGxlIGNh
biB0ZXN0IHRoaXMgc2VyaWUgYW5kIGdpdmUgZmVlZGJhY2ssIEkgd2lsbCB0cnkgdG8KPiA+ID4g
PiA+IGludHJvZHVjZSB0aGlzIGluIExpYnJlRWxlYyB0cmVlLCBzbyBMRSBjb21tdW5pdHkgY2Fu
IHRlc3QgaXQuCj4gPiA+ID4KPiA+ID4gPiBBcHBsaWVkIGFsbCBvZiB0aGVtLCB0aGFua3MhCj4g
PiA+Cj4gPiA+IFBsZWFzZSBhbHNvIGFwcGx5ICJbUEFUQ0ggdjIgMS83XSBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBBZGQKPiA+ID4gY2xvY2sgdG8gQ1BVIGNvcmVzIiBmcm9tIHRoZSB2MiBz
ZXJpZXMsIG90aGVyd2lzZSBjcHVmcmVxIHdpbGwKPiA+ID4gbm90IHdvcmsuCj4gPiA+Cj4gPiA+
IEkgY2FuIGFsc28gc2VuZCBhIG1pc3NpbmcgcGF0Y2ggYWRkaW5nIHRoZSB0cmlwIHBvaW50cywg
YW5kIGNwdQo+ID4gPiBhcyBhIGNvb2xpbmcgZGV2aWNlLCB0aGF0IEkgbGlua2VkIGluIG15IG90
aGVyIHJlcGx5IHRvIHRoaXMgcGF0Y2gKPiA+ID4gc2VyaWVzIGFmdGVyd2FyZHMsIGlmIENsw6lt
ZW50IHdhbnRzLgo+ID4KPiA+IEluZGVlZCBJIGhhdmUgc2VudCB1c2luZyB0aGUgZm9sbG93aW5n
IGNtZCA6ICJnaXQgc2VuZC1lbWFpbCAtLXRvPVhYWFggSEVBRH43Igo+ID4gZnJvbSB0aGUgcHJl
dmlvdXMgdmVyc2lvbi4KPiA+Cj4gPiBJIHNob3VsZCBoYWQgZG8gSW5zdGVhZDogImdpdCBzZW5k
LWVtYWlsIC0tdG89WFhYWCBuZXh0L21hc3RlciAiCj4gPgo+ID4gU29ycnkgZm9yIHRoYXQgOigK
Pgo+IEkgaGF2ZW4ndCBwdXNoZWQgYW55dGhpbmcgeWV0LCBjYW4geW91IHJlc2VuZCB0aGUgcHJv
cGVyIGJyYW5jaD8KClllcywgSSB3aWxsLAoKVGhhbmtzIQo+Cj4gVGhhbmtzIQo+IE1heGltZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
