Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207051DFD45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 07:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAqBnxYTDz5d1zhDieedAziTFiUMy+VldwP6TNslUso=; b=KcydtQ+dmk5oYh
	YsgNi5kxZdV/2kkyR4NZJAdkRpADVaqbzwasqO3zLLRG1a0TyEAUNg1bQfpMz4aR+XC71AF2m2Gr2
	U8t2DX1sPcHwkm3zH8Qs0BZ4FUEUx08tJoz1ey0WcKJK31cHbq5xwB5zq3QO/eesz6Yif62b0Kj+6
	PUnOzrnJCwwKJVUu3TUMWSGldAukc6azo/aCm99MDCUkcb5H/iOxOGPhS5CXoFvXJKRnIQl3PEWC3
	eT/XAMnTkr+bhOLLaSppzbCgnoTY2bbvOnSDvwQT+vOJ1TSXy38Mz4wbZJqBqR7kX+q3pSwVMWMh2
	z72NM5ksLAvjfWuAmRPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcipa-0002uT-Ir; Sun, 24 May 2020 05:05:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcipQ-0002tw-EU
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 05:05:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so12425801wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 22:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yOIx32DzV9Yk/O3q4NLhph8Gyjxz3HGsJqmaZP5BXsg=;
 b=h0X98o+dRzjFWkvGg+RVmrUh81Ek8j36zAZtYtaLmx/I5qzSvxxpXToFKCvDnAmiwt
 4a8QEoW1hYjKF7mQxdP//+r98T0Saps4B16lcvA/xxDRC4tmjNyrddvVD21yllEM4WPX
 SA9Mh/jDUtVXRs8uN54riWl0nZGpRNVlApCSIXVIwlhmkGkRRN+zSxSSxHqHVANheISQ
 J42Wjgo0n/l6BipOl8pqdgbkAiglrtQso5igL+bn5ZS2Z1QYMNt9ZsLIemb6cZXoEMNc
 7QBoiRd2LMPeZmy+iu+2ZlnE6AKP4D87/XyLuRLPlN1K1KiXfEZX1iaEcHbtOUuvLYAi
 yrhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yOIx32DzV9Yk/O3q4NLhph8Gyjxz3HGsJqmaZP5BXsg=;
 b=iBwkI1sJEhTP5h/urzGlvc10jgIK5v16gAf9nRJODNZYYVIg7FopUdAiFcwA68y1Tc
 itlZpnVdSvidUEsNRTmo1lzj5ejAn0NaIWG9DKtwcdq2PcPLwOK65Mj7hUKFtQvPjyKu
 qXcmU1/Ng47gWh0bPB33YEtvEwibeD1wJ70k0E2D8TRaOKsCN7LRrwtK/JEn0iafVFv1
 792re6mN2FznMFSmRQAgrsl7+8/8ZTnhnuCYWEpuzCgGToOnJl4AIa42hB+3MnfbfMeB
 N1yqVJMPudzP5y6fLqXjjCWLO5wA8tB/nAHWaXR9G9zLZyRL8coAVLfjQyMxheB3IDzX
 biSw==
X-Gm-Message-State: AOAM533Sycno7QEjzUSW0hup6BgOTs7Bn7309x6j+fLDZAuqAc0y4jan
 LnnVUZrjUHA6XBnt6jr0E60aow==
X-Google-Smtp-Source: ABdhPJy5BIy2yzNSXBycuVdf4capa9hemit9Tyinx3iO/bYzMEVC0j8+1ysL4G44A6HziAp/xv3PTw==
X-Received: by 2002:a1c:27c2:: with SMTP id n185mr21596506wmn.68.1590296738569; 
 Sat, 23 May 2020 22:05:38 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:c871:e070:f68d:a4f7?
 ([2a01:e34:ed2f:f020:c871:e070:f68d:a4f7])
 by smtp.googlemail.com with ESMTPSA id h1sm14766532wme.42.2020.05.23.22.05.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 22:05:37 -0700 (PDT)
Subject: Re: [PATCH V3] thermal: imx: Add missing of_node_put()
To: Anson Huang <anson.huang@nxp.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1588128570-12917-1-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB391639FE30CD00F3371A0763F5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <e824c7a9-91ba-b44c-8e3f-f6dc39d6ec0e@linaro.org>
Date: Sun, 24 May 2020 07:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB391639FE30CD00F3371A0763F5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_220540_493649_5AA5EE2B 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDUvMjAyMCAwNToyNiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gR2VudGxlIHBpbmcuLi4K
Ckl0IGlzIGFwcGxpZWQsIHNvcnJ5IGZvciBub3QgbGV0dGluZyB5b3Uga25vdy4KCj4+IFN1Ympl
Y3Q6IFtQQVRDSCBWM10gdGhlcm1hbDogaW14OiBBZGQgbWlzc2luZyBvZl9ub2RlX3B1dCgpCj4+
Cj4+IEFmdGVyIGZpbmlzaGluZyB1c2luZyBjcHUgbm9kZSBnb3QgZnJvbSBvZl9nZXRfY3B1X25v
ZGUoKSwgb2Zfbm9kZV9wdXQoKQo+PiBuZWVkcyB0byBiZSBjYWxsZWQsIHRoZSBjcHVmcmVxIHBv
bGljeSBhbHNvIG5lZWRzIHRvIGJlIHB1dCB1bmNvbmRpdGlvbmFsbHkuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+PiAtLS0KPj4gQ2hhbmdl
cyBzaW5jZSBWMjoKPj4gCS0gY2FsbCBjcHVmcmVxX2NwdV9wdXQoKSB1bmNvbmRpdGlvbmFsbHkg
YWZ0ZXIgY29vbGluZyByZWdpc3RlciBkb25lLgo+PiAtLS0KPj4gIGRyaXZlcnMvdGhlcm1hbC9p
bXhfdGhlcm1hbC5jIHwgMTMgKysrKysrLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhl
cm1hbC9pbXhfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMKPj4gaW5k
ZXggZTc2MWM5Yi4uODc2NGNiNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy90aGVybWFsL2lteF90
aGVybWFsLmMKPj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMKPj4gQEAgLTY0
OSw3ICs2NDksNyBAQCBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBvZl9pbXhfdGhlcm1hbF9tYXRj
aCk7Cj4+IHN0YXRpYyBpbnQgaW14X3RoZXJtYWxfcmVnaXN0ZXJfbGVnYWN5X2Nvb2xpbmcoc3Ry
dWN0IGlteF90aGVybWFsX2RhdGEgKmRhdGEpCj4+IHsKPj4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wOwo+PiAtCWludCByZXQ7Cj4+ICsJaW50IHJldCA9IDA7Cj4+Cj4+ICAJZGF0YS0+cG9saWN5
ID0gY3B1ZnJlcV9jcHVfZ2V0KDApOwo+PiAgCWlmICghZGF0YS0+cG9saWN5KSB7Cj4+IEBAIC02
NjEsMjAgKzY2MSwxOSBAQCBzdGF0aWMgaW50Cj4+IGlteF90aGVybWFsX3JlZ2lzdGVyX2xlZ2Fj
eV9jb29saW5nKHN0cnVjdCBpbXhfdGhlcm1hbF9kYXRhICpkYXRhKQo+Pgo+PiAgCWlmICghbnAg
fHwgIW9mX2ZpbmRfcHJvcGVydHkobnAsICIjY29vbGluZy1jZWxscyIsIE5VTEwpKSB7Cj4+ICAJ
CWRhdGEtPmNkZXYgPSBjcHVmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIoZGF0YS0+cG9saWN5KTsKPj4g
LQkJaWYgKElTX0VSUihkYXRhLT5jZGV2KSkgewo+PiArCQlpZiAoSVNfRVJSKGRhdGEtPmNkZXYp
KQo+PiAgCQkJcmV0ID0gUFRSX0VSUihkYXRhLT5jZGV2KTsKPj4gLQkJCWNwdWZyZXFfY3B1X3B1
dChkYXRhLT5wb2xpY3kpOwo+PiAtCQkJcmV0dXJuIHJldDsKPj4gLQkJfQo+PiAgCX0KPj4KPj4g
LQlyZXR1cm4gMDsKPj4gKwljcHVmcmVxX2NwdV9wdXQoZGF0YS0+cG9saWN5KTsKPj4gKwlvZl9u
b2RlX3B1dChucCk7Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+PiAgfQo+Pgo+PiAgc3RhdGljIHZv
aWQgaW14X3RoZXJtYWxfdW5yZWdpc3Rlcl9sZWdhY3lfY29vbGluZyhzdHJ1Y3QgaW14X3RoZXJt
YWxfZGF0YQo+PiAqZGF0YSkgIHsKPj4gIAljcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3RlcihkYXRh
LT5jZGV2KTsKPj4gLQljcHVmcmVxX2NwdV9wdXQoZGF0YS0+cG9saWN5KTsKPj4gIH0KPj4KPj4g
ICNlbHNlCj4+IC0tCj4+IDIuNy40Cj4gCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
