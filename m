Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBB81363AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 00:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sv6jFZmQxEcp86UF2e/j8DxZtJp9jwZLDhzqHL3aDqc=; b=ic3B8Jmq/4l5zT
	K8saHxaiyPF8pa90KMb1D46HSEbYSgIh22/+11DBGNgXdizvQqeMYIwwxytDVEkOay0tU6vVJdwcu
	yB0eaItRaGcnbPrIX+QKoqi9e5hhlI/mys47VUSyToEv2zk0wMLMO2tA9l0rL72b9x8jvqy03MGXK
	57ddAJcuHTuSKKtXLK2Uk+hLAUac+QziJ02gvjZEwZtiR4zpwVOR7fP/MYFs4SJ2eACe9nkFXxG49
	p+Y3zy7tYLERtXAbawkq9iLjPrvRMrgsPIqz2tYMCv1VA4LO4epfX/D6cFxtGmRaTLrwQGGZUiaDA
	tvnTIllPe2lnKNfA65vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipgyf-0000g1-C0; Thu, 09 Jan 2020 23:12:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipgyY-0000fd-Gk
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 23:12:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so4074wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 15:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IWz9xWsEI1+86yCJM7yCCiK90nZabCdzx093IFKqpFQ=;
 b=MhDS2Dh68R1EBrSZF3dOGZdMeX6aJpvQmuB8+QL0PRShJEFjrV4+q/TB0fn/0PMxhn
 pHts+ZPjikhaK3+DC5K8UQc7CHion+2Xpjlg/7RK5ea+zgbkI699n8REF87gNTTs4VWF
 mggF6XXE8Ea2KpbbnCJMlpBuSBlcnNrdJsAPvuHRRhFOwuyPVKe2VzsAxnM6Fn/C9V++
 4zqzBR0Mx0TMEsfFoKWjSGcVZimHo1fWKU4z/lGVpqI+FgOid7UCBtbciMfi3dGw3f+F
 PqkBelyj079EP5ij5DteK8Fa0beOu5m02coK6E61uvs4vu3tmCPTDESrJlpfqbFfei7u
 Kkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=IWz9xWsEI1+86yCJM7yCCiK90nZabCdzx093IFKqpFQ=;
 b=ZJrIM4q6GVHmvtZ8KLBdZnXb/IJgV+elYx3cjMPPySmOSfZOhW1Wmfy0FPRSWujTFh
 iaRvCxMONfRpakQQWe/CZgEg6awMNQTJfKsMNSi7288+oOfcsvxfQP6rwGkspw+ZNtcJ
 USFuxq2nuTGuD4zerVH+AkIoFvVyOCoAL2rZdqFF5+aDW0/BFNMc4URh8mGl70s3Ybmr
 ldfeG4oSI4tdpu8JHqJTKQ5777xbn+T/vXGYZpCbvQzs9FCYTSCw7S7nXqaGkYttw8Wi
 5F8G37hLSDU4PFVFl/3WRvnRsfIX/T17U0+gnf5ri1YukJ5SO4ms+dPrmDzBQFnXA4QI
 hUXw==
X-Gm-Message-State: APjAAAWlTgWA80MnUmlGknmcb2WyRhkvsdqMt5KHBFTutTJ8iI6+UcK3
 MMKPwH9081bc3YolrbkmfRcTHg==
X-Google-Smtp-Source: APXvYqzL9uwEACaxKqA0GUMup78Gv4eHv8lsjHStUstVk2oxh5YMEnUtLWwEAeY5Que0MbYlgkyS6A==
X-Received: by 2002:a1c:a50e:: with SMTP id o14mr341133wme.2.1578611544561;
 Thu, 09 Jan 2020 15:12:24 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d?
 ([2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d])
 by smtp.googlemail.com with ESMTPSA id n8sm58549wrx.42.2020.01.09.15.12.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 15:12:23 -0800 (PST)
Subject: Re: [PATCH v2 1/3] clocksource: davinci: only enable tim34 in
 periodic mode once it's initialized
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
References: <20191224100328.13608-1-brgl@bgdev.pl>
 <20191224100328.13608-2-brgl@bgdev.pl>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c6b69cb6-b784-0d6c-efaf-87926c20db16@linaro.org>
Date: Fri, 10 Jan 2020 00:12:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191224100328.13608-2-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_151226_562054_8CA742A4 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMTIvMjAxOSAxMTowMywgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBGcm9tOiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+IAo+IFRoZSBE
TTM2NSBwbGF0Zm9ybSBoYXMgYSBzdHJhbmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2lu
ZyBhbmNpZW50Cj4gdS1ib290IC0gbWFpbmxpbmUgdS1ib290IHYyMDEzLjAxIGFuZCBsYXRlciB3
b3JrcyBmaW5lKSB3aGVyZSBpZiB3ZQo+IGVuYWJsZSB0aGUgc2Vjb25kIGhhbGYgb2YgdGhlIHRp
bWVyIGluIHBlcmlvZGljIG1vZGUgYmVmb3JlIHdlIGRvIGl0cwo+IGluaXRpYWxpemF0aW9uIC0g
dGhlIHRpbWUgd29uJ3Qgc3RhcnQgZmxvd2luZyBhbmQgd2UgY2FuJ3QgYm9vdC4KPiAKPiBXaGVu
IHVzaW5nIG1vcmUgcmVjZW50IHUtYm9vdCwgd2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4g
cmVpbml0aWFsaXplCj4gaXQgYW5kIGFsbCB3b3JrcyBmaW5lLgo+IAo+IEkndmUgYmVlbiB1bmFi
bGUgdG8gZmlndXJlIG91dCB3aHkgdGhhdCBpcywgYnV0IGEgd29ya2Fyb3VuZCBmb3IgdGhpcwo+
IGlzIHN0cmFpZ2h0Zm9yd2FyZCAtIGRvbid0IGVuYWJsZSB0aGUgdGltMzQgdGltZXIgaW4gcGVy
aW9kaWMgbW9kZSB1bnRpbAo+IGl0J3MgcHJvcGVybHkgaW5pdGlhbGl6ZWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1kYXZpbmNpLmMgfCAxMyArKysrKysr
KystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItZGF2aW5jaS5jIGIv
ZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1kYXZpbmNpLmMKPiBpbmRleCA2Mjc0NWM5NjIwNDku
LjI4MDFmMjFiYjBlMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWRh
dmluY2kuYwo+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItZGF2aW5jaS5jCj4gQEAg
LTYyLDYgKzYyLDcgQEAgc3RhdGljIHN0cnVjdCB7Cj4gIAlzdHJ1Y3QgY2xvY2tzb3VyY2UgZGV2
Owo+ICAJdm9pZCBfX2lvbWVtICpiYXNlOwo+ICAJdW5zaWduZWQgaW50IHRpbV9vZmY7Cj4gKwli
b29sIGluaXRpYWxpemVkOwo+ICB9IGRhdmluY2lfY2xvY2tzb3VyY2U7Cj4gIAo+ICBzdGF0aWMg
c3RydWN0IGRhdmluY2lfY2xvY2tldmVudCAqCj4gQEAgLTk0LDggKzk1LDkgQEAgc3RhdGljIHZv
aWQgZGF2aW5jaV90aW0xMl9zaHV0ZG93bih2b2lkIF9faW9tZW0gKmJhc2UpCj4gIAkgKiBoYWx2
ZXMuIEluIHRoaXMgY2FzZSBUSU0zNCBydW5zIGluIHBlcmlvZGljIG1vZGUgYW5kIHdlIG11c3QK
PiAgCSAqIG5vdCBtb2RpZnkgaXQuCj4gIAkgKi8KPiAtCXRjciB8PSBEQVZJTkNJX1RJTUVSX0VO
QU1PREVfUEVSSU9ESUMgPDwKPiAtCQlEQVZJTkNJX1RJTUVSX0VOQU1PREVfU0hJRlRfVElNMzQ7
Cj4gKwlpZiAobGlrZWx5KGRhdmluY2lfY2xvY2tzb3VyY2UuaW5pdGlhbGl6ZWQpKQo+ICsJCXRj
ciB8PSBEQVZJTkNJX1RJTUVSX0VOQU1PREVfUEVSSU9ESUMgPDwKPiArCQkgICAgICAgREFWSU5D
SV9USU1FUl9FTkFNT0RFX1NISUZUX1RJTTM0Owo+ICAKPiAgCXdyaXRlbF9yZWxheGVkKHRjciwg
YmFzZSArIERBVklOQ0lfVElNRVJfUkVHX1RDUik7Cj4gIH0KPiBAQCAtMTA3LDggKzEwOSw5IEBA
IHN0YXRpYyB2b2lkIGRhdmluY2lfdGltMTJfc2V0X29uZXNob3Qodm9pZCBfX2lvbWVtICpiYXNl
KQo+ICAJdGNyID0gREFWSU5DSV9USU1FUl9FTkFNT0RFX09ORVNIT1QgPDwKPiAgCQlEQVZJTkNJ
X1RJTUVSX0VOQU1PREVfU0hJRlRfVElNMTI7Cj4gIAkvKiBTYW1lIGFzIGFib3ZlLiAqLwo+IC0J
dGNyIHw9IERBVklOQ0lfVElNRVJfRU5BTU9ERV9QRVJJT0RJQyA8PAo+IC0JCURBVklOQ0lfVElN
RVJfRU5BTU9ERV9TSElGVF9USU0zNDsKPiArCWlmIChsaWtlbHkoZGF2aW5jaV9jbG9ja3NvdXJj
ZS5pbml0aWFsaXplZCkpCj4gKwkJdGNyIHw9IERBVklOQ0lfVElNRVJfRU5BTU9ERV9QRVJJT0RJ
QyA8PAo+ICsJCSAgICAgICBEQVZJTkNJX1RJTUVSX0VOQU1PREVfU0hJRlRfVElNMzQ7Cj4gIAo+
ICAJd3JpdGVsX3JlbGF4ZWQodGNyLCBiYXNlICsgREFWSU5DSV9USU1FUl9SRUdfVENSKTsKPiAg
fQo+IEBAIC0yMDYsNiArMjA5LDggQEAgc3RhdGljIHZvaWQgZGF2aW5jaV9jbG9ja3NvdXJjZV9p
bml0X3RpbTM0KHZvaWQgX19pb21lbSAqYmFzZSkKPiAgCXdyaXRlbF9yZWxheGVkKDB4MCwgYmFz
ZSArIERBVklOQ0lfVElNRVJfUkVHX1RJTTM0KTsKPiAgCXdyaXRlbF9yZWxheGVkKFVJTlRfTUFY
LCBiYXNlICsgREFWSU5DSV9USU1FUl9SRUdfUFJEMzQpOwo+ICAJd3JpdGVsX3JlbGF4ZWQodGNy
LCBiYXNlICsgREFWSU5DSV9USU1FUl9SRUdfVENSKTsKPiArCj4gKwlkYXZpbmNpX2Nsb2Nrc291
cmNlLmluaXRpYWxpemVkID0gdHJ1ZTsKPiAgfQoKV2h5IG5vdCBtb3ZlIGNsb2NrZXZlbnRzX2Nv
bmZpZ19hbmRfcmVnaXN0ZXIoKSBhZnRlcgpkYXZpbmNpX2Nsb2Nrc291cmNlX2luaXRfdGltMzQo
KSBpcyBjYWxsZWQgPwoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90
d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
L2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
