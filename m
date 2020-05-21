Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887BF1DC370
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKcNOYK1ezCONTtsSLdpEaC/JCGuAvdJ7EXiA/BOMT0=; b=QpWP08LK8u2akx
	sezgTWBaKQzPhO24bGYcWWXSMY/qP/z1jxA7n1VjjyS1s4UKIALSgMhUG77KGIxH7nz39P3YqcPpu
	AC+23W4BFzixTwBtY6Aw5b5PfCtuWfGpJ4GqOwI8WJfGlheta8e7eHBM/YGGib/P/hkqSN9rzTxt1
	Ta0gl3V6/tEwRMS8EQWFO2K+5P3iYfwTosXYcF9IQAHoE28WWQa4TJ40T6pW/E460uVMBrS1lmdRa
	2dOc+a9U1/SQ82MDztGOMKBHJSZBCyVXbQ1w+H8QIN91ISWamexb4mMfJ5tP6J9eH3kEEHD13G5jE
	Hv98P/AmKLq0M4ciGSHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYpU-0000aS-G2; Thu, 21 May 2020 00:12:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYpG-0000YZ-D7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 00:12:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so4959342wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 17:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yBzwt44nCRkY9PWwDBj+u4Lq/MnOi4ZDEmivdqBQNB0=;
 b=dHkMwCa5ajAAkI6ZEaR357w705hD0P6DAPTjU2UmP29J09X/CjpnkSi2hqoQQUy8ct
 MKYcNFJ+BAeTHXH0313cQ9N+kjQd1sZgoL90mSHtn/ilVO1xStwp7oGfyLPTmjqKCEAw
 n+SMR8QAtKok0pamX1EISUlJJDOXZUCNU2MbDVcSzejeCnJsXJ3XtaQNQHAIBsjTQTOl
 wf56o2N7W/8hGJ3A1Z8atCuspB8Exx8HlBYdOODk6z2OyDOTy0ovRRaFd9pDxnOt7axP
 qf5440IU8QrGd1YM0deigc9Uo2vOQt/bTzsS+LnojjQf4Hlf3kl//BSMwr5qVTA1RrUi
 vn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yBzwt44nCRkY9PWwDBj+u4Lq/MnOi4ZDEmivdqBQNB0=;
 b=FTnD2RKLgITEMozW+Ys2Dd8tweRDqMyck2vGz2g1HrPWXYMqi1XcwBH0lRvtI/Qx3v
 Iiuwp/WKISobswCqMp7X7j4lbRs/cwOomuAc/yIW1nrzinaKsyEmiaLR2f/bqv1j9fT3
 mV4t14IPQn0GyOw73V8UCiBBtHlwMzzNLNhouKNwfB9482YVg3CzNxW9EkyS2V12NVBb
 rs0SU48QKqXwE4JeoNHTrhgapI+l80TM2BaNzl0yNoP7t6BLy0veVMLQ2aeVFoa5gVk6
 McbS7xDjaZEvzRVdlMIAhjRh2VzRUTEFns0G8LuZzcUwLy/QHpKuIz6v/0giPs84PN2Z
 G0/w==
X-Gm-Message-State: AOAM531UFVjHsIWJ8GV5XJAkxNNuRLUdJhzbx/AJf+o2dWWNntgqLRVK
 893MdloHwvHsJK/hjNilJiI=
X-Google-Smtp-Source: ABdhPJzpeK425aoKu6J50Efks0RoTNevd3qkSx9Vp19QpeuJJrMEepDROkKXwk97MyfGf5x5V5fi6g==
X-Received: by 2002:a5d:4747:: with SMTP id o7mr5974688wrs.11.1590019960194;
 Wed, 20 May 2020 17:12:40 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 j2sm4411531wrp.47.2020.05.20.17.12.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 17:12:39 -0700 (PDT)
Subject: Re: [GIT PULL 1/1] Broadcom devicetree fixes for 5.7 (part 2)
To: Florian Fainelli <f.fainelli@gmail.com>, soc@kernel.org, arnd@arndb.de,
 olof@lixom.net
References: <20200424224915.3541-1-f.fainelli@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a6adb8e0-fb59-d085-42c6-e5ef890015b1@gmail.com>
Date: Wed, 20 May 2020 17:12:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200424224915.3541-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171242_463876_E4C68719 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Vincent_Stehl=c3=a9?= <vincent.stehle@laposte.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwgT2xvZiwKCk9uIDQvMjQvMjAyMCAzOjQ5IFBNLCBGbG9yaWFuIEZhaW5lbGxpIHdy
b3RlOgo+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgOTA0NDRiOTU4NDYxYTVm
OGZjMjk5ZWNlMGZlMTdlYWIxNWNiYTFlMToKPiAKPiAgIEFSTTogZHRzOiBiY20yODN4OiBEaXNh
YmxlIGRzaTAgbm9kZSAoMjAyMC0wNC0xNiAxMzo1ODowMiAtMDcwMCkKPiAKPiBhcmUgYXZhaWxh
YmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiAKPiAgIGh0dHBzOi8vZ2l0aHViLmNvbS9C
cm9hZGNvbS9zdGJsaW51eC5naXQgdGFncy9hcm0tc29jL2Zvci01LjcvZGV2aWNldHJlZS1maXhl
cy1wYXJ0Mgo+IAo+IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAyYzk3MjczMWEzZDc0
YTMzNjUxOWZiMTU4ZmJlODYzY2FhZDVjNDIxOgo+IAo+ICAgQVJNOiBkdHM6IGJjbTI4MzUtcnBp
LXplcm8tdzogRml4IGxlZCBwb2xhcml0eSAoMjAyMC0wNC0yNCAxMjo1MDozNyAtMDcwMCkKPiAK
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gVGhpcyBwdWxsIHJlcXVlc3QgY29udGFpbnMgQnJvYWRjb20gQVJNLWJhc2Vk
IFNvQ3MgRGV2aWNlIFRyZWUgZml4ZXMgZm9yCj4gNS43LCBwbGVhc2UgcHVsbCB0aGUgZm9sbG93
aW5nOgo+IAo+IC0gVmluY2VudCBmaXhlcyB0aGUgcG9sYXJpdHkgb2YgdGhlIEFDVCBMRUQgb24g
dGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcKPiAgIGJvYXJkCj4gCj4gLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IFZpbmNlbnQg
U3RlaGzDqSAoMSk6Cj4gICAgICAgQVJNOiBkdHM6IGJjbTI4MzUtcnBpLXplcm8tdzogRml4IGxl
ZCBwb2xhcml0eQoKSWYgeW91IGhhdmUgbm90IHB1bGxlZCB0aGlzIGFscmVhZHkgKEkgY291bGQg
bm90IGZpbmQgaXQgaW4KbGludXgtbmV4dC9tYXN0ZXIgb3IgTGludXMnIG1hc3RlciksIHRoZXJl
IGlzIGFub3RoZXIgb25lIGNvbWluZyB3aXRoCmFub3RoZXIgZml4LgoKVGhhbmtzIQotLSAKRmxv
cmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
