Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABA41F4B69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHIgD8agDu0+efVI+dPuI3iZK+bPEtOYmDWVbt76UMQ=; b=tHIfK1MiwMwSyuHTwFP9Jr7MNz
	11sPhMUVvZzDq1pFWVpST/uCUnSRzrsrdhdPXKmtHYG74/QXRBrXlltb7BSug5T1Yg6qgEs+fVJdv
	01+4wOTXAdtnQfF+fNcLV5OcgS1GdhRKB7toPM4Xe4U2OHgQtOKFIF7Rr0vy/2xs9BzHV5BiE7dO6
	A+HoiR4nJydbkAZOohxaOlrg/ivDJaYdSY2U0b6dJt9wXH1fj+FGpTJr79F/RX7QX2MXxdXyK/p9p
	Mh1HYvWCb5ul5rF6DNZy8/x+Il8ro4tXc2mdJpo6g0aGzLqE6Dv4tlGE7TB5v8vTCoIWZ6jKkhUDV
	p7skoRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqSd-0004eF-AC; Wed, 10 Jun 2020 02:27:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqSW-0004dn-Ap
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:27:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id w20so294113pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=M3n1PIZINjO5wXKsa5OsSBOrWdpmZl2e0Ljs5D4+x+A=;
 b=Grf9txboa2IHZWpL56f3G236b2zzXxsyPUf7W0zbQ4JQqgtOb/2j8pF5p8XDi2lhDc
 +bHUHezXWBwxlg5tS58L0s+L7l4DfJ6V/WDjgxXFlOZrSqm0qMvu6g8SSgfMEIG+6T5K
 goV1umFTBNl5gOZUHMQyZhg6kxanUmOdF5fAV3nQualNIXtbnIjQikmGayVLqd7lWuFk
 x8rThK1h92gRxNw6M4lyeph1pYbq9h2AcQLLON93csttKipWHM72au9TF4eLkevCpBOv
 68KyOkQqNDP53818jfNn7GjSDL6zhQQQV9WbrD2svDHnA6mz3N5IjE9i5MPd6Z9aBJff
 9Aqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M3n1PIZINjO5wXKsa5OsSBOrWdpmZl2e0Ljs5D4+x+A=;
 b=kaxPd2ng5vpLrC7mqRswU4jS1KXQOt0MN6vIOSHSuwRHEvYH5AuQ046NFW79DgnHXR
 bli5L2ZqKqPU+mcqDjqEtpwSvZ4IdI7XYdUMSdLBw7VhWWLDoO8fjOvQ7g1TXziaLmmW
 NmRQAz1fH8Eeaf55/qSRrTVvaP5QBvSqsGXJy8JJWGEgu5O6e4jlqOcIw17Ot1d0uJi6
 N6wgKBE52rF7AAxiJUUCTnUqJeZulKnVhxhQ8LkANp3f1qZsVmR60yzWGboKXdJQoz2J
 Q3LV7oF+spdZCmMUnAzBadzDgq2Pvqyv+wtkaUiKW3bnaMZ8OvcFqngnpmI4cqExDaGm
 byBQ==
X-Gm-Message-State: AOAM533ldHKKzo761EX9eCoJMj1OCdYruRYGH8Os3qzhD2jaNzUD5Qsl
 aQ9LwKk1Kb8lrf7/vNhI/BQ=
X-Google-Smtp-Source: ABdhPJwVOTx0//wDjSMoRutArPa8yG+dfKYWbsQpdSTjM57l0uKCbObERZ6HKGhi0jUVczW58BR1YA==
X-Received: by 2002:a63:3347:: with SMTP id z68mr843497pgz.61.1591756039687;
 Tue, 09 Jun 2020 19:27:19 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 85sm11089397pfz.145.2020.06.09.19.27.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:27:18 -0700 (PDT)
Subject: Re: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
Date: Tue, 9 Jun 2020 19:27:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609113049.4035426-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192720_376833_9F62C288 
X-CRM114-Status: UNSURE (   8.75  )
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

CgpPbiA2LzkvMjAyMCA0OjMwIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX2JjbTYzeHhfdGFibGVfZW50cnkgYmNtNjMxOF9jbG9j
a3NbXSA9IHsKPiArCXsgLm5hbWUgPSAiYWRzbF9hc2IiLCAuYml0ID0gMCwgfSwKPiArCXsgLm5h
bWUgPSAidXNiX2FzYiIsIC5iaXQgPSAxLCB9LAo+ICsJeyAubmFtZSA9ICJtaXBzX2FzYiIsIC5i
aXQgPSAyLCB9LAo+ICsJeyAubmFtZSA9ICJwY2llX2FzYiIsIC5iaXQgPSAzLCB9LAo+ICsJeyAu
bmFtZSA9ICJwaHltaXBzX2FzYiIsIC5iaXQgPSA0LCB9LAo+ICsJeyAubmFtZSA9ICJyb2Jvc3df
YXNiIiwgLmJpdCA9IDUsIH0sCj4gKwl7IC5uYW1lID0gInNhcl9hc2IiLCAuYml0ID0gNiwgfSwK
PiArCXsgLm5hbWUgPSAic2RyX2FzYiIsIC5iaXQgPSA3LCB9LAo+ICsJeyAubmFtZSA9ICJzd3Jl
Z19hc2IiLCAuYml0ID0gOCwgfSwKPiArCXsgLm5hbWUgPSAicGVyaXBoX2FzYiIsIC5iaXQgPSA5
LCB9LAo+ICsJeyAubmFtZSA9ICJjcHVidXMxNjAiLCAuYml0ID0gMTAsIH0sCj4gKwl7IC5uYW1l
ID0gImFkc2wiLCAuYml0ID0gMTEsIH0sCj4gKwl7IC5uYW1lID0gInNhcjEyNCIsIC5iaXQgPSAx
MiwgfSwKCk5pdDogdGhpcyBzaG91bGQgYmUgc2FyMTI1Cgo+ICsJeyAubmFtZSA9ICJtaXBzIiwg
LmJpdCA9IDEzLCAuZmxhZ3MgPSBDTEtfSVNfQ1JJVElDQUwsIH0sCj4gKwl7IC5uYW1lID0gInBj
aWUiLCAuYml0ID0gMTQsIH0sCj4gKwl7IC5uYW1lID0gInJvYm9zdzI1MCIsIC5iaXQgPSAxNiwg
fSwKPiArCXsgLm5hbWUgPSAicm9ib3N3MDI1IiwgLmJpdCA9IDE3LCB9LAo+ICsJeyAubmFtZSA9
ICJzZHIiLCAuYml0ID0gMTksIC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKPiArCXsgLm5h
bWUgPSAidXNiIiwgLmJpdCA9IDIwLCB9LAoKVGhpcyBzaG91bGQgcHJvYmFibHkgYmUgInVzYmQi
IHRvIGluZGljYXRlIHRoaXMgaXMgdGhlIFVTQiBkZXZpY2UgY2xvY2sKKG5vdCBob3N0KQoKV2l0
aCB0aGF0IGZpeGVkOgoKUmV2aWV3ZWQtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlA
Z21haWwuY29tPgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
