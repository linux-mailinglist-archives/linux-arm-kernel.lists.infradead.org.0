Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6E81B158
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XH6Y+Dy+1gAko9IBEt219STz6G50L4rnDZF7D7nRlLc=; b=HLtpcJO/SVVWqK
	LS45ulbV2g4FBZvsQv+Y0AD5zcz/on0N3kUkAGVtL0sLEZWZWebVivGoaT0j/FslOSMNhdo19zo59
	Zo6NslRrKm2ZZ/OQuAzHeSD7Q3y4AZtJw/pnjC9DjDZIeZVHcWeO6oaObFE3K/2ygZT08s7hxaPc2
	C34RCwyj6v5+jogG+ZWiLxNasYLfIK3qAJ0lkvRz5p5UQX+sRpemm0NAlIcYYTLJvx1GIde1TfW64
	QKQ4BhYQVTC+xggaiWfS8z1LniZZz7odcMuCCNsqzaWEo/0r5bxiwsk3JZW8G9lMzK5mdBoUuxiQe
	5ynPRHf/fKAf/aq8dZ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5bk-0007OV-QQ; Mon, 13 May 2019 07:42:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5bd-0007O5-73
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:42:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so13973314wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=WERxYzDoS7P0TiPMnvs6x/f95pNMjt2W3p3cXcDJuWk=;
 b=kvhlvPfaHsa2MhLBhlzN7ZeqLc6aNYNtJBpYSOQKMsDjCAV+R3yRNJ+onuLlEL2J0X
 oYeAXvLUyL8GROw/z9W8YdM4VDloh9xKvUi1nVau3ujGsJOJl4DlPaxHmyMpHoYXl2IO
 dj9ZgBVKalBU7BXJwdNbcO/0SfwprNvDDdDk6y5dlhu6Jd2N36ZQvySXgTDSOH3Q82jA
 9OhWkB6B11IOCXhuuQTx6CfPZ5qO3BKywDaYzakxLVNEevUtSznDiWOBvttXz5BvhX53
 GZo86ZkOwe2fuuHlpLC3BFVvIUlkD7QfBxOBtjtUOlt2bRLGyx4S1Me1+MtdiWFWcuJK
 1POA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WERxYzDoS7P0TiPMnvs6x/f95pNMjt2W3p3cXcDJuWk=;
 b=cR1GwQbOIC2C5v6dpIUBe+lZGHMUl8/ajhTWLmwjKNgSJU7DpFfyahmN6r4pIOMGQX
 YO8bd51klNVO/cQ6tPWV71dTosg4lJN58zRslzZUC5L0UPezNaVShkGP64D6Dp394GsO
 0UFVorljdNUFgbqF1sujo3vYKccf+ofMV3SAdEfs6w8z7VAjnxttc/hdZX7zpYGA8M2i
 kvygnUYPhgVDAUrkUPd+UIa1I3zujvGS4NafcGoFyoWOcHOW3LMvqlpPDIKoWgZYRO77
 LpG6Bgy8tFPu1dVqMEHzHK0UrdmaFPih2xGKhz525N/9LkW8IhymIDmflVv8wpHGPm/S
 KWdA==
X-Gm-Message-State: APjAAAX+AUCl0T4s82Q/jz+QHf9/u4Jw4krD+d1bheyMfDpwF0T+i5bQ
 PiRKfC1Cq87n6uif4zR4mkc6ZQ==
X-Google-Smtp-Source: APXvYqyZozQkpGZHOk4y/a4Pt3SprPlhW3ZxFXrms0vy6bx9PRMxI36vjtz603WWWh1jUgXCNGKShg==
X-Received: by 2002:adf:9e89:: with SMTP id a9mr2157887wrf.78.1557733359560;
 Mon, 13 May 2019 00:42:39 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id t18sm27938340wrg.19.2019.05.13.00.42.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 00:42:38 -0700 (PDT)
Date: Mon, 13 May 2019 08:42:37 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: [GIT PULL v3] Immutable branch between MFD and Pinctrl due for the
 v5.2 merge window
Message-ID: <20190513074237.GI4319@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <20190510072314.GC7321@dell> <20190510151556.GA4319@dell>
 <20190510151912.GB4319@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510151912.GB4319@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004241_276238_0CA415FA 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGU5M2M5Yzk5YTYyOWM2
MTgzN2Q1YTdmYzIxMjBjZDJiNmM3MGRiZGQ6CgogIExpbnV4IDUuMSAoMjAxOS0wNS0wNSAxNzo0
Mjo1OCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGVlL21mZC5naXQg
dGFncy9pYi1tZmQtcGluY3RybC12NS4yLTIKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0
byBkMTdlZDc5N2I4ZmQ1Yzg3NjVjZDk1OWFjNDRhYWEyZjA5MGY1YTg5OgoKICBwaW5jdHJsOiBz
dG1meDogRml4ICd3YXJuOiBiaXR3aXNlIEFORCBjb25kaXRpb24gaXMgZmFsc2UgaGVyZScgKDIw
MTktMDUtMTMgMDg6Mjg6MjYgKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkltbXV0YWJsZSBicmFuY2ggYmV0d2Vl
biBNRkQgYW5kIFBpbmN0cmwgZHVlIGZvciB0aGUgdjUuMiBtZXJnZSB3aW5kb3cKCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
QW1lbGllIERlbGF1bmF5ICg1KToKICAgICAgZHQtYmluZGluZ3M6IG1mZDogQWRkIFNUIE11bHRp
LUZ1bmN0aW9uIGVYcGFuZGVyIChTVE1GWCkgY29yZSBiaW5kaW5ncwogICAgICBtZmQ6IEFkZCBT
VCBNdWx0aS1GdW5jdGlvbiBlWHBhbmRlciAoU1RNRlgpIGNvcmUgZHJpdmVyCiAgICAgIGR0LWJp
bmRpbmdzOiBwaW5jdHJsOiBkb2N1bWVudCB0aGUgU1RNRlggcGluY3RybCBiaW5kaW5ncwogICAg
ICBwaW5jdHJsOiBBZGQgU1RNRlggR1BJTyBleHBhbmRlciBQaW5jdHJsL0dQSU8gZHJpdmVyCiAg
ICAgIHBpbmN0cmw6IEtjb25maWc6IEZpeCBTVE1GWCBHUElPIGV4cGFuZGVyIFBpbmN0cmwvR1BJ
TyBkcml2ZXIgZGVwZW5kZW5jaWVzCgpMZWUgSm9uZXMgKDIpOgogICAgICBwaW5jdHJsOiBzdG1m
eDogRml4ICd3YXJuOiB1bnNpZ25lZCA8VkFSPiBpcyBuZXZlciBsZXNzIHRoYW4gemVybycKICAg
ICAgcGluY3RybDogc3RtZng6IEZpeCAnd2FybjogYml0d2lzZSBBTkQgY29uZGl0aW9uIGlzIGZh
bHNlIGhlcmUnCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50
eHQgICAgfCAgMjggKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9waW5jdHJsLXN0
bWZ4LnR4dCAgfCAxMTYgKysrCiBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAxMyArCiBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tZmQvc3RtZnguYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCA1NDUgKysrKysrKysrKysrKysKIGRyaXZlcnMvcGluY3Ry
bC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE0ICsKIGRyaXZlcnMvcGlu
Y3RybC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMv
cGluY3RybC9waW5jdHJsLXN0bWZ4LmMgICAgICAgICAgICAgICAgICAgIHwgODE5ICsrKysrKysr
KysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9tZmQvc3RtZnguaCAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxMjMgKysrKwogOSBmaWxlcyBjaGFuZ2VkLCAxNjYwIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL3N0bWZ4LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL3BpbmN0cmwtc3RtZngudHh0CiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvc3RtZnguYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xp
bnV4L21mZC9zdG1meC5oCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
