Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F3AA5FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OU/eu5mOZeWhBCmH8GeN4+nn1xGbiTXoZW7mmUCicQ=; b=kKdkZYwJ9Xe8jQ
	zADbYwDAUdu4jLhDPv4o49XdQhVzsiK9/WQogin9mWQgwMizVnTePtNxAMmiZrxxJ4/VczpDdFxUl
	BkPJ9Ub4vDPvMSWNDiYXpMiMnpwYlheNHwtx1fkzYfrdre+DB4roTKfLnIXSPqBlSbXWy5iKZ/P+Z
	hoR5G2fdcUV8fMatIo35Lo8azmUnl0v71Swm+0oHMccKkxwOR0C6Sh1o2Y30rRiwxKJNdAnVWlTr+
	qH/mNcxMFN3dy59Rr/1ir5b9gZb2L9NJ/YvUOoxRoZhjrWCBMl5/1y4o1aBLifjMJsqT7Ii9Yqukr
	BlxzUBCuBKFfK3MBXDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sqK-0001rc-VB; Thu, 05 Sep 2019 14:34:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sqA-0001r5-G1
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:34:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id q12so3350928wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 07:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=DyTw9eXVQm1IWrN4WvbcEFv8xvh92gzUp05Bd1JROcs=;
 b=ko7ppxFDEAiwEELcyPLL5C3zPAEAP/lMXO+uEQEqEAh/yKcsyqip8+coBqZyqHjIFA
 M/2KxCRWGsALtstWQHuhxG6OQ3n9laBE/K9F04K5QJsO6nsOrYGdDP89FSVEPuNc1psY
 alB+gYnUEsvkUM7/zE7NQQW5cPDjZC/G9qM9ZKAG8o/wrFHFu8Gnnaydw1BjmoJfJS/9
 gxCgfejK0r/KxwyHjLNRb4jS3IbGmc45eY+YSQqAiy05rtyZoX7zwYaNx7Phu26maV88
 J2oUrNbH9eKAU8a5SX1eDBj5LyQDjPmkrYu6XHAF8ojfHZxzwRwVDEPhEJhthkDOyRol
 kTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=DyTw9eXVQm1IWrN4WvbcEFv8xvh92gzUp05Bd1JROcs=;
 b=tVosHJQOrtTH6k0LqMvCMZyeCMYSvFZTYt0yVODdRysWkTRpr8wi4mwnNYONzdBNYZ
 cvHZiCoHcxWQpgcywdhkMPoSXcdvQSTVt45flh8QjXERqNNJxTkP7LdXU59IhHJ8kZ/t
 qjGZfpk12Y+CUF8mT9EQY88NtatxsoQzie14QmDrxCMvUR4co2vVhlfM/zEYHfH/77TS
 rDiri+OuY7Ly1hPVynkmHKqE7AMF20J1A0rgW2ItLkcW1hLiOTiLN8LKuGZDpbksCia8
 K+GcDH7uhkrWJdARz1pqL4ftcnnb2zyxMFWV9IgA29xNacgNZk6kwjpqDNJvFj6qXI1f
 9Gbg==
X-Gm-Message-State: APjAAAWdUY6dDLYsDY+67Zc9Do5iToH1OtC+bAYWCqaRr61sYLIkv+uY
 fOhJdBrQ90I+JLPSzOurQ6ly3A==
X-Google-Smtp-Source: APXvYqypIINRLr/tdc6ZE4OP7FqGeS1CGF1Dknw14T3cDFuJ3wEbHIo7XY5x44yBErUXQfIEAM9puA==
X-Received: by 2002:a1c:cbcc:: with SMTP id b195mr3552405wmg.80.1567694065295; 
 Thu, 05 Sep 2019 07:34:25 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id l1sm3058017wrb.1.2019.09.05.07.34.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 07:34:24 -0700 (PDT)
Date: Thu, 5 Sep 2019 15:34:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905143423.GG26880@dell>
References: <20190905075213.13260-1-lee.jones@linaro.org>
 <20190905075213.13260-2-lee.jones@linaro.org>
 <20190905091800.GD1157@kunai> <20190905092816.GD26880@dell>
 <20190905134338.GF1157@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905134338.GF1157@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_073426_530336_9DE7CBAF 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwNSBTZXAgMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiBPbiBUaHUsIFNlcCAw
NSwgMjAxOSBhdCAxMDoyODoxNkFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBUaHUs
IDA1IFNlcCAyMDE5LCBXb2xmcmFtIFNhbmcgd3JvdGU6Cj4gPiAKPiA+ID4gCj4gPiA+ID4gRml4
ZXM6IDhiYzUyOWIyNTM1NCAoInNvYzogcWNvbTogZ2VuaTogQWRkIHN1cHBvcnQgZm9yIEFDUEki
KQo+ID4gPiAKPiA+ID4gQXJlIHlvdSBzdXJlPyBGcm9tIHZpc3VhbCBpbnNwZWN0aW9uLCBJIGRv
bid0IHNlZSBhIGNvcnJlbGF0aW9uIGJldHdlZW4KPiA+ID4gdGhpcyBjb21taXQgYW5kIHRoZSBm
aXggaGVyZS4KPiA+IAo+ID4gVGhpcyBwYXRjaCBzaG91bGQgaGF2ZSBiZWVuIHBhcnQgb2YgdGhl
IGNvbW1pdCwgb3IgYXQgdGhlIHZlcnkgbGVhc3QsCj4gPiBwYXJ0IG9mIHRoZSBzZXQsIGFsbHVk
ZWQgdG8gYWJvdmUuICBVbmZvcnR1bmF0ZWx5LCBJIHdhcyBjYXJyeWluZwo+ID4gQmpvcm4ncyBo
YWNrIHdoaWNoIHNpbXBseSByZXR1cm5lZCBlYXJseSBmcm9tIGdlbmlfc2VfcnhfZG1hX3ByZXAo
KQo+ID4gd2l0aCBhbiBlcnJvciwgc28gaXQgbWFza2VkIHRoZSBpc3N1ZS4KPiAKPiBJIHN0aWxs
IGRvbid0IHNlZSB3aHkgdGhpcyBiYXNpYyBBQ1BJIGVuYWJsaW5nIGNvZGUgKG5vdCB0b3VjaGlu
ZyBETUEKPiBidXQgb25seSBjbG9ja3MgYW5kIHBpbmN0cmwpIGNhdXNlcyBhbmQgYWRkaXRpb25h
bCBoYW5kbGluZyBmb3IgRE1BLiBBbQo+IEkgb3Zlcmxvb2tpbmcgc29tZXRoaW5nIG9idmlvdXM/
CgpQbGVhc2UgaWdub3JlLCBJJ20gZGlzY3Vzc2luZyB3aXRoIGFub3RoZXIgcGF0Y2ggaW4gbWlu
ZC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBM
ZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xs
b3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
