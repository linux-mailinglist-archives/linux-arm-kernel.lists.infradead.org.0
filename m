Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A32AD06DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 07:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGKVnlthSPY7Fa0A6sk+SlKIX4TUpRl8KXFKeu1qrsA=; b=ksTxVtD0LOcmBP
	pkCwm33qB/H51GIwVAGBGkLVxXmiC6HGy6LCYbFfFDOinngQ9gA2jTaUvGkTS1SmJkoazW7bFaSeS
	sBSmEhe+/uwgB32RZnP/gXbEKgYjVXkHbJaOHxKaLnTdu1Ficimla/R2RvaboCUYpYKu+qX1pQ4um
	j89CfckJ1KmSZBcLFsxLebzuT13j+lfF4VqK12wwfd5AML9ivdj3gyBkhCWCSzBRHhIxYq+C6w5QZ
	GLoftn88l+MlvV/0XOlU8qtRoJI+XlU6DewBJu1lgpoxTpnxbLr7yoQMGvCYGFxKR4fFeog92BV73
	6OXd1flGUw0uy+um8Tcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI4OY-00061z-6d; Wed, 09 Oct 2019 05:20:18 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI4OP-0005KR-Gs; Wed, 09 Oct 2019 05:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570598393;
 bh=jsvszXWy2fmSnGd+4dEOZil+sNST0DwgpzxtQE9FqVo=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=ZONdG6+OUiPhQN3audB3vLaCF54GOn7Nmo20S4YdoA006FUNb66Nc5lFMwNBYWUA9
 eV44UGw38fPCkCbFI2zWIgvHXx1GZgaOzXoWMqTDHHreoNRCizRVh6ipvjEw01/u1T
 QhGXcuJs82VGWjQvGrlJEdWhSbxYREkYAFoyGHrM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([37.60.0.182]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N2mFi-1i5zVd2Ry8-01356j; Wed, 09
 Oct 2019 07:19:53 +0200
Date: Wed, 09 Oct 2019 07:19:49 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20191004152001.GS18429@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
 <20191004152001.GS18429@dell>
MIME-Version: 1.0
Subject: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
To: linux-mediatek@lists.infradead.org,Lee Jones <lee.jones@linaro.org>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <8AE93E81-9836-4509-A850-468547569AA4@public-files.de>
X-Provags-ID: V03:K1:rtFiAFFEcwLNTyLU2LbSMAHvQs2xGApRGVsufAMJCqjjXvrOCJr
 GA/cRZW5qlrvHvdKW+JYdAr4TWcFHnDE4iGtTvyZHtuC/Lj7k1W/uugR4FvN6RoFd11XDRa
 b1WYgORNZ8LNb2ZXUXYZf/0TDuSIK+H4MtDoZgW9oxauSx7orEJ+SrXSY1wt91xVv/rgq3Z
 hcV6tX1I9l2mSYvrUIW2w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0x7ZW0UPvFc=:Rx1VGnIzUJFQnGK19GM+7Q
 HJOzFrErnP/ISSrz5b2Btxg55q70B7H4cdRn4LuCT5PCfM2XNBdXtyXEZKoha3GHkQRmXJhb4
 HJWayvpBOZG4zvg6nMN0pjvj9oqKTx6eqoKeC5W9mERwT1uzJftPDkTTLRnajcYeHmBPOhEtC
 gqFMMpqdbNqgO3WFDXjSOam6BIeu0nMWOXaSeihaHKwr1wOQh3nVM5NJFLGAP//FmMVV1INp4
 6i7/txhWF0Sr7ufmyDGgCAEMG7u4n4ZStVX99d2nmbAyGU+HyV9Q5e5CSKTEDotS1itIM7zwg
 6BFyLaoeV1N63Udl580VCULw3X4/Sb9enE2yIhK0qZDUOGLOxNx7GEKv0c/yosbL9R7nErRXD
 c02GGMUfA148pZ3aSrdIq1KsMYgWN5TqpAXGZXVoiS1QRZWlqou590MGHx9X689zpLfbX4kmv
 i91O9lGkZFRUW7cipAEzNoxUiqVdFU4Qi0JE2LTqTI+ZlVvOYfn9VVwIVEUuLrWwT4PGAit23
 qnF33mhRg+u/sbg4Heo3007byaJsPtr3s3tX3mvetkM8CTO0Muj5AW0KBP2Xe5pyyIw5MtATa
 jcaIlTO0DI8AIdYGtj5GllIJt0bTvtcjAjndCFvSSmwAOfAWaBi+SVQFOEhzX55T7ObLzVCkH
 GbTG3m8lLG9fkV96kdO6O1TZneh+MvivSik93cevyfENy9xDDkVzN2dw57L5Y2nPE5010+aUU
 dHCwVevh5oHGccoUcc+MMXbJAYc2xvh2it0hnKtwWAELmRh4Zs7JF+Jqi9v/7V2iF54qd/UXo
 GbN+5GxDZ7BWzTreKLUiWNjYsdT2M1mboj/WCeW0pFY92lhEqsa+ev/YS3LujcREOyB+iFiTF
 wk6tuUxHGvojJC9+XjnseHBNsxrCeAQw/9rHX01jDXzfudSnU+iP4TVZubSgMbEECF+YnkHyr
 +TXfiCdf109gEUpBPmBkUoBQBTn59V6k7+7/F5hzKrrCIJwsRs9Uv+BJaoCDJcaCb96ng1Gz+
 o/JG1tIGg+XKvvTb0CVG1NokskDMRs+1PGsn9dT8TrRVjhdp8T7FkHPgelUDFUeI0NCrPGOtA
 2h3PymqtT9PQt/fde5eerYQ0FCyreKmqLqYQ5DNe4eTuIxXxGesH/377sJO+CcKjkO5FdQ2FB
 0Arg7Ki/68ROqit+1+Y2DqDu4MTm6w9FUQCDhoUU90lbSP12n76DATHuHryxY/PWlTrpEc9UT
 ocKiRdMG9PAF/0Pisc2P7eOSCSbUp3BSKfWXcpAW8M3t4a7YpItGZ4eekjoI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_222009_903998_4EDFE15C 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: frank-w@public-files.de
Cc: Matthias Brugger <matthias.bgg@gmail.com>, linux-kernel@vger.kernel.org,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2hvdWxkIGkgc2VuZCBwYXRjaCB3aXRob3V0IHRoZSBzaGlmdCAoYmVjYXVzZSByZXN0IG9mIHNl
cmllcyBnZXRzIG5vdCBtZXJnZWQgaW4gNS40KT8KCkFtIDQuIE9rdG9iZXIgMjAxOSAxNzoyMDow
MSBNRVNaIHNjaHJpZWIgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz46Cj5PbiBUaHUs
IDAzIE9jdCAyMDE5LCBGcmFuayBXdW5kZXJsaWNoIHdyb3RlOgo+Cj4+IFBhcnQgMyBmcm9tIHRo
aXMgc2VyaWVzIFsxXSB3YXMgbm90IG1lcmdlZCBkdWUgdG8gd3Jvbmcgc3BsaXR0aW5nCj4+IGFu
ZCBicmVha3MgbXQ2MzIzIHBtaWMgb24gYmFuYW5hcGktcjIKPj4gCj4+IGRtZXNnIHByaW50cyB0
aGlzIGxpbmUgYW5kIGF0IGxlYXN0IHN3aXRjaCBpcyBub3QgaW5pdGlhbGl6ZWQgb24KPmJhbmFu
YXBpLXIyCj4+IAo+PiBtdDYzOTcgMTAwMGQwMDAucHdyYXA6bXQ2MzIzOiB1bnN1cHBvcnRlZCBj
aGlwOiAweDAKPj4gCj4+IHRoaXMgcGF0Y2ggY29udGFpbnMgb25seSB0aGUgcHJvYmUtY2hhbmdl
cyBhbmQgY2hpcF9kYXRhIHN0cnVjdHMKPj4gZnJvbSBvcmlnaW5hbCBwYXJ0IDMgYnkgSHNpbi1I
c2l1bmcgV2FuZwo+PiAKPj4gRml4ZXM6IGE0ODcyZTgwY2U3ZDJhMTg0NDMyODE3NmRiZjI3OWQw
YTJiODliZGIgbWZkOiBtdDYzOTc6IEV4dHJhY3QKPklSUSByZWxhdGVkIGNvZGUgZnJvbSBjb3Jl
IGRyaXZlcgo+PiAKPj4gWzFdCj5odHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3Qv
bGludXgtbWVkaWF0ZWsvbGlzdC8/c2VyaWVzPTE2NDE1NQo+PiAKPj4gU2lnbmVkLW9mZi1ieTog
RnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4+IC0tLQo+PiAgZHJp
dmVycy9tZmQvbXQ2Mzk3LWNvcmUuYyB8IDY0Cj4rKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAyNCBkZWxl
dGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jIGIv
ZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+PiBpbmRleCAzMTBkYWUyNmRkZmYuLmIyYzMyNWVh
ZDFjOCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+PiArKysgYi9k
cml2ZXJzL21mZC9tdDYzOTctY29yZS5jCj4+IEBAIC0xMjksMTEgKzEyOSwyNyBAQCBzdGF0aWMg
aW50IG10NjM5N19pcnFfcmVzdW1lKHN0cnVjdCBkZXZpY2UKPipkZXYpCj4+ICBzdGF0aWMgU0lN
UExFX0RFVl9QTV9PUFMobXQ2Mzk3X3BtX29wcywgbXQ2Mzk3X2lycV9zdXNwZW5kLAo+PiAgCQkJ
bXQ2Mzk3X2lycV9yZXN1bWUpOwo+PiAgCj4+ICtzdHJ1Y3QgY2hpcF9kYXRhIHsKPj4gKwl1MzIg
Y2lkX2FkZHI7Cj4+ICsJdTMyIGNpZF9zaGlmdDsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgY2hpcF9kYXRhIG10NjMyM19jb3JlID0gewo+PiArCS5jaWRfYWRkciA9IE1UNjMy
M19DSUQsCj4+ICsJLmNpZF9zaGlmdCA9IDAsCj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGNoaXBfZGF0YSBtdDYzOTdfY29yZSA9IHsKPj4gKwkuY2lkX2FkZHIgPSBNVDYzOTdf
Q0lELAo+PiArCS5jaWRfc2hpZnQgPSAwLAo+PiArfTsKPgo+V2lsbCB0aGVyZSBiZSBvdGhlciBk
ZXZpY2VzIHdoaWNoIGhhdmUgYSAhMCBDSUQgc2hpZnQ/Cj4KPi0tIAo+TGVlIEpvbmVzIFvmnY7n
kLzmlq9dCj5MaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKPkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+Rm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+TGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj5MaW51eC1tZWRpYXRla0Bs
aXN0cy5pbmZyYWRlYWQub3JnCj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
