Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571F789B68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohED45OkfkxVdFk1rLuR5Msg+75MxBwFC/TqRASmrNE=; b=EG+zLMpkmeBnBf
	negAsMIPCPJTxt/6qNrOuhYeJO6GRXMjwOPvAgSUzMM2YWLmWm1tEr48RSg6lYHWC6F1Ixtg3Bbzo
	gqCAILFqzHVH+N1fKPeU7gdGMWXomek1DlmAGADGllZLEBQdOm2PxeNhhO0j4+nSuXdCtbEgNhFMI
	cQxqVjB7Cpl3JVxOEYZYFZctw/MEjY2gLLJsLsaYBPFao6G9hozvK06gALEbJexBeqvclG0aLf5Lr
	PL//osIXp5b3k4y6qXRybGhRTvyC68Y85xxlw17fgX/tKjmSWbvDfkLz/9NgzvN3uDIvP/YCqnBRy
	NZtp1HpMIItfeaK7qHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Vl-0005mv-GK; Mon, 12 Aug 2019 10:25:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7VW-0005mY-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:24:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id f72so11618061wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=s4c+tCeURwefVMli54iWLwLzBmEiKHEDXmTByXMYRso=;
 b=Pdwnw6J67H7oh9kG9MSsgYoXkdh501ITQ+vyaKqx8I5koutjUs8WxYTHY5P0rqX6Kq
 FaJXpKcfefMm4VvtL/T6xaZGzTTQbUvKGJjM3I/VFvcQ0DCQNwC3aIyfjU8ZQE8aV7g7
 9g3kQVmNLS6toK1woedUfVsC4xMma3jCX71ZaUNgjQXgWMjSKTalINYNo0lIBdu0I+hJ
 17w3MPAddEkIGRcFIe2LvCBFqSgsJmdDHFVMgeMzpZduUCHCqzSgED1SJRfCyUPNakpL
 9xeXwF0IS9HV4qQurL3bnDZLlZ71Z80zwSqsUy4bpkmEiqz8FUjO1UEe+jypGDtzO1uA
 w5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=s4c+tCeURwefVMli54iWLwLzBmEiKHEDXmTByXMYRso=;
 b=EhgSCKrckYS6TnnFMER5g5TFDUwhhyKcmVy7Y/YOaELR397FZsyQHPSdlxGtR5mgfR
 ujRSCl5jjnsaEidofR6blho4RecX2WHrDewZFAKy2yKWiYHWVG+2D9Inls+xXJGhQ3NH
 ooEnHUO9vgfg/2Sy+rGhG2YbsfG+bKhVb2gJbiQDj3Y0AbWxs9Jgsfso1F8jyeOyCYqn
 h4+y6D8/UxZCjg7K0FXcS4u/vpKUIkc/4c/Ja5rfU898yFUtvzMI2ZyhHFNmmwYnzQ5T
 z/AzZbVRVbua74gVAbgzH+YzNs/WoSODi2MXvhR5DIpQcAKO8wLOBVeyBDjDxWCNany8
 FzOQ==
X-Gm-Message-State: APjAAAXBlh46xwuY4ljJyB14j5bcDdGG6+pxK8Rmmfls+HhPvhADY0bb
 ZUAFndVcafI9GVcibJEz4vc8EQ==
X-Google-Smtp-Source: APXvYqyxkApIE8+Qfsn+A8tYWpIpvwdj9Lwb/49n7m31aXieEdChiennESHmI1ox7hWldcSQUf7guw==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr27612402wmc.95.1565605493088; 
 Mon, 12 Aug 2019 03:24:53 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id l14sm10411976wrn.42.2019.08.12.03.24.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:24:52 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:24:50 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, arnd@arndb.de
Subject: Re: [PATCH v2 1/3] arm64: imx8mq: add imx8mq iomux-gpr field defines
Message-ID: <20190812102450.GK26727@dell>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0562d8bb4098dc4cdb4023b41fb75b312be22a5.1565367567.git.agx@sigxcpu.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032454_417411_3846D819 
X-CRM114-Status: GOOD (  15.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwOSBBdWcgMjAxOSwgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cgo+IFRoaXMgYWRkcyBh
bGwgdGhlIGdwciByZWdpc3RlcnMgYW5kIHRoZSBkZWZpbmUgbmVlZGVkIGZvciBzZWxlY3RpbmcK
PiB0aGUgaW5wdXQgc291cmNlIGluIHRoZSBpbXgtbndsIGRybSBicmlkZ2UuCj4gCj4gU2lnbmVk
LW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiAtLS0KPiAgaW5jbHVk
ZS9saW51eC9tZmQvc3lzY29uL2lteDhtcS1pb211eGMtZ3ByLmggfCA2MiArKysrKysrKysrKysr
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvc3lzY29uL2lteDhtcS1pb211eGMtZ3ByLmgKCkkg
d291bGQgbGlrZSBBcm5kIHRvIGxvb2sgYXQgdGhpcyBwbGVhc2UuCgo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L21mZC9zeXNjb24vaW14OG1xLWlvbXV4Yy1ncHIuaCBiL2luY2x1ZGUvbGlu
dXgvbWZkL3N5c2Nvbi9pbXg4bXEtaW9tdXhjLWdwci5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjYyZTg1ZmZhY2ZhZAo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9pbmNsdWRlL2xpbnV4L21mZC9zeXNjb24vaW14OG1xLWlvbXV4Yy1ncHIuaAo+IEBAIC0wLDAg
KzEsNjIgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+
ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTcgTlhQCj4gKyAqICAgICAgICAgICAgICAgMjAx
OSBQdXJpc20gU1BDCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX0xJTlVYX0lNWDhNUV9JT01VWENf
R1BSX0gKPiArI2RlZmluZSBfX0xJTlVYX0lNWDhNUV9JT01VWENfR1BSX0gKPiArCj4gKyNkZWZp
bmUgSU9NVVhDX0dQUjAJMHgwMAo+ICsjZGVmaW5lIElPTVVYQ19HUFIxCTB4MDQKPiArI2RlZmlu
ZSBJT01VWENfR1BSMgkweDA4Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjMJMHgwYwo+ICsjZGVmaW5l
IElPTVVYQ19HUFI0CTB4MTAKPiArI2RlZmluZSBJT01VWENfR1BSNQkweDE0Cj4gKyNkZWZpbmUg
SU9NVVhDX0dQUjYJMHgxOAo+ICsjZGVmaW5lIElPTVVYQ19HUFI3CTB4MWMKPiArI2RlZmluZSBJ
T01VWENfR1BSOAkweDIwCj4gKyNkZWZpbmUgSU9NVVhDX0dQUjkJMHgyNAo+ICsjZGVmaW5lIElP
TVVYQ19HUFIxMAkweDI4Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjExCTB4MmMKPiArI2RlZmluZSBJ
T01VWENfR1BSMTIJMHgzMAo+ICsjZGVmaW5lIElPTVVYQ19HUFIxMwkweDM0Cj4gKyNkZWZpbmUg
SU9NVVhDX0dQUjE0CTB4MzgKPiArI2RlZmluZSBJT01VWENfR1BSMTUJMHgzYwo+ICsjZGVmaW5l
IElPTVVYQ19HUFIxNgkweDQwCj4gKyNkZWZpbmUgSU9NVVhDX0dQUjE3CTB4NDQKPiArI2RlZmlu
ZSBJT01VWENfR1BSMTgJMHg0OAo+ICsjZGVmaW5lIElPTVVYQ19HUFIxOQkweDRjCj4gKyNkZWZp
bmUgSU9NVVhDX0dQUjIwCTB4NTAKPiArI2RlZmluZSBJT01VWENfR1BSMjEJMHg1NAo+ICsjZGVm
aW5lIElPTVVYQ19HUFIyMgkweDU4Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjIzCTB4NWMKPiArI2Rl
ZmluZSBJT01VWENfR1BSMjQJMHg2MAo+ICsjZGVmaW5lIElPTVVYQ19HUFIyNQkweDY0Cj4gKyNk
ZWZpbmUgSU9NVVhDX0dQUjI2CTB4NjgKPiArI2RlZmluZSBJT01VWENfR1BSMjcJMHg2Ywo+ICsj
ZGVmaW5lIElPTVVYQ19HUFIyOAkweDcwCj4gKyNkZWZpbmUgSU9NVVhDX0dQUjI5CTB4NzQKPiAr
I2RlZmluZSBJT01VWENfR1BSMzAJMHg3OAo+ICsjZGVmaW5lIElPTVVYQ19HUFIzMQkweDdjCj4g
KyNkZWZpbmUgSU9NVVhDX0dQUjMyCTB4ODAKPiArI2RlZmluZSBJT01VWENfR1BSMzMJMHg4NAo+
ICsjZGVmaW5lIElPTVVYQ19HUFIzNAkweDg4Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjM1CTB4OGMK
PiArI2RlZmluZSBJT01VWENfR1BSMzYJMHg5MAo+ICsjZGVmaW5lIElPTVVYQ19HUFIzNwkweDk0
Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjM4CTB4OTgKPiArI2RlZmluZSBJT01VWENfR1BSMzkJMHg5
Ywo+ICsjZGVmaW5lIElPTVVYQ19HUFI0MAkweGEwCj4gKyNkZWZpbmUgSU9NVVhDX0dQUjQxCTB4
YTQKPiArI2RlZmluZSBJT01VWENfR1BSNDIJMHhhOAo+ICsjZGVmaW5lIElPTVVYQ19HUFI0Mwkw
eGFjCj4gKyNkZWZpbmUgSU9NVVhDX0dQUjQ0CTB4YjAKPiArI2RlZmluZSBJT01VWENfR1BSNDUJ
MHhiNAo+ICsjZGVmaW5lIElPTVVYQ19HUFI0NgkweGI4Cj4gKyNkZWZpbmUgSU9NVVhDX0dQUjQ3
CTB4YmMKPiArCj4gKy8qIGkuTVg4TXEgaW9tdXggZ3ByIHJlZ2lzdGVyIGZpZWxkIGRlZmluZXMg
Ki8KPiArI2RlZmluZSBJTVg4TVFfR1BSMTNfTUlQSV9NVVhfU0VMCQlCSVQoMikKPiArCj4gKyNl
bmRpZiAvKiBfX0xJTlVYX0lNWDhNUV9JT01VWENfR1BSX0ggKi8KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
