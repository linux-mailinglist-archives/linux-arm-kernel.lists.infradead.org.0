Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642499BE39
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 16:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzLekgEyBWk/ziEstkkjUxgZZX6K5yKGoXT9nc6f8GY=; b=glUwhA+rcRiDt7
	oFseedSUmRixif4K1hD/l23xlZzJbM5fP01u2SD8avEgmILG+0K/27kOfBT5liy2uUDkkuN9mWtg6
	rmxibWrjs/2e77R6TOsYfrWtLtpkowGCbGC95KGtUAzyMiwC1Y03LzU5D7zf9LBTkbF6aEaxh1Z6t
	Xjng2lzP9NJYTG1DqPx3HeFf+Hn6IofCkIuncgqfIWqtZKuEW+TqqDOtZaKtNVkknm8lChJ6yFSRX
	porUq5UH+WoDYjh6yMUBjz55e2v+zvp3TLD5Se0hgpQsjw19ae8x2IICj1jFXHhctEqt7mUH551uI
	oF3djVrV6cRiLUH1c1tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Wrw-00086Y-LC; Sat, 24 Aug 2019 14:18:16 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Wrk-00085i-V9
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 14:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566656278;
 bh=iKSbxvc/xWDvAHlk1241pDSgA85KQKsTFVK6AGOJ5hQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=KbvI6VuDg+bpbF5Slss0G1kE8cerQCRJQ6cobNw9twbSG/DHYJ61RbFEbOTN6sUNz
 ETMf1mJsF3BkyIC7KgBeF5LZxdELI7R2/usBYayBgroibKdu4dGszQagnqhZIIOkXq
 AcGzsZEHcL60ztAR5QBjV2VoqKDGzL/jEMukdkFA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mqs4Z-1iWEz900qP-00mtSl; Sat, 24
 Aug 2019 16:17:58 +0200
Subject: Re: [PATCH 0/3] pwm: bcm2835: Minor fixes
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
 <20190824092553.j4rjpzaz4m6yaa5t@pengutronix.de>
 <22f8e65b-2d65-84e7-de50-ba6538a84292@gmx.net>
 <20190824105614.wpkvqqxjey6umhrs@pengutronix.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c6d26f19-a9ef-1c64-b8e2-94b7a4f93487@gmx.net>
Date: Sat, 24 Aug 2019 16:17:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824105614.wpkvqqxjey6umhrs@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:K95rpfokptfPiW2E9MnFydUdlwDj3gFsL8ZjduGx89wWcO1DC9x
 2T/i8IHGXrvPBt+dkb87F3GcHn4XBcB61ZZ6AOc5UQHvs3buzxjt11p7V1oMXRj66E2oMgX
 bJh6gHTkIQPLrr//u4J+tCxWvlekRYMKKiz3GXnjFHplLS8sLydqJmNWhHx8g0PY0VEFLhF
 MyKWqNdGMgOEXuvi1vyew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nP/VAcFaR/o=:7wlAEzKHd63qhOeMBeGYtq
 +e7VfJIAa72RkZk7ASYdfUNYHv5LIz40VsLqim4QYZA0wAiGPOyMRUM+Mz0Ol5lDGEU1SyxYi
 ++yUM39Vmna+OxG+84rKNNa1zUBMKJsnbo/Cb3RIZ9qc0hSkVE1BYaPynM1R5EZHQVYPd5Vtn
 9C47aT4toFXcbZ7ShkEYWfMEIfRTOwDac9ZkVlxIDLYsCbMK8+bIkjCFpXduCNb8uyJvc3vMQ
 TKtBL5wcmULSw08Ew368Gd8Vrr21kbUvGibpssRPegTy4bWnLGTjtXUYuP59unLR1oL/nvyI9
 rKzTlx2BJl7DlLjPpHXS02UO2FA9JovrjEeqpWywv8Uom9WQm6raAxUSuffH42w/EFV7mtZiw
 oKYY01Rbk82w67NmMbCqJA7wxAeLmKssIuj8GCDW988fyNVoqf04PINMVhBxReRml8l+xSz4P
 J7LI23aupM4NSR1WqPXjrs5uVnpSQj/GoZbhrhOe2VMZ0i/dL9kK0iwll9h6QlnbtQCqoNHuI
 083nc9eRQm5GhOC9pt6glQRzbwncXEba8MkpSSM9rgUp7agJZ6pBLXSWec3OlD/1OzwFL1dN4
 NhM1wjzRGG0Y+wo5/479HuJDdW7gvoXh672ftJ3PM1b6ePv58pQq/JFHyNIPHiQbE5RvlS19k
 VwdP1vKtfDFImr+ct7xwOQjiUFcywHNfEULLUAIaqD2XN08dX1zDqiVjdMmzj2BW83gdv/6oi
 efJ7G4431vE1H0CLIrmin/qQclAR2p3QqYEjd+FcEhgytw7s3IwFCQEKV7oEuyNO5DmykbgEH
 uXcwUka3CxllAbshQs+9WYzI7hFt9XD71OLhW3Yg79MLxIOcVHdc5V41kxZgRgUWUfyiYUHK8
 82geNQJPRNRY273sjydbd2K7iZfB/b7abVfrJ3Ji//S6HAGcTVPg7xsMX+WVqZ4FR13OwLGFk
 9SooqSzi5C9b3PzCthyqyprYFhOL41pLr2F/VGiG99fHZsOEaZ5ErpduOYPFUGUqdAEM2JDUF
 1fsbsOYk7QQ3uMERTF+ERWsN72Sq7IG/IlrVFJJJZva/x/zIKR3TNkOSjjxkdRGhtiinz0NBm
 Bk5exXETNi0Hp3v9c7dlAfMHlkIhRQaynnfLKv/v8iJStSWbq7iSnVBubE9q753h9o+8NrQCX
 RVLng=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_071805_296949_D1450E4E 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKQW0gMjQuMDguMTkgdW0gMTI6NTYgc2NocmllYiBVd2UgS2xlaW5lLUvDtm5pZzoK
PiBIZWxsbyBTdGVmYW4sCj4KPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAxMjowNTowMFBNICsw
MjAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+PiBBbSAyNC4wOC4xOSB1bSAxMToyNSBzY2hyaWVi
IFV3ZSBLbGVpbmUtS8O2bmlnOgo+Pj4gSGVsbG8gU3RlZmFuLAo+Pj4KPj4+IE9uIFNhdCwgQXVn
IDI0LCAyMDE5IGF0IDA5OjA3OjIyQU0gKzAyMDAsIFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+Pj4g
VGhpcyBzbWFsbCBwYXRjaCBzZXJpZXMgY29udGFpbnMgbWlub3IgZml4ZXMgZm9yIGNsb2NrIGhh
bmRsaW5nIGFuZCB0aGUKPj4+PiBwZXJpb2QgcmFuZ2UgY2hlY2suCj4+PiBJJ2QgbGlrZSB0byB1
bmRlcnN0YW5kIHRoZSB2YXJpb3VzIGRpZmZlcmVudCB1c2VjYXNlcyBvZiBQV01zLiBUaGUKPj4+
IGluLWtlcm5lbCBjb25zdW1lcnMgYXJlIGtpbmQgb2Ygb2J2aW91cywgYnV0IHN5c2ZzIHVzZXJz
IGFyZSBub3QuIEl0Cj4+PiBzZWVtcyB5b3UgYXJlIG9uZSBvZiB0aGUgbGF0dGVyLgo+Pj4KPj4+
IFdvdWxkIHlvdSBtaW5kIHNoYXJpbmcgd2hhdCB5b3UgY29udHJvbCB1c2luZyB0aGUgUFdNPwo+
PiBub3QgcmVhbGx5IGEgUFdNIHVzZXIgd2l0aCBCQ00yODM1LiBJdCdzIG1vcmUgdGhlIG1vdGl2
YXRpb24gYXMgYQo+PiBwbGF0Zm9ybSBtYWludGFpbmVyIHRvIGtlZXAgdGhlIGRyaXZlcnMgaW4g
c2hhcGUuIEF0IHdvcmsgd2UgYXJlIHVzaW5nCj4+IHN5c2ZzIGludGVyZmFjZSBmb3IgdXNlciBh
cHBsaWNhdGlvbnMgdG8gY29udHJvbCB2ZW50aWxhdGlvbiAodmlhIGh3bW9uCj4+IGludGVyZmFj
ZSkgYW5kIEVWIGNoYXJnaW5nIChJRUMgNjE4NTEpIHdpdGggYSBkaWZmZXJlbnQgU29DLgo+IEkg
ZG9uJ3QgdW5kZXJzdGFuZCBob3cgeW91IHVzZSB0aGUgc3lzZnMgaW50ZXJmYWNlIGFuZCBzdGls
bCBpbnRlcmFjdAo+IHdpdGggdGhlIGh3bW9uIGludGVyZmFjZS4gT3RoZXIgdGhhbiB0aGF0LCB0
aGFua3MgZm9yIHNoYXJpbmcuCkkgbWVhbnQgdGhlIGh3bW9uIHN5c2ZzIGludGVyZmFjZS4gU3Vy
ZSB1c2luZyB3aXRoIHB3bSBzeXNmcyBpbiBwYXJhbGxlbAppc24ndCBwb3NzaWJsZS4KPgo+Cj4+
PiBBc3N1bWluZyB5b3UgaGF2ZSBzb21lIGludGVyZXN0IGluIHRoaXMgZHJpdmVyOiBJdCBzdGls
bCB1c2VzIHRoZSBsZWdhY3kKPj4+IHN0dWZmIGltcGxlbWVudGluZyAuY29uZmlnLCAuZW5hYmxl
LCAuZGlzYWJsZSwgLnNldF9wb2xhcml0eS4gQXJlIHlvdQo+Pj4gd2lsbGluZyB0byB0ZXN0IChv
ciBldmVuIGltcGxlbWVudCkgYSBzd2l0Y2ggdG8gLmFwcGx5IGluc3RlYWQ/Cj4+IFllcywgZGVm
aW5pdGVseS4gVGhpcyBpcyBvbmUgb2YgbXkgbmV2ZXIgZW5kaW5nIFRPRE8gbGlzdCBbMV0uIEJ1
dCBpCj4+IHdvdWxkIGJlIHN1cHJpc2VkIHRoYXQgeW91IHdvbnQgaGF2ZSBhY2Nlc3MgdG8gYSBS
YXNwYmVycnkgUGkuCj4gU28gYmUgc3VycHJpc2VkIDotKQo+Cj4+PiBKdXN0IGZyb20gYSBxdWlj
ayBsb2NrIGludG8gdGhlIGRyaXZlciBJIHdvbmRlciBhIGZldyB0aGluZ3MsIG1heWJlIHlvdQo+
Pj4gY2FuIHNoZWQgc29tZSBsaWdodCBoZXJlLiBJZiB0aGVyZSBpcyBwdWJsaWNseSBhdmFpbGFi
bGUgZG9jdW1lbmF0aW9uCj4+PiBmb3IgdGhpcyBwaWVjZSBvZiBoYXJkd2FyZSwgZmVlbCBmcmVl
IHRvIHBvaW50IHRoaXMgb3V0LCB0aGVuIEkgbWlnaHQgYmUKPj4+IGFibGUgdG8gd29yayBvdXQg
c29tZSBvZiB0aGUgYW5zd2VycyBteXNlbGYuCj4+IEZvcnR1bmF0ZWx5IHllcyBbMl0KPiBDYXJl
IHRvIGFkZCBhIGxpbmsgdG8gdGhpcyBkb2N1bWVudCBpbiB0aGUgZHJpdmVyIGZvciBvdGhlcnMg
dG8gZWFzaWx5Cj4gZmluZCBpdD8KSSBkb24ndCB0aGluayBpdCdzIG5lY2Vzc2FyeS4gVGhpcyBk
b2N1bWVudCBpcyBlYXN5IHRvIGZpbmQgdmlhICJiY20yODM1CmRhdGFzaGVldCIuCj4KPiBCZXN0
IHJlZ2FyZHMKPiBVd2UKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
