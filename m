Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446D42AFD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcSBhhXtnIOmxGa/702y7z5c4sSwF8fpPXJTB7w1i6M=; b=AWK04vDXRGQqpy
	pSsXMyLISxRmZCTrft0OrDUrYK5oLkLzHt3mzdkOmRYYDYUe+WqUl8Lvxw2Tr0KCDDX8D/TWHH9Cm
	ZicCdOhREZh3XlIx8pvBltLGgUlgDQRaz7IVpeyboxOxwlKyhy1NF6wFunejm5vg6RhgeCmP+2X/E
	rvTtFcWtNG3vOcLsgWCU8U0LValkbDkKEc3GwXyXQruXVNgTEts0AE7dM2qUBRBu1gZDQnXiDxdSz
	6plLynhPOkDeO7+Rx3Z7G5T6Rz4cP7vShcvsrib1GHM6eapAPOxRXAgZZd+q7lZbQOm8pbFfkt3mm
	z8bHwu/WOVO0t6znBLGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAn2-0006l0-TF; Mon, 27 May 2019 08:15:28 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAms-0006dg-5V
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:15:20 +0000
Received: by mail-yw1-xc42.google.com with SMTP id t5so6346059ywf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8L8FxJvLC6rdJRaEPp+bxb7cZDFl4i6J9lltUnwH0Us=;
 b=AVGdfQETMoH5SxwK3z793+ehooy4pLBSM3xLn/Bswr3N0KfGnt0Fhqw3hoYJVQ40bl
 M49M/c/NDMmzmjtfZLywbrm8ep9XCX3xUGH8WLrvvgpwk5OMkppGvpXIKgMytQLcUA8z
 XZhjbyDG0kezcP3Xw6j5ljsSqTAl7x79r0eG3ZWc5aISMRYZ8Ml8eLVpkUf8kzyOOovF
 ONjyUy3hzEvTBhp63PEusjXlmra2S3rD0e5iEu+Ji6mwBLngZLDJF79CU8k5wafQfvx8
 f4c8sCr/yBIwNvwpHScSAK35aDc48IBSIytwpuUE30pfQpJht29hv+rAhz6BxRa8TSBq
 FI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8L8FxJvLC6rdJRaEPp+bxb7cZDFl4i6J9lltUnwH0Us=;
 b=ZFqkAXVC0kACqAB/Pz3zlg3l8TavLiFcfkPaHnkVVdSn15BSnAEZ45mKeXwrKa3RWt
 5cMAXko46QVL+x1Eih6DK0F2Y6gn2bYuM9wFFD8CQmcDHLQSkrOM97ugVUmL/bdkUIqS
 HyL6kgv/UgAzhKz7ju4fxQmyNTxLYMAuaD9ne7KB1zUTO4NdQRYKZiMS9VWGuy6bf/yO
 4xpddM8w694jX7HlRed1DFDozvBLF2IpUHfpi5QevwPpUPNoHOhR39ABs5wxhccj6CLd
 B08fiE526r+ZQImth5+VsScdm1TLIqPtmbNubnt8i0Fc7BvPN3qfR2T2+15K+M7XLMgn
 iGJA==
X-Gm-Message-State: APjAAAUL3FbW//PfBTumd9i/8ZUkiZyVz9XY3CPGPYNpGsv8z56agtBk
 N4Qct2Z8mef8lS76iLxv9ad7+oOmtGYUoa5JluE=
X-Google-Smtp-Source: APXvYqwRLS3tvAtNy9ARQjniVMZA3QRwur4yo4izgAaeMy+E02aGyKEzarZnYXXpC1mDOrmutQcTBxmiXCPytcJqrNQ=
X-Received: by 2002:a0d:ea4c:: with SMTP id t73mr54679241ywe.472.1558944916838; 
 Mon, 27 May 2019 01:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190526222536.10917-4-peron.clem@gmail.com>
 <20190527074745.5oyt5tyuoc75ntiq@flea>
In-Reply-To: <20190527074745.5oyt5tyuoc75ntiq@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 27 May 2019 10:15:05 +0200
Message-ID: <CAJiuCcd7Ekg5fHQy0sLaiJLdPtH2U0UaMgHkCfhZQOmPg=0RHw@mail.gmail.com>
Subject: Re: [PATCH v2 03/10] ARM: dts: sunxi: prefer A31 instead of A13 for ir
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_011518_670669_1C23B079 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKCk9uIE1vbiwgMjcgTWF5IDIwMTkgYXQgMDk6NDcsIE1heGltZSBSaXBhcmQg
PG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBNYXkgMjcsIDIw
MTkgYXQgMTI6MjU6MjlBTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gU2luY2Ug
QTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgo+ID4KPiA+
IFByZWZlciB0aGUgQTMxIGJpbmRpbmdzIGluc3RlYWQgb2YgQTEzLgo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+
ICBhcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaSAgIHwgMiArLQo+ID4gIGFyY2gvYXJt
L2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAgfCAyICstCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMv
c3VuOWktYTgwLmR0c2kgICB8IDIgKy0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1o
NS5kdHNpIHwgMiArLQo+Cj4gQ2FuIHlvdSBzcGxpdCB0aGUgSDMgaW4gYSBzZXBhcmF0ZSBwYXRj
aD8gdGhpcyB3aWxsIGdvIHRocm91Z2ggYQo+IHNlcGFyYXRlIGJyYW5jaC4KCk9rIEkgd2lsbCwK
VGhhbmtzLApDbMOpbWVudAoKPgo+IFRoYW5rcyEKPiBNYXhpbWUKPgo+IC0tCj4gTWF4aW1lIFJp
cGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBo
dHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
