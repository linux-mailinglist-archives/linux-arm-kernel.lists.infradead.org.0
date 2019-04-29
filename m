Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08434E2C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q253l/VH4t97mywuUumGVj64wF9kQhGU/iobk5kmohA=; b=dGRihAO3IUze4HWk4hnruB0kY
	uTQ4sScAfe8ZGwZ1dk7XNuK1xvQbd2yHoI/+QZVe7C4BXVTz2Yx6H1Y4gkGe19qCf+ofNlPX/rlOF
	j/OpeIedQnzjP00g/qr16CQN98m93DEwCK8NrpTOFzGgsg8yhKAaSq9zLOyKZhcYI4knj6pTQQ/Vk
	1mjvTF3g+VPaNFB3Q7um2BMt6nJi8Vrsoh2bsPwwVwJKbFlkPGvrnQnwqieJtBGUhLuK+S0yEWE30
	v0JEmxlpmnwaQZX2zDCFom7eTnfXu83/+pYWDB3s3emDgiH83CQDyCXPF0NfkaG1jewvz8T3bGVE2
	wosJVXM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5XA-000867-GJ; Mon, 29 Apr 2019 12:37:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5X2-00085d-NX
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:37:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so660637pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 05:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IFFzNMvg4aerENLfoVLpjXioHRtFuVQGNKde3eyKf2o=;
 b=kUzvsZgiT/vZOoQBDblCuDWc2xBq3/p/XLRYif4EdTRu7LHjaDHXFHZNHH4/WiyL49
 BFUATnWaUZUmmOML1cQDU3umMAgvywNPupBwmxJLiyaaGY/egWRe54BAx8NuORGVJV2h
 fUDYyQ0ugCVbo5DgO6ceY1VCOCNqGlx7yVArpylBWsVFAKyq1m13v2ZBMSRsFH+LfiZS
 pt43nKjYoYRAhcFJh0jX7FaGCwBu5kMopD/LI0SIW44J0aE2g2rL8T7PIDCrHfaT8Mmt
 hV4E2MRIz3DlQrVTfI3uWwNtlCuZumLIyF1yD4iwmBQ8uh+/44DIDdl5G7JmOnre55Jp
 D6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IFFzNMvg4aerENLfoVLpjXioHRtFuVQGNKde3eyKf2o=;
 b=cnBUcNlKWoH59TwFlZCEUBVnGbRMCoA5N146uZ6HH4JP19tkpKz/CYreq0Fh50jpY0
 UiQ3HK5rSpACv+crLWP1hHqNkWV85hPhqSqgkqTlrWBGDrKDBOYEXfSqNvkXna0YoEQq
 4ET6lr+GTRVmRRgS96Rz6kfMT1fRnvsvNjGsIXb5hMla/Cz/c1tJsQjUW8E7adGMYZWS
 SqD/ZMBd6Io2l0FcS5Ci1FuW6W9XGBn2UTlSzEtVqVHoosUOZTyusrIIKVhENJSMO2TI
 R4iumvFbdeNXKnHJqb/9S2SFSF9hu86LoHb5YWm3KMn88pV22sCY9J8448iad7PrmsR/
 Z9iQ==
X-Gm-Message-State: APjAAAVMgjlHq0+KJ/YCQULEfAAUI533BBH/RvpBzzZudfOS3aDI4k6n
 E1QUqh4JAB5WbUUwd3LiL9A=
X-Google-Smtp-Source: APXvYqz8WBIp2QXPGhZOJ8h2HONqwn9VJsro+NHjmts6JEem1OPzitZz3lO4ksu72pUB8WSIztA16Q==
X-Received: by 2002:aa7:8392:: with SMTP id u18mr64414760pfm.217.1556541435352; 
 Mon, 29 Apr 2019 05:37:15 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j16sm43555013pfi.58.2019.04.29.05.37.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 05:37:14 -0700 (PDT)
Subject: Re: [PATCH v3 08/16] watchdog: imx_sc_wdt: drop warning after calling
 watchdog_init_timeout
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20190419181601.7412-1-wsa+renesas@sang-engineering.com>
 <20190419181601.7412-9-wsa+renesas@sang-engineering.com>
 <20190429101558.6vyiospb6oqsstt7@pengutronix.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <616a9d4e-7050-a6c2-727d-f62e08d3d98c@roeck-us.net>
Date: Mon, 29 Apr 2019 05:37:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429101558.6vyiospb6oqsstt7@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_053716_767827_FB4FA437 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8yOS8xOSAzOjE1IEFNLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBPbiBGcmksIEFw
ciAxOSwgMjAxOSBhdCAwODoxNTo1M1BNICswMjAwLCBXb2xmcmFtIFNhbmcgd3JvdGU6Cj4+IFRo
ZSBjb3JlIHdpbGwgcHJpbnQgb3V0IGRldGFpbHMgbm93Lgo+Pgo+PiBSZXZpZXdlZC1ieTogR3Vl
bnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+PiBTaWduZWQtb2ZmLWJ5OiBXb2xmcmFt
IFNhbmcgPHdzYStyZW5lc2FzQHNhbmctZW5naW5lZXJpbmcuY29tPgo+PiAtLS0KPj4gICBkcml2
ZXJzL3dhdGNoZG9nL2lteF9zY193ZHQuYyB8IDUgKy0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3dhdGNoZG9nL2lteF9zY193ZHQuYyBiL2RyaXZlcnMvd2F0Y2hkb2cvaW14X3NjX3dkdC5jCj4+
IGluZGV4IDg2YzI3MjJmMmEwOS4uNmRjMjRjZWIxYjJjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3dhdGNoZG9nL2lteF9zY193ZHQuYwo+PiArKysgYi9kcml2ZXJzL3dhdGNoZG9nL2lteF9zY193
ZHQuYwo+IAo+IFRoaXMgZHJpdmVyIGlzbid0IGluIG5leHQsIGFuZCBJIGRvbid0IGtub3cgd2hl
cmUgdG8gbG9vayBmb3IgaXQuCj4gCgpCcmFuY2ggd2F0Y2hkb2ctbmV4dCBvZgpnaXQ6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZ3JvZWNrL2xpbnV4LXN0YWdpbmcu
Z2l0Cgo+PiBAQCAtMTE3LDEwICsxMTcsNyBAQCBzdGF0aWMgaW50IGlteF9zY193ZHRfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gICAJaW14X3NjX3dkZC0+cGFyZW50ID0g
JnBkZXYtPmRldjsKPj4gICAJaW14X3NjX3dkZC0+dGltZW91dCA9IERFRkFVTFRfVElNRU9VVDsK
Pj4gICAKPj4gLQlyZXQgPSB3YXRjaGRvZ19pbml0X3RpbWVvdXQoaW14X3NjX3dkZCwgMCwgJnBk
ZXYtPmRldik7Cj4+IC0JaWYgKHJldCkKPj4gLQkJZGV2X3dhcm4oJnBkZXYtPmRldiwgIkZhaWxl
ZCB0byBzZXQgdGltZW91dCB2YWx1ZSwgdXNpbmcgZGVmYXVsdFxuIik7Cj4+IC0KPj4gKwl3YXRj
aGRvZ19pbml0X3RpbWVvdXQoaW14X3NjX3dkZCwgMCwgJnBkZXYtPmRldik7Cj4gCj4gT25lIHNp
ZGUgZWZmZWN0IGlzIGhvd2V2ZXIgdGhhdCByZXQgaXNuJ3Qgc2V0IGFueSBtb3JlLiBTbyBJIHdv
bmRlciBpZiBhCj4gZmFpbHVyZSBpbiB3YXRjaGRvZ19pbml0X3RpbWVvdXQoKSByZWFsbHkgbWFr
ZXMgdGhlIGNvcmUgcHJpbnQgdGhlCj4gZGV0YWlscyBhcyBleHBlY3RlZC4KPiAKClNvcnJ5LCBJ
IGRvbid0IHVuZGVyc3RhbmQuIFRoZSB3YXJuaW5nIGlzIHByaW50ZWQgaW4gd2F0Y2hkb2dfaW5p
dF90aW1lb3V0KCkuCldoYXQgZG9lcyB0aGF0IGhhdmUgdG8gZG8gd2l0aCBzZXR0aW5nIHJldCBo
ZXJlIG9yIG5vdCA/CgpUaGFua3MsCkd1ZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
