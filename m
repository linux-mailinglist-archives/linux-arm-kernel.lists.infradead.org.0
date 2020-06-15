Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCC11FA0A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 21:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUtY5IGoYeO/tEJ6C3zFLQzdDPW1blGXk7svgTGtjZA=; b=bBr+3L+gxKefjX
	7Jtqq7Q5py4I5KfPWr9vZSqIjDXckr8HtnSS7IStlwqDeRSnCwCRAR3H/2839idAXv/dLN0v5GBp/
	uuhG0lKbmnnFvWSodTTjbPUUTzPUvLmuDzi9QjYY/ikx99lizSsXQWcyVNS2xPEIiaNsNqDLac4gY
	fapEgTApcLSPr2MnSrQd3kEYpFjs3e6ruRMDENCMqIoCmt35kUAVLA1HsBYhPIxbtgqPzZ01XxswJ
	/po7mXPuMZIaQg4gnGWzHRk5IRPJbUpT4Sl+2UUm9Beoz33qMNZ/m8K0m7KzXAQHVZuzriZ7jaq63
	mZpDXRM6t5W6NOL+om0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkv0c-0007qG-MS; Mon, 15 Jun 2020 19:43:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkv0S-0007p2-4B; Mon, 15 Jun 2020 19:42:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id a127so8250364pfa.12;
 Mon, 15 Jun 2020 12:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0qrQRoXABWjnKwQa7O+onv4TFfIuamL/7UM0/e+lKcY=;
 b=L2sUgJQOmXLIdpN/acBHO/x2Cs7rcGS5cLssbvpSCPQavY3CLsMPoxVRWpDQ4X3gg2
 Q6EhXUvFvQYhYYYikWxkiO8jgo9sxSaLKxp0irclj3xWDXwHWzSmnmErDycvzIxS3G0i
 fKcDmGBbWHU5ZcS45ePpyoZ62Grc589q5VCS5LX8TwDSRLtIrtWycymbEQ0o3/Xb/FP4
 K/IlsTc96LpXUjzuoz74MUtSgISWwunogcs9Kn7bx5EbyvWj8Dah2flMxF9A0IKyNFOe
 qylDtRWWQUxDgq9sjf9xcJLZWxo4W1z4ascb3zMs8UXv1cFkP939eIgwwnwwVCaEdeI6
 WQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0qrQRoXABWjnKwQa7O+onv4TFfIuamL/7UM0/e+lKcY=;
 b=AHTQjwM5CLYxklcsBMaYgRUKwkgiKkZ/8sV4zpbLZ6pwk+0xYZ75DIgxyxfwcBq3ei
 euoVZmtOJWc5+OzHNsWWeH2YU2bSnaZmclclAmUS1vIt8YBRbqyaAye5aOVxSC9hwoZR
 AAI3XdsjIc17uy8caXqrKAbDKX2GxL9PeiQGBRfSGTcXc1DEwJlkH3/ZDo05Ob6Lx/2T
 Br6stQuLzqKES+H24lrDqOVRsc+N/1ShKU9UnMekdcGbeeID8u1b91rMczmG/LHwklT+
 oE/lu+HS0N9I18yiLKUlAT4Lb7lwWfw8YpABrJd/E0h9AfxQV5YUa9bnz0QIf0+NDTX5
 2umQ==
X-Gm-Message-State: AOAM533t9IdApMVwnkskyfWl2Kvhg/AzUZaPn0vW5kzy+vFMleHW8OvX
 +XR8mUqYQusA7WIae2R8lmg=
X-Google-Smtp-Source: ABdhPJzd8NKZ4V1T8V4Nkdlh9ron23wWPpYk6qMRFJf5t5GVGxrIMoa3t6qMXRy8YkjSV+ietR9EQg==
X-Received: by 2002:a63:546:: with SMTP id 67mr23612510pgf.364.1592250173912; 
 Mon, 15 Jun 2020 12:42:53 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n65sm14213758pfn.17.2020.06.15.12.42.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 12:42:53 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Robin Murphy <robin.murphy@arm.com>, Lukas Wunner <lukas@wunner.de>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608114148.4bau4mdcvwgf25ut@wunner.de>
 <3d4fd3f9-9bde-90a8-bef5-9fc97cc9b363@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2e4a6c4b-857f-1000-e7fd-327b0800fb97@gmail.com>
Date: Mon, 15 Jun 2020 12:42:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <3d4fd3f9-9bde-90a8-bef5-9fc97cc9b363@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_124256_170543_E50E9365 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mark Brown <broonie@kernel.org>,
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

CgpPbiA2LzE1LzIwMjAgMTI6MDkgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIwLTA2
LTA4IDEyOjQxLCBMdWthcyBXdW5uZXIgd3JvdGU6Cj4+IE9uIE1vbiwgSnVuIDA4LCAyMDIwIGF0
IDEyOjExOjExUE0gKzAxMDAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IEFuZCBhbGwgaW4gY29k
ZSB0aGF0IGhhcyBhdCBsZWFzdCBvbmUgb2J2aW91cyBpbmVmZmljaWVuY3kgbGVmdCBvbgo+Pj4g
dGhlIHRhYmxlIGVpdGhlciB3YXkuCj4+Cj4+IENhcmUgdG8gc3VibWl0IGEgcGF0Y2ggdG8gb3Zl
cmNvbWUgdGhhdCBpbmVmZmljaWVuY3k/Cj4gCj4gSSdsbCBoYXZlIGEgcXVpY2sgZ28sIGJ1dCB3
aXRob3V0IGFueSB3YXkgdG8gbWVhc3VyZSBwZXJmb3JtYW5jZSBpbXBhY3QKPiAob3IgZXZlbiB0
ZXN0IGZvciBjb3JyZWN0bmVzcykgSSBkb24ndCBmYW5jeSBnb2luZyB0b28gZGVlcCBiYXNlZCBw
dXJlbHkKPiBvbiBkaXNhc3NlbWJseSBhbmQgQVJNMTEgY3ljbGUgdGltaW5ncy4KPiAKPj4+IFRo
aXMgdGhyZWFkIHRydWx5IGVwaXRvbWlzZXMgS251dGgncyAicHJlbWF0dXJlIG9wdGltaXNhdGlv
biIKPj4+IHF1b3RlLi4uIDspCj4+Cj4+IFRoZSB0aHJlYWQgY2FtZSBhYm91dCBiZWNhdXNlIGl0
IGNhbiBiZSBkZXRlcm1pbmVkIGF0IGNvbXBpbGUgdGltZQo+PiB3aGV0aGVyIHRoZSBpbnRlcnJ1
cHQgaXMgZ29pbmcgdG8gYmUgc2hhcmVkOgo+IAo+IC4uLndoaWNoIGlzIGV4YWN0bHkgbXkgcG9p
bnQgLSAiYmVjYXVzZSBpdCBjYW4gYmUiIGlzIGFueXRoaW5nIGJ1dCBwcm9vZgo+IHRoYXQgYXZv
aWRpbmcgYSB0cml2aWFsIGNoZWNrIG1ha2VzIGVub3VnaCBtZWFzdXJhYmxlIGRpZmZlcmVuY2Ug
dG8KPiBqdXN0aWZ5IHB1dHRpbmcgaW4gdGhlIGVmZm9ydCB0byBkbyBzby4KPiAKPj4gT24gdGhl
IEJDTTI4MzUgKFJhc3BiZXJyeSBQaSAxKSwgQ09ORklHX0FSQ0hfTVVMVElfVjYgaXMgc2V0IGFu
ZCB0aGlzCj4+IFNvQyBkb2Vzbid0IGhhdmUgbXVsdGlwbGUgYmNtMjgzNS1zcGkgaW5zdGFuY2Vz
LCBzbyBubyBzaGFyZWQgaW50ZXJydXB0Lgo+Pgo+PiBUaGUgcXVlc3Rpb24gaXMgaG93IHRvIGRp
c2Nlcm4gQkNNMjgzNi9CQ00yODM3IChSYXNwYmVycnkgUGkgMi8zKSwgd2hpY2gKPj4gZG8gbm90
IGhhdmUgbXVsdGlwbGUgaW5zdGFuY2VzLCBhbmQgQkNNMjcxMSAoUmFzcGJlcnJ5IFBpIDQpIHdo
aWNoIGRvZXMuCj4gCj4gSG1tLCBob3cgbXVjaCByZWxhdGl2ZSBpbXBvcnRhbmNlIGRvZXMgdGhh
dCBoYXZlPyBPbiBhIDcwME1IeiBBUk0xMSBpdCdzCj4gb2J2aW91c2x5IGRlc2lyYWJsZSB0byBz
cGVuZCBhcyBsaXR0bGUgdGltZSBpbiB0aGUgSVJRIGhhbmRsZXIgYXMKPiBwb3NzaWJsZSBpbiBv
cmRlciB0byBoYXZlIHRpbWUgbGVmdCB0byBkbyBhbnl0aGluZyBlbHNlLCBidXQgb24gdGhlCj4g
b3RoZXIgU29DcyBldmVuIGlmIHRoZSBJUlEgcmVtYWlucyBwZXJtYW5lbnRseSBhc3NlcnRlZCBp
dCBjYW4gc3RpbGwKPiBvbmx5IGNvbnN1bWUgMjUlIG9mIHRoZSBhdmFpbGFibGUgQ1BVIGNhcGFj
aXR5LCBhdCB3aGljaCBwb2ludCB0aGUKPiBpbXBhY3Qgb2YgMi0zIGN5Y2xlcyBlaXRoZXIgd2F5
IGF0IDFHSHorIHNlZW1zIHByZXR0eSBtdWNoIGltbWVhc3VyYWJsZS4KPiAKPj4gVGhlIFJhc3Bi
ZXJyeSBQaSBGb3VuZGF0aW9uIGNvbXBpbGVzIEJDTTI3MTEga2VybmVscyB3aXRoCj4+IENPTkZJ
R19BUk1fTFBBRT15LAo+PiBidXQgRmxvcmlhbiBjb25zaWRlcmVkIHRoYXQga2x1ZGd5IGFzIGEg
ZGlzY3JpbWluYXRvciBhbmQgb3B0ZWQgZm9yCj4+IHJ1bnRpbWUtZGV0ZWN0aW9uIHZpYSB0aGUg
Y29tcGF0aWJsZSBzdHJpbmcgaW5zdGVhZC7CoCBJZiB5b3UndmUgZ290Cj4+IGEgYmV0dGVyIGlk
ZWEgcGxlYXNlIGNvbWUgZm9yd2FyZC4KPj4KPj4gSXMgIm9wdGltaXplIHNoYXJlZCBJUlEgc3Vw
cG9ydCBhd2F5IGlmIElTX0VOQUJMRUQoQ09ORklHX0FSQ0hfTVVMVElfVjYpLAo+PiBlbHNlIGxl
YXZlIGl0IGluIiB0aGUgYmVzdCB3ZSBjYW4gZG8/Cj4gCj4gSW4gYWxsIGhvbmVzdHkgSSdtIHN0
YXJ0aW5nIHRvIHRoaW5rIGl0IHNlcmlvdXNseSBtaWdodCBiZSA6KQoKT3IgaG93IGFib3V0IHRo
aXM6IHdlIHNsaWdodGx5IHJlLXN0cnVjdHVyZSB0aGUgaW50ZXJydXB0IGhhbmRsZXIgc3VjaAp0
aGF0IGFsbCBwb3NzaWJsZSBpbnRlcnJ1cHQgY29uZGl0aW9ucyBhcmUgZXhwbGljaXRseSBoYW5k
bGVkIGFuZAp0ZXJtaW5hdGUgd2l0aCBhIHJldHVybiBJUlFfSEFORExFRCwgYW5kIHRob3NlIHdo
aWNoIGFyZSBub3QsIGluY2x1ZGluZwppbiB0aGUgY2FzZSBvZiBhICJzcHVyaW91cyIgKGJlY2F1
c2UgdGhlIGludGVycnVwdCB3YXMgdHJpZ2dlcmVkIGZvcgphbm90aGVyIFNQSSBjb250cm9sbGVy
IGluc3RhbmNlKSwgdGhlbiB3ZSBmaW5pc2ggdGhlIGZ1bmN0aW9uIHdpdGgKSVJRX05PTkUuIFRo
aXMgd291bGQgbm90IGltcGFjdCB0aGUgcGVyZm9ybWFuY2UgZm9yIHRoZSBCQ00yODM1LzM2LzM3
CndoaWNoIHdvdWxkIHN0aWxsIGhhdmUgYSBzaW5nbGUgY29udHJvbGxlci9zaW5nbGUgaW50ZXJy
dXB0IGxpbmUgdG8gaGFuZGxlLgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
