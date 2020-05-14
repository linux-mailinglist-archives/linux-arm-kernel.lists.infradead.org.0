Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B6C1D361D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flXky0RB7iCyrMa6hJy7g5NjzexOQAR3TWgjSzgy4P8=; b=IVGGuMpMgFgbHi
	jjomUAmuY1ZZpiKfC/cwJaa3IUBjlw0+aYnYpDlg50LsxFBDvfegOnt8W5PtUu+tHseBiaHB/DoV+
	fw8FZNm6LHlizwy90m5rK0wImGMnsyDdbR6puDd1fBEHo9zCUQz9YA1fuL9qozarDrILp4K0Z9GyQ
	P2oSpsft2+87k4XCWA7+vcfC1ZIzfWPhMCRGRvR2G5Dk0IFkzLvZLhwzmyuq1Ov2zhbxEK16UzSFD
	ly4XoXUApYpuXbZ150XExj8QPjDxQtfaiFijReDF2skdI0d0cow4ANGwSfTlcpg5jJwuThy2ldwKu
	8XAq7Qd5pukSPPw80WGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGSg-00040q-ET; Thu, 14 May 2020 16:11:54 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSU-0003zO-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:11:44 +0000
Received: by mail-il1-x144.google.com with SMTP id j3so3822337ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 09:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pWAwL4iY43kHKyzq6JgPam8fDxHVDDtXpG7mRg32aJE=;
 b=O18fRYkJuCVHLzSDHMiTV/YEvTTqeLQpSzk7AUAl1veaDpHB0AhDrBCf6pG6NOIJ69
 IVKsNZ3fA75gmbzuDAe9ruH9MEFZd4RjPd5l7XMXsa9JnQglfU6WlqT5lKEfreMB5mpa
 yLiuZhfm1eIS1G/957nwLkHVLS+MHbLeJ+wOrXDXNXNqjYGERRRjU4frvhsoaaEfctCs
 TOK4ipsoWjopZW/F3wg+NJ2uwwRe8hgMBHYVXkuqgOqby141+OUTgLvFgNbfg3CODLo9
 TdoiXHXOZy+3W9snj2LFBt6LX/eRdGwR20ISOpHddhvO3HEKQmYx8gnopiazWe6kaubv
 UEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pWAwL4iY43kHKyzq6JgPam8fDxHVDDtXpG7mRg32aJE=;
 b=rtQ6ua6i+L4YzYdZ65iFUnUdRoHkaV1p9awO+5pafjMsKKwY2eZPRwSDJdTh7DDzyU
 z0wV0hRD/bIE0diyIGtslp2MbPwR24OF42xW6GwBjriAQY4dNir1d2IRIhYaDdk62NFi
 od20ViN0Oq8i8I6AJ9vk3U+oWMcV1mQVc2vPkcv3DjksucZNH/W1Q5cDMav0W9/T9uBz
 gCW3AA+6hktNghbjaxLJ4V2xWfHWOnGgfihcRPAm033uNT5sy04n/sHwf6Jp340gekDv
 e/3QMMsYxqr4n8e2cjmycs174qUpiLV5pIGsqyTDLUaOHOMJMAwjeWhLYRaqvXLuNu1H
 GpKA==
X-Gm-Message-State: AOAM533cyfrUJI2YC0Rg1gn+RS1cucsOT65tI0OeaLSL8itIOOSKiD1o
 uhojO8ih0LxEt87uWHcYG8+3cUVTZbASu0quxuA=
X-Google-Smtp-Source: ABdhPJx6Rsp5ROFxXwYlYudzEUx9ly+h8b+Qj8M+Twx/mohFFLUuzJpw12Ch5e3R3mp3ipZq22gY7LfKaKb8NlNe79A=
X-Received: by 2002:a05:6e02:68e:: with SMTP id
 o14mr1854794ils.184.1589472696421; 
 Thu, 14 May 2020 09:11:36 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-6-git-send-email-dillon.minfei@gmail.com>
 <CACRpkdbZoMDC-D12CByKJUZbu4shqixC=QrKwJUd8x=nyK7seQ@mail.gmail.com>
 <CAL9mu0LVsePqifEC+-FR+NxvuZT3UGpU86KhzaTqb7w_Px0z2g@mail.gmail.com>
 <CACRpkdbcD7i+kNoJ9YP5XXTtLi12=yzW5OBNzet5oRdwPYz=dA@mail.gmail.com>
In-Reply-To: <CACRpkdbcD7i+kNoJ9YP5XXTtLi12=yzW5OBNzet5oRdwPYz=dA@mail.gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Thu, 14 May 2020 16:11:00 +0800
Message-ID: <CAL9mu0Kdc4TqcGB7JYDWkOJqwvxX1m_026aB0iprkHTzN4HXoQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] drm/panel: Add ilitek ili9341 driver
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091143_020817_E74155A8 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IOS6jjIw
MjDlubQ15pyIMTTml6Xlkajlm5sg5LiL5Y2IMTA6MDjlhpnpgZPvvJoKPgo+IE9uIFRodSwgTWF5
IDE0LCAyMDIwIGF0IDEyOjIyIFBNIGRpbGxvbiBtaW4gPGRpbGxvbi5taW5mZWlAZ21haWwuY29t
PiB3cm90ZToKPgo+ID4gPiA+ICsgICAgICAgLyogR2FtbWEgKi8KPiA+ID4gPiArICAgICAgIG1p
cGlfZGJpX2NvbW1hbmQoZGJpLCBJTEk5MzQxXzNHQU1NQV9FTiwgMHgwMCk7Cj4gPiA+ID4gKyAg
ICAgICBtaXBpX2RiaV9jb21tYW5kKGRiaSwgTUlQSV9EQ1NfU0VUX0dBTU1BX0NVUlZFLCAweDAx
KTsKPiA+ID4gPiArICAgICAgIG1pcGlfZGJpX2NvbW1hbmQoZGJpLCBJTEk5MzQxX1BHQU1NQSwK
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgMHgwZiwgMHgzMSwgMHgyYiwgMHgwYywg
MHgwZSwgMHgwOCwgMHg0ZSwgMHhmMSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
MHgzNywgMHgwNywgMHgxMCwgMHgwMywgMHgwZSwgMHgwOSwgMHgwMCk7Cj4gPiA+ID4gKyAgICAg
ICBtaXBpX2RiaV9jb21tYW5kKGRiaSwgSUxJOTM0MV9OR0FNTUEsCj4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgIDB4MDAsIDB4MGUsIDB4MTQsIDB4MDMsIDB4MTEsIDB4MDcsIDB4MzEs
IDB4YzEsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIDB4NDgsIDB4MDgsIDB4MGYs
IDB4MGMsIDB4MzEsIDB4MzYsIDB4MGYpOwo+ID4gPgo+ID4gPiBJdCBzZWVtcyB0byBiZSBjb3Bp
ZXMgb2YgdGhlIHN0dWZmIGFib3ZlLCBidXQgd2h5IGlzIHRoZXJlIGEgZGlmZmVyZW50Cj4gPiA+
IGdhbW1hIGlmIHlvdSB1c2UgREJJPwo+Cj4gPiBmb3IgZGJpIGludGVyZmFjZSwgY3VycmVudGx5
IGkganVzdCBjb3B5IHRoZSBjb2RlIGZyb20gdGlueS9pbGk5MzQxLmMuCj4gPiBhcyBzbyBtYW55
IGJvYXJkcyB1c2UgdGhpcyBkcml2ZXIgbm93LCBsaWtlIHJhc3BiZXJyeSBwaSwgZXRjCj4gPiBp
J20gYWZyYWlkIGl0J3Mgd2lsbCBub3Qgd29yayBhZnRlciBtb2RpZmljYXRpb24uIHNvLCBqdXN0
IGxlYXZlIHRoZQo+ID4gb3JpZ2luYWwgY29kZSB0aGVyZS4KPgo+IE9LIGlmIHlvdSBtb3ZlIGl0
IHRvIGlsaTkzNDFfY29uZmlnIGl0IHdpbGwgYmUgY2xlYXIgd2hpY2ggcGFuZWxzCj4gbmVlZCB0
aGlzIGdhbW1hIGFuZCB3aGljaCBwYW5lbHMgbmVlZCBhbm90aGVyIGdhbW1hLgo+Cj4gSSB0aGlu
ayB0aGVyZSBzaG91bGQgYmUgb25lIGlsaTkzNDFfY29uZmlnIGZvciB0aGUgbmV3IHN0LCoKPiB2
YXJpYW50IGFuZCBvbmUgZm9yIHRoZSBvbGQgREJJIHZhcmlhbnQuCj4KT2theSwgaXQncyBhIGdv
b2QgaWRlYSB0byBzZXR1cCB0d28gZGlmZmVyZW50IGNvbmZpZ3MuICBpbGk5MzQxX2RiaV9jb25m
aWcsCmlsaTkzNDFfZHBpX2NvbmZpZy4gZmlyc3QgZm9yIG9sZCBkYmkgdmFyaWFudCwgc2Vjb25k
IGZvciBkcGkgdmFyaWFudC4KCj4gPiBhbnRoZXIgcXVlc3Rpb246Cj4gPiBpcyB0aGVyZSBhbnkg
cGFuZWwgZHJpdmVyIGhhdmUgZGJpICYgZHBpIG9yIGRwaSAmIGRzaSBzdXBwb3J0ZWQ/IHdoaWNo
Cj4gPiBpIG1lYW4gc3VwcG9ydAo+ID4gdHdvIGRpZmZlcmVudCBwYW5lbCBpbnRlcmZhY2UgaW4g
b25lIGRyaXZlci4KPiA+IHRoYW5rcwo+Cj4gVXN1YWxseSB5b3Ugc3BsaXQgdGhlIGRyaXZlciBp
biB0aHJlZSBmaWxlcyBiZWN1YXNlIGEgZHJpdmVyIGNhbgo+IG9ubHkgbGlzdCBvbmUgaW5pdGNh
bGwsIGFuZCBhbHNvIGl0IG1ha2VzIGl0IG1vZHVsYXJpemVkLgo+Cj4gVGhlcmUgaXMgbm90aGlu
ZyBpbi10cmVlIGJ1dCBsb29rIGF0IG15IGJyYW5jaCBoZXJlOgo+IGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xpbnVzdy9saW51eC1ub21hZGlrLmdpdC9s
b2cvP2g9dXg1MDAtc2tvbWVyLXY1LjctcmMxCj4KPiBZb3Ugc2VlIGhvdyBJIHNwbGl0IHVwIHRo
ZSBzNmU2M20wIGRyaXZlciBpbiBvbmUgU1BJIHBhcnQKPiBhbmQgb25lIERTSSBwYXJ0Ogo+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xpbnVzdy9saW51
eC1ub21hZGlrLmdpdC9jb21taXQvP2g9dXg1MDAtc2tvbWVyLXY1LjctcmMxJmlkPTZjMGUxZmI1
ZGY1ZmE4ZmE4NTdkZWU2NWY2YzBmNTRkMDZkMTU4YTcKPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9saW51c3cvbGludXgtbm9tYWRpay5naXQvY29tbWl0
Lz9oPXV4NTAwLXNrb21lci12NS43LXJjMSZpZD1jZmJmNTYyY2M3MDliNTNiNjJmNWZiYzdmZWRm
MTc2ZmZhMTdiMDg4Cj4KPiBUaGUgb3ZlcmFsbCBpZGVhIHNob3VsZCB3b3JrIHRoZSBzYW1lIHdp
dGggREJJLgo+Cj4gWW91cnMsCj4gTGludXMgV2FsbGVpago+Cj4gWW91cnMsCj4gTGludXMgV2Fs
bGVpagoKVGhhbmtzIGZvciBzaGFyZSwgYnV0IGkgdGhpbmtzIGl0J3Mgbm90IHN1aXRhYmxlIHRv
IG15IGNhc2UuIHRoZSBkaWZmZXJlbmNlIGlzCmZvciBwYW5lbCBzNmU2M20wCjEgc3BpIG9ubHkg
Zm9yIHBhbmVsIHJlZ2lzdGVyIGNvbmZpZ3VyYXRpb24KMiBkcGkgZm9yIHJnYiB2aWRlbyBkYXRh
IHRyYW5zZmVyIChkcm1fcGFuZWxfaW5pdCguLi4sIERSTV9NT0RFX0NPTk5FQ1RPUl9EUEkpOykK
Cm15IGNhc2U6CjEgc3VwcG9ydCBpbGk5MzQxIGJ5IGRybSBtaXBpIGRiaSAob25seSBzcGkgYnVz
LCAgIjMvNCBsaW5lIHNlcmlhbAppbnRlcmZhY2UiLCBwZGYgY2hhcCA3LjYuMSksIEllLCByYXNw
YmVycnkgcGkgKyBpbGk5MzQxICsgc3BpCjIgc3VwcG9ydCBpbGk5MzQxIGJ5IHNwaSAmIGRwaSAo
c3BpIGZvciByZWdpc3RlciBzZXQsIGRwaSBmb3IgcmdiCmRhdGEsICI2LzE2LzE4IGJpdCBwYXJh
bGxlbCByZ2IgaW50ZXJmYWNlIiwgcGRmIGNoYXAgNy42LjgpCiAgIEllLCBzdG0zMmY0MjkraWxp
OTM0MStsdGRjK3NwaQp0aGVzZSB0d28gY29tbXVuaWNhdGlvbiB0eXBlIGhhcyBubyBkZXBlbmRl
bmN5IHdpdGggZWFjaCBvdGhlci4KCkRCSSBoYXMgbXVjaCBtb3JlIGRpZmZlcmVuY2UgdGhhbiBE
UEkgJiBTUEksIG9yIERTSSAmIFNQSSBpbiBkcm0uCiAgIGRybV9taXBpX2RiaSBzdXBwb3J0IGJv
dGggcGFuZWwgcmVnaXN0ZXIgY29uZmlndXJhdGlvbiBhbmQgdmlkZW8KZGF0YSB0cmFuc2ZlciB2
aWEgc3BpCiAgIHdpdGggb3Igd2l0aG91dCBkYyBwaW5zLgogICBhbHNvIHRoZSByZWdpc3RyYXRp
b24gdG8gZHJtIGlzIGRpZmZlcmVuY2UsIGZvciBkYmkgaXMKbWlwaV9kYmlfZGV2X2luaXQgYW5k
IGRybV9mYmRldl9nZW5lcmljX3NldHVwCiAgIGZvciBwYW5lbCBkcml2ZXIgaXMgZHJtX3BhbmVs
X2luaXQgYW5kIGRybV9wYW5lbF9hZGQKYXQgc29jJ3Mgdmlldywgd2UgY2FuIGRyaXZlIGlsaTkz
NDEgdG8gd29yayBqdXN0IGJ5IGRybSBtaXBpIGRiaQooYWN0dWFsbHkgaXQncyBkYmkgLT4gc3Bp
IGJ1cykgd2l0aG91dCBob3N0J3MgbGNkIG9yIGRzaSBjb250cm9sbGVyCmJ1dCBmb3Igc29tZSBw
YW5lbCBjYW4ndCB0cmFuc2ZlciB2aWRlbyBkYXRhIGJ5IHNwaSwgYW5kIHdpdGggZHBpIG9yCmRz
aSBpbnRlcmZhY2UsIG11c3QgY29ubmVjdCB0byBob3N0J3MgbGNkIG9yIGRzaSBjb250cm9sbGVy
LgoKc28sIGZvciBpbGl0ZWstaWxpOTM0MSAsIGl0J3MgdXNlIGRpZmZlcmVudCBkdHMgYmluZGlu
ZyBkcml2ZSB0bwpyZWdpc3RlciBkaWZmZXJlbnQgY2xpZW50IHR5cGUgKGRiaSwgb3IgZHBpICYg
c3BpKSB0byBkcm0uCmFjdHVhbGx5LCB0aGVyZSBpcyBhIGRyaXZlciB0aW55L2lsaTkzNDEuYyBz
dXBwb3J0IHRoaXMgcGFuZWwgYnkgc3BpCmJ1cyBvbmx5IGFscmVhZHkuIGJ1dCwgZnJvbSBTYW0n
cyBzdWdnZXN0aW9uLCBzaG91bGQgZXh0ZW5kIHRoaXMKZHJpdmVyCnRvIHN1cHBvcnQgZHBpICYg
c3BpIGludGVyZmFjZSwgdGhpcyBpcyB0aGUgYmFja2dyb3VuZCBvZiBwYW5lbC1pbGl0ZWstaWxp
OTM0MS5jCgp0aGFua3MuCgpiZXN0IHJlZ2FyZHMuCgpkaWxsb24KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
