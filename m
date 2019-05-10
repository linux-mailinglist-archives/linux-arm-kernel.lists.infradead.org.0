Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5591A37F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 21:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzQv9MwKuilh5BtYMFU/FnFQwO75ORyinDxlDD23xtg=; b=Wet1w59OIZuYRJ
	UqCojmqvyeo11CAI1qf6+28/K8n7KuGi0Ua3UrEOHGA6AdYf9qOVD8xQyc8MuHfWpyhqbEFTWXE5V
	ac5g+wJYnK0+k5Gkgk+dtOn5G/cjGupEGG0LDDz0KcKOm2jFO4I8y0VFLJ9mPQD06ZHUkgMRRvuWV
	jpaTVZmL6XrLBn9zp5pLqCYPM5vy0p94hTcxp4lvVOGRfvQu6iVrYHSP6sKsO4eX3hj3QJ0ejXbp4
	kAp0HS/2llH4mflvbFMzyD7ry22ffVsYt9rg9azryXX1A4P8yTRhuYAdm6kd2ZS/yzVq4cCMJ5B4J
	m6mLEoWlD2sPf2xbTHHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPBX3-0000Qq-9O; Fri, 10 May 2019 19:50:13 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPBWv-0008M4-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 19:50:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so3281186pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 12:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VTV0JN/9ENBFAZ0M/QxnnD6SZBBv2/kjRYCYKZs9XPY=;
 b=KmueB0y3i3qGJRDvmqPH7URjqw6vyz21hMQLM6dIjWYJfsJT748elaM5ki69ZsCxhy
 vxbqKOHWIyV8ReOjykYACi7FVCoNWRDt91ciq3Pnpiu1qapcb51RnoIF6zEX62Nvqwep
 CGfE0yBTWRmT4JRYz6ezs0EFqOJO17u6j6rZCLvOG4/HZ4oq251CXJ89isw05VbAR3fJ
 oviNGbVVgSu6CkJRBuORh/E9LxXBz5Y9bXqtxAmSYJxdbKulxm81k//x37ZlE9/2xui4
 BUvHoTStvYUbZGqbZXZshB+p5n+hEbZ8ljd0qmZLuWN4aeVdesUDlDfZf6XseDTh8v/i
 0z/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VTV0JN/9ENBFAZ0M/QxnnD6SZBBv2/kjRYCYKZs9XPY=;
 b=m10MrGXw43uqVzTPYQy3yuHS6Q+JHbF1++lgmxBZqozd6+wBWkV3WxBuurjsmGxL20
 12y/5LqoAhmXigRFUQs+atVxr85sN3lvDKscLftD8Lr6g8lt/EpEScsLBhcElSBEMMEI
 WbLTp+rXhHHVGCHfoH1jQsL+DKhITL2MKnJGyQVozrkUQK9BWAYva0FaamH/T7AcB1U5
 IV1jwM/j9E022lV7qYh41XIowAObiw4QnsnCkrayKXKHdxtKx3ms7qg1g8l5ymFqJpqj
 tOc7OUPyGUIPe/VLi1rJ3bR0GLvMNQyskdzCiLnYUkmIAhJG2Yfs5oYCG7EPBFBsXTp2
 EyIg==
X-Gm-Message-State: APjAAAWmMolXwd2zAtujFYL60wbwetsrDRZ+IGGygbKmWUMiXJrQGrnF
 XagWvzkG2SYfmMG6V31+1lpQl0zN
X-Google-Smtp-Source: APXvYqyEgLetPROw+a8Ih2sAxmk+DAl8vQXbNDMUFVN32Ua3YGpVihSDCAOH5kJQ9mns8dTgqr5D6w==
X-Received: by 2002:a17:902:7247:: with SMTP id
 c7mr15624487pll.65.1557517803401; 
 Fri, 10 May 2019 12:50:03 -0700 (PDT)
Received: from [10.67.49.52] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id r138sm13499445pfr.2.2019.05.10.12.50.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 12:50:02 -0700 (PDT)
Subject: Re: [PATCH v2] perf vendor events arm64: Add Cortex-A57 and
 Cortex-A72 events
To: John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <20190502234704.7663-1-f.fainelli@gmail.com>
 <5c04ebac-3e3c-fa53-d287-3a602a350091@huawei.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <a8a3c429-307c-40fc-12b4-d62374bfda1d@gmail.com>
Date: Fri, 10 May 2019 12:49:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5c04ebac-3e3c-fa53-d287-3a602a350091@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_125005_617498_B0A56DB4 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS82LzE5IDEyOjI1IEFNLCBKb2huIEdhcnJ5IHdyb3RlOgo+IE9uIDAzLzA1LzIwMTkgMDA6
NDcsIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4+IFRoZSBDb3J0ZXgtQTU3IGFuZCBDb3J0ZXgt
QTcyIGJvdGggc3VwcG9ydCBhbGwgQVJNdjggcmVjb21tZW5kZWQgZXZlbnRzCj4+IHVwIHRvIHRo
ZSBSQ19TVF9TUEVDICgweDkxKSBldmVudCB3aXRoIHRoZSBleGNlcHRpb24gb2Y6Cj4+Cj4+IC0g
TDFEX0NBQ0hFX1JFRklMTF9JTk5FUiAoMHg0NCkKPj4gLSBMMURfQ0FDSEVfUkVGSUxMX09VVEVS
ICgweDQ1KQo+PiAtIEwxRF9UTEJfUkQgKDB4NEUpCj4+IC0gTDFEX1RMQl9XUiAoMHg0RikKPj4g
LSBMMkRfVExCX1JFRklMTF9SRCAoMHg1QykKPj4gLSBMMkRfVExCX1JFRklMTF9XUiAoMHg1RCkK
Pj4gLSBMMkRfVExCX1JEICgweDVFKQo+PiAtIEwyRF9UTEJfV1IgKDB4NUYpCj4+IC0gU1RSRVhf
U1BFQyAoMHg2RikKPj4KPj4gQ3JlYXRlIGFuIGFwcHJvcHJpYXRlIEpTT04gZmlsZSBmb3IgbWFw
cGluZyB0aG9zZSBldmVudHMgYW5kIHVwZGF0ZSB0aGUKPj4gbWFwZmlsZS5jc3YgZm9yIG1hdGNo
aW5nIHRoZSBDb3J0ZXgtQTU3IGFuZCBDb3J0ZXgtQTcyIE1JRFIgdG8gdGhhdAo+PiBmaWxlLgo+
IAo+IEkgc3VwcG9zZSB5b3UgY291bGQgaGF2ZSBhbHNvIGNyZWF0ZWQgc2VwYXJhdGUgYTcyIGFu
ZCBhNTcgZm9sZGVycywgYW5kCj4gdXNlZCBhIHN5bWJvbGljIGxpbmsgZm9yIHRoZSBqc29uLiBU
aGF0IHdvdWxkIGhhdmUga2VwdCB0aGUgZm9sZGVyCj4gc3RydWN0dXJlIGNvbnNpc3RlbnQgYW5k
IG5lYXQuCgpXaWxsLCBNYXJrLCBhbnkgcHJlZmVyZW5jZSBvbiB0aGF0PyBFaXRoZXIgd2F5IHdv
cmtzIGZpbmUuCgo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZh
aW5lbGxpQGdtYWlsLmNvbT4KPiBBcGFydCBmcm9tIHRoZSBhYm92ZToKPiAKPiBSZXZpZXdlZC1i
eTogSm9obiBHYXJyeSA8am9obi5nYXJyeUBodWF3ZWkuY29tPgoKVGhhbmtzCgo+IAo+PiAtLS0K
Pj4gQ2hhbmdlcyBpbiB2MjoKPj4KPj4gLSBhZGRlZCBhIHNoYXJlZCBkaXJlY3RvcnkgZm9yIGJv
dGggQ29ydGV4LUE1NyBhbmQgQTcyIChXaWxsKQo+PiAtIHJlbW92ZWQgdW5zdXBwb3J0ZWQgQVJN
djggdjMgZXZlbnRzIChKb2huKQo+Pgo+PiDCoC4uLi9hcm0vY29ydGV4LWE1Ny1hNzIvY29yZS1p
bXAtZGVmLmpzb27CoMKgwqDCoMKgIHwgMTc5ICsrKysrKysrKysrKysrKysrKwo+PiDCoHRvb2xz
L3BlcmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L21hcGZpbGUuY3N2wqAgfMKgwqAgMiArCj4+IMKg
MiBmaWxlcyBjaGFuZ2VkLCAxODEgaW5zZXJ0aW9ucygrKQo+PiDCoGNyZWF0ZSBtb2RlIDEwMDY0
NAo+PiB0b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9hcm0vY29ydGV4LWE1Ny1hNzIv
Y29yZS1pbXAtZGVmLmpzb24KPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3BlcmYvcG11LWV2ZW4K
PiAKCgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
