Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA9D8171D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjNuCSMgVfeGUK24AjJ3LHakT11zuW06FNZpPNw0MGw=; b=XFTJcpGTc56mhS
	kMrPmYmFhce5FO7JQFozlkINVrP4i0HOGfn9KHiMi0wWbhG4qxT8vghoDXkzHG6F1yfmkj5j8iX6b
	DgM4CJF7RCQleeHsDfkzBLaWqzkiapwzTg0Tt5qzwX+Acv7J9tOPbBdCvSVWbNgig+ERT+7F7oN0S
	fsFx20VCB7j2BzoM9KWF0dz34x24HStKU67ht8DZ93IHXqdPF1F8HmWVqqeyA3d1QAQlngqudGbOP
	7wvBuWmi6XjGjzUL/JjUEEpGcCieV4OP/ACVd0vevi0uyzXFtDYBAOPbtoFKZPSLHX1FSIk0CbslI
	22oIR04uzm42kjwpgJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaIl-0003Ng-S0; Mon, 05 Aug 2019 10:33:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaIa-0003Mo-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:33:05 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so78858325ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=u41rCFVRT5TIJ3WzFOFyBFX+clVgfPodEdyZutaTu+E=;
 b=JAnOjSDww3k0wMC7tRMvLH1EJVHUGgbYraz6NUV4+qPVM6BpUbpsYlBAmLsT42AeNX
 dV+a61ouLe8Ue7j6PfJlmxR8BQcaB/OBny1VFbDkMNFRFYOMzDixYPDzGYCO1k0lkBLL
 4F8HEiLeRhlbwEi7L9XIjsyo/8C7+7eocgK2fMrjL+6y/XzFWrWaniMST8AKs152qsU9
 1sKr6OHrw7D1MRnRp2ni7LQ5O4QgczpxV2l2gumIc3QbjcJ+aWpy67paHz30fXP+72c3
 /cHHlsDRR+2VfQ3WxMtouQ/i5uxoWIXXOtF5exGYJTQiWE0Wu+p7yiWXfK5YpUbptdZC
 zSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=u41rCFVRT5TIJ3WzFOFyBFX+clVgfPodEdyZutaTu+E=;
 b=iX1oED7DIc7r4lvPYezU8O2pO4cXIzJMPkbgQyH/eijM9PStFt1jjN4TSZrb55gkYZ
 XbSE00sYVJ6agXe8U70XOjiwQj4sso2Loxttwtc7GZYu9p/Pz40gVyi2U2P5evFd0/qD
 pL6ANHuoOVOdabtuqy0yCgY/+yBP1M9AMl6DOz4kvJmAsJ0AVk6tCUgkVZ+BGGBD6qo0
 s82bv7qpGEB/U6lRoNNR8ShH5kfawqKiRu18/ff1IC+xLNwXfiOdX2aWGxUoSzPZOOU5
 H15txFAUXfXySDaCKEmbaru7crIUeyu5LVlkmwgen6e35BLqxy0Su5md40t8oUifr1sk
 k/bg==
X-Gm-Message-State: APjAAAWAcSv9xC9roAtbC7ZdZION1l01l+IZbGzL3ClD3j9IssPtTu1f
 OPcEUkdEHso07kBHlFzYSMmSG3Yx+BQce+W6L1IoDw==
X-Google-Smtp-Source: APXvYqwR1dwZfr1HLWJ7cN516WoABshKlyElWdQnlwPXEJQvNocN+VgY7JTuaxnQRyP1XdPQXdRHl6+Y8x0RSi+a6Aw=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16465187ljs.54.1565001183227; 
 Mon, 05 Aug 2019 03:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190726112812.19665-1-anders.roxell@linaro.org>
In-Reply-To: <20190726112812.19665-1-anders.roxell@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:32:52 +0200
Message-ID: <CACRpkdaOe4FvvrVMwLk5_KiMdKVVNm5Z7fSyjPDWKcm5MzxvyQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
To: Anders Roxell <anders.roxell@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033304_709566_051994CB 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMToyOCBQTSBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94
ZWxsQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMg
ZW5hYmxlZCBieSBkZWZhdWx0IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+IHdhcyBzdGFydGluZyB0
byBzaG93IHVwOgo+Cj4gLi4vZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYzogSW4g
ZnVuY3Rpb24g4oCYcm9ja2NoaXBfZ3Bpb19zZXRfY29uZmln4oCZOgo+IC4uL2RyaXZlcnMvcGlu
Y3RybC9waW5jdHJsLXJvY2tjaGlwLmM6Mjc4MzozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbAo+ICB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiAgICByb2NrY2hp
cF9ncGlvX3NldF9kZWJvdW5jZShnYywgb2Zmc2V0LCB0cnVlKTsKPiAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4uL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXJvY2tjaGlwLmM6Mjc5NToyOiBub3RlOiBoZXJlCj4gICBkZWZhdWx0Ogo+ICAgXn5+fn5+
fgo+Cj4gUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxs
LXRocm91Z2guIEFkZAo+ICdyZXR1cm4gLUVOT1RTVVBQOycgdG8gbWF0Y2ggdGhlIGNvbW1lbnQu
Cj4KPiBGaXhlczogZDkzNTEyZWYwZjBlICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxs
LXRocm91Z2ggd2FybmluZyIpCj4gU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJz
LnJveGVsbEBsaW5hcm8ub3JnPgoKUGF0Y2ggYXBwbGllZC4KCllvdXJzLApMaW51cyBXYWxsZWlq
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
