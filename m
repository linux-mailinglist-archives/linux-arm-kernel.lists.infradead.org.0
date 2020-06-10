Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC4D1F5951
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ju261vC1Q1ymhIC+30XoicqAvLppvWkEoPlHukYZsec=; b=GmX7rAmSqYcCAKBq2rhv6YJtE8
	PhtPkdAvWZIr5srjCRuvyGUOgI1AxI3dcaX+whiZN9NOavCWD7XtQQJGtjLIQjSJFlmAkAc3oypl7
	XJIHENK5Tmn73TWYVmZlH38ungeV+6xOv5H9Zrf7WjeaBBaEvidTxqKo7n9q5p/ueS4X5Jqgpai6F
	FeoQk/iC+rBSS3YK6hPe782FWo9C8BqfbSHKFM7+mtMtwduW9d5k9aiXYY1tqAqSrWP3MhW8/I4B3
	80bKVxUKRzkNwyrfqUZfzeBzzom/V2DVUH8kihvZV7j1qheqdSHnp7EuXtO1dOeJiU/9sS4Gc0tSR
	xjrzCFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3q8-00080s-05; Wed, 10 Jun 2020 16:44:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3py-00080Z-6N
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:44:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id e18so1217089pgn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=N3nz8VAx3pKlB78ptGPJm5PU6bVNdaxgHQ+ZtZ70o9g=;
 b=RsK0qjQFG8smIxeDdC/ls5gDxMuvHX5+WypypUF024Eh63wsT1MsDgA13sE5uy0HDc
 dPmzxBGYGshoC3i+1AtL/WmMIURMP/2xE3y81c3yPS4efGLfyhTvG9AFFcb0A64kp7/Y
 edagcH+s6qf6uwq3KTZvwD4l2PzfGsRL+PVK++/1+yK1ZC1UJZbvwB2CbY6+KM1wyqcU
 RvwWuoV3ek52JrICTM1Q7LsoEkgYaq1XjJKadz+T2q0YbspNHYG/EHlmdUKOBJLNeimF
 ZV14DkA3gNqx5RfFpUvzwPdkxcRggPr/IsiizXOlFPvSt4FSRM8kZuYihbCxN+97fAHI
 9rkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N3nz8VAx3pKlB78ptGPJm5PU6bVNdaxgHQ+ZtZ70o9g=;
 b=iXug2uQy/u0bTpH9vQZAe5LLCpC6Biw8La7Of1heAhuQNQ3lX+IFVQf8nU2jOMl/7A
 8KtgAtwDHLn9ao14W9H7XaK7oD6kdwNFmxvRD/K/o3Bz0e8fF2Gr8UTSBjGOTSEyrdd3
 uICZO12J6umN6NkcTXh99o5Qc9b0/uk+Jib33e2eZDSvVDHVCYA4sG76XVpzkNGGfB2F
 4hqeIZDDZkkfQqWWALfqlr8FL9vD2w7pz3v42nr03wFEEPpA/qPQ9bFyk+qDqKmeJLjW
 BMnkxksR+EQMoYIlBXZaMSYveYyWbuBhti9kXr2iYyip7MEmWMacb+OlINYd8KQUW6Wk
 ACxQ==
X-Gm-Message-State: AOAM531EFyC5v8NRbVAI7ol1WAOm7FhI0WmD67Z2o56dnVpDNAM6xV9J
 PJm4TUDTEV798OTgq6Vpqg+yGJaq
X-Google-Smtp-Source: ABdhPJy0NGS7tUqHFFyb+RqTdlQCvJL+oOjZKAXNJ0x3T27vy1QMofrb6uWEJqEWGS1qIggn63zRlg==
X-Received: by 2002:a63:5fc8:: with SMTP id t191mr3313480pgb.185.1591807465016; 
 Wed, 10 Jun 2020 09:44:25 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u128sm387931pfu.148.2020.06.10.09.44.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:44:24 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
 <20200610163301.461160-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <61be8299-890e-37c4-4374-06893b8e9e3f@gmail.com>
Date: Wed, 10 Jun 2020 09:44:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610163301.461160-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_094426_254788_F63E1583 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

CgpPbiA2LzEwLzIwMjAgOTozMiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzMTgsIEJDTTYzMjgsIEJDTTYzNjIgYW5kIEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBvd2Vy
IGRvbWFpbiBjb250cm9sbGVyCj4gdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRz
IGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJu
w6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBGbG9yaWFuIEZh
aW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
