Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0DA278E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wXVY3AeI+gupU4g1R8zuBt+T7XIttLNfF2cJssb17E=; b=c5e7YJsmpTCneK
	oUKPummRAWwrp/jgfwHJ7jKog9oVjpe2Yi2XB9Pd8fR4R6w8nWkaFSx6s3lfkboDnIhs5ZKtmxzHx
	wYYooQOcHopQZieL8hDq6YNKKbms3U0PJUugn5HZMsNlnm/6UIHtf2zbrf6lpD2Lec8A99jYUpgw5
	Xecd/R0mtzmxOGRFtw5Rt9kOXawIhezoTZq/JQ7TfNAUe5IXe7gs2Cdx0rt4j4WVv9zJE64gjBKBL
	eUVJA6mqxGU9GA70i1/+ulA3xKSbyuKlWP5ki6lihOqWDSwc5GTtiZpRgm8EAEnn4lMdkSBYnqX72
	1cGgucLKD/t8f240yVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjjZ-0005rF-1j; Thu, 23 May 2019 09:09:57 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjjN-0005gT-Vk
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:09:48 +0000
Received: by mail-qt1-x841.google.com with SMTP id a17so5853950qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 02:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZDRg3ieis6hoh/yJ9a80gOidWlG1G6Pw/YGxgRuSE94=;
 b=kA31TSrggwsJxxWDnJJPIOo3MgixNqwLlwlFlwOzYC28Qzv9rkp8BWwHIdODxR99Nt
 d7IFt6+f5xHBItXGp2Eu/3CYh18PpggLnYDWOPGEhC58NLAK8u/eOGkbZkra0hb+DjIW
 5fb8+ypRJRIiFczeHfu1xVkpxzf1gcGRUnImDzPZUWqkbSgL6KAMHL9W7a8Fu8M5DujO
 90V5srCCUOkBo351510PYMPxAxjqB4JtbYWAJ2PHaAarEBwCMnecaut6HWHq4qz/oqfM
 qo2HNtUzDfnS3OXjBi1JU+j+hPnA/OKdCeWoN/pvQm7TpUNlroxutZ/9RIUPko5fruIR
 BCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZDRg3ieis6hoh/yJ9a80gOidWlG1G6Pw/YGxgRuSE94=;
 b=OTKOF0E8TCx6wDZgercqf16jtdzZIsfKwi+fFxVq5YQRafsOLo3aQo7zn7LmHl5z9G
 woWygwr6kJzR3FSwiUiHV0ZTwXDvH1vyQC0pz1/YoJQF/BqNVqO+oT7GgOt/bYNYxJbk
 +J6+9sO1PZupcBw6CuVL/XXRXGdnF/qjRLKLowKpn8GQneLwMwEN0yM0EvFlU3Y+VptJ
 jMpZFKcdjSOR7TTQY3HCE9ddNEcCTuwl+Hkk0DVnqplRaImB8yuIpQ11bYI/veRQGVEM
 h+20Rvv+S5ao1xozQkeHWPz6eYf/asdHuxoZLm0hIFMsbTSpm3sTzeQCEau0pi5DfzXq
 Ilxg==
X-Gm-Message-State: APjAAAVnWjEmUy+v+dLCN8Vdj1kcNPFolr7GjDZMRxEyu3Jh360N/++B
 fEvIqyFppnfDZKy0APFuJyKQJ1zx8XmJb627K7iG+g==
X-Google-Smtp-Source: APXvYqzPHWai2cPVbmyi53PtZyW+rD0M2Kck+rs0vgo/buY2HBfBi20KQ1+3WaNRxJAeDdyBzyejy/NHzp/5Y2dGtco=
X-Received: by 2002:ac8:352d:: with SMTP id y42mr78662075qtb.209.1558602584218; 
 Thu, 23 May 2019 02:09:44 -0700 (PDT)
MIME-Version: 1.0
References: <1555580267-29299-1-git-send-email-fabrice.gasnier@st.com>
 <45e934af-d677-d7d4-09ea-3ed01872dab6@st.com>
In-Reply-To: <45e934af-d677-d7d4-09ea-3ed01872dab6@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 23 May 2019 11:09:33 +0200
Message-ID: <CA+M3ks5O9YpZ-4f3x=bFn_LxJu+6i3pu7jsWv_93pe14y8V71w@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 0/3] Add PM support to STM32 LP Timer drivers
To: Fabrice Gasnier <fabrice.gasnier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020946_146998_8D269669 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>, tduszyns@gmail.com,
 Mark Brown <broonie@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux PWM List <linux-pwm@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, u.kleine-koenig@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiAxMCBtYWkgMjAxOSDDoCAwOTo1MSwgRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdh
c25pZXJAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBPbiA0LzE4LzE5IDExOjM3IEFNLCBGYWJyaWNl
IEdhc25pZXIgd3JvdGU6Cj4gPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIHBvd2VyIG1hbmFnZW1l
bnQgc3VwcG9ydCBmb3IgU1RNMzIgTFAgVGltZXI6Cj4gPiAtIFBXTSBkcml2ZXIKPiA+IC0gRG9j
dW1lbnQgdGhlIHBpbmN0cmwgc3RhdGVzIGZvciBzbGVlcCBtb2RlCj4gPgo+ID4gSXQgYWxzbyBh
ZGRzIGRldmljZSBsaW5rIGJldHdlZW4gdGhlIFBXTSBjb25zdW1lciBhbmQgdGhlIFBXTSBwcm92
aWRlci4KPiA+IFRoaXMgYWxsb3dzIHByb3BlciBzZXF1ZW5jaW5nIGZvciBzdXNwZW5kL3Jlc3Vt
ZSAoZS5nLiB1c2VyIHdpbGwgbGlrZWx5Cj4gPiBkbyBhIHB3bV9kaXNhYmxlKCkgYmVmb3JlIHRo
ZSBQV00gcHJvdmlkZXIgc3VzcGVuZCBleGVjdXRlcyksIHNlZSBbMV0uCj4gPgo+ID4gWzFdIGh0
dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzIvNS83NzAKPiA+Cj4KPiBIaSBUaGllcnJ5LAo+Cj4g
UGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIHNvbWUgbW9yZSBjb21tZW50cyBvbiB0aGlz
IHNlcmllcy4gSXQncwo+IGJlZW4gdW5kZXIgcmV2aWV3IHNpbmNlIHF1aXRlIHNvbWUgdGltZSBu
b3cuCj4KCkhpIFRoaWVycnksCgpEb2VzIHNvbWV0aGluZyBpcyBibG9ja2luZyBvbiB0aGlzIHNl
cmllcyA/CkhvdyBjYW4gd2UgcHJvZ3Jlc3Mgb24gaXQgPwoKUmVnYXJkcywKQmVuamFtaW4KCj4g
VGhhbmtzIGluIGFkdmFuY2UsCj4gQmVzdCBSZWdhcmRzLAo+IEZhYnJpY2UKPgo+ID4gLS0tCj4g
PiByZXNlbmQgdjU6Cj4gPiAtIHVwZGF0ZSBjb2xsZWN0ZWQgYWNrcwo+ID4KPiA+IENoYW5nZXMg
aW4gdjU6Cj4gPiAtIGltcHJvdmUgYSB3YXJuaW5nIG1lc3NhZ2UsIGZpeCBhIHN0eWxlIGlzc3Vl
Lgo+ID4KPiA+IENoYW5nZXMgaW4gdjQ6Cj4gPiAtIGltcHJvdmUgZXJyb3IgaGFuZGxpbmcgd2hl
biBhZGRpbmcgdGhlIFBXTSBjb25zdW1lciBkZXZpY2UgbGluay4KPiA+Cj4gPiBDaGFuZ2VzIGlu
IHYzOgo+ID4gLSBNb3ZlIHRoZSBkZXZpY2VfbGlua19hZGQoKSBjYWxsIHRvIG9mX3B3bV9nZXQo
KSBhcyBkaXNjdXNzZWQgd2l0aCBVd2UuCj4gPgo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gRG9u
J3QgZGlzYWJsZSBQV00gY2hhbm5lbCBpbiBQV00gcHJvdmlkZXI6IHJhdGhlciByZWZ1c2UgdG8g
c3VzcGVuZAo+ID4gICBhbmQgcmVwb3J0IGFuIGVycm9yIGFzIHN1Z2dlc3RlZCBieSBVd2UgYW5k
IFRoaWVycnkuCj4gPiAtIEFkZCBwYXRjaCAzLzMgdG8gcHJvcG9zZSBkZXZpY2UgbGluayBhZGRp
dGlvbi4KPiA+IC0gTm8gdXBkYXRlcyBmb3IgU1RNMzIgTFAgVGltZXIgSUlPIGRyaXZlci4gUGF0
Y2hlcyBjYW4gYmUgc2VuZCBzZXBhcmF0ZWx5Lgo+ID4KPiA+IEZhYnJpY2UgR2FzbmllciAoMyk6
Cj4gPiAgIGR0LWJpbmRpbmdzOiBwd20tc3RtMzItbHA6IGRvY3VtZW50IHBpbmN0cmwgc2xlZXAg
c3RhdGUKPiA+ICAgcHdtOiBzdG0zMi1scDogQWRkIHBvd2VyIG1hbmFnZW1lbnQgc3VwcG9ydAo+
ID4gICBwd206IGNvcmU6IGFkZCBjb25zdW1lciBkZXZpY2UgbGluawo+ID4KPiA+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9wd20vcHdtLXN0bTMyLWxwLnR4dCAgICAgICB8ICA5ICsrLS0KPiA+
ICBkcml2ZXJzL3B3bS9jb3JlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDUw
ICsrKysrKysrKysrKysrKysrKysrLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tc3RtMzItbHAuYyAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDI1ICsrKysrKysrKysrCj4gPiAgaW5jbHVkZS9saW51
eC9wd20uaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNiArKy0KPiA+ICA0IGZp
bGVzIGNoYW5nZWQsIDgyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gPgo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
