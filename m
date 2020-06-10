Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A311F4B54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gV5tn4BNIOGrsceATE4FqLh8Bul55CXf5db+zb8cl4U=; b=A3xMrnem0oxzCNvCpirDNufmbD
	8A1wmYIxFKz4JW7n0Zwv/MAp4B6RjYx2rALSB0ozlm0WZQujBQwTAySJ/kN8Ztd/TL0Qf20jjKBBD
	SE64FVeHSKan9EHo7uMyQcZRoIw0aPE8LxtUyUwo36kAPOuMJJGg+GixT3CMOzrEJfYqateB5dGoU
	cRsW8Qs+jYlmBZWi+XAA/21T7ULV6b/WH787xcCO9ZdVruUUj1WwUysulFW6Kiq+X4UpHGKlVflXy
	xJKofHa+dWlbyKJzgQtsAsP2oTR3n0yICrQYCYxDChoTI3iIaN0MB8aEvxZ/K5GSG0uvPdr9jJ8P+
	tJi9hh9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqNU-0000ui-JW; Wed, 10 Jun 2020 02:22:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqNN-0000uK-9Y
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:22:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id w20so288629pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=6MDJxP19WPGYDK5RYXnflZJ1FBWzKzFWdzGVhyzU/Lk=;
 b=sK8rI60AsbWsh3JwhXzYcXyAkUhNHSg2pbGU2IX1PaiSdhY41fcfiMd3U9UxqkcM/t
 bLihMU3wAZlB64dayGyl6qz11RNWB9Dc7jIfvnXJqZlUI0PuJWys60vW+OZ0/tPTy96f
 GbtZPqawK7zvLXWlSpolLOTp0711JoWQT9PR8h0kCwb/gA1KVxZ9IwCm3Nx15sjmqN23
 A/4dpBuCWPfvwVspmyzYn8grolZC/Qglbkq1ufgDWJX+FvjgnNXu85WUOaZJEHIOZXls
 cl+vwwWpYx79bIiPfIZiYN+Rwv3uwvmVWm0p6L3QRDQ0en/yeCmJ3EJO1Vmm8DJCCGsf
 vYxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6MDJxP19WPGYDK5RYXnflZJ1FBWzKzFWdzGVhyzU/Lk=;
 b=fSrqv/ZyDd2xAj6FS9xeSQyvhlshtIr8SM8/nT3n4FT8sDNy7l3telB+O6MyrV+idd
 DkSKHesrChF/DQXUQd8V93XATY7SyX1OKfNgw+lNryFVXHWAoka0Fy2iQy6c1jBiR9BG
 2nc7WX9hk9LnohYpXwssE27QMF8RMP05DS6U0qZYh7dDcUX4G8spU40zlmXfLYvECR46
 vhUflAwW/hyf8DWmbpUoex5WwaJFTS9vlC92yhu5VbwQOc24rgzVuiSVSkfxbTU/usB2
 i7rHp11OD9s0rrq0PTktca0ldfQhkFA5IPMACLW/fRPAS+OYZQPeD/obMFSwgax8eK6U
 TxIw==
X-Gm-Message-State: AOAM530SHGXYeFedOxWffs8nRZTS1Ew0on0jmRE+a4GEDRHD5cFaXvVp
 oUVQlxLpsc3TttKDh+1tXj4QOJKl
X-Google-Smtp-Source: ABdhPJzhBd02ppYU69Tbttf4OygJ4jKSUHDwxH0mbLQ80yfFlk2lgSGlv77qWFGMBQvEjdbXdu5bIA==
X-Received: by 2002:a63:6dc7:: with SMTP id i190mr781038pgc.171.1591755720098; 
 Tue, 09 Jun 2020 19:22:00 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y23sm9328956pgc.78.2020.06.09.19.21.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:21:59 -0700 (PDT)
Subject: Re: [PATCH 4/4] mips: bmips: dts: add BCM6362 power domain support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <5876ff02-5cc7-961f-eec7-95449fd2adae@gmail.com>
Date: Tue, 9 Jun 2020 19:21:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609105244.4014823-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192201_332924_6B90C69E 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzkvMjAyMCAzOjUyIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCj4gY29tcG9uZW50cyBpbiBvcmRlciB0byBzYXZlIHBvd2VyLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
CgpBY2tlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApG
bG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
