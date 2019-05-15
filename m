Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8241EAA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEbZWgUwwYe9EWgy6biSBgCAiS0K3RDJZJyV359kcLY=; b=SgjbfuCh2aFjFj
	+gjF3O26lauB1JpFp8yvzqISwpg7n9e30SqsgPJYQUgPLQ/K9NhWwc91d9CwmSnz89ETfZ6P5unWV
	G3mpkyqvF7ujziVFQ6bJl13T12NsvqgAzFQ5KVbHN2veYMLD+PYoYenEbdSoISAfAHxnAK9QLvC4X
	Bj/Dyb/VCFGvMIGc7XeC0uwQPMU5XNBwrGIZ3Du8g9CIGXdfrMdpgFo2gBEGb62xYEggBHYov0pkO
	nJEKVURQsvET4uGnaW/ddQQxhrOTBATZIjGrd6mWEF2WkChK2IBZiKiEi2eDxU6ot9oO/dYqwSNsO
	T9oPxBflfjaNLR2Ekbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQprr-0002lz-3t; Wed, 15 May 2019 09:06:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpri-0002lL-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:06:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id y3so1798216wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 02:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wFA5k42n2PvTkAtvZj4SXJNDy7f4n0IZQu6P7nqdQFk=;
 b=X4kG2qR8EPO/1PEqo1rglf1NosQAvqluV2o4RPotqdHeFYQETZNlwgC5sp94OvPiJs
 DoCeYV3ZOP1Mg/eir1rrA11RbRZTRbQh5fZ0eCusGa01sTnEZ9/1RYUpnVv6pmKr8h6H
 txEz1vwXOa8iN9LsTSXQCGhGcnw+2W+BKlFY3oNZ3kASHHImApY32cJo0XMVKVke55Dn
 ge0bcdddHtdn1nfNfs6ecsrMZuRL+6mXCZ9f6pZ5htntcHAxs0/uki1KLEg44imWSWc8
 IHOQUocdgwy+zjsnuLk5nXtH8Fev4zefuKu5pl1FvGyF8z/MZWm3NOSPPFHpjkK1/e2k
 9/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wFA5k42n2PvTkAtvZj4SXJNDy7f4n0IZQu6P7nqdQFk=;
 b=LzB5+tgA69W0g8PxX+QASwJZ8HollJnfJVKyczD4DkXQoi4LXqYvgIthkQfYEII9V4
 m1dSqw7g2IK/9oiZ8n8XA96yAQSDjR3PZloHZWlHP8JG3UQDtcmcy4bz+lC2jAoMbfvy
 i/NyaVMT7Y8GMhXRVvmYH11ZpVaNTjSVqtM95BV39ABBF96VK/vvz7jvFQS/H10yMmSW
 250JKgjeP1IL3mx4EBwvTu/u9HDyWzYZclz8MLs9aKtUqS3BWdwt/qo1S2Jm7622gmXp
 cgrZefF1kVanf3UMncGA+B+zm950WPW9FvhdALuqDXz75vf4B62WRxcQg0/bW1ujdfMB
 DNpg==
X-Gm-Message-State: APjAAAU3KyiMg7LQW5pj3ZT0S4YYPEGTHb/WAQjmTzBwMKe8q3BTT52c
 /zqoF3zuslQLaNwhIMutqhNRHo7ylcI=
X-Google-Smtp-Source: APXvYqzTYoePwqDD9esqOsGPBmEw78/sLxWA/IkhxSEMuPrS10a39mEN7tjOCD7++ZBv5UIs+Cb13g==
X-Received: by 2002:a1c:f70c:: with SMTP id v12mr21725967wmh.86.1557911180708; 
 Wed, 15 May 2019 02:06:20 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id f7sm1151307wmc.26.2019.05.15.02.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 02:06:20 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>, edubezval@gmail.com,
 rui.zhang@intel.com, javi.merino@kernel.org, viresh.kumar@linaro.org,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, will.deacon@arm.com,
 catalin.marinas@arm.com
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
Date: Wed, 15 May 2019 11:06:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515082318.7993-3-quentin.perret@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_020622_720939_D327CC5F 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mka@chromium.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMDoyMywgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gSW4gdGhlIGN1cnJl
bnQgc3RhdGUsIHRoZSBwZXJmX2RvbWFpbiBzdHJ1Y3QgaXMgZnVsbHkgZGVmaW5lZCBvbmx5IHdo
ZW4KPiBDT05GSUdfRU5FUkdZX01PREVMPXkuIFNpbmNlIHdlIG5lZWQgdG8gd3JpdGUgY29kZSB0
aGF0IGNvbXBpbGVzIGJvdGgKPiB3aXRoIG9yIHdpdGhvdXQgdGhhdCBvcHRpb24gaW4gdGhlIHRo
ZXJtYWwgZnJhbWV3b3JrLCBtYWtlIHN1cmUgdG8KPiBhY3R1YWxseSBkZWZpbmUgdGhlIHN0cnVj
dCByZWdhcmRsZXNzIG9mIHRoZSBjb25maWcgb3B0aW9uLiBUaGF0IGFsbG93cwo+IHRvIGF2b2lk
IHVzaW5nIHN0dWJiZWQgYWNjZXNzb3IgZnVuY3Rpb25zIGFsbCB0aGUgdGltZSBpbiBjb2RlIHBh
dGhzCj4gdGhhdCB1c2UgdGhlIEVNLgo+IAo+IEFja2VkLWJ5OiBWaXJlc2ggS3VtYXIgPHZpcmVz
aC5rdW1hckBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gUGVycmV0IDxxdWVu
dGluLnBlcnJldEBhcm0uY29tPgoKVGhpcyBwYXRjaCBpbXBsaWVzIHRoZSBjcHUgY29vbGluZyBk
ZXZpY2UgY2FuIGJlIHNldCB3aXRob3V0IHRoZSBlbmVyZ3kKbW9kZWwuCgpJc24ndCBpdCBwb3Nz
aWJsZSB0byBtYWtlIGEgc3Ryb25nIGRlcGVuZGVuY3kgZm9yIHRoZSBjcHUgY29vbGluZyBkZXZp
Y2UKb24gdGhlIGVuZXJneSBtb2RlbCBvcHRpb24sIGFkZCB0aGUgZW5lcmd5IG1vZGVsIGFzIGRl
ZmF1bHQgb24gYXJtIGFyY2gKYW5kIGRyb3AgdGhpcyBwYXRjaD8KCkFmdGVyIGFsbCwgdGhlIGNw
dSBjb29saW5nIGlzIHVzaW5nIHRoZSBlbSBmcmFtZXdvcmsuCgo+IC0tLQo+ICBpbmNsdWRlL2xp
bnV4L2VuZXJneV9tb2RlbC5oIHwgMyArLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2VuZXJn
eV9tb2RlbC5oIGIvaW5jbHVkZS9saW51eC9lbmVyZ3lfbW9kZWwuaAo+IGluZGV4IGFhMDI3Zjdi
Y2IzZS4uZmIzMmI4NmE0NjdkIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvZW5lcmd5X21v
ZGVsLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2VuZXJneV9tb2RlbC5oCj4gQEAgLTksNyArOSw2
IEBACj4gICNpbmNsdWRlIDxsaW51eC9zY2hlZC90b3BvbG9neS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvdHlwZXMuaD4KPiAgCj4gLSNpZmRlZiBDT05GSUdfRU5FUkdZX01PREVMCj4gIC8qKgo+ICAg
KiBlbV9jYXBfc3RhdGUgLSBDYXBhY2l0eSBzdGF0ZSBvZiBhIHBlcmZvcm1hbmNlIGRvbWFpbgo+
ICAgKiBAZnJlcXVlbmN5OglUaGUgQ1BVIGZyZXF1ZW5jeSBpbiBLSHosIGZvciBjb25zaXN0ZW5j
eSB3aXRoIENQVUZyZXEKPiBAQCAtNDAsNiArMzksNyBAQCBzdHJ1Y3QgZW1fcGVyZl9kb21haW4g
ewo+ICAJdW5zaWduZWQgbG9uZyBjcHVzWzBdOwo+ICB9Owo+ICAKPiArI2lmZGVmIENPTkZJR19F
TkVSR1lfTU9ERUwKPiAgI2RlZmluZSBFTV9DUFVfTUFYX1BPV0VSIDB4RkZGRgo+ICAKPiAgc3Ry
dWN0IGVtX2RhdGFfY2FsbGJhY2sgewo+IEBAIC0xNjAsNyArMTYwLDYgQEAgc3RhdGljIGlubGlu
ZSBpbnQgZW1fcGRfbnJfY2FwX3N0YXRlcyhzdHJ1Y3QgZW1fcGVyZl9kb21haW4gKnBkKQo+ICB9
Cj4gIAo+ICAjZWxzZQo+IC1zdHJ1Y3QgZW1fcGVyZl9kb21haW4ge307Cj4gIHN0cnVjdCBlbV9k
YXRhX2NhbGxiYWNrIHt9Owo+ICAjZGVmaW5lIEVNX0RBVEFfQ0IoX2FjdGl2ZV9wb3dlcl9jYikg
eyB9Cj4gIAo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
