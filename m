Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0773959804
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kp6VTwuXrX1yi57qRhXFA77se3xzoOn8WtEtzj6+wIQ=; b=RM+ujpYOgnSTK6
	tv/Sg5dztzkD99rf8bRXaSgtRbH6CtVA3B5GUSFTgBSR4qOtJ+RIRhopkhi1kGyFPSafSWHsxeawt
	ksxTN1sVtj+kYlSwrp0jwJK5V1NImY5vybxndVA8FR+6e/zrD9r/PM2/V1EMp3Inhv/OEwyAUzy/w
	0lrJRRlzAPKnqFolTPb2fIutKaXyWqjaJ+eB1Mq7/isS8uJ7R/bhk2emaXdc0+Hs8h9ifFF5eu3Hh
	pqxJbjtbsTNWL0lllnth9LvC1FLNjrw2z25FxQoWRIF1cQuKt/nOOhg3+DR4056dznCNJl9suRr5K
	gOCYFaWUZlhiHmQajqpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgne5-0005Gy-E0; Fri, 28 Jun 2019 09:58:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgndq-0005GY-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:58:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so5617045wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 02:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9FytKW5ZjvNKGBlx80HLRMHHuvwX3z8TegfRsrrxVnM=;
 b=iMrVG+/opOcU7iiyyeN00AOelhoQC+Q8nOGZn+dVzF+oxKCHtX6lGuitukcUVUg/EJ
 GC8j5mPl6bJUTE8ELFs+RWTWMXinx0bsFqbegK3UdBA3qNyRvZY4OSTDCURF94OyaGGg
 Y151e8nwdbe3bthz4H4N+CH695Mhxpdg1JNOt0VfIXtsfelCJUxyTdiESwEdF422zyik
 5AbArr6Mru+IPHyT4KsnV2hIgf03DBm9B0SzBmkdkIS4dIDZGzRPPwXPzACDJFirubZS
 j4rLJpHHL7at4OPCkOdgak69AXOJC9bwUzRx1loqYa+ZaqZs1ZHLO5CxGuU9KfS/KeBR
 ZKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=9FytKW5ZjvNKGBlx80HLRMHHuvwX3z8TegfRsrrxVnM=;
 b=P/d3XlIsOZwkLl79XNmux5YPH4Jqd1RgLCXECdHQtWg3/826BbDC6jpoAn42xDcl7O
 5W5XEw4b4AwXfZC9D0V2AKau8V2M+8/wwQhR5vEPQLnEqqHs3TcpcQ201STLXNUAsX6e
 WpTMFoKIJP8wJDoXg1r2fucNcbTzEk8hHDQbmZdwZCE4bEEhZtUGoTHt81FSEbq7Cr2x
 MDRN6OY8YtPq53bTpLfBDo9R29IHpVO1Zkb70kT2j0hrOjLS5I7wca1WzL1uCcB6l894
 SkWx2+z4Su+71hm+DS6TOmeK+balXKOaXNmbDjTU9PFjOXoKwPrJxUk2MqsimbsPq6k/
 MP1Q==
X-Gm-Message-State: APjAAAVUChtsEutLOCbNY4IHZpAxYUfNBBGD5JSkqA9VxrJssK2VXsV7
 hqyaazYAu34xeFIz2QQwHMWfhg==
X-Google-Smtp-Source: APXvYqyRZNwnVgrjVHQJVNRqLQi40MC0P3A2IQKj1rTZO3nY7yq61Es2GWwenW/DEpGhlFKGJK1nAg==
X-Received: by 2002:adf:e2c7:: with SMTP id d7mr6974648wrj.272.1561715880211; 
 Fri, 28 Jun 2019 02:58:00 -0700 (PDT)
Received: from [192.168.0.41] (11.117.130.77.rev.sfr.net. [77.130.117.11])
 by smtp.googlemail.com with ESMTPSA id r5sm3228894wrg.10.2019.06.28.02.57.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 02:57:59 -0700 (PDT)
Subject: Re: [PATCH V4 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190627210209.32600-1-daniel.lezcano@linaro.org>
 <20190627210209.32600-2-daniel.lezcano@linaro.org>
 <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <cd79ffe3-4749-9135-27c4-deb4f259d702@linaro.org>
Date: Fri, 28 Jun 2019 11:57:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_025802_337253_0517B8B5 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDI4LzA2LzIwMTkgMTE6MTIsIFJhZmFlbCBKLiBXeXNvY2tpIHdyb3RlOgo+IE9uIFRodSwg
SnVuIDI3LCAyMDE5IGF0IDExOjAyIFBNIERhbmllbCBMZXpjYW5vCj4gPGRhbmllbC5sZXpjYW5v
QGxpbmFyby5vcmc+IHdyb3RlOgo+Pgo+PiBDdXJyZW50bHkgdGhlIGZ1bmN0aW9uIGNwdWZyZXFf
Y29vbGluZ19yZWdpc3RlcigpIHJldHVybnMgYSBjb29saW5nCj4+IGRldmljZSBwb2ludGVyIHdo
aWNoIGlzIHVzZWQgYmFjayBhcyBhIHBvaW50ZXIgdG8gY2FsbCB0aGUgZnVuY3Rpb24KPj4gY3B1
ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIoKS4gRXZlbiBpZiBpdCBpcyBjb3JyZWN0LCBpdCB3b3Vs
ZCBtYWtlCj4+IHNlbnNlIHRvIG5vdCBsZWFrIHRoZSBzdHJ1Y3R1cmUgaW5zaWRlIGEgY3B1ZnJl
cSBkcml2ZXIgYW5kIGtlZXAgdGhlCj4+IGNvZGUgdGhlcm1hbCBjb2RlIHNlbGYtZW5jYXBzdWxh
dGUuIE1vcmVvdmVyLCB0aGF0IGZvcmNlcyB0byBhZGQgYW4KPj4gZXh0cmEgdmFyaWFibGUgaW4g
ZWFjaCBkcml2ZXIgdXNpbmcgdGhpcyBmdW5jdGlvbi4KPj4KPj4gSW5zdGVhZCBvZiBwYXNzaW5n
IHRoZSBjb29saW5nIGRldmljZSB0byB1bnJlZ2lzdGVyLCBwYXNzIHRoZSBwb2xpY3kuCj4+Cj4+
IEJlY2F1c2UgdGhlIGNwdWZyZXFfY29vbGluZ191bnJlZ2lzdGVyKCkgZnVuY3Rpb24gdXNlcyB0
aGUgcG9saWN5IHRvCj4+IHVucmVnaXN0ZXIgaXRzZWxmLiBUaGUgb25seSBwdXJwb3NlIG9mIHRo
ZSBjb29saW5nIGRldmljZSBwb2ludGVyIGlzCj4+IHRvIHVucmVnaXN0ZXIgdGhlIGNwdSBjb29s
aW5nIGRldmljZS4KPj4KPj4gQXMgdGhlcmUgaXMgbm8gbW9yZSBuZWVkIG9mIHRoaXMgcG9pbnRl
ciwgcmVtb3ZlIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVs
LmxlemNhbm9AbGluYXJvLm9yZz4KPj4gQWNrZWQtYnk6IFZpcmVzaCBLdW1hciA8dmlyZXNoLmt1
bWFyQGxpbmFyby5vcmc+Cj4gCj4gVGhpcyBkb2Vzbid0IGFwcGx5IGZvciBtZS4KPiAKPiBDYXJl
IHRvIHJlYmFzZSBpdCBvbiB0b3Agb2YgdGhlIExpbnVzJyB0cmVlPwoKU3VyZSBidXQgdGhlIHBh
dGNoIGRlcGVuZHMgb24gMS8zIHdoaWNoIGlzIGluIGJsZWVkaW5nIGVkZ2UuIFNoYWxsIEkKcmVi
YXNlIHRoZSAzIHBhdGNoZXMgb24gdjUuMi1yYzYgYW5kIHJlc2VuZCA/CgoKCgotLSAKIDxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBm
b3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFn
ZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBU
d2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
