Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606F21F4AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 03:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mbwDRJ6qi2q1NXLlMqwblThQ6blyWkExmnvgCwOezgY=; b=hp5nWlD2XVG0RM9jewB4MAVJma
	S0nWXFqKibyewDDHcctRrr3Dfeae3H5ZvdyttMorrlR2AAFaezhgBJWCLA2A9pSRqvUP/eH1cpUW1
	19IAJD1+sH0u59wdJWX80TQUg+UycvRemKuZylEeeJ9aOIIbNBnkBYaZEtKedJE8oRpABZaYKQukk
	I3XMAVUR+FOfQ1mgR266+tFQgb44emnZizDlxt8Kr5dsLe4i+XWxDIQeNX3uMcRU3N/wvKbYrvAc/
	zMtVsrgrcE1qjlWjI74ooC9CcI9YdEphC+qH6FR0Wosl6yy8noCZkqRmUf7mWNg6VqFy5bk2e7cgV
	cxrV4wWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jipLI-0003zh-AK; Wed, 10 Jun 2020 01:15:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jipL9-0003xD-Fw
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 01:15:40 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d6so167123pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 18:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=oyato65N6RhbhXQIpX0Ba1w0djuilKUjyr0ebq1Bq+g=;
 b=XAD197r7c9G2ON3v9ggHzGURpIIX5fCie1iMJMy2/tvb3a6pMJUm1LRwaalwCdjSo1
 bRWQ62AzU7nw2m1RSWHyug2jEmqSPBTU+253TuIu9NSAB40I8rBOStnwx9SFd/Kz7aBf
 AFXpVGbRdQpDkfqjeM0EGEFmiA9VT6OLygXfKKm6ZxIapAfh8ea00MQ+x/2REbNxQFaj
 LTe/89pCIwQgENpdU12qpAam0ryG6tcv1pom0dxVU5v+hej4205SpZ322QqVJm8bc+JC
 uzHZZ9zc2gnh0Kir/2qbTZYMO1PrSmvhw5lck5EKvImBFD7EeoUk6vIoyYXQBgx85XP+
 FRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oyato65N6RhbhXQIpX0Ba1w0djuilKUjyr0ebq1Bq+g=;
 b=K+BFM42uxrQOyg4Io2AZWKwOt1c6TYt5MksbsfH4gMs04/7p4MqgOJG/4mKGP/eXci
 gYN/4Su5HRWwMcgDCgyphgYpOXGFOwj10lN9D8j2+vLmwH0jW3LjMiHX7sLU9kAyynh5
 phM9aF6WoYNQxHNvOegQYEP3/n/s+No55s2ho2MeMQBoWwJhdwgdmz9IHPfTtJkpU1Sg
 HvR51yfMsaR3pBnOypvlAPHZyfhxB1CS3EZUj1bm0WKLj2U1PLHJtnEszamiGMNWtL5i
 HnlvHmcRAgy3z8DlVg302X+PK7E1rSd4qbopulAShvvdBVZ+urFUOqQMd8iH5X5jSGn8
 1/2A==
X-Gm-Message-State: AOAM532V40eqXBLMvpW5Gwj19g1KesUhnXlGWF94UZjrAbDP2mUdzjID
 psGgIi4awfwKa8EoHB49xgGiT3WW
X-Google-Smtp-Source: ABdhPJw4WPqJ6jPJGhBvMYVHRL0Ltxuo05ja1OqxCvgSxGd+SkQ2jtPG1jINATFQyZH3XnEavHuDcQ==
X-Received: by 2002:a17:90a:b90:: with SMTP id 16mr548953pjr.85.1591751738313; 
 Tue, 09 Jun 2020 18:15:38 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o1sm11595856pfu.70.2020.06.09.18.15.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 18:15:37 -0700 (PDT)
Subject: Re: [PATCH 1/4] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <f6cbb9bb-15df-6283-a509-ea8a8b9bdaab@gmail.com>
Date: Tue, 9 Jun 2020 18:15:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609105244.4014823-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_181539_538320_65AF73A5 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzkvMjAyMCAzOjUyIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKPiB0byBlbmFibGUvZGlzYWJsZSBjZXJ0YWluIGNvbXBvbmVudHMg
aW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7D
oW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9taXBzL2JyY20vc29jLnR4dCAgICAgICB8IDE3ICsrKysrKysrKysrKysrKysrCgpZ
b3Ugc2hvdWxkIHByb2JhYmx5IGNyZWF0ZSBhIFlBTUwgYmluZGluZyBmcm9tIHRoZSBiZWdpbm5p
bmcgdGhhdCB3YXkKeW91IGdldCB2YWxpZGF0aW9uIGZvciBmcmVlLiBUaGlzIGZpbGUgc2hvdWxk
IHVsdGltYXRlbHkgYmUgYnJva2VuIGRvd24KaW50byBzZXBhcmF0ZSBZQU1MIGJpbmRpbmdzLCBi
dXQgSSBIYXZlIG5vdCBoYWQgdGhlIHRpbWUgdG8gZG8gdGhhdCB5ZXQKKHlvdSBhcmUgd2VsY29t
ZSB0byBpZiB5b3UgZmVlbCBsaWtlIGl0KS4KCk90aGVyIHRoYW4gdGhhdCwgdGhlIGJpbmRpbmcg
ZGVmaW5pdGlvbiBsb29rcyBnb29kIHRvIG1lLgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
