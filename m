Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C8DCF08
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3zZwoa46T7YF8nhnICsnDiJ+Lf5u9iJ8JBtXB3gNbA=; b=FGKvEVuze27t3O
	POtdrfw3vdGy2zmaD93O2BprAAieioAhclyceSEhmoBxGziPUgwUuRc6rBZ1GpxTtx510zRau/WzU
	895tnyaHnwpaG2d1Q7Zq0nbEqqUSQMVpraMdpFSfbC2QR+WezfJRnQQY6+Dpl3ZxicPmDhEAx0o2E
	Kx4IIf5ocrRdJdKfSASPZF05xTYSoIcEJpfbrBwl4dCw7+XHABjSte0WzgSQCRadAAlrSNBpuqXOz
	J83bixVXT33adZ8YjQFlnizlJoFPZGTNZNSRqBF0J3A8J8FGKC20UDg/qn5uEzgI/hqtqSz8lj+lw
	ltQLiZQUPBnPmxC0oOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXb8-0008LH-PZ; Fri, 18 Oct 2019 19:07:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXay-0008Ko-P4
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:07:30 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5CCA2082C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 19:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571425648;
 bh=ZvKSuxQuN/jT3Fmjbjwnw6yt3Bbj3F9A+MC7acj1eYo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=r3J6l9JZJc1Zp8tJF9mLQSmXEA68DllcySKWuRRg/es60oLadlYjJhDaAjldnASSb
 ATx8Um+zjpqNtXvhGwZLcVJe0hgMmNdA9edlIZqFx/1a8JB/Sb5YemGVg4SUJXOiKR
 jRtSfzVPwCdgSZPJWLYASOe3Oyl6UG1dXPjI3dRE=
Received: by mail-qk1-f179.google.com with SMTP id 4so6292656qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:07:27 -0700 (PDT)
X-Gm-Message-State: APjAAAVX+FQz0Gdv/cazVo0XfvMuN/7+lph88R+KCCHXoJ/vEoSKQjGx
 O9IKXBl4gMk+Bbn/roL0AL7JCvAZ3ADdHTWu/Q==
X-Google-Smtp-Source: APXvYqyEfCrAtNPgA6gsKBq8urq8H5iqVlTDcHX0aikHpYcOCmiQnShU4x9vV/ge/RWs5MTLKNtafQj54U/NALrxbdY=
X-Received: by 2002:a05:620a:12f1:: with SMTP id
 f17mr10482791qkl.152.1571425646996; 
 Fri, 18 Oct 2019 12:07:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz>
 <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
 <20191017192437.GA24080@bogus>
 <CAMpxmJVrFK38BPjoUtGt99sqgFeOA=wHFAu=QNQg_5Rj1gU92A@mail.gmail.com>
In-Reply-To: <CAMpxmJVrFK38BPjoUtGt99sqgFeOA=wHFAu=QNQg_5Rj1gU92A@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 18 Oct 2019 14:07:15 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+iad9+SE8kwKdxKfOF6TsbTF1V+3yNOLhNNsgnmhSCiA@mail.gmail.com>
Message-ID: <CAL_Jsq+iad9+SE8kwKdxKfOF6TsbTF1V+3yNOLhNNsgnmhSCiA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_120728_853283_300A8321 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-devicetree <devicetree@vger.kernel.org>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTowMCBBTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPgo+IGN6dy4sIDE3IHBhxbogMjAxOSBvIDIx
OjI0IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IE9u
IFRodSwgT2N0IDE3LCAyMDE5IGF0IDA0OjEwOjUwUE0gKzEzMDAsIENocmlzIFBhY2toYW0gd3Jv
dGU6Cj4gPiA+IFRoaXMgR1BJTyBjb250cm9sbGVyIGlzIHByZXNlbnQgb24gYSBudW1iZXIgb2Yg
QnJvYWRjb20gc3dpdGNoIEFTSUNzCj4gPiA+IHdpdGggaW50ZWdyYXRlZCBTb0NzLiBJdCBpcyBz
aW1pbGFyIHRvIHRoZSBuc3AtZ3BpbyBhbmQgaXByb2MtZ3Bpbwo+ID4gPiBibG9ja3MgYnV0IGRp
ZmZlcmVudCBlbm91Z2ggdG8gcmVxdWlyZSBhIHNlcGFyYXRlIGRyaXZlci4KPiA+ID4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxpZWR0ZWxlc2lz
LmNvLm56Pgo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gTm90ZXM6Cj4gPiA+ICAgICBDaGFuZ2VzIGlu
IHYyOgo+ID4gPiAgICAgLSBEb2N1bWVudCBhcyBEVCBzY2hlbWEKPiA+ID4gICAgIC0gSW5jbHVk
ZSBuZ3Bpb3MsICNncGlvLWNlbGxzIGFuZCBncGlvLWNvbnRyb2xsZXIgcHJvcGVydGllcwo+ID4g
Pgo+ID4gPiAgLi4uL2JpbmRpbmdzL2dwaW8vYnJjbSx4Z3MtaXByb2MueWFtbCAgICAgICAgIHwg
ODMgKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDgzIGluc2VydGlv
bnMoKykKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1sCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9icmNtLHhncy1pcHJvYy55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYnJjbSx4Z3MtaXBy
b2MueWFtbAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAw
MDAuLjcxOTk4NTUxMjA5ZQo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2JyY20seGdzLWlwcm9jLnlhbWwKPiA+ID4g
QEAgLTAsMCArMSw4MyBAQAo+ID4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+ID4gPiArJVlBTUwgMS4yCj4gPiA+ICstLS0KPiA+ID4gKyRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9icmNtLHhncy1pcHJvYy55YW1s
Iwo+ID4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjCj4gPiA+ICsKPiA+ID4gK3RpdGxlOiBCcm9hZGNvbSBYR1MgaVByb2MgR1BJTyBjb250
cm9sbGVyCj4gPiA+ICsKPiA+ID4gK21haW50YWluZXJzOgo+ID4gPiArICAtIENocmlzIFBhY2to
YW0gPGNocmlzLnBhY2toYW1AYWxsaWVkdGVsZXNpcy5jby5uej4KPiA+ID4gKwo+ID4gPiArZGVz
Y3JpcHRpb246IHwKPiA+ID4gKyAgVGhpcyBjb250cm9sbGVyIGlzIHRoZSBDaGlwIENvbW1vbiBB
IEdQSU8gcHJlc2VudCBvbiBhIG51bWJlciBvZiBCcm9hZGNvbQo+ID4gPiArICBzd2l0Y2ggQVNJ
Q3Mgd2l0aCBpbnRlZ3JhdGVkIFNvQ3MuCj4gPiA+ICsKPiA+ID4gK3Byb3BlcnRpZXM6Cj4gPiA+
ICsgIGNvbXBhdGlibGU6Cj4gPiA+ICsgICAgZW51bToKPiA+ID4gKyAgICAgIC0gYnJjbSxpcHJv
Yy1ncGlvLWNjYQo+ID4KPiA+IGVudW0gdnMuIGNvbnN0IHVzYWdlIGRlcGVuZHMgb24gd2hldGhl
ciB5b3UgdGhpbmsgeW91J2xsIGFkZCBtb3JlCj4gPiBjb21wYXRpYmxlcy4KPiA+Cj4KPiBXaGF0
IGlmIHlvdSBkb24ndCBrbm93IHlldD8gRm9yIGluc3RhbmNlIHdlIHVzZSBhIGNvbnN0IGNvbXBh
dGlibGUgYW5kCj4gdGhlbiBhIG5ldyBjaGlwIGlzIHJlbGVhc2VkIGZvciB3aGljaCB3ZSBjYW4g
cmV1c2UgdGhlIGRyaXZlcj8KClRoZW4geW91IGp1c3QgY2hhbmdlIGl0IHRvIGFuIGVudW0gKG9y
IG9uZU9mIGlmIHRoZSBuZXcgY29tcGF0aWJsZSBoYXMKYSBmYWxsYmFjayB0byB0aGUgb2xkIG9u
ZSkuIE5vdCByZWFsbHkgYSBiaWcgZGVhbC4KCj4gSXMgdGhpcwo+IHNvbWV0aGluZyB0aGF0IGlz
IGV4cGVjdGVkIHRvIHJlbWFpbiBzdGFibGUgaW4gdGhlIGJpbmRpbmcgZG9jdW1lbnQ/CgpObywg
b25seSBpbiB0aGUgc2Vuc2Ugd2Ugd2FudCB0byBtaW5pbWl6ZSBjaGFuZ2VzLgoKPiBUaGUgcXVl
c3Rpb24gaXMgdW5yZWxhdGVkIHRvIHRoaXMgcGF0Y2gsIEknbSBqdXN0IHVuc3VyZSBhYm91dCBt
eSBvd24KPiBhcHByb2FjaCB0byB3cml0aW5nIHlhbWwgYmluZGluZ3MuCgpXZSBjb3VsZCBwZXJo
YXBzIGp1c3Qgc2F5IHNpbmdsZSBlbnRyaWVzIHNob3VsZCBhbHdheXMgYmUgJ2NvbnN0JwpiZWNh
dXNlIHRoZW4gd2UgY291bGQgd3JpdGUgYSBtZXRhLXNjaGVtYSBlbmZvcmNpbmcgdGhhdDoKCnBy
b3BlcnRpZXM6CiAgZW51bToKICAgIG1pbkl0ZW1zOiAyCgpJIGRvbid0IHRoaW5rIHdlIHNob3Vs
ZCBiZSB0aGF0IHN0cmljdCB0aG91Z2ggdW5sZXNzIGl0IGJlY29tZXMgYQpmcmVxdWVudCByZXZp
ZXcgdG9waWMuIFNvIGVpdGhlciB3YXkgaXMgZmluZSwgaXQncyB1cCB0byB5b3VyCmp1ZGdlbWVu
dCwgYW5kIGxldCdzIHN0b3AgdGFsa2luZyBhYm91dCBpdCBiZWZvcmUgSSBjaGFuZ2UgbXkgbWlu
ZC4gOikKClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
