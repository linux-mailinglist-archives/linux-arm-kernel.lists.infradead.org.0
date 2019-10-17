Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517D6DAE78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=icMInabWtCTN8pH/jFUxliFmPhs65T/6flDidD25d9Q=; b=RHMooBu6hfcphqzhgLbp/VHey
	cqA4Bd3eFM8Cl0gDmea306ddX6+21mwHCXV+VUBoE6GbBf78jyYqtRYqBBsSnu6cT/jfG0mbXFCC7
	7bqt8x0qxMZ05JjzvoYmJudb2KBgGjLM/OMlqRHVHWyrTrDmMS40tbXo/ltoOO9NJcvWtpgitnLPl
	wKOMrhp8hGTbIGQjEs2FLP1ctawYcOh8Lj5g1w9rXRnKIWRqyIHf3yPQxyuZ7MCDBgQU9PYTKHroi
	EBDETW/vi33wfmeHBKN25j7Hkabguz3S389NpPp44oE8G26ApYTXQdjsWdcYBUgg+yrENra194+91
	0rF5xioxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5sj-0005jQ-Jj; Thu, 17 Oct 2019 13:31:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5sb-0005im-P4
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:31:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id r1so1359231pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=71uoj2yc29GeY1Xak3gbiDlj4sBCXAEhrB5t6JTQI38=;
 b=WYYEirct5vmYQhA3KbSc0XnVAk90uWlVOlRrknkYBh9IfN3mWq6s9p81I4fgMPf1/a
 N5U1UGBczLAnKbk05TO4JIqrrpEp88YnqFbKHJsHAj7I4v55SHK+1XV9y6bhlMUmPVKH
 noy70mkcKcAhSPEO+NKAF/eRLyW2v1lH1jVtK4SP1CVBCRdsGuxcl03sYINDQZwmUR7P
 E2Pdg8P8qFHC4636xQL74OWPUJtX3891CkPtWyHH1uJXCBXpYdGy9XSh2uPSh/WcjDJx
 MCRCmzG/3F4EwRdag/OCrs5i5Ju+axTNEJQZdVPj8SaAZnld0+agJcevwCTb1dbQwoLa
 ATbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=71uoj2yc29GeY1Xak3gbiDlj4sBCXAEhrB5t6JTQI38=;
 b=YtHIjkTOJd1Prwi8dhpIRcVUdTYND179ut+aaSzheqQN7bwUpJoIQfBHZk8L3pHE9T
 hBQJHP9avI9udLgKl/1dYRRRCm1AjjW6Kz79QAfsJ/AXJD28mN/LIj+Bcfi/ck2ZY1gM
 Cpo2AeDXtAFzS4AHAYxwF1MkvYqyjXaXTWYQQKGX/Zn0kNLLzrpBiR4x5b9wipTp60+r
 1dQ9HlZArYe3egC9zV2AEu1galascsRS6vMG2bLSpxU6RladQ9g09qDMXYh/Pf6SHGiI
 3QDRrMDGyVJVAohztku8KEMk/rDIZ5zGWL/Qne6I6XvqA7e8VaDCnjIt0T0G9YN5KWxs
 Iv4A==
X-Gm-Message-State: APjAAAXCBDYiSv12KJMVgvzgMKDcRoCFBk0TClZxt9ynFaXgyIejO7hq
 ckBpPTomLFOroIr6LoMHBWg=
X-Google-Smtp-Source: APXvYqwkCzg39D6E3HXdCGSejfd6HNsWplmWxSFhlmyOLuTWztuKgI2cctSMGidm0wpV+1lYpWpnWg==
X-Received: by 2002:a17:90a:da04:: with SMTP id
 e4mr4417537pjv.33.1571319107104; 
 Thu, 17 Oct 2019 06:31:47 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 o9sm4077093pfp.67.2019.10.17.06.31.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 06:31:46 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: watchdog: Convert stm32 watchdog bindings to
 json-schema
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
References: <20191017124159.13869-1-benjamin.gaignard@st.com>
 <63f96a2f-78c0-21ae-781b-e52068f57103@st.com>
 <6597f899-f049-02dc-de59-07a0f23a88b8@st.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d0c1af15-a647-8d80-81c9-fc07b926856c@roeck-us.net>
Date: Thu, 17 Oct 2019 06:31:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6597f899-f049-02dc-de59-07a0f23a88b8@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_063149_842141_AD4B049C 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTcvMTkgNjoxNyBBTSwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cj4gCj4gT24gMTAv
MTcvMTkgMzowNiBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4gSGkgQmVuamFtaW4KPj4K
Pj4gT24gMTAvMTcvMTkgMjo0MSBQTSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+PiBDb252
ZXJ0IHRoZSBTVE0zMiB3YXRjaGRvZyBiaW5kaW5nIHRvIERUIHNjaGVtYSBmb3JtYXQgdXNpbmcg
anNvbi1zY2hlbWEKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+Pj4gLS0tCj4+PiAgwqAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzItaXdkZy50eHQgfCAyNiAtLS0tLS0tLS0tLQo+Pj4gIMKg
IC4uLi9iaW5kaW5ncy93YXRjaGRvZy9zdCxzdG0zMi1pd2RnLnlhbWzCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDU0Cj4+PiArKysrKysrKysrKysrKysrKysrKysrCj4+PiAgwqAgMiBmaWxlcyBjaGFu
Z2VkLCA1NCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKPj4+ICDCoCBkZWxldGUgbW9k
ZSAxMDA2NDQKPj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9z
dCxzdG0zMi1pd2RnLnR4dAo+Pj4gIMKgIGNyZWF0ZSBtb2RlIDEwMDY0NAo+Pj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcueWFtbAo+Pj4K
Pj4+IGRpZmYgLS1naXQKPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3N0LHN0bTMyLWl3ZGcudHh0Cj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy93YXRjaGRvZy9zdCxzdG0zMi1pd2RnLnR4dAo+Pj4gZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0Cj4+PiBpbmRleCBkOGY0NDMwYjBhMTMuLjAwMDAwMDAwMDAwMAo+Pj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcudHh0
Cj4+PiArKysgL2Rldi9udWxsCj4+PiBAQCAtMSwyNiArMCwwIEBACj4+PiAtU1RNMzIgSW5kZXBl
bmRlbnQgV2F0Y2hEb0cgKElXREcpCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4+PiAtCj4+PiAtUmVxdWlyZWQgcHJvcGVydGllczoKPj4+IC0tIGNvbXBhdGlibGU6IFNo
b3VsZCBiZSBlaXRoZXI6Cj4+PiAtwqAgLSAic3Qsc3RtMzItaXdkZyIKPj4+IC3CoCAtICJzdCxz
dG0zMm1wMS1pd2RnIgo+Pj4gLS0gcmVnOiBQaHlzaWNhbCBiYXNlIGFkZHJlc3MgYW5kIGxlbmd0
aCBvZiB0aGUgcmVnaXN0ZXJzIHNldCBmb3IgdGhlCj4+PiBkZXZpY2UKPj4+IC0tIGNsb2Nrczog
UmVmZXJlbmNlIHRvIHRoZSBjbG9jayBlbnRyeSBsc2kuIEFkZGl0aW9uYWwgcGNsayBjbG9jayBl
bnRyeQo+Pj4gLcKgIGlzIHJlcXVpcmVkIG9ubHkgZm9yIHN0LHN0bTMybXAxLWl3ZGcuCj4+PiAt
LSBjbG9jay1uYW1lczogTmFtZSBvZiB0aGUgY2xvY2tzIHVzZWQuCj4+PiAtwqAgImxzaSIgZm9y
IHN0LHN0bTMyLWl3ZGcKPj4+IC3CoCAibHNpIiwgInBjbGsiIGZvciBzdCxzdG0zMm1wMS1pd2Rn
Cj4+PiAtCj4+PiAtT3B0aW9uYWwgUHJvcGVydGllczoKPj4+IC0tIHRpbWVvdXQtc2VjOiBXYXRj
aGRvZyB0aW1lb3V0IHZhbHVlIGluIHNlY29uZHMuCj4+PiAtCj4+PiAtRXhhbXBsZToKPj4+IC0K
Pj4+IC1pd2RnOiB3YXRjaGRvZ0A0MDAwMzAwMCB7Cj4+PiAtwqDCoMKgIGNvbXBhdGlibGUgPSAi
c3Qsc3RtMzItaXdkZyI7Cj4+PiAtwqDCoMKgIHJlZyA9IDwweDQwMDAzMDAwIDB4NDAwPjsKPj4+
IC3CoMKgwqAgY2xvY2tzID0gPCZjbGtfbHNpPjsKPj4+IC3CoMKgwqAgY2xvY2stbmFtZXMgPSAi
bHNpIjsKPj4+IC3CoMKgwqAgdGltZW91dC1zZWMgPSA8MzI+Owo+Pj4gLX07Cj4+PiBkaWZmIC0t
Z2l0Cj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zdCxz
dG0zMi1pd2RnLnlhbWwKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3N0LHN0bTMyLWl3ZGcueWFtbAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uZWRlYzk2ZDUzZTZiCj4+PiAtLS0gL2Rldi9udWxsCj4+PiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzItaXdk
Zy55YW1sCj4+PiBAQCAtMCwwICsxLDU0IEBACj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4+PiArJVlBTUwgMS4yCj4+PiArLS0t
Cj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy93YXRjaGRvZy9zdCxzdG0z
Mi1pd2RnLnlhbWwjCj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2No
ZW1hcy9jb3JlLnlhbWwjCj4+PiArCj4+PiArdGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBTVE0z
MiBJbmRlcGVuZGVudCBXYXRjaERvRyAoSVdERykgYmluZGluZ3MKPj4+ICsKPj4+ICttYWludGFp
bmVyczoKPj4+ICvCoCAtIFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4+
Cj4+IFlhbm5pY2sgaXMgc3RpbGwgd29ya2luZyBvbiB0aGlzIGRyaXZlciA/Cj4gCj4gVGhhdCBp
cyBhIGdvb2QgcXVlc3Rpb24uCj4gCj4gUm9iLCBjYW4gd2UgdXNlIHRoZSBTVE0zMiBkZWRpY2F0
ZWQgbWFpbGluZyBsaXN0IGFkZHJlc3MgZm9yIHRoaXMKPiBtYWludGVuZXJzIGZpZWxkID8KPiAK
PiBtYWludGFpbmVyczoKPiAKPiAtIGxpbnV4IFNUTTMyIDxsaW51eC1zdG0zMkBzdC1tZC1tYWls
bWFuLnN0b3JtcmVwbHkuY29tPgo+IAoKCkknZCByYXRoZXIgd29uZGVyIHdobyBpcyBnb2luZyB0
byBtYWludGFpbiB0aGlzIHNlY29uZGFyeSBkaXN0cmlidXRlZAptYWludGFpbmVycyBsaXN0LCBi
dXQgSSBndWVzcyB0aGF0IGlzIGEgZGlmZmVyZW50IHF1ZXN0aW9uLgoKR3VlbnRlcgoKPiBSZWdh
cmRzLAo+IAo+IEJlbmphbWluCj4gCj4+Cj4+PiArCj4+PiArYWxsT2Y6Cj4+PiArwqAgLSAkcmVm
OiAid2F0Y2hkb2cueWFtbCMiCj4+PiArCj4+PiArcHJvcGVydGllczoKPj4+ICvCoCBjb21wYXRp
YmxlOgo+Pj4gK8KgwqDCoCBlbnVtOgo+Pj4gK8KgwqDCoMKgwqAgLSBzdCxzdG0zMi1pd2RnCj4+
PiArwqDCoMKgwqDCoCAtIHN0LHN0bTMybXAxLWl3ZGcKPj4+ICsKPj4+ICvCoCByZWc6Cj4+PiAr
wqDCoMKgIG1heEl0ZW1zOiAxCj4+PiArCj4+PiArwqAgY2xvY2tzOgo+Pj4gK8KgwqDCoCBpdGVt
czoKPj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IExvdyBzcGVlZCBjbG9jawo+Pj4gK8Kg
wqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogT3B0aW9uYWwgcGVyaXBoZXJhbCBjbG9jawo+Pj4gK8Kg
wqDCoCBtaW5JdGVtczogMQo+Pj4gK8KgwqDCoCBtYXhJdGVtczogMgo+Pj4gKwo+Pj4gK8KgIGNs
b2NrLW5hbWVzOgo+Pj4gK8KgwqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgIGVudW1zOiBbIGxz
aSwgcGNsayBdCj4+PiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4+PiArwqDCoMKgIG1heEl0ZW1zOiAy
Cj4+PiArCj4+PiArcmVxdWlyZWQ6Cj4+PiArwqAgLSBjb21wYXRpYmxlCj4+PiArwqAgLSByZWcK
Pj4+ICvCoCAtIGNsb2Nrcwo+Pj4gK8KgIC0gY2xvY2stbmFtZXMKPj4+ICsKPj4+ICtleGFtcGxl
czoKPj4+ICvCoCAtIHwKPj4+ICvCoMKgwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3N0
bTMybXAxLWNsa3MuaD4KPj4+ICvCoMKgwqAgd2F0Y2hkb2dANWEwMDIwMDAgewo+Pj4gK8KgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMS1pd2RnIjsKPj4+ICvCoMKgwqDCoMKgIHJl
ZyA9IDwweDVhMDAyMDAwIDB4NDAwPjsKPj4+ICvCoMKgwqDCoMKgIGNsb2NrcyA9IDwmcmNjIElX
REcyPiwgPCZyY2MgQ0tfTFNJPjsKPj4+ICvCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gInBjbGsi
LCAibHNpIjsKPj4+ICvCoMKgwqDCoMKgIHRpbWVvdXQtc2VjID0gPDMyPjsKPj4+ICvCoMKgwqAg
fTsKPj4+ICsKPj4+ICsuLi4KPj4gPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
