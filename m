Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042CA533B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HABWb5idTpHl/YZdH7P3zsyZf2WfHenGMB64X+29iuQ=; b=rRVA8mZetb4Tzt
	Bj7HAN05/yz1ZkDXkOpEv+SRilKaJRztw3C76MzvQCxh/TDsU/G1Qx3WTqUI40MagqsIKLG7LtCHC
	kbGkkTjnHP8FvgLQVG+Pyz2SFUahHETLXK/f3jwe4/CnPKjT8ulSbwIi/wMjaJOEHOVygOA81UkM1
	LFxxDqr/lNRmDTJgrQqbBskmZ/h81Qrv034IsJGYzI3vhEhyutBImvUKQMv8VSCQu/1RHn1ki2cac
	xh1zAfT80GJhlwRkOwPS7q+6eI/pkX/0/0YoyPzhQsi0lLtZCQcTaetT5v69ngBm3PP7+z9V2j2wD
	k+k0jxrgjMIGdHKzAebA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4itX-0006so-Ki; Mon, 02 Sep 2019 09:45:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4itF-0006qN-Iz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:44:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so13334955wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
 b=CmcNGkZYbOXX56CkkyUQiEcj2V/JwCX/HPonVAuRIH/jfFxLuIXgB/AQ67mn1ufEGG
 kg2qfhRcSGATrqKjKdds6Tp3aqpt29i4pYMDp4zrA2C/2v1vDDR9SlkRMDr11o7EdUBb
 qCQ7gKVZ8awETYWQ8cpQ09UfE3qotA+q3rmDNURtCvoBXgBeS8/MYX3qbfgsnzRNatc7
 lO/hXSzdOPqYfFqBKmjzdTfF3D8nKgBHZWKIx3YXfG5WMLX+qb2icEeOW7r5XJjCs54C
 t+YvB/Ymr7JjDpaxktA9g5I+a7eHzMNHeJjNoE96/Ag9zpbphvfNXea4hrooRMzrSS7b
 uZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qd++qlXo+afPltQBesGSfDh/78ykDbV4CflLE8Z4FBI=;
 b=BkTGmHDJ3+5Fiilou9NR7LUgunhg+qX2Byw11HbCobvKuoZKOwZ0GEIpjl3lvi0U1X
 +je2PZaG8trjKmTqBrDlBOG30On5YXuQU9h0tPIMpjz2mGBI4ibC8nZw1D9mgIOu1zx5
 O7F/FHYLGv9hMUgvOF7FN5Q7cbPSUgrnAi0vCk/PlNU/0xaSNggDHIJxQKj+pM8aLsKo
 /4oKNgUAUhyoIHrY5tgkWPQsEO6LBfEu6rqAKUR6f6dscndBS0dP9DfeOtmAUeWLlKvq
 HqTtjgVMCYyCMdAL5hvqNqxZzeNsD0nq9M4BqIqBnCD19Y1kmK/7um5PIOmszgAujN4K
 NthQ==
X-Gm-Message-State: APjAAAVEhipbBrMK5tEzj04/+d71j/UUjMZFRs2aUI/Aj07Uya5NvTcj
 32WI3xyoKapP6r8S0Lma6Poymvv9LwUs+Q==
X-Google-Smtp-Source: APXvYqzBC9wQvqJpV9XW7R3+58fb834Rs94m6nZbv917724zDE4pMNUIC8FJHqYHZ/5VOym469o4yA==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr31602370wrn.62.1567417487988; 
 Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id y6sm4378512wmi.14.2019.09.02.02.44.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:44:47 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:44:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 03/13] dt-bindings: mfd: mediatek: add mt6323
 power-controller
Message-ID: <20190902094445.GR32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-4-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024449_628789_F2A48DAF 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gLSBhZGQgcG93ZXJjb250cm9s
bGVyLXNlY3Rpb24gdG8gZXhpc3RpbmcgYmluZGluZy1kb2N1bWVudAo+IC0gYWRkIG10NjMyMy1w
d3JjIGJpbmRpbmdzLWRvY3VtZW50IHdpdGggZXhhbXBsZQo+IAo+IFN1Z2dlc3RlZC1ieTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9zZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVkLW9mZi1ieTogRnJh
bmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gQWNrZWQtZm9yLU1GRC1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNl
IHY1OiBzcGxpdCBvdXQgbm9uLXB3cmMgcmVsYXRlZCBjaGFuZ2VzCj4gY2hhbmdlcyBzaW5jZSB2
NDogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiBjaGFuZ2VzIHNpbmNlIHYyOiBub25l
ICg9djIgcGFydCA3KQo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2Mzk3
LnR4dCAgICAgICAgfCAgNiArKysrKysKPiAgLi4uL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L210NjMy
My1wb3dlcm9mZi50eHQgIHwgMjAgKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDI2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYudHh0CgpBcHBs
aWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBU
ZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
