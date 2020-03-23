Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA0418F96E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 17:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gc5VHjVUuS90FXCjOmUVn0pdGPvoERGyKy7RoBDatE=; b=TFJVovJV5E15pw
	M2e8WTSpGMccP5lcU2msYalamyMOu+XKkUAH1FEs82VkcZLIN8DgAVM8aAS7BHSJQyghO5yEJqeUQ
	dy/kjVnWwt7UG6yxDrM2oVsS/sUHBCdNvB8AMixJYZTVCW9tOurK/Sm2UM9DVeCyrT9Y9TXE4nFse
	c0yNapqYKU9b2jLuypKraj2zIgJwzbG1ylwC5GLiDCFg2EiUgvoJ/dlnPXjRGtysLm6rDDB2nMYC9
	zYVPmIFSxNl6zpZwGQYoE9s4XXHXhdnRmHd57d0E5HoJsNL5mEgRy3ap7FHiR/1dRd1QqvkqoQbQW
	05PTDgqEtPOlTIzg5WVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGPiz-00026m-RV; Mon, 23 Mar 2020 16:14:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGPip-00025r-Pc
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 16:14:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so14420063wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 09:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YvVdcIC9BfVyhLOPvUYqb9CjA7osmNN6D8+8S+xfy50=;
 b=R7cXqTjH+yD48QX8CkkD0dhPOCRPhFyBhr94VEBl0nhx6DrqPDWGsfy4jqMxAofqXO
 R2z/EiStJQD7DJoYs16jTDbl+HE1mG1+fDjkoPpZULbYVklYRoWM8o0C8Fdv1N6htU1v
 v1odkxoUVd5Om2FA7bFKAYL4yUfo3Kc39SG7I3Oj76yVK3j5ARjcBx93LKGqvoVYlkSR
 3M2a+QuCKDzjnidq7/K4aCz7HyM9P3A7O/aTko9J03+FlmUxL7OhVEjk6YW4MsqNXZoJ
 gUs8I/ZDGGeHWyiPH2tVZTkeeidVmUl0zzI5aRmpUZcF8RFFe6Bw3iW+2Bwhwg6e4svu
 +vXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YvVdcIC9BfVyhLOPvUYqb9CjA7osmNN6D8+8S+xfy50=;
 b=R44nfhgkxYUIzqQ6OeIQjk0SM43JJ+tQHou5pfdo2aGRH0km+eSB/n/87sJcI1qHmJ
 hhe7TFmEVBShqKZxHfOPt06R9Pvx2SsLwqL/LWRXug9B/x+EFuXD+ULheTB9U6UsmeLt
 UTcZRIibAmLS9RVJamcmuNTrdMFeHmsKccOAdERSYaCs6UIjQwXgjTMPv896MwyYWpO7
 tat3xjY3PJFPPFd/MaqGxqo5SXixhmemRdhCZbruzWgO3MNtNlefQuiGe2pyIA9Cm7yI
 MrLhck9+DC3pkLEhFi3vv8oZGLQSRiljxSleoUh/3/vx5YDxEipe0eXQ0qW9WfkIJWCu
 WNuA==
X-Gm-Message-State: ANhLgQ2phrxNrecLvyoyCwGTds0/IGlyAAM0xuCJXXppP06j7kZQVEa2
 TUzcHFlAaSCBAXT2Hz7ycKjqngBOKuc=
X-Google-Smtp-Source: ADFU+vufaFWV3B6+iSowCSx2iHYSXH1e8i85W/GcQHYZJGVR9gaySUbgUVEr0CCHyejSJpnLV+GfzA==
X-Received: by 2002:adf:afd4:: with SMTP id y20mr32672488wrd.57.1584980078078; 
 Mon, 23 Mar 2020 09:14:38 -0700 (PDT)
Received: from [192.168.0.43] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id f23sm98293wmf.1.2020.03.23.09.14.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 09:14:37 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx8mm: Fix build warning of incorrect argument
 type
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
References: <1584973156-25734-1-git-send-email-Anson.Huang@nxp.com>
 <8f1f2d2b-33bc-b5e0-ad06-78f7ce54f2b7@linaro.org>
 <DB3PR0402MB39164815DDDB8F94507E36B4F5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <103ffda2-2fc5-2918-a486-ab3bbf60e614@linaro.org>
Date: Mon, 23 Mar 2020 17:14:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB39164815DDDB8F94507E36B4F5F00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_091440_420438_62067A5C 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gMjMvMDMvMjAyMCAxNTo1MywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
PiBTdWJqZWN0OiBSZTogW1BBVENIXSB0aGVybWFsOiBpbXg4bW06IEZpeCBidWlsZCB3YXJuaW5n
IG9mIGluY29ycmVjdAo+PiBhcmd1bWVudCB0eXBlCj4+Cj4+IE9uIDIzLzAzLzIwMjAgMTU6MTks
IEFuc29uIEh1YW5nIHdyb3RlOgo+Pj4gRml4IGJlbG93IHNwYXJzZSB3YXJuaW5nOgo+Pj4KPj4+
IGRyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jOjgyOjM2OiBzcGFyc2U6IHNwYXJzZTog
aW5jb3JyZWN0IHR5cGUKPj4+IGluIGFyZ3VtZW50IDIgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNl
cyksIGV4cGVjdGVkIHVuc2lnbmVkIGxvbmcgY29uc3QKPj4+IHZvbGF0aWxlICphZGRyCj4+PiBk
cml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYzo4MjozNjogc3BhcnNlOiBleHBlY3RlZCB1
bnNpZ25lZCBsb25nCj4+PiBjb25zdCB2b2xhdGlsZSAqYWRkcgo+Pj4KPj4+IFNpZ25lZC1vZmYt
Ynk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVy
cy90aGVybWFsL2lteDhtbV90aGVybWFsLmMgfCA3ICsrKy0tLS0KPj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3RoZXJtYWwvaW14OG1tX3RoZXJtYWwuYwo+Pj4gYi9kcml2ZXJzL3RoZXJtYWwvaW14
OG1tX3RoZXJtYWwuYwo+Pj4gaW5kZXggYzMyMzA4Yi4uMGQ2MGY4ZCAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvdGhlcm1hbC9pbXg4bW1fdGhlcm1hbC5jCj4+PiArKysgYi9kcml2ZXJzL3RoZXJt
YWwvaW14OG1tX3RoZXJtYWwuYwo+Pj4gQEAgLTc1LDE1ICs3NSwxNCBAQCBzdGF0aWMgaW50IGlt
eDhtcF90bXVfZ2V0X3RlbXAodm9pZCAqZGF0YSwgaW50Cj4+PiAqdGVtcCkgIHsKPj4+ICAJc3Ry
dWN0IHRtdV9zZW5zb3IgKnNlbnNvciA9IGRhdGE7Cj4+PiAgCXN0cnVjdCBpbXg4bW1fdG11ICp0
bXUgPSBzZW5zb3ItPnByaXY7Cj4+PiArCXVuc2lnbmVkIGxvbmcgdmFsOwo+Pj4gIAlib29sIHJl
YWR5Owo+Pj4gLQl1MzIgdmFsOwo+Pj4KPj4+IC0JcmVhZHkgPSB0ZXN0X2JpdChwcm9iZV9zdGF0
dXNfb2Zmc2V0KHNlbnNvci0+aHdfaWQpLAo+Pj4gLQkJCSB0bXUtPmJhc2UgKyBUUklUU1IpOwo+
Pj4gKwl2YWwgPSByZWFkbF9yZWxheGVkKHRtdS0+YmFzZSArIFRSSVRTUik7Cj4+PiArCXJlYWR5
ID0gdGVzdF9iaXQocHJvYmVfc3RhdHVzX29mZnNldChzZW5zb3ItPmh3X2lkKSwgJnZhbCk7Cj4+
PiAgCWlmICghcmVhZHkpCj4+PiAgCQlyZXR1cm4gLUVBR0FJTjsKPj4KPj4gRG9lc24ndCB0aGlz
IHBhdGNoIGFsc28gZml4IGEgYnVnIGJlY2F1c2UgdGhlIHJlYWQgd2FzIGRvbmUgYWZ0ZXIgdGVz
dGluZyB0aGUKPj4gYml0PyA6KQo+IAo+IFllc/CfmIogUHJldmlvdXMgcGF0Y2ggcmVhZHMgdGhl
IHJlZ2lzdGVyIHR3aWNlIGF0IGRpZmZlcmVudCB0aW1lLCBtYXkgY2F1c2UgYQo+IHN5bmMgaXNz
dWUgb2YgY2hlY2tpbmcgdGhlIHJlYWR5IGJpdCBhbmQgcmVhZGluZyB0aGUgdGVtcGVyYXR1cmUg
dXNpbmcgcmVnaXN0ZXIKPiB2YWx1ZXMgcmVhZCBhdCBkaWZmZXJlbnQgdGltZS4KPiAKPiBEbyBJ
IG5lZWQgdG8gaW1wcm92ZSB0aGUgY29tbWl0IGxvZz8gSSBndWVzcyBubyBuZWVkPwoKTm8gbmVl
ZCwgaXQgaXMgZmluZS4KCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8
aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8v
dHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
