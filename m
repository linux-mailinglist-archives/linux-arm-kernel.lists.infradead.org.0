Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544DD43469
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heYq9C4LkSaurRGTqWd7Qlo1Q4xWpfrTHKCacVTc8+g=; b=HkfpIHaf0YRNDC
	csDONpo2jpVrMutOgoz83gYVG6HYyvvtUdUp4xeVKwPfFQpO3gV5f4MHydIMC5Wn+fkEpQGgy8qbO
	WE0XISvrkRpl9IdV5wqn44fU7a0f7drNNmkZmjmdPbCu04Zx+7Qh+oCf5ag1VycH8QAVuyCxMrcv5
	aSAhAls4rSD1w076T1cZFkcnSDEa2cCvIE9DT+8g+pTZ2qq6gNw0k3kXkjuM+g81Vw1+YMJtUca8A
	blhfj3liuEmz/DHmH06OWKFDSXGK3WOMNd8gy66jbFvapA6xXY1baIU0ZfV4Y/Rr4iBqCw+hKSxuq
	Z7L7V7+3Fq2sho/FcrZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLTw-0003sP-Ea; Thu, 13 Jun 2019 08:53:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLTe-0003rY-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:52:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so9200527wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 01:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Lcs2ag+JWd9LLpjNoidl6yxCYy5aNsRikxLQuGKzVzU=;
 b=aThNGW7+I2PxRdhTNPV1LIhF0/5UJHVr6LSBQpWYfs9mymFpbdG0+eLwcuD+s8sSB5
 CHOJAEAIZTXTkJqs/TqV6VH1/6I6+rikSUTduZJCk79S8Hk9UfkJ1XfHzjMkHtKZs0tK
 ZlBBsvvs+mVji5Lwc21wIDSZNvTHmP3HB49j6W+heCALno3MD9xs+WEpPpN3zFjxXiOW
 O7iuKmnGS4AljVYDGrYPvT2Yi9OBB+FCXpttSSbyOBt8OTsYQ0IUGeJVZnFrz6QJFn6Q
 s8LeaL9BzwtyyXFLkJGfTsRJTTnS+kmZHtYyXuE97oWxfqxjy0Dx5PgKSMOvcQF8yleU
 B1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Lcs2ag+JWd9LLpjNoidl6yxCYy5aNsRikxLQuGKzVzU=;
 b=DLV8Oxvf+4dC6YK/Axla0LmmnhTOcqNTrffO5RiuywaDit8uBNp2qaUzkyuAHicP/J
 XaUPmISeQx+I4eX2IZWa+qBpI8ZUEzvyqh1YYqSX3WHAPoiZOCYXgkbm3RS8rlBr++jt
 22uiYDD7Kd5vOTEfHxDakqDRV7yPKH8VlzyVNDrjUZlxlSJKVMD/JrSj+Q0ci1a6Srpn
 v0kXMTzS4OOAD8c9Sv5NDBdYFG0mvT+MatJlmxLP+ts83iNOdBVeqD56Mnd0dxQr7d3v
 ADSf7SUVD/LvHcEb2p8ltQbKJUQmzsqMFwDKOQ5idu8418B1QtPiqY4ruDcrOKwxXB0/
 nXUQ==
X-Gm-Message-State: APjAAAVSokb6CVgJd5gNr3uiDFlrnxO/Ql72rDarCvqODtbw1HQ46sEA
 ZfY1ApaGjl11YFAxiCdpV3Yk6A==
X-Google-Smtp-Source: APXvYqybK0Nj/fHviz/pGDZHrRpbNts9oH2DSs1lQLgmXDT7aDSFDqouW7z3b4vqEk65dYuSlWyFoA==
X-Received: by 2002:a7b:c776:: with SMTP id x22mr2668542wmk.55.1560415976540; 
 Thu, 13 Jun 2019 01:52:56 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id c5sm1837184wma.19.2019.06.13.01.52.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 01:52:56 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:52:54 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190613085254.GA16364@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190612103453.ccet2pneairnlpcc@ninjato>
 <20190612104011.GA4660@dell>
 <20190612104459.gvji3qxym5s4odfq@ninjato>
 <20190613085204.GF4660@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613085204.GF4660@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_015258_175182_3C59F868 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMyBKdW4gMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBXZWQsIDEyIEp1biAy
MDE5LCBXb2xmcmFtIFNhbmcgd3JvdGU6Cj4gCj4gPiAKPiA+ID4gVGhlcmUgYXJlIG5vIGNyb3Nz
LXN1YnN5c3RlbSBidWlsZCBkZXBlbmRlbmNpZXMgb24gYW55IG9mIHRoZXNlCj4gPiA+IHBhdGNo
ZXMuICBUaGUgb25seSByZWFzb24gdGhleSBhcmUgYnVuZGxlZCB0b2dldGhlciBpbiB0aGUgc2Ft
ZQo+ID4gPiBwYXRjaC1zZXQgaXMgZm9yIGNyb3NzLXN1YnN5c3RlbSB2aXNpYmlsaXR5IGFuZCB1
bmRlcnN0YW5kaW5nLgo+ID4gPiAKPiA+ID4gVGhlcmUgaXMgd2lkZSBpbnRlcmVzdCBpbiB0aGVz
ZSBkZXZpY2VzLgo+ID4gCj4gPiBJIHNlZS4gVGhhdCB3b3VsZCBoYXZlIGJlZW4gYSBncmVhdCBj
b3Zlci1sZXR0ZXIsIExlZSA7KSBUaGFua3MgZm9yIHRoZQo+ID4gaGVhZHMgdXAhCj4gCj4gOikK
PiAKPiA+ID4gPiBBbHNvLCB0aGUgY3VycmVudCBtYWludGFpbmVyIGVudHJ5IGZvciB0aGlzIGRy
aXZlciBsb29rcyBsaWtlOgo+ID4gPiA+IAo+ID4gPiA+IGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMt
cWNvbS1nZW5pLmM6Cj4gPiA+ID4gICAgICAgICBBbmR5IEdyb3NzIDxhZ3Jvc3NAa2VybmVsLm9y
Zz4gKG1haW50YWluZXI6QVJNL1FVQUxDT01NIFNVUFBPUlQpCj4gPiA+ID4gICAgICAgICBEYXZp
ZCBCcm93biA8ZGF2aWQuYnJvd25AbGluYXJvLm9yZz4gKG1haW50YWluZXI6QVJNL1FVQUxDT01N
IFNVUFBPUlQpCj4gPiA+ID4gICAgICAgICBBbG9rIENoYXVoYW4gPGFsb2tjQGNvZGVhdXJvcmEu
b3JnPiAoc3VwcG9ydGVyOlFVQUxDT01NIEdFTkVSSUMgSU5URVJGQUNFIEkyQyBEUklWRVIpCj4g
PiA+ID4gCj4gPiA+ID4gSSBkaWRuJ3QgaGVhciBmcm9tIHRob3NlIHBlb3BsZSB5ZXQsIHdvdWxk
IGJlIGdyZWF0IHRvIGhhdmUgdGhlaXIgYWNrcy4KPiA+ID4gCj4gPiA+IEkgd2lsbCBzZWUgaWYg
SSBjYW4gcm91c2UgdGhlbSBmcm9tIHRoZWlyIHNsdW1iZXIuCj4gPiAKPiA+IFBsZWFzZSBkby4g
SWYgdGhleSBhcmUgbm90IHRvIHJlYWNoLCB3ZSBwcm9iYWJseSBuZWVkIHRvIHVwZGF0ZSB0aGUK
PiA+IGVudHJ5Li4uCj4gCj4gSSBjb250YWN0ZWQgYm90aCBvZiB0aGVtLgo+IAo+ICBBbmR5IGRv
ZXNuJ3QgdG91Y2ggYW55dGhpbmcgdGhhdCBpc24ndCBRVVAgYmFzZWQgKDg5OTQgYW5kIG9sZGVy
KS4KPiAKPiAgRGF2aWQgZG9lc24ndCBkZWFsIHdpdGggTVNNIHBsYXRmb3JtcyBpZiBBbmR5IGlz
IGF2YWlsYWJsZS4gCj4gCj4gU28gSSBndWVzcyB0aGUgZGVjaXNpb24gaXMgeW91cnMuICBTZWVp
bmcgYXQgdGhpcyBwYXRjaCBpcyBwcmV0dHkKPiB0cml2aWFsIGFuZCBoYXMgb3VyIEFDUEkgZXhw
ZXJ0J3MgQWNrLCB0aGUgZGVjaXNpb24gc2hvdWxkbid0IGJlIGEKPiBkaWZmaWN1bHQgb25lLgoK
QlRXLCB2NCBoYXMgY29sbGVjdGVkIEFja3MgYW5kIGEgY292ZXItbGV0dGVyLiA6KQoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
