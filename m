Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1E618FE0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vr0GPJA3UPfNbz4quSBHyYQnicYD7wY58FPi6GD1vZw=; b=i62R8bEXWy2PFo
	OCPyGfii+XQy5RRartD/0eupP7CawyVsaRzrGy8SOEZ6+M4CEdDGEL4q96wpyMloSNw8ejSMmLT8D
	0+aDCsgdXHGnXMm6y8vieM0yRmCjpsTxFXofv7rIF85BJex1SdxTogi8h00+psTb1Bm3M24X1P4pk
	0i+2RO7qaA1KhE5FcNV3GrxnYzpNhOAd/fp6RZXv2hnd6psi1oPAeF9jPSCOHKVebLoQvHd512RQR
	9ulx9MA+np3esANazzFguo3aO06p9mqv230D/3xBGVrw2z5opQ98er8O6g2UqPa7SkoYO7JXkzzd7
	7eKHafVQsp6xSjsqQh2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGT3k-0007Ue-RS; Mon, 23 Mar 2020 19:48:28 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGT3a-0007UJ-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:48:19 +0000
Received: by mail-il1-f196.google.com with SMTP id g15so5387336ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 12:48:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kipXCQa4i+umHTrcz0qmgyn0yywsyA7UdjziiiIu1Sw=;
 b=L6ZeJJTPKXj5gAgnCvVN+VOGFHIj3JBKIIV7PqVBzrVViZlf6og/l9A1wXgp7TeaHQ
 bGAZqW94eaBZGi3M/nhQGcWJmloE6X2P0fWrsgueUmdKmpcHOM7y5oGoF9bM98SHhccG
 Rz7l6teKlRu+KeOJpJ6X9s4jP8EpA4Am05TgdAbEGLhKr0llZVO+aheKuVgPOezxiXh0
 qys0zpA0Z+NEwfSBtvWvpZZ9nMhTFebhySYDfzj//sK7AH9eRNUHmqBtSLtVoXEWAIez
 YaA10z0Jv88i1cyTUB5u6gmKmdWnmoXVSX1hpoKG+UjQnBi5B873aVtnJauqHaAOKSfT
 I8Aw==
X-Gm-Message-State: ANhLgQ2Xqi71joPJCvRmr3S51VNL9MEB1gk9zM8+h0UCFiACIGSG6LiU
 FqNZTdPoelw2D7i7rcZY26ggimI=
X-Google-Smtp-Source: ADFU+vsP/KgXVNr/Uu6jpUr15rWf4XDIQ6bcITTjbhYpcoip6I8JN0DSb20PaQRJAEfQrw28uasKAQ==
X-Received: by 2002:a92:9f13:: with SMTP id u19mr23299246ili.111.1584992897749; 
 Mon, 23 Mar 2020 12:48:17 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id u19sm1807524iow.21.2020.03.23.12.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:48:16 -0700 (PDT)
Received: (nullmailer pid 26533 invoked by uid 1000);
 Mon, 23 Mar 2020 19:48:15 -0000
Date: Mon, 23 Mar 2020 13:48:15 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 04/11] dt-bindings: interrupt-controller: Add Sunplus
 SP7021 mux
Message-ID: <20200323194815.GA21590@bogus>
References: <20200308163230.4002-1-afaerber@suse.de>
 <20200308163230.4002-5-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308163230.4002-5-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_124818_399394_74BA1A30 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, linux-kernel@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Wells Lu =?utf-8?B?5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXIgMDgsIDIwMjAgYXQgMDU6MzI6MjJQTSArMDEwMCwgQW5kcmVhcyBGw6RyYmVy
IHdyb3RlOgo+IFRoZSBTdW5wbHVzIFNQNzAyMSBTb0MgaGFzIGFuIGludGVycnVwdCBtdXguCj4g
Cj4gQ2M6IFdlbGxzIEx1IOWRguiKs+mosCA8d2VsbHMubHVAc3VucGx1cy5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IC0tLQo+ICAuLi4v
c3VucGx1cyxwZW50YWdyYW0taW50Yy55YW1sICAgICAgICAgICAgICAgICAgICB8IDUwICsrKysr
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRl
cnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBlbnRhZ3JhbS1pbnRjLnlhbWwKPiAKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9s
bGVyL3N1bnBsdXMscGVudGFncmFtLWludGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBlbnRhZ3JhbS1pbnRjLnlh
bWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYmFhZjdiY2Q0
YTcxCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBlbnRhZ3JhbS1pbnRjLnlhbWwKPiBA
QCAtMCwwICsxLDUwIEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3It
bGF0ZXIgT1IgQlNELTItQ2xhdXNlCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBlbnRh
Z3JhbS1pbnRjLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNj
aGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFN1bnBsdXMgUGVudGFncmFtIFNvQyBJbnRl
cnJ1cHQgQ29udHJvbGxlcgo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBBbmRyZWFzIEbDpHJi
ZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gKwo+ICthbGxPZjoKPiArICAtICRyZWY6IC9zY2hlbWFz
L2ludGVycnVwdC1jb250cm9sbGVyLnlhbWwjCgpObyBuZWVkIGZvciB0aGlzLiBJdCdzIGFwcGxp
ZWQgYmFzZWQgb24gdGhlIG5vZGUgbmFtZS4KCj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBh
dGlibGU6Cj4gKyAgICBjb25zdDogc3VucGx1cyxzcDcwMjEtaW50Ywo+ICsKPiArICByZWc6Cj4g
KyAgICBtYXhJdGVtczogMgoKTmVlZCB0byBkZWZpbmUgd2hhdCBlYWNoIG9uZSBpcy4KCj4gKwo+
ICsgIGludGVycnVwdHM6Cj4gKyAgICBtYXhJdGVtczogMgoKU2FtZSBoZXJlLgoKPiArCj4gKyAg
aW50ZXJydXB0LWNvbnRyb2xsZXI6IHRydWUKPiArCj4gKyAgIiNpbnRlcnJ1cHQtY2VsbHMiOgo+
ICsgICAgY29uc3Q6IDIKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0g
cmVnCj4gKyAgLSBpbnRlcnJ1cHQtY29udHJvbGxlcgo+ICsKPiArdW5ldmFsdWF0ZWRQcm9wZXJ0
aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICsKPiArICAgIGludGVy
cnVwdC1jb250cm9sbGVyQDljMDAwNzgwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gInN1bnBs
dXMsc3A3MDIxLWludGMiOwo+ICsgICAgICAgIHJlZyA9IDwweDljMDAwNzgwIDB4ODA+LAo+ICsg
ICAgICAgICAgICAgIDwweDljMDAwYTgwIDB4ODA+Owo+ICsgICAgICAgIGludGVycnVwdHMgPSA8
R0lDX1NQSSA1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsgICAgICAgICAgICAgICAgICAgICA8
R0lDX1NQSSA2IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgIGludGVycnVwdC1jb250
cm9sbGVyOwo+ICsgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4gKyAgICB9Owo+ICsu
Li4KPiAtLSAKPiAyLjE2LjQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
