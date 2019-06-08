Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8082F39C78
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 12:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUNl9Ln4mgcMzKCeAtmkFCGbtRDMNLZuhunKh0u82YY=; b=qz4rRRDIoLxoDw
	I9vcq84g+w9HWJwibWzjVUjqg/sNpQ2Jo5Q954heYVegqIgnL4OG1RK/o0wVMdNINYT54sSeQtRxJ
	u3rY4caWJmT0dbRSjz0LN3GUslZVCNuyDI+NUSk5MvQXAjNong/X2rhOZzz5jni3aAo+b3Dnis0Uz
	QprFGJyV06qsldvgwF/sNrbXu0Vegnp2Yw7zGw6Po1a53ZnIVlbk98jVC4zC7r0i2a0vk/vklCQEJ
	BtRymbZ5DiBxpBQYD+tf4PBfPPZPJxncu294uqBwY6ttR4DW4JYChDaFQ3WFlmzwq5GMdmk9+tTPA
	vcSlE8liFxY8efQC1XcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZYpD-0004Fs-15; Sat, 08 Jun 2019 10:43:51 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYp4-0004Eu-Pj; Sat, 08 Jun 2019 10:43:44 +0000
Received: from [192.168.1.162] ([37.4.249.160]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N0X4c-1gfNnc3WUe-00wRCN; Sat, 08 Jun 2019 12:43:24 +0200
Subject: Re: [PATCH v2 0/7] cpufreq support for Raspberry Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <7c51e65a-e84d-07fa-ac1e-0f34ecce887b@i2se.com>
Date: Sat, 8 Jun 2019 12:43:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606142255.29454-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:oANPBkQ2KsQjlx8cfiyIC9oczC/QXncykGstAQioDeCodefMUV9
 bW4wXsBgSWz/OzPocIRGDHXyqOHpejs3iBLEfZ1ysMEMLG/0kaPE7/Khly0eedgHYIPTEZf
 yAn4yAh5/U7XSgfKC5NsT3l8l9H6jk9lc+xGIH2b/WwOwnNvv5COr8VxqFRG/sH5DfMubph
 0ZClOfJpLTbgWsboaqzFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:u2UOTKSuFLE=:GinJCXRdmjhbj7l20EMK4B
 dfYA8BnBeUoi9dLijDSKMgCyb/lTAdw759WEYNfnavlB350IhLfmj3F3V17a7ZuuiX/F35Lx6
 P02EzGJOHeXK65TfRc0/6BFjWR56+DhE2zumOZNV1XCx+hB4wzkx4OOhSxuP1jrCGEKU2IQ8x
 Zojuj0ImWp8XP34p/VM7jQHd8ArGy0IgZCBHrUy02bYL6UYh33EHWEDPWhSrrHL6OlZuWBOmQ
 Bi9O3Y9v2B+TvxW6NOvMsXEkxO1pN8ceNmAD2rotoOay1+MHP8cTsG0bdmtRBc/57vr+dJuEg
 k5lHbXA8NLoUR8R1HTSgRE158PZ5lnmEnbEbZjIv18Qtf1EFrbExgyFWXlyFMoOP8fnJPw19W
 HFfW3/kse0lEpZVXBqFWyvrEhW/oxFgJbxCxHJbW/BSoz8Bw9Q9HN/xPI6Bk+Gnkaxq4wzghw
 STWRL05mGK/Y7vQTyxX0MHcvbq4MdCRs/xU0sl6v4loBQ3syG5raEVlF3YBuRfhy1tuJpYHQM
 +/yw5cgyEtcPm9E3Z0D/zw7GN14zYKv6MHEyWfzzJJ7pGWgqq0vhCWNwRVJwJTLujwj5AuNgB
 wx75WreotJLxxAGgcqzggvhfyTRaszjG0TUgcGT17V7nK9UCCYI3rLCpGEV+vAcbJ84ewHENp
 XyHDRKpB4x6R/fF8wT3EyGrN4FdapZ4Jdm16tpnqxq0kHlNNzqWZ8ctsmnFCGY0sx3eczum+R
 a029FBQe7UzrnnjK0mPF7UAPznnIPdJyRAhGvziGXmwPpa67pGZ2uWcWppY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_034343_131462_71044F35 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDYuMDYuMTkgdW0gMTY6MjIgc2NocmllYiBOaWNvbGFzIFNhZW56IEp1bGllbm5lOgo+IEhp
IGFsbCwKPiB0aGlzIGFpbXMgYXQgYWRkaW5nIGNwdWZyZXEgc3VwcG9ydCB0byB0aGUgUmFzcGJl
cnJ5IFBpIGZhbWlseSBvZgo+IGJvYXJkcy4KPgo+IFRoZSBzZXJpZXMgZmlyc3QgZmFjdG9ycyBv
dXQgJ3BsbGInIGZyb20gY2xrLWJjbTIzODUgYW5kIGNyZWF0ZXMgYSBuZXcKPiBjbGsgZHJpdmVy
IHRoYXQgb3BlcmF0ZXMgaXQgb3ZlciBSUGkncyBmaXJtd2FyZSBpbnRlcmZhY2VbMV0uIFdlIGFy
ZQo+IGZvcmNlZCB0byBkbyBzbyBhcyB0aGUgZmlybXdhcmUgJ293bnMnIHRoZSBwbGwgYW5kIHdl
J3JlIG5vdCBhbGxvd2VkIHRvCj4gY2hhbmdlIHRocm91Z2ggdGhlIHJlZ2lzdGVyIGludGVyZmFj
ZSBkaXJlY3RseSBhcyB3ZSBtaWdodCByYWNlIHdpdGggdGhlCj4gb3Zlci10ZW1wZXJhdHVyZSBh
bmQgdW5kZXItdm9sdGFnZSBwcm90ZWN0aW9ucyBwcm92aWRlZCBieSB0aGUgZmlybXdhcmUuCj4K
PiBOZXh0IGl0IGNyZWF0ZXMgYSBtaW5pbWFsIGNwdWZyZXEgZHJpdmVyIHRoYXQgcG9wdWxhdGVz
IHRoZSBDUFUncyBvcHAKPiB0YWJsZSwgYW5kIHJlZ2lzdGVycyBjcHVmcmVxLWR0LiBXaGljaCBp
cyBuZWVkZWQgYXMgdGhlIGZpcm13YXJlCj4gY29udHJvbHMgdGhlIG1heCBhbmQgbWluIGZyZXF1
ZW5jaWVzIGF2YWlsYWJsZS4KCkhlcmUgc29tZSBmaWd1cmVzIGZyb20gdGhlIFJhc3BiZXJyeSBQ
aSAzIEIrIGFzIGJlZm9yZS9hZnRlciBjb21wYXJpc29uOgoKRGhyeXN0b25lIEJlbmNobWFyayAy
LjEgQTcgMzIgQml0CgrCoDYwMCBNSHosIHcvbyBUdXJibyAoMSk6IDEyMTYuMTEgVkFYIE1JUFMK
MTQwMCBNSHosIHcvbyBUdXJibyAoMik6IDI4MzkuNjcgVkFYIE1JUFMKMTQwMCBNSHosIHfCoMKg
IFR1cmJvICgzKTogMjgzOS40NSBWQVggTUlQUwoKV2hldHN0b25lIFNpbmdsZSBQcmVjaXNpb24g
QyBCZW5jaG1hcmvCoCB2ZnB2NCAzMiBCaXQKCsKgNjAwIE1Ieiwgdy9vIFR1cmJvOiA0NTQuNTY1
IE1XSVBTCjE0MDAgTUh6LCB3L28gVHVyYm86IDEwNjIuNDk0IE1XSVBTCjE0MDAgTUh6LCB3wqDC
oCBUdXJibzogMTA2MS43MjMgTVdJUFMKClBvd2VyIGNvbnN1bXB0aW9uICgzMiBiaXQsIHdpdGhv
dXQgRXRoZXJuZXQpIHdpdGggbG9hZCAoIGNhdCAvZGV2L3plcm8gKQoKwqA2MDAgTUh6LCB3L28g
VHVyYm86IDIuNDggVwoxNDAwIE1Ieiwgdy9vIFR1cmJvOiAzLjIgVwoxNDAwIE1Ieiwgd8KgwqAg
VHVyYm86IDMuMTUgVwoKTm90ZSAxOiBUaGlzIGlzIHRoZSBtYXhpbXVtIHBlcmZvcm1hbmNlIGJl
Zm9yZSBlbmFibGluZyBhbnkgY3B1ZnJlcSBkcml2ZXIuCgpOb3RlIDI6IFRoaXMgaXMgdGhlIG1h
eGltdW0gcGVyZm9ybWFuY2UgYWZ0ZXIgZW5hYmxpbmcgVjIgb2YgdGhlIGNwdWZyZXEKZHJpdmVy
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIw
MTktSnVuZS82NTc3NjguaHRtbAoKTm90ZSAzOiBUaGlzIGlzIHRoZSBtYXhpbXVtIHBlcmZvcm1h
bmNlIGFmdGVyIGVuYWJsaW5nIHRoZSBpbml0aWFsCmNwdWZyZXEgZHJpdmVyCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1ycGkta2VybmVsLzIwMTktQXByaWwvMDA4
NjM0Lmh0bWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
