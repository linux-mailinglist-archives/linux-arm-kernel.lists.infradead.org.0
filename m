Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202E11CB41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8zkKuhUwxdH8Nf9f1hR/na7XWZpJVT8k5pteHFA4eE=; b=sHXKwZIGoE1lcI
	8C9tdSvmTjy8NnMeSyKQ6n8J1NQwMVGWJvo/l56CeKgFvjdGfF83n8OYOhmjnOkDYPvQ5pdWACYHk
	6+zbhUfCmXDCOv070lr/+SCQntMqT0krcr0/tJm4yVbmUfMd0Tkj0ihwCjsV4g/b5OTOS432lh/BX
	wi3zfKC9vVd6tHPVnHSj9zyATNEHb7hioSYtkscwHQMEGP4Mv/kS9qHCw7v+i+bUUbUcT7yl/zUQF
	fifCK1xaDZSAy1i8I1a0tOGubWIiq7LWEK3eF/JMATf3YB330zlN4rRkXqTPi63lPltSvZY1p/JEa
	b7Y0yPBB4+0KTMVCMsfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifM0M-000767-Jn; Thu, 12 Dec 2019 10:47:34 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifM0C-00075F-Fc; Thu, 12 Dec 2019 10:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576147629;
 bh=iU0ev7VoC1TijGDuRwLbBpmGPdY4l6wXakXHGIG0OlE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XCLwiiEEagsVPHcOL/uDVAZyOVwelM3Mmf+s8rJu111S4kNmasEi4MnhCfyYOhU44
 r57699Z5UhuLNEwD9+MXtCTqyrrym0CJMQruVAKxT2cj+SoFGNviQG2EuoUbqJct1C
 oUEZqZCCIzcGVFA2/PJ9pc6sGMk/YlBmAK94bZfw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.139.166]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M6UxL-1hmGH82HNL-00yUj1; Thu, 12
 Dec 2019 11:47:09 +0100
Subject: Re: [PATCH v2 9/9] arm64: dts: rockchip: RockPro64: hook up bluetooth
 at uart0
To: Robin Murphy <robin.murphy@arm.com>, Kalle Valo <kvalo@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-10-smoch@web.de>
 <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <b859b9f1-2d89-ddef-df26-724ac4ffb088@web.de>
Date: Thu, 12 Dec 2019 11:47:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a0ad4723-db85-0eda-efb5-f0c9a2a6aec3@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:GxvXISq/vQUw0CF4n7qCFX0ucOQQ/WrciDDXrMEuGYWZVSa/9hB
 QAPsZtpo3t9v0XTThIaCt5DvRpmp3fB8lWb//T5QodTKvZBcSVje+4mohTMLZVqN14UT3pS
 7KHQIMGBpf7mjeu1cNFW5zYEmU4IgvkoM+2RAsdoSGfHlZ5dlnc9cwEZ1igGGrszaSoUP4z
 Om2pt6sOQlrqUGzy7+qTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tJ/tdq6fCbM=:+dw/5RxWG7gW0S7c717i5c
 qC/iLBFbuQhEZZoUY63jeayspCCRnlOuPytTsAlvpqNVatg++A2+MLAvjAG8zF3zBVe+Hhqcl
 YNsC5cTWfmNCsMOcMVdDVSGW46PPg3pW3AR7C850a2BlmmYj07PtIw84iCFGFyREwQ0bc9kFJ
 c3QPlG/1cbtv/7AXiRzHXEiqpMthD24Yst0DkfvB8JAWdEcAbVQnoeDHiuY8PxSyfB3hMCIMy
 otycqOrN5n4Av+3ebRscHZ4WOcPL0X9DZxmnW8B30wUv2ei1DQ7hLAesX8KklGAHtG/aMGyrG
 mDNNt8C2Fk2AI4OO7Yud4vFPf8QWWchLzeTzoIBEj/3Krm2p59MNAgr2RHbRVhJZqb+498iKr
 bZzTR4KbPUpmZ96FQ+zi+8h14ZFetc0ukHrepY3eAGXcYTGTMVVdqEp4clUe28GSuafEeeNW5
 I1HXygTosgqvCX64VTQzRxOXOPBFqtpEeYF9ViEwm7NXyQK5RxCpucdcd7Uq1aeosZG3i+F/9
 F/A+7CbF9I2VAZ2aXijdMuXVoKf8cNG2bfGhLkws086VBHDCBNz1GZfU9/p1tjC9XAt8vkRED
 zUuAVdNBpR9oHsfT4/99nHFTeaMK1rUwekofczJXDsCXpgOwQlJuTWEaoz0iU0iva6LL87G72
 vo9TLiBgRMpZRqtEWNKn90/Q5gXWrxMPDiUvFeNtnskT/tISY1yrCO4N2wuiM3cuddKZ74DGR
 TYfGnwGCx3ApOFNz2aqs6KchFirYOCV76JzQtPL7xKMWSbh0tJcZ9xOwgVna5Nt64d/DlyNfa
 0G3kb0+wCwqahGqe0OOVvSGbecFFZ9c3Bx4VnIdT/yVrxoLNe8jrSSsQpt6EVXlVJOr/TYhwz
 X3Mg4FjBYjBt0uBljQU+I1peJwQ9dv2YS0rc34Oj1VAYc72Pf2bjlWKJ/iWNY5POzGXgMfi03
 Sqp8etxIB5Ir0w3k8oeIfBT1nOMt04uqhRadIq8uHlWbCZxjHO5hGN30CaIr8LEft4ghCv/9H
 alWWN2FexeAEFSz/aqV4oAmraMzBWsN0M+QxgHVMZbOHgNCZL7iVMKFNgNlA/efAUjfVl++2X
 n85ZSqEvUFoJVJvJ1JXvONkqNFdCYgWBpci68KdZi3jiDAGndXMKHvTzcypFLMMfFoDkcD0Ab
 YQ/TQLlCGs50yQTK89k5h881RUrBCZVItewkt1NKp2QWPlxIbyK2iWIPjOci+RbyLOiSgtiA4
 3Yl5Q5K/y93xVK4y3b/JrFYO9mCnk3w3uPsN7Ow==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_024724_855669_F4D53179 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi4xMi4xOSAxMToyMiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IEhpIFNvZXJlbiwKPgo+
IE9uIDExLzEyLzIwMTkgMTE6NTIgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+PiBXaXRoIGVuYWJs
ZWQgd2lmaSBzdXBwb3J0IChyZXF1aXJlZCBmb3IgZmlybXdhcmUgbG9hZGluZykgZm9yIHRoZQo+
PiBBbXBhayBBUDYzNTlTQSBiYXNlZCB3aWZpL2J0IGNvbWJvIG1vZHVsZSB3ZSBub3cgYWxzbyBj
YW4gZW5hYmxlCj4+IHRoZSBibHVldG9vdGggcGFydC4KPj4KPj4gU3VnZ2VzdGVkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+PiBTaWduZWQtb2ZmLWJ5OiBTb2VyZW4gTW9j
aCA8c21vY2hAd2ViLmRlPgo+PiAtLS0KPj4gY2hhbmdlcyBpbiB2MjoKPj4gLSBuZXcgcGF0Y2gK
Pj4KPj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+IENjOiBLYWxsZSBW
YWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9yZz4KPj4gQ2M6IGxpbnV4LXdpcmVsZXNzQHZnZXIua2Vy
bmVsLm9yZwo+PiBDYzogYnJjbTgwMjExLWRldi1saXN0LnBkbEBicm9hZGNvbS5jb20KPj4gQ2M6
IGJyY204MDIxMS1kZXYtbGlzdEBjeXByZXNzLmNvbQo+PiBDYzogbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZwo+PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IENjOiBs
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IENjOiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnCj4+IC0tLQo+PiDCoCAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2twcm82NC5kdHPCoMKgwqAgfCAyOSArKysrKysrKysrKysrKysrKystCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+IGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+PiBpbmRl
eCA5ZmE5Mjc5MGQ2ZTAuLjk0Y2M0NjJlMjM0ZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+PiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+IEBAIC01NjEsNiArNTYx
LDIwIEBACj4+IMKgIH07Cj4+Cj4+IMKgICZwaW5jdHJsIHsKPj4gK8KgwqDCoCBidCB7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBidF9lbmFibGVfaDogYnQtZW5hYmxlLWggewo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByb2NrY2hpcCxwaW5zID0gPDAgUktfUEIxIFJLX0ZVTkNfR1BJTyAmcGNmZ19w
dWxsX25vbmU+Owo+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAg
YnRfaG9zdF93YWtlX2w6IGJ0LWhvc3Qtd2FrZS1sIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BBNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3du
PjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGJ0X3dha2Vf
bDogYnQtd2FrZS1sIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcm9ja2NoaXAscGlucyA9
IDwyIFJLX1BEMyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4gK8KgwqDCoMKgwqDC
oMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4gKwo+PiDCoMKgwqDCoMKgIGJ1dHRvbnMgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcHdyYnRuOiBwd3JidG4gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByb2NrY2hpcCxwaW5zID0gPDAgUktfUEE1IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3Vw
PjsKPj4gQEAgLTcyOSw4ICs3NDMsMjEgQEAKPj4KPj4gwqAgJnVhcnQwIHsKPj4gwqDCoMKgwqDC
oCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAtwqDCoMKgIHBpbmN0cmwtMCA9IDwmdWFy
dDBfeGZlciAmdWFydDBfY3RzPjsKPj4gK8KgwqDCoCBwaW5jdHJsLTAgPSA8JnVhcnQwX3hmZXIg
JnVhcnQwX2N0cyAmdWFydDBfcnRzPjsKPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+
ICsKPj4gK8KgwqDCoCBibHVldG9vdGggewo+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJicmNtLGJjbTQzNDM4LWJ0IjsKPj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmcms4MDgg
MT47Cj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJleHRjbGsiOwo+Cj4gSXMgdGhp
cyByaWdodD8gQ29tcGFyaW5nIHRoZSBiaW5kaW5nIGFuZCB0aGUgbmFtaW5nIG9uIHRoZSBzY2hl
bWF0aWNzLAo+IGl0IHNlZW1zIG1vcmUgbGlrZWx5IHRoYXQgdGhpcyBtaWdodCBiZSB0aGUgTFBP
IGNsb2NrIHJhdGhlciB0aGFuIHRoZQo+IFRYQ08gY2xvY2suCj4KPiBSb2Jpbi4KT24gc2Vjb25k
IHRob3VnaHQgSSBoYXZlIHRvIGFncmVlLiBTbyB3ZSBuZWVkIGFub3RoZXIgcm91bmQgb24gdGhp
cy4KClRoYW5rcyBmb3IgeW91ciByZXZpZXcgYW5kIGJ1ZyByZXBvcnQsClNvZXJlbgo+Cj4+ICvC
oMKgwqDCoMKgwqDCoCBkZXZpY2Utd2FrZXVwLWdwaW9zID0gPCZncGlvMiBSS19QRDMgR1BJT19B
Q1RJVkVfSElHSD47Cj4+ICvCoMKgwqDCoMKgwqDCoCBob3N0LXdha2V1cC1ncGlvcyA9IDwmZ3Bp
bzAgUktfUEE0IEdQSU9fQUNUSVZFX0hJR0g+Owo+PiArwqDCoMKgwqDCoMKgwqAgc2h1dGRvd24t
Z3Bpb3MgPSA8JmdwaW8wIFJLX1BCMSBHUElPX0FDVElWRV9ISUdIPjsKPj4gK8KgwqDCoMKgwqDC
oMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJs
LTAgPSA8JmJ0X2hvc3Rfd2FrZV9sICZidF93YWtlX2wgJmJ0X2VuYWJsZV9oPjsKPj4gK8KgwqDC
oMKgwqDCoMKgIHZiYXQtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gK8KgwqDCoMKgwqDCoMKg
IHZkZGlvLXN1cHBseSA9IDwmdmNjXzF2OD47Cj4+ICvCoMKgwqAgfTsKPj4gwqAgfTsKPj4KPj4g
wqAgJnVhcnQyIHsKPj4gLS0KPj4gMi4xNy4xCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
