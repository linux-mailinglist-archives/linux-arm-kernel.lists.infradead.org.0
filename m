Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E71D1952ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 09:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSNw8K7IrtqekS3BFoBw1BuiZiaXdABqEm0xIm4JhSw=; b=fUEwZyERE1JS+8
	+akAhmGGr15MmZ0T9W1eWws5ZOAXR0W0p3OlPkDBwhPUqZ8a3L2K9kSdXg+WM7xwB3/JwTobb3G27
	pBZ3rxrtSyZ37j1n5YYD9R6ho0Ev9vFCgg8/OXId1eyG1y70QIBqDkBGH4GQ0+WT4qVXXX6sWqHZO
	UzKmY8aXbW2hAkfw0ei2ya5mjMSKzopO0XhywvtD2/XmfK533MZUqIb+8mqdb4+w+XngyNpnRRD3a
	GJeUU5D/+HuJXcQnooB/uQKaJPT6FKjBJpfTtAjY0hwp261tuXtdediqDMZa99nCEWfv78ISL99Hu
	LtWFHH3VHDsBf0ImF7zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHkPO-00079n-Ob; Fri, 27 Mar 2020 08:32:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHkPG-000794-LB
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 08:32:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id f6so4769912wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/8e1khbt3xy4ZUf34DU6Fxze93y8M47+3udr0iQSRsI=;
 b=LHWAWHzmrgJi6sjgnjoGfbv7/nunVx19vgyHo/Iys+J47ldqjn8fGNWukWARkju+5I
 vxbxj1NSvZ3VbfxweyHPqh6Dl1Ho/ppvvxSzYAun432P1qgCZD6dOCKJFmKI6uwd6wc0
 o5bjDLooHalwWV9R8YtQ62qyeotsUIkiZl85Z4bpwT5LcRPhRZZXVI8vDevR0jT6RL/A
 dNFry0CzpNV4ae7f5kjFirmvM+Lw7yrn81OFB0G15fzV2kHfMmi9DVpiOd4BQsfTBM74
 jIUN9CTbrlLpgMk3oecrzVR0NLzrIAKFVi7HJ2Yuxpy5IyW5hHCabCi2m9dSFDAUUPsP
 N1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/8e1khbt3xy4ZUf34DU6Fxze93y8M47+3udr0iQSRsI=;
 b=U31WseYuw5UEqs8qt2RmuVInsc43F8m32Y0LW6I7YmwDjvIf7jxt9IWng+asg3213/
 b7Yb/qaQsoyVxPL1jp19JBnlsKZUrqWcR6+vLHAi/Qi5zWZx2Od4vjewcvPTiYkrUteM
 obIWGFYE/iF6BdoxBDWHD2p2nWgs30e+e+iQv/2SBauq1O4HO8/kokv8iP3f1NDJydmn
 8Rk/O7kfmsfiX5IUo7htAtVTr2BrBJRjmoAU9eqyWhCwVeoYuPozQxKEbTw2XE92QNCD
 gxLGiNLba8Zw5sTq1xpQ3hRd3ArrTt06KVXckuwZogwPtZj/AUGKfwiMTMqkVY8JXgE7
 MdOA==
X-Gm-Message-State: ANhLgQ3hWSQsZ7TELhqThZ45V/VoQ+gefxo9twtLtD5y9azCMjT7gpiT
 Sqa9swj/SlG9lb8IrhZ8DwGT9Q==
X-Google-Smtp-Source: ADFU+vshlFLkzjFGLqZWToyKEwofbRxD/jsH8lC+uHzFVX7qI4umf//ndsbal5w8KkGL0SIvWV2zCg==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr4129403wma.158.1585297917089; 
 Fri, 27 Mar 2020 01:31:57 -0700 (PDT)
Received: from dell ([95.149.164.95])
 by smtp.gmail.com with ESMTPSA id w67sm7008731wmb.41.2020.03.27.01.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 01:31:56 -0700 (PDT)
Date: Fri, 27 Mar 2020 08:32:46 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/4] dt-bindings: Clean-up schema errors due to missing
 'addtionalProperties: false'
Message-ID: <20200327083246.GJ603801@dell>
References: <20200325220542.19189-1-robh@kernel.org>
 <20200325220542.19189-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325220542.19189-4-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_013158_699722_9564C3D4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-clk@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 devicetree@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-media@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyNSBNYXIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE51bWVyb3VzIHNjaGVt
YXMgYXJlIG1pc3NpbmcgJ2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZScgc3RhdGVtZW50cyB3
aGljaAo+IGVuc3VyZXMgYSBiaW5kaW5nIGRvZXNuJ3QgaGF2ZSBhbnkgZXh0cmEgdW5kb2N1bWVu
dGVkIHByb3BlcnRpZXMgb3IgY2hpbGQKPiBub2Rlcy4gRml4aW5nIHRoaXMgcmV2ZWFscyB2YXJp
b3VzIG1pc3NpbmcgcHJvcGVydGllcywgc28gbGV0J3MgZml4IGFsbAo+IHRob3NlIG9jY3VycmVu
Y2VzLgo+IAo+IENjOiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4gQ2M6IExpbnVz
IFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBDYzogQmFydG9zeiBHb2xhc3pl
d3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiBDYzogTWFzYWhpcm8gWWFtYWRhIDx5
YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KPiBDYzogSm9uYXRoYW4gQ2FtZXJvbiA8amlj
MjNAa2VybmVsLm9yZz4KPiBDYzogSGFydG11dCBLbmFhY2sgPGtuYWFjay5oQGdteC5kZT4KPiBD
YzogTGFycy1QZXRlciBDbGF1c2VuIDxsYXJzQG1ldGFmb28uZGU+Cj4gQ2M6IFBldGVyIE1lZXJ3
YWxkLVN0YWRsZXIgPHBtZWVyd0BwbWVlcncubmV0Pgo+IENjOiBOZWlsIEFybXN0cm9uZyA8bmFy
bXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gQ2M6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhh
YkBrZXJuZWwub3JnPgo+IENjOiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AYmF5bGlicmUuY29tPgo+
IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IENjOiAiRGF2aWQgUy4gTWls
bGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogTGlhbSBHaXJkd29vZCA8bGdpcmR3b29k
QGdtYWlsLmNvbT4KPiBDYzogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+IENjOiBH
dWlsbGF1bWUgTGEgUm9xdWUgPGdsYXJvcXVlQGJheWxpYnJlLmNvbT4KPiBDYzogWmhhbmcgUnVp
IDxydWkuemhhbmdAaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNh
bm9AbGluYXJvLm9yZz4KPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+
Cj4gQ2M6IGxpbnV4LWNsa0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtZ3Bpb0B2Z2VyLmtl
cm5lbC5vcmcKPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtaWlvQHZnZXIua2Vy
bmVsLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtYW1s
b2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPiBD
YzogbGludXgtcG1Admdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2sv
ZnNsLHBsbGRpZy55YW1sIHwgIDMgKysrCj4gIC4uLi9ncGlvL3NvY2lvbmV4dCx1bmlwaGllci1n
cGlvLnlhbWwgICAgICAgICB8ICAyICsrCj4gIC4uLi9iaW5kaW5ncy9ncHUvYXJtLG1hbGktYmlm
cm9zdC55YW1sICAgICAgICB8ICA2ICsrLS0tCj4gIC4uLi9iaW5kaW5ncy9ncHUvYXJtLG1hbGkt
bWlkZ2FyZC55YW1sICAgICAgICB8ICAzICsrKwo+ICAuLi4vYmluZGluZ3MvaWlvL2FkYy9hZGks
YWQ3MTkyLnlhbWwgICAgICAgICAgfCAgMSAtCj4gIC4uLi9iaW5kaW5ncy9paW8vcHJlc3N1cmUv
Ym1wMDg1LnlhbWwgICAgICAgICB8ICAzICsrKwo+ICAuLi4vbWVkaWEvYW1sb2dpYyxtZXNvbi1n
eC1hby1jZWMueWFtbCAgICAgICAgfCAgOSArKysrKy0tLQoKPiAgLi4uL2JpbmRpbmdzL21mZC9y
b2htLGJkNzE4MjgtcG1pYy55YW1sICAgICAgIHwgIDMgKysrCgpBY2tlZC1ieTogTGVlIEpvbmVz
IDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
