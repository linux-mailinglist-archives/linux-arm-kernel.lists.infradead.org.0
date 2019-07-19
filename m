Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700FC6E448
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9x5UdOE+ghvuZ/JI0/CO9MEH4OCfL7IiC9Tc3UvL0Q=; b=BV19giQxQ3JeFwuSbYbBfcsHm
	lV2VkWp3o/YUb+cqBDpYVdyc+n7Stz+5gIR6esUme458N7/8++ldM9z6fZjQwoqvUuRY+DLN4mwdc
	cP0jWmpOdj4JsxTFSJW8DlW7K9NxxlISHY91PsZB6iH1IwtN4wiaKOM9eSKXs0aQytS4jxMUyCRul
	4gXgCXMFPKfLlZWo23lR0zQv9VVrlILlhjDHQKM4rJalJuXU/fGjB1fakeS9NJnfbDOm2paJ31yRg
	4Hms0qYt9xPuH+W2/IPQk42LkRuaJTXg8Fa5ZwgM2lLopQcE88mRkDwvHoH7aI21Tg8wB6994mue7
	c7OKDXenQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQ8j-0003bY-Pj; Fri, 19 Jul 2019 10:29:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQ8S-0003b2-VA
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:29:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 18DB5608A5; Fri, 19 Jul 2019 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563532148;
 bh=VV9h9+j4OURu4RUr60QbOyNI3a2ZiA7WIr1P5diLdXY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=V1Z0kK5UI4uEc+a4c4JW2JUb1A17pWw7RbBr9UfKu9ALdbWrkLwoCV9r/hw//F0su
 UH75FVFtqBtBQwsBhNZsyHx15dsZNod829rfw18b26O4cTuaYtJ5ungxJRv5nNtC4C
 FahTl8+4rabBbtV8Q3HH8RpQ61uypevkdksXaitw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.43.47] (unknown [157.49.206.83])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 615F760275;
 Fri, 19 Jul 2019 10:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563532147;
 bh=VV9h9+j4OURu4RUr60QbOyNI3a2ZiA7WIr1P5diLdXY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=EUFE27chUPuph25X/Y7xP28qz93qjEb1Y6tC3kgo296KaENOv9XuFs9NG6U+Uq5uF
 tJxaWrPDKh1ArNq2/YhgCw1yZhhVokF2Hl5TEIIY8TKCZKCPy0dl4s5DSpchj2shLQ
 1oLxm++aU0dhV3RurE9Om9f70GFRuSbMj2pfYUG8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 615F760275
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv8 1/5] arm64: dts: qcom: sdm845: Add Coresight support
To: Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org,
 mathieu.poirier@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <52550ed9bbc10dca860eb1700aef5c97f644327b.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <33215f68-1bf9-322a-d889-1d22514bdbdc@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <a1a2a9c6-f58b-f849-76e4-3a76d6faaab5@codeaurora.org>
Date: Fri, 19 Jul 2019 15:58:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <33215f68-1bf9-322a-d889-1d22514bdbdc@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_032909_041497_29DFFEEA 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkgU3V6dWtpLAoKT24gNy8xOS8yMDE5IDM6MTYgUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6
Cj4gCj4gSGkgU2FpLAo+IAo+IAo+IE9uIDEyLzA3LzIwMTkgMTU6MTYsIFNhaSBQcmFrYXNoIFJh
bmphbiB3cm90ZToKPj4gQWRkIGNvcmVzaWdodCBjb21wb25lbnRzIGZvdW5kIG9uIFF1YWxjb21t
IFNETTg0NSBTb0MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8c2Fp
cHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+IFJldmlld2VkLWJ5OiBNYXRoaWV1IFBv
aXJpZXIgPG1hdGhpZXUucG9pcmllckBsaW5hcm8ub3JnPgo+PiBBY2tlZC1ieTogU3V6dWtpIEsg
UG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zZG04NDUuZHRzaSB8IDQ1MSArKysrKysrKysrKysrKysrKysrKysrKysr
KysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQ1MSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODQ1LmR0c2kgCj4+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NkbTg0NS5kdHNpCj4+IGluZGV4IDRiYWJmZjVmMTliNS4uNWQ3ZTNm
OGUwZjkxIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODQ1LmR0
c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkbTg0NS5kdHNpCj4+IEBAIC0x
ODE1LDYgKzE4MTUsNDU3IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5h
bWVzID0gInhvIjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqDCoMKgwqDCoCBz
dG1ANjAwMjAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJt
LGNvcmVzaWdodC1zdG0iLCAiYXJtLHByaW1lY2VsbCI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlZyA9IDwwIDB4MDYwMDIwMDAgMCAweDEwMDA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8MCAweDE2MjgwMDAwIDAgMHgxODAwMDA+Owo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZWctbmFtZXMgPSAic3RtLWJhc2UiLCAic3RtLXN0aW11bHVzLWJhc2Ui
Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmYW9zc19xbXA+Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJhcGJfcGNsayI7Cj4+ICsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3V0LXBvcnRzIHsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBwb3J0IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0bV9vdXQ6IGVuZHBvaW50IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0KPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZnVubmVsMF9pbjc+Owo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+
PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgZnVubmVsQDYwNDEw
MDAgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFybSxjb3Jlc2ln
aHQtZnVubmVsIiwgImFybSxwcmltZWNlbGwiOwo+IAo+IFdlIGFkZGVkIHN1cHBvcnQgZm9yIHN0
YXRpYyBmdW5uZWxzIGFuZCBoYXZlIHRodXMgdXBkYXRlZCBvdXIgRFQgCj4gYmluZGluZ3MuIEFu
ZAo+IHRoYXQgaW1wbGllcywgdGhlIGFib3ZlIGJpbmRpbmcgaXMgbm93IG9ic29sZXRlLgo+IEFz
IG9mIHRoZSBjb3Jlc2lnaHQvbmV4dCB0cmVlLCBhbmQgdGh1cyBsaW51eC1uZXh0LCB0aGlzIG11
c3QgYmUgCj4gYXJtLGNvcmVzaWdodC1keW5hbWljLWZ1bm5lbCBhbmQgc2FtZSBhcHBsaWVzIGV2
ZXJ5d2hlcmUgZWxzZSBpbiB0aGUgCj4gc2VyaWVzLiBQbGVhc2UgY291bGQgeW91Cj4gdXBkYXRl
IHRoZSBzZXJpZXMgPwo+IAoKU3VyZSwgd2lsbCB1cGRhdGUgaW4gdGhlIG5leHQgdmVyc2lvbiBv
ZiB0aGUgc2VyaWVzLgoKVGhhbmtzLApTYWkKCgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFs
ZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlcgpvZiBDb2Rl
IEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
