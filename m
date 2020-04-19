Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5361AF8E3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 11:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tHhXw194jlwHgQmVSzrxFC2orjacZlv+KW9K2NugfA=; b=NrQZQuC0ZB9FuE
	pArd2gKmkZtCfnJb24aVi3OtB71Xwi08E7Z9Dtv07V3R55kX+O9l3c/budQ/v30u7zE+cAD518hTf
	mB5F6AmX8DwPIfopu8KMhJcnXUgSm8TdITVDTWYnOPib2E93FY9G7NG2LRFCciIGYv4RQn+0IZ6s/
	0I6vh28fGRpk3P4h9kVZltLy9DPf83ZGNw4LFDUk5PW0zVZhrNm2hN5Y28IGOW8090q/nwdsC8kd1
	mc3ClIVQhhEBeI6eTsZEtbopNwbCnmkWhL8zEZiAV/6wlSEvyQddmep7zv7KYMlIrVb2HznVCHeS+
	kmv81OgILGVVQjOGhLtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ5ua-0005U5-Pd; Sun, 19 Apr 2020 09:06:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ5uS-0005Ss-Ph; Sun, 19 Apr 2020 09:06:43 +0000
Received: from [192.168.1.183] ([37.4.249.228]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MidPj-1imLAj1UD1-00fj9V; Sun, 19 Apr 2020 11:06:34 +0200
Subject: Re: [PATCH] ARM: dts: bcm2835-rpi-zero-w: Fix led polarity
To: =?UTF-8?Q?Vincent_Stehl=c3=a9?= <vincent.stehle@laposte.net>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
References: <20200418123522.6390-1-vincent.stehle@laposte.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <063a86f2-fb84-c75d-1be3-9d3fcd1b7e56@i2se.com>
Date: Sun, 19 Apr 2020 11:06:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200418123522.6390-1-vincent.stehle@laposte.net>
Content-Language: en-US
X-Provags-ID: V03:K1:nYqWlMjSftu94OxjjBHe+dVbzr6OvuVVl268DET7J0WqTa1tXCK
 8/yPjNnLZct5ZNvA3sp6qGDD3yMuFXgek/bqSO7O6s1ptNB6ISbQqxPWKlvkV0qwHMzj3wp
 4txjU6Cl0wZnBzFObcbhZGtx1ZIx7QYPeWQIhaB3UIzEVdyCunp58HbdPCGnL4BTZ51siWR
 A4Pz5cm8rdWRsotLWULLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0Kp6Ixa+6BE=:qi2YKC4JSGfQXM+7x32zdc
 QBmLZzuPIoFrDUZ9tgOqioMC0KpFuyUoE7KDk0T3c2RERDc7w6JmNrHlMf2Ns7G5SrOKqwjzD
 WzEMk3h36pEiyUHruVLQOm38FwptUd4PfY5lU0kDe8NKBAtlxBIJ5bOpiJh1m6jKcLDCoUjxt
 VGvo1LTt+gFkmzKi/1UMnSYv1c9EsAZz2vIv0NO/VnJ6VVGZ7GigbbEmuohLwRRdknP8aCLGp
 HkfTdvk3ZfmH/5lzHaziHwAK7jNQwAcOEJKvEKVb/MH0LkOyz77U0COjJ+KiY3oXf5AMsJzAg
 ZnMLpb1+/ly3rvr9Ycb3b27TfZdOQC9G8ovueOoNPHi0KD5BdxG8JOVkzHGC2DXyeyCg8wWDU
 eWQ8h7su+JTK38tKBmY/Bzj+sFybfMG5AWEYpaMpoOSIg3tlD58yINGE55OVkPpCh4KsY2wjb
 2PO4MfdTmJhdWzXG8rkohgErFrTsAqXmfz3BbEEV8m+uht4Gb5BOegPHLBIjVneVQxxWD0Csn
 MY/Kl2tb6Kmip2f+/NtYL87b42fxB0Nd0eGRMvAy/hk2f7EiJ5foXhWUI23sAFUxIPRpahhLy
 681nURt+3xfFbUAC33rDDUdTHgysZSOZzfp/vvxPWoBAAMt/FZYY0NgSO9pm9guEX7tQ2M4UH
 XpMC4fSRmE0qO5BpfDEuyby3yvMaIJr+AztLComVAoDOY8ht+5mjM0vcx0aVGIqAF3rKhXUny
 SHtrAJMftWHL5rhodyOKOU1yhMdJhXUZfoEl7dftASiUOdG2Lu0nOXe97s7NuMOlzm+g2gikm
 rD9EcUV78+RXlvJni+0Y/ad8Iq83A6lWmtIXPnNPgHRdOOtOwX6Ze9Iy3M5kZK0qFdxUw2e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_020641_124544_0EE48E4C 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Scott Branden <sbranden@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTguMDQuMjAgdW0gMTQ6MzUgc2NocmllYiBWaW5jZW50IFN0ZWhsw6k6Cj4gVGhlIHN0YXR1
cyAiQUNUIiBsZWQgb24gdGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcgaXMgb24gd2hlbiBHUElPIDQ3
IGlzIGxvdy4KPgo+IFRoaXMgaGFzIGJlZW4gdmVyaWZpZWQgb24gYSBib2FyZCBhbmQgc29tZXdo
YXQgY29uZmlybWVkIGJ5IGJvdGggdGhlIEdQSU8KPiBuYW1lICgiU1RBVFVTX0xFRF9OIikgYW5k
IHRoZSByZWR1Y2VkIHNjaGVtYXRpY3MgWzFdLgo+Cj4gWzFdOiBodHRwczovL3d3dy5yYXNwYmVy
cnlwaS5vcmcvZG9jdW1lbnRhdGlvbi9oYXJkd2FyZS9yYXNwYmVycnlwaS9zY2hlbWF0aWNzL3Jw
aV9TQ0hfWmVyb1dfMXAxX3JlZHVjZWQucGRmCj4KPiBGaXhlczogMmM3YzA0MGM3M2U5ICgiQVJN
OiBkdHM6IGJjbTI4MzU6IEFkZCBSYXNwYmVycnkgUGkgWmVybyBXIikKPiBTaWduZWQtb2ZmLWJ5
OiBWaW5jZW50IFN0ZWhsw6kgPHZpbmNlbnQuc3RlaGxlQGxhcG9zdGUubmV0Pgo+IENjOiBTdGVm
YW4gV2FocmVuIDxzdGVmYW4ud2FocmVuQGkyc2UuY29tPgo+IENjOiBGbG9yaWFuIEZhaW5lbGxp
IDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KPiAtLS0KClRlc3RlZC1ieTogU3RlZmFuIFdhaHJlbiA8
c3RlZmFuLndhaHJlbkBpMnNlLmNvbT4KClRoYW5rcwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
