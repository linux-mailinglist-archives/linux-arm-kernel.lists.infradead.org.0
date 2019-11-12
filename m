Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF0AF93A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xo2IoAhYSCN8UrPz7NdI6bueVFack/SmAoBI38/Mns=; b=ekQ2LD0neqDKGI
	ZMoZk+4rUjeNePbik7GzpNSjeplyJWcIFIpAFfC0Fvj5KJxKV9BC3USgsCQNzZWcDkqYCnDBPmSog
	3dlLkLnJHCN7vTd3DEFVpJmLCikghVnXP3/uC31zmPHCeT4iPYHbK7lnu2mQk0mht7XleE6oJ7iMB
	qD0oJuroyZ6yQBrINZ6Cj4cL+/knl9ctBo/0XKCc8KJrycT7OKm45YPA/RyXrfqA5+0D/EQypyfte
	aFTgm6kIH0ZNZMjNC0o5spckR+Q/vBCOpsKafCixQ7Mx+Aji2FcMdmRKL7q8e74ffLxxP+Hk1LcjQ
	s2VF4PMi0RfRiesceUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXm4-0007Vg-Gm; Tue, 12 Nov 2019 15:08:08 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXlw-0007Ur-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:08:02 +0000
Received: by mail-ed1-x542.google.com with SMTP id m13so15155516edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 07:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=kOStVigV/ao9Pr/GeN1G2ZcF7mW8l2LQik/N+UCJ45s=;
 b=T3+x6Hj/TiGsag6Iwv5Naomkx/gSIg7a2tErPavcNyw8w4Q5tLV+fq49S+xc+FaE0n
 4uXnEuW8PthxCFusicrrkE6jp05NoEArp2URtaSknD/cfVJKjp3Mr/Klk8fiRUIGk3LU
 j9hFSSmF0w9KVX8FZKq6LDVe9uwtuY1cAO2Wcbh+k/SOVhyDtJOxHAUuKGNouw8OeUfb
 W1poc0OuS/f+Tf0P6ohQ906PWFkq4VOvYBHRUORQ+uvV+f7ZP8zLTVkz6N2UZnnLt1C3
 oTAsLhC/NVp4moymSF2IDlRLumiUbNDCMgbE9+Bq6CfRh1ktD2LfUYJHlUAYuJnQ6Y0L
 S0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kOStVigV/ao9Pr/GeN1G2ZcF7mW8l2LQik/N+UCJ45s=;
 b=LzOC42mDwehg8e8uYBMHNUKboReewevQKb/E4IPS+7oco7WgTMBaLRVdPXzZQY/mc8
 ladD2RNs9bFbDcYgRVBzZAF+bZ4zKDXlF6jdjfeh06tlDYDE/t+xF01RhR3WI/wOvmjw
 sElZYBjldb0ZJTmu+uDO7QwjBYKy3Vg1c87iRgJgBZxeC5VyzzaLXy2yv7MpfnRiBPor
 jnkVc0VWCw4VNqZB8ulwiK0LaVZY700Cux9RbtrosJ8ppIiyvLFdMZPUfQR7umTaGFR9
 tkE+sfh2qLpHhQjcHBbs2bjMzN/Zjh7V6AHLmrljBVlDxxxqEyG3CfRicxGv+5mpP8IB
 A4cg==
X-Gm-Message-State: APjAAAUj/4y8yoBL3211MFTBaDB3+v6Oaxc1uhIESA145qU3uNHJVbkH
 H+dBDQo67DTA/OL0YZUJziCmG2iE0O0=
X-Google-Smtp-Source: APXvYqwSF5A1cDuRpzgijULpsjox+9qAbmclvLnSWDqTQfrWe2QPOPZMe370t3Q9fr9XVpl+78OzcA==
X-Received: by 2002:a17:906:e88:: with SMTP id
 p8mr28420476ejf.15.1573571278249; 
 Tue, 12 Nov 2019 07:07:58 -0800 (PST)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id e13sm703823edm.29.2019.11.12.07.07.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 07:07:57 -0800 (PST)
Subject: Re: [PATCH RFC v5 05/10] interconnect: Add imx core driver
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>
References: <cover.1572562150.git.leonard.crestez@nxp.com>
 <3f8b65aa7a7eabaedeee27d5bcf8220982ac3597.1572562150.git.leonard.crestez@nxp.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <4fa190b5-b040-b093-9313-e9ccbc9b1da5@linaro.org>
Date: Tue, 12 Nov 2019 17:07:55 +0200
MIME-Version: 1.0
In-Reply-To: <3f8b65aa7a7eabaedeee27d5bcf8220982ac3597.1572562150.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_070800_992690_83B549E7 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGVvbmFyZCwKClRoYW5rcyBmb3IgdGhlIHBhdGNoIQoKT24gMS4xMS4xOSDQsy4gMDo1MiDR
hy4sIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBUaGlzIGFkZHMgc3VwcG9ydCBmb3IgaS5NWCBT
b0MgZmFtaWx5IHRvIGludGVyY29ubmVjdCBmcmFtZXdvcmsuCj4gCj4gUGxhdGZvcm0gZHJpdmVy
cyBjYW4gZGVzY3JpYmUgdGhlIGludGVyY29ubmVjdCBncmFwaCBhbmQgc2V2ZXJhbAo+IGFkanVz
dG1lbnQga25vYnMgd2hlcmUgaWNjIG5vZGUgYmFuZHdpZHRoIGlzIGNvbnZlcnRlZCB0byBhCj4g
REVWX1BNX1FPU19NSU5fRlJFUVVFTkNZIHJlcXVlc3QuCj4gCj4gVGhlIGFkanVzdGFibGUgbm9k
ZXMgYXJlIGZvdW5kIGJhc2VkIG9uIGFuICJpbnRlcmNvbm5lY3Qtbm9kZS1pZCIKPiBwcm9wZXJ0
eSBieSBzY2FubmluZyB0aGUgZW50aXJlIGRldmljZSB0cmVlLgoKQXJlIHRoZSBhZGp1c3RhYmxl
IG5vZGVzIFNvQyBzcGVjaWZpYz8gQ2FuIHdlIGhhdmUgdGhlbSBoZXJlIGluIHRoZSBkcml2ZXIK
aW5zdGVhZCBvZiBzY2FubmluZyB0aGUgZW50aXJlIGRldmljZSB0cmVlPwoKPiBUaGUgaW50ZXJj
b25uZWN0IHByb3ZpZGVyIGRvZXNuJ3QgbmVlZCBhbiB2aXJ0dWFsIE9GIG5vZGUsIGluc3RlYWQg
dGhvc2UKPiBzYW1lIGFkanVzdGFibGUgbm9kZXMgYXJlIHJlZ2lzdGVyZWQgYXMgcHJveGllcyB3
aGljaCB4bGF0ZSB0byB0aGUKPiBwbGF0Zm9ybS1sZXZlbCBwcm92aWRlci4KPiAKPiBUaGUgcGxh
dGZvcm0gZGV2aWNlIGZvciB0aGUgaW50ZXJjb25uZWN0IG5lZWRzIHRvIGJlIHJlZ2lzdGVyZWQg
ZnJvbSBhCj4gU09DIGRyaXZlciAoc2ltaWxhciB0byBjcHVmcmVxKS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBBbGV4YW5kcmUgQmFpbG9uIDxhYmFpbG9uQGJheWxpYnJlLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2ludGVyY29ubmVjdC9LY29uZmlnICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2ludGVy
Y29ubmVjdC9NYWtlZmlsZSAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9pbXgv
S2NvbmZpZyAgfCAgIDUgKwo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9pbXgvTWFrZWZpbGUgfCAg
IDEgKwo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9pbXgvaW14LmMgICAgfCAyNzMgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9pbXguaCAg
ICB8ICA2MCArKysrKysrCj4gIDYgZmlsZXMgY2hhbmdlZCwgMzQxIGluc2VydGlvbnMoKykKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9LY29uZmlnCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2ludGVyY29ubmVjdC9pbXgvTWFrZWZpbGUKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9pbXguYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9pbnRlcmNvbm5lY3QvaW14L2lteC5oCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L0tjb25maWcgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9L
Y29uZmlnCj4gaW5kZXggYjZlYThmMGE2MTIyLi5mNTdlNzdiODczMWMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9pbnRlcmNvbm5lY3QvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0
L0tjb25maWcKPiBAQCAtMTAsNyArMTAsOCBAQCBtZW51Y29uZmlnIElOVEVSQ09OTkVDVAo+ICAJ
ICBJZiB1bnN1cmUsIHNheSBuby4KPiAgCj4gIGlmIElOVEVSQ09OTkVDVAo+ICAKPiAgc291cmNl
ICJkcml2ZXJzL2ludGVyY29ubmVjdC9xY29tL0tjb25maWciCj4gK3NvdXJjZSAiZHJpdmVycy9p
bnRlcmNvbm5lY3QvaW14L0tjb25maWciCj4gIAo+ICBlbmRpZgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2ludGVyY29ubmVjdC9NYWtlZmlsZSBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L01ha2VmaWxl
Cj4gaW5kZXggMjhmMmFiMDgyNGQ1Li4yMGExM2I3ZWIzN2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9pbnRlcmNvbm5lY3QvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9NYWtl
ZmlsZQo+IEBAIC0yLDUgKzIsNiBAQAo+ICAKPiAgaWNjLWNvcmUtb2JqcwkJCQk6PSBjb3JlLm8K
PiAgCj4gIG9iai0kKENPTkZJR19JTlRFUkNPTk5FQ1QpCQkrPSBpY2MtY29yZS5vCj4gIG9iai0k
KENPTkZJR19JTlRFUkNPTk5FQ1RfUUNPTSkJCSs9IHFjb20vCj4gK29iai0kKENPTkZJR19JTlRF
UkNPTk5FQ1RfSU1YKQkJKz0gaW14Lwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2ludGVyY29ubmVj
dC9pbXgvS2NvbmZpZyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9LY29uZmlnCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjdkODFkM2M4M2E2MQo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9pbXgvS2NvbmZpZwo+IEBAIC0w
LDAgKzEsNSBAQAo+ICtjb25maWcgSU5URVJDT05ORUNUX0lNWAo+ICsJYm9vbCAiaS5NWCBpbnRl
cmNvbm5lY3QgZHJpdmVycyIKPiArCWRlcGVuZHMgb24gQVJDSF9NWEMgfHwgQ09NUElMRV9URVNU
Cj4gKwloZWxwCj4gKwkgIEdlbmVyaWMgaW50ZXJjb25uZWN0IGRyaXZlciBmb3IgaS5NWCBTT0Nz
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2lteC9NYWtlZmlsZSBiL2RyaXZl
cnMvaW50ZXJjb25uZWN0L2lteC9NYWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi5iYjkyZmQ5ZmU0YTUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJp
dmVycy9pbnRlcmNvbm5lY3QvaW14L01ha2VmaWxlCj4gQEAgLTAsMCArMSBAQAo+ICtvYmotJChD
T05GSUdfSU5URVJDT05ORUNUX0lNWCkgKz0gaW14Lm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9p
bnRlcmNvbm5lY3QvaW14L2lteC5jIGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvaW14L2lteC5jCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjdkMjQ4ZTAxZGNmMAo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9pbXgvaW14LmMKPiBA
QCAtMCwwICsxLDI3MyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
ICsvKgo+ICsgKiBJbnRlcmNvbm5lY3QgZnJhbWV3b3JrIGRyaXZlciBmb3IgaS5NWCBTb0MKPiAr
ICoKPiArICogQ29weXJpZ2h0IChjKSAyMDE5LCBCYXlMaWJyZQo+ICsgKiBDb3B5cmlnaHQgKGMp
IDIwMTksIE5YUAo+ICsgKiBBdXRob3I6IEFsZXhhbmRyZSBCYWlsb24gPGFiYWlsb25AYmF5bGli
cmUuY29tPgo+ICsgKiBBdXRob3I6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54
cC5jb20+Cj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2RldmZyZXEuaD4KPiArI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJjb25uZWN0LXByb3Zp
ZGVyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29m
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L3BtX3Fvcy5oPgo+ICsKPiArI2luY2x1ZGUgImlteC5oIgo+ICsKPiArLyogcHJpdmF0ZSBp
Y2NfcHJvdmlkZXIgZGF0YSAqLwo+ICtzdHJ1Y3QgaW14X2ljY19wcm92aWRlciB7Cj4gKwlzdHJ1
Y3QgZGV2aWNlICpkZXY7CgpXaGF0IGRldmljZSBpcyB0aGlzPyBUaGVyZSBpcyBhbHJlYWR5IGEg
KmRldiBpbiBzdHJ1Y3QgaWNjX3Byb3ZpZGVyLgpQbGVhc2UgYWRkIGtlcm5lbC1kb2MuCgo+ICt9
Owo+ICsKPiArLyogcHJpdmF0ZSBpY2Nfbm9kZSBkYXRhICovCj4gK3N0cnVjdCBpbXhfaWNjX25v
ZGUgewo+ICsJY29uc3Qgc3RydWN0IGlteF9pY2Nfbm9kZV9kZXNjICpkZXNjOwo+ICsJc3RydWN0
IGRldmZyZXEgKmRldmZyZXE7Cj4gKwlzdHJ1Y3QgZGV2X3BtX3Fvc19yZXF1ZXN0IHFvc19yZXE7
Cj4gK307Cj4gKwo+ICtzdGF0aWMgaW50IGlteF9pY2NfYWdncmVnYXRlKHN0cnVjdCBpY2Nfbm9k
ZSAqbm9kZSwgdTMyIHRhZywKPiArCQkJICAgICB1MzIgYXZnX2J3LCB1MzIgcGVha19idywKPiAr
CQkJICAgICB1MzIgKmFnZ19hdmcsIHUzMiAqYWdnX3BlYWspCj4gK3sKPiArCSphZ2dfYXZnICs9
IGF2Z19idzsKPiArCSphZ2dfcGVhayA9IG1heCgqYWdnX3BlYWssIHBlYWtfYncpOwo+ICsKPiAr
CXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGljY19ub2RlICppbXhfaWNjX3hs
YXRlKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwZWMsIHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0
cnVjdCBpbXhfaWNjX3Byb3ZpZGVyICpkZXNjID0gZGF0YTsKPiArCXN0cnVjdCBpY2NfcHJvdmlk
ZXIgKnByb3ZpZGVyID0gZGV2X2dldF9kcnZkYXRhKGRlc2MtPmRldik7Cj4gKwl1bnNpZ25lZCBp
bnQgaWQgPSBzcGVjLT5hcmdzWzBdOwo+ICsJc3RydWN0IGljY19ub2RlICpub2RlOwo+ICsKPiAr
CWxpc3RfZm9yX2VhY2hfZW50cnkobm9kZSwgJnByb3ZpZGVyLT5ub2Rlcywgbm9kZV9saXN0KQo+
ICsJCWlmIChub2RlLT5pZCA9PSBpZCkKPiArCQkJcmV0dXJuIG5vZGU7Cj4gKwo+ICsJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW14X2ljY19ub2RlX3Nl
dChzdHJ1Y3QgaWNjX25vZGUgKm5vZGUpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IG5v
ZGUtPnByb3ZpZGVyLT5kZXY7Cj4gKwlzdHJ1Y3QgaW14X2ljY19ub2RlICpub2RlX2RhdGEgPSBu
b2RlLT5kYXRhOwo+ICsJdTY0IGZyZXE7Cj4gKwo+ICsJaWYgKCFub2RlX2RhdGEtPmRldmZyZXEp
Cj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJZnJlcSA9IChub2RlLT5hdmdfYncgKyBub2RlLT5wZWFr
X2J3KSAqIG5vZGVfZGF0YS0+ZGVzYy0+YWRqLT5id19tdWw7CgpXaHkgdGhlIHN1bSBvZiBhdmVy
YWdlIGFuZCBwZWFrIGJhbmR3aWR0aD8KCj4gKwlkb19kaXYoZnJlcSwgbm9kZV9kYXRhLT5kZXNj
LT5hZGotPmJ3X2Rpdik7Cj4gKwlkZXZfZGJnKGRldiwgIm5vZGUgJXMgZGV2aWNlICVzIGF2Z19i
dyAldWtCcHMgcGVha19idyAldWtCcHMgbWluX2ZyZXEgJWxsdWtIelxuIiwKPiArCQkJbm9kZS0+
bmFtZSwgZGV2X25hbWUobm9kZV9kYXRhLT5kZXZmcmVxLT5kZXYucGFyZW50KSwKPiArCQkJbm9k
ZS0+YXZnX2J3LCBub2RlLT5wZWFrX2J3LCBmcmVxKTsKPiArCj4gKwlpZiAoZnJlcSA+IFMzMl9N
QVgpIHsKPiArCQlkZXZfZXJyKGRldiwgIiVzIGNhbid0IHJlcXVlc3QgbW9yZSB0aGFuIFMzMl9N
QVggZnJlcVxuIiwKPiArCQkJCW5vZGUtPm5hbWUpOwo+ICsJCXJldHVybiAtRVJBTkdFOwo+ICsJ
fQo+ICsKPiArCWRldl9wbV9xb3NfdXBkYXRlX3JlcXVlc3QoJm5vZGVfZGF0YS0+cW9zX3JlcSwg
ZnJlcSk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW14X2ljY19z
ZXQoc3RydWN0IGljY19ub2RlICpzcmMsIHN0cnVjdCBpY2Nfbm9kZSAqZHN0KQo+ICt7Cj4gKwly
ZXR1cm4gaW14X2ljY19ub2RlX3NldChkc3QpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGlteF9p
Y2Nfbm9kZV9pbml0X2RldmZyZXEoc3RydWN0IGRldmljZSAqZGV2LAo+ICsJCQkJICAgICBzdHJ1
Y3QgaWNjX25vZGUgKm5vZGUpCj4gK3sKPiArCXN0cnVjdCBpbXhfaWNjX25vZGUgKm5vZGVfZGF0
YSA9IG5vZGUtPmRhdGE7Cj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKmRuOwo+ICsJdTMyIG5vZGVf
aWQ7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qIEZpbmQgbm9kZXMgYmFzZWQgb24gaW50ZXJjb25u
ZWN0LW5vZGUtaWQgcHJvcGVydHkgKi8KPiArCWZvcl9lYWNoX25vZGVfd2l0aF9wcm9wZXJ0eShk
biwgImludGVyY29ubmVjdC1ub2RlLWlkIikgewo+ICsJCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRf
dTMyKGRuLCAiaW50ZXJjb25uZWN0LW5vZGUtaWQiLAo+ICsJCQkJCSAgICZub2RlX2lkKTsKPiAr
CQlpZiAocmV0ICE9IDApCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlpZiAobm9kZV9pZCA9PSBu
b2RlLT5pZCkgewo+ICsJCQlvZl9ub2RlX2dldChkbik7Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiAr
CX0KPiArCj4gKwlpZiAoIWRuKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWRldl9pbmZvKGRldiwg
Im5vZGUgJXNbJWRdIGhhcyBkZXZpY2Ugbm9kZSAlcE9GXG4iLAo+ICsJCQlub2RlLT5uYW1lLCBu
b2RlLT5pZCwgZG4pOwo+ICsJbm9kZV9kYXRhLT5kZXZmcmVxID0gZGV2ZnJlcV9nZXRfZGV2ZnJl
cV9ieV9ub2RlKGRuKTsKCkFoLCBzbyB5b3UgbmVlZCB0byBnZXQgdGhlIGRldmZyZXEgbm9kZXM/
IFNvIGxvb2tpbmcgYXQgdGhlIG5leHQKcGF0Y2hlcyBpdCBzZWVtcyB0aGF0IG5vYyBhbmQgZGRy
YyBhcmUgdGhlIG9ubHkgYWRqdXN0YWJsZSBub2Rlcz8KCk1heWJlIHdlIHNob3VsZCBtb2RlbCB0
aGVtIGJvdGggYXMgaW50ZXJjb25uZWN0IHByb3ZpZGVycywgYXMgdGhleQpzZWVtIHRvIGJlIGRl
YWxpbmcgd2l0aCB0aGUgYmFuZHdpZHRoL2ZyZXF1ZW5jeSByZXF1aXJlbWVudHMgYW5kCmNoYW5n
aW5nIHRoZSBjbG9jayByYXRlcy4KClRoYW5rcywKR2VvcmdpCgo+ICsJaWYgKElTX0VSUihub2Rl
X2RhdGEtPmRldmZyZXEpKSB7Cj4gKwkJb2Zfbm9kZV9wdXQoZG4pOwo+ICsJCXJldCA9IFBUUl9F
UlIobm9kZV9kYXRhLT5kZXZmcmVxKTsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBmZXRj
aCBkZXZmcmVxIGZvciAlczogJWRcbiIsCj4gKwkJCQlub2RlLT5uYW1lLCByZXQpOwo+ICsJCXJl
dHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJb2Zfbm9kZV9wdXQoZG4pOwo+ICsKPiArCXJldHVybiBk
ZXZfcG1fcW9zX2FkZF9yZXF1ZXN0KG5vZGVfZGF0YS0+ZGV2ZnJlcS0+ZGV2LnBhcmVudCwKPiAr
CQkJCSAgICAgICZub2RlX2RhdGEtPnFvc19yZXEsCj4gKwkJCQkgICAgICBERVZfUE1fUU9TX01J
Tl9GUkVRVUVOQ1ksIDApOwo+ICt9Cj4gKwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
