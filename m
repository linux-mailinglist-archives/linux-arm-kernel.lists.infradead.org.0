Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E01DEE4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTUo9uFfSzeaVO/OnHu4VYPiukKjCV2rGWpSRwQJN/I=; b=rJHpF7lTFitFUJ
	TenRn2pv3TPeAWmUOaq8Og/8QyoyEjAAGBbJ4WA4XDs8XQfwNjegejdQFglgRvsV9bfUBL+mnR5Sr
	2BmUpiO3OMtCQDYRQ43NHKKfZiqX+/tZtgv8T+CcxJXSC8T7OTW1i1b82GW/7XkQjKoqRkX5rfwYg
	WE5vRgMgE+r1C8z8KkphnBSdAcljl7fu6YW/SBgNDP3S+ppMUHZjoqwC9/82Yb67YchqFBEeeaG0u
	Eu2g8biPq2ZkDFc6BPYUrTp9+bQRta1DpghMMTfgMApPdHpt0C+lx/7I8AVPyB42b8PQrOAySWwuU
	PhZAOTB/mD7EjU1I7sjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBXu-0005Vu-3C; Fri, 22 May 2020 17:33:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBXl-0005V3-Sf
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:33:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id k13so10964196wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 10:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VLbtYmWmQJbiFJ2E3A6qyIEbqWJ+t8w0WcuXKvFftBM=;
 b=ptf99yRrw4EIojq7DT7XBDmqVK3BXlNklUP+YLMzHqL9DxIWWzT112sAOKqee3nSRn
 QUFCueS41OH+yUGAj8gAo4vfU1shdTCVKxxjH2JGeEMqbu8qaTe1mkEK+POyDPJF6X0O
 6GzrTuu2uCQ1tSS8OsCTDnqsFkxDmnNirxW1x1NmNgro481PJr/aUsJpyixsdU3uDLqy
 3l6ZQ++xMuHYXJXJ3eoXs6veh+0m6QfvZOo5N8Rl26/bSaYxgtupN427Z345+slPvbo8
 JgwpKw7kT96xeTJ0b10F4kVepUjw2nKaQdhuCgq5jIZQ990Y07uGjssycHTt0B01fcVn
 4Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VLbtYmWmQJbiFJ2E3A6qyIEbqWJ+t8w0WcuXKvFftBM=;
 b=OCvHQPFusbpB+OiI7IJgpaBBtJrcEDy9uvlVeY4D8H5pLn3B56LPMry7CditmPCNyE
 8q0sVsR5fZjqKHdj+12Q4AyPljCMd6LlcANB9zOtnZTnu9LsnZL1Db+ES14UjmabPOSR
 im6kbkQ/4/ZV4k/wqP+kNc/ZzLiFPGx3BEgTNzBpP/boErhRaF4759cOOP6QUpWAwnMP
 22TJwAW9yDsDMbzEgb6WKp6ozBCl3ELAKQaRVrJ/+0AgLzTxkd1kMQhxnktyoDimZpWD
 BnzPO8hA6ttDzjQLSW52KOVLnNTBLpv7avR4uocx1fuDMraBprQ/71tATylY/ijKy6IO
 jjVg==
X-Gm-Message-State: AOAM531v0DZej6HwfGCxjU9A+uhZfZldDgC855AjbmCzOLY5+ON/PZr0
 EhpfUAYovDZ5QNChhtDEBLmT2g==
X-Google-Smtp-Source: ABdhPJwFuU20ErMvBhjnpeWy50ODfZq0wx6XE5USegDcr9gAnvfvgAu8t++gYGjZrIdQJ6pCG8K/Eg==
X-Received: by 2002:a5d:4390:: with SMTP id i16mr1540564wrq.186.1590168792082; 
 Fri, 22 May 2020 10:33:12 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id i6sm11436865wmb.41.2020.05.22.10.33.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 10:33:11 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
Date: Fri, 22 May 2020 19:33:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_103313_923755_3F8152F4 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDUvMjAyMCAwNDo1OCwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gQWRkIGdldF90cmVuZCBv
cHMgZm9yIGkuTVg4TU0gdGhlcm1hbCB0byBhcHBseSBmYXN0IGNvb2xpbmcKPiBtZWNoYW5pc20s
IHdoZW4gdGVtcGVyYXR1cmUgZXhjZWVkcyBwYXNzaXZlIHRyaXAgcG9pbnQsIHRoZQo+IGhpZ2hl
c3QgY29vbGluZyBhY3Rpb24gd2lsbCBiZSBhcHBsaWVkLCBhbmQgd2hlbiB0ZW1wZXJhdHVyZQo+
IGRyb3BzIHRvIGxvd2VyIHRoYW4gdGhlIG1hcmdpbiBiZWxvdyBwYXNzaXZlIHRyaXAgcG9pbnQs
IHRoZQo+IGxvd2VzdCBjb29saW5nIGFjdGlvbiB3aWxsIGJlIGFwcGxpZWQuCgpZb3UgYXJlIG5v
dCBkZXNjcmliaW5nIHdoYXQgaXMgdGhlIGdvYWwgb2YgdGhpcyBjaGFuZ2UuCgpJSVVDLCB0aGUg
cmVzdWx0aW5nIGNoYW5nZSB3aWxsIGJlIGFuIG9uL29mZiBhY3Rpb24uIFRoZSB0aGVybWFsIHpv
bmUgaXMKbWl0aWdhdGVkIHdpdGggdGhlIGhpZ2hlc3QgY29vbGluZyBlZmZlY3QsIHNvIHRoZSBs
b3dlc3QgT1BQLCB0aGVuIHRoZQp0ZW1wZXJhdHVyZSB0cmVuZCBpcyBzdGFibGUgdW50aWwgaXQg
Z29lcyBiZWxvdyB0aGUgdHJpcCAtIG1hcmdpbiB3aGVyZQp0aGUgbWl0aWdhdGlvbiBpcyBzdG9w
cGVkLgoKRXhjZXB0LCBJJ20gbWlzc2luZyBzb21ldGhpbmcsIHNldHRpbmcgYSB0cmlwIHBvaW50
IHdpdGggYSAxMDAwMApoeXN0ZXJlc2lzIGFuZCBhIGNvb2xpbmcgbWFwIG1pbi9tYXggc2V0IHRv
IHRoZSBoaWdoZXN0IG9wcCB3aWxsIHJlc3VsdApvbiB0aGUgc2FtZS4KCgo+IFNpZ25lZC1vZmYt
Ynk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3Ro
ZXJtYWwvaW14OG1tX3RoZXJtYWwuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhl
cm1hbC5jCj4gaW5kZXggZTYwNjFlMi4uOGY2YTBiOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Ro
ZXJtYWwvaW14OG1tX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhl
cm1hbC5jCj4gQEAgLTM4LDYgKzM4LDggQEAKPiAgI2RlZmluZSBUTVVfVkVSMQkJMHgxCj4gICNk
ZWZpbmUgVE1VX1ZFUjIJCTB4Mgo+ICAKPiArI2RlZmluZSBJTVhfVEVNUF9DT09MX01BUkdJTgkx
MDAwMAo+ICsKPiAgc3RydWN0IHRoZXJtYWxfc29jX2RhdGEgewo+ICAJdTMyIG51bV9zZW5zb3Jz
Owo+ICAJdTMyIHZlcnNpb247Cj4gQEAgLTEwMyw4ICsxMDUsMzMgQEAgc3RhdGljIGludCB0bXVf
Z2V0X3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wKQo+ICAJcmV0dXJuIHRtdS0+c29jZGF0YS0+
Z2V0X3RlbXAoZGF0YSwgdGVtcCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgdG11X2dldF90cmVu
ZCh2b2lkICpwLCBpbnQgdHJpcCwgZW51bSB0aGVybWFsX3RyZW5kICp0cmVuZCkKPiArewo+ICsJ
c3RydWN0IHRtdV9zZW5zb3IgKnNlbnNvciA9IHA7Cj4gKwlpbnQgdHJpcF90ZW1wLCB0ZW1wLCBy
ZXQ7Cj4gKwo+ICsJaWYgKCFzZW5zb3ItPnR6ZCkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4g
KwlyZXQgPSBzZW5zb3ItPnR6ZC0+b3BzLT5nZXRfdHJpcF90ZW1wKHNlbnNvci0+dHpkLCB0cmlw
LCAmdHJpcF90ZW1wKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwl0ZW1w
ID0gUkVBRF9PTkNFKHNlbnNvci0+dHpkLT50ZW1wZXJhdHVyZSk7Cj4gKwo+ICsJaWYgKHRlbXAg
PiB0cmlwX3RlbXApCj4gKwkJKnRyZW5kID0gVEhFUk1BTF9UUkVORF9SQUlTRV9GVUxMOwo+ICsJ
ZWxzZSBpZiAodGVtcCA8ICh0cmlwX3RlbXAgLSBJTVhfVEVNUF9DT09MX01BUkdJTikpCj4gKwkJ
KnRyZW5kID0gVEhFUk1BTF9UUkVORF9EUk9QX0ZVTEw7Cj4gKwllbHNlCj4gKwkJKnRyZW5kID0g
VEhFUk1BTF9UUkVORF9TVEFCTEU7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRp
YyBzdHJ1Y3QgdGhlcm1hbF96b25lX29mX2RldmljZV9vcHMgdG11X3R6X29wcyA9IHsKPiAgCS5n
ZXRfdGVtcCA9IHRtdV9nZXRfdGVtcCwKPiArCS5nZXRfdHJlbmQgPSB0bXVfZ2V0X3RyZW5kLAo+
ICB9Owo+ICAKPiAgc3RhdGljIHZvaWQgaW14OG1tX3RtdV9lbmFibGUoc3RydWN0IGlteDhtbV90
bXUgKnRtdSwgYm9vbCBlbmFibGUpCj4gCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
