Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F5313C273
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCiLJnAXU9FBBHNSDLWs33UghWNLsYIH6zPNz+MCBRw=; b=rLJ5OZo0ujh2/l
	H9ep1fKRCHVI+ErPweM7EUlCRd+xNYTAxV7N98yiCiKyd411TmPMKEFwKavnoV/LtXW3wRe3M8mfP
	xUt5UV2jQCiLfEGwO6V/ORSL1fNVIS+Rp3dyxF+f/0pTdiDmkWb6s/6xTcOQpi9xKAqLgG7uPtVJ1
	GUPH8HFzH7XgvNwQNOtkVdyahSJT72xJoTHj+HcmUzDeTRfqdEcONGeBeoqpJLyb3I05bAqifA4O3
	TfMJ8VzKP8xVdM4uuR8PFdKKSU2BtbzeOVO4hHuoJK3ijuPKxc2wq39pnGQTK13cBwyyLlpisXLs8
	OnZHc4qP/xIZ4Y9qlAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriXl-0001PI-6p; Wed, 15 Jan 2020 13:17:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriXb-0001OP-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:17:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so15702730wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 05:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Febzu48nm38swSB4yv53w8ZbAHsNiPuEZoET1MIdbFk=;
 b=I5cyLWbG9/E2JpulXcIZacAJox+S7cUlJ2UB4DTHo/LzT2Pl+r5lD13gYCgjdmJDd3
 MU7eFD4CI1Q1APzsgnZvguLppOq9MUKMbswK+KCn6vJIEeMM9q3ArZjS4KSNBVJv3F1/
 zxYyJpioAR2LZciUGfMqplo/+wai/B8yAwGVJGpaPYdfPu2aJT/LTKrI1JDZvKsNxrEi
 mWE+rpK4d5d+MLQo8Ydi0bmW+M5ktMk9yFoHardnQPWLVCB//H8Xd3YL+XeGU5hlp61V
 VT+HAfUMpgqB26ps31YHZd6hJYP5QcDpuA0QRJEcq3/mLar3J1EkWYC+s7jCEmbhFhsn
 iOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Febzu48nm38swSB4yv53w8ZbAHsNiPuEZoET1MIdbFk=;
 b=jp6K2khrOs8d38zBZnu6MF8Dsf3ZmRLnXKsxSU6MbtmGgo7wLSCbaFFprT0IPJiPCv
 8AuU1vbxiGSI3kPsqfFfvWsKVKuoPac831QeOY+8AvauHq2A44tQRweTRJBF6kseO9f0
 xlZJFH3llaJ8TSNuVOf654AfiuRYsejLwO9CfC9o1g8d+QOyVcAgFaL41bWIC7tu9IKa
 7oBho7Wq/w8qeSwMZ28DE+q6rXOcxB9DKkqS1WoL1XEVFwTf2iWpwefFk3TCIiuWvq1z
 vK+YAjZ/EWHI0Lp1NqZnnvGrcr7hKQ1DTtg5UMq8QeWSGnobdHxiQeNhNj2WZs0m/i6z
 zkKw==
X-Gm-Message-State: APjAAAXV1OchAhSt9sM9Y44GH3kPk5pgQIyeoMgP2Bl9oZEe3N4KNYti
 NpQwipdeBX/41U6Ys/u8WLXXxHyPLgxN7Q==
X-Google-Smtp-Source: APXvYqydHIlsnNzw8ziGzauCIehBfk85fBq4qN64mM8vv0zB41OXrtzXFh+Gfj/9aP9P1XlXyNPvHg==
X-Received: by 2002:adf:fc08:: with SMTP id i8mr32834739wrr.82.1579094216052; 
 Wed, 15 Jan 2020 05:16:56 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ac8b:fcee:b80:ebae?
 ([2a01:e34:ed2f:f020:ac8b:fcee:b80:ebae])
 by smtp.googlemail.com with ESMTPSA id
 z124sm25444607wmc.20.2020.01.15.05.16.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 05:16:55 -0800 (PST)
Subject: Re: [PATCH v3 0/6] brcmstb_thermal updates for new processes
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20200114190607.29339-1-f.fainelli@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a8f71294-b223-f24d-ca19-6b3324b9ace0@linaro.org>
Date: Wed, 15 Jan 2020 14:16:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_051659_206693_34964074 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDEvMjAyMCAyMDowNiwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKPiBIaSwKPiAKPiBU
aGlzIHBhdGNoIHNlcmllcyBjb250YWlucyBhIGJ1ZyBmaXggZm9yIHRoZSBleGlzdGluZyBwbGF0
Zm9ybXMgYW5kIHRoZW4KPiBwYXZlcyB0aGUgd2F5IGZvciBhZGRpbmcgc3VwcG9ydCBmb3IgQnJv
YWRjb20gU1RCJ3MgbGF0ZXN0IGNoaXBzIGluIDE2bm0KPiBwcm9jZXNzZXMsIGFuZCBmaW5hbGx5
IHVwZGF0ZXMgdGhlIGRyaXZlciB3aXRoIHBlY3VsYXJpdGllcyBpbnRyb2R1Y2VkCj4gd2l0aCB0
aGUgMTZubSwgbGlrZSB0aGUgbGFjayBvZiBpbnRlcnJ1cHQgbm90aWZpY2F0aW9uIGZyb20gdGhl
IEhXLgo+IAo+IFBsZWFzZSBxdWV1ZSB1cCB0aGUgZmlyc3QgcGF0Y2ggZm9yIC1zdGFibGUgaWYg
eW91IHdhbnQsIHRoYW5rcyEKPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gZG8gbm90IGNoYW5nZSBB
VlNfVE1PTl9URU1QX01BWCB3aXRoIEFWU19UTU9OX1RFTVBfTUFTSwo+IC0gdXNlIG9mIG9mX2Rl
dmljZV9nZXRfbWF0Y2hfZGF0YQo+IC0gbWFpbnRhaW4gZnVuY3Rpb24gcG9pbnRlcnMgYmFjayB0
byBvZl9kZXZpY2VfaWQ6OmRhdGEKPiAKPiBDaGFuZ2VzIGluIHYyOgo+IAo+IC0ga2VwdCBkZWZp
bmVkIGNvbnN0YW50cyBpbiBwYXRjaCAjMSBhbmQga2VlcCB1c2luZyB0aGVtIGZvciBzdWJzZXF1
ZW50Cj4gICBwYXRjaGVzCj4gLSBhZGQgUmV2aWV3ZWQtYnkgdGFncyB0byBwYXRjaGVzICMzIHRo
cm91Z2ggIzYKPiAtIHJlYmFzZSBhZ2FpbnN0IHY1LjUuLXJjMQo+IAo+IEZsb3JpYW4gRmFpbmVs
bGkgKDYpOgo+ICAgdGhlcm1hbDogYnJjbXN0Yl90aGVybWFsOiBEbyBub3QgdXNlIERUIGNvZWZm
aWNpZW50cwo+ICAgdGhlcm1hbDogYnJjbXN0Yl90aGVybWFsOiBQcmVwYXJlIHRvIHN1cHBvcnQg
YSBkaWZmZXJlbnQgcHJvY2Vzcwo+ICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IERlZmluZSBCQ003
MjE2IHRoZXJtYWwgc2Vuc29yIGNvbXBhdGlibGUKPiAgIHRoZXJtYWw6IGJyY21zdGJfdGhlcm1h
bDogQWRkIDE2bm0gcHJvY2VzcyB0aGVybWFsIHBhcmFtZXRlcnMKPiAgIHRoZXJtYWw6IGJyY21z
dGJfdGhlcm1hbDogUmVzdHJ1Y3R1cmUgaW50ZXJydXB0IHJlZ2lzdHJhdGlvbgo+ICAgdGhlcm1h
bDogYnJjbXN0Yl90aGVybWFsOiBSZWdpc3RlciBkaWZmZXJlbnQgb3BzIHBlciBwcm9jZXNzCj4g
Cj4gIC4uLi9iaW5kaW5ncy90aGVybWFsL2JyY20sYXZzLXRtb24udHh0ICAgICAgICB8ICA4ICst
Cj4gIGRyaXZlcnMvdGhlcm1hbC9icm9hZGNvbS9icmNtc3RiX3RoZXJtYWwuYyAgICB8IDk2ICsr
KysrKysrKysrLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCA0
MCBkZWxldGlvbnMoLSkKCkFwcGxpZWQgdG8gdGhlIHRlc3RpbmcgYnJhbmNoLiBJZiB0aGVyZSBp
cyBubyBwcm9ibGVtIGl0IHdpbGwgYmUgbWVyZ2VkCnRvIHRoZSBsaW51eC1uZXh0IGJyYW5jaC4K
CiAgLS0gRGFuaWVsCgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90
d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
L2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
