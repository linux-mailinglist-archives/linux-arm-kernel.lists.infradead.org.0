Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1557767E78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 12:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooQMqMju8/XovXwkZozY3Se5v3yMjlP/GUhNKAJT9Zs=; b=fZd1ZeFOm/NGL5
	iujjSXGebzlIfYd8COOzsn5qSwPCEi9TOgJ3IiUsEHl08CCaNT/5Y+5hLtMGYZ5gzt1u0Q0rIm2Cn
	sH3OZ6go/0aRiusPpnQmsWlapAF2lOMkMzMZOzgMO2k7ZOpu8ysu3KyKK8zOhV8QO9HU9HjKKxw0T
	XK/i0zkTwhEH7to662qMojYj2YKoSnu2RNVcFdfUlnm+R0Cdm+oW1v+xishvJW3zvISeV1EZsNvDM
	vFAewX4TCoalxiAxqG/QifXpdRb1A0CExdHg42iJ0P2Koi1JlSfMKS93vbrTDDcMdBcYxgaKZwlNY
	JIa9gmtvuRkPYikbZYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmbRj-0007HQ-8v; Sun, 14 Jul 2019 10:09:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmbRL-0007Gz-GW
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 10:09:08 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72AEA20838;
 Sun, 14 Jul 2019 10:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563098946;
 bh=Yc6A1cGAFiY0v3G2IKWiF9mvk1/HlO1sJcd6V4N1RLw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZDxY3BZOCdUdALgKCB7dBFPWLfaNlyx1FB5VCelksB9alIU6P3TV62dLIed2S0tlT
 ve2lgBis3EJnUiaZ/rkU3FnfKX/xnpA7oZHs+IpX6Bfm+n0LiLQKGMrC1VAdO0ilGi
 twjFVTSheEUNKMg7GCzp5m6bPbumKhpSSSo7P8ok=
Date: Sun, 14 Jul 2019 11:09:01 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190714110901.752643ae@archlinux>
In-Reply-To: <20190711121620.GA11661@icarus>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190711115059.GA7778@icarus>
 <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
 <20190711121620.GA11661@icarus>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_030907_569477_417B28C1 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-iio@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMSBKdWwgMjAxOSAyMToxNjoyMCArMDkwMApXaWxsaWFtIEJyZWF0aGl0dCBHcmF5
IDx2aWxoZWxtLmdyYXlAZ21haWwuY29tPiB3cm90ZToKCj4gT24gVGh1LCBKdWwgMTEsIDIwMTkg
YXQgMDI6MTI6MjdQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBMZSBqZXUu
IDExIGp1aWwuIDIwMTkgw6AgMTM6NTEsIFdpbGxpYW0gQnJlYXRoaXR0IEdyYXkKPiA+IDx2aWxo
ZWxtLmdyYXlAZ21haWwuY29tPiBhIMOpY3JpdCA6ICAKPiA+ID4KPiA+ID4gT24gVHVlLCBNYXkg
MDcsIDIwMTkgYXQgMTE6MTI6MjRBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6ICAK
PiA+ID4gPiBRdWFkcmF0dXJlIGZlYXR1cmUgaXMgbm93IGhvc3RlZCBvbiBpdCBvd24gZnJhbWV3
b3JrLgo+ID4gPiA+IFJlbW92ZSBxdWFkcmF0dXJlIHJlbGF0ZWQgY29kZSBmcm9tIHN0bTMyLXRy
aWdnZXIgZHJpdmVyIHRvIGF2b2lkCj4gPiA+ID4gY29kZSBkdXBsaWNhdGlvbiBhbmQgc2ltcGxp
ZnkgdGhlIEFCSS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+ICAKPiA+ID4KPiA+ID4gV2hhdCBpcyB0aGUg
c3RhdHVzIG9mIHRoaXMgcGF0Y2g/IEFyZSB0aGVyZSBhbnkgb2JqZWN0aW9ucyBjdXJyZW50bHkg
Zm9yCj4gPiA+IGl0cyBpbmNsdXNpb24/ICAKPiA+IAo+ID4gWW91IHdlcmUgdGhlIG9ubHkgb25l
IGFza2luZyBmb3IgbW9yZSBkZXRhaWxzIGFib3V0IGl0IDotKQo+ID4gSWYgeW91IGFncmVlIEkg
dGhpbmsgdGhhdCBKb25hdGhhbiBjYW4gbWVyZ2UgaXQuCj4gPiAKPiA+IEJlbmphbWluICAKPiA+
ID4KPiA+ID4gV2lsbGlhbSBCcmVhdGhpdHQgR3JheQo+ID4gPgo+ID4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsICAKPiAKPiBZZXMsIEpvbmF0aGFuIHBsZWFzZSBtZXJnZSB0aGlzIGlmIHlvdSBo
YXZlIG5vIG9iamVjdGlvbnMsIEkgaGFkbid0Cj4gcmVhbGl6ZWQgSSB3YXMgZGVsYXlpbmcgaXQu
Cj4gCj4gVGhhbmsgeW91LAo+IAo+IFdpbGxpYW0gQnJlYXRoaXR0IEdyYXkKT25lIGxhc3QgdGhp
bmcuLi4gIFRoaXMgc2VlbXMgdG8gYmUgYSB1c2Vyc3BhY2UgQUJJIGNoYW5nZS4gIFdoYXQKYXJl
IG91ciBwb3RlbnRpYWwgaXNzdWVzIHdpdGggdXNlcnMgb2YgdGhpcyBBQkk/CgpJdCdzIG5vdCB0
aGF0IGNvc3RseSB0byBrZWVwIHRoZSBjb2RlLCB0aG91Z2ggZHJvcHBpbmcgdGhlIGRvY3Mgb3IK
cHV0dGluZyBhIGRlcHJlY2lhdGVkIG5vdGUgaW4gdGhlbSBpcyBwcm9iYWJseSBhIGdvb2QgaWRl
YS4gIEhlbmNlCkknbSBub3QgdG90YWxseSBjb252aW5jZWQgdGhlIHJpc2sgb2YgYSByZWdyZXNz
aW9uIGlzIHdvcnRoIGl0LgoKSWYgd2UgdGhpbmsgaXQncyB0aGUgc29ydCBvZiBjaGFuZ2Ugbm8g
b25lIHdpbGwgbm90aWNlLCB0aGVuCmZhaXIgZW5vdWdoIHdlJ2xsIGdpdmUgaXQgYSBnbyBhbmQg
Y3Jvc3Mgb3VyIGZpbmdlcnMuCgpUaGFua3MsCgpKb25hdGhhbgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
