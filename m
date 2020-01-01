Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C95512E118
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 00:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JJPZj2mcN8dJSjY7xfkTgmQOE13JMwFdN/+QfhLTBCY=; b=p9y5d9gSM6NSswrjJONbk8izQ
	3d7SL29KCYUiMzjp31n4Cnapaocgczq9Tgxw4eNIRP8520CyOxcuoMbEHV9U2fhLcJpT7ux6Gzefd
	WBNoNL2+ABIn/u21h1aP2VLyb3KuWXeeJhA01Pi0L5mrDVK7k7lbtfwnK1fPzS837DBbytjlwhHSu
	+RyvFo09ZcEz8kClkdzsLP/lLx5DtVsmd6YPU20DHhMWR1QVATFeRRJhdtwcellI7eYaMJW3+lvgv
	roOL28tHHsu8Hrb4fZp09Q+XAnjFOLgZgGWHXnKvSs+1xD1dtLyHC3CEalGQ7Mf+wFaV5ulgJp2QU
	I8n36er/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imnim-0004GG-Or; Wed, 01 Jan 2020 23:48:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imnif-0004FZ-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 23:48:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so4332569wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 15:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=gUYrBkQ+daKM7r2bwts74eJuugw8V4ZwGOg11zcLs/U=;
 b=qeEcRA5OPa/zJkwVQpmOklcXkuNLL+AgdR+rJbbT//fqKNUWzFQeG2QlnnKDY8SULl
 gsNsynAKJZy15hMCtx4KdsNh58Jy0ALS0NMoIUp1nT1gz523qXeQzVBMwbCIEuwIPFqM
 ySlo31a26x+uyUIiGL9tmk/Y0fYd72JeVNwrvCFPl/xPb65RCEzFAwADUNYP8qLVk5iN
 vR1wO30R7suVEocjbvJcOdw5Iwq0eGBOZueaxtBkaqNEaXUJhN2/XVpbbjynorD02MYY
 LsCBoWL0SqQYlO5OSnXorE4mYxOmCo5B2PUu6Mbh7IBjJEI7EqglKZPM/k5lOXyeXwlU
 XacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gUYrBkQ+daKM7r2bwts74eJuugw8V4ZwGOg11zcLs/U=;
 b=nxftvbezIdQFjw2kF9XaDrx97fBDCZteJjDP/O+b9oM8c2MAEkrVpm+8O7mAFz7wIm
 V4APCaF+Z9Zq3MJlg+lr9dtmtkRgRgipP4C/8bN4tnGjzJ1vm010BMzxZlukTvuOpVT0
 vSbhm+Prsk/9UukkRnx6b93c63CZz9WCm6joQMDO+nQx7PMYRybXFj80lLPEdf1O57mq
 whVIxuStWw4ghWTHS56xbEfqgHNJ+jvOtBhIwSVD8hzmV2B7Azke0XJ3eP4t9Lm2eyml
 XaY2JkYhCn8K25exSwkCcAKT+1nG4P9vt76wA2mAzRHjaC6A+UxtWhGyRZ08UlRsdKDf
 RzwQ==
X-Gm-Message-State: APjAAAVlpzujjoQNiFhyvF3A5u3KB/dsfnrcsLoCZW6h6l5FOb+hKDbc
 kXhGaKEJqKY4ZiRevUZ4ZRI=
X-Google-Smtp-Source: APXvYqxaUT/FES2O2EvpE609nWlQnVrgiRgJyKSrfcvt8bZ3qEWm4B1r9DWbvafKOXbBmY7svMnKgQ==
X-Received: by 2002:a05:600c:218b:: with SMTP id
 e11mr10461702wme.121.1577922480213; 
 Wed, 01 Jan 2020 15:48:00 -0800 (PST)
Received: from ?IPv6:2a01:cb19:16b:9900:21b2:eaec:d723:ee6e?
 ([2a01:cb19:16b:9900:21b2:eaec:d723:ee6e])
 by smtp.gmail.com with ESMTPSA id u18sm53632781wrt.26.2020.01.01.15.47.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jan 2020 15:47:59 -0800 (PST)
From: Joris Offouga <offougajoris@gmail.com>
Subject: Re: [PATCH V3] ARM: dts: imx7d-pico: Add LCD support
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191029101742.9100-1-offougajoris@gmail.com>
 <20191030082718.oj4nq5li6mohf4tg@pengutronix.de>
Message-ID: <44787478-271d-4083-501d-2e5a52effd9e@gmail.com>
Date: Thu, 2 Jan 2020 00:47:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191030082718.oj4nq5li6mohf4tg@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_154805_609024_0CBCCC0C 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpTb3JyeSBmb3IgdGhlIGRlbGF5LAoKTGUgMzAvMTAvMjAxOSDDoCAwOToyNywg
TWFyY28gRmVsc2NoIGEgw6ljcml0wqA6Cj4gSGkgSm9yaXMsCj4KPiBPbiAxOS0xMC0yOSAxMTox
NywgSm9yaXMgT2Zmb3VnYSB3cm90ZToKPj4gRnJvbTogRmFiaW8gRXN0ZXZhbTxmZXN0ZXZhbUBn
bWFpbC5jb20+Cj4+Cj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgVlhUIFZMMDUwLTgwNDhOVC1DMDEg
cGFuZWwgY29ubmVjdGVkIHRocm91Z2gKPj4gdGhlIDI0IGJpdCBwYXJhbGxlbCBMQ0RJRiBpbnRl
cmZhY2UuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVzdGV2YW08ZmVzdGV2YW1AZ21haWwu
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBPdGF2aW8gU2FsdmFkb3I8b3RhdmlvQG9zc3lzdGVtcy5j
b20uYnI+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvcmlzIE9mZm91Z2E8b2Zmb3VnYWpvcmlzQGdtYWls
LmNvbT4KPj4gLS0tCj4+ICAgQ2hhbmdlcyB2MiAtPiB2Mwo+PiAJcmVuYW1lIHBpbnRjcmxfYmFj
a2xpZ2h0IHRvIHBpbmN0cmxfcHdtNAo+PiAJc29ydCB0aGUgbm9kZXMgYWxwaGFiZXRpY2FsCj4+
Cj4+ICAgQ2hhbmdlcyB2MSAtPiB2Mgo+PiAgIAljaGFuZ2UgIkZyb206IiBKb3JpcyBPZmZvdWdh
IHRvIEZhYmlvIEVzdGV2YW0KPj4gCXNldCBKb3JpcyBPZmZvdWdhIHNpZ25lZC1vZmYgdG8gdGhl
IGxhc3Qgb25lCj4+Cj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtcGljby5kdHNpIHwgODIg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA4MiBp
bnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1w
aWNvLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1waWNvLmR0c2kKPj4gaW5kZXggNmY1
MGViZjMxYTBhLi45YzdjMmM0NWU2YWEgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdkLXBpY28uZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1waWNvLmR0
c2kKPj4gQEAgLTcsMTIgKzcsNDAgQEAKPj4gICAjaW5jbHVkZSAiaW14N2QuZHRzaSIKPj4gICAK
Pj4gICAvIHsKPj4gKyAgICAgICAgYmFja2xpZ2h0OiBiYWNrbGlnaHQgewo+PiArICAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7Cj4+ICsgICAgICAgICAgICAgICAg
cHdtcyA9IDwmcHdtNCAwIDUwMDAwIDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGls
bCBub3QgbmVlZGVkCgpUaGlzIGlzIG5lY2Vzc2FyeSwgYmVjYXVzZSBpdCdzIG5vdCBwcm92aWRl
LCB3ZSBoYXZlIHRoaXMgd2FybmluZyA6CgogwqAgRFRDwqDCoMKgwqAgYXJjaC9hcm0vYm9vdC9k
dHMvaW14N2QtcGljby1waS5kdGIKYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtcGljby5kdHNpOjEy
LjE3LTQwOiBXYXJuaW5nIChwd21zX3Byb3BlcnR5KTogCi9iYWNrbGlnaHQ6cHdtczogcHJvcGVy
dHkgc2l6ZSAoMTIpIHRvbyBzbWFsbCBmb3IgY2VsbCBzaXplIDMKCj4+ICsgICAgICAgICAgICAg
ICAgYnJpZ2h0bmVzcy1sZXZlbHMgPSA8MCAzNiA3MiAxMDggMTQ0IDE4MCAyMTYgMjU1PjsKPj4g
KyAgICAgICAgICAgICAgICBkZWZhdWx0LWJyaWdodG5lc3MtbGV2ZWwgPSA8Nj47Cj4+ICsgICAg
ICAgIH07Cj4+ICsKPj4gICAJLyogV2lsbCBiZSBmaWxsZWQgYnkgdGhlIGJvb3Rsb2FkZXIgKi8K
Pj4gICAJbWVtb3J5QDgwMDAwMDAwIHsKPj4gICAJCWRldmljZV90eXBlID0gIm1lbW9yeSI7Cj4+
ICAgCQlyZWcgPSA8MHg4MDAwMDAwMCAwPjsKPj4gICAJfTsKPj4gICAKPj4gKyAgICAgICAgcGFu
ZWwgewo+PiArICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAidnh0LHZsMDUwLTgwNDhudC1j
MDEiOwo+PiArICAgICAgICAgICAgICAgIGJhY2tsaWdodCA9IDwmYmFja2xpZ2h0PjsKPj4gKyAg
ICAgICAgICAgICAgICBwb3dlci1zdXBwbHkgPSA8JnJlZ19sY2RfM3YzPjsKPj4gKwo+PiArICAg
ICAgICAgICAgICAgIHBvcnQgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgcGFuZWxfaW46
IGVuZHBvaW50IHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVu
ZHBvaW50ID0gPCZkaXNwbGF5X291dD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICB9Owo+
PiArICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgIH07Cj4+ICsKPj4gKwlyZWdfbGNkXzN2
MzogcmVndWxhdG9yLWxjZC0zdjMgewo+PiArICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLWZpeGVkIjsKPj4gKyAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJs
Y2QtM3YzIjsKPj4gKyAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwz
MzAwMDAwPjsKPj4gKyAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwz
MzAwMDAwPjsKPj4gKyAgICAgICAgICAgICAgICBncGlvID0gPCZncGlvMSA2IEdQSU9fQUNUSVZF
X0hJR0g+Owo+IFdoZXJlIGhhcHBlbnMgdGhlIG11eGluZyBmb3IgdGhpcyBncGlvPwoKSSBhZGQg
aXQgZm9yIFY0CgpUaGFua3MKCj4KPj4gKyAgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhp
Z2g7Cj4+ICsgICAgICAgIH07Cj4+ICsKPj4gICAJcmVnX3dscmVnX29uOiByZWd1bGF0b3Itd2xy
ZWdfb24gewo+PiAgIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiAgIAkJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gQEAgLTIzMCw2ICsyNTgsMTggQEAKPj4gICAJfTsK
Pj4gICB9Owo+PiAgIAo+PiArJmxjZGlmIHsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+PiArCXBpbmN0cmwtMCA9IDwmcGluY3RybF9sY2RpZj47Cj4+ICsJc3RhdHVzID0gIm9rYXki
Owo+PiArCj4+ICsJcG9ydCB7Cj4+ICsJCWRpc3BsYXlfb3V0OiBlbmRwb2ludCB7Cj4+ICsJCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luPjsKPj4gKwkJfTsKPj4gKwl9Owo+PiArfTsKPj4g
Kwo+PiAgICZzYWkxIHsKPj4gICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gICAJcGlu
Y3RybC0wID0gPCZwaW5jdHJsX3NhaTE+Owo+PiBAQCAtMjYwLDYgKzMwMCw4IEBACj4+ICAgfTsK
Pj4gICAKPj4gICAmcHdtNCB7IC8qIEJhY2tsaWdodCAqLwo+PiArCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4+ICsJcGluY3RybC0wID0gPCZwaW5jdHJsX3B3bTQ+Owo+PiAgIAlzdGF0dXMg
PSAib2theSI7Cj4+ICAgfTsKPj4gICAKPj4gQEAgLTQxMyw2ICs0NTUsNDAgQEAKPj4gICAJCT47
Cj4+ICAgCX07Cj4+ICAgCj4+ICsJcGluY3RybF9sY2RpZjogbGNkaWZncnAgewo+PiArCQlmc2ws
cGlucyA9IDwKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRBMDBfX0xDRF9EQVRBMAkJMHg3OQo+PiAr
CQkJTVg3RF9QQURfTENEX0RBVEEwMV9fTENEX0RBVEExCQkweDc5Cj4+ICsJCQlNWDdEX1BBRF9M
Q0RfREFUQTAyX19MQ0RfREFUQTIJCTB4NzkKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRBMDNfX0xD
RF9EQVRBMwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEwNF9fTENEX0RBVEE0CQkweDc5
Cj4+ICsJCQlNWDdEX1BBRF9MQ0RfREFUQTA1X19MQ0RfREFUQTUJCTB4NzkKPj4gKwkJCU1YN0Rf
UEFEX0xDRF9EQVRBMDZfX0xDRF9EQVRBNgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEw
N19fTENEX0RBVEE3CQkweDc5Cj4+ICsJCQlNWDdEX1BBRF9MQ0RfREFUQTA4X19MQ0RfREFUQTgJ
CTB4NzkKPj4gKwkJCU1YN0RfUEFEX0xDRF9EQVRBMDlfX0xDRF9EQVRBOQkJMHg3OQo+PiArCQkJ
TVg3RF9QQURfTENEX0RBVEExMF9fTENEX0RBVEExMAkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENE
X0RBVEExMV9fTENEX0RBVEExMQkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExMl9fTENE
X0RBVEExMgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExM19fTENEX0RBVEExMwkJMHg3
OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExNF9fTENEX0RBVEExNAkJMHg3OQo+PiArCQkJTVg3
RF9QQURfTENEX0RBVEExNV9fTENEX0RBVEExNQkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RB
VEExNl9fTENEX0RBVEExNgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExN19fTENEX0RB
VEExNwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEExOF9fTENEX0RBVEExOAkJMHg3OQo+
PiArCQkJTVg3RF9QQURfTENEX0RBVEExOV9fTENEX0RBVEExOQkJMHg3OQo+PiArCQkJTVg3RF9Q
QURfTENEX0RBVEEyMF9fTENEX0RBVEEyMAkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEy
MV9fTENEX0RBVEEyMQkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEyMl9fTENEX0RBVEEy
MgkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0RBVEEyM19fTENEX0RBVEEyMwkJMHg3OQo+PiAr
CQkJTVg3RF9QQURfTENEX0NMS19fTENEX0NMSwkJMHg3OQo+PiArCQkJTVg3RF9QQURfTENEX0VO
QUJMRV9fTENEX0VOQUJMRQkJMHg3OAo+PiArCQkJTVg3RF9QQURfTENEX1ZTWU5DX19MQ0RfVlNZ
TkMJCTB4NzgKPj4gKwkJCU1YN0RfUEFEX0xDRF9IU1lOQ19fTENEX0hTWU5DCQkweDc4Cj4+ICsJ
CQlNWDdEX1BBRF9MQ0RfUkVTRVRfX0dQSU8zX0lPNAkJMHgxNAo+PiArCQk+Owo+PiArCX07Cj4+
ICsKPj4gICAJcGluY3RybF9wd20xOiBwd20xIHsKPj4gICAJCWZzbCxwaW5zID0gPAo+PiAgIAkJ
CU1YN0RfUEFEX0dQSU8xX0lPMDhfX1BXTTFfT1VUICAgMHg3Zgo+PiBAQCAtNDMxLDYgKzUwNywx
MiBAQAo+PiAgIAkJPjsKPj4gICAJfTsKPj4gICAKPj4gKwlwaW5jdHJsX3B3bTQ6IHB3bTRncnB7
Cj4+ICsJCWZzbCxwaW5zID0gPAo+PiArCQkJTVg3RF9QQURfR1BJTzFfSU8xMV9fUFdNNF9PVVQJ
MHgwCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJcyB0
aGlzIG11eGluZyB2YWx1ZSB2YWxpZD8KCkkgZml4IGZvciBWNAoKUmVnYXJkcywKCkpvcmlzCgo+
Cj4gUmVnYXJkcywKPiAgICBNYXJjbwo+Cj4+ICsJCT47Cj4+ICsJfTsKPj4gKwo+PiAgIAlwaW5j
dHJsX3JlZ193bHJlZ19vbjogcmVncmVnb25ncnAgewo+PiAgIAkJZnNsLHBpbnMgPSA8Cj4+ICAg
CQkJTVg3RF9QQURfRUNTUEkxX1NDTEtfX0dQSU80X0lPMTYJMHg1OQo+PiAtLSAKPj4gMi4xNy4x
Cj4+Cj4+Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
