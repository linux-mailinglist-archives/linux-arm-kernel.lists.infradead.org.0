Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3A838ACA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0QrfVF8zl5PRAbBw+469SzMe270CF7FAMdED7boDfs=; b=AkAWC7BX4G3P08
	+AXhYV70LoET286FZtH1A886d1/vOy95Vz0nzaZVC0qPHJuvrA4E/6XaZvDi6Tk/fiOu3GCTYfP+h
	hfzORKfzGUMIvzqVnIBzXZvsaW8v3f3Kb62N1m73D3jiJVffWZoNse1yXbqL6SLHy5pISnO+Pnl6B
	sp9XoHkOiQJSPCfuk8plN/BrhnjIfuQrWjegV9U8a5cWjtf7w5XJ2g3LZLJkTawwN7lo6IwrCco5t
	W6cDU5BqWCBj7LDh7pHDvZLNM4QYLD5S5gPc/k7v1SNUkLgEgttaUoOHcwOAGAcM3JyQ/1D7nhLQi
	AujpW37luY28Wym9dw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZESN-0007yB-Dp; Fri, 07 Jun 2019 12:58:55 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZESA-0007va-KZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1559912322; x=1591448322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yYhblt2+BKiN/5PsebElSxKpyf/1YoPFs0dVvX2+Xww=;
 b=ebckJxPuJEYdyL2C2EzLk7Dm5SPW4e1FqDOmHsim1OBhCv7j38C1tbsY
 AGoJY3I6I03gXOsYanot55/Smg28nn7JB6m4vvkrP1PbsksBieY/kbp0L
 7euP830LSdLLaOC+JqiD+mHV5vzc53B4qsV8iSY5pabryhyw+Bj3nyVzn I=;
X-IronPort-AV: E=Sophos;i="5.60,563,1549929600"; d="scan'208";a="804170433"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2a-c5104f52.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 07 Jun 2019 12:58:37 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
 by email-inbound-relay-2a-c5104f52.us-west-2.amazon.com (Postfix) with ESMTPS
 id 45E57A242C; Fri,  7 Jun 2019 12:58:37 +0000 (UTC)
Received: from EX13D08UEB002.ant.amazon.com (10.43.60.107) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.129) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Jun 2019 12:58:36 +0000
Received: from EX13D02UWC004.ant.amazon.com (10.43.162.236) by
 EX13D08UEB002.ant.amazon.com (10.43.60.107) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Jun 2019 12:58:36 +0000
Received: from EX13D02UWC004.ant.amazon.com ([10.43.162.236]) by
 EX13D02UWC004.ant.amazon.com ([10.43.162.236]) with mapi id 15.00.1367.000;
 Fri, 7 Jun 2019 12:58:35 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH 0/3] Add support for Graviton TRNG
Thread-Topic: [PATCH 0/3] Add support for Graviton TRNG
Thread-Index: AQHVGxR9rewpsnhufE+Qj7iDYwflKaaM+/mAgALbeQA=
Date: Fri, 7 Jun 2019 12:58:35 +0000
Message-ID: <7EC45708-38A1-4826-BC82-298EFAAE30B1@amazon.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190605122031.GK15030@fuggles.cambridge.arm.com>
In-Reply-To: <20190605122031.GK15030@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.225]
Content-ID: <597B470E461AD641A6B2C366CC0A0DD8@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_055842_743024_9D5CDAF3 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Rindjunsky,
 Ron" <ronrindj@amazon.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, "Woodhouse, David" <dwmw@amazon.co.uk>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDYvNS8xOSwgNzoyMCBBTSwgIldpbGwgRGVhY29uIiA8d2lsbC5kZWFjb25AYXJt
LmNvbT4gd3JvdGU6DQoNCiAgICBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAwODozMDo1N1BNICsw
MDAwLCBBbGkgU2FpZGkgd3JvdGU6DQogICAgPiBBV1MgR3Jhdml0b24gYmFzZWQgc3lzdGVtcyBw
cm92aWRlIGFuIEFybSBTTUMgY2FsbCBpbiB0aGUgdmVuZG9yIGRlZmluZWQNCiAgICA+IGh5cGVy
dmlzb3IgcmVnaW9uIHRvIHJlYWQgcmFuZG9tIG51bWJlcnMgZnJvbSBhIEhXIFRSTkcgYW5kIHJl
dHVybiB0aGVtIHRvIHRoZQ0KICAgID4gZ3Vlc3QuIA0KICAgID4gDQogICAgPiBXZSd2ZSBvYnNl
cnZlZCBzbG93ZXIgZ3Vlc3QgYm9vdCBhbmQgZXNwZWNpYWxseSByZWJvb3QgdGltZXMgZHVlIHRv
IGxhY2sgb2YNCiAgICA+IGVudHJvcHkgYW5kIHByb3ZpZGluZyBhY2Nlc3MgdG8gYSBUUk5HIGlz
IG1lYW50IHRvIGFkZHJlc3MgdGhpcy4gDQogICAgDQogICAgQ3VyaW91cywgYnV0IHdoeSB0aGlz
IG92ZXIgc29tZXRoaW5nIGxpa2UgdmlydGlvLXJuZz8NCiAgICANClRoaXMgaW50ZXJmYWNlIGFs
bG93cyB1cyB0byBwcm92aWRlIHRoZSBmdW5jdGlvbmFsaXR5IGZyb20gYm90aCBFTDIgYW5kIEVM
MyBhbmQgc3VwcG9ydCBtdWx0aXBsZSBkaWZmZXJlbnQgdHlwZXMgb2Ygb3VyIGluc3RhbmNlcyB3
aGljaCB3ZSB1bmZvcnR1bmF0ZWx5IGNhbid0IGRvIHdpdGggdmlydC1pby4NCg0KQWxpDQogICAg
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
