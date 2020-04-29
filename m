Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B927C1BE980
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnT4GE8IZmEfNtfb14WRH1Isi1QMBk2XyM67W7zsTmw=; b=MteEHCnohzDIxG
	gOJuHVlmxet2l5oMbHrsEzXpHWX8DTqzp/mjC5Wwk0muW9WBwyQLUhnrqSrG0LernIWrTx3AW2MZm
	/KPOyabYa7ZVQVumrnwtNcJOI24idJtpS/Q5MW03Qwa7gbIo/J+kYzAzsfum4GyASP9dCUwYO/vcR
	VChcjCb5t+UivboFCewGQwkFiOllSaUXnaKRUoss3N5rP4+j0DPI3ijlZLEI5RMO2HP87eXlSFVaD
	rQY3Y7KQJqbYiPulZ6LjJjmoVEMMvrTO2IJDFO7sAbLeYk2bQcZL7Cpm/+P0/jRRHWeoHIVLQFWn5
	ALJAiLSeAg1Vz4KmViPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtsj-0003cX-5N; Wed, 29 Apr 2020 21:04:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtq9-0001fB-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:02:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id u127so3613115wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+TvQcFiU3aloZC/hJe73C/3yo1nULr9/ZJUA32G7jIE=;
 b=H9LCYrG0FR/boqVhN935EFeTEvmRileVmKdUA0aVoLMMqYWBxAGooFAv607/oc09gQ
 jcrZAm3GONS/8m39QndXY49RaLER9NEFUa653B2ngCBn7ZCGrcdAVjocnNbTrSf25qN4
 vPvKoFVeAsf11wHlPIf7AXMWs6x32q9H7Kzt+1uk4dVUYBPU4TtvcZ8TPmOVqPjx5PWT
 mBAtkgsL671JFF5+qX11uhNIFLn7WPMlr5vI+VKPn92kxe2x9O7zW+lmuKzIekqSOCzv
 Oj3bjL5fQnRn0ScVfPNGTWPkxyJaZbsHQllHV1J0X1F0BbTLG0gkXmvNdH8gq58yCwdh
 DveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+TvQcFiU3aloZC/hJe73C/3yo1nULr9/ZJUA32G7jIE=;
 b=ewSgdFiA6VjDLyq1638/kqnUTNHa6HGnJveexn9WKWCM10bDPo6fZ4paxGO5liDLrf
 4ExaO1is1tRF980Ti3Z5SM5drtdogBEsVNCPOa399QCeHuIzPYw+j9cino2U2t8h+NPU
 smF9cyw2FPTtgF4mz4L1iAak7C4AqrZn6IqnVd6kuXmCw9v04jbw5Z15ygSS1OoOVpvg
 p1VTHNPQe7zyN9mzemlEBX6Tgx5vTqnjc0tYM/qGRfzc5QUIb8+5XJNQLUKPupZlOshb
 nhf21FzOochIGwVZGOlbX68qapz10L3flG9BJmJQQGyzdoE7HyqtdBwa0kXar/XJd0Gw
 Mt+g==
X-Gm-Message-State: AGi0PuZEqAFS6s/TQhOooQJTvCEoB9kwLq7N3qzCmqkBiJWJegWT4Cu0
 njFZ5pZ7qrslZtLIT1oX7/JDupIs8s4=
X-Google-Smtp-Source: APiQypIvQ29o70NDaZXlBpTOIaRhPrpz0gn3DVu8Qm0SOXFFXbUtbluMOqQ01NrQtAIBEVVefhXGfg==
X-Received: by 2002:a05:600c:2f88:: with SMTP id
 t8mr5151772wmn.46.1588194115762; 
 Wed, 29 Apr 2020 14:01:55 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id i25sm9242483wml.43.2020.04.29.14.01.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 14:01:55 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Lukasz Luba <lukasz.luba@arm.com>, rui.zhang@intel.com,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
 <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <04b5da25-d591-b08a-e554-6e084d7ea908@linaro.org>
Date: Wed, 29 Apr 2020 23:01:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_140157_751078_EFEEDBA7 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDQvMjAyMCAyMjowMiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gNC8yOS8y
MCAxMTozNiBBTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+IFRoZSBjcHVpZGxlIGRyaXZlciBj
YW4gYmUgdXNlZCBhcyBhIGNvb2xpbmcgZGV2aWNlIGJ5IGluamVjdGluZyBpZGxlCj4+IGN5Y2xl
cy4gVGhlIERUIGJpbmRpbmcgZm9yIHRoZSBpZGxlIHN0YXRlIGFkZGVkIGFuIG9wdGlvbmFsCj4+
Cj4+IFdoZW4gdGhlIHByb3BlcnR5IGlzIHNldCwgcmVnaXN0ZXIgdGhlIGNwdWlkbGUgZHJpdmVy
IHdpdGggdGhlIGlkbGUKPj4gc3RhdGUgbm9kZSBwb2ludGVyIGFzIGEgY29vbGluZyBkZXZpY2Uu
IFRoZSB0aGVybWFsIGZyYW1ld29yayB3aWxsIGRvCj4+IHRoZSBhc3NvY2lhdGlvbiBhdXRvbWF0
aWNhbGx5IHdpdGggdGhlIHRoZXJtYWwgem9uZSB2aWEgdGhlCj4+IGNvb2xpbmctZGV2aWNlIGRl
ZmluZWQgaW4gdGhlIGRldmljZSB0cmVlIGNvb2xpbmctbWFwcyBzZWN0aW9uLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPj4g
LS0tCj4+IMKgIC0gVjQ6Cj4+IMKgwqDCoCAtIERvIG5vdCBjaGVjayB0aGUgcmV0dXJuIHZhbHVl
IGFzIHRoZSBmdW5jdGlvbiBkb2VzIG5vIGxvbmdlcgo+PiByZXR1cm4gb25lCj4+IC0tLQoKWyAu
Li4gXQoKPiBSZXZpZXdlZC1ieTogTHVrYXN6IEx1YmEgPGx1a2Fzei5sdWJhQGFybS5jb20+CgpU
aGFua3MgTHVrYXN6IGZvciB0aGUgcmV2aWV3LgoKUmFmYWVsLCBhcyBMb3JlbnpvIGFuZCBTdWRl
ZXAgYXJlIG5vdCByZXNwb25zaXZlLCBjb3VsZCB5b3UgY29uc2lkZXIgYWNrCnRoaXMgcGF0Y2gg
c28gSSBjYW4gbWVyZ2UgdGhlIHNlcmllcyB0aHJvdWdoIHRoZSB0aGVybWFsIHRyZWUgPwoKCi0t
IAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2su
Y29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFy
b29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
