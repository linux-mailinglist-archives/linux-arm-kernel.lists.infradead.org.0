Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1B01476A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSza5RON3xvVlOtWzvvkfC83GjCF8UvLnv6RfSo4SvM=; b=IbpusYWtRw4ebT
	6b5SIl3IpZ0okVjlQBAkm+3spFzVfyadk9vSzJWLt+Sn6F9IMwO7ZR9SzTqGJvnEQBntqdOQ5fOsc
	xj9ilIKccEKDKuBVv/3SfRfsW6JL1oDaj39NoPhZ1+GAx/uoXT34eSZbPon2H2xbBOaL/DW09DH+E
	NEsz06RBtVFYNjw/LA5Aijso2Eibwjw6+M5dHUVeBF2WBdINAj4oi6xWqjNCG0G+Nj3XS/Wo1vjPw
	/xobryop6xYY4AReNNNq0OS18D550oHQm/WYSb9i6+ebqXgSqWdukP0n0XRQZ5rgt7Kw91FrTK03r
	UWbHEX52+BwRUxDtm02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iungw-0006Sg-1y; Fri, 24 Jan 2020 01:23:22 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iungk-0006S0-Dq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:23:11 +0000
Received: by mail-qt1-x843.google.com with SMTP id d18so321590qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 17:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+JCfN+nSKvj6z6tQnbylC4tnVuTXLYg++T8pHk3n1Rs=;
 b=eFwuIq388GfKUC6GUKdGzBK6GS8QptU0z6snMlcCeYTB3OaEDOZ8Jp5i/8m/E4MMgs
 +mu3AnfZEzmniI06Z8QY4BWKEfa1omxAnAQLDJEXq+X4QN1LQHxhyUK2ltD7Qfwep/vv
 dpXNOopKQBKiOxQ4TmC2BZlLeLUJ4V8yvSHsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+JCfN+nSKvj6z6tQnbylC4tnVuTXLYg++T8pHk3n1Rs=;
 b=DLkSzAdGnUcJAE/Z+U3W9/5Wuy5hUg3bwwqj/1GKprl4zbiDbI8yRMuQexMcUMZS4B
 msGdufC7K4n5TyQXxZJIH92Y17lev7c9+hAmG+WY5BjQfpBnvq+r2F5hK7bidDgX/n01
 5Xj3sWIoHkBK29GvQiSYEU7rm91qpMfjABiwWS1lNkPj8BKZm2kHaO7HJXDPwCvvu6RP
 evQoimsU9Ri9aj2zNcIXjvMfV9RDiyo35zq9dSap/U4mSihCu+qlQA41UiEYm3D7CaGJ
 tEuwtd4uS2DmoH05UIFKfG6WsoiUYCw7m2XG9Eq6d5zvGKNP7nJ3+BlXNmt48kKTFgWd
 2W6g==
X-Gm-Message-State: APjAAAXR1CTHaX9/GJ7Rhzcn1GUe4BLQ2GoYJ22fsVHxO4sje5Zo2fa5
 x7sFdYf7OG4OlEX2864w7lgJ83+VpZwtXfxM9tQ=
X-Google-Smtp-Source: APXvYqxTqcFmlwZcBGSX8ZImKVjjr5b8leE8AoohXrep2/0vxHoDMlibAChu/aMO2jSWaB/SxV3cSnP5w6RVZVwCoT8=
X-Received: by 2002:ac8:4244:: with SMTP id r4mr1014134qtm.169.1579828989644; 
 Thu, 23 Jan 2020 17:23:09 -0800 (PST)
MIME-Version: 1.0
References: <20200124011801.18712-1-sashal@kernel.org>
 <20200124011801.18712-3-sashal@kernel.org>
In-Reply-To: <20200124011801.18712-3-sashal@kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 24 Jan 2020 01:22:57 +0000
Message-ID: <CACPK8XdJ8=+SNws2NCjKeX8PRa2wV-J0wzAuWUiP6miL-TioNw@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 4.14 3/5] ARM: config: aspeed-g5: Enable 8250_DW
 quirks
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_172310_462864_E789D73A 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNCBKYW4gMjAyMCBhdCAwMToxOCwgU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IEZyb206IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+Cj4KPiBb
IFVwc3RyZWFtIGNvbW1pdCBhNTMzMWE3YTg3ZWM4MWQ1MjI4Yjc0MjFhY2Y4MzFiMmQwYzBkZTI2
IF0KPgo+IFRoaXMgZHJpdmVyIG9wdGlvbiBpcyB1c2VkIGJ5IHRoZSBBU1QyNjAwIEEwIGJvYXJk
cyB0byB3b3JrIGFyb3VuZCBhCj4gaGFyZHdhcmUgaXNzdWUuCgpUaGlzIGhhcmR3YXJlIHdhcyBv
bmx5IHN1cHBvcnRlZCBmcm9tIDUuNCssIHNvIEkgdGhpbmsgd2UgY2FuIGRyb3AgdGhpcyBwYXRj
aC4KCkNoZWVycywKCkpvZWwKCj4KPiBSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNs
Z0BrYW9kLm9yZz4KPiBBY2tlZC1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBT
aWduZWQtb2ZmLWJ5OiBKb2VsIFN0YW5sZXkgPGpvZWxAam1zLmlkLmF1Pgo+IFNpZ25lZC1vZmYt
Ynk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vY29u
Zmlncy9hc3BlZWRfZzVfZGVmY29uZmlnIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNv
bmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNvbmZpZwo+IGluZGV4IGMwYWQ3
YjgyMDg2YmQuLmNiMjNmOGFkZTNlMmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9h
c3BlZWRfZzVfZGVmY29uZmlnCj4gKysrIGIvYXJjaC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVm
Y29uZmlnCj4gQEAgLTExMCw2ICsxMTAsNyBAQCBDT05GSUdfU0VSSUFMXzgyNTBfUlVOVElNRV9V
QVJUUz02Cj4gIENPTkZJR19TRVJJQUxfODI1MF9FWFRFTkRFRD15Cj4gIENPTkZJR19TRVJJQUxf
ODI1MF9BU1BFRURfVlVBUlQ9eQo+ICBDT05GSUdfU0VSSUFMXzgyNTBfU0hBUkVfSVJRPXkKPiAr
Q09ORklHX1NFUklBTF84MjUwX0RXPXkKPiAgQ09ORklHX1NFUklBTF9PRl9QTEFURk9STT15Cj4g
IENPTkZJR19BU1BFRURfQlRfSVBNSV9CTUM9eQo+ICAjIENPTkZJR19IV19SQU5ET00gaXMgbm90
IHNldAo+IC0tCj4gMi4yMC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
