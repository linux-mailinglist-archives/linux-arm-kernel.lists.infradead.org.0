Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B045F70BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeSQUVjp/izh0vj54xMJmFdjWsS5xPoMWOR8yN8D+wU=; b=qqvowEKwpBKXtd
	jlgxA2dBIznQrk7bAnEFWppoK6ptAUF8H7F1v6H8CmeH+4zT2kpDhfX3aZnEd7xGgNvXHpAxq1ZsV
	ItMqvzPB1MUmVzcgdPLbwjlVFHgEdWk3enrFpO3fIq87e2FD71pBRArVY+ZBAwWwLomY2fP12NqoN
	cYDPALboVeXscNPJSvppsiLV6WgtaQzCsc2k9xsJOBHZUGxQcgO1IH7snZAC7xBXkZH+Zl5zOPTr3
	5/2ZILRJw4Fm3Id3dtb+2uAahHPUAqKu74g77S6miViZ/aqb2t5P4QtwUVK3tRzTVyTbepwyJlWGW
	yHm1uzNjJE6l1rTv0WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU62F-0003b7-Vs; Mon, 11 Nov 2019 09:31:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU624-0003Zi-Tw
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:30:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so12457093wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 01:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=j4UsCyQdcZm2KCJe59FDjzH8nfUWhHJFhxVJ6xfimnY=;
 b=R07dOsYYwpCpFqth2eEc/oCIsVGaao+wJn8wLg/tmKa7DWZrLBWvdgQx9iz4t5Bou+
 NyhMN5nHtROIBDBw/J2CRYIOtN+EXzAti6P8xtElGQWvekQHtrzTT1eBZCFSPGwuzGNu
 iJOqNEoouqVKG5syT/aSf4ScmQTaC4Dm/aumuHvIxx8ScQuOYUQPsTQ8ogi05kcJA2nF
 j77KE5TGXxf7iWtwl1Vu/bowSieiJy/4G5x3mTV7Obk6ktIIcic+E42dTW3WxMSJBEB+
 68IyDuWAADrxnS4xxQ7FliuravZHxaMgwkmsk8Ogdrup6ezZyviq0N4hLN6CZ9tChZSi
 Z2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=j4UsCyQdcZm2KCJe59FDjzH8nfUWhHJFhxVJ6xfimnY=;
 b=iH84cd5ogeau6jcFaWK3vJ2/GUCdhAcaWdkbRtFgwIIxbgN4mDeiwxXOY5QF7wavo1
 NqR8OKjk6ozu2LRfc4RGWCpFQustBgM55iq55fupHaF77EZqDjYzxXq41hiu80YcdL5R
 d7hUCtra5aK5xGDDCLpTowgYI9Te/78vLvKMv4w4g8vVi8I5e+2WWDVwdIgH1hROQnW8
 pMlylEOhUMrInEDCdmwHehrvi6vyKkNCYH1TUhNB+EFMFrNBg2Gu9Vui+MrUjLxdGNa4
 1oRppIe+um7KB+MAn6I4RYNJhH6MpK6uzw1lVoYK0ht8uibgvQx45faQYd4zviWDi1iD
 s+PQ==
X-Gm-Message-State: APjAAAUJysRnkfA3/2/JOusmQCfOXII/ZUxPBEpnqkRRNG/ZliDJhn1I
 77o+3CzrM6iwdKCQmC7HEB4R4g==
X-Google-Smtp-Source: APXvYqz0dNCJqOn51gF9WLKs0blLiqHdYKWXicmqZcGwIqo2oULL5pMRIbpJqhIRh6h98e57UR7klQ==
X-Received: by 2002:a1c:9a81:: with SMTP id
 c123mr18676120wme.118.1573464646982; 
 Mon, 11 Nov 2019 01:30:46 -0800 (PST)
Received: from dell ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id z14sm13555064wrl.60.2019.11.11.01.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 01:30:45 -0800 (PST)
Date: Mon, 11 Nov 2019 09:30:38 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 38/46] video: backlight: tosa: use gpio lookup table
Message-ID: <20191111093038.GA3218@dell>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-38-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-38-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_013048_972260_FDDA46D0 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 dri-devel@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, linux-fbdev@vger.kernel.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOCBPY3QgMjAxOSwgQXJuZCBCZXJnbWFubiB3cm90ZToKCj4gVGhlIGRyaXZlciBz
aG91bGQgbm90IHJlcXVpcmUgYSBtYWNoaW5lIHNwZWNpZmljIGhlYWRlci4gQ2hhbmdlCj4gaXQg
dG8gcGFzcyB0aGUgZ3BpbyBsaW5lIHRocm91Z2ggYSBsb29rdXAgdGFibGUsIGFuZCBtb3ZlIHRo
ZQo+IHRpbWluZyBnZW5lcmF0b3IgZGVmaW5pdGlvbnMgaW50byB0aGUgZHJpdmVycyBpdHNlbGYu
Cj4gCj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gQ2M6IERhbmllbCBU
aG9tcHNvbiA8ZGFuaWVsLnRob21wc29uQGxpbmFyby5vcmc+Cj4gQ2M6IEppbmdvbyBIYW4gPGpp
bmdvb2hhbjFAZ21haWwuY29tPgo+IENjOiBCYXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpv
bG5pZXJraWVAc2Ftc3VuZy5jb20+Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBDYzogbGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQXJu
ZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAKPiAtLS0KPiBJJ20gbm90IG92ZXJseSBjb25m
aWRlbnQgdGhhdCBJIGdvdCB0aGUgY29ycmVjdCBkZXZpY2UgbmFtZXMKPiBmb3IgdGhlIGxvb2t1
cCB0YWJsZSwgaXQgd291bGQgYmUgZ29vZCBpZiBzb21lb25lIGNvdWxkCj4gZG91YmxlLWNoZWNr
Lgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLXB4YS9pbmNsdWRlL21hY2gvdG9zYS5oIHwgMTUgLS0t
LS0tLS0tLS0tLS0KPiAgYXJjaC9hcm0vbWFjaC1weGEvdG9zYS5jICAgICAgICAgICAgICB8IDIy
ICsrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC90b3NhX2Js
LmMgICAgIHwgMTAgKysrKystLS0tLQo+ICBkcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC90b3NhX2Js
LmggICAgIHwgIDggKysrKysrKysKPiAgZHJpdmVycy92aWRlby9iYWNrbGlnaHQvdG9zYV9sY2Qu
YyAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ICA1IGZpbGVzIGNoYW5nZWQs
IDU2IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy92aWRlby9iYWNrbGlnaHQvdG9zYV9ibC5oCgpBcHBsaWVkLCB0aGFua3MuCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
