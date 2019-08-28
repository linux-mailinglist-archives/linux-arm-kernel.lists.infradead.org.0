Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893A49FCB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrWXGMx/lefXg2YMY/VosNQgzDCs6RVA9PgNwcquC3k=; b=d71lq0wazmDejz
	R+jq3eKogXIEg8QT0kJbepghBcRprBsbqDA2a1+N1dHmK7qtP4gQh3ZH3G7LhEVCzCtrSAv3np7Zo
	yaCmJF41qDacs+HfwhvmRdzGFYK5SzIX4h8c14slPwF/jpKGdLDL4NZMTYMLHwONqVNLtbXbsSXmd
	QmYZgkFdN8PeIDRNgOL7tf7q3WiX5+Qn+AR8peE/HnsIBlDlmNkYSQ+upBjH9knqudgv0J2Jc61/e
	zWXZ8kjfQ+NX+gIckybuMcnCCNU6afK8+kbM5ia50qrcuOpsiJ7cE7Rn/bSwTvBBnhB0Lhd2ftB3N
	PP2qJ1KqKVkdjS9D2DqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2t93-0003fw-Qk; Wed, 28 Aug 2019 08:17:33 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2t8h-0003fI-8T
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:17:13 +0000
Received: by mail-wr1-f67.google.com with SMTP id y19so1525502wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:17:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=elcDxralvab5BCLPwy6aNqNRddh9yUrA4hJ16xi48PI=;
 b=KgT7MWf4n16oQC1WK2PvgoqrQzIqL4h+fnq2z2ArQykYl0TXW1Xm6Q2MKuB+iPh/Xf
 Q7yFnkT7UrR+pDWkwoh47aIdusNgcrKVk/mjPOriJjB2t9ReAYnk0C3FhsDeYohW8C68
 wgSsyAE13WXGSaORJh8rQk1QijfscDDjsDEhH1IxABDRumlC1Uc7FF6L5lJYeG+khA0g
 NQvIMYGB1JgEiibkj3hcdil1EkkMlCp8i8+mpawnPHD5nXmAf/3/tUgyVo75eVf4FzYj
 0EV1yucEeRlbUPXfZNd9dDTz9WhQpnzcmO56V5sk38ZseVJuhRj2UpZx9d+abQO6Rrp1
 /CKA==
X-Gm-Message-State: APjAAAWTiU9NtlqlgMfB+hZNwOoE+fp6/8nDk9Ic6jSGn9w9zLektTBH
 KHIf5vnYhj3VSdXcWFhqU3k=
X-Google-Smtp-Source: APXvYqwmhv7I8k483ahGnEjGNmo4amPeyJahnDXrjCmOd75ub2Hi+25Drc0PFsP+jngUCzaAGvF4IQ==
X-Received: by 2002:adf:efd2:: with SMTP id i18mr2910751wrp.145.1566980229213; 
 Wed, 28 Aug 2019 01:17:09 -0700 (PDT)
Received: from 1aq-andre ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id p19sm1406467wmg.31.2019.08.28.01.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 01:17:08 -0700 (PDT)
Message-ID: <bc6247cdd51d7a7b28c52a186d4975ecbeaa602d.camel@andred.net>
Subject: Re: [PATCH 2/2] dt-bindings: imx6q-pcie: add
 "fsl,pcie-phy-refclk-internal" for i.MX7D
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Rob Herring <robh@kernel.org>
Date: Wed, 28 Aug 2019 09:17:07 +0100
In-Reply-To: <20190827155626.GA29948@bogus>
References: <20190813103759.38358-1-git@andred.net>
 <20190813103759.38358-2-git@andred.net> <20190827155626.GA29948@bogus>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_011711_303670_69603C98 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gVHVlLCAyMDE5LTA4LTI3IGF0IDEwOjU2IC0wNTAwLCBSb2IgSGVycmluZyB3
cm90ZToKPiBPbiBUdWUsIEF1ZyAxMywgMjAxOSBhdCAxMTozNzo1OUFNICswMTAwLCBBbmRyw6kg
RHJhc3ppayB3cm90ZToKPiA+IFRoZSBpLk1YN0QgdmFyaWFudCBvZiB0aGUgSVAgY2FuIHVzZSBl
aXRoZXIgYW4gZXh0ZXJuYWwKPiA+IGNyeXN0YWwgb3NjaWxsYXRvciBpbnB1dCBvciBhbiBpbnRl
cm5hbCBjbG9jayBpbnB1dCBhcwo+ID4gYSByZWZlcmVuY2UgY2xvY2sgaW5wdXQgZm9yIHRoZSBQ
Q0llIFBIWS4KPiA+IAo+ID4gRG9jdW1lbnQgdGhlIG9wdGlvbmFsIHByb3BlcnR5ICdmc2wscGNp
ZS1waHktcmVmY2xrLWludGVybmFsJwo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJh
c3ppayA8Z2l0QGFuZHJlZC5uZXQ+Cj4gPiBDYzogUmljaGFyZCBaaHUgPGhvbmd4aW5nLnpodUBu
eHAuY29tPgo+ID4gQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4g
Q2M6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4gPiBDYzogUm9iIEhlcnJp
bmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KPiA+IENjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPgo+ID4gQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiA+IENj
OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiBDYzogUGVuZ3V0cm9u
aXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KPiA+IENjOiBGYWJpbyBFc3Rl
dmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gPiBDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlt
eEBueHAuY29tPgo+ID4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IENjOiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZwo+ID4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiA+IC0tLQo+
ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvZnNsLGlteDZxLXBjaWUu
dHh0IHwgNSArKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvZnNs
LGlteDZxLXBjaWUudHh0Cj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
Y2kvZnNsLGlteDZxLXBjaWUudHh0Cj4gPiBpbmRleCBhN2Y1ZjVhZmEwZTYuLjk4NWQ3MDgzZGY5
ZiAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
ZnNsLGlteDZxLXBjaWUudHh0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL2ZzbCxpbXg2cS1wY2llLnR4dAo+ID4gQEAgLTU2LDYgKzU2LDExIEBAIEFkZGl0
aW9uYWwgcmVxdWlyZWQgcHJvcGVydGllcyBmb3IgaW14N2QtcGNpZSBhbmQgaW14OG1xLXBjaWU6
Cj4gPiAgCSAgICAgICAtICJ0dXJub2ZmIgo+ID4gIC0gZnNsLGlteDdkLXBjaWUtcGh5OiBBIHBo
YW5kbGUgdG8gYW4gZnNsLGlteDdkLXBjaWUtcGh5IG5vZGUuCj4gCj4gTm90IHN1cmUgaG93IHRo
aXMgZ290IGluLCBidXQgd2h5IGlzIHRoZSBwaHkgYmluZGluZyBub3QgdXNlZCBoZXJlPwo+IAo+
ID4gIAo+ID4gK0FkZGl0aW9uYWwgb3B0aW9uYWwgcHJvcGVydGllcyBmb3IgaW14N2QtcGNpZToK
PiA+ICstIGZzbCxwY2llLXBoeS1yZWZjbGstaW50ZXJuYWw6IElmIHByZXNlbnQgdGhlbiBhbiBp
bnRlcm5hbCBQTEwgaW5wdXQgaXMgdXNlZAo+ID4gKyAgYXMgUENJZSBQSFkgcmVmZXJlbmNlIGNs
b2NrIHNvdXJjZS4gQnkgZGVmYXVsdCBhbiBleHRlcm5hbCBvY3NpbGxhdG9yIGlucHV0Cj4gPiAr
ICBpcyB1c2VkLgo+IAo+IENhbid0IHRoZSBjbG9jayBiaW5kaW5nIGFuZCBtYXliZSAnYXNzaWdu
ZWQtY2xvY2tzJyBiZSB1c2VkIGhlcmU/IAo+IAo+IEFsc28sIHRoaXMgaXMgYSBwcm9wZXJ0eSBv
ZiB0aGUgUEhZLCBzbyBpdCBiZWxvbmdzIGluIHRoZSBQSFkncyBub2RlLgoKVGhhbmtzIGZvciBw
b2ludGluZyB0aGlzIG91dC4gSSdsbCBoYXZlIGEgbG9vay4KCkFuZHJlJwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
