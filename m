Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A6E1C5CAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrksdzyzQ2zLRL5KT8YetoSnh7vYsRtmy6GKF59/jaE=; b=jCRu5gQ5cjlNg2
	Lde5Gl/k9mwwXZ5G+iXu/hlceYzjowLfanjzkBPP8rf0nqTECyBrsDp/Ggz+URNhUZps2ojzEld+O
	s5EnpdKRNMySwJax38FJHn/kAhnjyyADGgEDcVTPdC+Y2PzID/fWPFqjrA52A1KEZlx8L7INaQ99y
	xkbdZuJTGz6MhdwKxVcpJ2teBHcnU7xBYgiRjAyx/rk4IZofIWtDUhsggNMsNiAS5zK50vz9DVy1a
	KNqt8Kfsam0d0OdUqBqiMxfECR3fLMzeA4/EnCcIKr2xsvyFNo7tA0UYI5//ZCJiZMxqGgVRcDEbZ
	1O8aUqnkDZVrkQYeoHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzvh-0007ra-KK; Tue, 05 May 2020 15:56:21 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzva-0007r2-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:56:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id b18so89753oic.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:56:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2kiU15T4JIvVcoMlu+le17FQfvQThvbLdJjc19jX2Pk=;
 b=AhP8XDBhghqoJJqZF5t8MiscrgzRXjQuPUqx41OO4Uxskk6XNwhPa39TYPuDIdyNCw
 kzqaMnFdColQwCf30JyBIAH4UFJhVMpc88r4+ZH942ieonwRs1yvmXi6tw54IUKqLRrv
 QWS0cjUpR44RAr+7S4YFVQXoeb5Bbtt8WE5esPtL7du5Ued0DItDGL2JMa/zmDvsD/OF
 YrO3HQ2GZwzQu9ZkZkB20tYtdtRonp7UJR6Z/NAB6+/ZWb+y+AMctxYUWnxNRFHgWnWq
 u6nfdgZkGdLak3Z0M9jOjmDFH4ktpyRk0J60IIFcA3MOs077Jm6IXsGRAQ1va0i8v+aO
 5vMw==
X-Gm-Message-State: AGi0Pua+xDpdnFM98ttO/wvCUottVBjX27Kt8PjTYq1DBywM5ZgeupOW
 E6oXdF8YeJWlwE8J/C+QLfZaR0M=
X-Google-Smtp-Source: APiQypL/3RVkUyjq56uhA77LSXMjBmXxLpVZ4c6aORzu4bgyRIUs2mZIy6cT9sC787m49IaPcEJGCg==
X-Received: by 2002:aca:1904:: with SMTP id l4mr3005182oii.106.1588694173239; 
 Tue, 05 May 2020 08:56:13 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 85sm653166oie.17.2020.05.05.08.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:56:12 -0700 (PDT)
Received: (nullmailer pid 28089 invoked by uid 1000);
 Tue, 05 May 2020 15:56:11 -0000
Date: Tue, 5 May 2020 10:56:11 -0500
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v7 06/10] dt-bindings: phy: Document Samsung UFS PHY
 bindings
Message-ID: <20200505155611.GA23690@bogus>
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174215epcas5p3e87abccf47976f6318eb470efef9db39@epcas5p3.samsung.com>
 <20200426173024.63069-7-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426173024.63069-7-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_085614_328769_6516C9CD 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMTE6MDA6MjBQTSArMDUzMCwgQWxpbSBBa2h0YXIgd3Jv
dGU6Cj4gVGhpcyBwYXRjaCBkb2N1bWVudHMgU2Ftc3VuZyBVRlMgUEhZIGRldmljZSB0cmVlIGJp
bmRpbmdzCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1
bmcuY29tPgo+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxA
Z21haWwuY29tPgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1s
ICAgICAgICAgfCA3NCArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1ZnMtcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55
YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjM1MmQ1ZGRh
MzIwZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3NhbXN1bmcsdWZzLXBoeS55YW1sCj4gQEAgLTAsMCArMSw3NCBAQAo+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gKyVZ
QU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkv
c2Ftc3VuZyx1ZnMtcGh5LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFNhbXN1bmcgU29DIHNlcmllcyBV
RlMgUEhZIERldmljZSBUcmVlIEJpbmRpbmdzCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEFs
aW0gQWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiArCj4gK3Byb3BlcnRpZXM6Cj4g
KyAgIiNwaHktY2VsbHMiOgo+ICsgICAgY29uc3Q6IDAKPiArCj4gKyAgY29tcGF0aWJsZToKPiAr
ICAgIGVudW06Cj4gKyAgICAgIC0gc2Ftc3VuZyxleHlub3M3LXVmcy1waHkKPiArCj4gKyAgcmVn
Ogo+ICsgICAgbWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9uOiBQSFkgYmFzZSByZWdpc3Rl
ciBhZGRyZXNzCgpDYW4gZHJvcCB0aGUgZGVzY3JpcHRpb24uIERvZXNuJ3QgYWRkIGFueXRoaW5n
IHNwZWNpYWwuCgo+ICsKPiArICByZWctbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBj
b25zdDogcGh5LXBtYQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBk
ZXNjcmlwdGlvbjogUExMIHJlZmVyZW5jZSBjbG9jawo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBz
eW1ib2wgY2xvY2sgZm9yIGlucHV0IHN5bWJvbCAoIHJ4MC1jaDAgc3ltYm9sIGNsb2NrKQo+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBzeW1ib2wgY2xvY2sgZm9yIGlucHV0IHN5bWJvbCAoIHJ4MS1j
aDEgc3ltYm9sIGNsb2NrKQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBzeW1ib2wgY2xvY2sgZm9y
IG91dHB1dCBzeW1ib2wgKCB0eDAgc3ltYm9sIGNsb2NrKQo+ICsKPiArICBjbG9jay1uYW1lczoK
PiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiByZWZfY2xrCj4gKyAgICAgIC0gY29uc3Q6
IHJ4MV9zeW1ib2xfY2xrCj4gKyAgICAgIC0gY29uc3Q6IHJ4MF9zeW1ib2xfY2xrCj4gKyAgICAg
IC0gY29uc3Q6IHR4MF9zeW1ib2xfY2xrCj4gKwo+ICsgIHNhbXN1bmcscG11LXN5c2NvbjoKPiAr
ICAgICRyZWY6ICcvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlJwo+ICsg
ICAgZGVzY3JpcHRpb246IHBoYW5kbGUgZm9yIFBNVSBzeXN0ZW0gY29udHJvbGxlciBpbnRlcmZh
Y2UsIHVzZWQgdG8KPiArICAgICAgICAgICAgICAgICBjb250cm9sIHBtdSByZWdpc3RlcnMgYml0
cyBmb3IgdWZzIG0tcGh5Cj4gKwo+ICtyZXF1aXJlZDoKPiArICAtICIjcGh5LWNlbGxzIgo+ICsg
IC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSByZWctbmFtZXMKPiArICAtIGNsb2Nrcwo+
ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHNhbXN1bmcscG11LXN5c2NvbgoKQWRkOgoKYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCgpXaXRoIHRoYXQsCgpSZXZpZXdlZC1ieTogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9leHlub3M3LWNsay5oPgo+ICsKPiArICAgIHVmc19w
aHk6IHVmcy1waHlAMTU1NzE4MDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAic2Ftc3VuZyxl
eHlub3M3LXVmcy1waHkiOwo+ICsgICAgICAgIHJlZyA9IDwweDE1NTcxODAwIDB4MjQwPjsKPiAr
ICAgICAgICByZWctbmFtZXMgPSAicGh5LXBtYSI7Cj4gKyAgICAgICAgc2Ftc3VuZyxwbXUtc3lz
Y29uID0gPCZwbXVfc3lzdGVtX2NvbnRyb2xsZXI+Owo+ICsgICAgICAgICNwaHktY2VsbHMgPSA8
MD47Cj4gKyAgICAgICAgY2xvY2tzID0gPCZjbG9ja19mc3lzMSBTQ0xLX0NPTUJPX1BIWV9FTUJF
RERFRF8yNk0+LAo+ICsgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUEhZQ0xLX1VGUzIw
X1JYMV9TWU1CT0xfVVNFUj4sCj4gKyAgICAgICAgICAgICAgICAgPCZjbG9ja19mc3lzMSBQSFlD
TEtfVUZTMjBfUlgwX1NZTUJPTF9VU0VSPiwKPiArICAgICAgICAgICAgICAgICA8JmNsb2NrX2Zz
eXMxIFBIWUNMS19VRlMyMF9UWDBfU1lNQk9MX1VTRVI+Owo+ICsgICAgICAgIGNsb2NrLW5hbWVz
ID0gInJlZl9jbGsiLCAicngxX3N5bWJvbF9jbGsiLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
InJ4MF9zeW1ib2xfY2xrIiwgInR4MF9zeW1ib2xfY2xrIjsKPiArCj4gKyAgICB9Owo+ICsuLi4K
PiAtLSAKPiAyLjE3LjEKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
