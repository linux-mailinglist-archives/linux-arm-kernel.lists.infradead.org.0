Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C89175ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbKt0zCdw6zmTL+e6CMi4jafQDPSRPVk+As8W2ylvK4=; b=eAHDzS9pbDlLWJ
	aO1elHjrAuYaSEAOoJXhh8+JPABvB3hoLgPlArSNJMjpLrdpRDYuoTy22ys9wf8ebJedr81fZTCpj
	5U8y1VQ5zAM85Gv5oT4lJCkSeREcbNiBoe2OnU7lS6hGTdLbMwXpLaKCEhZ52AXvDCbS7MzazzqxF
	raA853JIGDoaZ2YGs/DBF+obAWhw1pkWc3UgXTdLY0Yyz52J4fkya4xXF5wHODAw3anilrvpKtJ/G
	re2gIXrfFzZtAyj5P53u83+US6zsM2pC9P7FoamSoWza9scw7++jU3DJeRaR1ZeIh2Jpe0vFxDeDj
	nRiLyPXTQzCoDQrjUvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJlH-0005ub-T6; Wed, 08 May 2019 10:25:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJlA-0005tn-UX
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:25:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so26428107wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 03:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=PaqzO9al4lxA936zY+spe2YORCqLvjGbaUUHSrafi3k=;
 b=EEb6b5GNUr7bsYl/13ISQmF2h/5LBWSJkbvH6DNaQ0ZXyDAGV41LYDaQohaSxYCYzU
 RYgjwqkGH+E59hKG4JmHHzikh/aU4z5evz3j0WOUn2SqaiVqZKwq3CJ2EdM5jPRA2jhf
 SKCqVRUUl/ZGf3eDUpLHZ/o2XqFtVPFzdKtz1kZ7GsdxAV5veHc5edqL8oMafcAnwFKC
 4UaAtP0QXCf4S7mOVRtdeMCViDfF9vWmUbe3yN+RmyvUZYE1894b6g3oYYx9ErO5a/HX
 zgt43oYIMfZOozp7YmsqsCn5U+wWTw64iUpAvnRUn/zcDd8xEdRSXqKhvYlukjoLfzOj
 MJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=PaqzO9al4lxA936zY+spe2YORCqLvjGbaUUHSrafi3k=;
 b=BxNtFdjyBhTE7re858Gn9nejaY7AopJeurcpLbciJv/Od6mNouELRtE78hTZAIBfOw
 nVpuHsk+EwEk++005abKJnIEY/0hEzATYQtdlQAhHmH/VKF8Jqq8RRCmwB4PT8vLf2en
 jiFXq7DNUixc/CGwrOVJsdCgMc4stVhvqVx2YNopFwcvGmz8uTS7Empofxncr6i3to4B
 Dpanve1/Rf5SsOOihrJBn1LNIkGFA0VQochO1+/78kPFk8b7InYWocsvpJMLe6H95VuI
 RYVwA8SZhjeWBJJkUgCsqW+LnNoqBaswvYHFZnCKcZlvzj8ZUmxIWmmJ1WKdtcThsm5h
 u6Ow==
X-Gm-Message-State: APjAAAUGdRK2vDn59hVtOwkkslvz1uLg3mswhikHmqLak9rsbQySIaTh
 k7aDIt92wPbNjtGPRdl+ebQYpg==
X-Google-Smtp-Source: APXvYqz7H7fEpsZn4oC8Tv6c320q/odXG2NZeDdHFsKUvo4mP1qvW3GULokZIO6R3GZ1NGG5p/3lTg==
X-Received: by 2002:a5d:518d:: with SMTP id k13mr9026224wrv.285.1557311110705; 
 Wed, 08 May 2019 03:25:10 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id b10sm28463131wrh.59.2019.05.08.03.25.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 03:25:10 -0700 (PDT)
Date: Wed, 8 May 2019 11:25:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/3] mfd: axp20x: add USB power supply mfd cell to AXP803
Message-ID: <20190508102508.GH3995@dell>
References: <20190418161804.17723-1-wens@kernel.org>
 <20190418161804.17723-2-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418161804.17723-2-wens@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_032513_015454_22F04393 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOSBBcHIgMjAxOSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgoKPiBGcm9tOiBDaGVuLVl1
IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gCj4gVGhlIEFYUDgwMyBoYXMgYSBWQlVTIHBvd2VyIGlu
cHV0LiBJdHMgZnVuY3Rpb25hbGl0eSBpcyB0aGUgc2FtZSBhcyB0aGUKPiBvbmUgZm91bmQgaW4g
dGhlIEFYUDgxMy4gTm93IHRoYXQgdGhlIGF4cDIweF91c2JfcG93ZXIgZHJpdmVyIHN1cHBvcnRz
Cj4gdGhpcyB2YXJpYW50LCB3ZSBjYW4gYWRkIGFuIG1mZCBjZWxsIGZvciBpdCB0byB1c2UgaXQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+IC0tLQo+
ICBkcml2ZXJzL21mZC9heHAyMHguYyB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
