Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35047F0978
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F34IYTBiNsBOZApZAEJCYMD+85NGuwa3mkiKLPKwbM8=; b=IoUo9fNkqksfP+
	FAR5XFYju/NIUXseg7ioDhBJFHtM4cC8Sxfv/nzbYnTOxas9XFcnj7HloZ0A6+eXrLvdSa1hUpxdT
	Yky3W/pEfWZm0KaMFIhyxLSKmOnNB0K8aqRzpsP7RzNwSQlJNyvoMO9qEx0kg4vjrSEgtFskEdvDw
	Y4oEf5Q5djNFcbTIuGx/TAAO3/7l0tHNWBp2b4hxOaS9czI939OvQmqozyBHf2amtrAQii9kOBoZN
	GoZkJ+EnCIPr1FVtZiEbWO9p0SJmhi3ssOkfpnqF8yVgI13tej1u/HZF5d7Ap54oWgzHkC0RZRxTw
	X+I28KdmnJAQ6muc925A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7JY-0004hg-Qu; Tue, 05 Nov 2019 22:28:40 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7JR-0004hA-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:28:34 +0000
Received: by mail-oi1-f195.google.com with SMTP id l20so7040375oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:28:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=KjC2KAma0LvKn8lumDMjxYlVIodGsZnVFEKifxdYSnk=;
 b=Ur9RTvwb9dlA2M5MKHwWklcZIVmmUX7kdL1kJzezY0DQc6aFn/yuTy8ku+Rdi7A5QN
 wc1IcGB9T0XBnOzKhp6nP13UgWumNRmym1pFPIghgR4mvB8othb5LgzuU1C5tBmCPE6o
 b5LHlEavqSXTzajFqCtfY6oI8CdBRq2hcy4jO5N4rYsaCBQ6bEDYdRjZqBrDNBIlcfWK
 GpD++aXguavq9Av/7rdZmv1g2vf0wdtZhjhIuy31dZxjbHAe9bWTVr9cZFzRJT/PEKjq
 BTKBDhhrBDXWg5zPzO9HC2KgfskfMLonp8eVjbG/16ZSmzT5ZFVIWqPeOozjjCBvuTr3
 vj3g==
X-Gm-Message-State: APjAAAUiJnooMafTvk5ORjAI0qIGlVFuwVgtEIcO00jcBxcAsakZlx1H
 K0feYaDZdiE4217zAdbczApo/wE=
X-Google-Smtp-Source: APXvYqy5wstR+27k4YDuFjIs+QGvk3acSSr3Nj8fQl3hz0coclqz40Lwa3CnvVJ6yzu4SV/xIyQc6A==
X-Received: by 2002:a05:6808:18f:: with SMTP id
 w15mr836024oic.136.1572992912226; 
 Tue, 05 Nov 2019 14:28:32 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h79sm6168228oib.3.2019.11.05.14.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:28:31 -0800 (PST)
Date: Tue, 5 Nov 2019 16:28:31 -0600
From: Rob Herring <robh@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Message-ID: <20191105222831.GB15425@bogus>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
 <20191101080256.gjc4tacltehro3iw@hendrix>
 <6C5CE71F-37F2-4C8A-9D94-1BC75937B478@holtmann.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6C5CE71F-37F2-4C8A-9D94-1BC75937B478@holtmann.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_142833_236005_B56F2DED 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Johan Hedberg <johan.hedberg@gmail.com>,
 Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 Maxime Ripard <mripard@kernel.org>, linux-bluetooth@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDM6MjA6NTlQTSArMDEwMCwgTWFyY2VsIEhvbHRtYW5u
IHdyb3RlOgo+IEhpIEh1Z28sCj4gCj4gPj4gVGhlIHJ0bF9idCBkcml2ZXIgYWxyZWFkeSBzdXBw
b3J0cyBzb21lIFJlYWx0ZWsgY29udHJvbGxlcnMgb24gQUNQSQo+ID4+IHBsYXRmb3Jtcy4KPiA+
PiBUaGlzIGNvbW1pdCBhZGRzIGJpbmRpbmdzIGZvciBEVC1vbmx5IHBsYXRmb3Jtcy4KPiA+PiAK
PiA+PiBTaWduZWQtb2ZmLWJ5OiBIdWdvIEdyb3N0YWJ1c3NpYXQgPGJvbnN0cmFAYm9uc3RyYS5m
ci5ldS5vcmc+Cj4gPj4gLS0tCj4gPj4gLi4uL2JpbmRpbmdzL25ldC9yZWFsdGVrLWJsdWV0b290
aC50eHQgICAgICAgIHwgMjUgKysrKysrKysrKysrKysrKysrKwo+ID4+IDEgZmlsZSBjaGFuZ2Vk
LCAyNSBpbnNlcnRpb25zKCspCj4gPj4gY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcmVhbHRlay1ibHVldG9vdGgudHh0Cj4gPiAKPiA+IFlv
dSBzaG91bGQgd3JpdGUgdGhhdCBiaW5kaW5nIHVzaW5nIGEgWUFNTCBkZXNjcmlwdGlvbi4gRnJl
ZS1mb3JtCj4gPiBkZXZpY2UgdHJlZSBiaW5kaW5ncyBhcmUgbW9yZSBvciBsZXNzIGRlcHJlY2F0
ZWQgbm93Lgo+IAo+IHVubGVzcyB3ZSBjaGFuZ2UgYWxsIHRoZSBCbHVldG9vdGggZGVzY3JpcHRp
b25zLCBJIHByZWZlciB3ZSBrZWVwIGl0IHRoZSDigJxvbGTigJ0gd2F5LgoKV2hvJ3MgZ29pbmcg
dG8gZG8gdGhhdD8gTWU/IFlvdT8gUmFuZG9tbHkgc2VsZWN0IHNvbWUgcG9vciBzb3VsIHRvIGRv
IAp0aGVtIGFsbCB0byBnZXQgdGhlaXIgZGV2aWNlIGFkZGVkPyBJIG9ubHkgaGF2ZSAzNTAwIHRv
IGRvLiBBbiBhbGwgYXQgCm9uY2UgYXBwcm9hY2ggZG9lc24ndCByZWFsbHkgd29yayBub3IgaXMg
aXQgbmVjZXNzYXJ5LgoKSSdkIHN1Z2dlc3QgbmV3IG9uZXMgaW4gc2NoZW1hIGFuZCBpZiB5b3Ug
d2FudCB0byBlbmNvdXJhZ2UgY29udmVyc2lvbnMgCnJlcXVpcmUgYW55IGNoYW5nZXMgb24gZXhp
c3Rpbmcgb25lcyB0byBmaXJzdCBiZSBjb252ZXJ0ZWQuIFN0aWxsIHVwIHRvIAp5b3UgYmVjYXVz
ZSBpdCBnb2VzIHRocnUgeW91ciB0cmVlLgoKCj4gPiBJSVJDLCB0aGF0IGhhcyBiZWVuIGRpc2N1
c3NlZCBiZWZvcmUgYW5kIHRoZSBzdGFuZGFyZCAibW9kZWwiIHByb3BlcnR5Cj4gPiB3YXMgdG8g
YmUgcHJlZmVycmVkLgo+IAo+IFRoaXMgb25lIHNob3VsZCByZWFsbHkgZ2V0IGFuIEFDSyBmcm9t
IFJvYi4KCkh1bW0sIG1heWJlLCBidXQgSSBkb24ndCBzZWUgJ21vZGVsJyB1c2VkIGluIHRoaXMg
Y29udGV4dC4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
