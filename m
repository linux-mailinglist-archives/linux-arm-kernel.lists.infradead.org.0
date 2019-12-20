Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77858128096
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrtK+BgkdZ0PNmjAkCHV3Vq1EWnbycBKkGRH2ri22ig=; b=lxgvjvPLrmv2sy
	pED9JzR7JLAYTMdh7nd+L1Xo7CkMjdcta1rOBomBZAUpzPc/GWX+vkvrDT5HpPJgCcpn4EtshXeze
	r5lmZC8X3/9fxn3HUaIwoekQ2hBNljkflJKvumO7zAqKjbsMqTozvite7eqfNOpoAbrxsh7BMjrJ8
	QiJr+qLmBbDQ20hA/QpLDjMEiHtq5KQ940ZY5JN4viyffoLQSvXeDJKMFvMlXZBsS8g7GwD5X0im8
	hwSkK/wy7BYp6wngPeHHYh1MHF5VDpyz8l3lyhTnFZN1tjHaFVes4QSgMIlXua3SqdkLq1zIIwacx
	qunqY36JMtS+mfpoIEHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiL4d-0002MW-AG; Fri, 20 Dec 2019 16:24:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiL4T-0002M9-De
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:24:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so9821569wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 08:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Z5ieuru/1XCttEcOMbv48Hm1AcXx6usyE65v2BBik/A=;
 b=M03Tw5RAHCudsOqV8mUhnNRSBKZRIgkeAq1dWW0/gYOYQHMGSVeID0wI7TI6VeMemH
 6ejiB2Hn6310HvtWRIhQttM0Ntn4ApRS9MYFj3QB8uGjtEm2lvnmZscbHQXwbN2wzoug
 unE6Z6mhkxEy7Y6nnGGvIcG4QFTvuhRoG296s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=Z5ieuru/1XCttEcOMbv48Hm1AcXx6usyE65v2BBik/A=;
 b=ZAV2/ohjuS6CQNEl6WWfKBHQ6TOjnnvXovGx5+J8QbR1/WIImD2NcepBRPntKfDqWw
 JCZ1s/YNbAGjarfrVST9CuHkOl2bd1SYiIr/KnsbBW1IH9IfMeNNu3Yfph3+VQnCk/Ak
 y9JImlYVRLPS8SBBkyVy2IDbrwN5gOqAznParTnpkFnseHrcz1rhTY844hh1Oa7qV3j5
 s0be2ErapGhNGrbdLZmcP8Ef6z3/+QEt7Ob90Rv9PFuLeYD6A9liO031iOtB5p/8EDt/
 12BKFG02DTtWsZGvfM+R6eaKv1v1LUbfLo7bE4yJCOUjBOiHPRACIRo3AfuKM7NIExlg
 l8kw==
X-Gm-Message-State: APjAAAWcEWxsY0buX7Jrudk2UW8i+w8Vs956ENkNdBGuUsi906ONkdWZ
 hU39ihQ/pp8WGbcXBtd4A6KjDQ==
X-Google-Smtp-Source: APXvYqyTajBN2WQIHvjdGlTRAezy+p1IeM23FPlngflIZP1Tpc2EBSh8MuAXiEmaa3oXwIU4ZD26qA==
X-Received: by 2002:a7b:c386:: with SMTP id s6mr17166001wmj.105.1576859046593; 
 Fri, 20 Dec 2019 08:24:06 -0800 (PST)
Received: from [10.28.17.247] ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id d14sm10896103wru.9.2019.12.20.08.24.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 08:24:05 -0800 (PST)
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Lukasz Luba <lukasz.luba@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191218120900.GA28599@bogus>
 <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
 <CA+-6iNxn29WpUrbc9gL4EMTJfZj7FRCeO-_QaUqbjJYd1JAEKA@mail.gmail.com>
 <7fe599d3-1ce2-1fde-2911-9516a26090b6@arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Openpgp: preference=signencrypt
Autocrypt: addr=james.quinlan@broadcom.com; prefer-encrypt=mutual; keydata=
 mQENBFOXa3ABCADHz9QNP8upEMOGzf0RJ1lhBRnacq5Gz9fcbmcxK2y4PXtT1JR2WJWT3roY
 oHUXKL42zA74Iv6ODOjvO/VcvmJTllbz5zhuj5hDHBTNdSdspHWJMS3VdRtB5YQ4+4SNfi4O
 +ucstwf5U8HHLtsFes1udLWgujK4CD2mHBpR1tIc7dXP7jsCcxvkwA/jMN8D8w80kE1RY1eM
 3Chfft2oJOMK54n8f9x+iWdDsXV2e5vk0TLAJPB8ErGbAWj+HF+SQ/QdI6hdn/KbEQgJyZCV
 t8mB2uDfjvp14PIY02OSu9vgEWVYMMPoNLazromChJBtflewbp/Uim7BWYvcYRCPwx7VABEB
 AAG0KEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFuQGJyb2FkY29tLmNvbT6JATgEEwECACIF
 AlazUjUCGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJENnFxA/a7tJZiMwH/RHLgTPx
 BzrlFPQbEDfh05FXthTM0r1wC8AwHGmXhaxMT352Ju4jqCPvhF4YbczqEmuSFqOHZ6hQhBah
 L/O4QYRtBUCYhGg/cQ5WzklE48A2iNEoSsA8rP6Cy4wzXKrO0yPHQPyDtQ/o/Fa6T6r2EBAT
 mVtQBizeiDkUKDgfYU+o0iTW+205myQ9tTe3R0BJmq+F6dYdusKHRn9QXkm5oUC/tea3bq6N
 jnExBVz8LFaZRxe5uVs5Hwa+ZZqqsj3xJ6CmPQIktjcX8cHUSdrd/B7BC/kBwhhUeKT5HfQl
 KNk75rbMY8vJy8emev72Tyi3zq3tNy7DZvZoAmX5NGua8625AQ0EU5drcAEIAKmzln4+BvCz
 CfrbQqCd/EUhmVesujmNO2lTUFL20Wv1Kq27ZFXPaWfe9+lxg9R+p1Ry4ChRk7xZ34r56t0i
 lGZKH2CIETGChBedfOoDTcgt7K9lMlIxl9QIVEt5yxaqUExN38TIeEayBdeZSbPtmWzGQGl1
 kaUHY8l8GWSVB6mJrJaEnfpxt8xTbHdCbPzRM2nf5w76IFFvIP6ojnW06fWYTSYisPuidZs/
 7r1s8GpucrveKXNpzw3li9ChzI90zTBpMl3jWtqOQE5Nn0UHpPvN2SiAJ/Gm18LRP8TCTmOU
 bpLN2UoJhUGdscyYen+ECxVEZXsQCyASJvGzcWHjQL8AEQEAAYkBHwQYAQIACQUCU5drcAIb
 DAAKCRDZxcQP2u7SWUnTCAC8GirJT3daWnIgc23Qw0caHxP9dHLNKf4Fo1bxss5n6JoZgQWt
 kvqWRBBGqHTBbVBrScH5jI7kYRXaP37Q6J4bOxi68L/NC9qY7y41M6O+EaRZ4xYR5PjXY7yu
 eEeLGk0U8L6lgOtCH53lhk0i4E5BRKvg71T0UvmJPpSmtYUo/JH0sCinJADCQx+C961yPerJ
 xOO2mNvMpvXjMSqeWzYmZ9uhvRGVfo5O9i4MdFXpSm/3a3i/bZLaxPt3tjxJu+aPKHHadKcr
 8EmSDiRrCGBbnhED/fvI/titv3qxtMBLAY++03FOh6XC93NjsRC3yCogAY7iIuWoWBmisCQ6 Kcyg
Message-ID: <9befbc13-ba00-094d-0064-0d97c1ccbb63@broadcom.com>
Date: Fri, 20 Dec 2019 11:24:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <7fe599d3-1ce2-1fde-2911-9516a26090b6@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_082409_463445_AEFC6447 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gVGhhbmsgeW91IGZvciBzaGFyaW5nIHlvdXIgZXhwZXJpbWVudHMgYW5kIHRob3VnaHRzLiBJ
IGhhdmUgcHJvYmFibHkKPiBzaW1pbGFyIHNldHVwIGZvciBzdHJlc3NpbmcgdGhlIGNvbW11bmlj
YXRpb24gY2hhbm5lbCwgYnV0IEkgZG8gYWxzbwo+IHNvbWUgd2lyZWQgdGhpbmdzIGluIHRoZSBm
aXJtd2FyZS4gVGhhdCdzIHdoeSBJIG5lZWQgdG8gbWVhc3VyZSB0aGVzZQo+IGRlbGF5cy4gSSBh
bSBoYXBweSB0aGF0IGl0IGlzIHVzZWZ1bCBmb3IgeW91IGFsc28uCj4KPiBJIGRvbid0IGtub3cg
aWYgeW91ciBmaXJtd2FyZSBzdXBwb3J0cyAnZmFzdCBjaGFubmVsJywgYnV0IHBsZWFzZSBrZWVw
Cj4gaW4gbWluZCB0aGF0IGl0IGlzIG5vdCB0cmFja2VkIGluIHRoaXMgJ3RyYW5zZmVyX2lkJy4K
PiBUaGlzIHRyYW5zZmVyX2lkIGluIHYyIHZlcnNpb24gZG9lcyBub3Qgc2hvdyB0aGUgcmVhbCB0
cmFuc2ZlcnMKPiB0byB0aGUgZmlybXdhcmUgc2luY2UgdGhlcmUgaXMgYW5vdGhlciBwYXRoIGNh
bGxlZCAnZmFzdCBjaGFubmVsJyBvcgo+ICdmYXN0X3N3aXRjaCcgaW4gdGhlIENQVWZyZXEuIEl0
IGlzIGluIGRyaXZlcnMvZmlybXdhcmUvYXJtX3NjbWkvcGVyZi5jCj4gYW5kIHRoZSBhdG9taWMg
dmFyaWFibGUgaXMgbm90IGluY3JlbWVudGVkIGluIHRoYXQgcGF0aC4gQWRkaW5nIGl0IGFsc28K
PiB0aGVyZSBqdXN0IGZvciBhdG9taWNfaW5jKCkgcHJvYmFibHkgd291bGQgYWRkIGRlbGF5cyBp
biB0aGUgZmFzdF9zd2l0Y2gKPiBhbmQgYWxzbyBicmluZ3MgbGl0dGxlIHZhbHVlLgo+IEZvciB0
aGUgbm9ybWFsIGNoYW5uZWwsIHdoZXJlIHdlIGhhdmUgc3BpbmxvY2tzIGFuZCBvdGhlciBzdHVm
ZiwgdGhpcwo+IGF0b21pY19pbmMoKSBjb3VsZCBzdGF5IGluIG15IG9waW5pb24uCj4KPiBSZWdh
cmRzLAo+IEx1a2FzegpIaSBMdWthc3osCgpXZSBjdXJyZW50bHkgZG8gbm90IHVzZSAiZmFzdCBj
aGFubmVscyIgLSBhbHRob3VnaCBpdCBpcyBwb3NzaWJsZSB3ZSBtaWdodCBzb21lZGF5LgpJIGZp
bmQgdGhlIHRyYW5zZmVyX2lkIHVzZWZ1bCBwZXIgeW91ciB2MiBldmVuIGlmIGl0IGRvZXNuJ3Qg
Y292ZXIgRkMuwqAgVGhhbmtzIGZvcgpzdWJtaXR0aW5nIGFuZCBkaXNjdXNzaW5nIHRoaXMhCgpS
ZWdhcmRzLApKaW0gUXVpbmxhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
