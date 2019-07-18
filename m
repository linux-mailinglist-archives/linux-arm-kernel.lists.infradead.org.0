Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688DB6CB9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8mD1I4pj+3tZ3yMS1eCWOiORBhI9X7gmLgIYl5asI6g=; b=nzzC0HIMVTPWeu4eqvlpI1E9e
	7oGONe0yFIA9wnyPpbp9Bh2RrKG5g/W1qrnRV6qNWOEYS4YO0iGEBbDvDhB14WyUkCCcjnW5EqiOt
	+uLXr4dq8Nm6SneI3Pz41ft09f93Uh+1zIrI7fuEG+yosb+Pb3AH+GKQu320W23g4h2klgwju3wXc
	Msn8JeROCKFuLfDUJ3JPppcw5u2iJSeHXacrqzCpQPaFiczl/FH8vvBP4Gaf4Hf7cOTbib7vzkSyv
	pe7X8EM0q5+2sw6ZAU345Y1airsnmC4n0j+PnUClJ2wNGYSxmCJ6nRHn8OH65dk69X29MeWNjMy28
	6X1CzZsew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2V1-00042W-4R; Thu, 18 Jul 2019 09:14:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2US-00041H-Se
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:14:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 84451616B8; Thu, 18 Jul 2019 09:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563441253;
 bh=VhDyfrl5HF7LGKh1nzpDD9O11fTQif36TkBw/IKiH5Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=OVL3O3jIY5WcsCb/ZP/hpi5L6lTZWXe7BdNfgZalajMwCXDNyBeKYQiDM1uq5pI6K
 iear6cz7SIpDlGprULiWjQXaHVEf9H8/g3eOCYj1UqMxuLA6tA+kv9DghqfxMUrPGx
 sNjjEdbYJ7FyxZiu86XBqs4P1D8lgppftVz1g0ow=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.43.47] (unknown [157.49.202.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7CC8260E3F;
 Thu, 18 Jul 2019 09:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563441252;
 bh=VhDyfrl5HF7LGKh1nzpDD9O11fTQif36TkBw/IKiH5Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=AQVPQaTiOnZUezDn0KluvVO5TaRPiYrHEJ9e7Y+Tb+9Wod7o7Gsy6ivk8Af2gZN8x
 4fFxU233qf5HYgKxRlsqZTAHNyBUXL9GIOG/DCV8oxn7gACXq2TkWFEntxLMat/5B+
 ZSBTJTvitkcHsFJquUNqv6mmpH4hfX1HqD/uIiII=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7CC8260E3F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv8 2/5] arm64: dts: qcom: msm8998: Add Coresight support
To: Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org,
 mathieu.poirier@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <e510df23f741205fac9030f2c95d06d607549caa.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <3b192063-f31f-b861-d913-61d737cecc57@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <4854b0f7-6a81-bc87-3e63-d2b7c68a44f6@codeaurora.org>
Date: Thu, 18 Jul 2019 14:44:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3b192063-f31f-b861-d913-61d737cecc57@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_021416_963236_1C365436 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rnayak@codeaurora.org, marc.w.gonzalez@free.fr,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sibis@codeaurora.org, vivek.gautam@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gNy8xOC8yMDE5IDE6NTggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6
Cj4gSGkgU2FpLAo+IAo+IAo+ICDCoMKgwqDCoMKgwqDCoCBldHJANjA0ODAwMCB7Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJtLGNvcmVzaWdodC10bWMiLCAiYXJt
LHByaW1lY2VsbCI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDA2MDQ4MDAw
IDB4MTAwMD47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZycG1j
YyBSUE1fU01EX1FEU1NfQ0xLPiwgPCZycG1jYyAKPj4gUlBNX1NNRF9RRFNTX0FfQ0xLPjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYXBiX3BjbGsiLCAiYXRjbGsi
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcm0sc2NhdHRlci1nYXRoZXI7Cj4gCj4gUGxl
YXNlIGNvdWxkIHlvdSBjb25maXJtIHRoYXQgeW91IGhhdmUgdGVzdGVkIHRoZSBzY2F0dGVyLWdh
dGhlciBtb2RlIAo+IHdpdGggRVRSID8gRWl0aGVyIHZpYSBwZXJmL3N5c2ZzLiBQbGVhc2UgY291
bGQgeW91IHNoYXJlIHlvdXIgcmVzdWx0cyA/IAo+IFVubGVzcyB2ZXJpZmllZAo+IHRoaXMgaXMg
Z29pbmcgdG8gYmUgZmF0YWwgZm9yIHRoZSBzeXN0ZW0uCj4gCj4gU2ltaWxhcmx5IGZvciBvdGhl
ciBwbGF0Zm9ybXMuCj4gCgpZZXMgSSBoYXZlIHRlc3RlZCB3aXRoIHNjYXR0ZXItZ2F0aGVyIG1v
ZGUgd2l0aCBFVFIgb24gYWxsIHBsYXRmb3Jtcwp3aGljaCBJIGhhdmUgcG9zdGVkIHZpYSBzeXNm
cyhub3QgcGVyZikgYmVmb3JlIG9uIHByZXZpb3VzIHZlcnNpb25zIG9mIAp0aGlzIHBhdGNoIHNl
cmllcyBhbmQgbm8gaXNzdWVzIHdlcmUgZm91bmQuIEFuZCBJIHN1cHBvc2UgdGhpcyB3YXMKZGlz
Y3Vzc2VkIGluIHYyIG9mIHRoaXMgcGF0Y2ggc2VyaWVzIFsxXS4KCkFzIHNhaWQgaW4gb25lIG9m
IHRoZSBzZXJpZXMgaW5pdGlhbGx5IFsxXSwgUUNPTSBtc20gZG93bnN0cmVhbSBrZXJuZWxzIApo
YXZlIGJlZW4gdXNpbmcgc2NhdHRlciBnYXRoZXIgbW9kZSBhbmQgd2UgaGF2ZW4ndCBzZWVuIGFu
eSBmYXRhbCBpc3N1ZXMuCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MDc2OTUzNS8KClRoYW5rcywKU2FpCgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBR
dWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlcgpvZiBDb2RlIEF1cm9y
YSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
