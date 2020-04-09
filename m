Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524A31A3524
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0dpSmvoTcUY+HRJeuyPeZQNvBCsdHnthd3valtGP1s=; b=HQJwvut2cNVPLs
	iLSUZfRw6DEj46cTGcZeVldG1PwcYyRWuluZoKyxMmvtDk3a6hMbJqVbeuksFE7WyOd6u1kyumFzA
	eSPiUJWFnE3+0ILyz6RSLfBR2J862Nqw7XhzF9e7CZXs92mHKsmLsWE3tK7Kuq7oVCjkDfeXUcYZ2
	vJ7WnqCBUlKcByHUyQ6XkarWB2+b641k/ReW2Xft16grsUnuuX2fTMIaiMuuMI3/+icQWvN+CRARJ
	Hfs7hh8WA9EIVwlmsayyJd+RQbFlo519wcXrYRYGx1a4t2KpdqfEFrbOxLwySuH0Vq6IkT1KdJPJG
	VrlJiHsyVDO1/WgSWb/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXYv-0002yj-Oh; Thu, 09 Apr 2020 13:49:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXYj-0002xT-Ro
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:49:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so11979078wrt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 06:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xI/13ahNFkzIs4fIOUGU+GiPaJZFLk48sQn0t25jaGY=;
 b=afn5TbxaSodVr0dusUmbWTENkDb2K7KmcDYRZvC1s1/ABXD0YGMH+o0CUhuulFvK8D
 TiiyY59rpWL2aj/8BFvJcBbzZd3kS72CwBWjKimtNHITiDCpdWPXbpMyrq9VIGeapAoZ
 JFj9e9zNZjLMKip1oZo6xLrulUab5B0RopS2krK6YhQKUVhDJ6EV9zHcdxi/tlYmIp9P
 VHDGc9RTvC9FU8xTekWP6oBJ5KhFJfwCMx5E5AR/Co0fbbo4lyQbXK0Xvl4OjHtuEn8I
 +9cIQsqMGxquOA3ok8x7PkaJl2UIYpHP6F93Dfn0cMZrwnprNo9JjDjGiynZ3f4NEKRS
 oxgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xI/13ahNFkzIs4fIOUGU+GiPaJZFLk48sQn0t25jaGY=;
 b=sXY8EFE5/q1+eORo8p+yKKPQwtecnCayyTkONUEbTu3Z+8+7v9BhXQfNFpkvKoyYJQ
 y5jqpgcJhaE8hYsPTNwPXCNabfvVI7D5LGKgqHR+UHiixhaj+/r9wUmqD6X2yieq0dVG
 YFfl7F2QjifALRx3O8SSEBYu6wcgULXpDaUKfP8suxlWtLkK37PvEjdafo2u2s29Wm2Y
 tlRhurWsT6kXDHOTfkznx57Hqb9wCE+0aHoWE0bspaq90GjyICXW3OXmCSVcvoyrfVi3
 pX8eVFftjGydY+18HcxPBu9oY6P2vmxjHPEO1v4WNFXQZaz9297EZWOJUGciMVC/rVvz
 EY8w==
X-Gm-Message-State: AGi0PubfZhTuN3VqhgKCXJOulxDDPSGDbM04TY0uGJjA9OCpUenV9uQs
 qHTdCRwVn861GQGEmuOPDmaTCA==
X-Google-Smtp-Source: APiQypLdC3AyJfiHJHy5bpqo/UY+01I+BfVknqM3QSrQr+ChtRt3Ew2TsNKjwXQyBVHN0NcAEWTNsg==
X-Received: by 2002:adf:aacc:: with SMTP id i12mr15309250wrc.116.1586440171850; 
 Thu, 09 Apr 2020 06:49:31 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda?
 ([2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda])
 by smtp.googlemail.com with ESMTPSA id u17sm45525611wra.63.2020.04.09.06.49.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 06:49:31 -0700 (PDT)
Subject: Re: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
To: Keerthy <j-keerthy@ti.com>, rui.zhang@intel.com, robh+dt@kernel.org
References: <20200407055116.16082-1-j-keerthy@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
Date: Thu, 9 Apr 2020 15:49:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407055116.16082-1-j-keerthy@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_064933_942571_655932E6 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEtlZXJ0aHksCgpPbiAwNy8wNC8yMDIwIDA3OjUxLCBLZWVydGh5IHdyb3RlOgo+IEFkZCBW
VE0gdGhlcm1hbCBzdXBwb3J0LiBJbiB0aGUgVm9sdGFnZSBUaGVybWFsCj4gTWFuYWdlbWVudCBN
b2R1bGUoVlRNKSwgSzMgQU02NTQgc3VwcGxpZXMgYSB2b2x0YWdlCj4gcmVmZXJlbmNlIGFuZCBh
IHRlbXBlcmF0dXJlIHNlbnNvciBmZWF0dXJlIHRoYXQgYXJlIGdhdGhlcmVkIGluIHRoZSBiYW5k
Cj4gZ2FwIHZvbHRhZ2UgYW5kIHRlbXBlcmF0dXJlIHNlbnNvciAoVkJHQVBUUykgbW9kdWxlLiBU
aGUgYmFuZAo+IGdhcCBwcm92aWRlcyBjdXJyZW50IGFuZCB2b2x0YWdlIHJlZmVyZW5jZSBmb3Ig
aXRzIGludGVybmFsCj4gY2lyY3VpdHMgYW5kIG90aGVyIGFuYWxvZyBJUCBibG9ja3MuIFRoZSBh
bmFsb2ctdG8tZGlnaXRhbAo+IGNvbnZlcnRlciAoQURDKSBwcm9kdWNlcyBhbiBvdXRwdXQgdmFs
dWUgdGhhdCBpcyBwcm9wb3J0aW9uYWwKPiB0byB0aGUgc2lsaWNvbiB0ZW1wZXJhdHVyZS4KPiAK
PiBBZGQgc3VwcG9ydCBmb3IgYmFuZGdhcCBzZW5zb3JzLiBDdXJyZW50bHkgcmVhZGluZyB0ZW1w
ZXJhdHVyZXMKPiBpcyBzdXBwb3J0ZWQuCgpIb3cgZG8geW91IHdhbnQgdG8gcHJvY2VlZD8gU2hh
bGwgSSB0YWtlIHBhdGNoZXMgMSAmIDIgPwoKCj4gQ2hhbmdlcyBpbiB2NjoKPiAKPiAgICogUmVt
b3ZlZCBidW5jaCBvZiB1bnVzZWQgI2RlZmluZXMgYW5kIGNvdXBsZSBvZiByZWR1bmRhbnQgdmFy
aWFibGVzLgo+ICAgKiBSZW9yZGVyZWQgcGF0Y2hlcyBhIGJpdC4KPiAgICogTWlub3IgcmVvcmRl
cmluZyBpbiBkdCBiaW5kaW5nIHBhdGNoLgo+IAo+IENoYW5nZXMgaW4gdjU6Cj4gCj4gICAqIFJl
bW92ZWQgdGhlcm1hbCB3b3JrIGZ1bmN0aW9uIHdoaWNoIHdhcyB1bnVzZWQuCj4gICAqIFJlbW92
ZWQgdW51c2VkIHByZXZlX3Rlbm1wIGFuZCBhIGNvdXBsZSBtb3JlIHN0cnVjdCB2YXJpYWJsZXMu
Cj4gICAqIFJlbW92ZWQgY291cGxlIG9mIHJlZHVuZGFudCBoZWFkZXIgZnVuY3Rpb24gaW5jbHVk
ZS4KPiAKPiBDaGFuZ2VzIGluIHY0Ogo+IAo+ICAgKiBGaXhlZCBjb21tZW50cyBmcm9tIERhbmll
bCB0byByZW1vdmUgdHJlbmQgZnVuY3Rpb24uCj4gICAqIE1vc3RseSBjbGVhbmVkIHVwIGFsbCB0
aGUgdW51c2VkIHZhcmlhYmxlcy4KPiAgICogRHJpdmVyIGZyb20gYm9vbCB0byB0cmlzdGF0ZS4K
PiAKPiBDaGFuZ2VzIGluIHYzOgo+IAo+ICAgKiBGaXhlZCBlcnJvcnMgc2VlbiB3aXRoOgo+ICAg
ICBkdF9iaW5kaW5nX2NoZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC90aSxhbTY1NC10aGVybWFsLnlhbWwKPiAKPiBDaGFuZ2VzIGlu
IHYyOgo+IAo+ICAgKiBGaXhlZCB5YW1sIGVycm9ycwo+ICAgKiByZW5hbWVkIGFtNjU0LWluZHVz
dHJpYWwtdGhlcm1hbC5kdHNpIHRvIGszLWFtNjU0LWluZHVzdHJpYWwtdGhlcm1hbC5kdHNpCj4g
ICAgIHRvIGZvbGxvdyB0aGUgY29udmVudGlvbiBmb3IgazMgZmFtaWx5LiAgCj4gCj4gS2VlcnRo
eSAoNCk6Cj4gICBkdC1iaW5kaW5nczogdGhlcm1hbDogazM6IEFkZCBWVE0gYmluZGluZ3MgZG9j
dW1lbnRhdGlvbgo+ICAgdGhlcm1hbDogazM6IEFkZCBzdXBwb3J0IGZvciBiYW5kZ2FwIHNlbnNv
cnMKPiAgIGFybTY0OiBkdHM6IHRpOiBhbTY1LXdha2V1cDogQWRkIFZUTSBub2RlCj4gICBhcm02
NDogZHRzOiB0aTogYW02NTQ6IEFkZCB0aGVybWFsIHpvbmVzCj4gCj4gIC4uLi9iaW5kaW5ncy90
aGVybWFsL3RpLGFtNjU0LXRoZXJtYWwueWFtbCAgICB8ICA1NiArKysrCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtYW02NS13YWtldXAuZHRzaSAgICB8ICAxMSArCj4gIC4uLi9kdHMvdGkv
azMtYW02NTQtaW5kdXN0cmlhbC10aGVybWFsLmR0c2kgICB8ICA0NSArKysKPiAgZHJpdmVycy90
aGVybWFsL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgIHwgIDEwICsKPiAgZHJpdmVycy90
aGVybWFsL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy90
aGVybWFsL2szX2JhbmRnYXAuYyAgICAgICAgICAgICAgICAgIHwgMjY0ICsrKysrKysrKysrKysr
KysrKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDM4NyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC90aSxhbTY1
NC10aGVybWFsLnlhbWwKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
dGkvazMtYW02NTQtaW5kdXN0cmlhbC10aGVybWFsLmR0c2kKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvdGhlcm1hbC9rM19iYW5kZ2FwLmMKPiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoK
Rm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZh
Y2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0
cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
