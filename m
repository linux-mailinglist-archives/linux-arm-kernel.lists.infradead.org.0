Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066131F5968
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YD3mnNs0Ry/cHH8maodsVHyHZM0h7Z7ijgk7rkXZHeY=; b=pxK9cbga4BuBod+oRoVD20suvT
	RO2FFUQQYRR/9pgCCwyGkdhFWq0uDiENiKcc/bVdhan3svD1sQg28JcIPvsrd6JXipLYNrJrnLQ1x
	S/6pjLGvJJH2NURpZBCB0V428PV2injiwt82Z2GjsoE14apbAQHP96DB7JPxY5Tdn7Dzmxskm3+5i
	TogkpUqst2W1aDwvg8O7rHlXzIN22oXQfCbKyY6IKZzymUsobux9v7ji0qAOuk9+DPrz9EJv04LeY
	obzLXkZGKOPAKY4pQ9hWNFnIPvHnRWTQP9C9d8gFI27P2DLsxasItw3lXHGVZGiCjhS7RIr16Pikw
	W4XDFg7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3uz-0003R9-Ku; Wed, 10 Jun 2020 16:49:37 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3uh-0003He-8j
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:49:20 +0000
Received: by mail-pj1-x1042.google.com with SMTP id h95so1118149pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=0L6mRul+d0ij/T0+YwUu11OLWJeSvBQq7osEoU9o22g=;
 b=Gyrl29mgzU0gGGWPNAXIufDCgZz/WcJTwme/dXo6nnRhBBKoe3YbyCm92QiFtUCZIr
 ljpilXI7nAD3ogAwUS0CFK1HNNISgp/Feg9D2XMFU50TOa9Yk/Z/q71WjPtfdwpWWRr5
 Zz9M+VHN4z1zeVxAU6zeowOmTnPNZw/PoJr44shxIdtIFhvChGKegEnoBHgfiRKnv5+M
 EV1ppIKtFzYdRwpVUxvyUy56RryWsBs5tBVVgE3OFovsAmgLxSk5F0gSKaPUmVxiPezW
 e2GUEQZd+fT42IK28EiMDhZNwXey5TMQ8c16Gjw/htxO3/+klYhR6G3iCUYxCVSekZgE
 QBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0L6mRul+d0ij/T0+YwUu11OLWJeSvBQq7osEoU9o22g=;
 b=kPK08+Gmh4Q3teu2a/4uvxQWdhY+6Zct7G81+p0JH1hJQoPjFAqanYn09/z+E36iyR
 yVTF5R3xeU7EJeUU5vDUNOGjuHBzPFZV8ilpwXXePsRoFTdIKkIZsqkMAkJsNtKECwRW
 1KytA7w9zK83FJ50MxLM8EckwHsSvC6Pjx2oEsSatP6QxH6oxFIrsn7oFpGWNaqLAaeP
 qeIeJt/1aecvXndxTpZKzFi6ou4UceikeYdQt11UQIjRzYYnbpc2A1qtT/9Pu5dO1+Fu
 MDjQQmVBEgBUuJ5Ll0eu7N3Pk2ss/xoef1DRZk0AuoQ/xP5SDnrBHjlrU+jYrhpEKppu
 tG4w==
X-Gm-Message-State: AOAM533hfEx3R4Z9zhJG5Ej1QhDxKq7FGCmOXSciB8AfbxmZRPUFXUd4
 h5qGsz47nQxMXBAcD9nTxOrgrOkn
X-Google-Smtp-Source: ABdhPJyBYL9WX0FUwlh7Mm7FPNGeHAef0xvzd3jHqzul0sk1FCzs4b8Ta/4q3CQZuFG1jOY72HRTZQ==
X-Received: by 2002:a17:902:c111:: with SMTP id
 17mr3419167pli.319.1591807757697; 
 Wed, 10 Jun 2020 09:49:17 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s11sm382597pfh.204.2020.06.10.09.49.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:49:16 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] soc: bcm: add BCM63xx power domain driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200610163301.461160-1-noltari@gmail.com>
 <20200610163301.461160-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <098e7389-f41e-0493-302b-213477268b81@gmail.com>
Date: Wed, 10 Jun 2020 09:49:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610163301.461160-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_094919_317311_D5B569AD 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
w6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KClRoYW5rcyBmb3IgYWRkcmVzc2luZyB0
aGUgcHJldmlvdXMgY29tbWVudHMsIHRoaXMgbG9va3MgZ29vZCB0byBtZSwKdGhlcmUgaXMganVz
dCBhIHNpbmdsZSByZXF1ZXN0IGJlbG93OgoKW3NuaXBdCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGJjbTYzeHhfcG93ZXJfZGF0YSBiY202MzE4X3Bvd2VyX2RvbWFpbnNbXSA9IHsKPiArCXsKPiAr
CQkubmFtZSA9ICJwY2llIiwKPiArCQkuYml0ID0gMCwKCkFsbCBvZiB0aGVzZSBiaXRzIGRlZmlu
aXRpb24gc2hvdWxkIHVzZSB0aGUgY29uc3RhbnRzIHRoYXQgeW91IGFkZCBpbgpwYXRjaGVzIDMg
dGhyb3VnaCA2LCB0aGlzIG1lYW5zIHlvdSB3b3VsZCBoYXZlIHRvIHJlLW9yZGVyIHRoZSBwYXRj
aGVzCnRvIG1haW50YWluIGJpc2VjdGFiaWxpdHkgb2J2aW91c2x5LgoKVGhhbmtzIQotLSAKRmxv
cmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
