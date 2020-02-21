Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399A0167DF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGwoQeVSGdPkRrP1UBk61b3dnqmP6uWipvUnTUQYMig=; b=meHs/SunQ+bGuw
	9oxF1AFu0yaERSX3m6vlfT7YorKboCgC/B1XGR17eeEIqh0a4hIH6fVevzD/S1INEWHXVLV1FEEY7
	8HjD8zsbq5vxWBQrT1kqL9a+mc99qk9Y9pvv9gJx1I3eSq4T1FVDXNKrbb0nV97W7S+5D/gBZPfPg
	Nsug76x4UlWiAfX0wT352GKUpMcTeFprHA0KcAIhg5s0z/Vq7yE1XLdSdRdAb6usd7AFGmN/ZMQiP
	AGRcqAAIlD7ODWfDri18GmILiHh0+FsNGg60yS5/dmLVHNjhk1eBy/WyyEpqEOpZPQ+CHF5ZatXg7
	nyvRZ25NDHrjVGbv8hqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j580B-0007lL-5o; Fri, 21 Feb 2020 13:05:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5801-0007kd-G1
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:05:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id u6so2011068wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Jmee0gPaCTfsOpWSoQjCJFto4t8cMGzSFxQTb3xz48k=;
 b=tOVwwD8qmpuy5R/iusBnSTi8xzbbMZqdDcRX1UOwcX8kYv5EzHXV5Ir5H2I6/HY6Hv
 GHf+wxF/Eu/sDmuamXnYsjUsxTYXICaKH1O67ZVlBrWMNCXCIY8FwA5CAIT5tRVzIm5R
 SzzKxvH5U9ZGw02P+TWARGK1gYUEDSeg0Nil+OEPJxqUoNA9ceBM1Xs+S2wAuJCu2a2t
 BcG8GYWfdv51wj9aVj+vQ6z1GkOcoaDsm2wii0rDsEMImic2AUBX6vBFegMWdWgq+3Dv
 Xqma0ebK4QQ3qXwG/wD/JNMq7nmiAXc4fiLJTXOZPl/Fg4IPEXNX+500312IIPGI2tC1
 Ht6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Jmee0gPaCTfsOpWSoQjCJFto4t8cMGzSFxQTb3xz48k=;
 b=HESCnCPEq5qiEsC8Q70i584Rx34FpkUGuXT14WQcSt5UbHSV3O1UcJk2VgcB4XZNh2
 237TWfVg+0K498pl4KkVlaNW34vq9+qCx9Kw8Hbs5lPSFZUnL63OQSOmAERk7CnoOwHm
 w+02y+NPNmf1TZPbUuZSE/V9swCVI+pgrYxgq/93XOcqD5+ouWtd3FHsSpYAwRHr6CR4
 D5p+leMAICbUvi3lrqrP2Qe9jScrr+v7uGKq+oLWbNls0gGkWfxGhLdViHEekiN3ch0p
 qCMlj5V8eoOe0VCX3/JTLrUQPZwP+Qrq9j794oIDZyTRz7kQRq2t7G5MUPHmiI3VNPH0
 1UdQ==
X-Gm-Message-State: APjAAAUHlJ3iI9Hhe69QxJ0LNYUP1BbtOq9U5TngB6ptJEWtjcSgHQsR
 nXr74U2WxSGzVn2TzfhZMaUfCg==
X-Google-Smtp-Source: APXvYqxdbqMgUjOMna0Vnnx+4FKMnwXT3QMS6vD/TsFNrXqcxXU3SY8DOXJ72CRLWnbQ393hdP3QPw==
X-Received: by 2002:a5d:53c1:: with SMTP id a1mr47209498wrw.373.1582290343755; 
 Fri, 21 Feb 2020 05:05:43 -0800 (PST)
Received: from linaro.org ([2a01:e34:ed2f:f020:2dfb:b5ce:9043:4adb])
 by smtp.gmail.com with ESMTPSA id y1sm3422496wrq.16.2020.02.21.05.05.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 05:05:43 -0800 (PST)
Date: Fri, 21 Feb 2020 14:05:40 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V15 RESEND 5/5] arm64: dts: imx: add i.MX8QXP thermal
 support
Message-ID: <20200221130540.GD10516@linaro.org>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_050545_530886_4E8E963D 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com, will@kernel.org, amit.kucheria@verdurent.com,
 festevam@gmail.com, krzk@kernel.org, marcin.juszkiewicz@linaro.org,
 Linux-imx@nxp.com, rui.zhang@intel.com, linux@roeck-us.net,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMjAsIDIwMjAgYXQgMDk6MTA6MjhBTSArMDgwMCwgQW5zb24gSHVhbmcgd3Jv
dGU6Cj4gQWRkIGkuTVg4UVhQIENQVSB0aGVybWFsIHpvbmUgc3VwcG9ydC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAtLS0KPiBObyBjaGFu
Z2UuCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaSB8
IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4cXhwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhw
LmR0c2kKPiBpbmRleCBmYjVmNzUyLi4wYTE0ZmU0IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQo+IEBAIC0xMSw2ICsxMSw3IEBACj4gICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGlu
Y3RybC9wYWRzLWlteDhxeHAuaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3RoZXJtYWwvdGhl
cm1hbC5oPgo+ICAKPiAgLyB7Cj4gIAlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+IEBAIC0x
ODksNiArMTkwLDExIEBACj4gIAkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhxeHAtc2Mtd2R0Iiwg
ImZzbCxpbXgtc2Mtd2R0IjsKPiAgCQkJdGltZW91dC1zZWMgPSA8NjA+Owo+ICAJCX07Cj4gKwo+
ICsJCXRzZW5zOiB0aGVybWFsLXNlbnNvciB7Cj4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhx
eHAtc2MtdGhlcm1hbCIsICJmc2wsaW14LXNjLXRoZXJtYWwiOwo+ICsJCQkjdGhlcm1hbC1zZW5z
b3ItY2VsbHMgPSA8MT47Cj4gKwkJfTsKPiAgCX07Cj4gIAo+ICAJdGltZXIgewo+IEBAIC01ODYs
NCArNTkyLDM0IEBACj4gIAkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiAgCQl9Owo+ICAJfTsKPiAr
Cj4gKwl0aGVybWFsX3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPiArCQljcHUtdGhlcm1hbDAgewo+
ICsJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjUwPjsKPiArCQkJcG9sbGluZy1kZWxheSA9
IDwyMDAwPjsKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2VucyBJTVhfU0NfUl9TWVNURU0+
Owo+ICsJCQl0cmlwcyB7Cj4gKwkJCQljcHVfYWxlcnQwOiB0cmlwMCB7Cj4gKwkJCQkJdGVtcGVy
YXR1cmUgPSA8MTA3MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5
cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9OwoKU2FtZSBjb21tZW50IGFzIHByZXZpb3VzIHBhdGNo
LgoKPiArCQkJCWNwdV9jcml0MDogdHJpcDEgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEyNzAw
MD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiArCQkJCQl0eXBlID0gImNyaXRpY2Fs
IjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwkJCWNvb2xpbmctbWFwcyB7Cj4gKwkJCQltYXAwIHsK
PiArCQkJCQl0cmlwID0gPCZjcHVfYWxlcnQwPjsKPiArCQkJCQljb29saW5nLWRldmljZSA9Cj4g
KwkJCQkJCTwmQTM1XzAgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiArCQkJ
CQkJPCZBMzVfMSBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8
JkEzNV8yIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCTwmQTM1
XzMgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPjsKPiArCQkJCX07Cj4gKwkJCX07
Cj4gKwkJfTsKPiArCX07Cj4gIH07Cj4gLS0gCj4gMi43LjQKPiAKCi0tIAoKIDxodHRwOi8vd3d3
LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGlu
YXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVy
IHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
