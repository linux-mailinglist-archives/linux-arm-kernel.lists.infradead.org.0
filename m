Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D973F79C7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 00:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX8jBJPdVKaLS8Zsl9AFjvXCOrDmXSFBJ1+8pUeqKq4=; b=JMqtHL1JU0zo24
	VkTj9Ld0oUxrlU15KN3qlak9n0l/l3TYAml4WXuwxa7JGExXXkLf8rHnlb7DXfZQTArHxZbR957Tc
	/FdnZxKSPp3B/JXPFIDTmTNSJ4kJNAIe18R0bUw32DyM0DW8yWx3wov9KAirZ1dBiiULT64Um2J3Y
	RfU8Kul8/H6nZOKRxryg8izXg702q2D7X4FGqHZRMdTT4JQMb7cVZK/FNiUYUWEo1OVd0yfqiCfOv
	AIQjAnhZHRVvbEkKiQiAKAzfQCYJqvc/7mWBmtnL8tiPI42Uuue8+ljJh6n991ERf7UTwo4VY4U8V
	ldJUqZdKBg2oRgjBPBhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsEDq-0002Ig-TM; Mon, 29 Jul 2019 22:34:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsEDe-0002IK-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 22:34:16 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71F6E2171F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 22:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564439653;
 bh=UL/gBnx9jYfrVHist4KYUvcwtJIvyBWv6hvZPCsoOW0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L9aNKM184YGpqCtVjDjY3zQkee2318qVdo3hl9dUXGd/3Wzi5kgwHDUM93BkqSDYX
 dF6kJSc6i6cenx0UFnN3WcahCKUpxg/DkySSa3a4SP4+EIujV1R9Nqe3q5UMyQHJcb
 wCaSI9vpzZxHwMQ5ZWiG2SD9vMnwiDe4E/d7k73c=
Received: by mail-qt1-f171.google.com with SMTP id k10so61202199qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 15:34:13 -0700 (PDT)
X-Gm-Message-State: APjAAAXwN6vYRO7w94DGPrkm/66GLCAuJpAtKnyoRZ+1pYwx2dgdiMRh
 LNUdhBqehGsHo1Duek0S5Ngng3SIJGbg4GwYng==
X-Google-Smtp-Source: APXvYqxDddh1YcE9UAN2JJmIBUYbYYMf+ygtncXzM0eKfGj2ABWdU6BIO8Hr98PRgT9kvxxiZxUr7IATx650642VdH8=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr80565581qtc.300.1564439652644; 
 Mon, 29 Jul 2019 15:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-2-uwe@kleine-koenig.org>
In-Reply-To: <20190728210403.2730-2-uwe@kleine-koenig.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 16:34:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+G-kk3_UHC=nAEJFXQ22-gBL0AFUrCXv=CZNy-GXHH3Q@mail.gmail.com>
Message-ID: <CAL_Jsq+G-kk3_UHC=nAEJFXQ22-gBL0AFUrCXv=CZNy-GXHH3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dts: add vendor prefix "acme" for "Acme Systems srl"
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_153414_232678_4DA81B91 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, info@acmesystems.it,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKdWwgMjgsIDIwMTkgYXQgMzowNCBQTSBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGts
ZWluZS1rb2VuaWcub3JnPiB3cm90ZToKPgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQoKSXQncyBub3QgQXByIDFzdCwgc28gSSBndWVzcyB0aGlzIGlz
IGEgcmVhbCBjb21wYW55IGFuZCBub3QgdGhlIGNveW90ZSdzLiA6KQoKQWNrZWQtYnk6IFJvYiBI
ZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
