Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318831A3A79
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thCyd5FA0Zfh1DWM8e2+hG2D8DnDEVEHMK3uarpbpUg=; b=tWFDcaKs7aTFbn
	OXzinWCVBR3MPH+mcKoZLwjR0cDPqU4+q1lmRU3lG7cgU3X0q18TRdY0NtqiGEhtvCRKcDM+8IeBq
	z6y8ljUXxUORqCrMBIa43Ia/9+7f7iX7oMpL3T4spFnfYTW4g4gR1YTbQskC+0iHOoE3Nf76z4OtN
	vH28OdcaeQzW2C4m+r5exl5YWcPn4e3DfuOCwAbXE+TrbaJfWk18LkfQ9JXkx3xBr995cSaJL/P4x
	TZ0tbP7D04ooLZYvkpkkFUv9Z+Kki+0EX2X7TxHOPxVBasB1Hdu9B7BfKS+313lVPn5U4C4zykGiQ
	bhKuakoSxXQNI56l0NRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcj4-0001tm-1r; Thu, 09 Apr 2020 19:20:34 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcfS-0004mX-Km
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:16:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id t11so519562lfe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 12:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lEm/9oCTiyDhNq4taChegHKoTyf1h7PJecGCNIAzWok=;
 b=WM6j7c81RCuBiipkNzSjsMnAgYPxhx5NPQiZF46zo/micN1zvbrQ8opfwEiDLW3si7
 Y7zj9dIwNEBL1sDjUNdttGl4v3tJnNeGiH29NUywTn3WugNqcNUfx3kvi2+NF0iy5pJA
 g2I4J6CTqLDT8mcQaxz346d0XRrrDcFnKbAUYgi05f90zPx9FqlAIahx3XIxYwAcCm3K
 1i61RRcjeeDCVxgACAMwmf7Y5A77cGIbOPTRZR3eJPKmLFzQPiy26FQEtNuCdG4Z90a6
 dOEwV6ZXPCENo1zwipQijkLTPa7QBOh+3Op2pO4NjPTPCp3uQ7jMXlLEVif7qAhqtC47
 yhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lEm/9oCTiyDhNq4taChegHKoTyf1h7PJecGCNIAzWok=;
 b=fv+EhJAEe2NfH/cyLdr8SDA9A2DZMecSeV0nOJwaFs4ecZjDCe9KTVL8wUlD7YjRPJ
 cZ1lH10IVaRyF7KNcV2IHuycYu5ie3VPKq7KmGEJW2FFLXfKPjsgwUahKf+/DhikqRSH
 Qm2l2yeTFdh/vB8X8AZreAPN0XGddpZmZMTxkXN4/CzNcSF0qbM0V0xUBydlGc97QqJb
 a5lpzKehqOokseoXwoaGgoCj871VBAQVUw9dyaQzPf1VvM2fPCqA2ouumQAI6CjbkRRB
 0OOOppgs9H2aUtJGEFHzYZ5ExLp939B6X3SHTM+34IecE3+XldqAIlIGIKWfmT7YEa+h
 uVwg==
X-Gm-Message-State: AGi0PuYYdJkeqnsGi9eZSvf1MNY+9SKqnJnIUgQ5nbtbYkdHNv3lGeLn
 hvHKnA40FeGGopCdixARpx+0YgAM
X-Google-Smtp-Source: APiQypICbrcX4mbJw1o/8w6UuN+MCXb038Do2Nh3mNuQotUU1M0GaPBw5Nsl0sn5CBAu7KFRA3CVAA==
X-Received: by 2002:a05:6512:10c9:: with SMTP id
 k9mr442339lfg.183.1586459808297; 
 Thu, 09 Apr 2020 12:16:48 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id w5sm3843660ljj.47.2020.04.09.12.16.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 12:16:47 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a9afb1b5-3141-4923-c7fa-194228081e1b@gmail.com>
Date: Thu, 9 Apr 2020 22:16:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121650_736117_BE90C3EC 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyBpbnQgdGVncmEyMTBfZW1jX3NldF9yYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiArCQkJCSBj
b25zdCBzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtY19jb25maWcgKmNvbmZpZykKPiArewo+ICsJc3Ry
dWN0IHRlZ3JhMjEwX2VtYyAqZW1jID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlzdHJ1Y3Qg
dGVncmEyMTBfZW1jX3RpbWluZyAqdGltaW5nID0gTlVMTDsKPiArCXVuc2lnbmVkIGxvbmcgcmF0
ZSA9IGNvbmZpZy0+cmF0ZTsKPiArCXM2NCBsYXN0X2NoYW5nZV9kZWxheTsKPiArCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwlpZiAocmF0ZSA9PSBlbWMt
Pmxhc3QtPnJhdGUgKiAxMDAwVUwpCj4gKwkJcmV0dXJuIDA7CgpDb3VsZG4ndCBhbGwgdGhlIHJh
dGVzIGJlIGV4cHJlc3NlZCBpbiBIej8gVGhlbiB5b3Ugd29uJ3QgbmVlZCBhbGwgdGhlc2UKbXVs
dGlwbGljYXRpb25zIGJ5IDEwMDAuCgo+ICsJZm9yIChpID0gMDsgaSA8IGVtYy0+bnVtX3RpbWlu
Z3M7IGkrKykgewo+ICsJCWlmIChlbWMtPnRpbWluZ3NbaV0ucmF0ZSAqIDEwMDBVTCA9PSByYXRl
KSB7Cj4gKwkJCXRpbWluZyA9ICZlbWMtPnRpbWluZ3NbaV07Cj4gKwkJCWJyZWFrOwo+ICsJCX0K
PiArCX0KPiArCj4gKwlpZiAoIXRpbWluZykKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlp
ZiAocmF0ZSA+IDIwNDAwMDAwMCAmJiAhdGltaW5nLT50cmFpbmVkKQo+ICsJCXJldHVybiAtRUlO
VkFMOwo+ICsKPiArCWVtYy0+bmV4dCA9IHRpbWluZzsKPiArCWxhc3RfY2hhbmdlX2RlbGF5ID0g
a3RpbWVfdXNfZGVsdGEoa3RpbWVfZ2V0KCksIGVtYy0+Y2xrY2hhbmdlX3RpbWUpOwo+ICsKPiAr
CS8qIFhYWCB1c2Ugbm9uLWJ1c3ktbG9vcGluZyBzbGVlcD8gKi8KPiArCWlmICgobGFzdF9jaGFu
Z2VfZGVsYXkgPj0gMCkgJiYKPiArCSAgICAobGFzdF9jaGFuZ2VfZGVsYXkgPCBlbWMtPmNsa2No
YW5nZV9kZWxheSkpCj4gKwkJdWRlbGF5KGVtYy0+Y2xrY2hhbmdlX2RlbGF5IC0gKGludClsYXN0
X2NoYW5nZV9kZWxheSk7Cj4gKwo+ICsJc3Bpbl9sb2NrX2lycXNhdmUoJmVtYy0+bG9jaywgZmxh
Z3MpOwo+ICsJdGVncmEyMTBfZW1jX3NldF9jbG9jayhlbWMsIGNvbmZpZy0+dmFsdWUpOwo+ICsJ
ZW1jLT5jbGtjaGFuZ2VfdGltZSA9IGt0aW1lX2dldCgpOwo+ICsJZW1jLT5sYXN0ID0gdGltaW5n
Owo+ICsJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW1jLT5sb2NrLCBmbGFncyk7Cj4gKwo+ICsJ
cmV0dXJuIDA7Cj4gK30KCkknZCBzdWdnZXN0IHRvIGNoZWNrIGhvdyBtdWNoIHRpbWUgaW52b2Nh
dGlvbiBvZiBrdGltZV9nZXQoKSB0YWtlcywgYXQKbGVhc3QgaXQgY2FtZSB0byBhIHN1cnByaXNl
IHRvIG1lIGluIGEgY2FzZSBvZiB0aGUgdGVncmEtY3B1aWRsZSBkcml2ZXIuCgpJdCBtYXkgYmUg
d2VsbCBvdmVyIHRoZSBlbWMtPmNsa2NoYW5nZV9kZWxheS4KCi4uLgo+ICtzdGF0aWMgaW50IHRl
Z3JhMjEwX2VtY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Ci4uLgo+
ICsJZW1jLT5jbGtjaGFuZ2VfZGVsYXkgPSAxMDA7Cj4gKwllbWMtPnRyYWluaW5nX2ludGVydmFs
ID0gMTAwOwoKTm90IHN1cmUgd2h5IHRoZXNlIGFyZW4ndCBhIGNvbnN0YW50IHdpdGggdGhlIGNv
ZGUuLiA/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
