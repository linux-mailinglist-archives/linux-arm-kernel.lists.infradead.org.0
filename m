Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDDB1592BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:17:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWq/deTO269hOIB12AqRSf6AcWRnAqUfo8ZFcap/XUg=; b=MN83SZPp+0X7Cl
	o7DlFbPKjbNYDMveTyu29+KpDuuT+lPLcTv77vq2UEpeT13RVSNaaPZg0Dr+pJ+rgKdU3nc4HJ6qq
	72h7Dw5Bz9FGjJEjTjiZTHIwEhSRWf/piFzFnaUgxx5XfevyEN3loOjQBrnfotPhBtzpe5XbWKSm4
	8ZQ5hmIrf5MHRW9lRrdA6QwlAtvAj9Pu7b6BqJnrIgK+vRFITyQcD8Cy+1o+qghZBbwRfklumR9EE
	X8G4D53L4lJjpCF1srINiQ3WgE0blHcrzcejLNZidWYvsq+eSw4eROscocPpAOOMzY7PlBujVHwMP
	cHG4A9OVJVseRxbRzWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XHc-0007Ir-Dj; Tue, 11 Feb 2020 15:17:04 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XHV-0007Ht-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:16:59 +0000
Received: by mail-vs1-xe41.google.com with SMTP id t12so6479311vso.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 07:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WENS2WcOxHmXvDO2pe8ifXBhkcUA3hWBPLeNHKN8EoM=;
 b=C+5ascRqzPXGryltERKgpy4StkE4UDqzTw3z3ftMWMC3RwhZOcWM2KgPIGW6uTN7J7
 si3ykSCHDvO4YTBpTF+fg/HXJdnzBJLgkqSW3lD080sgfeb58FaWgAmjAjogA7/v1nbI
 DrBuwN/GHIMAMJgJzWS3GFcIdi24lIE8Tc0fYv2ERDU3MiUL0aAkHcyCKDepr/UU7usu
 NJfGsdAQuyeQ4cvjkorfm4XpVogPPGbMOVux0+WFsU9o3zKwerLaQ9weCyCtuEpxpl/O
 T05diV41zPXxkMmdYBtZObEYoxu5XCsB4ZgPd9WMT8MZE2bOaM/HNKk/BgefwQ9F1qHZ
 wrQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WENS2WcOxHmXvDO2pe8ifXBhkcUA3hWBPLeNHKN8EoM=;
 b=rUF419krDT+tIijs55KKKO+lL/Wiw3PYgMa+G7J57r1N//xx46+ouK2QOMwnztbgeA
 kzDDsnqLg7AZe8LBaqAF4FyFWyKUNDIHRmPpNLl/XHBDJMJ+aHrMwIQZlmPmeKq6jgrU
 H+euFA98u8Kjsvu5MwZMJCZN6tyNFfbWZvu2lT9/MrVP+vCLSCRVehC49f1/RzuQNT6D
 u/DtIbWTZaL1T/fltAQOnYGS6kCfwZV7SKLuAZOQ9lpfpkj6170ZVV/NguVzLnzY6dy2
 Vy4+SBqLD5fQxhPdOW/FQOU0ntL7ekW19883KzdxeEvH5UVRFD1VcZYpxsIqXxXQj75E
 MFFA==
X-Gm-Message-State: APjAAAWal0zOKPDMipkFPxjKkJu4AzKnm0iaik0wTgWG5ucnhfMWCXup
 MNT5lu8pd/qAALVHRrlSOSZtXoz++hG4jCT4mX0r9w==
X-Google-Smtp-Source: APXvYqxX+g30kIlrE7sS/CTlKwzqSp/4IyXR9L+m+r5akbnOHy+rmb/ItP0h3AjrD+kKmmUxf62c/e8ix4e9zhDSy+c=
X-Received: by 2002:a67:ee02:: with SMTP id f2mr9380622vsp.165.1581434215966; 
 Tue, 11 Feb 2020 07:16:55 -0800 (PST)
MIME-Version: 1.0
References: <20200128090636.13689-1-ludovic.barre@st.com>
 <0d4a3df8-fd1a-4839-116c-149f9e478f42@st.com>
In-Reply-To: <0d4a3df8-fd1a-4839-116c-149f9e478f42@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Feb 2020 16:16:20 +0100
Message-ID: <CAPDyKFpD9GS2FNt2DOsnELtopzhAmyKizU6xhBrP5_uokFFHTw@mail.gmail.com>
Subject: Re: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_071657_719520_7E9124BB 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMSBGZWIgMjAyMCBhdCAxNTo0NywgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Cj4gaGkgVWxmCj4KPiBKdXN0IGEgImdlbnRsZW1hbiBwaW5nIiBv
biB0aGlzIHNlcmllcwo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC1tbWMvbGlzdC8/c2VyaWVzPTIzNDAxMQoKSSB3aWxsIGhhdmUgYSBsb29rIGxhdGVyIHRoaXMg
d2Vlay4gVGhlIG1lcmdlIHdpbmRvdyBjbG9zZWQgeWVzdGVyZGF5CmFuZCBub3JtYWxseSBJIGRv
bid0IHF1ZXVlIGFueXRoaW5nIGJ1dCBmaXhlcyBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdy4KCkFu
eXdheSwgYXBvbG9naXplIGZvciB0aGUgZGVsYXlzLgoKS2luZCByZWdhcmRzClVmZmUKCj4KPiBS
ZWdhcmRzCj4gTHVkbwo+Cj4gTGUgMS8yOC8yMCDDoCAxMDowNiBBTSwgTHVkb3ZpYyBCYXJyZSBh
IMOpY3JpdCA6Cj4gPiBUbyBzdXBwb3J0IHRoZSBzZHIxMDQgbW9kZSwgc2RtbWMgdmFyaWFudCBu
ZWVkczoKPiA+IC1IYXJkd2FyZSBkZWxheSBibG9jayBzdXBwb3J0IGZvciBzZG1tYyB2YXJpYW50
Cj4gPiAgIHdpdGggdHVuaW5nIHByb2NlZHVyZQo+ID4gLVZvbHRhZ2Ugc3dpdGNoIGNhbGxiYWNr
cwo+ID4gLXNkbW1jIHJldmlzaW9uIDIuMAo+ID4KPiA+IFYyOgo+ID4gLXJlZ3JvdXAgaG9zdC0+
bW1jX29wcyAmIG1tYy0+b3BzIGFzc2lnbm1lbnQKPiA+IC1hZGQgdGltZW91dCBkZWZpbmUKPiA+
IC1yZW5hbWUgcHJlcF92b2x0X3N3aXRjaCB0byBwcmVfc2lnX3ZvbHRfc3dpdGNoCj4gPiAtcmVu
YW1lIHZvbHRfc3dpdGNoIHRvIHBvc3Rfc2lnX3ZvbHRfc3dpdGNoCj4gPiAtYWRkICd3aHknIGNv
bW1lbnQgZm9yICJtbWM6IG1tY2k6IGFkZCB2b2x0X3N3aXRjaCBjYWxsYmFja3MiCj4gPgo+ID4g
THVkb3ZpYyBCYXJyZSAoOSk6Cj4gPiAgICBtbWM6IG1tY2k6IHNkbW1jOiByZXBsYWNlIHNnX2Rt
YV94eHggbWFjcm9zCj4gPiAgICBtbWM6IG1tY2k6IHNkbW1jOiByZW5hbWUgc2RtbWNfcHJpdiBz
dHJ1Y3QgdG8gc2RtbWNfaWRtYQo+ID4gICAgbW1jOiBtbWNpOiBhZGQgYSByZWZlcmVuY2UgYXQg
bW1jX2hvc3Rfb3BzIGluIG1tY2kgc3RydWN0Cj4gPiAgICBtbWM6IG1tY2k6IGFkZCBwcml2YXRl
IHBvaW50ZXIgZm9yIHZhcmlhbnQKPiA+ICAgIGR0LWJpbmRpbmdzOiBtbWM6IG1tY2k6IGFkZCBk
ZWxheSBibG9jayBiYXNlIHJlZ2lzdGVyIGZvciBzZG1tYwo+ID4gICAgbW1jOiBtbWNpOiBzZG1t
YzogYWRkIGV4ZWN1dGUgdHVuaW5nIHdpdGggZGVsYXkgYmxvY2sKPiA+ICAgIG1tYzogbW1jaTog
YWRkIHZvbHRfc3dpdGNoIGNhbGxiYWNrcwo+ID4gICAgbW1jOiBtbWNpOiBzZG1tYzogYWRkIHZv
bHRhZ2Ugc3dpdGNoIGZ1bmN0aW9ucwo+ID4gICAgbW1jOiBtbWNpOiBhZGQgc2RtbWMgdmFyaWFu
dCByZXZpc2lvbiAyLjAKPiA+Cj4gPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWNp
LnR4dCAgICAgICAgICB8ICAgMiArCj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jICAgICAg
ICAgICAgICAgICAgICAgICB8ICA0MiArKystCj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5o
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArCj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1j
aV9zdG0zMl9zZG1tYy5jICAgICAgICAgICB8IDIwNCArKysrKysrKysrKysrKysrKy0KPiA+ICAg
NCBmaWxlcyBjaGFuZ2VkLCAyNDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
