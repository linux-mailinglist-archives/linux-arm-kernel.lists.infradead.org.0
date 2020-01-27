Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78FA14AA35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 20:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWCYP/331tcr8xsevZ39u8Yi2TcD8jdIPVkxsC4aGok=; b=DhRl686x0uDbGS
	EiOgMUX0qbDkJlH2YO436t0CPfpT58cI6rmz2srEKb+vsI+tOWY5UpiAZsv9ti9pq/8B9lW7u+G7o
	kb2vvONOs4mE9MGJVK0V4sRGyy6JfR0cxIpQirb3qXVsZ1ubQLIRPEezBKrkaaTrJ/73t3x+4WOmW
	dLjq6N2D69RGR8BuAyM5yBy8qtlO4nSAF1fLEWkZTBHPtk15TjGsbrDsZ3JMHDp87672DHRV4Ehl2
	AmXrWaba1ywZYwjWMQuwTWRXNa3EMfoldB8YZoSLr4Y6nM986I3DL+lIANpsJoEfdAvAx7N2v4Dem
	RSnT9TZgu8MjMSBIjfPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9gJ-0000ke-Sc; Mon, 27 Jan 2020 19:04:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9g8-0000kI-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 19:04:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so8233387wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 11:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FEVoEiqONVVEfRgrb4jYFHNXvstm/3IJLIBoszrG8E8=;
 b=mCrKmB53Tc8iXS9VK6XdMGjA634XC/YrxWJI6kWx0EyRC3mlIiDUWG0YtTtscfrhJl
 HWXf5VzTITxzN1RDZ2YtEyqd3Jxvn4x7x3t9+YLslM8g6RyE1qZbIYtEfJBq2ifYlUOL
 cdhoOJuEYhdch6nOdg6OGGgvTU/DTaFZpkPydtvo0isqqYZCVwZop87i/3QM/WWtKNbq
 mTsVDJTdvECQiEV/o4uiktCZVYa420zzZqrIDRP2PyAmL/+RBo3vXuBwqYhfthZ3pkMo
 0TQ42M/jgrUCTPE9KJxjUj2X0LDA36ji0T9B0veXAckKtrpmj8ixlViguUqRueyno0VG
 j5XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FEVoEiqONVVEfRgrb4jYFHNXvstm/3IJLIBoszrG8E8=;
 b=EPG5XFVdSsalDgZhPvhhxA1xu+igEAJ/0epVpwcL7SAp4WuBat8lTjpwJl7w3Yodzo
 ATNh4SYSn3Z/B/hLtreeacMG3HlIaHhbn3lb6b0fU1pl/39TXhOTyzh1vRPkJIB8MmjL
 UuGPbVc7ip+nEH90tzpDlrOZQMe2kWNB8DLDcmnWdukPeG0UylcYSzDywhADvohdl78j
 6RLUQp4edJvfgnXD2cZBeexR5oHl9xPju4/QbYy2u5WHyTefD0Y2BC08LgjT0/AYtDq3
 jdsa2IMERXY4mytqbku7qIiOpN5kzpG1Vh1yAXc6cY2FY2JGOkToy5RcKd3ZANjCVM1o
 Vueg==
X-Gm-Message-State: APjAAAXy9Qx9I6SQnOLC6EQXx5usqPXF3GSWD7X9XDx20a2dMEh6Rrrz
 D3KBpgCx21zF+qhXEtk00dI=
X-Google-Smtp-Source: APXvYqz2IG4netFWL6hQ+QROxWQ2m1AXRn8u0EXsRRZIHAxWXGl4qEsNsa1ggsEuZ+frMCNqLyEHcA==
X-Received: by 2002:a1c:a515:: with SMTP id o21mr81724wme.85.1580151845654;
 Mon, 27 Jan 2020 11:04:05 -0800 (PST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id i8sm22085691wro.47.2020.01.27.11.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 11:04:04 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
Date: Mon, 27 Jan 2020 20:04:02 +0100
Message-ID: <2140600.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20200127142339.crxsuunzec5drfe2@gilmour.lan>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <5320339.DvuYhMxLoT@jernej-laptop>
 <20200127142339.crxsuunzec5drfe2@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_110408_311106_CA76346A 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgcG9uZWRlbGplaywgMjcuIGphbnVhciAyMDIwIG9iIDE1OjIzOjM5IENFVCBqZSBN
YXhpbWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4gSGkgSmVybmVqLAo+IAo+IE9uIEZyaSwgSmFuIDI0
LCAyMDIwIGF0IDA5OjU0OjIzUE0gKzAxMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERu
ZSBzcmVkYSwgMjIuIGphbnVhciAyMDIwIG9iIDEzOjQ0OjA5IENFVCBqZSBNYXhpbWUgUmlwYXJk
IG5hcGlzYWwoYSk6Cj4gPiA+IE5vdyB0aGF0IHdlIGhhdmUgYSBkcml2ZXIgZm9yIHRoZSBJT01N
VSwgbGV0J3Mgc3RhcnQgdXNpbmcgaXQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXhp
bWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8udGVjaD4KPiA+ID4gLS0tCj4gPiA+IAo+ID4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxMSArKysrKysrKysr
Kwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+
ID4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGluZGV4
Cj4gPiA+IDI5ODI0MDgxYjQzYi4uODYwOGJjZjFjNTJjIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gPiBAQCAtNTMsNiAr
NTMsNyBAQAo+ID4gPiAKPiA+ID4gIAlkZTogZGlzcGxheS1lbmdpbmUgewo+ID4gPiAgCQo+ID4g
PiAgCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtZGlzcGxheS1lbmdpbmUiOwo+
ID4gPiAgCQlhbGx3aW5uZXIscGlwZWxpbmVzID0gPCZtaXhlcjA+Owo+ID4gPiAKPiA+ID4gKwkJ
aW9tbXVzID0gPCZpb21tdSAwPjsKPiA+ID4gCj4gPiA+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4gPiA+ICAJCj4gPiA+ICAJfTsKPiA+IAo+ID4gSXNuJ3QgaW9tbXUgcHJvcGVydHkgb2YgdGhl
IG1peGVyIG5vZGU/IEFmdGVyIGFsbCwgbWl4ZXIgaXMgdGhlIG9uZSB3aGljaAo+ID4gcmVhZHMg
b25lIG9yIG1vcmUgZnJhbWVidWZmZXJzLiBPbmNlIHNlY29uZCBtaXhlciBpcyBkZWZpbmVkLCB3
b3VsZCB5b3UKPiA+IHB1dAo+ID4gYW5vdGhlciBpb21tdSBwaGFuZGxlIGhlcmU/Cj4gCj4gWW91
J3JlIHJpZ2h0LiBJIGFkZGVkIGl0IGR1cmluZyB0aGUgZWFybHkgZGV2LCBhbmQgZm9yZ290IHRv
IHJlbW92ZQo+IGl0LiBUaGFua3MhCgpSZW1vdmUgaXQgb3IgbW92ZSBpdD8gSSBndWVzcyBlbmFi
bGluZyBpb21tdSBzdXBwb3J0IGluIGVhY2ggZHJpdmVyIG5lZWRzIGEgCmJpdCBtb3JlIHdvcmsg
dGhhbiBqdXN0IHJlZmVyZW5jaW5nIGlvbW11IG5vZGUsIHJpZ2h0PyBBdCBsZWFzdCBpbiBzdWNo
IGNhc2UgCmJ1ZmZlcnMgZG9uJ3QgbmVlZCB0byBiZSBhbGxvY2F0ZWQgYnkgQ01BLCB3aGljaCBz
dW40aS1kcm0gZHJpdmVyIGN1cnJlbnRseSAKdXNlLgoKSSBqdXN0IHRha2UgYW5vdGhlciBsb29r
IGF0IEJTUCBrZXJuZWwgYW5kIGl0IHNlZW1zIHRoYXQgb25seSBvbmUgY2hhbm5lbCBpcyAKdXNl
ZCBmb3Igd2hvbGUgZGlzcGxheSBzdGFjay4gVGhhdCB3b3VsZCBtZWFuIHRoYXQgYm90aCBtaXhl
cnMgd291bGQgaGF2ZSBzYW1lIAppb21tdSBwaGFuZGxlLCByaWdodD8gQ29uZnVzaW5nbHkgZW5v
dWdoLCBERTIgaW9tbXUgY2hhbm5lbCBzZWVtcyB0byBiZSBmb3IgCmRlaW50ZXJsYWNlIGNvcmUu
CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
