Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108991325DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbQU+P/MYd9/fQj8Z5pgX5XpBq1deM5bKNtSNmjRcSM=; b=APCy2nWyM6Mk6l
	B8IlTB/zSjxw+Ua3D+Mu8ix81GLEcXMXXHfzgpUK4gTI9Izedu2nQT8JDOZ2Dy3TYp+LtArc+PucW
	kK8iWvMyAG+nKvwQ4QJIxsceYb6ft/K05goS9pRTr8qJL9TZFQ7+f5+xoBgNa2JSj3vzK6WPF4e+u
	iKjDsYDAJ9C/e0XECqCd4BnUwkPRzxQYD24/lDNs+4hKMikvxzFcksYh+PPWwGFcPJrqANuRqSTrz
	M+BUStVbIq4O0Kr3m45UvKe77vYbHyeo/v4WRx/5u5OIPQQULbD70hT6bZ+AE+WLRAgd2uHdYSXKx
	IqoKYCbj4c08WzlYnXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionlj-0000Cl-Tx; Tue, 07 Jan 2020 12:15:31 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionlU-00005N-Ll; Tue, 07 Jan 2020 12:15:17 +0000
Received: by mail-ed1-f65.google.com with SMTP id b8so50167541edx.7;
 Tue, 07 Jan 2020 04:15:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dkoKwK15oscs3r0V8scapeKxlP48dhvoGFKEGuBFTog=;
 b=W9+hJuWRMWNEoxiRmOUFBZOi0pq/koL2/0HygK+1yiAYpl+w8GwHLuzMTKzZR4HVs8
 U2D24QfyD011Oiro/m5M2oSJcMuXaSaMQP4SOeSE1iX2Q7y2t4IEQGzi+C8yDH3k7nvj
 inX9p7fBE7P9xOKGlVTnFM9+bL28Co1ZJG5J6IGLOuDjSBdaebP1pSC5BQfBiDD3hnTb
 ALK9da3uT5W5qT7Ih1yNWGiW9ZhbFqZ+dujYtVM4VFUby7QpOZR9V36H1acn/SMZmkeb
 +kOY3B4nzvou4+M0thQ+qOILhdZ2nzjUgtNFuchoik9NhUKG0IsJ+rtA7Q/mVaUPhW7T
 jILw==
X-Gm-Message-State: APjAAAWXqLU1teZPYdYajOZb1cl4md1GdOcc8R/bnqRrtM3bfHMNPZIF
 9GMTg1cEMPCoTDfAp/LNfoRXXJ7c
X-Google-Smtp-Source: APXvYqwW9wXBZpzOMfTBS/kbOe4ZNckfdL5+6WOz5BazFgA1mugpFZqXKx0VrM2wxvGj7bgEnT9msA==
X-Received: by 2002:a17:906:eda9:: with SMTP id
 sa9mr109435185ejb.297.1578399315230; 
 Tue, 07 Jan 2020 04:15:15 -0800 (PST)
Received: from pi3 ([194.230.155.149])
 by smtp.googlemail.com with ESMTPSA id f9sm7382215edr.66.2020.01.07.04.15.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 04:15:14 -0800 (PST)
Date: Tue, 7 Jan 2020 13:15:12 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Message-ID: <20200107121512.GA319@pi3>
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
 <20200107072645.ko247bwhh3ibdu73@pengutronix.de>
 <20200107082539.GA31827@pi3>
 <20200107104234.wq74fska3szrg4ii@pengutronix.de>
 <20200107110359.GA32423@pi3>
 <20200107113354.ggq6zarewq5ip354@pengutronix.de>
 <20200107115429.GA32632@pi3>
 <20200107120926.cgrxk6b4rchf6i42@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107120926.cgrxk6b4rchf6i42@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_041516_715457_1F6BA773 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 kernel@pengutronix.de, linux-amlogic@lists.infradead.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMDcsIDIwMjAgYXQgMDE6MDk6MjZQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gPiA+IChPaCwgSEFTX0RNQSBpcyBkZWZpbmVkIHVzaW5nICJkZXBlbmRzIG9u
ICFOT19ETUEiICsgImRlZmF1bHQgeSIuCj4gPiA+IE5PX0RNQSBoYXMgdGhyZWUgZGlmZmVyZW50
IGRlZmluaXRpb25zLiBUd28gb2YgdGhlbSAoaW4KPiA+ID4gZHJpdmVycy9jcnlwdG8vY2NyZWUv
Y2NfaHdfcXVldWVfZGVmcy5oIGFuZCBhcmNoL2FybS9pbmNsdWRlL2FzbS9kbWEuaCkKPiA+ID4g
dW5yZWxhdGVkLikKPiA+IAo+ID4gWWVzLCBIQVNfRE1BIGlzIHRoZSBzZWNvbmQgbWlzc2luZyBw
aWVjZSBmb3IgVU0uCj4gCj4gU28gc29tZXRoaW5nIGxpa2U6Cj4gCj4gCSMgVXNlcm1vZGUgbGlu
dXggZG9lc24ndCBwcm92aWRlIEhBU19ETUEgYW5kIEhBU19JT01FTS4gIFRvIG5vdCBoYXZlIHRv
Cj4gCSMgY2x1dHRlciBtb3N0IGRlcGVuZGVuY2llcyB3aXRoIHRoZXNlIGp1c3QgZXhjbHVkZSBV
TUwgZnJvbSBjb21waWxlCj4gCSMgdGVzdGluZy4KPiAKPiBhcyBjb21tZW50IGZvciBDT01QSUxF
X1RFU1QncyBkZXBlbmQgbGluZSBzaG91bGQgYmUgZmluZSwgcmlnaHQ/Cj4gCgpJIHRoaW5rIHll
cy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
