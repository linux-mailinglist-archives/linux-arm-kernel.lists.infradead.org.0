Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6971DFB64
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 00:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EmJa4nioCj7wMtA6pLVu9p8T50djwbAOcnpcJr/QhM=; b=dyOSYvK9JCuEsK
	NVZVTObfID4zFvo4LiRE8IJPjLt8AdiWFVQwDyAOPp1jVh8j+ITHALy9A/AdiLc6RhuDZ1HuTxq2l
	VvBrmobCoul0+4fTYRvmS/pLT3pXiS7+3Qo7dhUciqUxU2CY4k2cgYM8zTs1bM6ugWxyAQN1qTJ4K
	EXPYNN0SZNu1PpRvMZ2RXQqS37qLGYpfYHw91xW4JN5Pdr0PSSnQNUjMct3GElc+klEG+MC9xXrId
	44683asFTtpoDgB1d5LnfD/EGdTYgB311CMT7smICV8NqvWZA8uOWUeK5jdwiOAxxPpKlvKE8agux
	kBHCzJ0QId/Oh7GMy3kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jccof-000172-50; Sat, 23 May 2020 22:40:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jccoW-00016C-AD
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 22:40:21 +0000
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80AF020825
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 22:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590273616;
 bh=PeI+WYnPsD7w0jwv2k/jUh8n9+ukJb90e5rZ9yP2Czs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nnFvQEzMjolV/IawZclz6nakDTmydTSeo6A2kSbIydHNLPJzHOxOVzdMcM5jbI6rf
 yf/mHWw3195y/yc0HNvl16CBQKyAE3PWGvSZ/MEofZ8cmd/7UlpVEqScL9DsSOf6EB
 mIHvvhAFHZTo7YDZEYjYOvoMFVu4XxIvq/x8lIS4=
Received: by mail-io1-f44.google.com with SMTP id c16so15322482iol.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 15:40:16 -0700 (PDT)
X-Gm-Message-State: AOAM532qatVRnqFff4vR9JtpHuFqsLMw9uI5ARPIl7TwnfgVDm9G/tno
 ICFA2tsANoy3XtBjvz0F8vfSH8qWsreyAjTzMkc=
X-Google-Smtp-Source: ABdhPJyzVeU86GlVacAqa4xWM29EOFA4kXo723B/Wa5Uqrdl2aeZl3OjnwdRlS1pf+ifI+wzJWGqXW+iymYOfxhzfgY=
X-Received: by 2002:a6b:5008:: with SMTP id e8mr8369503iob.161.1590273615918; 
 Sat, 23 May 2020 15:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <CAOtvUMc8PhToLDVO+Y4NVhVkA6B7yndp3gbaeaQZJtrW_NSzaw@mail.gmail.com>
 <CAMj1kXFJJcg-YeSw+_FDfyOvjQTJ6w1YyKqWaxCWSjDhRLEDoA@mail.gmail.com>
 <9730423.nUPlyArG6x@positron.chronox.de>
In-Reply-To: <9730423.nUPlyArG6x@positron.chronox.de>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sun, 24 May 2020 00:40:04 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG2SuWWyAkinAumW=uBVSdg6BUX0zVPWDX1pnxVW8RusA@mail.gmail.com>
Message-ID: <CAMj1kXG2SuWWyAkinAumW=uBVSdg6BUX0zVPWDX1pnxVW8RusA@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: =?UTF-8?Q?Stephan_M=C3=BCller?= <smueller@chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_154020_395520_B7E76C99 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@kernel.org>, Gilad Ben-Yossef <gilad@benyossef.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAyMyBNYXkgMjAyMCBhdCAyMDo1MiwgU3RlcGhhbiBNw7xsbGVyIDxzbXVlbGxlckBj
aHJvbm94LmRlPiB3cm90ZToKPgo+IEFtIERvbm5lcnN0YWcsIDIxLiBNYWkgMjAyMCwgMTU6MjM6
NDEgQ0VTVCBzY2hyaWViIEFyZCBCaWVzaGV1dmVsOgo+Cj4gSGkgQXJkLAo+Cj4gPiBPbiBUaHUs
IDIxIE1heSAyMDIwIGF0IDE1OjAxLCBHaWxhZCBCZW4tWW9zc2VmIDxnaWxhZEBiZW55b3NzZWYu
Y29tPiB3cm90ZToKPiA+ID4gSGkgQXJkLAo+ID4gPgo+ID4gPiBUaGFuayB5b3UgZm9yIGxvb3Bp
bmcgbWUgaW4uCj4gPiA+Cj4gPiA+IE9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDEwOjA5IEFNIEFy
ZCBCaWVzaGV1dmVsIDxhcmRiQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+IE9uIFdlZCwgMjAg
TWF5IDIwMjAgYXQgMDk6MDEsIFN0ZXBoYW4gTXVlbGxlciA8c211ZWxsZXJAY2hyb25veC5kZT4K
PiB3cm90ZToKPiA+ID4gPiA+IEFtIE1pdHR3b2NoLCAyMC4gTWFpIDIwMjAsIDA4OjU0OjEwIENF
U1Qgc2NocmllYiBBcmQgQmllc2hldXZlbDoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIaSBBcmQsCj4g
PiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBXZWQsIDIwIE1heSAyMDIwIGF0IDA4OjQ3LCBTdGVwaGFu
IE11ZWxsZXIgPHNtdWVsbGVyQGNocm9ub3guZGU+Cj4gd3JvdGU6Cj4gPiA+ID4gLi4uCj4gPiA+
ID4KPiA+ID4gPiA+ID4gPiBUaGUgc3RhdGUgb2YgYWxsIGJsb2NrIGNoYWluaW5nIG1vZGVzIHdl
IGN1cnJlbnRseSBoYXZlIGlzIGRlZmluZWQKPiA+ID4gPiA+ID4gPiB3aXRoCj4gPiA+ID4gPiA+
ID4gdGhlCj4gPiA+ID4gPiA+ID4gSVYuIFRoYXQgaXMgdGhlIHJlYXNvbiB3aHkgSSBtZW50aW9u
ZWQgaXQgY2FuIGJlIGltcGxlbWVudGVkCj4gPiA+ID4gPiA+ID4gc3RhdGVsZXNzCj4gPiA+ID4g
PiA+ID4gd2hlbiBJIGFtIGFibGUgdG8gZ2V0IHRoZSBJViBvdXRwdXQgZnJvbSB0aGUgcHJldmlv
dXMgb3BlcmF0aW9uLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBCdXQgaXQgaXMgc2ltcGx5IHRo
ZSBzYW1lIGFzIHRoZSBwZW51bHRpbWF0ZSBibG9jayBvZiBjaXBoZXJ0ZXh0LiBTbwo+ID4gPiA+
ID4gPiB5b3UgY2FuIHNpbXBseSBjYXB0dXJlIGl0IGFmdGVyIGVuY3J5cHQsIG9yIGJlZm9yZSBk
ZWNyeXB0LiBUaGVyZSBpcwo+ID4gPiA+ID4gPiByZWFsbHkgbm8gbmVlZCB0byByZWx5IG9uIHRo
ZSBDVFMgdHJhbnNmb3JtYXRpb24gdG8gcGFzcyBpdCBiYWNrIHRvCj4gPiA+ID4gPiA+IHlvdSB2
aWEgdGhlIGJ1ZmZlciB0aGF0IGlzIG9ubHkgc3BlY2lmaWVkIHRvIHByb3ZpZGUgYW4gaW5wdXQg
dG8gdGhlCj4gPiA+ID4gPiA+IENUUyB0cmFuc2Zvcm0uCj4gPiA+ID4gPgo+ID4gPiA+ID4gTGV0
IG1lIHJlY2hlY2sgdGhhdCBhcyBJIGFtIG5vdCBmdWxseSBzdXJlIG9uIHRoYXQgb25lLiBCdXQg
aWYgaXQgY2FuCj4gPiA+ID4gPiBiZQo+ID4gPiA+ID4gaGFuZGxlZCB0aGF0IHdheSwgaXQgd291
bGQgbWFrZSBsaWZlIGVhc2llci4KPiA+ID4gPgo+ID4gPiA+IFBsZWFzZSByZWZlciB0byBwYXRj
aCAyLiBUaGUgLml2X291dCB0ZXN0IHZlY3RvcnMgd2VyZSBhbGwgc2ltcGx5Cj4gPiA+ID4gY29w
aWVkIGZyb20gdGhlIGFwcHJvcHJpYXRlIG9mZnNldCBpbnRvIHRoZSBhc3NvY2lhdGVkIC5jdGV4
dCBtZW1iZXIuCj4gPiA+Cj4gPiA+IE5vdCBzdXJwcmlzaW5nbHkgc2luY2UgdG8gdGhlIGJlc3Qg
b2YgbXkgdW5kZXJzdGFuZGluZyB0aGlzIGJlaGF2aW91cgo+ID4gPiBpcyBub3Qgc3RyaWN0bHkg
c3BlY2lmaWVkLCBjY3JlZSBjdXJyZW50bHkgZmFpbHMgdGhlIElWIG91dHB1dCBjaGVjawo+ID4g
PiB3aXRoIHRoZSAybmQgdmVyc2lvbiBvZiB0aGUgcGF0Y2guCj4gPgo+ID4gVGhhdCBpcyB3aGF0
IEkgc3VzcGVjdGVkLCBoZW5jZSB0aGUgY2M6Cj4gPiA+IElmIEkgdW5kZXJzdGFuZCB5b3UgY29y
cmVjdGx5LCB0aGUgZXhwZWN0ZWQgb3V0cHV0IElWIGlzIHNpbXBseSB0aGUKPiA+ID4gbmV4dCB0
byBsYXN0IGJsb2NrIG9mIHRoZSBjaXBoZXJ0ZXh0Pwo+ID4KPiA+IFllcy4gQnV0IHRoaXMgaGFw
cGVucyB0byB3b3JrIGZvciB0aGUgZ2VuZXJpYyBjYXNlIGJlY2F1c2UgdGhlIENUUwo+ID4gZHJp
dmVyIGl0c2VsZiByZXF1aXJlcyB0aGUgZW5jYXBzdWxhdGVkIENCQyBtb2RlIHRvIHJldHVybiB0
aGUgb3V0cHV0Cj4gPiBJViwgd2hpY2ggaXMgc2ltcGx5IHBhc3NlZCB0aHJvdWdoIGJhY2sgdG8g
dGhlIGNhbGxlci4gQ1RTIG1vZGUgaXRzZWxmCj4gPiBkb2VzIG5vdCBzcGVjaWZ5IGFueSBraW5k
IG9mIG91dHB1dCBJViwgc28gd2Ugc2hvdWxkIG5vdCByZWx5IG9uIHRoaXMKPiA+IGJlaGF2aW9y
Lgo+Cj4gTm90ZSwgdGhlIHVwZGF0ZSB0byB0aGUgc3BlYyBiYXNlZCBvbiB5b3VyIHN1Z2dlc3Rp
b24gaXMgYWxyZWFkeSBpbiBhIG1lcmdlCj4gcmVxdWVzdDoKPgo+IGh0dHBzOi8vZ2l0aHViLmNv
bS91c25pc3Rnb3YvQUNWUC9pc3N1ZXMvODYwCj4KPiBUaGFua3MgZm9yIHlvdXIgaW5wdXQuCj4K
ClRoYW5rcyBmb3IgdGhlIGhlYWQncyB1cC4gSSd2ZSBsZWZ0IGEgY29tbWVudCB0aGVyZSwgYXMg
dGhlIHByb3Bvc2VkCmNoYW5nZSBpcyBub3QgZXF1aXZhbGVudCB0byB0aGUgdW5zcGVjaWZpZWQg
Y3VycmVudCBiZWhhdmlvci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
