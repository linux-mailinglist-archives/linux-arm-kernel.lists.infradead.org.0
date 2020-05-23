Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D001DFB29
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 23:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRkB2m7iElvgSW4TGCCOPouSpkOAVe6yLOcF+egKZy0=; b=Jcv2gkY6eOxf4n
	fAkEdtQMAm4c3QFpkedpARXn32uWhBYbhVl3thlxoW3TBkXwXnYJhzrrj/u2yQo5IRZy8beMvnVxm
	ZfRwCdckhiUjxru3BMWX2lPpECcQHL3Wmx3T69Clm++IKrmrWY+OweD3u8FNbsziIYRVyFEqe2smd
	EIuQkesnxnF0JcFM4GlcSkES4u7N7U1YWvW0Sgf6RFyGcfsaAcw5NC+pfUD8ldTk3hQ0iJqr5ePgS
	vFRiIHxupCciITtfvRVP2+7XvXe3nj8p7Dwmt9mw5oHWnJadKbxeTHG1Eih/nvZQ3NXBuSk/l5izT
	mN19Qo1il5X3FjgIyJ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcbdt-0006k1-Qn; Sat, 23 May 2020 21:25:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcbda-0006j6-Ux
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 21:25:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id i15so13669207wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 14:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NJ2Ob42mu1WcRBs7giOQLAtPZNJHbaZp1BDqey6K7MI=;
 b=RvXOPwQzi7tDJl6BuuNT+y72w1UWlBT6YIY4n4BW+N7mx1s25eT3SOYL0a9pqn8cC2
 /nBPem4vYFxmNYxWOqBWQBkn3sVJxdNgMXqEsPliPARPwF9s1cdC6EouAUyE7h3v+/a8
 y7iuF1oFpiLB+H18PuRb2HBsjEZ7Al9v6hTytkZV30xIf2RzrCZP/3duuJBeLAIbe50W
 JGL21qYqGJkk+wBcQh0h57UPVoK44bFcGk23ReI5MpTWxGaNgIq/69hQjTbr1mt1RCDh
 3zd7UC8LF7I/OMuKyUjUIQAVnrx3hLIapw5/dhAbfjTiqjhZqLkatPCYeJqpWjOkqGRD
 eEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NJ2Ob42mu1WcRBs7giOQLAtPZNJHbaZp1BDqey6K7MI=;
 b=MwZxWf3Rptnkxv+68l3NN9fbeiCgCQKdZ9Ec3oNjvcmsyHsya0y2Qpoh85g1GSHnTA
 Xhjit0WPaNJcmnWiq8OekUU+ZLNFZiJoZnTEFPonep5ovZ8srN+G6dq1Rtvs/ToPDeLY
 gt/58WZQDoBxJwLefs29asZc0LVIc6crN02y+z5PXSMPDMcAeMBJewIgbFd0r4JRnLRU
 JikpnIxFjh4s/f2BVFX+qMeFfayQxBUmMPJh9xaLtS+QjMlRB3n4bnUQQICwRulBG7SE
 djOM6bBjhUUf7UK+QcclNtaNKtHv8qTM+wcdIkTG2G/CXEYzKTCdq6yKKEwjbR34KCYs
 o8lg==
X-Gm-Message-State: AOAM530zH7qWW97U6H1Vz/nf1RjyoxL5VkhXdVQwI2My/t0JGzc/9CE1
 fN/Btij/xIZgMETfFzjF6dxQ3g==
X-Google-Smtp-Source: ABdhPJwe47bVscxaAhr9Nhu8+OAH/5API+xE2Yx2xK6omje0soqamC1EaKrcSCHT/ZrAugOuc2Jm7w==
X-Received: by 2002:a5d:6601:: with SMTP id n1mr793011wru.23.1590269095882;
 Sat, 23 May 2020 14:24:55 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:c871:e070:f68d:a4f7?
 ([2a01:e34:ed2f:f020:c871:e070:f68d:a4f7])
 by smtp.googlemail.com with ESMTPSA id c25sm12849479wmb.44.2020.05.23.14.24.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 14:24:55 -0700 (PDT)
Subject: Re: [RFC v3 1/2] thermal: core: Let thermal zone device's mode be
 stored in its struct
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
 <20200417162020.19980-1-andrzej.p@collabora.com>
 <20200417162020.19980-2-andrzej.p@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f39c5ca6-5efa-889c-21f5-632dfd24715e@linaro.org>
Date: Sat, 23 May 2020 23:24:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417162020.19980-2-andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_142459_028906_BF6ED75C 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>,
 Barlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcnplaiwKCk9uIDE3LzA0LzIwMjAgMTg6MjAsIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3
cm90ZToKPiBUaGVybWFsIHpvbmUgZGV2aWNlcycgbW9kZSBpcyBzdG9yZWQgaW4gaW5kaXZpZHVh
bCBkcml2ZXJzLiBUaGlzIHBhdGNoCj4gY2hhbmdlcyBpdCBzbyB0aGF0IG1vZGUgaXMgc3RvcmVk
IGluIHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlIGluc3RlYWQuCj4gCj4gQXMgYSByZXN1bHQg
YWxsIGRyaXZlci1zcGVjaWZpYyB2YXJpYWJsZXMgc3RvcmluZyB0aGUgbW9kZSBhcmUgbm90IG5l
ZWRlZAo+IGFuZCBhcmUgcmVtb3ZlZC4gQ29uc2VxdWVudGx5LCB0aGUgZ2V0X21vZGUoKSBpbXBs
ZW1lbnRhdGlvbnMgaGF2ZSBub3RoaW5nCj4gdG8gb3BlcmF0ZSBvbiBhbmQgbmVlZCB0byBiZSBy
ZW1vdmVkLCB0b28uCj4gCj4gU29tZSB0aGVybWFsIGZyYW1ld29yayBzcGVjaWZpYyBmdW5jdGlv
bnMgYXJlIGludHJvZHVjZWQ6Cj4gCj4gdGhlcm1hbF96b25lX2RldmljZV9nZXRfbW9kZSgpCj4g
dGhlcm1hbF96b25lX2RldmljZV9zZXRfbW9kZSgpCj4gdGhlcm1hbF96b25lX2RldmljZV9lbmFi
bGUoKQo+IHRoZXJtYWxfem9uZV9kZXZpY2VfZGlzYWJsZSgpCj4gCj4gdGhlcm1hbF96b25lX2Rl
dmljZV9nZXRfbW9kZSgpIGFuZCBpdHMgInNldCIgY291bnRlcnBhcnQgdGFrZSB0emQncyBsb2Nr
Cj4gYW5kIHRoZSAic2V0IiBjYWxscyBkcml2ZXIncyBzZXRfbW9kZSgpIGlmIHByb3ZpZGVkLCBz
byB0aGUgbGF0dGVyIG11c3QKPiBub3QgdGFrZSB0aGlzIGxvY2sgYWdhaW4uIEF0IHRoZSBlbmQg
b2YgdGhlICJzZXQiCj4gdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBpcyBjYWxsZWQgc28g
ZHJpdmVycyBkb24ndCBuZWVkIHRvIHJlcGVhdCB0aGlzCj4gaW52b2NhdGlvbiBpbiB0aGVpciBz
cGVjaWZpYyBzZXRfbW9kZSgpIGltcGxlbWVudGF0aW9ucy4KPiAKPiBUaGUgc2NvcGUgb2YgdGhl
IGFib3ZlIDQgZnVuY3Rpb25zIGlzIHB1cnBvc2VkbHkgbGltaXRlZCB0byB0aGUgdGhlcm1hbAo+
IGZyYW1ld29yayBhbmQgZHJpdmVycyBhcmUgbm90IHN1cHBvc2VkIHRvIGNhbGwgdGhlbS4gVGhp
cyBlbmNhcHN1bGF0aW9uCj4gZG9lcyBub3QgZnVsbHkgd29yayBhdCB0aGUgbW9tZW50IGZvciBz
b21lIGRyaXZlcnMsIHRob3VnaDoKPiAKPiAtIHBsYXRmb3JtL3g4Ni9hY2VyaGRmLmMKPiAtIGRy
aXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jCj4gLSBkcml2ZXJzL3RoZXJtYWwvaW50ZWwvaW50
ZWxfcXVhcmtfZHRzX3RoZXJtYWwuYwo+IC0gZHJpdmVycy90aGVybWFsL29mLXRoZXJtYWwuYwo+
IAo+IGFuZCB0aGV5IG1hbmlwdWxhdGUgc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UncyBtZW1i
ZXJzIGRpcmVjdGx5Lgo+IAo+IHN0cnVjdCB0aGVybWFsX3pvbmVfcGFyYW1zIGdhaW5zIGEgbmV3
IG1lbWJlciBjYWxsZWQgaW5pdGlhbF9tb2RlLCB3aGljaAo+IGlzIHVzZWQgdG8gc2V0IHR6ZCdz
IG1vZGUgYXQgcmVnaXN0cmF0aW9uIHRpbWUuCj4gCj4gVGhlIHN5c2ZzICJtb2RlIiBhdHRyaWJ1
dGUgaXMgYWx3YXlzIGV4cG9zZWQgZnJvbSBub3cgb24sIGJlY2F1c2UgYWxsCj4gdGhlcm1hbCB6
b25lIGRldmljZXMgbm93IGhhdmUgdGhlaXIgZ2V0X21vZGUoKSBpbXBsZW1lbnRlZCBhdCB0aGUg
Z2VuZXJpYwo+IGxldmVsIGFuZCBpdCBpcyBhbHdheXMgYXZhaWxhYmxlLiBFeHBvc2luZyAibW9k
ZSIgZG9lc24ndCBodXJ0IHRoZSBkcml2ZXJzCj4gd2hpY2ggZG9uJ3QgcHJvdmlkZSB0aGVpciBv
d24gc2V0X21vZGUoKSwgYmVjYXVzZSB3cml0aW5nIHRvICJtb2RlIiB3aWxsCj4gcmVzdWx0IGlu
IC1FUEVSTSwgYXMgZXhwZWN0ZWQuCgpUaGUgcmVzdWx0IGlzIGdyZWF0LCB0aGF0IGlzIGEgbmlj
ZSBjbGVhbnVwIG9mIHRoZSB0aGVybWFsIGZyYW1ld29yay4KCkFmdGVyIHJldmlldyBpdCBhcHBl
YXJzIHRoZXJlIGFyZSBzdGlsbCBwcm9ibGVtcyBJTU8sIGVzcGVjaWFsbHkgd2l0aAp0aGUgc3Vz
cGVuZCAvIHJlc3VtZSBwYXRoLiBUaGUgcGF0Y2ggaXMgYmlnLCBpdCBpcyBhIGJpdCBjb21wbGV4
IHRvCmNvbW1lbnQuIEkgc3VnZ2VzdCB0byByZS1vcmcgdGhlIGNoYW5nZXMgYXMgZm9sbG93aW5n
OgoKIC0gcGF0Y2ggMSA6IEFkZCB0aGUgZm91ciBmdW5jdGlvbnM6CgogKiB0aGVybWFsX3pvbmVf
ZGV2aWNlX3NldF9tb2RlKCkKICogdGhlcm1hbF96b25lX2RldmljZV9lbmFibGUoKQogKiB0aGVy
bWFsX3pvbmVfZGV2aWNlX2Rpc2FibGUoKQogKiB0aGVybWFsX3pvbmVfZGV2aWNlX2lzX2VuYWJs
ZWQoKQoKKmJ1dCogZG8gbm90IGV4cG9ydCB0aGVybWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKCks
IGl0IG11c3Qgc3RheSBwcml2YXRlCnRvIHRoZSB0aGVybWFsIGZyYW1ld29yayBBVE0uCgogLSBw
YXRjaCAyIDogQWRkIHRoZSBtb2RlIFRIRVJNQUxfREVWSUNFX1NVU1BFTkRFRAoKSW4gdGhlIHRo
ZXJtYWxfcG1fbm90aWZ5KCkgaW4gdGhlOgoKIC0gUE1fU1VTUEVORF9QUkVQQVJFIGNhc2UsIHNl
dCB0aGUgbW9kZSB0byBUSEVSTUFMX0RFVklDRV9TVVNQRU5ERUQgaWYKdGhlIG1vZGUgaXMgVEhF
Uk1BTF9ERVZJQ0VfRU5BQkxFRAoKIC0gUE1fUE9TVF9TVVNQRU5EIGNhc2UsIHNldCB0aGUgbW9k
ZSB0byBUSEVSTUFMX0RFVklDRV9FTkFCTEVELCBpZiB0aGUKbW9kZSBpcyBUSEVSTUFMX0RFVklD
RV9TVVNQRU5ERUQKCiAtIHBhdGNoIDMgOiBDaGFuZ2UgdGhlIG1vbml0b3IgZnVuY3Rpb24KCkNo
YW5nZSBtb25pdG9yX3RoZXJtYWxfem9uZSgpIGZ1bmN0aW9uIHRvIHNldCB0aGUgcG9sbGluZyB0
byB6ZXJvIGlmIHRoZQptb2RlIGlzIFRIRVJNQUxfREVWSUNFX0RJU0FCTEVECgogLSBwYXRjaCA0
IDogRG8gdGhlIGNoYW5nZXMgdG8gcmVtb3ZlIGdldF9tb2RlKCkgb3BzCgpNYWtlIHN1cmUgdGhl
cmUgaXMgbm8gYWNjZXNzIHRvIHR6LT5tb2RlIGZyb20gdGhlIGRyaXZlcnMgYW55bW9yZSBidXQK
dXNlIG9mIHRoZSBmdW5jdGlvbnMgb2YgcGF0Y2ggMS4gSU1PLCB0aGlzIGlzIHRoZSB0cmlja3kg
cGFydCBiZWNhdXNlIGEKcGFydCBvZiB0aGUgZHJpdmVycyBhcmUgbm90IGNhbGxpbmcgdGhlIHVw
ZGF0ZSBhZnRlciBzZXR0aW5nIHRoZSBtb2RlCndoaWxlIHRoZSBmdW5jdGlvbiB0aGVybWFsX3pv
bmVfZGV2aWNlX2VuYWJsZSgpL2Rpc2FibGUoKSBjYWxsIHVwZGF0ZQp2aWEgdGhlIHRoZXJtYWxf
em9uZV9kZXZpY2Vfc2V0X21vZGUoKSwgc28gd2UgbXVzdCBiZSBzdXJlIHRvIG5vdCBicmVhawph
bnl0aGluZy4KCiAtIHBhdGNoIDUgOiBEbyB0aGUgY2hhbmdlcyB0byByZW1vdmUgc2V0X21vZGUo
KSBvcHMgdXNlcnMKCkFzIHRoZSBwYXRjaCAzIHNldHMgdGhlIHBvbGxpbmcgdG8gemVybywgdGhl
IHJvdXRpbmUgaW4gdGhlIGRyaXZlcgpzZXR0aW5nIHRoZSBwb2xsaW5nIHRvIHplcm8gaXMgbm8g
bG9uZ2VyIG5lZWRlZCAoZWcuIGluIHRoZSBtZWxsYW5veApkcml2ZXIpLiBJIGV4cGVjdCBpbnQz
MDAgdG8gYmUgdGhlIGxhc3QgdXNlciBvZiB0aGlzIG9wcywgaG9wZWZ1bGx5IHdlCmNhbiBmaW5k
IGEgd2F5IHRvIGdldCByaWQgb2YgdGhlIHNwZWNpZmljIGNhbGwgZG9uZSBpbnNpZGUgYW5kIHRo
ZW4KcmVtb3ZlIHRoZSBvcHMuCgpUaGUgaW5pdGlhbF9tb2RlIGFwcHJvYWNoIGxvb2tzIGhhY2tp
c2gsIEkgc3VnZ2VzdCB0byBtYWtlIHRoZSBkZWZhdWx0CnRoZSB0aGVybWFsIHpvbmUgZGlzYWJs
ZWQgYWZ0ZXIgY3JlYXRpbmcgYW5kIHRoZW4gZXhwbGljaXRseSBlbmFibGUgaXQuCk5vdGUgdGhh
dCBpcyB3aGF0IGRvIGEgbG90IG9mIGRyaXZlcnMgYWxyZWFkeS4KCkhvcGVmdWxseSwgdGhlc2Ug
Y2hhbmdlcyBhcmUgZ2l0LWJpc2VjdCBzYWZlLgoKRG9lcyBpdCBtYWtlIHNlbnNlID8KCgoKCgoK
CgoKCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
