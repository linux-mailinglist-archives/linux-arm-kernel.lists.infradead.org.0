Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814E71F02B8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72sx+71Fn/qPoVysCjiwHzolsjUKII+UjBbDW3z8brY=; b=TQkqbyjrWRQSHn
	wekgXS9xCwzIQpdT7il1a3QUfqaznUQaNgJcHBjqfFEMkUnnOJ0cRFigKxhNNOzf7dA7NzwBzmZNa
	zoim+jwRigRcEy+LqTWFRAXZujgH988GbV5Qrnp3Jnu/9VwDMVcDrPGmMKocErNMsXRTlECgok0Ze
	jyhXJh7DCuzqc+q+ALWi1Hbfj4Ew5185PLR6jDRTLObh/Q0uQy57jfln5f7pP/1hvmmjeq2I5TYSc
	v0PXRZdsHHsILpwgrNfzNAUznBhbPXWgH7hlpFQ0+V08Jo8JkBQDF9UAaiLNtu9QqR99i92XEdKQV
	9tQ5opRc6qOaw/CDigpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhKSP-0006Fs-RX; Fri, 05 Jun 2020 22:04:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhKSJ-0006Ey-Ck; Fri, 05 Jun 2020 22:04:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id j10so11165519wrw.8;
 Fri, 05 Jun 2020 15:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4obgiWJMjzopugCNtxoiM9Fhsn1z9LnA6SizhmkTt9g=;
 b=oWoLOs1DYFcKnc8iyzbCZ5ZjmvwzsLAT0uIZzcGnirqHov3z6YGwjUGZSTtIs7Y8Rg
 8xMoBSEI1DJHKhJu5l/4DyyYhmVYPtrPxGF8cidtj/AY1sx/rUmFNeqb6uhmNwyP9IKK
 JLPa/uJZkImCV+PcqI0o8T8pHZQ74MxP+TYPEtsKScM/B6AGX6ocLuSxmazHCdCPqxBH
 YKZQBoGBMLFLh6YbYGxROSRKqOmtbLRj0aI4EpP+VwyIxNqxnB7bO6Xe4di9FQCV5imO
 fzTaYt/G66Z68LK/oltgGYC0EIj+e3eiMPpBQR/V0pd6dPfEv3sjVEZ0cw2C9Bsmeoy3
 TEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4obgiWJMjzopugCNtxoiM9Fhsn1z9LnA6SizhmkTt9g=;
 b=B/cI1vc8ZIvXDeBzIDW2gGyZ2I0ne9bT1GrofFKM6Or0yar2UsU9fciDqIvBaiOYq3
 dbn/9nfmes/Ds+udj7SPp1sMqWoYy3gzRcdaSPSgd/e+ImYR/2ZPgQ/MYDxntip0KyxK
 JGZPJIRRU18TrIIzE+t09MZ0YwvcaOBdlPLPIShDtatGIy83DWpbCLU1hk7LX11Ticd1
 aNixBRgsZNtzusUyo7wTIATu2gG+IIhjW0YnVTWNo2GgM9qvs2MJ5PavoE3Xq4GHdqwX
 p2SIanWheJ8aOk0+VT+gwqPde5Iz+yNlOb0/7wE4QunvimAzoCuJYwKSvk6qau2cyAcO
 ok7g==
X-Gm-Message-State: AOAM532PfJOUVgOhSSZ9/RQOgqpofO+WKKx2bCqHHT4kP7ZhjXPbTFhK
 pcfuHoFWaEAIKrs4z4l8vVA=
X-Google-Smtp-Source: ABdhPJwJjWSx6RXx3ecmtFnocQfoqBGkAO9vSi2BfvV03xiJ7JhGCPlV2aEFgXx7veXxm5wOr3U6nw==
X-Received: by 2002:adf:8b0c:: with SMTP id n12mr12594963wra.340.1591394689565; 
 Fri, 05 Jun 2020 15:04:49 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a1sm13205415wmd.28.2020.06.05.15.04.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 15:04:48 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Robin Murphy <robin.murphy@arm.com>, Mark Brown <broonie@kernel.org>,
 lukas@wunner.de
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
Date: Fri, 5 Jun 2020 15:04:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_150451_448843_923F0CDF 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzUvMjAyMCA3OjQxIEFNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAyMC0wNi0w
NSAxNDo0NiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIwLTA2LTA1IDE0OjIwLCBNYXJr
IEJyb3duIHdyb3RlOgo+Pj4gT24gRnJpLCBKdW4gMDUsIDIwMjAgYXQgMTI6MzQ6MzZQTSArMDEw
MCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4+IE9uIDIwMjAtMDYtMDQgMjI6MjgsIEZsb3JpYW4g
RmFpbmVsbGkgd3JvdGU6Cj4+Pgo+Pj4+PiBGb3IgdGhlIEJDTTI4MzUgY2FzZSB3aGljaCBpcyBk
ZWVtZWQgcGVyZm9ybWFuY2UgY3JpdGljYWwsIHdlIHdvdWxkCj4+Pj4+IGxpa2UKPj4+Pj4gdG8g
Y29udGludWUgdXNpbmcgYW4gaW50ZXJydXB0IGhhbmRsZXIgd2hpY2ggZG9lcyBub3QgaGF2ZSB0
aGUgZXh0cmEKPj4+Pj4gY29tcGFyaXNvbiBvbiBCQ00yODM1X1NQSV9DU19JTlRSLgo+Pj4KPj4+
PiBGV0lXLCBpZiBJJ20gcmVhZGluZyB0aGUgcGF0Y2ggY29ycmVjdGx5LCB0aGVuIHdpdGggc2Vu
c2libGUgY29kZWdlbgo+Pj4+IHRoYXQKPj4+PiAib3ZlcmhlYWQiIHNob3VsZCBhbW91bnQgdG8g
YSBiaXQgdGVzdCBvbiBhIGxpdmUgcmVnaXN0ZXIgcGx1cyBhCj4+Pj4gbm90LXRha2VuCj4+Pj4g
Y29uZGl0aW9uYWwgYnJhbmNoIC0gYWNjb3JkaW5nIHRvIHRoZSAxMTc2IFRSTSB0aGF0IHNob3Vs
ZCBhZGQgdXAgdG8gYQo+Pj4+IHdob3BwaW5nIDIgY3ljbGVzLiBJZiB0aGF0J3MgcmVhbGx5IHNp
Z25pZmljYW50IHRoZW4gSSdkIGhhdmUgdG8gd29uZGVyCj4+Pj4gd2hldGhlciB5b3Ugd2FudCB0
byBiZSBhdCB0aGUgbWVyY3kgb2YgdGhlIHdob2xlIGdlbmVyaWMgSVJRIHN0YWNrCj4+Pj4gYXQg
YWxsLAo+Pj4+IGFuZCBzaG91bGQgcGVyaGFwcyBjb25zaWRlciB1c2luZyBGSVEgaW5zdGVhZC4K
Pj4+Cj4+PiBZZXMsIGFuZCBpbmRlZWQgdGhlIGNvbXBpbGVyIGRvZXMgc2VlbSB0byBtYW5hZ2Ug
dGhhdC7CoCBJdCAqaXMqIG5vbi16ZXJvCj4+PiBvdmVyaGVhZCB0aG91Z2guCj4+Cj4+IFRydWUs
IGJ1dCBzbydzIHRoZSBleGlzdGluZyBsZXZlbCBvZiBwb2ludGVyLWNoYXNpbmcgaW5kaXJlY3Rp
b24gdGhhdAo+PiB3aXRoIHNvbWUgc3RyYWlnaHRmb3J3YXJkIHJlZmFjdG9yaW5nIGNvdWxkIGJl
IHRha2VuIHJpZ2h0IG91dCBvZiB0aGUKPj4gY3JpdGljYWwgcGF0aCBhbmQgY29uZmluZWQgdG8g
anVzdCB0aGUgY29uZGl0aW9uYWwgY29tcGxldGUoKSBjYWxsLgo+PiBUaGF0J3MgdGhlIGtpbmQg
b2YgdGhpbmcgbGVhdmluZyBtZSB1bmNvbnZpbmNlZCB0aGF0IHRoaXMgaXMgY29kZQo+PiB3aGVy
ZSBldmVyeSBzaW5nbGUgY3ljbGUgY291bnRzIDspCj4gCj4gSGEsIGFuZCBpbiBmYWN0IGhhdmlu
ZyBjaGVja2VkIGEgYnVpbGQgb3V0IG9mIGN1cmlvc2l0eSwgdGhpcyBwYXRjaAo+IGFzLWlzIGFj
dHVhbGx5IHN0YW5kcyB0byBtYWtlIHRoaW5ncyBjb25zaWRlcmFibHkgd29yc2UuIEF0IGxlYXN0
IHdpdGgKPiBHQ0MgOC4zIGFuZCBiY20yODM1X2RlZmNvbmZpZywgYmNtMjgzNV9zcGlfaW50ZXJy
dXB0X2NvbW1vbigpIGRvZXNuJ3QKPiBnZXQgaW5saW5lZCwgd2hpY2ggbWVhbnMgYmNtMjgzNV9z
cGlfaW50ZXJydXB0KCkgcHVzaGVzL3BvcHMgYSBzdGFjawo+IGZyYW1lIGFuZCBtYWtlcyBhbiBv
dXQtb2YtbGluZSBjYWxsIHRvIGJjbTI4MzVfc3BpX2ludGVycnVwdF9jb21tb24oKSwKPiByZXN1
bHRpbmcgaW4gbWFzc2l2ZWx5ICptb3JlKiB3b3JrIHRoYW4gdGhlIGV4dHJhIHR3byBpbnN0cnVj
dGlvbnMgb2YKPiBzaW1wbHkgaW5saW5pbmcgdGhlIHRlc3QuCj4gCj4gU28geWVzLCB0aGUgb3Zl
cmhlYWQgb2YgaW5saW5pbmcgdGhlIHRlc3QgdnMuIHRoZSBhbHRlcm5hdGl2ZSBpcyBpbmRlZWQK
PiBub24temVyby4gSXQncyBqdXN0IGFsc28gbmVnYXRpdmUgOkQKCklzIGl0IHJlbGlhYmxlIGFj
cm9zcyBjb21waWxlciB2ZXJzaW9ucyBpZiB3ZSB1c2UgX19hbHdheXNfaW5saW5lPwoKVGhlIG9u
bHkgb3RoZXIgYWx0ZXJuYXRpdmUgdGhhdCBJIGNhbiB0aGluayBvZiBpcyB1c2luZyBhIHN0YXRp
YyBrZXkgdG8KZWxpbWluYXRlIHRoZSB0ZXN0IGZvciB0aGUgc2luZ2xlIGNvbnRyb2xsZXIgY2Fz
ZS4gVGhpcyBmZWVscyBoaWdobHkKb3ZlciBlbmdpbmVlcmVkLCBidXQgaWYgdGhhdCBwcm92ZXMg
bW9yZSByZWxpYWJsZSBhbmQgZ2V0cyBldmVyeWJvZHkKdGhlaXIgY29va2llLCB3aHkgbm90LgoK
THVrYXMsIGRvIHlvdSBoYXZlIGFueSB3YXkgdG8gdGVzdCB3aXRoIHRoZSBjb25kaXRpb25hbCBi
ZWluZyBwcmVzZW50CnRoYXQgdGhlIHBlcmZvcm1hbmNlIG9yIGxhdGVuY3kgZG9lcyBub3Qgc3Vm
ZmVyIHNvIG11Y2ggdGhhdCBpdCBiZWNvbWVzCnVuYWNjZXB0YWJsZSBmb3IgeW91ciB1c2UgY2Fz
ZXM/Ci0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
