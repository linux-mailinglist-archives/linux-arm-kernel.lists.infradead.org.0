Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E2B1F4B4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EFE9NlDQvRreu/HgVjOmiBJdSS5bpotRfYN6RR761M8=; b=ukywToUBIA6+GYDMB9GsB+z9h4
	ngKMOVsx8HDe4EH+ewjqyv/VxiESzhTMA/ZMBQX3vxcZTnVX81QTG9C5ruPU8alpI0Bit6oDuNLD1
	zBnI7PTylQN4SVH3+dUjGX/qts+ENWIuM7lrEwgWGe92PMOyhy8Is1OYNRR1vUk6QkmaUDSgXNST+
	TVIftYk4pcRRU5wuiOzK761nSR0Qhyf6Df2i70jFFKmI442sooajJeN0u1LuYdBmCsNu41uwsEtPA
	Q4RhLspV6Z+EzZfXNzMKeuI5UTTsq3tZQGTwStz+HwruTuCXA5ozunLdojgP+QDstD/GZcD1Sag7B
	6mKnOKGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqLG-0006LO-Q7; Wed, 10 Jun 2020 02:19:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqLA-0006Kk-DW
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:19:45 +0000
Received: by mail-ed1-x544.google.com with SMTP id g1so258872edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=6nDD9b7w8r1Mr/3MxkpIoE8zWpfhH3upQWRgRKaz8Zc=;
 b=d8fXfi1l7KInOy0Riqv289V5I5J1ZgSHL1mnqhUsN3TjXORhR79t8BUP4noaM6wxaV
 oF4HRekWinwy8NGtF9jeedNMhsCBi4m+sXOFRMrd4zvoeaAFaLCp+bO5Vs9NADVkdVmb
 E8XhMxF9b8v9mq893gxQNCngsZ/XC2oFr+hcO+higI+G2hcc+rErDQ3k1LLqDGmYSMIb
 WvswuoE/M1rnLHZyRUGJlOBg6FMpqstb0DLvcg2oOGa9ueadZj5PNTIKZ7JeNDh/XzyT
 EOky1jWF3pqojumstOj6V70bDCg4u20Tv8vBfPXCCddfq08EKytUPg24PfOscZ4ZNv/J
 eCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6nDD9b7w8r1Mr/3MxkpIoE8zWpfhH3upQWRgRKaz8Zc=;
 b=kZYeqCM0/gbsflwk4p+9X7C78CCl3UB3WEFZUUsEXKNhJhw+h73fJHoYkNG27nW9Xh
 TMOHL9noEIwykVLFb3SK/k0dGghKFqDiEozlqDoOgqdPGx27IidqjmmninUfG6k1eC2+
 aVRYTYZUvl+gJHWJmC3apYkVFYqkezZ3OQsnDRXgHtX7oilg3cfxJ7OKWv/60YW5ksZE
 5T+wggjK/MhsdFqODIrJdCeTipKfG4ilnCX2Gv72bckXaO+1UvBD0tE8oXPoHNH4PiSG
 DZUL1dfeHKM+jX7PhWdDM0cshu8CRBl7XD2eDpDtfdrDXN12obFWj5+6IAkldimqh3WG
 9tCQ==
X-Gm-Message-State: AOAM530KTNMcBKHOxj8083LFmqQLj988OUIERfclBoQ1wC2z7acwd1bi
 mIc97xgEjs9lSfi6zZu3Jxwx5Ctn
X-Google-Smtp-Source: ABdhPJyHM8AkM6LFw1w6gnIiVHMouyYrPLgZFtrZzLehkjZn/vUa+ZeZVaI4/d8rIky9PTihQBilQA==
X-Received: by 2002:a50:b022:: with SMTP id i31mr595400edd.301.1591755580360; 
 Tue, 09 Jun 2020 19:19:40 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 ss4sm14296639ejb.63.2020.06.09.19.19.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:19:39 -0700 (PDT)
Subject: Re: [PATCH 2/4] soc: bcm: add BCM63xx power domain driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <13cc694b-c643-0f68-e510-062df5352eaa@gmail.com>
Date: Tue, 9 Jun 2020 19:19:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609105244.4014823-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_191944_478894_28A3AED4 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKPiB0byBlbmFibGUvZGlzYWJsZSBjZXJ0YWluIGNvbXBvbmVudHMg
aW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7D
oW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3NvYy9iY20v
S2NvbmZpZyAgICAgICAgIHwgICA4ICsKPiAgZHJpdmVycy9zb2MvYmNtL01ha2VmaWxlICAgICAg
ICB8ICAgMSArCj4gIGRyaXZlcnMvc29jL2JjbS9iY202M3h4LXBvd2VyLmMgfCAzNzQgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKCkkgd291bGQgY3JlYXRlIGRyaXZlcnMvc29jL2Jj
bS9iY202M3h4IGJlY2F1c2UgdGhlcmUgYXJlIGxpa2VseSBnb2luZyB0bwpiZSBtb3JlIGNoYW5n
ZXMgZm9yIEJDTTYzeHggRFNMIFNPQ3MgaW4gdGhlIGZ1dHVyZSB0aGF0IHdvdWxkIGxhbmQKdGhl
cmUsIGZvciBpbnN0YW5jZSB0aGUgQkNNNjMxMzggYW5kIG5ld2VyIFNvQ3MgaGF2ZSBhbiBlbnRp
cmVseQpkaWZmZXJlbnQgcmVzZXQgY29udHJvbGxlciB1c2luZyB0aGUgb24tY2hpcCBtaWNybyBj
b250cm9sbGVyIHRoYXQgd291bGQKYmUgbGFuZGluZyB0aGVyZS4KCkNhbiB5b3UgYWxzbyBtYWtl
IHN1cmUgdGhhdCB0aGUgTUFJTlRBSU5FUlMgZmlsZSBzdGlsbCBtYXRjaGVzIHRoYXQKbG9jYXRp
b24/CgpXaXRoIHJlc3BlY3QgdG8gdGhlIGNvZGUsIGdpdmVuIHRoYXQgeW91IGhhdmUgZGVmaW5l
ZCAjcmVzZXQtY2VsbHMgPSA8MT4KaW4gdGhlIERldmljZSBUcmVlIGJpbmRpbmcsIEkgd291bGQg
ZXhwZWN0IHRoYXQgeW91IGNyZWF0ZSBhIGhlYWRlcgp1bmRlciBpbmNsdWRlL2R0LWJpbmRpbmdz
LyB3aGljaCBkZWZpbmVzIGNvbnN0YW50cyBmb3IgdGhlIHZhcmlvdXMgU29Dcwp3aGljaCB5b3Ug
YXJlIHRoZW4gdXNpbmcgd2l0aGluIHlvdXIgcG93ZXIgZG9tYWluIHByb3ZpZGVyIGRyaXZlci4K
YmNtMjgzNS1wb3dlci5jIGlzIGEgZ29vZCBleGFtcGxlIG9mIGhvdyB0aGlzIHdvcmtzIGZvciBp
bnN0YW5jZS4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
