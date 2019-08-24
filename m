Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085BA9BCED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 12:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4VGa5r7OmzbEAeolS5KOkRQQi+UmNi6BtrLB7O8uCs=; b=ZciBltPON3exEr
	DnYNxu0BgTP7gNwqw07yDJlW3RfQNj5kpwGMjfkx1ZQ1I+xeQN6ehaZQmpjL9Zq1OSg7Vb6fNnqpX
	7uJ+3UKK8/bb7hvLdEAt1g0PFct01PipUEbO8x4CbskxmPGFLzu91dFe4CauVxOWBjDuKxL/UOm9Q
	bVWncjzVGmQaoOX2Iih1n3TDDYOdz4MSeXKukjd3u5yyD+1aoLAaZbpMEKuAKEY6GsFwc/HJIzZLt
	o7407XCWkSkpEZRQBDWJF2qa5+xSv4w5WaIPK0QqGdMQ3TaX3cT+NBkaOOcjMjrxazStuCrdqVN2Q
	RKS64luL9b47rAdwBCzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1SvF-0004u8-BE; Sat, 24 Aug 2019 10:05:25 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Sv2-0004tk-SA
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 10:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566641101;
 bh=lvvUBllP8YjpHl+AwkJh9GpCJPewvvJkQ1av/DtIVuM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=LLOyWhBSXVnNzlToQthw2cdQoHkMHQ3lMhRz4ddq338z1OVJYqljRKGyDuED/ljWF
 +P5ay1rnqhdvMtXRWEkCnI7f1iABww/c4lDyCAzY/aZZHn0Lbs1j0D2pPgwTNGthmY
 jNQQqRK5E7SxT+yTKMUTVVIwSdIVhu/AGoRsAEQ8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MWRVh-1hi3AE2sB9-00XpQC; Sat, 24
 Aug 2019 12:05:01 +0200
Subject: Re: [PATCH 0/3] pwm: bcm2835: Minor fixes
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
 <20190824092553.j4rjpzaz4m6yaa5t@pengutronix.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <22f8e65b-2d65-84e7-de50-ba6538a84292@gmx.net>
Date: Sat, 24 Aug 2019 12:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824092553.j4rjpzaz4m6yaa5t@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:4z62qMWLlNaolZbmt76kTmFWj0dZ5pHrSNRqCtqV0bLWAZx7AUb
 wmcRK4vk9wcnfxFGRrmVczcEZm+XatA482G9gT8sYKJtKCqZYmgMX6MqFrWuDrvFFN+5LZH
 XnmimvEFUsGMO8Ufu3JndIkp+xb7drDHcouRdOONiscbOPAKXajvZvLPln+sgyUlhWbGF23
 W+6SerMknpI0eyK7VXQXQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nK48pk74P7g=:xyYbUEc0YrFPZ2syY5/12Q
 Sv0mc8zxnNYoxGZkWFj+mBtEXVFr21pl5Qg8hvSc9wQFUHZhVn+hDrY9MR1RJZ4rU70U1IKTa
 C02VVRN6snKt8g5W5Uzeu0nihKLNtnASkUJ3k5oDsZh4QbLPmUJXaaxOJuK5XPP6l6a0p0BEC
 yhVVCAbn2xOiHnAFLVTi15ChDg+bkM78o1Si6KHdszsKbyaCZxX04gT0zTZeqk55kVkbzdIDp
 fqtFc533tFAP0DY1dqT/l4rN4NLBv+Si754x8GlsYEFGbYAvXnYq2Wv+ShkHxJkfAqYkRIwLM
 MgeTXFp/PHP8IYYunXQx0eKoxoSqEbUoPBlq6tpZlKzoqdfMIm20K8G1K8J7dcmSc6IcUvVaZ
 8Avxu0aNrfDrAMcn+2xHpFeNDXkYbVLQNt5jkEN6JuNwf8XvNamxibNHAZy5u48hCTI75CEzh
 GlLq6jVh4gRGkyJPF71nMCn1Uc2lDhP/6wev51wcjUE2/CauNh0uiRfFHxYsXhlSuTqrGEIiP
 78TnDWah/RGCrnfgf03xxch6zphkQ0XYFYUttL9DvKfNsq/hzas0MuHpZYjyN9o7PWWYwQnZm
 4597Y/yFXuHTmdudluQGKHYhd9GaErprEijVJWimTy1IBzhP6jKClE3htGxhh9HRzkBVLqlgW
 mLVQEKarlFc3G/ou/9Uew2YdV7OmiLHJSfWOa15o9efbV9VdlTSm7RcUcW+SK9Lk85HiDkgI9
 i34+8hENk3eRs5KLFo21pnxkEzWnK8FKhoXas0TjJtPllo8ImIpeGTqeqcMonEL8Oos/nU9xT
 ettSOA2EOFCGiY3aXEfrprRSK0s9geAxWzoXP5tCRXA251iwri00qlPSE/p5LImJefWMO9D1V
 ebnutOQrU2+BwAnXNDufaNgYSdaeP+U3eZ1EgowqbRqDftDXJAs+ZevQzmNq3FSx86lRCtAWC
 0A1wg5M80L84hTSncGF92NbZCRg9Eujlp7A+tKWIz49yeME861mazq2mRd85rFRSTIZjkawDV
 3tQc+XuLVe9qSMrONfqZxv68YebuhY+fDd07HqZO+H7OqEc0QLrKpFjGlKkYV8E4n5rrVvfer
 2I0B0J3sqfY1NxTfUtgOzebtCKLNox1m7s+k0ZP0RKldXNmHuOSLbZvmZHF8gzSEeAGNuUoI8
 u3vWg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_030513_206594_8AEC30CD 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

SGkgVXdlLAoKQW0gMjQuMDguMTkgdW0gMTE6MjUgc2NocmllYiBVd2UgS2xlaW5lLUvDtm5pZzoK
PiBIZWxsbyBTdGVmYW4sCj4KPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwOTowNzoyMkFNICsw
MjAwLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+PiBUaGlzIHNtYWxsIHBhdGNoIHNlcmllcyBjb250
YWlucyBtaW5vciBmaXhlcyBmb3IgY2xvY2sgaGFuZGxpbmcgYW5kIHRoZQo+PiBwZXJpb2QgcmFu
Z2UgY2hlY2suCj4gSSdkIGxpa2UgdG8gdW5kZXJzdGFuZCB0aGUgdmFyaW91cyBkaWZmZXJlbnQg
dXNlY2FzZXMgb2YgUFdNcy4gVGhlCj4gaW4ta2VybmVsIGNvbnN1bWVycyBhcmUga2luZCBvZiBv
YnZpb3VzLCBidXQgc3lzZnMgdXNlcnMgYXJlIG5vdC4gSXQKPiBzZWVtcyB5b3UgYXJlIG9uZSBv
ZiB0aGUgbGF0dGVyLgo+Cj4gV291bGQgeW91IG1pbmQgc2hhcmluZyB3aGF0IHlvdSBjb250cm9s
IHVzaW5nIHRoZSBQV00/Cm5vdCByZWFsbHkgYSBQV00gdXNlciB3aXRoIEJDTTI4MzUuIEl0J3Mg
bW9yZSB0aGUgbW90aXZhdGlvbiBhcyBhCnBsYXRmb3JtIG1haW50YWluZXIgdG8ga2VlcCB0aGUg
ZHJpdmVycyBpbiBzaGFwZS4gQXQgd29yayB3ZSBhcmUgdXNpbmcKc3lzZnMgaW50ZXJmYWNlIGZv
ciB1c2VyIGFwcGxpY2F0aW9ucyB0byBjb250cm9sIHZlbnRpbGF0aW9uICh2aWEgaHdtb24KaW50
ZXJmYWNlKSBhbmQgRVYgY2hhcmdpbmcgKElFQyA2MTg1MSkgd2l0aCBhIGRpZmZlcmVudCBTb0Mu
Cj4gIERvZXMgaXQgYm90aGVyCj4geW91IHRoYXQgdGhlIHN5c2ZzIGludGVyZmFjZSBkb2Vzbid0
IGFsbG93IGF0b21pYyBjb25maWd1cmF0aW9uPwpUbyBiZSBob25lc3Qgbm90IHJlYWxseSwgYnV0
IGkgdGhpbmsgYSBsb3Qgb2YgdXNlciBjb3VsZCBiZW5lZml0IGFuZAptaWdodCBzdG9wIHVzaW5n
IGhhY2t5IFB5dGhvbiBzY3JpcHRzIHdoaWNoIG1hbmlwdWxhdGUgdGhlIHJlZ2lzdGVycwpkaXJl
Y3RseS4KPgo+IEFzc3VtaW5nIHlvdSBoYXZlIHNvbWUgaW50ZXJlc3QgaW4gdGhpcyBkcml2ZXI6
IEl0IHN0aWxsIHVzZXMgdGhlIGxlZ2FjeQo+IHN0dWZmIGltcGxlbWVudGluZyAuY29uZmlnLCAu
ZW5hYmxlLCAuZGlzYWJsZSwgLnNldF9wb2xhcml0eS4gQXJlIHlvdQo+IHdpbGxpbmcgdG8gdGVz
dCAob3IgZXZlbiBpbXBsZW1lbnQpIGEgc3dpdGNoIHRvIC5hcHBseSBpbnN0ZWFkPwpZZXMsIGRl
ZmluaXRlbHkuIFRoaXMgaXMgb25lIG9mIG15IG5ldmVyIGVuZGluZyBUT0RPIGxpc3QgWzFdLiBC
dXQgaQp3b3VsZCBiZSBzdXByaXNlZCB0aGF0IHlvdSB3b250IGhhdmUgYWNjZXNzIHRvIGEgUmFz
cGJlcnJ5IFBpLgo+Cj4gSnVzdCBmcm9tIGEgcXVpY2sgbG9jayBpbnRvIHRoZSBkcml2ZXIgSSB3
b25kZXIgYSBmZXcgdGhpbmdzLCBtYXliZSB5b3UKPiBjYW4gc2hlZCBzb21lIGxpZ2h0IGhlcmUu
IElmIHRoZXJlIGlzIHB1YmxpY2x5IGF2YWlsYWJsZSBkb2N1bWVuYXRpb24KPiBmb3IgdGhpcyBw
aWVjZSBvZiBoYXJkd2FyZSwgZmVlbCBmcmVlIHRvIHBvaW50IHRoaXMgb3V0LCB0aGVuIEkgbWln
aHQgYmUKPiBhYmxlIHRvIHdvcmsgb3V0IHNvbWUgb2YgdGhlIGFuc3dlcnMgbXlzZWxmLgpGb3J0
dW5hdGVseSB5ZXMgWzJdCj4KPiBUaGUgb3ZlcmFsbCAoYW5kIGNvbW1vbikgZGVzaWduIG9mIHRo
ZSBQV00gaXMgYW4gaW5wdXQgY2xrLCBhIGNvdW50ZXIsIGEKPiBkdXR5IGFuZCBhIHBlcmlvZCBy
ZWdpc3Rlci4KPgo+IFRoZSBzbGlnaHRseSBzaW1wbGlmaWVkIGxvZ2ljIGluIC5jb25maWcgaXM6
Cj4KPiAJc2NhbGVyID0gRElWX1JPVU5EX0NMT1NFU1QoTlNFQ19QRVJfU0VDLCByYXRlKTsKPiAJ
d3JpdGVsKERJVl9ST1VORF9DTE9TRVNUKGR1dHlfbnMsIHNjYWxlciksIFBXTV9EVVRZKTsKPiAJ
d3JpdGVsKERJVl9ST1VORF9DTE9TRVNUKHBlcmlvZF9ucywgc2NhbGVyKSwgUFdNX1BFUklPRCk7
Cj4KPiBUaGlzIGlzIGxvb3NpbmcgcHJlY2lzaW9uIHdoaWxlIHRoZSBjYWxjdWxhdGlvbiBjb3Vs
ZCBiZSBjaGVhcGVyIChpbiBDUFUKPiBjeWNsZXMpIGFuZCBtb3JlIGV4YWN0IHdoZW4gdXNpbmc6
Cj4KPiAJd3JpdGVsKERJVl9ST1VORF9DTE9TRVNUKGR1dHlfbnMgKiByYXRlLCBOU0VDX1BFUl9T
RUMpLCBQV01fRFVUWSk7Cj4gCXdyaXRlbChESVZfUk9VTkRfQ0xPU0VTVChwZXJpb2RfbnMgKiBy
YXRlLCBOU0VDX1BFUl9TRUMpLCBQV01fUEVSSU9EKTsKPgo+IFRoaXMgaXMgb25seSB0d28gZGl2
aXNpb25zIGluc3RlYWQgb2YgdGhyZWUuIEFuZCBhc3N1bWluZyBhIHJhdGUgb2YgOS4yCj4gTUh6
IGFuZCBhIHJlcXVlc3Qgb2YgZHV0eV9ucyA9IDQ5OTk0NSwgcGVyaW9kX25zID0gOTk5ODkxIHRo
ZSBvcmlnaW5hbAo+IGNhbGN1bGF0aW9uIHlpZWxkcwo+Cj4gCURVVFkgPSA0NTg3Cj4gCVBFUklP
RCA9IDkxNzMKPgo+IAlyZWFsX2R1dHlfbnMgPSA0OTg1ODYuOTU2NTIxNzM5MTQKPiAJcmVhbF9w
ZXJpb2RfbnMgPSA5OTcwNjUuMjE3MzkxMzA0Mwo+Cj4gCWVycm9yX2R1dHlfbnMgPSAxMzU4LjA0
MzQ3ODI2MDg2NDUKPiAJZXJyb3JfcGVyaW9kX25zID0gMjgyNS43ODI2MDg2OTU2Nzc1Cj4KPiBX
aXRoIG15IHN1Z2dlc3Rpb24geW91J2QgZ2V0Cj4KPiAJRFVUWSA9IDQ1OTkKPiAJUEVSSU9EID0g
OTE5OQo+Cj4gCXJlYWxfZHV0eV9ucyA9IDQ5OTg5MS4zMDQzNDc4MjYxCj4gCXJlYWxfcGVyaW9k
X25zID0gOTk5ODkxLjMwNDM0NzgyNgo+Cj4gCWVycm9yX2R1dHlfbnMgPSA1My42OTU2NTIxNzM4
OTAyNwo+IAllcnJvcl9wZXJpb2RfbnMgPSAtMC4zMDQzNDc4MjYwNTE1MjU3Nwo+Cj4gKEJ1dCBo
YXZpbmcgc2FpZCB0aGlzLCBJJ2QgcHJlZmVyIHRvIHVzZSByb3VuZGluZyBkb3duIGluc3RlYWQg
b2YKPiByb3VuZGluZyBjbG9zZXN0KS4KPgo+IEFsc28gSSB3b25kZXIgaWYgcmVwcm9ncmFtbWlu
ZyB0aGUgaGFyZHdhcmUgY29tcGxldGVzIHRoZSBjdXJyZW50bHkKPiBydW5uaW5nIHBlcmlvZCBh
bmQgaG93IHRoZSBoYXJkd2FyZSBiZWhhdmVzIG9uIGRpc2FibGUuIChJbiB0aGUgbGF0dGVyCj4g
Y2FzZSBJJ20gaW50ZXJlc3RlZCBpbiAiRG9lcyBpdCBjb21wbGV0ZSB0aGUgcnVubmluZyBwZXJp
b2Q/IiBhbmQgIldoaWNoCj4gc3RhdGUgZG9lcyB0aGUgb3V0cHV0IHN0b3AgaW4/IikKCkkgbmVl
ZCB0byBtYWtlIGxvZ2ljIGFuYWx5emVyIHRyYWNlcyB0byBtYWtlIGFueSBzdGF0ZW1lbnQuCgpU
aGFua3MKClsxXSAtIGh0dHBzOi8vZ2l0aHViLmNvbS9sYXRlZ29vZGJ5ZS9ycGktemVyby9pc3N1
ZXMvMTYKClsyXSAtCmh0dHBzOi8vd3d3LnJhc3BiZXJyeXBpLm9yZy9hcHAvdXBsb2Fkcy8yMDEy
LzAyL0JDTTI4MzUtQVJNLVBlcmlwaGVyYWxzLnBkZgoKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
