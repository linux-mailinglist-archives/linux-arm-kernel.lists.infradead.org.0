Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4F8CBD66
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErhLlO7Mv4r2YjLuZoRkxuMxQnjTyK+yyMtB7cerGy0=; b=skR/zZsGD4EnMl
	Vf0bDvyLc40MZHkpp84xvjDsEf2lLzWvkkP6TDmhxQEdcBNyBdkvp1ah1mPAArLq5nXLtj4qtMyjo
	6l9m20e7aBz+euCkWAF0CHMBBLrzJl2exgFC7ikkQIXsKhxuH7/1nRaIw2K9WFpKw8a7U4HFC/zIf
	8AfonmXstgwat6g6Dpz68+ikom0CsU+GxJpMq/QGLIbLvel9SK5OBEOVMduxCpVsKOP94tqd0YZj5
	xW+q4h4W/mvfKRxjgRmKpWSyk/wZUf6YzIWIQTpXGRMbUpXrlwgChjjTXDXYNgPhh9myqTOrQVq4r
	ae0K9JQ8mxKNv3f7agoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOgw-0005tN-5b; Fri, 04 Oct 2019 14:36:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOgk-0005rL-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:36:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id z9so7471208wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 07:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=H+yr5kS5iH2wmnNe9kPeQU/T3tzbAN3a+t+sjJ+iY7U=;
 b=yTGJqZkm09u05ribXQL0uDJJ9aCSfe45YY5Zmi6pWlVEFuFQctsjKj7yLyufgnswfX
 rJd0cAagn5RI67Kf3o9tdxqzvBMT9p9kPSfzME32i5S+eQVWvryxrBzdPlMsUgXwIgHr
 Ds/Ynp/Yf60O8c7I9AKA45KqfdWShNERMT6WfOpXwXHch1+57zBQymt2GLpYU7WVhQ99
 gP+pXFbzcFLFKP0GndNbZIJWmH0G5DyjS1yzgO7s0kQ8YtfMhKZFjKu4/Iv55C2oSVNA
 cCklWMufOaHW4ABU667u118NIZF3O6jrehnSoF/J219zt3lVEZtSgXWz+5WuYfHQwo87
 ETlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=H+yr5kS5iH2wmnNe9kPeQU/T3tzbAN3a+t+sjJ+iY7U=;
 b=OespyZeiUDrIwb6yIwn4tnvdGW9LaOXivuPIaABUuLG9mje1mgZw62hJygElvwefOr
 3XazHa+MTQ/0oj1YMqmUgpXksLmGuF4Iu4c0HhuYApLNb9hFDR9fr6lMIQBsUfP9B2pm
 C5MfNUZOyuQGselJuGgp7SD7rgB2SZK5HQ5/rjsVtYrzQw3H4m7dUP70fKejfXqTGT8/
 CFnQjCTJ/mGa3ut2Azopf/VKDiUIoUo8WBPUiTFzDadGN6Yz/g2U5U1bMaRFK4NM+Ml9
 4YXrTosMOIuZkgoNgDSy158qReIDUhHSyfd/wWzq4aK2yCEWfDW0KCG2fKUg4fFUdwnK
 fcBg==
X-Gm-Message-State: APjAAAX5n6dkeB/S0/7L5GOBCpy6Y7DRdhXt2W5fVN1UfcqhFTfP73L/
 thOmnM3zGziMU8D4ovX44i0Fgw==
X-Google-Smtp-Source: APXvYqz2i9TJzrN0Lsg67JBKMSZYobGbOf6d9N2rrnf6nMWRkWoUODo9EYYr7bSLftlbdYhSpmZ0vQ==
X-Received: by 2002:adf:cc8a:: with SMTP id p10mr11756685wrj.321.1570199769269; 
 Fri, 04 Oct 2019 07:36:09 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id z189sm6971821wmc.25.2019.10.04.07.36.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 07:36:08 -0700 (PDT)
Date: Fri, 4 Oct 2019 15:36:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] mfd: max77620: Do not allocate IRQs upfront
Message-ID: <20191004143607.GL18429@dell>
References: <20191002144318.140365-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144318.140365-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_073610_941063_5EB9BA2C 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwMiBPY3QgMjAxOSwgVGhpZXJyeSBSZWRpbmcgd3JvdGU6Cgo+IEZyb206IFRoaWVy
cnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4gCj4gcmVnbWFwX2FkZF9pcnFfY2hpcCgp
IHdpbGwgdHJ5IHRvIGFsbG9jYXRlIGFsbCBvZiB0aGUgSVJRIGRlc2NyaXB0b3JzCj4gdXBmcm9u
dCBpZiBwYXNzZWQgYSBub24temVybyBpcnFfYmFzZSBwYXJhbWV0ZXIuIEhvd2V2ZXIsIHRoZSBp
bnRlbnRpb24KPiBpcyB0byBhbGxvY2F0ZSBJUlEgZGVzY3JpcHRvcnMgb24gYW4gYXMtbmVlZGVk
IGJhc2lzIGlmIHBvc3NpYmxlLiBQYXNzIDAKPiBpbnN0ZWFkIG9mIC0xIHRvIGZpeCB0aGF0IHVz
ZS1jYXNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRp
YS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL21heDc3NjIwLmMgICAgICAgfCA1ICsrLS0tCj4g
IGluY2x1ZGUvbGludXgvbWZkL21heDc3NjIwLmggfCAxIC0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
