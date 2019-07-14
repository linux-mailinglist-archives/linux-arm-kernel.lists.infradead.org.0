Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D268079
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 19:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0oaFUQ+wvMlOvg6u6i0iKkTZ8CwYU/cuYJUy0i5Tvk=; b=RnBwPlWpwRhPKi
	qWOpZ4lrkw3H4zgJryCXcsFVsW1BN0Yuk4t5Ui9C9hCwwgCMuTCsEZx4gKjGii8+zz0jqy/qU3hY7
	ADRY3l+ohOZWOE+i9FHiUL1nC9aTilpCBajOPF0Ei3zi9TRq27zV1Ys7nBLbSM/anOMFKw/8vhUrC
	mPnYtyun5EvIuHq+Z3INwSSe1UvtobeDUJnX97HXkJRRD3o1CSiI5JwnMcsXYIz7pZxN8EjVjATui
	Ef8f5kNRLEIDCat/9rDvaPBhgKjPJpbPwC3sH+NRRmcvswO6g/KoMOhubRFLiICMS1Qi39Q5Z5H8w
	uQiPlOb/zisBXM8fvqdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmiDs-0007yb-PY; Sun, 14 Jul 2019 17:23:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmiDW-0007xl-N4
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 17:23:20 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 763CF2063F;
 Sun, 14 Jul 2019 17:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563124996;
 bh=GsHSvqL6z/sCzYKnP0NDpupg8hBjmVrWg62QPwDln0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fWtta0StSeOZebigeRXdyHpnP9KgOGqhcNbtnzlbuWqGkRfVA4q6+XtVo9KKz5TUA
 FH9gXNEbilo9DzXlg3SHw5lAL9ZQTlQW02V6ZaFzv1tq5Zr2mMpoSS0rn+yr1BuoMd
 MLP+pa/sBEHbo/YGn5B4Z8qPKCO2fNDILAV0luw0=
Date: Sun, 14 Jul 2019 18:23:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Message-ID: <20190714182307.71df9b00@archlinux>
In-Reply-To: <08b3f84e-cee4-4fbe-031d-721aa9dc53d4@st.com>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190711115059.GA7778@icarus>
 <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
 <20190711121620.GA11661@icarus> <20190714110901.752643ae@archlinux>
 <08b3f84e-cee4-4fbe-031d-721aa9dc53d4@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_102318_784296_2C9B7A23 
X-CRM114-Status: GOOD (  19.39  )
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
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNCBKdWwgMjAxOSAxNTozMjozMyArMDAwMApCZW5qYW1pbiBHQUlHTkFSRCA8YmVu
amFtaW4uZ2FpZ25hcmRAc3QuY29tPiB3cm90ZToKCj4gT24gNy8xNC8xOSAxMjowOSBQTSwgSm9u
YXRoYW4gQ2FtZXJvbiB3cm90ZToKPiA+IE9uIFRodSwgMTEgSnVsIDIwMTkgMjE6MTY6MjAgKzA5
MDAKPiA+IFdpbGxpYW0gQnJlYXRoaXR0IEdyYXkgPHZpbGhlbG0uZ3JheUBnbWFpbC5jb20+IHdy
b3RlOgo+ID4gIAo+ID4+IE9uIFRodSwgSnVsIDExLCAyMDE5IGF0IDAyOjEyOjI3UE0gKzAyMDAs
IEJlbmphbWluIEdhaWduYXJkIHdyb3RlOiAgCj4gPj4+IExlIGpldS4gMTEganVpbC4gMjAxOSDD
oCAxMzo1MSwgV2lsbGlhbSBCcmVhdGhpdHQgR3JheQo+ID4+PiA8dmlsaGVsbS5ncmF5QGdtYWls
LmNvbT4gYSDDqWNyaXQgOiAgCj4gPj4+PiBPbiBUdWUsIE1heSAwNywgMjAxOSBhdCAxMToxMjoy
NEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZTogIAo+ID4+Pj4+IFF1YWRyYXR1cmUg
ZmVhdHVyZSBpcyBub3cgaG9zdGVkIG9uIGl0IG93biBmcmFtZXdvcmsuCj4gPj4+Pj4gUmVtb3Zl
IHF1YWRyYXR1cmUgcmVsYXRlZCBjb2RlIGZyb20gc3RtMzItdHJpZ2dlciBkcml2ZXIgdG8gYXZv
aWQKPiA+Pj4+PiBjb2RlIGR1cGxpY2F0aW9uIGFuZCBzaW1wbGlmeSB0aGUgQUJJLgo+ID4+Pj4+
Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWdu
YXJkQHN0LmNvbT4gIAo+ID4+Pj4gV2hhdCBpcyB0aGUgc3RhdHVzIG9mIHRoaXMgcGF0Y2g/IEFy
ZSB0aGVyZSBhbnkgb2JqZWN0aW9ucyBjdXJyZW50bHkgZm9yCj4gPj4+PiBpdHMgaW5jbHVzaW9u
PyAgCj4gPj4+IFlvdSB3ZXJlIHRoZSBvbmx5IG9uZSBhc2tpbmcgZm9yIG1vcmUgZGV0YWlscyBh
Ym91dCBpdCA6LSkKPiA+Pj4gSWYgeW91IGFncmVlIEkgdGhpbmsgdGhhdCBKb25hdGhhbiBjYW4g
bWVyZ2UgaXQuCj4gPj4+Cj4gPj4+IEJlbmphbWluICAKPiA+Pj4+IFdpbGxpYW0gQnJlYXRoaXR0
IEdyYXkKPiA+Pj4+Cj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4+Pj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+Pj4+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4+Pj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsICAKPiA+PiBZZXMs
IEpvbmF0aGFuIHBsZWFzZSBtZXJnZSB0aGlzIGlmIHlvdSBoYXZlIG5vIG9iamVjdGlvbnMsIEkg
aGFkbid0Cj4gPj4gcmVhbGl6ZWQgSSB3YXMgZGVsYXlpbmcgaXQuCj4gPj4KPiA+PiBUaGFuayB5
b3UsCj4gPj4KPiA+PiBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5ICAKPiA+IE9uZSBsYXN0IHRoaW5n
Li4uICBUaGlzIHNlZW1zIHRvIGJlIGEgdXNlcnNwYWNlIEFCSSBjaGFuZ2UuICBXaGF0Cj4gPiBh
cmUgb3VyIHBvdGVudGlhbCBpc3N1ZXMgd2l0aCB1c2VycyBvZiB0aGlzIEFCST8KPiA+Cj4gPiBJ
dCdzIG5vdCB0aGF0IGNvc3RseSB0byBrZWVwIHRoZSBjb2RlLCB0aG91Z2ggZHJvcHBpbmcgdGhl
IGRvY3Mgb3IKPiA+IHB1dHRpbmcgYSBkZXByZWNpYXRlZCBub3RlIGluIHRoZW0gaXMgcHJvYmFi
bHkgYSBnb29kIGlkZWEuICBIZW5jZQo+ID4gSSdtIG5vdCB0b3RhbGx5IGNvbnZpbmNlZCB0aGUg
cmlzayBvZiBhIHJlZ3Jlc3Npb24gaXMgd29ydGggaXQuICAKPiAKPiBBcyBmYXIgSSBrbm93IG5v
Ym9keSB1c2UgdGhpcyBpbnRlcmZhY2UgeWV0IGZvciBtZSB0aGVyZSBpcyBubyByaXNrIHRvIAo+
IHJlbW92ZSB0aGlzIGNvZGUuCj4gCj4gQmVuamFtaW4KSG9wZSB5b3UgYXJlIHJpZ2h0IDopCgpB
cHBsaWVkIHRvIHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlpby5naXQgYW5kIHB1c2hlZCBvdXQgYXMg
dGVzdGluZyBmb3IKdGhlIGF1dG9idWlsZGVycyB0byBwbGF5IHdpdGggaXQuCgpUaGFua3MsCgpK
b25hdGhhbgoKPiAKPiA+Cj4gPiBJZiB3ZSB0aGluayBpdCdzIHRoZSBzb3J0IG9mIGNoYW5nZSBu
byBvbmUgd2lsbCBub3RpY2UsIHRoZW4KPiA+IGZhaXIgZW5vdWdoIHdlJ2xsIGdpdmUgaXQgYSBn
byBhbmQgY3Jvc3Mgb3VyIGZpbmdlcnMuCj4gPgo+ID4gVGhhbmtzLAo+ID4KPiA+IEpvbmF0aGFu
Cj4gPgo+ICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
