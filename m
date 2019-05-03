Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3996612977
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 10:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/JyJXrR2FcwARRZfX/Fh2o2PAVBkdWtHnVjLcv4QYA=; b=nS/lt2C0sRVaEM
	T3qC3UmxI+mY0KB8DsGgrJs0pjZRHF6QIgv3L8sxrWmM0MCl/G74aMeTD+zWw0NYFs1aOM2kIRilH
	PI1gXxKf5bTiFGF7LoE0nr5zu8b5vgknVhs+2MZQkZTbScChVLIC7i9LyozxkbZMD/S2sMrn4bPlx
	g/aHBJ0Z0X2N/EwVmKxiNlID9KuRrXm7m4ZAwqydCs4Sl1k0dG6ALOhNbmTatX2fKIlDIO9ZcsVEJ
	4aiAO2f2GMMTLhgUGU7G9JsdEC/tNvJEXgZgL0/x6GLurnqlztRTtXhP1N1I8E53/QZgfp4/TpaQy
	JRvr10aPjzsEGWZvF/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTBb-0003oc-7y; Fri, 03 May 2019 08:04:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTBU-0003oA-7S
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 08:04:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id e28so6658378wra.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 01:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TpXqJQI7PVBHDytg+IGA8i8m1/XYj0MrND3X98mgWRU=;
 b=KOwMT0Cl9efaAA08+DXGflf+klv1sSVEHKxtGUL+CBB2gxt07xyd+GyRUCCFVKzsBF
 vKFUzaTq0/DOqlmb39mbYs9iH9RkOcgL/KAAeaSaMlUscaGj/bjbj+P1qApNVwESdscJ
 g+1LJrqUlO8vcWihy8sZ39L1L6LS1ajt0o5fzIYYJaQhvca+WfuJGXFbdFR2rcym4b4t
 zBYkf1Llb/Z3r2f2Mqm8DStMLgaZcHBFBYpuH2Uow5/FZOaBijtEgoGFhaFs2w3Lbcsf
 fUx7d6Qd9AwY90DycZfziK6toE6kMAjg8Mx+cK1CNVyDwdMXuzYcxD1e3vRmAV6UcGSV
 1pBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TpXqJQI7PVBHDytg+IGA8i8m1/XYj0MrND3X98mgWRU=;
 b=OOtOg+nzf3oe+IgcK3kOjjYbiXuRZw+sKr7z5lKJeEcayOquzMSVOFkmI5YMMNzZ/c
 WjIHX6J3Vec5bYXvWaWXCEpudads9tT9VGWjeoSjazOHzEBiOAUX6gnGJXX8Ha0i1sWJ
 KjjoAP/Uvmda2T37obdS9U37EvkZq7PXxdD3c5tNgEgXOJccblSFs7wN3lAl3ILlf0y7
 FZ7YTiFpSHHyi4zqvBnSevrtJRmKJNGzX7FTnikGCvxRRbzXbtEPCrq7HvrKIEdPbQ9n
 P48pMXubA3Gf+z9nFZN3q81M7ZqBE4I0Emoq3OG2WXqec9Xlx4qZgCsfp4Ef42M+d1ba
 NwiQ==
X-Gm-Message-State: APjAAAUcL+nkiQaoSfFQ8m8Di5WZxQ4v+LdcnI3Vkx3GAOP+CRsn2iiq
 2+OgjORr07veDv8n8xzES4vijA==
X-Google-Smtp-Source: APXvYqzRH5TpkdzGloadzIxAtQZsM2JgxqfDy9oibY2Qrd4ctA1Tpc85qqJ9ZfJamG8tTMt5Vi3YIQ==
X-Received: by 2002:a5d:430f:: with SMTP id h15mr5756534wrq.132.1556870681778; 
 Fri, 03 May 2019 01:04:41 -0700 (PDT)
Received: from [192.168.0.41] (223.235.129.77.rev.sfr.net. [77.129.235.223])
 by smtp.googlemail.com with ESMTPSA id k1sm1159060wmi.48.2019.05.03.01.04.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 01:04:41 -0700 (PDT)
Subject: Re: [PATCH 1/6] thermal: Introduce
 devm_thermal_of_cooling_device_register
To: Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-pm@vger.kernel.org
References: <1555617500-10862-1-git-send-email-linux@roeck-us.net>
 <1555617500-10862-2-git-send-email-linux@roeck-us.net>
 <20190501164843.GA16333@roeck-us.net>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c8a26b7d-2775-e13f-21b7-dbc901ea3b0b@linaro.org>
Date: Fri, 3 May 2019 10:04:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501164843.GA16333@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_010444_277981_95E3A00B 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jean Delvare <jdelvare@suse.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Nancy Yuen <yuenn@google.com>, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kamil Debski <kamil@wypas.org>, Tali Perry <tali.perry1@gmail.com>,
 Eduardo Valentin <edubezval@gmail.com>, Avi Fishman <avifishman70@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Zhang Rui <rui.zhang@intel.com>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMDUvMjAxOSAxODo0OCwgR3VlbnRlciBSb2VjayB3cm90ZToKPiBPbiBUaHUsIEFwciAx
OCwgMjAxOSBhdCAxMjo1ODoxNVBNIC0wNzAwLCBHdWVudGVyIFJvZWNrIHdyb3RlOgo+PiB0aGVy
bWFsX29mX2Nvb2xpbmdfZGV2aWNlX3JlZ2lzdGVyKCkgYW5kIHRoZXJtYWxfY29vbGluZ19kZXZp
Y2VfcmVnaXN0ZXIoKQo+PiBhcmUgdHlwaWNhbGx5IGNhbGxlZCBmcm9tIGRyaXZlciBwcm9iZSBm
dW5jdGlvbnMsIGFuZAo+PiB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlX3VucmVnaXN0ZXIoKSBpcyBj
YWxsZWQgZnJvbSByZW1vdmUgZnVuY3Rpb25zLiBUaGlzCj4+IG1ha2VzIGJvdGggYSBwZXJmZWN0
IGNhbmRpZGF0ZSBmb3IgZGV2aWNlIG1hbmFnZWQgZnVuY3Rpb25zLgo+Pgo+PiBJbnRyb2R1Y2Ug
ZGV2bV90aGVybWFsX29mX2Nvb2xpbmdfZGV2aWNlX3JlZ2lzdGVyKCkuIFRoaXMgZnVuY3Rpb24g
Y2FuCj4+IGFsc28gYmUgdXNlZCB0byByZXBsYWNlIHRoZXJtYWxfY29vbGluZ19kZXZpY2VfcmVn
aXN0ZXIoKSBieSBwYXNzaW5nIGEgTlVMTAo+PiBwb2ludGVyIGFzIGRldmljZSBub2RlLiBUaGUg
bmV3IGZ1bmN0aW9uIHJlcXVpcmVzIGJvdGggc3RydWN0IGRldmljZSAqCj4+IGFuZCBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKiBhcyBwYXJhbWV0ZXJzIHNpbmNlIHRoZSBzdHJ1Y3QgZGV2aWNlX25vZGUg
Kgo+PiBwYXJhbWV0ZXIgaXMgbm90IGFsd2F5cyBpZGVudGljYWwgdG8gZGV2LT5vZl9ub2RlLgo+
Pgo+PiBEb24ndCBpbnRyb2R1Y2UgYSBkZXZpY2UgbWFuYWdlZCByZW1vdmUgZnVuY3Rpb24gc2lu
Y2UgaXQgaXMgbm90IG5lZWRlZAo+PiBhdCB0aGlzIHBvaW50Lgo+Pgo+IAo+IEFueSBmZWVkYmFj
ayAvIHRob3VnaHRzIC8gY29tbWVudHMgPwoKSGkgR3VlbnRlciwKCkkgaGF2ZSBjb21tZW50cyBh
Ym91dCB5b3VyIHBhdGNoIGJ1dCBJIG5lZWQgc29tZSB0aW1lIHRvIGRvdWJsZSBjaGVjayBpbgp0
aGUgY3VycmVudCBjb2RlIGhvdyB0aGUgJ29mJyBhbmQgJ2Rldm0nIGFyZSBpbXBsZW1lbnRlZC4K
CgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
