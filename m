Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12230202AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttI9gaScfWseMKm+5V/7RPh3Ga3zk5RkhCjK5vqQf0o=; b=j3bwUR0GyJye93
	+N0SV6R1dKGVps83er23XPzHpBF64xD4FwOGxg7ENJPpk6RX+Rw+LG3qPrVWgC24qQVOjKp2WpPN9
	SEu3P0JQDUnAvzLacqe+VqkHrQ83eXWigRlJ3qmBCou/JHchVXdQw88dSxa3AfifErTcEGQcyySE2
	HT7Q9uSeNC7Dls2JQBrgcd0v+GVAF1pCOtijOTtqTQrDISvkcgsSiySljwocIJObaDqVgcN7ZfPK/
	nVfAzjcvWzNqk584XGfh8G1qCMeSpuxPc3xTYeuKHAo3Ax0jTdIIrYmPyvMw/vyujP1VaGURu67iZ
	EwZzb2MraWeCZ1L0pngA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCqJ-0006Ij-PK; Thu, 16 May 2019 09:38:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCqA-0006HO-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:38:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so2525210wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 02:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dXvL9U6vqGn+3dzqe2q3AnaDCZlkUax0fDWBtTifafo=;
 b=I/UDJahv2XoQTVlI/CBZzg4KvAhMldXn8LDjvfGiNkTKJbZ1TvfKXE3AEzLil71RJk
 r8LRO8eku+PRGnNuTA5mKDMQ61I5fApITxI9TF+yK3io1+bIZJ5ZRwcu/WUpdbLFnU7E
 5GVKXZnrVCdEXjTd5MiJ6XX2jXWuTrYAd9HNNCxYvVbSVk+OKHNvCJFtHZXHrSCXpRcJ
 98z/i3ht+/qRm+k//8SXDpLRkwzJebC1eVR//gULnCMcgMHjBhorb+NnLU6L5oVjXEuK
 oNX2dqh68Ygyq62nm3IFh3dPaXY0UcRAQp8KKat80D2BGtjs0/XsV7k6oAkGc4poSJLy
 yMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dXvL9U6vqGn+3dzqe2q3AnaDCZlkUax0fDWBtTifafo=;
 b=T5VhUq/wbKIZT6ynulqaXW1QEfmG1NuZfY+N+kl4RCIiV0cbtOJaPFOKREPBOo8Xd7
 JJMJA5TiFIdES2gZ+ZLlMVAOvTj7I1L3V2dvTiGE6d+jEjrKzr9qK4KX/ecOr6g4kgzf
 uwR7KyaWvHScJ5BKj0DTT/sOWglgxAnmkvrqgC8cUtR/3xT3Q21HJ3tHioY5bHZRYy2B
 cHXVTg8lFLwk1j8XdXk5q2GqMMQAQmm/qiHc58i9eRR1Z0JTxFGuNPUtlJM1ayhFa/vj
 T0IPN5fxcxGXn5wnA+Qudg18bblqzExQp6KEsFwZA7ac/j5bOT+roSZkEb1Hb5mBSi3y
 Va2g==
X-Gm-Message-State: APjAAAWtOdTMqZVnryglLwKXlWCHVAIl3q4tdT4ev6gm15QfP2ATP8rk
 oBaYAracArbPX2nd1gqLwIwTfA==
X-Google-Smtp-Source: APXvYqyxizdSyGYaMjH4i42OelzyoNbKdbfbgvIpvKDNvD6i2SbdFgd3o1rCzRT0UKNUAf0uvT1PKg==
X-Received: by 2002:adf:8189:: with SMTP id 9mr26439649wra.71.1557999495611;
 Thu, 16 May 2019 02:38:15 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id v12sm4464290wrw.23.2019.05.16.02.38.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 02:38:14 -0700 (PDT)
Subject: Re: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
 thermal support
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "edubezval@gmail.com" <edubezval@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "agross@kernel.org" <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
References: <1555384609-7030-1-git-send-email-Anson.Huang@nxp.com>
 <1555384609-7030-3-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <235e91be-f9e9-1e97-b404-17009a64771f@linaro.org>
Date: Thu, 16 May 2019 11:38:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1555384609-7030-3-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_023818_654471_3D7F6677 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYvMDQvMjAxOSAwNToyMiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gaS5NWDhRWFAgaXMgYW4g
QVJNdjggU29DIHdoaWNoIGhhcyBhIENvcnRleC1NNCBzeXN0ZW0gY29udHJvbGxlcgo+IGluc2lk
ZSwgdGhlIHN5c3RlbSBjb250cm9sbGVyIGlzIGluIGNoYXJnZSBvZiBjb250cm9sbGluZyBwb3dl
ciwKPiBjbG9jayBhbmQgdGhlcm1hbCBzZW5zb3JzIGV0Yy4uCj4gCj4gVGhpcyBwYXRjaCBhZGRz
IGkuTVggc3lzdGVtIGNvbnRyb2xsZXIgdGhlcm1hbCBkcml2ZXIgc3VwcG9ydCwKPiBMaW51eCBr
ZXJuZWwgaGFzIHRvIGNvbW11bmljYXRlIHdpdGggc3lzdGVtIGNvbnRyb2xsZXIgdmlhIE1VCj4g
KG1lc3NhZ2UgdW5pdCkgSVBDIHRvIGdldCBlYWNoIHRoZXJtYWwgc2Vuc29yJ3MgdGVtcGVyYXR1
cmUsCj4gaXQgc3VwcG9ydHMgbXVsdGlwbGUgc2Vuc29ycyB3aGljaCBhcmUgcGFzc2VkIGZyb20g
ZGV2aWNlIHRyZWUsCj4gcGxlYXNlIHNlZSB0aGUgYmluZGluZyBkb2MgZm9yIGRldGFpbHMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gLS0t
Cj4gQ2hhbmdlcyBzaW5jZSBWMTE6Cj4gCS0gbW92ZSB0aGUgQVBJIG9mIGdldHRpbmcgdGhlcm1h
bCB6b25lIHNlbnNvciBJRCB0byBvZi10aGVybWFsLmMgYXMgZ2VuZXJpYyBBUEk7Cj4gCS0gcmVt
b3ZlIHVubmVjZXNzYXJ5IF9fcGFja2VkLgoKVGhlIHBhdGNoIGl0c2VsZiBzb3VuZHMgZ29vZCB0
byBtZSBidXQgdGhlIGdldHRpbmcgdGhlcm1hbCB6b25lIGJ5CnNlbnNvciBpZCBwYXRjaCBzZWVt
cyB0byBiZSBjb250cm92ZXJzaWFsLiBJdCB3b3VsZCBiZSBuaWNlIHRvIHJpc2UgYQpkaXNjdXNz
aW9uIHdpdGggdGhpcyBuZXcgZnVuY3Rpb24geW91IHByb3Bvc2VkIGluIDIvNS4KCj4gLS0tCj4g
IGRyaXZlcnMvdGhlcm1hbC9LY29uZmlnICAgICAgICAgIHwgIDExICsrKysKPiAgZHJpdmVycy90
aGVybWFsL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3RoZXJtYWwvaW14X3Nj
X3RoZXJtYWwuYyB8IDEzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxNDkgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy90aGVybWFsL2lteF9zY190aGVybWFsLmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy90aGVybWFsL0tjb25maWcgYi9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZwo+IGluZGV4IDY1
M2FhMjcuLjRlNGZhN2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL0tjb25maWcKPiAr
KysgYi9kcml2ZXJzL3RoZXJtYWwvS2NvbmZpZwo+IEBAIC0yMjMsNiArMjIzLDE3IEBAIGNvbmZp
ZyBJTVhfVEhFUk1BTAo+ICAJICBjcHVmcmVxIGlzIHVzZWQgYXMgdGhlIGNvb2xpbmcgZGV2aWNl
IHRvIHRocm90dGxlIENQVXMgd2hlbiB0aGUKPiAgCSAgcGFzc2l2ZSB0cmlwIGlzIGNyb3NzZWQu
Cj4gIAo+ICtjb25maWcgSU1YX1NDX1RIRVJNQUwKPiArCXRyaXN0YXRlICJUZW1wZXJhdHVyZSBz
ZW5zb3IgZHJpdmVyIGZvciBOWFAgaS5NWCBTb0NzIHdpdGggU3lzdGVtIENvbnRyb2xsZXIiCj4g
KwlkZXBlbmRzIG9uIChBUkNIX01YQyAmJiBJTVhfU0NVKSB8fCBDT01QSUxFX1RFU1QKPiArCWRl
cGVuZHMgb24gT0YKPiArCWhlbHAKPiArCSAgU3VwcG9ydCBmb3IgVGVtcGVyYXR1cmUgTW9uaXRv
ciAoVEVNUE1PTikgZm91bmQgb24gTlhQIGkuTVggU29DcyB3aXRoCj4gKwkgIHN5c3RlbSBjb250
cm9sbGVyIGluc2lkZSwgTGludXgga2VybmVsIGhhcyB0byBjb21tdW5pY2F0ZSB3aXRoIHN5c3Rl
bQo+ICsJICBjb250cm9sbGVyIHZpYSBNVSAobWVzc2FnZSB1bml0KSBJUEMgdG8gZ2V0IHRlbXBl
cmF0dXJlIGZyb20gdGhlcm1hbAo+ICsJICBzZW5zb3IuIEl0IHN1cHBvcnRzIG9uZSBjcml0aWNh
bCB0cmlwIHBvaW50IGFuZCBvbmUKPiArCSAgcGFzc2l2ZSB0cmlwIHBvaW50IGZvciBlYWNoIHRo
ZXJtYWwgc2Vuc29yLgo+ICsKPiAgY29uZmlnIE1BWDc3NjIwX1RIRVJNQUwKPiAgCXRyaXN0YXRl
ICJUZW1wZXJhdHVyZSBzZW5zb3IgZHJpdmVyIGZvciBNYXhpbSBNQVg3NzYyMCBQTUlDIgo+ICAJ
ZGVwZW5kcyBvbiBNRkRfTUFYNzc2MjAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL01h
a2VmaWxlIGIvZHJpdmVycy90aGVybWFsL01ha2VmaWxlCj4gaW5kZXggNDg2ZDY4Mi4uNDA2MjYy
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJz
L3RoZXJtYWwvTWFrZWZpbGUKPiBAQCAtNDAsNiArNDAsNyBAQCBvYmotJChDT05GSUdfREI4NTAw
X1RIRVJNQUwpCSs9IGRiODUwMF90aGVybWFsLm8KPiAgb2JqLSQoQ09ORklHX0FSTUFEQV9USEVS
TUFMKQkrPSBhcm1hZGFfdGhlcm1hbC5vCj4gIG9iai0kKENPTkZJR19UQU5HT19USEVSTUFMKQkr
PSB0YW5nb190aGVybWFsLm8KPiAgb2JqLSQoQ09ORklHX0lNWF9USEVSTUFMKQkrPSBpbXhfdGhl
cm1hbC5vCj4gK29iai0kKENPTkZJR19JTVhfU0NfVEhFUk1BTCkJKz0gaW14X3NjX3RoZXJtYWwu
bwo+ICBvYmotJChDT05GSUdfTUFYNzc2MjBfVEhFUk1BTCkJKz0gbWF4Nzc2MjBfdGhlcm1hbC5v
Cj4gIG9iai0kKENPTkZJR19RT1JJUV9USEVSTUFMKQkrPSBxb3JpcV90aGVybWFsLm8KPiAgb2Jq
LSQoQ09ORklHX0RBOTA2Ml9USEVSTUFMKQkrPSBkYTkwNjItdGhlcm1hbC5vCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdGhlcm1hbC9pbXhfc2NfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2lt
eF9zY190aGVybWFsLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLmRj
ZjE2ZmMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteF9zY190aGVy
bWFsLmMKPiBAQCAtMCwwICsxLDEzNyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMCsKPiArLyoKPiArICogQ29weXJpZ2h0IDIwMTgtMjAxOSBOWFAuCj4gKyAqLwo+ICsK
PiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+ICsjaW5jbHVkZSA8bGludXgvZmlybXdhcmUvaW14
L3NjaS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9v
Zi5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9w
bGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L3RoZXJtYWwuaD4KPiArCj4gKyNpbmNsdWRlICJ0aGVybWFsX2NvcmUuaCIKPiArCj4g
KyNkZWZpbmUgSU1YX1NDX01JU0NfRlVOQ19HRVRfVEVNUAkxMwo+ICsjZGVmaW5lIElNWF9TQ19D
X1RFTVAJCQkwCj4gKwo+ICtzdGF0aWMgc3RydWN0IGlteF9zY19pcGMgKnRoZXJtYWxfaXBjX2hh
bmRsZTsKPiArCj4gK3N0cnVjdCBpbXhfc2Nfc2Vuc29yIHsKPiArCXN0cnVjdCB0aGVybWFsX3pv
bmVfZGV2aWNlICp0emQ7Cj4gKwl1MzIgcmVzb3VyY2VfaWQ7Cj4gK307Cj4gKwo+ICtzdHJ1Y3Qg
cmVxX2dldF90ZW1wIHsKPiArCXUxNiByZXNvdXJjZV9pZDsKPiArCXU4IHR5cGU7Cj4gK30gX19w
YWNrZWQ7Cj4gKwo+ICtzdHJ1Y3QgcmVzcF9nZXRfdGVtcCB7Cj4gKwl1MTYgY2Vsc2l1czsKPiAr
CXU4IHRlbnRoczsKPiArfSBfX3BhY2tlZDsKPiArCj4gK3N0cnVjdCBpbXhfc2NfbXNnX21pc2Nf
Z2V0X3RlbXAgewo+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnIGhkcjsKPiArCXVuaW9uIHsKPiAr
CQlzdHJ1Y3QgcmVxX2dldF90ZW1wIHJlcTsKPiArCQlzdHJ1Y3QgcmVzcF9nZXRfdGVtcCByZXNw
Owo+ICsJfSBkYXRhOwo+ICt9Owo+ICsKPiArc3RhdGljIGludCBpbXhfc2NfdGhlcm1hbF9nZXRf
dGVtcCh2b2lkICpkYXRhLCBpbnQgKnRlbXApCj4gK3sKPiArCXN0cnVjdCBpbXhfc2NfbXNnX21p
c2NfZ2V0X3RlbXAgbXNnOwo+ICsJc3RydWN0IGlteF9zY19ycGNfbXNnICpoZHIgPSAmbXNnLmhk
cjsKPiArCXN0cnVjdCBpbXhfc2Nfc2Vuc29yICpzZW5zb3IgPSBkYXRhOwo+ICsJaW50IHJldDsK
PiArCj4gKwltc2cuZGF0YS5yZXEucmVzb3VyY2VfaWQgPSBzZW5zb3ItPnJlc291cmNlX2lkOwo+
ICsJbXNnLmRhdGEucmVxLnR5cGUgPSBJTVhfU0NfQ19URU1QOwo+ICsKPiArCWhkci0+dmVyID0g
SU1YX1NDX1JQQ19WRVJTSU9OOwo+ICsJaGRyLT5zdmMgPSBJTVhfU0NfUlBDX1NWQ19NSVNDOwo+
ICsJaGRyLT5mdW5jID0gSU1YX1NDX01JU0NfRlVOQ19HRVRfVEVNUDsKPiArCWhkci0+c2l6ZSA9
IDI7Cj4gKwo+ICsJcmV0ID0gaW14X3NjdV9jYWxsX3JwYyh0aGVybWFsX2lwY19oYW5kbGUsICZt
c2csIHRydWUpOwo+ICsJaWYgKHJldCkgewo+ICsJCXByX2VycigicmVhZCB0ZW1wIHNlbnNvciAl
ZCBmYWlsZWQsIHJldCAlZFxuIiwKPiArCQkJc2Vuc29yLT5yZXNvdXJjZV9pZCwgcmV0KTsKPiAr
CQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCSp0ZW1wID0gbXNnLmRhdGEucmVzcC5jZWxzaXVz
ICogMTAwMCArIG1zZy5kYXRhLnJlc3AudGVudGhzICogMTAwOwo+ICsKPiArCXJldHVybiAwOwo+
ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHRoZXJtYWxfem9uZV9vZl9kZXZpY2Vfb3Bz
IGlteF9zY190aGVybWFsX29wcyA9IHsKPiArCS5nZXRfdGVtcCA9IGlteF9zY190aGVybWFsX2dl
dF90ZW1wLAo+ICt9Owo+ICsKPiArc3RhdGljIGludCBpbXhfc2NfdGhlcm1hbF9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
LCAqY2hpbGQ7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IGlteF9zY3VfZ2V0X2hhbmRsZSgm
dGhlcm1hbF9pcGNfaGFuZGxlKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4g
KwlucCA9IG9mX2ZpbmRfbm9kZV9ieV9uYW1lKE5VTEwsICJ0aGVybWFsLXpvbmVzIik7Cj4gKwlp
ZiAoIW5wKQo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsKPiArCWZvcl9lYWNoX2F2YWlsYWJsZV9j
aGlsZF9vZl9ub2RlKG5wLCBjaGlsZCkgewo+ICsJCXN0cnVjdCBvZl9waGFuZGxlX2FyZ3Mgc2Vu
c29yX3NwZWNzOwo+ICsJCXN0cnVjdCBpbXhfc2Nfc2Vuc29yICpzZW5zb3IgPQo+ICsJCQlkZXZt
X2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpzZW5zb3IpLCBHRlBfS0VSTkVMKTsKPiArCQlp
ZiAoIXNlbnNvcikKPiArCQkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJCXJldCA9IHRoZXJtYWxf
em9uZV9vZl9nZXRfc2Vuc29yX2lkKGNoaWxkLAo+ICsJCQkJCQkgICAgJnNlbnNvcl9zcGVjcywK
PiArCQkJCQkJICAgICZzZW5zb3ItPnJlc291cmNlX2lkKTsKPiArCQlpZiAocmV0IDwgMCkgewo+
ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsCj4gKwkJCQkiZmFpbGVkIHRvIGdldCB2YWxpZCBzZW5z
b3IgcmVzb3VyY2UgaWQ6ICVkXG4iLAo+ICsJCQkJcmV0KTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+
ICsKPiArCQlzZW5zb3ItPnR6ZCA9IGRldm1fdGhlcm1hbF96b25lX29mX3NlbnNvcl9yZWdpc3Rl
cigmcGRldi0+ZGV2LAo+ICsJCQkJCQkJCSAgIHNlbnNvci0+cmVzb3VyY2VfaWQsCj4gKwkJCQkJ
CQkJICAgc2Vuc29yLAo+ICsJCQkJCQkJCSAgICZpbXhfc2NfdGhlcm1hbF9vcHMpOwo+ICsJCWlm
IChJU19FUlIoc2Vuc29yLT50emQpKSB7Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxl
ZCB0byByZWdpc3RlciB0aGVybWFsIHpvbmVcbiIpOwo+ICsJCQlyZXQgPSBQVFJfRVJSKHNlbnNv
ci0+dHpkKTsKPiArCQkJYnJlYWs7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCXJldHVybiByZXQ7Cj4g
K30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9zY190aGVybWFs
X3RhYmxlW10gPSB7Cj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXgtc2MtdGhlcm1hbCIsIH0s
Cj4gKwl7fQo+ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXhfc2NfdGhlcm1hbF90
YWJsZSk7Cj4gKwo+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbXhfc2NfdGhlcm1h
bF9kcml2ZXIgPSB7Cj4gKwkJLnByb2JlID0gaW14X3NjX3RoZXJtYWxfcHJvYmUsCj4gKwkJLmRy
aXZlciA9IHsKPiArCQkJLm5hbWUgPSAiaW14LXNjLXRoZXJtYWwiLAo+ICsJCQkub2ZfbWF0Y2hf
dGFibGUgPSBpbXhfc2NfdGhlcm1hbF90YWJsZSwKPiArCQl9LAo+ICt9Owo+ICttb2R1bGVfcGxh
dGZvcm1fZHJpdmVyKGlteF9zY190aGVybWFsX2RyaXZlcik7Cj4gKwo+ICtNT0RVTEVfQVVUSE9S
KCJBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4iKTsKPiArTU9EVUxFX0RFU0NSSVBU
SU9OKCJUaGVybWFsIGRyaXZlciBmb3IgTlhQIGkuTVggU29DcyB3aXRoIHN5c3RlbSBjb250cm9s
bGVyIik7Cj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIiKTsKPiAKCgotLSAKIDxodHRwOi8vd3d3
LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGlu
YXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVy
IHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
