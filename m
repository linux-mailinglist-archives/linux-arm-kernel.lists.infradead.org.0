Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B123294E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDNvWklpejD7VzzH8Wq8EeYLgcGKbv6HxRPFPArvR30=; b=jyTRT9L4KCLSzi
	AmGmG5QgbXjLteL3jPCWjbtL5BT+DzFBEdjjfaCXFFJwU/W7gJI/XwAFzkkatbwtHgG3Smh+3Sbpo
	W50SXRhHT9AzXNAoHAm+jWKpNz8jIdIPo/LMVrSeBynUY+zRxaicKZU2dPJAdqoTw7F4gwkO11aqz
	TfnpHzLD7Kf8CMXCLHk1IAjseMnCMUqf5Y/i78Es7WYjW3JdZXGCiKcXRg9VJ5raKUZApVYqOtg6T
	BYGBBtwnX5TpbYEgaYD6NIXKN108dgiTuVRnEkvCW9tjp+bxy2peQAg3hJ2o1s76NKghbmEh1SW+i
	5yyzth2RE6q35SLH3Kgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhKG-0007xd-FO; Mon, 03 Jun 2019 07:24:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhK8-0007wa-Ov
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:24:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so10832051wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 00:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6ntfRdLCd+I6+09GVECx+yr8Tcx+Tf8xlZvw6c2Yxtw=;
 b=JnySwxG8AeComsjWCZPtzks1WfiiKMFfES+2KGsgVvDO7sBNEbujRxKnusEaaYU0uW
 z1KtHAi7P1RAMiKxpuWf4DjizGH/MTltg0NHvjsci8/kJHvGus13A4FCUnpkhSc7isOc
 Mvc1SJrlMwTbdGp43iH6V69MxdKhoZR20bfoGZ0VaHTZ5aooZhvfqJa65R3RjRbKwMHX
 ipA6fzS4frednIcJP+jMCH9DNKNv8rQmBKaExIvcsKQb2C/K94+W6XGakTJByGHYybDr
 8Yd+B6rNmdPB57o3sD8G5xZdtEYTYSjDAtybvxcTbR1P7UFjA18za29nlm+iedBEnEz0
 TPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6ntfRdLCd+I6+09GVECx+yr8Tcx+Tf8xlZvw6c2Yxtw=;
 b=H7v10Ct2WMWPMhtGZFQImDZrUAsG4lyNxHyoSYz5D6FYKOSzc5EESlBDX0YahExjyy
 QUXcnCZZmA1XHdiGm6AYxCXxLX7FifRLb+SCyfviNlJQxZs82J1L52OLTKY3He2uC0l9
 e6ewDaYVjkIFIEGNcq/RVuuNsMRdcNE5lIholdLHvhF9+wAj84ewYdVq+PodnXbyrlJw
 oF+FDm6Y5jd2eaLGp/fQ7xUeO/6alCAaX7+f4UcGS4cXV03dmgEsIG3cJwdDMZeAxQqd
 4L48Vtmck3bAJfDfcvCe3JgkjbgnNgMxHckGdnRKAEBxThc1DieFA8M1XQiU1VIXFkSi
 s2LA==
X-Gm-Message-State: APjAAAV4O1h8X534Af9iSaGBBWZUdWWl2qxcueh4ugWuOI9gXO93rqnx
 n41o4uM9Ky6KtecioqniCfPZ1g==
X-Google-Smtp-Source: APXvYqwijnyKnEcwiaeCD0oLtjzz+oLNnCC2NhUhgMuXI+uYCjlywrRH1gpkeQ+dhxoRNsufQtxniQ==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr1342400wrm.218.1559546642621; 
 Mon, 03 Jun 2019 00:24:02 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 3sm10046338wmj.21.2019.06.03.00.24.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 00:24:02 -0700 (PDT)
Date: Mon, 3 Jun 2019 08:24:00 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v8 0/5] support a new rk80x pmic-variants (rk817 and rk809)
Message-ID: <20190603072400.GD4797@dell>
References: <20190508143713.27954-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508143713.27954-1-heiko@sntech.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_002404_956637_7386BC29 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: huangtao@rock-chips.com, broonie@kernel.org, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBNYXkgMjAxOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IEkndmUgcGlja2Vk
IHVwIGFuZCByZWJhc2VkIFRvbnkncyBwYXRjaC1zZXJpZXMgZm9yIHJrODA5IGFuZCByazgxNy4K
PiBGcm9tIHRoZSBsYXN0IGl0ZXJhdGlvbiBpdCBsb29rcyBsaWtlIHRoZSByZWd1bGF0b3ItcG9y
dGlvbiBkaWQKPiBmYWxsIHRocm91Z2ggdGhlIGNyYWNrcywgdGhlIG90aGVyIHBhdGNoZXMgc2Vl
bSB0byBiZSBzdWZmaWNpZW50bHkKPiByZXZpZXdlZC9hY2tlZC4KPiAKPiBUaGUgcmVndWxhdG9y
LXBhdGNoIGNvdWxkIGVpdGhlciBqdXN0IGJlIHBpY2tlZCBhbG9uZSB0byB0aGUgcmVndWxhdG9y
LQo+IHRyZWUgb3Igd2l0aCBhbiBBY2sgZ28gdGhyb3VnaCB0aGUgbWZkIHRyZWUgd2l0aCB0aGUg
b3RoZXIgcGF0Y2hlcy4KPiAKPiAKPiBPcmlnaW5hbCBjb3Zlci1sZXR0ZXIgKyBjaGFuZ2Vsb2cg
Zm9sbG93czoKPiAKPiBNb3N0IG9mIGZ1bmN0aW9ucyBhbmQgcmVnaXN0ZXJzIG9mIHRoZSByazgx
NyBhbmQgcms4MDggYXJlIHRoZSBzYW1lLAo+IHNvIHRoZXkgY2FuIHNoYXJlIGFsbG1vc3QgYWxs
IGNvZGVzLgo+IAo+IFRoZWlyIHNwZWNpZmljYXRpb25zIGFyZSBhcyBmb2xsb3dzOgo+ICAgMSkg
VGhlIFJLODA5IGFuZCBSSzgwOSBjb25zaXN0IG9mIDUgRENEQ3MsIDkgTERPcyBhbmQgaGF2ZSB0
aGUgc2FtZQo+IHJlZ2lzdGVycwo+ICAgICAgZm9yIHRoZXNlIGNvbXBvbmVudHMgZXhjZXB0IGRj
ZGM1Lgo+ICAgMikgVGhlIGRjZGM1IGlzIGEgYm9vc3QgZGNkYyBmb3IgUks4MTcgYW5kIGlzIGEg
YnVjayBmb3IgUks4MDkuCj4gICAzKSBUaGUgUks4MTcgaGFzIG9uZSBzd2l0Y2ggYnV0IFRoZSBS
azgwOSBoYXMgdHdvLgoKTG9va3MgbGlrZSB0aGlzIHNldCBpcyBzdGlsbCBsYWNraW5nIGEgUmVn
dWxhdG9yIEFjay4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
