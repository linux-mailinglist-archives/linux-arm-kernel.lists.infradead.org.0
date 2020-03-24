Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB4190BF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlMbKAmUdY4hdSAyJOK3XzNHpxzK46yQWZnON1FWZHc=; b=Y1om+kgzA4s5b9
	3rBpj2k2IEGv1adwdok6jOn4Yp7ph2hkwduRlpHQUk+T6XCi3mFoDsQhkNxBhSxD/8hdxI12X7WKH
	cbkFXdR0J2zS2Mc1fSZ9WGnXG0g7auq9Dzlm0C6YwdGNKsyWcafZQzgv9L2yxFdqs8KtNCrzZfTm9
	0v5ua9zCePjhnnQ0EZ3u+9t0KvUZHGjNS57AAlqyagRDf1RorTQsRnFl7Qot7F/CQaSUHPKLXWD9l
	gLUe5P45Ia7no/0pvmrWAYHR0iQxHt5aihspRtvJSvCA1g7NiE5S6VAbp9/WouhtPSuExDpB9qbDT
	L9VJ9IuFT3lI9eAgteyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhOY-0003gp-LG; Tue, 24 Mar 2020 11:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhNo-0003Jy-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:06:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A02F20786;
 Tue, 24 Mar 2020 11:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585047967;
 bh=2LvE4EYXx6S7St3XOfLekrr0TlyAbuI62HGedV7PVfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMhjKYnTWQPLqClRhwzeajd6cZLTTFORXjkcvfQmEmIVUg7JPlcZsMrANTFof7NHd
 wlWlxdOGa8LS/D11JaFVyXerSDI6CgWlFZtnDC2IKK2L+gWLquXQla4/5eWmsPKoTQ
 WgB2JPDT362mDWfTZOs1hyoYL2NDudE1kUbt6Hoo=
Date: Tue, 24 Mar 2020 12:06:04 +0100
From: gregkh <gregkh@linuxfoundation.org>
To: =?utf-8?B?5ZSQ5b2s?= <tangbin@cmss.chinamobile.com>
Subject: Re: Re: [PATCH] usb: gadget: bcm63xx_udc:remove useless variable
 definition
Message-ID: <20200324110604.GA2225782@kroah.com>
References: <20200324062932.8364-1-tangbin@cmss.chinamobile.com>
 <5f67315d-18c1-e444-03e7-a79a21d48b02@cogentembedded.com>
 <202003241719218101862@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003241719218101862@cmss.chinamobile.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_040608_274373_449CACFD 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.3 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi <balbi@kernel.org>, "f.fainelli" <f.fainelli@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 cernekee <cernekee@gmail.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgMDU6MTk6MjJQTSArMDgwMCwg5ZSQ5b2sIHdyb3RlOgo+
IERlYXIgU2ly77yaCj4gICAgICAgICBJJ20gZ2xhZCBmb3IgeW91IHJlcGxheeOAglllc+OAgkkg
dGhpbmsgdGhlIHZhcmlhYmxlIGFzc2lnbm1lbnQgaGVyZSBjYW4gYmUgZGVsZXRlZOOAggoKR3Jl
YXQsIGNhbiB5b3UgcGxlYXNlIGZpeCB1cCB5b3VyIHBhdGNoIHRvIHNheSB0aGF0PwoKdGhhbmtz
LAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
