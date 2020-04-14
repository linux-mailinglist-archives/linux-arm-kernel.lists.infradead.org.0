Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E2E1A859A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/INS6IQ7H/7XTc41OHAGpXG/HkA8gEadGJGF7sYqEk=; b=Ksj5Ez5h7bGG2v
	I/r80Iu9JsCG8hr/983T445Ds5hPnZ1QWSjrSGjpqRduNso9dINtBBo41HfZ0y96hv8e1YhDB2GVg
	NL3nai7rM1ieEqvqnhn1Nhgptvl3nEBsQCOkSXtErgSMKvP9oiG/yM9TfUooxqqYeoI5ahwtHTuKN
	hSzCc+gG1VM3vlWKpF2VDqBpvLgib3fluiiIrdKmG1NklhevusUchjjjiEprm2JnuzMXxlaxbcP27
	QJ9T0dbYRH23RP2Dv2WdjZCiZhWo1lOK2JjAFNQsJDi1svgny1PexdgvBCrAK3pO69I2ioTQq6aAj
	1akVlUD3QlYY1J91X5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOjl-0006lE-6X; Tue, 14 Apr 2020 16:48:37 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOjP-0006cx-Hs
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:48:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id 131so258593lfh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4Kw/fyFEkyNl4nhmDgy4d2CWUNDFR/R0fTw+bRmg16o=;
 b=PamThkVbVW4+gLLvVbtvpBDc87SyAtJSlwa21DAei0japxekALaBraAxt9et9FJiCS
 ia2ZL7HnGN6JUL1BhDZHEuyRRDFmLq1HlPzVyzDUX/0b4IWzCcPP4cUdIB0UEUz1lEfN
 oM4uiYH0kyVMGAsyOlFUOfN/lkNr8Wy1Xa2I/liL1d/+24xBAA4JuRRd57lVFXEBxj4Z
 n5vtAYmpamHQ9CnqBVSzUNtQq73JXTo00Id069Oi1wSotOOrQl4QFJAc9dDxHfpVnBYe
 Qsu9tqVzpeH8QHWVGPd8qZnkwTtUXBs9Zy7nUcGANRr5AfmFgrlj28QPGQo9cHrZGFvr
 zMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4Kw/fyFEkyNl4nhmDgy4d2CWUNDFR/R0fTw+bRmg16o=;
 b=rFmUnmoBbXBIUInliJGjEuVavyKwzGwncjzZ0fq9anngRqdy+PkSnllVsqsXv/o/oH
 KAR18FPZPQpdKjOAu92HzXnP3Vw8FONYXtxTK6G52dFFa6iCR4kvecDx0U+OWaw9SPqA
 Su9n436ybbywpM7skYcp7g6ldrxrLoJKOTo6wSKpLEeKHb1XgChn8a70VoGarnlG8lsy
 8qTitiOihjW4o9YdwG8gZqX6tmvY+0fewALI6CXb7M4ChEYgeYpNcMivliGONFaHfU0X
 bgle+qmyJ+fDdQd5lRv6C6RP2FHp5+tNpA0cGEbxzErxQoHkJqGZqBNAq+znrFU5oKb6
 GbEA==
X-Gm-Message-State: AGi0PubK6+WHJLGqixF8QvzUc5aO5KgT8ikI4cgSTfFMN9EY8/3/P/cX
 RdSzGAIrtq5IaKOK597DxPM=
X-Google-Smtp-Source: APiQypLkikpgZUnOTOdp6SzcFWIX++W+faWrLSWt8Ymz5B2tCPgZUoXWJOOrOAF/DKPTCiQ5Zyeyug==
X-Received: by 2002:a05:6512:490:: with SMTP id
 v16mr418834lfq.71.1586882893937; 
 Tue, 14 Apr 2020 09:48:13 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id r23sm9540512ljh.34.2020.04.14.09.48.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 09:48:13 -0700 (PDT)
Subject: Re: [PATCH v6 04/14] clk: tegra: Rename Tegra124 EMC clock source file
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-5-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a7209708-6e67-5885-5935-2db3d92174e8@gmail.com>
Date: Tue, 14 Apr 2020 19:48:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-5-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094815_588809_DF094740 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBUaGll
cnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IAo+IFRoaXMgY29kZSBpcyBvbmx5IHVz
ZWQgb24gVGVncmExMjQsIHNvIHJlbmFtZSBpdCBhY2NvcmRpbmdseSB0byBtYWtlIGl0Cj4gbW9y
ZSBjb25zaXN0ZW50IHdpdGggb3RoZXIgZmlsZSBuYW1lcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
aGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay90
ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMv
Y2xrL3RlZ3JhL3tjbGstZW1jLmMgPT4gY2xrLXRlZ3JhMTI0LWVtYy5jfSB8IDAKPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ICByZW5hbWUgZHJpdmVy
cy9jbGsvdGVncmEve2Nsay1lbWMuYyA9PiBjbGstdGVncmExMjQtZW1jLmN9ICgxMDAlKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay90ZWdyYS9NYWtlZmlsZSBiL2RyaXZlcnMvY2xrL3Rl
Z3JhL01ha2VmaWxlCj4gaW5kZXggMWY3YzMwZjg3ZWNlLi5kZWM1MDhlZjJhZGEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9jbGsvdGVncmEvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL2Nsay90ZWdy
YS9NYWtlZmlsZQo+IEBAIC0xNCw3ICsxNCw2IEBAIG9iai15CQkJCQkrPSBjbGstdGVncmEtYXVk
aW8ubwo+ICBvYmoteQkJCQkJKz0gY2xrLXRlZ3JhLXBlcmlwaC5vCj4gIG9iai15CQkJCQkrPSBj
bGstdGVncmEtZml4ZWQubwo+ICBvYmoteQkJCQkJKz0gY2xrLXRlZ3JhLXN1cGVyLWdlbjQubwo+
IC1vYmotJChDT05GSUdfVEVHUkFfQ0xLX0VNQykJCSs9IGNsay1lbWMubwo+ICBvYmotJChDT05G
SUdfQVJDSF9URUdSQV8yeF9TT0MpICAgICAgICAgKz0gY2xrLXRlZ3JhMjAubwo+ICBvYmotJChD
T05GSUdfQVJDSF9URUdSQV8yeF9TT0MpCQkrPSBjbGstdGVncmEyMC1lbWMubwo+ICBvYmotJChD
T05GSUdfQVJDSF9URUdSQV8zeF9TT0MpICAgICAgICAgKz0gY2xrLXRlZ3JhMzAubwo+IEBAIC0y
Miw2ICsyMSw3IEBAIG9iai0kKENPTkZJR19BUkNIX1RFR1JBXzN4X1NPQykJCSs9IGNsay10ZWdy
YTIwLWVtYy5vCj4gIG9iai0kKENPTkZJR19BUkNIX1RFR1JBXzExNF9TT0MpCSs9IGNsay10ZWdy
YTExNC5vCj4gIG9iai0kKENPTkZJR19BUkNIX1RFR1JBXzEyNF9TT0MpCSs9IGNsay10ZWdyYTEy
NC5vCj4gIG9iai0kKENPTkZJR19URUdSQV9DTEtfREZMTCkJCSs9IGNsay10ZWdyYTEyNC1kZmxs
LWZjcHUubwo+ICtvYmotJChDT05GSUdfVEVHUkFfQ0xLX0VNQykJCSs9IGNsay10ZWdyYTEyNC1l
bWMubwoKV2hhdCBhYm91dCB0byByZW5hbWUgQ09ORklHX1RFR1JBX0NMS19FTUMgdG8gQ09ORklH
X1RFR1JBMTI0X0NMS19FTUMgYXMKd2VsbD8KCkFsc28uLiBtYXliZSB0aGUgQ09ORklHX1RFR1JB
X0NMS19FTUMgaXNuJ3QgcmVhbGx5IG5lZWRlZCBhdCBhbGwgYW5kIHRoZQpURUdSQTEyNF9FTUMg
b2YgbWVtb3J5L3RlZ3JhIGNvdWxkIGJlIHJlLXVzZWQgaGVyZT8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
