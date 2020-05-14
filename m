Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419C1D29B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGMpEexVubKHOEm8UutajR0Zd1mQEfOXaeLbCk1ByYg=; b=gyA+nasN9tjGzP
	wcsua6wOPURSGJli09jbhoVGqwWwWM9Fv/PiSnY6EITafUql/Rr9Oz7+43LmteNlt1sNhSd5L5Cf5
	M4sQ51fgE5j02EFQHqLvnRtSxJV3pzGe5fEGBoFSXJkfIOcLiIqta7kS9y0Tnsnyt6Gfpwm9MNJYG
	Fpt5u7q60wW+9lLZTZqPJb+/la2+6RpzrGdGjrcrRfKKGwkVMBp2NSKa+MULEY+P0nJewCv4h6Zad
	GDD7bjdrunztxGvjBSmIpBsH7BuqaGAKrOKi+wlNyybFI5jOJvLTmANK/BDqR10YEnTEIrlCLtys6
	2T8c2ALtPj/rLV3wM12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8un-0003XZ-BR; Thu, 14 May 2020 08:08:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8ua-0003Vm-VP
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:08:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id g14so13683463wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+dBTttPdObnoAHm8o3XOpB6wiom9rFH5IVHvtwcE0HI=;
 b=p6ePzTd27zTHt8YXadOh+yoHGm+Jq5Ilo3RFJ0ldQcG6r0KUmypuXk5qeszLRta7cQ
 y8Mk/1VZCW+nO+tGbNExaZIOLHdDrvGHs5SuUwYqtIFvLaJzyIWWxVfLJUEu0iduxz0v
 mDl2sk29sX7F8ZHh/tR9P7FwKia5yfSQyzT2g5ExKjASfyYsNho75mLvE60R39UKSgSO
 Lu6eTJNxpQOQ+9+BaCWnmo6uKWNLDmBWIGP7hWAxe/jlo+ZiIH03E/m99g1EM/2Nh0bB
 Mt61DMfCMIYUXvLKb/muchhMzPavtv8rY52o0c5ykqUWGZUvJn7fwDsSB6oLa29h2yDX
 dbTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+dBTttPdObnoAHm8o3XOpB6wiom9rFH5IVHvtwcE0HI=;
 b=ef+852wOv5+ef4cvdCin7yHKrkRnikQ+v7NeDi1r/NdUwX4m1ef8IWIhTEdk2ucd80
 KMHS/TpO/qmZXLulnPBXSER7LOJtyzvWInGyxTJzS1hiyyByuOBoy8AM+n0mgN6Co0BP
 X3YIy11cxj7LbJ+p2ucPOKzMEmq8kYA3fhl7gNtbXH+Vogi7fAoLotKx66AbanTVQqAS
 XTxQTwg4FQHIjEI4ZEoHobDbEl8zE7uzVuQ294w+zQ2SSdFGnouLB9hGfBFNuLWP30um
 Nb7hIIFLbfTxdcqoiAXlXRhyOBVn59UFOj6kmUQNohIMy287lTZjxoQQnf42AoGQnCMz
 DvMg==
X-Gm-Message-State: AOAM530wBcURlmc6gkBZ+gTAvD9kwaOgCWnFnS4k77xXCbt+UREHIoZf
 nuKrG9rw6KIK26kTJ59xEeU+uiAuwsw=
X-Google-Smtp-Source: ABdhPJxp4IlgGcuqBONSjUjvyjF5xuOobYyR62/UafK9OpqwbPrMPajEW49YlhsRquv+6SOQWVf3iA==
X-Received: by 2002:a1c:4806:: with SMTP id v6mr1080870wma.20.1589443691089;
 Thu, 14 May 2020 01:08:11 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:ddb0:8d90:9d95:ff51?
 ([2a01:e34:ed2f:f020:ddb0:8d90:9d95:ff51])
 by smtp.googlemail.com with ESMTPSA id
 g187sm10106409wmf.30.2020.05.14.01.08.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 01:08:10 -0700 (PDT)
Subject: Re: [v4,7/7] thermal: mediatek: use spinlock to protect PTPCORESEL
To: Michael Kao <michael.kao@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <20200323121537.22697-8-michael.kao@mediatek.com>
 <1589439322.11120.2.camel@mtksdccf07>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <09278638-aa39-c130-95ff-7e9de34cc4eb@linaro.org>
Date: Thu, 14 May 2020 10:08:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589439322.11120.2.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010813_009621_1AD74949 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDUvMjAyMCAwODo1NSwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gT24gTW9uLCAyMDIwLTAz
LTIzIGF0IDIwOjE1ICswODAwLCBNaWNoYWVsIEthbyB3cm90ZToKPj4gRnJvbTogIm1pY2hhZWwu
a2FvIiA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+Pgo+PiBUaGUgZHJpdmVyIG9mIHRoZXJt
YWwgYW5kIHN2cyB3aWxsIHVzZSB0aGUKPj4gc2FtZSByZWdpc3RlciBmb3IgdGhlIHByb2plY3Qg
d2hpY2ggc2hvdWxkIHNlbGVjdAo+PiBiYW5rIGJlZm9yZSByZWFkaW5nIHNlbnNvciB2YWx1ZS4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL3RoZXJtYWwvbXRrX3RoZXJtYWwuYyB8IDkgKysrKy0tLS0t
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+PgoK
WyAuLi4gXQoKPiBIaSBNYXR0aGlhcywKClRob3NlIHBhdGNoZXMgZmFsbCB1bmRlciB0aGUgdGhl
cm1hbCBmcmFtZXdvcmsgdW1icmVsbGEuCgpUaGFua3MKICAtLSBEYW5pZWwKCgotLSAKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdl
cy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3
aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
