Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470A389820
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKo30kJqqTrhFEYIawZYBjZtGhhGOe8obMuokdWUOQ4=; b=WqlxclrZOI6FZT
	svNumJIOjsjMVUmQmjXU0vBLqnQoTdIJnCekGiU7322XYFZXm5EOVPaCd8XsKfSzw1KDED/ldd73W
	LftjV9pUGQxJ7wZRiv6SDaBVOZNXqmxwzmfsBA2aKNdMKtdOpKPkzxQwtDAENIQDv0iTJAI+gJ8D7
	L+cGO6lSnhDDOnf++pHftqVdjX/cd28IvHktp2S8E1j2AwvvfKSM9IcwIqtGrtq0602arcwVe/6pe
	WdV7L1UO+QgRmM+nWkRFHGg9n8W4yIOud9OvLPpB64sKxzH+yU+O+8pLz8JYPK87TDzL6uRMpDL/5
	KzQ0Sd0kH99DIRSDiXSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx52r-0002Zg-O9; Mon, 12 Aug 2019 07:47:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx52f-0002OS-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:46:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so10873675wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 00:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=I1bA5jORkWQ9x0UxkfmMQZ+aUJyRV+I6opQ4+8D4ims=;
 b=lglejf56tBgWWaA7k3eSdwo3OsbCb6f9LcRJm4ksycSN9PTqOJu5CyHXQ+7IqzJxvo
 7eoPc02Kq96MebG5zgVDaK6GL3PqYP3oPbqMVA3xL/sJN5YXNK7ppv2ebdgtMdQUeXOg
 lyPkt2oTPPFItUVxs+qZJNq7Nyh+Jlxtr64y6cNWYF/I+BjMKGquSdbPcI6xdM2SfDvX
 NDNwh2DfSdbxJaVON1KhDpb8+QCLjUtAdXFkqh4Msi8u7LNBS0j3sm3LntBLcKI5OReY
 9USSjYB+1Taq8TMsf80a6IKlcJP2QosDu6bV/kKpNJPpS33yRsvVHmsL1rY8Nr/h3ZCc
 fzeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=I1bA5jORkWQ9x0UxkfmMQZ+aUJyRV+I6opQ4+8D4ims=;
 b=XVRu0yaWyaeLqdP9c3HjB/6bEsQy/qsSODVE0F8gQntqr4rDQsORZ99EhqDxplzSkq
 4T1xl2+t/9m+1T4f3qk61gl+UhElVKXQQw9310IpdDyHZwE4IlZrRkZOV8yf1qIG2vBc
 HTB4Nlg/U2dsudhX0YsjJpGZWKpnbyKTZqoy8X1N2vDjILJ5bO6R0ZZRJBFCP+u494H+
 TSNSyJORbXC8ShgyRJa8WAYVkkGc6p1Spro/MMh4EtQrA2M1MOc/LL77Ij07z0D2RdGu
 BOk8Quyxx6IWp5nm0PMOPyWikc+FUWLHnhGZpVCuovI/CxAhseLxNFUOpBJyERbvKvJO
 i3vA==
X-Gm-Message-State: APjAAAUYKzZHs+ormOpwnbAQ6aaJRy7nzsSFAOQgyPSzvqZrjupLw0tC
 jtZKlDLa/FvX7rwZOPjWxDW7CA==
X-Google-Smtp-Source: APXvYqwQUWwJahjPXQuRPdhuH8iNxALXWjWb/36HKamnbs66r/hrIHkKFrKzeZUKDpJJ1IQoeq2kng==
X-Received: by 2002:a1c:f913:: with SMTP id x19mr26141015wmh.139.1565596015652; 
 Mon, 12 Aug 2019 00:46:55 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id f197sm13829394wme.22.2019.08.12.00.46.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 00:46:55 -0700 (PDT)
Date: Mon, 12 Aug 2019 08:46:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 03/14] mfd: ab3100-core: convert to i2c_new_dummy_device
Message-ID: <20190812074653.GU4594@dell>
References: <20190722172623.4166-1-wsa+renesas@sang-engineering.com>
 <20190722172623.4166-4-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722172623.4166-4-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_004657_683449_19BA77E8 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMiBKdWwgMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiBNb3ZlIGZyb20gaTJj
X25ld19kdW1teSgpIHRvIGkyY19uZXdfZHVtbXlfZGV2aWNlKCksIHNvIHdlIG5vdyBnZXQgYW4K
PiBFUlJQVFIgd2hpY2ggd2UgdXNlIGluIGVycm9yIGhhbmRsaW5nLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFdvbGZyYW0gU2FuZyA8d3NhK3JlbmVzYXNAc2FuZy1lbmdpbmVlcmluZy5jb20+Cj4gLS0t
Cj4gCj4gR2VuZXJhdGVkIHdpdGggY29jY2luZWxsZS4gQnVpbGQgdGVzdGVkIGJ5IG1lIGFuZCBi
dWlsZGJvdC4gTm90IHRlc3RlZCBvbiBIVy4KPiAKPiAgZHJpdmVycy9tZmQvYWIzMTAwLWNvcmUu
YyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
