Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D078C25F4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfrCFve+IfcskNZKhELY0EWgiS4oMvcIttZ0TNelLIo=; b=pa0nscftVYwt32
	1H3ch9oqQV8RESm3SXxbZuEcnxNQnuQd8v+sniwAEELTYHSAF6eJ6YkX6YIWfD42oH0VQB+sQ1ijL
	QHELPTkxjcjd0IjYwCymbL0810HF8NXuXUR7q2EZIV8Eb0dJM8TDuvDFY4S+3GpToz41isv9dGyqE
	8OIFe2CI4YKONSZyzEQmMakDlMqRG1RMDrTp59SAZ/T+HKe9XmJcyHsHmgvkM55okBNuFp2rboaeA
	646jMlRHXib+PbR4iXZ1XeqEBCMsb+4KYuiQYohWxDNfOQSCuBhlRVnQOKrjGVA5srZ7M/p4i93BC
	SctkiJqY/gSIz4h+tJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMTR-0002yk-L0; Wed, 22 May 2019 08:19:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMTE-0002oN-KW
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:19:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so4105597wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 01:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wm7USqdu+jHYGWfH9S7SpMuameCsVZ9veEzhXK92UAo=;
 b=JZjKCDCBSttnMb0+fn138fsCpqGDGVoOKzPgaU2mAoTZrx++Uerj2qFFt7Lq+L7q6A
 ANii67poZ7jScEk2s3V4T8O76prygpZJP71t4AeDerVqJpMWUa2bA7WPshdbtPBKiKCy
 B95OpFp/w7DD79nEoymu6uHIQ32w+PBa5NmM193gxIL4MT43X5BfiTtLlmFY/14FbCwh
 jtx10k8/mnjiqzE6GexW2WRcnLTsJsrwYuhqL6WNe+lA0qptdQtDzNpEiBgTgBMVHdcm
 JVEnoTK3FLpQVfgQWSy72jGZyNID2cnZ1uSaRuWgVxt8dYP1bVjWscp/m+rqK0jMkyrv
 btig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wm7USqdu+jHYGWfH9S7SpMuameCsVZ9veEzhXK92UAo=;
 b=rKgaaHk3dogu4FyMLKJT+4Bt71GS0QjKqhCvEMW4hM0w+gZkYQvQLt4vUbWSsmF6V7
 +gU84iH30DU1IsHe79ZrSY9cHG3TREfsE1gC/lXvx8rIKMxCzpV/aLlK4C1ELKJSTiYb
 HhYc/dYpWMTjkflIe093N8byhuMipP/oovl/uH6d+dmOaMCY23B38Ue/WEqaF6aRxuM9
 AtMQmrnpgYVqRfH3gbTazGdXXGCeHjB9OVu5BfiS3iA0xLRuF63MmqAp5ugQDkSJSvQZ
 6nQWQK0GFtArYIR3OvxLxeF5m8uQ0vAr/L8PEHskY1pKvab2brJTlfvJEVMJrY0897/D
 QFbg==
X-Gm-Message-State: APjAAAWZghnvdrjpKwfR/KwBVIjkwb9FAezQNE9Z23SKJz75uk02icRj
 /LYCGS3A87+NWctGLds2bqDf4g==
X-Google-Smtp-Source: APXvYqxjLZytVFJILZeHk5UQVBKybXMi9/eW9XaTxhyiW3F+6M1upnZ0tBsOLRxV/JKsXWxtf9dGWA==
X-Received: by 2002:a1c:cb0e:: with SMTP id b14mr6125266wmg.61.1558513170535; 
 Wed, 22 May 2019 01:19:30 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
 by smtp.googlemail.com with ESMTPSA id o4sm6530168wmo.20.2019.05.22.01.19.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 01:19:29 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: at91sam9261ek: remove unused chosen nodes
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Rob Herring <robh@kernel.org>
References: <20190408151155.20279-1-alexandre.belloni@bootlin.com>
 <2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org>
Message-ID: <1aa65857-7638-b78f-8cde-cc5c968555cc@linaro.org>
Date: Wed, 22 May 2019 10:19:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2f831f1b-c87d-48bd-cf02-2ebb334b964c@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_011932_926289_08C85A94 
X-CRM114-Status: GOOD (  26.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFJvYiwKCmEgZ2VudGxlIHBpbmcgLi4uIDspCgpPbiAwOC8wNC8yMDE5IDE4OjMwLCBEYW5p
ZWwgTGV6Y2FubyB3cm90ZToKPiAKPiBIaSBSb2IsCj4gCj4gdGhlIGZvbGxvd2luZyBwYXRjaCBo
YXMgYmVlbiBwdXNoZWQgaW4gMjAxNiBieSBjb21taXQgNTFmMGFlYjJkMjFmMS4KPiAKPiBCZWlu
ZyBhYmxlIHRvIHNwZWNpZnkgd2hpY2ggdGltZXIgc2hvdWxkIGFjdCBhcyBhIGNsb2Nrc291cmNl
IG9yIGEKPiBjbG9ja2V2ZW50IGlzIG9mdGVuIHJlcXVlc3RlZC4gRG9pbmcgdGhpcyBmcm9tIHRo
ZSBkcml2ZXIgaXRzZWxmIGZvcmNlcwo+IHRvIGRvIHNvbWUgYXNzdW1wdGlvbiBpbiB0aGUgdGlt
ZXIgZGVmaW5pdGlvbiBvcmRlcmluZyBpbiB0aGUgRFQuCj4gCj4gVGhhdCBpbXBhY3RzIGJhZGx5
IHRoZSByZXN1bHRpbmcgY29kZSBhbmQgaXRzIHNlbGYtZW5jYXBzdWxhdGlvbi4KPiAKPiAgLSBU
aGVyZSBpcyBvbmUgbm9kZSBhbmQgdGhlIGRyaXZlciBoYXJkY29kZXMgdGhlIHZhbHVlIGFuZCBp
bml0aWFsaXplcwo+IGEgY2xvY2tzb3VyY2UgYW5kIGEgY2xvY2tldmVudAo+IAo+ICAtIFRoZXJl
IGFyZSBzZXZlcmFsIG5vZGVzLCBvbmUgZm9yIHRoZSBjbG9ja3NvdXJjZSBhbmQgb25lIGZvciB0
aGUKPiBjbG9ja2V2ZW50LCBhbmQgdGhlIGRyaXZlciBhc3N1bWVzIHRoZSBvcmRlciBvZiB0aGUg
bm9kZSBpbiB0aGUgRFQKPiAKPiAgLSBUaGVyZSBhcmUgc2V2ZXJhbCBub2RlcyBhbmQgbXVsdGlw
bGUgY2hhbm5lbHMgYW5kIHRob3NlIGFyZSB1c2VkIGZvcgo+IFBXTS4gSXQgaXMgaW1wb3NzaWJs
ZSB0byBrbm93IHdoaWNoIG9uZSBhcmUgdXNlZCBmb3IgUFdNIG9yIGZvciB0aGUKPiBjbG9ja3Nv
dXJjZSBvciBmb3IgdGhlIGNsb2NrZXZlbnQKPiAKPiBGb3IgZXhhbXBsZSB3aXRoIFNUTTMyLCB3
ZSBzaG91bGQgYmUgYWJsZSB0byBzcGVjaWZ5IHdoaWNoIHRpbWVyIHRvIHVzZS4KPiBUaGVyZSBh
cmUgMTYgdGltZXJzIElJUkMsIHRoZXkgY2FuIGJlIHVzZWQgZm9yIFBXTSwgY2xvY2tzb3VyY2Ug
b3IKPiBjbG9ja2V2ZW50LiBIYWxmIGlzIDE2IGJpdHMsIG90aGVyIGhhbGYgaXMgMzIgYml0cywg
ZGVwZW5kaW5nIG9uIHRoZQo+IGRlc3RpbmF0aW9uIG9mIHRoZSBwbGF0Zm9ybSB3ZSBjYW4gYmUg
aW50ZXJlc3RlZCB0byB1c2Ugb25lIG9yIGFub3RoZXIKPiB3aXRob3V0IHJlY29tcGlsaW5nIGEg
a2VybmVsIGJ1dCBqdXN0IHRoZSBEVC4KPiAKPiBXZSBuZWVkIGEgd2F5IHRvIHNwZWNpZnkgd2hp
Y2ggdGltZXIgdG8gYmUgdXNlZCBmcm9tIHRoZSBEVC4gVGhlIHBhdGNoCj4gYmVsb3cgc291bmRl
ZCBsaWtlIGEgZ29vZCB3YXkgdG8gY2hhcmFjdGVyaXplIHRoZSBub2RlcyBhcyB0aGV5IGJlbG9u
Zwo+IHRvIHRoZSAnY2hvc2VuJyBub2RlIGFuZCB3ZSBzdGF5IHRvIGEgJ2xpbnV4JyB0aGluZy4K
PiAKPiBXaGF0IGRvIHlvdSB0aGluayA/Cj4gCj4gCj4gT24gMDgvMDQvMjAxOSAxNzoxMSwgQWxl
eGFuZHJlIEJlbGxvbmkgd3JvdGU6Cj4+IFRoZSBjaG9zZW4gY2xvY2tzb3VyY2UgYW5kIGNsb2Nr
ZXZlbnQgYmluZGluZ3MgaGF2ZSBuZXZlciBiZWVuIGFjY2VwdGVkIGFuZAo+PiBwYXJzZWQsIHJl
bW92ZSB0aGVtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFu
ZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvYXQ5
MXNhbTkyNjFlay5kdHMgfCA4IC0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgOCBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYxZWsu
ZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTkyNjFlay5kdHMKPj4gaW5kZXggYTU3ZjJk
NDM1ZGNhLi4xMWVkNTVkOGE4N2QgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0
OTFzYW05MjYxZWsuZHRzCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYxZWsu
ZHRzCj4+IEBAIC0xNSwxNCArMTUsNiBAQAo+PiAgCWNob3NlbiB7Cj4+ICAJCWJvb3RhcmdzID0g
InJvb3Rmc3R5cGU9dWJpZnMgdWJpLm10ZD01IHJvb3Q9dWJpMDpyb290ZnMgcnciOwo+PiAgCQlz
dGRvdXQtcGF0aCA9ICJzZXJpYWwwOjExNTIwMG44IjsKPj4gLQo+PiAtCQljbG9ja3NvdXJjZSB7
Cj4+IC0JCQl0aW1lciA9IDwmdGltZXIwPjsKPj4gLQkJfTsKPj4gLQo+PiAtCQljbG9ja2V2ZW50
IHsKPj4gLQkJCXRpbWVyID0gPCZ0aW1lcjE+Owo+PiAtCQl9Owo+PiAgCX07Cj4+ICAKPj4gIAlt
ZW1vcnkgewo+Pgo+IAo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
