Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B861FD1E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8fnyH11PZ473/7p/ajz4sMsLOt1CBVCByv+1EJM6Co=; b=fLWfxaANyZHOKq
	daGzcVMEZmkGS2SZLk+y5ZgGb4cSiCgPxOUtB5u1/xgCsdVqvQWZKoelpUFM7/sypYXlEC6K0i5bQ
	TgjMnYm0X2SxTH3CzVgtGHqEiWZ9DLYIbe+taWfGTZ6JzvruNewBiRZ7CfV8yR78a+ftxL6dukF/v
	1yazbQOjeL73YMCmkF+Uh5sTxlgPuoRQOqCoDqtDPCxe9JFEbHCE6sL9ACBKUboAPXii1+mZogoPh
	AsE1lqUcN6Fd4oxGd8/mqvj4c9K5h7IxF0jheR13HjjhAMloYn3O562Ze4NrJqucrcAMunIUnHc9s
	kFVibQ1va+5wxpIX+HQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlaos-0005K4-Lr; Wed, 17 Jun 2020 16:21:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlaof-0005JG-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:21:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id x18so3628449lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 09:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IRiK2UUVRAsIPqcMgasRPg24vJVeAUpdnyR9861AUZo=;
 b=u4GPDiiQRz2ATonnih1RGhxWuD9iVyOFZ9P85BYBXNXYhl0LtvhqgxB2XsOLLc66Co
 kL7UaNQTtlZL/ynZ4MAj29AR/Rs1Fc4yCor+n9CS5+eaT8sChwdALidi79f4wx4LYdyn
 RBHlUJjzY6YaE50XJ3vGjQfDNtT9UkDx0IcS4TR74nPfbMW1nkmVZegZexSUud/6cPxf
 1Yn5/0rMfuIWfE7C8StZt+ls5aoJcCMmsDl3/OVgS3DAz3B0BBhoPvvmDFrTjmmHODTz
 6Kftx8xhp8XftMSCed6XkrhJbPg/6NFotH2li0APja/99VPDVKQv5G1gpUr3iw4FKJ0N
 Sw0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IRiK2UUVRAsIPqcMgasRPg24vJVeAUpdnyR9861AUZo=;
 b=Hb8wFVkWuTPpCVpE7rxwZI7zUIsQRm+M64M/L3mYCAnLCavB+MlnmABMHIp7jsQjCB
 IHbmnQB4Aepg3SWHoBFHcC6lUlKblHBFtT0irmlv3BfIJiOzXKrB4f3Wylc30VL5Fc7g
 +mqemICyzvLy9cO5NWAnOVh+xpUgTzB9B/ZJwScEtpTQRR9TbQZ1bKj+Z9NYGhmZfnyB
 osBGNoz0W/jk/Dl8wfQghqFxuLOZucxjl5nThE6KCB1ckUYC7dGCVKZF79jKnUTc0b6o
 mdJ3TzsusTURtz2J6vFEo2BysDoms4ppmdSlzK7aXE9ixl9hFymgfoPq5vYRaQ+EcJhu
 2v8A==
X-Gm-Message-State: AOAM530hmsPIu3+XE3hsB9RTrLIbZZ+0yLdnVsNz22Qf6SETpq0Y7ncB
 j8jccoFQ+Vv39VjzzaWuGBrST9gD
X-Google-Smtp-Source: ABdhPJz3aiPxKTjef7ws1Wk0kCPVBhHmctYWL0jMJEPomcZI7gJIPON3eEZiqN7mZyOpvLO4P8eWqA==
X-Received: by 2002:a2e:9a08:: with SMTP id o8mr42939lji.126.1592410891870;
 Wed, 17 Jun 2020 09:21:31 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id 1sm51530lft.95.2020.06.17.09.21.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 09:21:31 -0700 (PDT)
Subject: Re: [PATCH 09/73] ARM: tegra: gr2d is not backwards-compatible
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
 <20200616135238.3001888-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9f56be9a-1a79-07cc-371f-f3abcd20701e@gmail.com>
Date: Wed, 17 Jun 2020 19:21:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200616135238.3001888-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_092134_037931_70E6CAA9 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTYuMDYuMjAyMCAxNjo1MSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBUaGll
cnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IAo+IFRoZSBpbnN0YW50aWF0aW9uIG9m
IGdyMmQgaW4gVGVncmExMTQgaXMgbm90IGJhY2t3YXJkcy1jb21wYXRpYmxlIHdpdGgKPiB0aGUg
dmVyc2lvbiBmb3VuZCBvbiBlYXJsaWVyIGNoaXBzLiBSZW1vdmUgdGhlIG1pc2xlYWRpbmcgY29t
cGF0aWJsZQo+IHN0cmluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJl
ZGluZ0BudmlkaWEuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy90ZWdyYTExNC5kdHNp
IHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmExMTQuZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3RlZ3JhMTE0LmR0c2kKPiBpbmRleCBhMGFjOWVhOWVjOWQuLmQ1ODNkZmJh
Njg4ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy90ZWdyYTExNC5kdHNpCj4gKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvdGVncmExMTQuZHRzaQo+IEBAIC0zNSw3ICszNSw3IEBAIGhv
c3QxeEA1MDAwMDAwMCB7Cj4gIAkJcmFuZ2VzID0gPDB4NTQwMDAwMDAgMHg1NDAwMDAwMCAweDAx
MDAwMDAwPjsKPiAgCj4gIAkJZ3IyZEA1NDE0MDAwMCB7Cj4gLQkJCWNvbXBhdGlibGUgPSAibnZp
ZGlhLHRlZ3JhMTE0LWdyMmQiLCAibnZpZGlhLHRlZ3JhMjAtZ3IyZCI7Cj4gKwkJCWNvbXBhdGli
bGUgPSAibnZpZGlhLHRlZ3JhMTE0LWdyMmQiOwo+ICAJCQlyZWcgPSA8MHg1NDE0MDAwMCAweDAw
MDQwMDAwPjsKPiAgCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcyIElSUV9UWVBFX0xFVkVMX0hJ
R0g+Owo+ICAJCQljbG9ja3MgPSA8JnRlZ3JhX2NhciBURUdSQTExNF9DTEtfR1IyRD47Cj4gCgpD
b3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4gd2hhdCdzIHRoZSBkaWZmZXJlbmNlPyBBRkFJSywgdGhl
IDJEIEhXIGlzCmlkZW50aWNhbCBvbiBUMjAvMzAvMTE0LgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
