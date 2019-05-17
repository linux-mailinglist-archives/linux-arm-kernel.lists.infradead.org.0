Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B262216D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UddgqdbPQ1nfqo7I5Hk8EVWmZ6/TdC6d5A1/Y5nA4a0=; b=mUzhCBtSfRx4bJ
	CzAp6iy6pg5HD1EoJj1ucnWDHbw68qR7BcF0Rpvos4MvrgtZyVorN/pLhOuas2TAMM6wVRYCuJwhz
	XGXbh6YE2XO/7WsEEttATI5Avu6seA3rtqXE1cFIFyYzfw9h16LA1UkISmLQBPUnbz4MZZ8mwK11q
	96YOrrK5Fwpy6RQjQDJRDXcY6iYLoAx5Ubaf0uE3v4OL/2QWK2lCSXK2YY25xLg7FeR9LsmfnfcUB
	VLW9jp0sZFMP5ndEEa1H14MVEp1LrY1cUlY3mCwzUJkHMCFVSOvo/3OBqf8sZqxLfpAYrzmKBscvn
	ubrasKFPal93NOaGn2dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZsZ-0001wr-Vu; Fri, 17 May 2019 10:14:20 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZsT-0001vk-D5
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:14:14 +0000
Received: by mail-qt1-x843.google.com with SMTP id k24so7318211qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 03:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zJAY/Pv8Q8rCNwC0Vbgeg982L/4wPTYgnNPmTbKhmDg=;
 b=iomWStGl4iQbx8eysPjAozeB43WumfOwhPB77ZRRDGP/507Zl7PX1Gq7HJ1rJ9Eqlb
 HVJX7hCf6FtmuB82mMUTRb8z4gsMdsm94Bbwk5jKY74u28in3UC3C09azGNKeHNLNEdx
 Se7hyfP11juO1tqPdhboIE+k9wGUduPUC10mzjhJNBokCoUG/NZQhuCkGfOpdUziIQQQ
 XKiTGp25+uJ4xLUhWMDsE+fLqb+x/gbwNLg5CIT7WmhGSPIyHAFycNQ7EzPClNwB7Qwl
 BDtPhmPCodYbrRNYKxnLv7c06tdvUwlx5lKIbVBmg89br/GeOX+lAuwsbf8kxt8W01sd
 gZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zJAY/Pv8Q8rCNwC0Vbgeg982L/4wPTYgnNPmTbKhmDg=;
 b=tvRS3pf92Gzw/lnklyl1PKzpqcSI2seLmJjrkAqtakb6O3GSMNhNajNDQQFvi0R0gt
 4YmKSyb0HEHlZ5ivjJPdGRlj8zjzSArBNHrOltBKEZwo+cKzKj8PYhSU8f5mvQky9rTE
 t9pUbA8m9rSakF+6ob1V5TobfenbsZOzViNCeFo8SnZOCWU9QOfUpoGTsmKxGUWhxaGo
 PinUsmGaXiBXxzyZtL3sZ0KiF5MFDQ7t8YztO4H+edNnE3RHjKRNaU5XsWHkJ50b18rb
 AcQD1QqVVgrOo0H5LOAQhHiEzHS6gJy/5cAd79QRwx4hmWcGjxTP68WWkJbodCteYW8D
 3Ecw==
X-Gm-Message-State: APjAAAXUrY3fkImDvrwPG9BYnPMghhCCFONKAgNbPJuOPFmvDh0tkeO3
 PabKdjWamTC0XL40qOe6RC6gAnstYKarTgAyOWKADw==
X-Google-Smtp-Source: APXvYqz6mT2feKlh8y8KJBFeHaGvmta1tNVLx2J144g2NFmA84lEkdM2Ca/94epR0ewDk42GFLZtxmPXuKFrJ6HDE+g=
X-Received: by 2002:ac8:104:: with SMTP id e4mr47527750qtg.234.1558088051122; 
 Fri, 17 May 2019 03:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <1557826556-10079-1-git-send-email-yannick.fertre@st.com>
 <1557826556-10079-2-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557826556-10079-2-git-send-email-yannick.fertre@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 17 May 2019 12:14:00 +0200
Message-ID: <CA+M3ks66kdeCEEzRj9B41YTQQkod5f5p9EgpjUZvnj=q36ak4Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: stm32: add supply property
 to DSI controller
To: =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_031413_508484_BD35DEAA 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbWFyLiAxNCBtYWkgMjAxOSDDoCAxMTozNiwgWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZl
cnRyZUBzdC5jb20+IGEgw6ljcml0IDoKPgo+IFRoaXMgcGF0Y2ggYWRkcyBkb2N1bWVudGF0aW9u
IG9mIGEgbmV3IHByb3BlcnR5IHBoeS1kc2ktc3VwcGx5IHRvIHRoZQo+IFNUTTMyIERTSSBjb250
cm9sbGVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRy
ZUBzdC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4g
UmV2aWV3ZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+CgpBcHBs
aWVkIG9uIGRybS1taXNjLW5leHQsCgpUaGFua3MsCkJlbmphbWluCgo+IC0tLQo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zdCxzdG0zMi1sdGRjLnR4dCB8IDMg
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zdCxzdG0zMi1sdGRjLnR4
dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0LHN0bTMyLWx0
ZGMudHh0Cj4gaW5kZXggM2ViMWI0OC4uNjBjNTRkYSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zdCxzdG0zMi1sdGRjLnR4dAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0LHN0bTMyLWx0ZGMu
dHh0Cj4gQEAgLTQwLDYgKzQwLDggQEAgTWFuZGF0b3J5IG5vZGVzIHNwZWNpZmljIHRvIFNUTTMy
IERTSToKPiAgLSBwYW5lbCBvciBicmlkZ2Ugbm9kZTogQSBub2RlIGNvbnRhaW5pbmcgdGhlIHBh
bmVsIG9yIGJyaWRnZSBkZXNjcmlwdGlvbiBhcwo+ICAgIGRvY3VtZW50ZWQgaW4gWzZdLgo+ICAg
IC0gcG9ydDogcGFuZWwgb3IgYnJpZGdlIHBvcnQgbm9kZSwgY29ubmVjdGVkIHRvIHRoZSBEU0kg
b3V0cHV0IHBvcnQgKHBvcnRAMSkuCj4gK09wdGlvbmFsIHByb3BlcnRpZXM6Cj4gKy0gcGh5LWRz
aS1zdXBwbHk6IHBoYW5kbGUgb2YgdGhlIHJlZ3VsYXRvciB0aGF0IHByb3ZpZGVzIHRoZSBzdXBw
bHkgdm9sdGFnZS4KPgo+ICBOb3RlOiBZb3UgY2FuIGZpbmQgbW9yZSBkb2N1bWVudGF0aW9uIGlu
IHRoZSBmb2xsb3dpbmcgcmVmZXJlbmNlcwo+ICBbMV0gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Nsb2NrL2Nsb2NrLWJpbmRpbmdzLnR4dAo+IEBAIC0xMDEsNiArMTAzLDcgQEAg
RXhhbXBsZSAyOiBEU0kgcGFuZWwKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1l
cyA9ICJwY2xrIiwgInJlZiI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZy
Y2MgU1RNMzJGNF9BUEIyX1JFU0VUKERTSSk+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJl
c2V0LW5hbWVzID0gImFwYiI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGh5LWRzaS1zdXBw
bHkgPSA8JnJlZzE4PjsKPgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHBvcnRzIHsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+IC0tCj4g
Mi43LjQKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
