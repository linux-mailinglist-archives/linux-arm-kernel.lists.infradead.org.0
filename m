Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55422EABB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBaQPahlDxwsXzmeLPEl/9jZylHViu9YuHoKMVrxekU=; b=I+6HB06KlipnH4
	bV6+7AdDV/n9WcpjZalAFwZIRJDlx5VMsgHBSpXpaTY4vnFiKcgrRby46bOE3AgJ4ajx/7Kmm2bJ6
	EWlZD8F1SOBtAZE7AwKLxJV6tu307s4y0/hbp7egeVGDJhVGhDa1xAmgPqPpyI7NRrahR7UGlwEB4
	LblTWXUFnu1ZDmBPnGlza9oG5AG35lPaigYwUugEbM4paPkZJmb/DmkxhNafrawxADXUoFVrVErZS
	x0g0AIcGLubZqtRy+UMqt5NM05oDIpUItYtpQJm1C8KV1yzr9CQxHgSS03mbpghOJQNg7trdL/SxA
	cTkP3MnJiFMOG9CDb8ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ634-0000x1-KE; Thu, 31 Oct 2019 08:43:18 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ62v-0000wU-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:43:11 +0000
Received: by mail-wm1-f68.google.com with SMTP id c12so405322wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 01:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=U1TBxawTNYC3AWGDQDdR/DrJ62nUFCa8SSm7u7ez1Mc=;
 b=jvvckm089zhjT8xFgrC9EpWO5hKBczHoY+WSeaG24jgTjB7eIrsSnSrjkfrVZnqoO9
 dDhoHJr0nEJxsDXhSbUMqw4pQPaLXmmPs2keGbmoeyHooAF+B5CMVi8xsKlCcQq8lLjA
 JqrBbucS1J9iMyuTXUM3F9IpftQ7CY03FC4AFRRrVNEIlBL5Xm7TFBFXFvGK9gggWFzi
 orXXUm+fc8J609u2wQH5ZAJNC7tOfNleVAkOH75d0jyei9394jKyYQ6W9qoc3JUKryBQ
 H6DB/pGhj/jkkDHakKAmp5eF+3lsr1CGZ7fciMODGWufNZxHNAXqBq68GPN19zHWy+I7
 XiBA==
X-Gm-Message-State: APjAAAXaXTzZhQnFDkUT7j5dGLbrLdYWam/Rk3ParqAwVffFk6zaVTbV
 Y1/kRHsZMlgH5eHzMwEoCEU=
X-Google-Smtp-Source: APXvYqzqxZeNP44KDjijxqD9OMNhY95V7XXZ8f5wQAEAkKmV3Jx387COSvvxyinWVRVZtdMgmnvnfQ==
X-Received: by 2002:a1c:610b:: with SMTP id v11mr3831144wmb.156.1572511387041; 
 Thu, 31 Oct 2019 01:43:07 -0700 (PDT)
Received: from tfsielt31850 ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id y3sm3970976wro.36.2019.10.31.01.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 01:43:06 -0700 (PDT)
Message-ID: <870ea6f1fcc6e28fef569643cd192d484259e7ad.camel@andred.net>
Subject: Re: [PATCH 1/1] ARM: dts: imx7s: Add power domain for imx7d HSIC
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Peter Chen <peter.chen@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Date: Thu, 31 Oct 2019 08:43:05 +0000
In-Reply-To: <20191031021828.GB11664@b29397-desktop>
References: <1571023588-9870-1-git-send-email-peter.chen@nxp.com>
 <20191031021828.GB11664@b29397-desktop>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_014309_754839_A6C4ECED 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [77.107.218.170 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCgpPbiBUaHUsIDIwMTktMTAtMzEgYXQgMDI6MTggKzAwMDAsIFBldGVyIENoZW4g
d3JvdGU6Cj4gT24gMTktMTAtMTQgMTE6MjY6MjgsIFBldGVyIENoZW4gd3JvdGU6Cj4gPiBPdGhl
cndpc2UsIHRoZSBzeXN0ZW0gd2lsbCBoYW5nIGlmIFVTQiBkcml2ZXIgdHJ5IHRvIGFjY2Vzcwo+
ID4gcG9ydHNjIHJlZ2lzdGVyLgo+ID4gCj4gPiBDYzogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRy
ZWQubmV0Pgo+ID4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgQ2hlbiA8cGV0ZXIuY2hlbkBueHAuY29t
Pgo+ID4gLS0tCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvaW14N3MuZHRzaSB8IDcgKysrKysrKwo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3cy5k
dHNpCj4gPiBpbmRleCBjMWE0ZmZmNWNlZGEuLmE1YjM4MGY1MzBmOCAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdzLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdzLmR0c2kKPiA+IEBAIC02NTgsNiArNjU4LDEyIEBACj4gPiAgCQkJCQkJcmVnID0gPDE+
Owo+ID4gIAkJCQkJCXBvd2VyLXN1cHBseSA9IDwmcmVnXzFwMGQ+Owo+ID4gIAkJCQkJfTsKPiA+
ICsKPiA+ICsJCQkJCXBnY19oc2ljX3BoeTogcG93ZXItZG9tYWluQDIgewo+ID4gKwkJCQkJCSNw
b3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4gPiArCQkJCQkJcmVnID0gPDI+Owo+ID4gKwkJCQkJ
CXBvd2VyLXN1cHBseSA9IDwmcmVnXzFwMj47Cj4gPiArCQkJCQl9Owo+ID4gIAkJCQl9Owo+ID4g
IAkJCX07Cj4gPiAgCQl9Owo+ID4gQEAgLTExMDEsNiArMTEwNyw3IEBACj4gPiAgCQkJCWNvbXBh
dGlibGUgPSAiZnNsLGlteDdkLXVzYiIsICJmc2wsaW14MjctdXNiIjsKPiA+ICAJCQkJcmVnID0g
PDB4MzBiMzAwMDAgMHgyMDA+Owo+ID4gIAkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDAgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4gPiArCQkJCXBvd2VyLWRvbWFpbnMgPSA8JnBnY19oc2ljX3Bo
eT47Cj4gPiAgCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg3RF9VU0JfQ1RSTF9DTEs+Owo+ID4gIAkJ
CQlmc2wsdXNicGh5ID0gPCZ1c2JwaHlub3AzPjsKPiA+ICAJCQkJZnNsLHVzYm1pc2MgPSA8JnVz
Ym1pc2MzIDA+Owo+ID4gLS0gCj4gPiAyLjE3LjEKPiA+IAo+IAo+IEdlbnRsZSBwaW5nLi4uCgpT
b3JyeSBmb3IgdGhlIGRlbGF5LiBUaGUga2VybmVsIGhhbmdzIGV2ZW4gd2l0aCB0aGlzIGV4dHJh
IHBhdGNoLCBJIHN1cHBvc2UKd2hlbiBpbml0aWFsaXNpbmcgdGhlIFVTQi4gSSBoYXZlbid0IGhh
ZCB0aW1lIHRvIGxvb2sgaW50byBpdCwgdGhvdWdoLiBCdXQKSSBhc3N1bWUgc29tZSBhZGRpdGlv
bmFsIGNsb2NrIG1pZ2h0IG5lZWQgdG8gYmUgZW5hYmxlZC4uLgoKQ2hlZXJzLApBbmRyZScKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
