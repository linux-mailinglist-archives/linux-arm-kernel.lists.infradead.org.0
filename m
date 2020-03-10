Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F48218039F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq8CKCmL+JcNxl4G+fxvaWgC1KoCIFcdOKplZ94j+qE=; b=CUlP43n0ywK5gC
	tW+Aw9C/RxCp3ulow/3wZsCV4V+cFTHK90dMqJtMV6XGehUvTo9BT7dswRFPasCRZeSATeYUbJwxe
	tHm98u196LUg4RwhBPPTGCaUwQuZd4RpgciAy9ccPChQDCRHQBGmpphdBECaaPHfWE9RsCQlyxMl7
	L3nBbTfhBMow8pMA6dUfhYsJzSJezJJVrZxXvXqlQ1bj+g/Ftj13W+TO9+Zw+JLOqIEwPDaiIAZbg
	l7O/cncjab8brSiRLd1IN/CX8/dtd5VybX/SZaknUfRlHdmaG0hYsOfbis6N1LspJnEy+PlBRCpcj
	ReFsxaJayUlbZquVbC0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhqd-0001tB-Qd; Tue, 10 Mar 2020 16:35:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhqT-0001Nz-Af
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:35:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so14900932ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PkvP9z4GUbrVZ+Tfo0OweyqTQfLrEzalHTdsi1faLQw=;
 b=YAqaHsxHZ7QEiP/RfzMh3wckjR70ykAPh05l2kvNDWqYE5p/ZxIXbaL2xmAeo2lW+a
 K32K5ISWWM0HdagOxCudNz+f8586xOz9nDF4cpULQtA5i/cnyzdfVCjzlC+nvwBxoTVi
 1JWvxhWgG6xDs02+afbKPbijZj1I0DjuvxhscAn51605ljPbPPpMsADAVS8uyMVXw7ey
 X8kDfLEJ5wTWBkuUg15ekNno9Nt4mOx3tvHM6crY/1pl6aZAVL5mLqvOT58elYmYddl8
 T3glE7ptcGLQmpI0sLPZT6GHNWqAHSsY93/pGS98eGG6R1tOySUBt9FCDNV03DmDwMvP
 VLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PkvP9z4GUbrVZ+Tfo0OweyqTQfLrEzalHTdsi1faLQw=;
 b=gCsbXqgFDxdDbUjsDJApK4JzEm//jm4nGn4xKCyAzOkUrIVr5CFzBMyM/ZKEvXtVYj
 Ig4ms1nL63C2RlYvKVF6LoezdFSOZgmJNOm0v08k+xPF+pZcG+m4HILXST6PfbyX0Mug
 6AL7FAfLOyOqonXyKiv6m7NU0CXF/cwimVmMOUc5jZYOxgrKFK8ovdhmRbUqU6LrP7vZ
 zy03B5om6TKpj6tw2wNLyRvj1DK/dOlzPGFRzTBUkLmLkg4+HLdeegcKFM1G1EjSU2It
 4wsch5vjEJsG/gLoHUlaJrKj1AJOSw8CWKBcD9yw/It1aUlYh3A9a1njJ1OO2EgBXLs9
 TqgQ==
X-Gm-Message-State: ANhLgQ0NiGAgqb9++tJcUS1NZsgxElRUB5Bmsu+yhvpA28htRG/gfyd1
 QirjCkfyap/w4BJhA579TCJsIxeN
X-Google-Smtp-Source: ADFU+vtOmqlz7i+eUMH7qZq9/leMubPKixzxvFNQR0VR0HogobgrjeXrBnGYpsTS6kGBKrP3xs99jg==
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr4655291ljf.234.1583858103263; 
 Tue, 10 Mar 2020 09:35:03 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id a5sm23666109lfl.4.2020.03.10.09.35.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:35:02 -0700 (PDT)
Subject: Re: [PATCH v5 4/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-5-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <67295862-0898-87d1-ddb2-660713501bca@gmail.com>
Date: Tue, 10 Mar 2020 19:35:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-5-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_093505_396089_0610B27D 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBBZGQgdGhlIGJpbmRpbmcgZG9jdW1lbnQg
Zm9yIHRoZSBleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlciAoRU1DKSB3aGljaAo+IGNvbW11bmlj
YXRlcyB3aXRoIGV4dGVybmFsIExQRERSNCBkZXZpY2VzLiBJdCBpbmNsdWRlcyB0aGUgYmluZGlu
Z3Mgb2YKPiB0aGUgRU1DIG5vZGUgYW5kIGEgc3ViLW5vZGUgb2YgRU1DIHRhYmxlIHdoaWNoIHVu
ZGVyIHRoZSByZXNlcnZlZCBtZW1vcnkKPiBub2RlLiBUaGUgRU1DIHRhYmxlIGNvbnRhaW5zIHRo
ZSBkYXRhIG9mIHRoZSByYXRlcyB0aGF0IEVNQyBzdXBwb3J0ZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJy
eSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY1Ogo+IC0g
Y29udmVydCB0byBkdC1zY2hlbWEKCi4uLgoKPiArICBtZW1vcnktcmVnaW9uOgo+ICsgICAgJHJl
ZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+ICsgICAgZGVzY3Jp
cHRpb246Cj4gKyAgICAgIHBoYW5kbGUgdG8gYSByZXNlcnZlZCBtZW1vcnkgcmVnaW9uIGRlc2Ny
aWJpbmcgdGhlIHRhYmxlIG9mIEVNQwo+ICsgICAgICBmcmVxdWVuY2llcyB0cmFpbmVkIGJ5IHRo
ZSBmaXJtd2FyZQoKU2hvdWxkbid0IHRoZSB0YWJsZSdzIGZvcm1hdCBiZSBkb2N1bWVudGVkPwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
