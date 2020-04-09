Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498B31A3D25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xV8W9V04X0AwgGXmoAJAxANzvTKnyAhU+8n7hWotAyo=; b=hCLE3xEWQNoCt+
	wqOLRpVK6NNNplS+tf4pHVD3+ui++0AwHV/OHL1/TeL5Ci1gfQMWHNyc13jI6RbvcnsZsaFSl0bzz
	krGQ4ayRmGFWyPWWO2XhFVXIsmfKNZRwI3ey+qBkWdJN6Q1M9NZioIU8Obb5FULfzUUjr/p4FlheY
	Im1HyfYbNH3hYmqUdIavVz2fXd90HAy0R0WSgv7keoNrQWFmkyqkgixmKBSMYZdYQ30d/zhhSn0UX
	NQtZphka5NdE34MCGX6slJwe1vwxLSKfIivkR5eBhVOAfwz2b3TjHDYbDEPfie9Gu0g2lAO6A2NHS
	Z9hCH1Clrq1mC7qsg+Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMh4C-0007jE-9D; Thu, 09 Apr 2020 23:58:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMh2W-0007aj-S3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:57:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id r17so220323lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h7ou2+MWS5yebpK+PkJaL1qSzOXz/nH64pUokezkgN0=;
 b=ZGFleZwjigSbIXhSeJj/RBOKq1ORM7YyqiRg8grGG6Po3qc4jpwEaMak9ZRmwk5wgN
 WQsVxyJRGFydj9/1SpgNvPKwTWBHH1DEl36qBoV7xT2CEf54yhW1pnsXZ1UVO3dqjbkM
 zyUcsUE7ua7lUZVMlhyOuRctiGCtcx7Xim3Yhv6JH0uKTJCfhX9G3UyieZDK5Tj1YlaK
 r86f6QFFQZ9pCkzdHPTWxxRGZ5LKzctKjCaXbzDkhzv22N+HJSIPm4EsSN+yjkEFf6Af
 8APR0MGmRFSoptFGAFCozmY3c4WBszAEVSfZKkAApzaPBRpZ66insE26eSaFkKPdd2m+
 NbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h7ou2+MWS5yebpK+PkJaL1qSzOXz/nH64pUokezkgN0=;
 b=cEPLRIqwZvYcBiKT1CB1so/B7lC+VOw2QLPqxd81OGqQzXAHfhziMnRuN34CZMaHxv
 SyrkHhtLqcIlKrHi+7fvLyzxJwmxeWNDqHvhqzmEUHww7kefLz37X2yfhnBsAW7xcOOi
 nRHpyhaE1ysYTUZkggKWahiJ2SXsqBA1qKXJr7Z1KRSHcLzt+UUIAHR4n1h6aXbqsrbV
 yFPomV06Hx61xaPnvNjUTZGhTmggkV8Y1Zp0dDWwJ0q5JNyJq+IHrH+4sHlT7TiKUEC7
 cp66/7UhdzxNYvp/YVxna5v7UHWNl2599QhdHlGxz8hSmxJNjjXhJMiNA3PYaPudak91
 mcww==
X-Gm-Message-State: AGi0PuYIuKhXItZ4oprMsKde+QP7Js6npvs251hx7osqd7a84Izvx3yl
 qpanbD9/0b41kLGzvgpfk18XVVZB
X-Google-Smtp-Source: APiQypJR6KOA3fPvqfWuaqk/S2szvx9gudiDB0qTYW3KcISCqn+kQOJFAM8qa4TSuauFyPNKMPiElg==
X-Received: by 2002:a19:5f45:: with SMTP id a5mr1006421lfj.18.1586476614994;
 Thu, 09 Apr 2020 16:56:54 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id i25sm131562ljg.82.2020.04.09.16.56.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 16:56:54 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
Date: Fri, 10 Apr 2020 02:56:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_165659_739934_A79C0F48 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gKyNkZWZp
bmUgQ0xLX1JTVF9DT05UUk9MTEVSX0NMS19TT1VSQ0VfRU1DCQkweDE5YwouLi4KPiArI2RlZmlu
ZSBDTEtfUlNUX0NPTlRST0xMRVJfQ0xLX1NPVVJDRV9FTUNfRExMCQkweDY2NAoKSSdkIHN1Z2dl
c3QgdG8gZG91YmxlIGNoZWNrIGFsbCB0aGUgbWFjcm9zIGFuZCByZW1vdmUgZXZlcnl0aGluZyB1
bnVzZWQsCnRvIG5vdCBwb2xsdXRlIHRoZSBjb2RlLgoKLi4uCj4gKyNkZWZpbmUgVFJJTV9SRUco
Y2hhbiwgcmFuaywgcmVnLCBieXRlKQkJCQkJXAo+ICsJKCgoRU1DX1BNQUNST19PQl9ERExMX0xP
TkdfRFFfUkFOSyAjIyByYW5rICMjIF8gIyMgcmVnICMjCVwKPiArCSAgIF9PQl9ERExMX0xPTkdf
RFFfUkFOSyAjIyByYW5rICMjIF9CWVRFICMjIGJ5dGUgIyMgX01BU0sgJglcCj4gKwkgICBuZXh0
LT50cmltX3JlZ3NbRU1DX1BNQUNST19PQl9ERExMX0xPTkdfRFFfUkFOSyAjIwkJXAo+ICsJCQkJ
IHJhbmsgIyMgXyAjIyByZWcgIyMgX0lOREVYXSkgPj4JXAo+ICsJICBFTUNfUE1BQ1JPX09CX0RE
TExfTE9OR19EUV9SQU5LICMjIHJhbmsgIyMgXyAjIyByZWcgIyMJXAo+ICsJICBfT0JfRERMTF9M
T05HX0RRX1JBTksgIyMgcmFuayAjIyBfQllURSAjIyBieXRlICMjIF9TSElGVCkJXAo+ICsJICsJ
CQkJCQkJCVwKPiArCSAoKChFTUNfREFUQV9CUkxTSEZUXyAjIyByYW5rICMjIF9SQU5LICMjIHJh
bmsgIyMgX0JZVEUgIyMJXAo+ICsJICAgIGJ5dGUgIyMgX0RBVEFfQlJMU0hGVF9NQVNLICYJCQkJ
XAo+ICsJICAgIG5leHQtPnRyaW1fcGVyY2hfcmVnc1tFTUMgIyMgY2hhbiAjIwkJCVwKPiArCQkJ
ICAgICAgX0VNQ19EQVRBX0JSTFNIRlRfICMjIHJhbmsgIyMgX0lOREVYXSkgPj4JXAo+ICsJICAg
RU1DX0RBVEFfQlJMU0hGVF8gIyMgcmFuayAjIyBfUkFOSyAjIyByYW5rICMjIF9CWVRFICMjCVwK
PiArCSAgIGJ5dGUgIyMgX0RBVEFfQlJMU0hGVF9TSElGVCkgKiA2NCkpCj4gKwo+ICsjZGVmaW5l
IENBTENfVEVNUChyYW5rLCByZWcsIGJ5dGUxLCBieXRlMiwgbikJCQkJXAo+ICsJKCgobmV3W25d
IDw8IEVNQ19QTUFDUk9fT0JfRERMTF9MT05HX0RRX1JBTksgIyMgcmFuayAjIyBfICMjCVwKPiAr
CSAgIHJlZyAjIyBfT0JfRERMTF9MT05HX0RRX1JBTksgIyMgcmFuayAjIyBfQllURSAjIyBieXRl
MSAjIyBfU0hJRlQpICYgXAo+ICsJICBFTUNfUE1BQ1JPX09CX0RETExfTE9OR19EUV9SQU5LICMj
IHJhbmsgIyMgXyAjIyByZWcgIyMJXAo+ICsJICBfT0JfRERMTF9MT05HX0RRX1JBTksgIyMgcmFu
ayAjIyBfQllURSAjIyBieXRlMSAjIyBfTUFTSykJXAo+ICsJIHwJCQkJCQkJCVwKPiArCSAoKG5l
d1tuICsgMV0gPDwgRU1DX1BNQUNST19PQl9ERExMX0xPTkdfRFFfUkFOSyAjIyByYW5rICMjIF8g
IyNcCj4gKwkgICByZWcgIyMgX09CX0RETExfTE9OR19EUV9SQU5LICMjIHJhbmsgIyMgX0JZVEUg
IyMgYnl0ZTIgIyMgX1NISUZUKSAmIFwKPiArCSAgRU1DX1BNQUNST19PQl9ERExMX0xPTkdfRFFf
UkFOSyAjIyByYW5rICMjIF8gIyMgcmVnICMjCVwKPiArCSAgX09CX0RETExfTE9OR19EUV9SQU5L
ICMjIHJhbmsgIyMgX0JZVEUgIyMgYnl0ZTIgIyMgX01BU0spKQoKTXkgZXllcy4uIDpQCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
