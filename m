Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAED13DF17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVz/qBjFHeRDs6vfCyXgXnO2kpAFQqCgpblHUM8UGlY=; b=qTFcJrlJFVaGdj
	LHL4er54Q0k+X23o401P9m/ef+OK4stzlyQ9g+FouSMv8uPwUcZ/15Aw2w3xf0TE+7ehf2DVuCgfm
	5aMXa1/Oh49rbdquLKU+0RP67ClrKMXZ6FnjqKthbM+os+Inl8MQuqH6x4NxIMPrfMcr0CqoVASdc
	kZ15V0SN9+++dzLYsfMaP9ATgYf6hYMj+16iMRIRw5Bk6xODZzeTJz0YHGwAlev3VpTm2ssgyuxCe
	FAuWvJK9hqp+CzkMHWWuvN0EfnURa5AkYqM8vVwSpcMC/Sbnq0FwpT56vwU2deb3CiOUk63tEPUES
	Ggthj3NaGpvc1vZsv79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7KH-0003yQ-J6; Thu, 16 Jan 2020 15:44:53 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7K3-0003xn-2K
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:44:43 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so19220188qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gS/fHlu1Oq+hOaHui9eyrfBYKZOt+Ph3ppYSp+KEj84=;
 b=TuZrRDRrFT+WCptl4jtudlerse96sZuVq1zCdH/vK0dfPQ5xrQ8yUIzMfOapTXR9y4
 2ibPZdeO3cq4uS1KiYsYbV9RRHau1FtdADF2iknc6ur7M5Hbe02w+NYCZSev5tkOuh9y
 ePPUYQ5Bh8gV7wWIJjAdFBo2Fr7l9sacP/LpMALL0xuGORiaeTm3/ovoKyoLmwkFKklD
 6sSWGaW4m6iXLGFz46GxeiCxLNa8KvJnVQcgvCjOULKu8FKZMzC5iRUJ3iQ4JETxnPHt
 2cnmYanX1iTd7BIvnEBMBduu9aAm6DnKlJHyGdk6ZlhC2lQ9nUkBPOSsLwHSjr/FwcCE
 zFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gS/fHlu1Oq+hOaHui9eyrfBYKZOt+Ph3ppYSp+KEj84=;
 b=KSzM+rGUe3CsVetdSntkOrtjh401W16q1EzsGUQVTi7E+C6qtafQ/c2+krhYdLjNsL
 BOiJZhk0awN9zfj+6mgpvFz6p7isnw4mJj9UZkdQ2XdkeqQtdlaFni6ebS+bVARH4oOL
 a4Rgftj5iDMaICTMEtrBi262iR9kvCDiVMiKhbKmKF4FdZdrwB+RkFEOEzSv+OEKlCpp
 5bQR7hZ7YgRIxr6A50z/vKt5PRjjee9L4k/yukUN586GzTLjPxDiXHsZUzjWBzD6Lgmv
 c8Xybs8a9LDtl/ns+opkpAS6Yk9ToIEmpk+vuafY386+JnWUvhdupuy9tf6q4rRLu2Cy
 eZAw==
X-Gm-Message-State: APjAAAW6UAPQUsLK6ziCwyh90RFmweE7I5AvXB6pY6VLHbtIducwS79y
 lAKvC/p7ncQnTlMkC7WT5Svj8Er1MFOWUaD3IOfWGQ==
X-Google-Smtp-Source: APXvYqxNeltlsFc5Dxrse9Z755UY41N7ksUFlORuO7LHPKeYC0Mo2wcnrf5mqiMyXQzUM4vECUHukncA86I8+8DwzWQ=
X-Received: by 2002:aed:2d01:: with SMTP id h1mr2976756qtd.239.1579189477572; 
 Thu, 16 Jan 2020 07:44:37 -0800 (PST)
MIME-Version: 1.0
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-3-benjamin.gaignard@st.com>
 <CACRpkdaK+kQZH_Txu-r4DY_m6muh26aCWcGOkxbi8hbCgww28A@mail.gmail.com>
In-Reply-To: <CACRpkdaK+kQZH_Txu-r4DY_m6muh26aCWcGOkxbi8hbCgww28A@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 16 Jan 2020 16:44:26 +0100
Message-ID: <CA+M3ks7s_KOhXciJPZc3N4z9GNkiKa=fWdQ3hC_HTtrWMWYHtQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] clocksource: Add Low Power STM32 timers driver
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_074439_166132_77C492F0 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Pascal PAILLET-LME <p.paillet@st.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAxNiBqYW52LiAyMDIwIMOgIDEwOjA3LCBMaW51cyBXYWxsZWlqCjxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+IGEgw6ljcml0IDoKPgo+IE9uIFRodSwgSmFuIDksIDIwMjAgYXQgMzo1
NCBQTSBCZW5qYW1pbiBHYWlnbmFyZAo+IDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+IHdyb3Rl
Ogo+Cj4gPiBJbXBsZW1lbnQgY2xvY2sgZXZlbnQgZHJpdmVyIHVzaW5nIGxvdyBwb3dlciBTVE0z
MiB0aW1lcnMuCj4gPiBMb3cgcG93ZXIgdGltZXJzIGNvdW50ZXIgcyBydW5uaW5nIGV2ZW4gaW4g
d2hlbiBDUFUgaXMgaW4gc3RvcCBtb2RlLgo+ID4gSXQgY291bGQgYmUgdXNlZCBhcyBjbG9jayBl
dmVudCBicm9hZGNhc3RlciB0byB3YWtlIHVwIENQVXMgYnV0IG5vdCBsaWtlCj4gPiBhIGNsb2Nr
c291cmNlIGJlY2F1c2UgZWFjaCBpdCByaXNlIGFuIGludGVycnVwdCB0aGUgY291bnRlciByZXN0
YXJ0IGZyb20gMC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogUGFzY2FsIFBhaWxsZXQg
PHAucGFpbGxldEBzdC5jb20+Cj4KPiBMb29rcyBnb29kIHRvIG1lOgo+IFJldmlld2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpIaSBMaW51cywKClRoYW5r
cyBmb3IgeW91ciByZXZpZXcuIEkgaGFkIHRvIHJld29yayBhIGJpdCB0aGUgZHJpdmVyIHRvIHNv
bHZlIHRoZQpiaW5kaW5ncyBpc3N1ZXMKc28gSSBoYXZlbid0IHB1dCB5b3VyIFJCIG9uIHZlcnNp
b24gMi4KCj4KPiBJZiB5b3UgaGF2ZSBhIHNwYXJlIGFsd2F5cy1vbiB0aW1lciAoYW5kIGl0IGxv
b2tzIGxpa2UgeW91IGhhdmUpIHdoaWNoCj4geW91IGNhbiBzZXQgYXMgZnJlZS1ydW5uaW5nLCB5
b3UgY291bGQgcmVnaXN0ZXIgaXQgd2l0aAo+IENMT0NLX1NPVVJDRV9TVVNQRU5EX05PTlNUT1Ag
c28gaXQKClRoZSBkcml2ZXIgb25seSBpbXBsZW1lbnQgY2xvY2sgZXZlbnQgZmVhdHVyZSBzbyBJ
IGRvbid0IHRoaW5rIHRoYXQgaXMKZmxhZyBpcyBhcHBsaWNhYmxlLgoKUmVnYXJkcywKQmVuamFt
aW4KPiBrZWVwcyB0aGUgc3lzdGVtIGNsb2NrIHRpY2tpbmcgYWxzbyBkdXJpbmcgc3VzcGVuZCBh
cwo+IGFsdGVybmF0aXZlIGNsb2NrIHNvdXJjZS4KPgo+IFlvdXJzLAo+IExpbnVzIFdhbGxlaWoK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
