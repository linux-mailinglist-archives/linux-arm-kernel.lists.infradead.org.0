Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68131FBC99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ND6gYSrL4eQytGLV3Vo5ic5YPge8fcwLRHu2E9GW5Do=; b=aqfOvjYlIr24YhDyTzIRI7yr2F
	ZetMppmg3vLZIBRSZavEZlocOVk5kpolwsL0SolW/H5y36G21vnVDUf9zsjiunKD6by7TFmqdcXpg
	DLir2jYxNeg4KWqER/1IyWK5i5ThhyqAie7Sr4hPKvATbkj1kgQB3fdpSl61PHVIfytGe3uZkpsaN
	JBa5jmAHSdxIniWA91DivS0zDKLlJz0kePDWwOupjWUZu+EbxxjPwfGPtRQW2WB+Bv1iVKcc4ne6e
	NVvvCb82ApcDKEnip+T76fvNr3/NAHz2uYXDT82bAV37hL7gFIf4ngd+e2QDh9Ucra5Ix/97tlHRo
	ahncWjvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFDI-0007bJ-5t; Tue, 16 Jun 2020 17:17:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFD8-0007at-Mj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:17:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id t194so3898280wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=uDJlG7NKbhHOEOP5+/MCZt7k2gTlyC3ZozgLnPD/qnc=;
 b=EuQnTAjrq5O7qeykI+K0h0HEN7NUH/LXy+fISYb9khZRB8jsV3x3Idy0D2cQJ+ZcNr
 1RGVloN8+2ThekbeGH64onDz0dYEOEU0ZQAzEKyXNnLqfxyDqd8KYozE77RBpmr9WH+U
 quyXnz18sAerteHR17dhi99/dVPDvdHcPwZrnSsKD/zBddo3HMhVvak3GarHNWGjgJ5o
 xWVg3lTz4FC329TOHZH8GWdZ5ZVHUj/gZindrS7KXCKkyvAEB7CaCf/WZdjN4997azWI
 x5hZ5aoADKaEElv7t6mJVX/TUjloW/nngg8mGq0H0tQJdXD477WbGm6eAPa/9nk9FRX0
 9J5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uDJlG7NKbhHOEOP5+/MCZt7k2gTlyC3ZozgLnPD/qnc=;
 b=Zhk60M1V56vrTX+qr4VAIQpMT4tclGfp+0rUBTGhAYK584xGTtSjhYDe7nydcoyQ+A
 9DwSP2sHC/kZPkWXOhnxdfY1zMSTYOiRpmMJLhhfnQ7RanVZeVK2agQ/n3d4BDnfMC4w
 jrKoB0qVoNFkY7o4DhWrhEneqqCvYlwp3XZJYHlNLE1gZ/RGPSqfIPKGBkr2BYitQVP/
 ksky+PmptVwMfjyBHql6EPv20cP+wZSW7+h+YJozbEYDDq5IF3yGrhxP67xC7lVMd+yb
 t+Ke6pLraqMM2/5iOZ2ZX0N9YReIBr9P0JKY3k2h9c8SORh9v3+yDVmlf+7/VidYAFNF
 MUgw==
X-Gm-Message-State: AOAM531nt4z9JBm395ixZieFIz52WxfOsHKgO89JTTo4rc9DDjl8iHRb
 I9e2+R15K6DzJe9TVG2GqxgyANST
X-Google-Smtp-Source: ABdhPJy8FA6T3ZhcYYWeGoz+2DkBFY/4UXWRhNEr30Ak0PPqV376AI+aFXq7lr9dvCWQbWgSeRmUpQ==
X-Received: by 2002:a1c:9cd3:: with SMTP id f202mr4046648wme.64.1592327841094; 
 Tue, 16 Jun 2020 10:17:21 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 y80sm5293964wmc.34.2020.06.16.10.17.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:17:19 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
Date: Tue, 16 Jun 2020 10:17:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616083408.3426435-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_101722_744598_005BCFAE 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

CgpPbiA2LzE2LzIwMjAgMTozNCBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IERvY3VtZW50IEJDTTYzeHggVVNCSCBQSFkgYmluZGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTog
w4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCAgIHwgNzIgKysrKysrKysr
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJj
bTYzeHgtdXNiaC1waHkueWFtbAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4zZTdjOTc3OTliOTEK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAo+IEBAIC0wLDAgKzEsNzIgQEAKPiArIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFN
TCAxLjIKPiArLS0tCj4gKyRpZDogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9i
cmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCMiCj4gKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJl
ZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCj4gKwo+ICt0aXRsZTogQkNNNjN4eCBVU0JI
IFBIWQo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMg
PG5vbHRhcmlAZ21haWwuY29tPgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+
ICsgICAgZW51bToKPiArICAgICAgLSBicmNtLGJjbTYzMTgtdXNiaC1waHkKPiArICAgICAgLSBi
cmNtLGJjbTYzMjgtdXNiaC1waHkKPiArICAgICAgLSBicmNtLGJjbTYzNTgtdXNiaC1waHkKPiAr
ICAgICAgLSBicmNtLGJjbTYzNjItdXNiaC1waHkKPiArICAgICAgLSBicmNtLGJjbTYzNjgtdXNi
aC1waHkKPiArICAgICAgLSBicmNtLGJjbTYzMjY4LXVzYmgtcGh5Cj4gKwo+ICsgIHJlZzoKPiAr
ICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAyCj4gKwo+
ICsgIGNsb2NrLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHVzYmgKPiAr
ICAgICAgLSBjb25zdDogdXNiX3JlZgo+ICsKPiArICByZXNldHM6Cj4gKyAgICBtYXhJdGVtczog
MQo+ICsKPiArICAiI3BoeS1jZWxscyI6Cj4gKyAgICBjb25zdDogMAoKT24gNjMyOCwgdGhlIHNh
bWUgcmVnaXN0ZXIgc3BhY2UgYWxsb3dzIHRoZSBjb250cm9sbGluZyBvZiB0aGUgVVNCIFBIWQpp
biBlaXRoZXIgaG9zdCBvciBkZXZpY2UgbW9kZSwgc28gSSBiZWxpZXZlIHlvdSB3b3VsZCBuZWVk
IHRvIGFkZCBhCiNwaHktY2VsbHMgPSAxIGluIG9yZGVyIHRvIGRpc3Rpbmd1aXNoIHRoZSBjb25z
dW1lciAoaG9zdCB2ZXJzdXMgZGV2aWNlKQppZiB3ZSBnZXQgdG8gdGhlIHBvaW50IHdoZXJlIGRy
aXZlcnMvdXNiL2dhZGdldC91ZGMvYmNtNjN4eF91ZGMuYwpiZWNvbWVzIERUIGF3YXJlLgoKT3Ro
ZXIgdGhhbiB0aGF0LCB0aGlzIGxvb2tzIGdvb2QgdG8gbWUhCi0tIApGbG9yaWFuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
