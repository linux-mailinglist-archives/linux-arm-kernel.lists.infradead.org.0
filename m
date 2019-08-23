Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C169B448
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 18:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9v8fs1DUPK+xyvNEM3dt18X9VFQdmAJpvOyVrbG1gVI=; b=OAk32RlK6QiRjUSxtfLkc1PvY
	uRZ/kM9Z3EG55Vm7h4rHIKr1GQoJ/GdZCWrNbEy+3YMwUTWaddQKiuNwsjIdXWlDwoDx+kAMgB+EJ
	7SCruVG5JkpMfAcIVe+PWCTj6+PV7GOG+pyoK8Dqkeu4H7yugJydRARlUh78OFie6uNKq7C4tSyJq
	bqRkgmAuyhT+jj8ZSwpCKIMv5/IKyl4QPLSVGhES3ZcL5aU+BXlOS9TjZiUbsZK5KgAiWu0YgLnzy
	k8Kg+K9fhTm7MyocdXkQHO3tg869hAdIGSXmFlWbbRLENNch5ntd90k4+KPZ7KysCT+0I1O+h1jNv
	ymOjPmuxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1C8z-0002DZ-3K; Fri, 23 Aug 2019 16:10:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1C8g-00022o-OX
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 16:10:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so5800507plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 09:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=brEz57KSv9M0lzRju932ZTp5uWTNGJMBeYQNt57q3B8=;
 b=LSk4JaiG3kNahJym5ph4p7/DJszhGCxXYsNz9CSryZBvZSEWdvgKnM9o/iYlhJpnhY
 CIxBe/BWxYQDTnOwVGPWaxb7855aVGTWS2LKsP+jgxko4VMfvsyEeaWp11bI5zR40AxO
 SmqZ1nUYR4g85pD5hbkGczt5q5VVEQvWbckzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=brEz57KSv9M0lzRju932ZTp5uWTNGJMBeYQNt57q3B8=;
 b=aQGFLM/jRcO8tuwtWr4GEbFErJHPcFjiqoFIjZa6egPWw5SfkhzG7L4QDLeXcrIVTy
 vflLnE6bqy6pzCzWoZmL1mcx1AYdi2MVImynKQAhiOl0KEfglUaBvl5L0dhrwet33swu
 jHjZEEr0iDYU1aTjaGrcfupPYbC4t19hFqxsEEFHicfeBfT6DOPO3D+p7OlYz5S5jC48
 QKaco1Dq6MNP8/ekJHNLMOOvfXc0XvVEMFULs+GPJ41FefO94y6xLbE/iZ/4d1PoRKKI
 k/GZjC7B0jZYKsCYlsd+iX3UyrwRAGTN2f+UiGFDxzzG/ZaaRNYBNnst3FhMqikWI6EY
 M7zg==
X-Gm-Message-State: APjAAAWg+OwVr5AwSyPI6EdcIINiRsImPjUI1FF/bmgH0bGHvwerqxSj
 B+1czC6kVCalAxBLdOQ1cLQhCg==
X-Google-Smtp-Source: APXvYqxiP2ekIBBxAiFgPENCMVwHMGc68Z6hyNSBFfdXPSdkPG9bT4Of774IUlvHarZSaUjmecbKzA==
X-Received: by 2002:a17:902:f24:: with SMTP id
 33mr3626425ply.309.1566576609501; 
 Fri, 23 Aug 2019 09:10:09 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id a142sm3342737pfd.147.2019.08.23.09.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:10:08 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_ethernet=3a_Delete_unnecessary_checks_b?=
 =?UTF-8?Q?efore_the_macro_call_=e2=80=9cdev=5fkfree=5fskb=e2=80=9d?=
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Markus Elfring <Markus.Elfring@web.de>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, intel-wired-lan@lists.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, UNGLinuxDriver@microchip.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Allison Randal <allison@lohutok.net>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Douglas Miller <dougmill@linux.ibm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jilayne Lovejoy <opensource@jilayne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jose Abreu
 <joabreu@synopsys.com>, Kate Stewart <kstewart@linuxfoundation.org>
References: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
 <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <c90f0649-0dc0-df9a-21e6-ae6566ca5935@broadcom.com>
Date: Fri, 23 Aug 2019 09:10:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_091010_819687_2EA838AE 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTktMDgtMjMgNzowOCBhLm0uLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4gSGks
Cj4KPiBpbiB0aGlzIHBhdGNoLCB0aGVyZSBpcyBvbmUgcGllY2UgdGhhdCBsb29rZWQgYmV0dGVy
IGJlZm9yZS4gKHNlZSBiZWxvdykKPgo+IFJlbW92aW5nIHRoZSAnaWYgKHNrYiknIGlzIGZpbmUs
IGJ1dCBjb25jYXRlbmluZyBldmVyeXRoaW5nIGluIG9uZSAKPiBzdGF0ZW1lbnQganVzdCB0byBz
YXZlIDIgdmFyaWFibGVzIGFuZCBhIGZldyBMT0MgaXMgb2Ygbm8gdXNlLCBJTUhPLCAKPiBhbmQg
dGhlIGNvZGUgaXMgbGVzcyByZWFkYWJsZS4KQWdyZWVkLgo+Cj4ganVzdCBteSAyYy4KPgo+Cj4g
Q0oKPgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0
L2JjbWdlbmV0LmMgCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21n
ZW5ldC5jCj4gaW5kZXggZDNhMGI2MTRkYmZhLi44YjE5ZGRjZGFmYWEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vZ2VuZXQvYmNtZ2VuZXQuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0L2JjbWdlbmV0LmMKPiBAQCAtMjUxNSwx
OSArMjUxNSwxNCBAQCBzdGF0aWMgaW50IGJjbWdlbmV0X2RtYV90ZWFyZG93bihzdHJ1Y3QgCj4g
YmNtZ2VuZXRfcHJpdiAqcHJpdikKPiDCoHN0YXRpYyB2b2lkIGJjbWdlbmV0X2ZpbmlfZG1hKHN0
cnVjdCBiY21nZW5ldF9wcml2ICpwcml2KQo+IMKgewo+IMKgwqDCoMKgIHN0cnVjdCBuZXRkZXZf
cXVldWUgKnR4cTsKPiAtwqDCoMKgIHN0cnVjdCBza19idWZmICpza2I7Cj4gLcKgwqDCoCBzdHJ1
Y3QgZW5ldF9jYiAqY2I7Cj4gwqDCoMKgwqAgaW50IGk7Cj4KPiDCoMKgwqDCoCBiY21nZW5ldF9m
aW5pX3J4X25hcGkocHJpdik7Cj4gwqDCoMKgwqAgYmNtZ2VuZXRfZmluaV90eF9uYXBpKHByaXYp
Owo+Cj4gLcKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgcHJpdi0+bnVtX3R4X2JkczsgaSsrKSB7Cj4g
LcKgwqDCoMKgwqDCoMKgIGNiID0gcHJpdi0+dHhfY2JzICsgaTsKPiAtwqDCoMKgwqDCoMKgwqAg
c2tiID0gYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+cGRldi0+ZGV2LCBjYik7Cj4gLcKgwqDC
oMKgwqDCoMKgIGlmIChza2IpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2tmcmVlX3Nr
Yihza2IpOwo+IC3CoMKgwqAgfQo+ICvCoMKgwqAgZm9yIChpID0gMDsgaSA8IHByaXYtPm51bV90
eF9iZHM7IGkrKykKPiArIGRldl9rZnJlZV9za2IoYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+
cGRldi0+ZGV2LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwcml2LT50eF9jYnMgKyBpKSk7Cj4KPiDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwg
cHJpdi0+aHdfcGFyYW1zLT50eF9xdWV1ZXM7IGkrKykgewo+IMKgwqDCoMKgwqDCoMKgwqAgdHhx
ID0gbmV0ZGV2X2dldF90eF9xdWV1ZShwcml2LT5kZXYsIHByaXYtPnR4X3JpbmdzW2ldLnF1ZXVl
KTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
