Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A77AA5F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBIEbACQcFDS3tA1wbnOzEnBap/db7kLJB3fkjzgU70=; b=l/8hXqeNgVv/Em
	HtlOfxxYKhy9PXNj0W9XAG0h3txAI+jIhISI8kx/beQMWc6Z5M1V6VmfzBXysHjgp7J1ymESXLgr6
	gKWMce0Okg8fFaMLQfOodmOXOipBt0kvmPUmv2zwhquA2wWlt+NIubQyvoqkaHW2JZ1gJszoMPqW3
	bz4ymFOojkL/GuqlNo0GFCb2IiK3z8Df9ecGIXtR4QE6CEwvVDu8Rf//C4mn/AMpNL5maeh6uxWLI
	NFd+GJOyXRWnOlePpFgCWtbb6WUMXbTkK4j+ADtQl0xtLItGmurp6NxY+QRIK13kPCh6OtbTgWJPj
	zeqhgxsjA4HqAa0oy4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5spk-0001Wo-MI; Thu, 05 Sep 2019 14:34:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5spZ-0001Vj-B5
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:33:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id t17so3090264wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 07:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=0kWQEXS+ph2//LVOCjdO1AE5KiNrMj2peKb0h4PZi2w=;
 b=eVNvXseNmZf9gF4JlJ38WkzGzId7Rgu2QI1agmcAC1WMAo7DFc//p/dikQDyNObe7r
 AD0Ku0o6aLqrepbZpEAP2tSTLtWl/cgDYFite3oeWkDBX1MWEz6JD3Bo5EZzlOb//cC/
 oo6URQjKmK3aiAWe3FzpNayt/Pm8uA1LlzSCrZwG+i+bDiM2VeSEpmzgRwTQat16IGiM
 rE2aFL/djYliujAxKw3d52rugP9PFqCcMEgmVWI155TCYO1kJN9e5hNpAOzyCAkbkbA8
 nc9dapTBKNIcSn61NIPiDtC069BrkdmGKaN2wJKTmurBTjyuML5MelDUoIvhd9iONLbQ
 qwlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=0kWQEXS+ph2//LVOCjdO1AE5KiNrMj2peKb0h4PZi2w=;
 b=jJf/0sb9wjqIAdNWE2lOtlycDl1NQuUxdGB6wqJrqSHPlHJcIrsuBf7yV4NsubZclr
 SgscPW00MzDsiJCvLvY5Ctc7pHYWxfWzt1h0sAMNz48lsA2QssKu4XcK23zDEcEYPUZQ
 eHpFRYbpVdJUCuAfwacHF4l7mVd96S2MblDjrvRHojnvADNybPC/7rIXl7ChAscQ9whb
 u2Xny8v+rO7xv8LnpUuFDn2GjQC2HGz9OtD1phnNqwJd2vPzw9u0fNhkVo685kcE1m2t
 BKXI3quH9k43HfOR/XcuAChruwqaXJG1sqsQqeESX7Uinpmc7r8IO0Pr0+5Bu0dxoSiM
 BOrw==
X-Gm-Message-State: APjAAAX5IJAnumqZcnYSmEoW/hNuMucNAEp390/66A5R3WK5FnzSfoJE
 Xo5kuCPkznbX+zZC3BwZwPIZng==
X-Google-Smtp-Source: APXvYqxndoj+n5/jORTCTc0U+rjE4qY/hlpTto8yxEG1p+EkbUjD5WDA36ObaUU4QIXj7MlbI/xljA==
X-Received: by 2002:a1c:9a4a:: with SMTP id c71mr3044824wme.99.1567694027358; 
 Thu, 05 Sep 2019 07:33:47 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id b26sm2817469wmj.14.2019.09.05.07.33.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 07:33:46 -0700 (PDT)
Date: Thu, 5 Sep 2019 15:33:45 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905143345.GF26880@dell>
References: <20190905102247.27583-1-lee.jones@linaro.org>
 <20190905134941.GG1157@kunai>
 <3458ed2a-ae49-b46b-3e89-ce039a2749b4@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3458ed2a-ae49-b46b-3e89-ce039a2749b4@axentia.se>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_073349_416404_7B3A99B3 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "alokc@codeaurora.org" <alokc@codeaurora.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwNSBTZXAgMjAxOSwgUGV0ZXIgUm9zaW4gd3JvdGU6Cgo+IE9uIDIwMTktMDktMDUg
MTU6NDksIFdvbGZyYW0gU2FuZyB3cm90ZToKPiA+IEhpIExlZSwKPiA+IAo+ID4gSSB1bmRlcnN0
YW5kIHlvdSBhcmUgaW4gYSBodXJyeSwgYnV0IHBsZWFzZSBkb3VibGUgY2hlY2sgYmVmb3JlCj4g
PiBzZW5kaW5nLi4uCj4gCj4gTGludXMgaW5kaWNhdGVkIHRoYXQgYW4gcmM4IGlzIGNvbWluZyB1
cCwgd2hpY2ggc2hvdWxkIHByb3ZpZGUgYW4gZXh0cmEgd2Vlay4KPiBodHRwczovL2x3bi5uZXQv
QXJ0aWNsZXMvNzk4MTUyLwoKVGhhdCBpcyBnb29kIG5ld3MuCgo+ID4gT24gVGh1LCBTZXAgMDUs
IDIwMTkgYXQgMTE6MjI6NDdBTSArMDEwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4+IFdlIGhhdmUg
YSBwcm9kdWN0aW9uLWxldmVsIGxhcHRvcCAoTGVub3ZvIFlvZ2EgQzYzMCkgd2hpY2ggaXMgZXho
aWJpdGluZwo+ID4+IGEgcmF0aGVyIGhvcnJpZmljIGJ1Zy4gIFdoZW4gSTJDIEhJRCBkZXZpY2Vz
IGFyZSBiZWluZyBzY2FubmVkIGZvciBhdAo+ID4+IGJvb3QtdGltZSB0aGUgUUNvbSBHZW5pIGJh
c2VkIEkyQyAoU2VyaWFsIEVuZ2luZSkgYXR0ZW1wdHMgdG8gdXNlIERNQS4KPiA+PiBXaGVuIGl0
IGRvZXMsIHRoZSBsYXB0b3AgcmVib290cyBhbmQgdGhlIHVzZXIgbmV2ZXIgc2VlcyB0aGUgT1Mu
Cj4gPj4KPiA+PiBUaGUgYmVhdXRpZnVsIHRoaW5nIGFib3V0IHRoaXMgYXBwcm9hY2ggaXMgdGhh
dCwgKmlmKiB0aGUgR2VuaSBTRSBETUEKPiA+PiBldmVyIHN0YXJ0cyB3b3JraW5nLCB3ZSBjYW4g
cmVtb3ZlIHRoZSBDIGNvZGUgYW5kIGFueSBvbGQgcHJvcGVydGllcwo+ID4+IGxlZnQgaW4gb2xk
ZXIgRFRzIGp1c3QgYmVjb21lIE5PT1AuICBPbGRlciBrZXJuZWxzIHdpdGggbmV3ZXIgRFRzIChs
ZXNzCj4gPj4gb2YgYSBwcmlvcml0eSkgKnN0aWxsKiB3aWxsIG5vdCB3b3JrIC0gYnV0IHRoZXkg
ZG8gbm90IHdvcmsgbm93IGFueXdheS4KPiA+IAo+ID4gLi4uIGJlY2FzdWUgdGhpcyBwYXJhZ3Jh
cGggZG9lc24ndCBmaXQgYW55bW9yZS4gTmVlZHMgdG8gYmUgcmV3b3JkZWQuCgpZZXMsIHlvdSdy
ZSByaWdodC4gIEkgbm90aWNlZCBhbG1vc3QgdGhlIG1vbWVudCBJIHByZXNzZWQgc2VuZC4gOigK
Cj4gPj4gRml4ZXM6IDhiYzUyOWIyNTM1NCAoInNvYzogcWNvbTogZ2VuaTogQWRkIHN1cHBvcnQg
Zm9yIEFDUEkiKQo+ID4gCj4gPiBBcyBzYWlkIGluIHRoZSBvdGhlciB0aHJlYWQsIEkgZG9uJ3Qg
Z2V0IGl0LCBidXQgdGhpcyBpcyBub3QgYSBzaG93Cj4gPiBzdG9wcGVyIGZvciBtZS4KCkFoIHdh
aXQuICBZZXMsIHRoaXMgaXMgYXBwbGllZCBhZ2FpbnN0IHRoZSB3cm9uZyBwYXRjaC4KClBsZWFz
ZSBpZ25vcmUuCgo+IFdBRzogYmVjYXVzZSBBQ1BJIG1hZGUgc29tZSBkcml2ZXIgbG9hZCBhdCBh
bGwsIGFuZCB3aGVuIGl0Cj4gZGlkIGl0IHNvbWV0aGluZyBzdGFydGVkIGhhcHBlbmluZyB3aGlj
aCBjcmFzaGVkIHNvbWUgbWFjaGluZXMuCgpJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHRoaXMg
c2VudGVuY2UuCgouLi4gcmVzZW5kaW5nIG5vdy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
TGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIg
fCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
