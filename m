Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90274115DDA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 18:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//s/W5dh3hDm8ywwtz3nuQe4oY5n860VIXIOC9AaLC4=; b=r1h/kJ41WETdLR
	C3KDWHH4zMb32u+3tnXKEeQUxe9deOckTjOW3pry+3RG2bWohTIx5azOK+RNxzVi/8J6F4rXn4pe+
	PFjMusRHNkWGefwU6XuGlKrDWsjirYNi2OSGhfMpFJoYMLsilI9aYbZ5MjuZSx42NOOUXLS1RoJuD
	DnnzWP1vt3R7h9zZzMQPSAAUVKy7nERRfUibdJ3PBVYBEsy0jdOETBANG8zZgUh5KyfHnAoqXrn1d
	Qk8bZcKHkGoZthwdWr+RA1FTppK82emBcdBKPakbAfDSYd6aEmS1NObxuv+6pXD5LCC84vdpcLCbS
	6eiQL4RdziBrMnI/F8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ideFl-0008PB-SH; Sat, 07 Dec 2019 17:52:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ideFd-0008Oq-18
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 17:52:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id f4so12120488wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 09:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8enLPStD+vaxI/d3dF4PyuF9xUik6NT4dN5npIUcvbU=;
 b=rTqPsrAhZFf1RQcw36h07dYzMirZzBXQFsdcXuxDzRD7twdTiwdLAwq/5QG9MTszhN
 UYGvTIsYGbswHFAKrx4GxB8t02KgS1Nsbb3SN1fosaNY3yDRx4/K/stX67Qnd3EFNDpN
 ERcMIatoDDyka2jjUetSrR8jSXRFNidMlDAKxSOMQFEiVSBuWNCOCC0XkGXeL3nxz/IT
 A5MXeMIUTjUcqpugr8/KcNXTDeZ+Ij+4mu6roP6kovIXmlGJX5Xemz697teEMco9b7J9
 c+hBIMVbDxR+zWha48tS6M5Du9vcLfmZ3k01lIaICB817/UKJCFTBWpvcTTHEyp4DCFz
 BOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=8enLPStD+vaxI/d3dF4PyuF9xUik6NT4dN5npIUcvbU=;
 b=lvbOKtN6YDVn4gn6QejwHtlXTIpKP+lJm76Ta890tMe74lcQaNaNM7Va4NV9VSiOHi
 m4shSZRg+I9nwuWhMGe2EAUlFtD/PFpFoNWm4MG1+B5BtlBTVJfDKcv6nGyEwb7OhB8v
 uP+dbVw/Nv0QIf23VZl0UeflCc8a/Qx7RdHCEQDcyA5RQhTDsx15OASKUwux3Y0sHSGf
 fZeY2Qi4m9UNCAll7skLW6vHNzDbosKs9ekgOtat0Ss9BVMu06to7P8bn4hP6jyBvaAc
 tcnE0X+xeWmfY5/Ax9v7sIXMR09CTUxvq9xTQvROGd04xLwsYPEe9cJgxIevRxG5IhhJ
 ACaA==
X-Gm-Message-State: APjAAAUOby5EBWSigvJmNoRVMkwNQgOFEoGiVehCOe8YnYMClK9VQTJW
 OneSKF0Oj0TD7mBNAUkIQ83p/GkI
X-Google-Smtp-Source: APXvYqwMpf0ApYOkDtzSo2cdrCUJ7ZxSr4XqImTC1c7cP9yQlctm4XBGrvnw7aQZp/ozIIgGUUJwaA==
X-Received: by 2002:a05:600c:290e:: with SMTP id
 i14mr16189844wmd.126.1575741134899; 
 Sat, 07 Dec 2019 09:52:14 -0800 (PST)
Received: from [10.230.28.123] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id f12sm7109137wmf.28.2019.12.07.09.52.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2019 09:52:13 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To: Ray Jui <ray.jui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
 <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
 <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <2fed95d6-72a0-328e-806c-ba214b52ff11@gmail.com>
Date: Sat, 7 Dec 2019 09:52:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_095217_098878_676EDF7A 
X-CRM114-Status: GOOD (  15.44  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi82LzIwMTkgNToxNSBQTSwgUmF5IEp1aSB3cm90ZToKPj4KPj4gRGlkIG5vdCB5b3Ug
aW50ZW5kIHRvIGRyb3AgdGhlIHJlZmVyZW5jZSBjb3VudCBvbiBlbG9nX25wIGhlcmU/Cj4+Cj4g
Cj4gU29ycnksIEknbSBub3QgZm9sbG93aW5nIHRoaXMgY29tbWVudC4gQ291bGQgeW91IHBsZWFz
ZSBoZWxwIHRvIGNsYXJpZnkKPiBmb3IgbWUgYSBiaXQgbW9yZT8gVGhhbmtzIQoKSSBtZWFudCB0
aGF0IHlvdSBkcm9wIHRoZSByZWZlcmVuY2UgY291bnQgb24gJ25wJyBidXQgeW91IGNhbGxlZApm
dW5jdGlvbnMgdGhhdCBpbmNyZW1lbnRlZCB0aGUgcmVmZXJlbmNlIGNvdW50IG9uICdlbG9nX25w
Jywgc28gbWF5YmUKeW91IGFyZSBub3QgZG9pbmcgdGhlIG9mX25vZGVfcHV0KCkgb24gdGhlIGFw
cHJvcHJpYXRlIGRldmljZV9ub2RlCnJlZmVyZW5jZT8KCj4gCj4+IFtzbmlwXQo+Pgo+Pj4gK3N0
YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGlwcm9jX2lkbV9kcml2ZXIgPSB7Cj4+PiArwqDC
oMKgIC5wcm9iZSA9IGlwcm9jX2lkbV9wcm9iZSwKPj4KPj4gRG8gbm90IHlvdSBuZWVkIGEgcmVt
b3ZlIGZ1bmN0aW9uIGluIG9yZGVyIHRvIHVucmVnaXN0ZXIgdGhlIHN5c2ZzIGZpbGUKPj4gdGhh
dCB5b3UgY3JlYXRlZCBpbiBpcHJvY19pZG1fZGV2X3Byb2JlKCkgdG8gYXZvaWQgYmluZC91bmJp
bmQgKG9yCj4+IHJtbW9kL21vZHByb2JlKSB0byBzcGl0IG91dCBhbiBleGlzdGluZyBzeXNmcyBl
bnRyeSB3YXJuaW5nPwo+Pgo+IAo+IFRoaXMgZHJpdmVyIHNob3VsZCBuZXZlciBiZSBjb21waWxl
ZCBhcyBhIG1vZHVsZS4gSXQncyBtZWFudCB0byBiZQo+IGFsd2F5cyB0aGVyZSB0byBjYXB0dXJl
IElETSBidXMgdGltZW91dHMuCj4gCj4gQnV0IHlvdSBhcmUgcmlnaHQgdGhhdCBJIGNhbm5vdCBw
cmV2ZW50IHVzZXIgZnJvbSB0cnlpbmcgdG8gdW5iaW5kIGl0Cj4gZm9yIHdoYXRldmVyIHJlYXNv
bi4gSSdsbCBhZGQgYSByZW1vdmUgcm91dGluZSB0byB0YWtlIGNhcmUgb2YgdGhpcy4KCllvdSBj
YW4gYWxzbyBzZXQgc3VwcHJlc3NfYmluZF9hdHRycyB0byB5b3VyIHBsYXRmb3JtX2RyaXZlciBz
dHJ1Y3R1cmUKdG8gcHJldmVudCB1bmJpbmQvYmluZCBmcm9tIGhhcHBlbmluZy4KLS0gCkZsb3Jp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
