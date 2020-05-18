Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D101D7F63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0246UAGu2fl3BS7Jv8v/DA1kCfJmwusG+WWSqCAzbs=; b=sOFOUF1/eb9Gke
	IpyK/iqgZlyXsSh1i4UljMDfPi4S6CTTIR5gX55ziYATb3FCgsLobh/kd5yKe7fbRMD+AM8yYlqMs
	so1fXETM2cmb4hE5yX2cHUqVKrqu1pyvt+xjsy/kNFbqg/uURIXR/USAnTJdx52O1bgrwxnm85F/U
	2A01daNkh7nwBOI5qDviBdeVUvqgW/qaysXSCcvo+toPVzA19TAUm3d6DFsIF7YRzOO7IADQLdsaJ
	myiGvDzLMsYrsKw9gajT42+hNFsnQQg8ja3/19bFH0C95ilT+Qzeh+TyyLeOqJBr2rkplADeZJz/7
	oIX3HvV4sbFRoRpUvbGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj6A-0004qQ-Bg; Mon, 18 May 2020 16:58:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj60-0004pe-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:58:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so12722935wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7UrsBklbWEQlXSIzoleVC5S+OEDveOLRjfhFBfKj/1U=;
 b=NwBu0r7wl1gpM7daM6EL/QGiMubgwQrMS7DCx8+Wm8Lyg+2vJddtUQcJeERAwQZJL5
 fPsxNVWNDou4B0PGdUAVuryOhMY0JAn5H7lujgsQObRDL1W/aBlkfInsKn6+u8uvDosc
 qozNeuLAP3u48HfASCRiEDkctG8WgFnHziKs14NtB8EJyIfB9hPN8qYfBhk5ijnxF764
 W0k7+ogDFppnKzURVA2wi86cCUAs2twWBridx7yCjgdykjs8UuHNecYybeC2X0kHut/Z
 p+J/s8zIvyXlFlnM5w4aqPbHCk/waq1N9OgYU74c8WHzHYe28XBAi3kpKL/8WQYf2EWM
 JpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7UrsBklbWEQlXSIzoleVC5S+OEDveOLRjfhFBfKj/1U=;
 b=e9Xml86xZkDm2m5YsJMgErcPMvwzxc1QVb/2dzcDf3ZXjw0ZwaHzsVM82IWqlMZKfj
 a7jVVADkQ08hjRVC6c2cj+5HIoCIt9U9BoGNA/k+jB4ehOvDPYcOO/j3juEi+YI7DWFS
 DOaXShPLR+JIarf58rI+pmjWTw4B5C+OALAUC9ANrUqSRFkBFEglCKOruomCY+k38W2z
 vMSQLptN7zp/9DbeYXSpAg7nO9BJqFLYrbDWU/LPE45k0FVVtVtUr2urAjGpe9X1Octa
 w7rkxz3pcULF/Xv7zA60g2E5KYZWFQzHAKDtRhYRjMC+y36FO3gqZ3tTCrF6BVa6WC+D
 Lijg==
X-Gm-Message-State: AOAM531meM03e4mxNi2JvJoMywoiHAb8CganPQZswSZ1WqGJHZeOEats
 kiq3MksbQUAXJHVui4E0e3Fm5g==
X-Google-Smtp-Source: ABdhPJyz8YyWk+tq57qcErRl35YmZbUh3jm8IYRNJPP4QVZjm2zuQSf2e2RY9yuWYPSrTDhi0GW0MQ==
X-Received: by 2002:adf:e985:: with SMTP id h5mr21630490wrm.239.1589821111188; 
 Mon, 18 May 2020 09:58:31 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8?
 ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
 by smtp.googlemail.com with ESMTPSA id j190sm193855wmb.33.2020.05.18.09.58.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 09:58:30 -0700 (PDT)
Subject: Re: [PATCHv3 00/14] Update omaps to use drivers/clocksource timers
To: Tony Lindgren <tony@atomide.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20200507172330.18679-1-tony@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <340cdd4a-d996-073f-127d-89ce6c05f221@linaro.org>
Date: Mon, 18 May 2020 18:58:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095832_749582_C8D0DAD7 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Brian Hutchinson <b.hutchman@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFRvbnksCgpPbiAwNy8wNS8yMDIwIDE5OjIzLCBUb255IExpbmRncmVuIHdyb3RlOgo+IEhp
IGFsbCwKPiAKPiBIZXJlJ3MgdjMgc2VyaWVzIHRvIHVkcGF0ZSBvbWFwcyB0byB1c2UgZHJpdmVy
cy9jbG9ja3NvdXJjZSB0aW1lcnMgZm9yCj4gdGhlIDMyayBjb3VudGVyIGFuZCBkbXRpbWVyLCBh
bmQgdG8gcmVtb3ZlIHRoZSBvbGQgbGVnYWN5IHBsYXRmb3JtIGNvZGUuCj4gUGxlYXNlIHJldmll
dyBhbmQgdGVzdC4KPiAKPiBJJ3ZlIHVwZGF0ZWQgdGhlIHRpbWVyLXRpLWRtLXN5c3RpbWVyLmMg
cGF0Y2ggYmFzZWQgb24gdGhlIGNvbW1lbnRzIGZyb20KPiBEYW5pZWwgYW5kIFJvYiwgYW5kIGFk
ZGVkIHN1cHBvcnQgZm9yIHNlbGVjdGluZyB0aGUgcHJlZmVycmVkIHRpbWVycyB0bwo+IHVzZS4K
PiAKPiBUaGVuIGZvciBtZXJnaW5nIHdoZW4gZm9sa3MgYXJlIGhhcHB5IHdpdGggdGhpcyBzZXJp
ZXMsIERhbmllbCBpZiB5b3UKPiBjYW4gcGxlYXNlIGFwcGx5IHRoZSBmaXJzdCB0aHJlZSBwYXRj
aGVzIGludG8gYW4gaW1tdXRhYmxlIGJyYW5jaCBpdAo+IHdvdWxkIGJlIGdyZWF0LgoKc28gdGhl
IGNsayBwYXRjaCBhbHNvID8KClsgLi4uIF0KCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+
IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93
IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29r
IHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
