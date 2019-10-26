Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F37E5781
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eAb9Uywrpw6eSw9100Zze55vB9PJeAcf29DFAcoQXQ=; b=Y7lgYacNcs2l+9
	PGG238+RmWrRCkztZdsHv3Vkfsn65O8mvVdPM5JY8NMrvqZSavBlbL45wTnt+xWupx6UqXtmiF+Pm
	beVwYBYhPx5PhZGt+HoB1Hbc2/F44GyZro5qrZy0yqe6ST7hLmqkueSIi2AhKx0LVhE2Lp9t8ekYR
	L61PL2zeLqAJPYhp4NYrQtSioVUVsFhqrwoeKoFzxtlzqwX5mv31WJ6bhWTxJJwV3BFdocCyx6Xnb
	AuLRkHQOwgBJRcEKxYIfKjZtf3Kg6xsByc0G3lPXEU+N3wWB1rK4jq9ISKYe4HSxdcMZrQ5ayHlOR
	eNyq/capEjogK0dxUF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9nB-0004fg-3m; Sat, 26 Oct 2019 00:18:53 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9ms-0004a1-EK
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:18:37 +0000
Received: by mail-oi1-f195.google.com with SMTP id c2so2719712oic.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:18:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZcBWB/9OXByjWgg+0ici5N1vc45mNqFyMoj1HNZBt9w=;
 b=A3HwxF9DduBaggP2v4mvPez2fF1dwjf1Uxn9K99HUq69Xx0tW/jNyZ7x53vpXRm1wU
 Qq/oRO4uxWMY515Cf6zj4J+g6FzVmyuNsXoG4XJtWFR3AiWnomtQwe0KwcTRHBu7oz8Y
 5lqTNkDQxJ54/nU5qJ5TjNAZVyo5S4unIe7jcHrh3R9RKuK/ieuwduM/TYzq2UjxxnvQ
 aSfk+mmtNdPH4+77h///EX8+R6eIDrHik7waXsHm7RTStU9gIXWjMgJ4odda9sqF/INH
 qg9OI8XeBuvF45DRTvmPcAnL/nJ5p7FKBXBg28RyNs2FFE8SCAvoyU+FiYM8q19C3ar1
 J1aA==
X-Gm-Message-State: APjAAAW75kblt0YTLfd3+eHdO9U1+6xr8Pbj8IIkeHVm2GXk1zbZolJb
 FSJcNM3dnc98rxrbFYEuMQ==
X-Google-Smtp-Source: APXvYqx3oUO4oNfBdzB9u9Ae7iZAZSs95iUj5G8vBiNU+psEQYcPQU2Ypz4p/Kcij37YUEfpJrgwxQ==
X-Received: by 2002:aca:1a18:: with SMTP id a24mr5250274oia.145.1572049113228; 
 Fri, 25 Oct 2019 17:18:33 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l12sm1003847oii.48.2019.10.25.17.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:18:32 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:18:32 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 5/5] dt-bindings: power: Add r8a77961 SYSC power
 domain definitions
Message-ID: <20191026001832.GA8675@bogus>
References: <20191023122911.12166-1-geert+renesas@glider.be>
 <20191023122911.12166-6-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122911.12166-6-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171834_514001_92CBB846 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMyBPY3QgMjAxOSAxNDoyOToxMSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdy
b3RlOgo+IEFkZCBwb3dlciBkb21haW4gaW5kaWNlcyBmb3IgdGhlIFItQ2FyIE0zLVcrIChSOEE3
Nzk2MSkgU29DLgo+IAo+IEJhc2VkIG9uIFJldi4gMi4wMCBvZiB0aGUgUi1DYXIgU2VyaWVzLCAz
cmQgR2VuZXJhdGlvbiwgSGFyZHdhcmUgVXNlcuKAmXMKPiBNYW51YWwgKEp1bC4gMzEsIDIwMTkp
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0Bn
bGlkZXIuYmU+Cj4gUmV2aWV3ZWQtYnk6IFlvc2hpaGlybyBTaGltb2RhIDx5b3NoaWhpcm8uc2hp
bW9kYS51aEByZW5lc2FzLmNvbT4KPiAtLS0KPiB2MjoKPiAgIC0gQWRkIFJldmlld2VkLWJ5Lgo+
IC0tLQo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3I4YTc3OTYxLXN5c2MuaCB8IDMyICsr
KysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCsp
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3I4YTc3OTYx
LXN5c2MuaAo+IAoKUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
