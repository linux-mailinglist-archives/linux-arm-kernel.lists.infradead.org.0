Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE611BAA6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGS3dqTXj35gNjk/Ua1wAklNO6Sl617kICjtRf7VND4=; b=Yd3KDqjahAY1S5
	EM7FhNqZeJTldtyELCB5HfAIF412/SkZV0AjFSdqer0wwuCE2wIrySKHUxhpYnPgfucElPNks1fBB
	TSHL+yRUgc98YbRYAHk2LaABCtZvKhRXwY2P3B9zqCukLsTFALEfOMk1fkRPkeL8oAa7XSRzTmMmL
	McqYzyNZ+IWfufqaETNwDAXBPIM4Gs01Le9y+BBH16Ltm4vGopUBF6qSPvxlOM3nOz1uVf1k7qXCv
	aGPDqxiDpGmoxVYD/45dNP3uoh9a9k0p4rCKEzYwa1kDMh9Fn2JJDWb522QeWWPTyC+stVneS7mhI
	Eb1qNzAo7S0taVAatFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6xd-0007wE-6G; Mon, 27 Apr 2020 16:50:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6xQ-0007ux-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:50:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id g13so21370965wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ifZHzQrYJTJ2psIoVYONoJxVcPBrBwiLq0Ka5H1X7f0=;
 b=YN4xMzacilYGgkI5xIJKKjKcvwZcZ4qjnwboi7t+4heCeg+DVoCri3aTgOQ43+2b/U
 ur3Wx9/P9iXCTeuhRKTWS9KtRKW7D4EGSQ1W6lDnSmD3l0qsduegt1i2nxkp/i7sIvSY
 40XOB+SMgz68l1/ArBdGciU3CqBzBQR7h2zzVy6FvC8lqekaAiyRsAw56dIw+I4FErQ4
 azNHB4ooJm10iR0K4KIDxECVWcNQfJk1j0FaB9+bxGqUgxFV+H5J+klrzmWcM6+4poJV
 1RqelOBabzBzN0wbIZzc+jQcxhamURzPkZjnvLWAby0K3AwbgDzpUeJXgcLJw4EKrHSR
 6A2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ifZHzQrYJTJ2psIoVYONoJxVcPBrBwiLq0Ka5H1X7f0=;
 b=p8V8ulnb5ObuM48CHx3ucOoCkHrGcOX957Hkf+bVwqEomuOsSiMtPADTmN3SS79VzI
 PJqPoz2M/2kV/S38I4qCP/UexPw/EDmA06xtJ7nvHJZt+GJW5W9k7PPoNVG3thy4/IfG
 iCveJkZ2E7cnvFMIROKzQTXqghSlJKRQu5MSmH62c3LX7dZtzRye7ghMJUOHTtV1q3ds
 eQ74xE8ZkGBN/0VhKehjg8yo4C41s+ixA+F8nnRN+DAN5cdnRyvVV9q09+GauHnrTPXQ
 vCoOyz9DobxruD57KCSxlrbCERTJSBxlrcfvwc6QhXmm2b1cWZ9Dd8x89/DNe3Nj1F6A
 X+uA==
X-Gm-Message-State: AGi0PuaKvM7Q9sc52OFdsnJPyvkzZPFjGhFX16Sz6E+uIUwZLVwM/fX+
 YvlDmLOz4hYUfgfOwn+O8L765k7BmWI=
X-Google-Smtp-Source: APiQypLnpGbWiFbiATkGLzM1ksCRfp33HEV/xjz0k0UXMZ8dYv4G0WKZWQ6pcTQZyBZPekAo8fPm6Q==
X-Received: by 2002:adf:f24c:: with SMTP id b12mr28353216wrp.359.1588006211473; 
 Mon, 27 Apr 2020 09:50:11 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id f23sm16030600wml.4.2020.04.27.09.50.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 09:50:10 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] thermal: cpuidle: Register cpuidle cooling device
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200414220837.9284-1-daniel.lezcano@linaro.org>
 <20200414220837.9284-4-daniel.lezcano@linaro.org>
 <6b58035c-fe48-09ab-f042-729b07bcfec6@linaro.org>
Message-ID: <34667fb4-664c-c80b-6bba-fe2ae981dcc1@linaro.org>
Date: Mon, 27 Apr 2020 18:50:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6b58035c-fe48-09ab-f042-729b07bcfec6@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_095013_543271_5220E9AB 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kucheria@verdurent.com,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, rui.zhang@intel.com,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIGd1eXMsCgphbnkgY2hhbmNlIHlvdSBhY2sgdGhpcyBwYXRjaCA/CgoKT24gMjEvMDQvMjAy
MCAxMDoxNSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gCj4gSGkgTG9yZW56bywgU3VkZWVwLAo+
IAo+IG90aGVyIHBhdGNoZXMgb2YgdGhlIHNlcmllcyBhcmUgYWNrZWQgLyByZXZpZXdlZC4KPiAK
PiBJZiB5b3UgYXJlIG9rIHdpdGggdGhlc2UgY2hhbmdlcywgY291bGQgeW91IGFkZCB5b3VyIGFj
a2VkLWJ5IHNvIEkgY2FuCj4gbWVyZ2UgYWxsIHRoZSBzZXJpZXMgdmlhIHRoZSB0aGVybWFsIHRy
ZWU/Cj4gCj4gVGhhbmtzCj4gCj4gICAtLSBEYW5pZWwKPiAKPiBPbiAxNS8wNC8yMDIwIDAwOjA4
LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gVGhlIGNwdWlkbGUgZHJpdmVyIGNhbiBiZSB1c2Vk
IGFzIGEgY29vbGluZyBkZXZpY2UgYnkgaW5qZWN0aW5nIGlkbGUKPj4gY3ljbGVzLiBUaGUgRFQg
YmluZGluZyBmb3IgdGhlIGlkbGUgc3RhdGUgYWRkZWQgYW4gb3B0aW9uYWwKPj4KPj4gV2hlbiB0
aGUgcHJvcGVydHkgaXMgc2V0LCByZWdpc3RlciB0aGUgY3B1aWRsZSBkcml2ZXIgd2l0aCB0aGUg
aWRsZQo+PiBzdGF0ZSBub2RlIHBvaW50ZXIgYXMgYSBjb29saW5nIGRldmljZS4gVGhlIHRoZXJt
YWwgZnJhbWV3b3JrIHdpbGwgZG8KPj4gdGhlIGFzc29jaWF0aW9uIGF1dG9tYXRpY2FsbHkgd2l0
aCB0aGUgdGhlcm1hbCB6b25lIHZpYSB0aGUKPj4gY29vbGluZy1kZXZpY2UgZGVmaW5lZCBpbiB0
aGUgZGV2aWNlIHRyZWUgY29vbGluZy1tYXBzIHNlY3Rpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgo+PiAtLS0KPj4gIGRy
aXZlcnMvY3B1aWRsZS9jcHVpZGxlLWFybS5jICB8IDUgKysrKysKPj4gIGRyaXZlcnMvY3B1aWRs
ZS9jcHVpZGxlLXBzY2kuYyB8IDUgKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtYXJtLmMg
Yi9kcml2ZXJzL2NwdWlkbGUvY3B1aWRsZS1hcm0uYwo+PiBpbmRleCA5ZTUxNTZkMzk2MjcuLjI0
MDZhYzBhZTEzNCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtYXJtLmMK
Pj4gKysrIGIvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtYXJtLmMKPj4gQEAgLTgsNiArOCw3IEBA
Cj4+ICAKPj4gICNkZWZpbmUgcHJfZm10KGZtdCkgIkNQVWlkbGUgYXJtOiAiIGZtdAo+PiAgCj4+
ICsjaW5jbHVkZSA8bGludXgvY3B1X2Nvb2xpbmcuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9jcHVp
ZGxlLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvY3B1bWFzay5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4
L2NwdV9wbS5oPgo+PiBAQCAtMTI0LDYgKzEyNSwxMCBAQCBzdGF0aWMgaW50IF9faW5pdCBhcm1f
aWRsZV9pbml0X2NwdShpbnQgY3B1KQo+PiAgCWlmIChyZXQpCj4+ICAJCWdvdG8gb3V0X2tmcmVl
X2RydjsKPj4gIAo+PiArCXJldCA9IGNwdWlkbGVfY29vbGluZ19yZWdpc3RlcihkcnYpOwo+PiAr
CWlmIChyZXQpCj4+ICsJCXByX2VycigiRmFpbGVkIHRvIHJlZ2lzdGVyIHRoZSBpZGxlIGNvb2xp
bmcgZGV2aWNlOiAlZFxuIiwgcmV0KTsKPj4gKwo+PiAgCXJldHVybiAwOwo+PiAgCj4+ICBvdXRf
a2ZyZWVfZHJ2Ogo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtcHNjaS5j
IGIvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtcHNjaS5jCj4+IGluZGV4IGVkZDdhNTRlZjBkMy4u
OGU4MDViZmY2NDZmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2NwdWlkbGUvY3B1aWRsZS1wc2Np
LmMKPj4gKysrIGIvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtcHNjaS5jCj4+IEBAIC05LDYgKzks
NyBAQAo+PiAgI2RlZmluZSBwcl9mbXQoZm10KSAiQ1BVaWRsZSBQU0NJOiAiIGZtdAo+PiAgCj4+
ICAjaW5jbHVkZSA8bGludXgvY3B1aG90cGx1Zy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2NwdV9j
b29saW5nLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvY3B1aWRsZS5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L2NwdW1hc2suaD4KPj4gICNpbmNsdWRlIDxsaW51eC9jcHVfcG0uaD4KPj4gQEAgLTMwNSw2
ICszMDYsMTAgQEAgc3RhdGljIGludCBfX2luaXQgcHNjaV9pZGxlX2luaXRfY3B1KGludCBjcHUp
Cj4+ICAJaWYgKHJldCkKPj4gIAkJZ290byBvdXRfa2ZyZWVfZHJ2Owo+PiAgCj4+ICsJcmV0ID0g
Y3B1aWRsZV9jb29saW5nX3JlZ2lzdGVyKGRydik7Cj4+ICsJaWYgKHJldCkKPj4gKwkJcHJfZXJy
KCJGYWlsZWQgdG8gcmVnaXN0ZXIgdGhlIGlkbGUgY29vbGluZyBkZXZpY2U6ICVkXG4iLCByZXQp
Owo+PiArCj4+ICAJcmV0dXJuIDA7Cj4+ICAKPj4gIG91dF9rZnJlZV9kcnY6Cj4+Cj4gCj4gCgoK
LS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9v
ay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGlu
YXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJs
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
