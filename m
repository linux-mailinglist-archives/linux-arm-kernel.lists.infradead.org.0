Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375A312439
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 23:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMOwhw2ZZdh9tPCDgXj3sAn2DqWJyanHYdruErc/vRU=; b=Rml512KR5ylVOt
	XlzKvzbb0hQKJ05WGpWwMNbn8RJS/NDkFcBbwULFa7LOR+bEytwaOJZ4V2mIiHB7saR3x5qgVYm8a
	ainLFnSmPnGj3EOlSBxSQDpy+M11+XqezRfzpITN9zrIQ/W3/nvDMQT6cx/v3iJNB6Ow8h/vDecsl
	+Q3LJJfAVmoj4//wqq6GYEtyY2uOMrhIY9NVIFYNb1F50geefk7tBlXo76X5ikFE1hgC40XIy5/jc
	q6j+0oiwx07DL6j2H/oJub5cI6ymmAh08ZXupsd5qWGjCMU1VbRuv3sS8byVI3d5uJjpzxGyGJ4Ap
	QWLL1ABMLvyDQXdzTdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJSp-0007LB-NV; Thu, 02 May 2019 21:41:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJSi-0007Kr-09
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 21:41:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id t76so4821978wmt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 14:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=War2A0BOAbp9GPGMi2vdiNC4OWUlay+EdjS3sCge9Bk=;
 b=tIG8RNUh4+cHOE8iaUA4ZU94KHEMJsE/6WIdRFiK8x6sc9GI/dOk+wXYGPLJV1y1TT
 Fmx3NqmEMbqhIsMQZzxtnGnkurwMZbvgb+JD65zb5Fq1dNNtIWQ0AZjHO0/iEbXBaV5Q
 uBs6CkjIoUFSiX0cyksEECWqMff4F7/Zrw0Grtqce0e8VO8amXV1FabBNGbLIA3ohBY6
 XfOBWblMg3RgcJSw7ZRSym1u9WMmTCEShq6H6408x1iA8oKcfx68bi9/EMGwR5sVxWJ1
 As4uR8ZfRkURFVA6A0YfH6QgJZMMTzJwGA7sfaev2By9yes5h5mSsIoIEPC2ShZdFQTQ
 ftDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=War2A0BOAbp9GPGMi2vdiNC4OWUlay+EdjS3sCge9Bk=;
 b=XzipbFSiGLKmUjBE+o9XN492I0qzmQ3DMc34ddm/FsA8n0RX+anbCcqWGDSnZvLJID
 oGLUzJdrR/5j51DkUeV9ROZfps2PcXbtHNjyKV36J/yOqV74fQwC8Vwf0CgA89RlxLEN
 48ZlA38OVqrnqCSldsrevmalSFcdL38vxL10iuaV+MRAykRYwt8pi6VspHnS68IdstNS
 nt3liwbUOzCgY6iHra5+oS5R1uNXy/1EW8hROpTCrM5ZDE8rq8PmuNBoZe21LwLy+oWZ
 vHmPYymU5ZYmbYfcYZxPtWRkOx/CF3VCQDr4I5H6/04fWtrbTXHSKZbZV1IWeTY61a3V
 +LJg==
X-Gm-Message-State: APjAAAXQomwtQxgdD2UmJynJ5xe0J/6gvI/hG/AOzSeKzlXCIcHjjHrf
 XutJvNhu5cDmrqiEpOFNzN6IdGLq
X-Google-Smtp-Source: APXvYqzv0Ge2Wf6G3J96Pe76QE3G9bpmy7gUZDimyUbrDY7fIrv85yKW8LfOEJZiXBeB+lvE8yqP8A==
X-Received: by 2002:a1c:d14c:: with SMTP id i73mr3634429wmg.21.1556833309736; 
 Thu, 02 May 2019 14:41:49 -0700 (PDT)
Received: from [10.67.50.73] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id y197sm249397wmd.34.2019.05.02.14.41.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 14:41:48 -0700 (PDT)
Subject: Re: [PATCH] perf vendor events arm64: Add Cortex-A72 events
To: John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org
References: <20190407213422.19059-1-f.fainelli@gmail.com>
 <1a7b28b0-3fee-f3b9-0e83-61a2759c0555@huawei.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <f1e76036-1626-153d-efba-2eabf6e1075f@gmail.com>
Date: Thu, 2 May 2019 14:41:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1a7b28b0-3fee-f3b9-0e83-61a2759c0555@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_144152_065354_566D6AEE 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
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

T24gNC8xMS8xOSA2OjAxIEFNLCBKb2huIEdhcnJ5IHdyb3RlOgo+IE9uIDA3LzA0LzIwMTkgMjI6
MzQsIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4+IFRoZSBDb3J0ZXgtQTcyIHN1cHBvcnRzIGFs
bCBBUk12OCByZWNvbW1lbmRlZCBldmVudHMgdXAgdG8gdGhlCj4+IFJDX1NUX1NQRUMgKDB4OTEp
IGV2ZW50LCBjcmVhdGUgYW4gYXBwcm9wcmlhdGUgSlNPTiBmaWxlIGZvciBtYXBwaW5nCj4+IHRo
b3NlIGV2ZW50cyBhbmQgdXBkYXRlIHRoZSBtYXBmaWxlLmNzdiBmb3IgbWF0Y2hpbmcgdGhlIENv
cnRleC1BNzIgTUlEUgo+PiB0byB0aGF0IGZpbGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZsb3Jp
YW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgo+PiAtLS0KPj4gwqAuLi4vYXJtNjQv
YXJtL2NvcnRleC1hNzIvY29yZS1pbXAtZGVmLmpzb27CoMKgwqAgfCAyMDYgKysrKysrKysrKysr
KysrKysrCj4+IMKgdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvbWFwZmlsZS5jc3bC
oCB8wqDCoCAxICsKPj4gwqAyIGZpbGVzIGNoYW5nZWQsIDIwNyBpbnNlcnRpb25zKCspCj4+IMKg
Y3JlYXRlIG1vZGUgMTAwNjQ0Cj4+IHRvb2xzL3BlcmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L2Fy
bS9jb3J0ZXgtYTcyL2NvcmUtaW1wLWRlZi5qc29uCj4+Cj4+IGRpZmYgLS1naXQKPj4gYS90b29s
cy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9hcm0vY29ydGV4LWE3Mi9jb3JlLWltcC1kZWYu
anNvbgo+PiBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L2FybS9jb3J0ZXgtYTcy
L2NvcmUtaW1wLWRlZi5qc29uCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uZWI4MmZjODUyOWM2Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvdG9vbHMvcGVy
Zi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvYXJtL2NvcnRleC1hNzIvY29yZS1pbXAtZGVmLmpzb24K
Pj4gQEAgLTAsMCArMSwyMDYgQEAKPj4gK1sKPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDC
oCAiQXJjaFN0ZEV2ZW50IjogIkwxRF9DQUNIRV9SRCIsCj4+ICvCoMKgwqAgfSwKPj4gK8KgwqDC
oCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAiQXJjaFN0ZEV2ZW50IjogIkwxRF9DQUNIRV9XUiIsCj4+
ICvCoMKgwqAgfSwKPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAiQXJjaFN0ZEV2ZW50
IjogIkwxRF9DQUNIRV9SRUZJTExfUkQiLAo+PiArwqDCoMKgIH0sCj4+ICvCoMKgwqAgewo+PiAr
wqDCoMKgwqDCoMKgwqAgIkFyY2hTdGRFdmVudCI6ICJMMURfQ0FDSEVfUkVGSUxMX1dSIiwKPj4g
K8KgwqDCoCB9LAo+PiArwqDCoMKgIHsKPj4gK8KgwqDCoMKgwqDCoMKgICJBcmNoU3RkRXZlbnQi
OiAiTDFEX0NBQ0hFX1JFRklMTF9JTk5FUiIsCj4gCj4gSSdtIGp1c3QgY2hlY2tpbmcgdGhlIEE3
MiBUUk0sIGFuZCB0aGlzIGRvZXMgbm90IHNlZW0gdG8gYmUgaW5jbHVkZWQsCj4gdGhhdCBiZWlu
ZyBldmVudCBudW1iZXIgMHg0NC4KPiAKPj4gK8KgwqDCoCB9LAo+PiArwqDCoMKgIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgICJBcmNoU3RkRXZlbnQiOiAiTDFEX0NBQ0hFX1JFRklMTF9PVVRFUiIsCj4+
ICvCoMKgwqAgfSwKPiAKPiBPciB0aGlzLgo+IAo+PiArwqDCoMKgIHsKPj4gK8KgwqDCoMKgwqDC
oMKgICJBcmNoU3RkRXZlbnQiOiAiTDFEX0NBQ0hFX1dCX1ZJQ1RJTSIsCj4+ICvCoMKgwqAgfSwK
Pj4gK8KgwqDCoCB7Cj4gCj4gUGxlYXNlIGNoZWNrIHRoaXMuCgpJbmRlZWQsIHRoYW5rcyEKLS0g
CkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
