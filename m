Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032CB4F9E1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/zeWYNQZe9fI8X9flmIombnsI6S1opMP4q82+ZwBx4=; b=rtqNJ5CsT8HS5r
	3BNDZbfPhUoIyj4xgmlCK4045ljn/eMOKpjPwe5Zl58B99msaSNrL5PtLSbcnGiUDjP1DdRX3B6aQ
	GLPnNtN0W9jzr5PBzbW48aMHfmedhukOKZvV/8C64Np+Br7PYHMFFwGSfhximTysa5ah41BYbKpTg
	e2TxijcBjqcDZgUQaON1WX6a3bOglh62C53puZ/xBwOXsPRVRCP/ylHE1i5rsF/kmLhKpWgdNxr03
	BLZrXVepf9CQ+i1i1YwizDsSFQb+r9vdg4x0FMjdZuHNgs+rGHY5pJMSowd7wNgLwgg2fSa9RwAll
	vY6U9YtN67V4KfZc8BMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heu9s-0004tt-94; Sun, 23 Jun 2019 04:31:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heu9f-0004tN-1x
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:31:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so9421500ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 21:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=hGiEqlRc5MJLXesODiy0ME7Yviwr/0syQWplXoAFPOw=;
 b=R1eHZVqjPIG79KkzlAK+XWzgqRQm6QGaPiBBa+VuPcJwD5/fXuEZZKUSQAcZBZDO5u
 /BNXmVzHrJfQg9hWSul7X6EfSGBqU1q357MNfloOkJwW0V+T6lfb8VHHmyMgwh7dnJcv
 6K5o7oSp62Yftv/YsN1tf6XgKT6AEIUhBmTyA+wSRhArkmazXIvH6FPgo3tPnQj5Tl+t
 aEj7FNvx9+i+sIgListx7TMmXsG7w50NwOizSJVQOT9Lv2CGNuPOv/XLi51x7RF8bIOl
 eUxr5NC/xGBMPSJb5JhxTpbWgrtDJsdTRQ4yYgdnYs5sd6RSLXmzrewvegVxJJnzwFZ0
 KTpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=hGiEqlRc5MJLXesODiy0ME7Yviwr/0syQWplXoAFPOw=;
 b=GFoYUbqdh1wSLcR+1BRqQ3SvIebqeLnKXFZLU62107r93CoIhQ7vIqLqpdt+OIkZ95
 FdCirXjnZi/CdLZcHqX84sOfQhMw71mnt6e72RVdYG09tj7eIcTjJ+rjdGlgq9bTVU2M
 /X1DmZVjx0a/4kyWAbT94KDtSHCLagutGxLldeMFmbVcOh16GNVxOZcu5aLoPvOVrP5p
 mMZpI6oai71D0QNfOyxHMtyAfMvj3RinSYKb+MdTJ3VFJpbEtcnKhoFIBXcXJvYO/dqp
 dDxO/K67GvQzit4i9JRPyfqTENZu/IsRPp14J6H9IE8xankIVymqpOQay0TgVwk/ggxu
 JMJQ==
X-Gm-Message-State: APjAAAXTfIb71+sdSiXxXbT94FAoagWrxY/5uXxz+zWRLgE00h9fxD7n
 K2FbB0ibIfvn2HbWfctQXs97GQYkkYglSQmvvJ0=
X-Google-Smtp-Source: APXvYqwMu5YzC6WJljI3IPIZfrsR5mXPbLbjlkf8bI8RZFs7OsvPB751t90niZpM5oV+SbbvBvdyhggWKqUyc6J3HCE=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr41171796ljw.13.1561264259868; 
 Sat, 22 Jun 2019 21:30:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190621180208.25361-7-krzk@kernel.org>
 <20190622191838.29850-1-krzk@kernel.org>
In-Reply-To: <20190622191838.29850-1-krzk@kernel.org>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Sun, 23 Jun 2019 13:30:23 +0900
Message-ID: <CAGTfZH2g6E2pCEtqjfCd+PjEzjwc2AB75LXJfCeO+PcYLiLTUw@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: defconfig: Enable Panfrost and Lima drivers
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_213103_104486_83890D47 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: cwchoi00@gmail.com
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKMjAxOeuFhCA27JuUIDIz7J28ICjsnbwpIOyYpOyghCA0OjIwLCBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+64uY7J20IOyekeyEsToKPgo+IEVuYWJs
ZSBzdXBwb3J0IGZvciBNYWxpIEdQVSB3aXRoIFBhbmZyb3N0IGFuZCBMaW1hIGRyaXZlcnMgZm9y
Ogo+IDEuIFNhbXN1bmcgRXh5bm9zNTQzMyBhbmQgRXh5bm9zNyAoaGF2aW5nIE1hbGkgVDc2MCks
Cj4gMi4gQWxsd2luZXIgQTY0IGFuZCBINSAoTWFsaSA0MDAvNDUwKS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPgo+IC0tLQo+Cj4gQ2hh
bmdlcyBzaW5jZSB2MToKPiAxLiBFbmFibGUgTGltYSBkcml2ZXIKPiAtLS0KPiAgYXJjaC9hcm02
NC9jb25maWdzL2RlZmNvbmZpZyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3Mv
ZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZwo+IGluZGV4IGZiYmMwNjU0
MTVkNC4uM2QzMTYxMTM2OGFmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvY29uZmlncy9kZWZj
b25maWcKPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gQEAgLTUxOCw2ICs1
MTgsOCBAQCBDT05GSUdfRFJNX0hJU0lfSElCTUM9bQo+ICBDT05GSUdfRFJNX0hJU0lfS0lSSU49
bQo+ICBDT05GSUdfRFJNX01FU09OPW0KPiAgQ09ORklHX0RSTV9QTDExMT1tCj4gK0NPTkZJR19E
Uk1fTElNQT1tCj4gK0NPTkZJR19EUk1fUEFORlJPU1Q9bQo+ICBDT05GSUdfRkI9eQo+ICBDT05G
SUdfRkJfTU9ERV9IRUxQRVJTPXkKPiAgQ09ORklHX0JBQ0tMSUdIVF9HRU5FUklDPW0KPiBAQCAt
NzE4LDcgKzcyMCw2IEBAIENPTkZJR19BUkNIX1RFR1JBXzE5NF9TT0M9eQo+ICBDT05GSUdfQVJD
SF9LM19BTTZfU09DPXkKPiAgQ09ORklHX1NPQ19UST15Cj4gIENPTkZJR19USV9TQ0lfUE1fRE9N
QUlOUz15Cj4gLUNPTkZJR19ERVZGUkVRX0dPVl9TSU1QTEVfT05ERU1BTkQ9eQoKRXh5bm9zNTQz
My10bTIgYm9hcmQgc3VwcG9ydCB0aGUgZXh5bm9zLWJ1cyBkZXZpY2Ugd2hpY2gKdXNlZCB0aGUg
c2ltcGxlX29uZG1lbmFkIGdvdmVybm9yIG9mIGRldmZyZXEuCldoeSBkbyB5b3UgcmVtb3ZlIHRo
aXMgY29uZmlndXJhdGlvbiBmcm9tIHRoZSBkZWZjb25maWc/Cgo+ICBDT05GSUdfRVhUQ09OX1VT
Ql9HUElPPXkKPiAgQ09ORklHX0VYVENPTl9VU0JDX0NST1NfRUM9eQo+ICBDT05GSUdfTUVNT1JZ
PXkKPiAtLQo+IDIuMTcuMQo+CgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
