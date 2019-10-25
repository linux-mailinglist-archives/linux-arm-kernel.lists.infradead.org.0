Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7EEE557C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 22:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQaOVSPnOVUl92PtWgV6ZDBKJw3jvcxkopETozBtwIk=; b=c4//Ln/8+ckIP0
	E+S1yxwh1zFDUw41Hrg+8R0wZP2MiIdAKeRoaINS6UM9NaCQ6HE3A6pPTJGdU1gqZsB1UOsVYvQuL
	y8uhkY+W9bOgaCq5f5bv7fnD7W19UhdUf7fFl1gJlc7sCkEnU1mUudcqD7OHKQFtknlUuV0lQs1XQ
	CQ9YAblcrNf0d3yWJHBdtK7dAki2SaCcgxoyYEK91ryPDr8kN31m5G2zD/getzBA5vwB725pFFBV9
	QhD7ueWuPD3Kl6XoA1gWnmJ0vShMJBGozIarPKfPQaOujSHKoHXKwZzFWrsA3BjRj7ULHFc3Bp1HX
	A2wZTNUjUhpZl6UEEfdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6Zf-0001fO-2s; Fri, 25 Oct 2019 20:52:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6ZT-0001ey-O3; Fri, 25 Oct 2019 20:52:32 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 449B721E6F;
 Fri, 25 Oct 2019 20:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572036751;
 bh=ORFhXAsCQweMyIE5fdnoRCbGtyZgtGzZu0oJWpRtLEA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zKhAr6iNnKxRR/OmHBwiVBHmMVqC2w3IDMpMyuLTzBntt41I4IEmwx7XdBVyCmlbC
 sivlIhCM88ecHVAD6G5rMcOVtNc7FNH/2TJnfGsp8C3xX5semVb8HDNqCKBN4ZPjdO
 lS+G9ZhgAkXpyHUoAmWJw+8Kb1Uu02GfX64m/JGU=
Received: by mail-qt1-f176.google.com with SMTP id o3so5278821qtj.8;
 Fri, 25 Oct 2019 13:52:31 -0700 (PDT)
X-Gm-Message-State: APjAAAUVbX+eM5K8H0Qu70zcyH0AWUDdjv6AJ7eGINo0y2pJGnishHO2
 3KM/l/9P1Gjqji4Xtx/6Z3E923/j04QvDGFtbQ==
X-Google-Smtp-Source: APXvYqxsld9ImE31xEIRyd/SNyuF7ml49eI3ypfs2k0j66vMlw4KSS63PN5eOAFHsHZIQ0enGsLdpRKYXUAsMTLF2Do=
X-Received: by 2002:ac8:741a:: with SMTP id p26mr5205325qtq.143.1572036750395; 
 Fri, 25 Oct 2019 13:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-6-afaerber@suse.de>
In-Reply-To: <20191020040817.16882-6-afaerber@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Fri, 25 Oct 2019 15:52:19 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+OhiZZ4Ei3wg4s-1z+WsqQSvvRMNrK37Yq+1XR3-3_uA@mail.gmail.com>
Message-ID: <CAL_Jsq+OhiZZ4Ei3wg4s-1z+WsqQSvvRMNrK37Yq+1XR3-3_uA@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] arm64: dts: realtek: Change dual-license from MIT
 to BSD
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_135231_806678_994D2A5B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBPY3QgMTksIDIwMTkgYXQgMTE6MDggUE0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPiB3cm90ZToKPgo+IE1vdmUgdGhlIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRv
IHRoZSB0b3AgbGluZSBhbmQgdXBkYXRlIHRvIFNQRFggMi4wLgo+IFdoaWxlIGF0IGl0LCBzd2l0
Y2ggZnJvbSBHUEx2MisvTUlUIHRvIEdQTHYyKy9CU0QyYyBiZWZvcmUgYWRkaW5nIG1vcmUuCj4K
PiBTdWdnZXN0ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gQ2M6IFJvYiBI
ZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVy
IDxhZmFlcmJlckBzdXNlLmRlPgo+IC0tLQo+ICB2MjogTmV3Cj4KPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28teDlzLmR0cyB8IDMgKy0tCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgICAgICAgICAgfCAzICstLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpICAgICAgICAgIHwgMyArLS0KPiAgMyBm
aWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpBY2tlZC1ieTog
Um9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCkl0J3MgcmVhbGx5IG9ubHkgc2NoZW1hIGZp
bGVzIHRoYXQgSSdtIHB1c2hpbmcgdG93YXJkcyBCU0QyQy4gTWF5YmUgaW4KaGluZHNpZ2h0IHdl
IHNob3VsZCBoYXZlIGRvbmUgTUlUIGFzIHRoYXQncyBtb3JlIGNvbW1vbiBpbiB0aGUgZHRzCmZp
bGVzLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
