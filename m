Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD35360D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5XoDtTzxTa9vlkkJz2N39kdDXTrEbpFrwVPrTXGSBw=; b=MclCvwuwpNnTU/
	F+/O8CAaw5gPSXIV0w0jUlLQ2BzXUxbDjN8XySxxrTEA5QCTPlLbECVcJXWrWKZrHwGoNzC4Lh90X
	l9wJXo3Cfk8SfhnQ1HxTqfRIZqhplyrCD3SIF19fWrnsv0PEqVRPrGXQxozu4RDgApQ316s3UDi/X
	gmGQ73l9bUAB7wJNHWqDbTPDGQf3K3K/HNfaWh/DF0DOFeUPCMbyzOnyAJU8oG/sf/efKpHpyCFaJ
	YDDV+pI2f03XSHbhnrKHcWUUEsdcsitj4W5TolPNXXlyTfn5IuSZLBu4ve8RcVIy7amevLPCAHIKj
	Ws/ljVg34YFe5AxfUbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYRw-0001J9-O4; Wed, 05 Jun 2019 16:07:40 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYRp-0001IO-3T
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1559750853; x=1591286853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Z+5gkqiGLrc1+ckzFfGnbs6e2GkIHGZDRzA+b4QtS/Y=;
 b=MipnjpWCZP32nnX89sxbZHpYMnmE2E2f0QzdW1cLMB1/Y63Joq/mlPZP
 Lg0bDBbmOTGGSM6Y+wjuQsxi2C0L0b1pNEErpwiMAXflnBKfhXBMmL4d2
 s7t+XpyKQUxMi6XSeOuasptMrzSJ6WwsFZp7bOeq9/rW6WmOMwPcWe6G6 c=;
X-IronPort-AV: E=Sophos;i="5.60,550,1549929600"; d="scan'208";a="678327978"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-1e-c7c08562.us-east-1.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 05 Jun 2019 16:07:26 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1e-c7c08562.us-east-1.amazon.com (Postfix) with ESMTPS
 id 87368241DA6; Wed,  5 Jun 2019 16:07:23 +0000 (UTC)
Received: from EX13D08UEB002.ant.amazon.com (10.43.60.107) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.129) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 5 Jun 2019 16:07:22 +0000
Received: from EX13D02UWC004.ant.amazon.com (10.43.162.236) by
 EX13D08UEB002.ant.amazon.com (10.43.60.107) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 5 Jun 2019 16:07:22 +0000
Received: from EX13D02UWC004.ant.amazon.com ([10.43.162.236]) by
 EX13D02UWC004.ant.amazon.com ([10.43.162.236]) with mapi id 15.00.1367.000;
 Wed, 5 Jun 2019 16:07:21 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 2/3] arm64: export acpi_psci_use_hvc
Thread-Topic: [PATCH 2/3] arm64: export acpi_psci_use_hvc
Thread-Index: AQHVGxR9cfXbpWZUwE2BXRlhLfgFYKaMz0WAgAAQPwCAAAgCAA==
Date: Wed, 5 Jun 2019 16:07:21 +0000
Message-ID: <8C0E3CF9-36FD-439A-8D65-0FC688BD5C80@amazon.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190604203100.15050-3-alisaidi@amazon.com>
 <20190605094031.GB28613@e107155-lin>
 <20190605103840.GA30925@lakrids.cambridge.arm.com>
In-Reply-To: <20190605103840.GA30925@lakrids.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.148]
Content-ID: <11CAE4E330D68C43AF225BE971716552@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_090733_228287_0912D2E6 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Matt
 Mackall <mpm@selenic.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Rindjunsky, 
 Ron" <ronrindj@amazon.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, "Woodhouse,
 David" <dwmw@amazon.co.uk>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDYvNS8xOSwgNTo0MCBBTSwgIk1hcmsgUnV0bGFuZCIgPG1hcmsucnV0bGFuZEBh
cm0uY29tPiB3cm90ZToNCg0KICAgIEFsaSwgSSBhc3N1bWUgeW91ciBmaXJtd2FyZSBoYXMgU01D
Q0N2MS4xKy4gSXMgdGhhdCB0aGUgY2FzZT8NCiAgICANCg0KWWVzLCBpdCBkb2VzLiBJJ20gaGFw
cHkgdG8gYmUgYWJsZSB0byBjYWxsIGEgZ2VuZXJpYyBmdW5jdGlvbiBpbnN0ZWFkIG9mIGhhdmlu
ZyB0byBmaWd1cmUgb3V0IHdoaWNoIGNvbmR1aXQgdG8gdXNlLg0KDQpBbGkNCg0KICAgIA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
