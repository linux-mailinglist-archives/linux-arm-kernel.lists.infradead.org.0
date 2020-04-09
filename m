Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 774241A39C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 20:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n02yUMG3e4WnbkzaflZR5Bj8RioLDRsa863AS26Gzzw=; b=S1V96qvvGW1RxP
	pfJQzBPUOa4IVebSjgtcJFbK1xwizsaKjExz1a2KQzr3X6WVjtfWYDCrJFBUlWLun5HLhtLZQUHAE
	NQdoD/fiQQc+wOjKq/puZUow4RHWUN2C5F1b9NsSjyWzm8GUsN16Jy0sXZQl15xdRhpbNQ/bOZF6m
	7jk1YTul0i0Umz4O6I6kMBe03xxO37cJXR0v2iLYoMFWYeRjhiW42Pbk83wow8NmgyEPsBrCxgyFh
	LFsTmC5PwluoLrV958flvXC1imHU2udCrdZ/bBAOpKUicnH66DdYqMiyVFSQ+N1vY5E6JAu9XUbdG
	TH3LCBSDU8uVLTYnauxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbr5-0002ht-Eh; Thu, 09 Apr 2020 18:24:47 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbqw-0002hS-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 18:24:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id z23so376758lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 11:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fa26jqPPtzIkc//RtMH6SVR58k747j0sywbqTRpv304=;
 b=aMaO6MI5RtYfDEKWn9t0hPBC+iiaGTHCKRHtqhDSpYRMdBINmseVb852oVgHht6hPG
 fd5K+uLll0UGAFw7Ko66nAjKVrlhMMp65nYW03VLlXPRaY5atpmWKGaXhAtAb6xCClV6
 N47yqVKTXIOkz8e1N84nDPdfP9RrkXWPvqVNvtCeWnZrcO5m7hm7hcheYrI9c+na0Xow
 +vd9UPBZHs9OesASsdiq182qwSHO+rFmLE70XnZdIBKxF84e6TEcDUkS3c+EToF3JiTA
 dM95arlpy/Idu/NqW0rGgaHFtWN2RkP0URVjCMUNSOkAKTqoAPag5CwvxT/dKtmXCGUj
 A1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fa26jqPPtzIkc//RtMH6SVR58k747j0sywbqTRpv304=;
 b=YMMVIDKlAOpi2S5obmUpzzD+gN0uOr9RpEf9j+NMK+jS9a+WhOxYsg2VzUsQE5R9di
 Sxp/o68s/j+JCbgROuinDfB+qmniWZqgvU/QGo1vFdmc6TOsWnalOjO2dPJsmpwH0Mgh
 s7D3h9xZXsDhovW4CcD4uM4/fGJkDQsziOiTdQCdXzEh1rL/u4Njs/VaomcwsDamGruh
 wpGP0ZN2+qj+9m73Cm2wr9beTaX2G9zXjqaWRKKa1hatua0cgFcApS20/ounA+NInsTB
 BIilgsVbjUMQXjdcU5Wl8piG/1VxH4TVcc/cqhfH5HxO3kKXfgL+tyXqZk9bPi8xtaAe
 21yg==
X-Gm-Message-State: AGi0PuZvavAxZidiAGlqjJePGjt4xARXv6yH6XPZ87F2DibM8OGO5TJo
 TtIqj5K68dBLG0luG5I/tptBQgxF
X-Google-Smtp-Source: APiQypKBIIC1fFOKcSXJcsM3k16YK6Uo7dy37UIDlG+baWYmUXAJIkTaBwCpQaQHtwMdvrWhiCEcxg==
X-Received: by 2002:a05:6512:443:: with SMTP id
 y3mr371032lfk.166.1586456673273; 
 Thu, 09 Apr 2020 11:24:33 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id w7sm2108193lji.92.2020.04.09.11.24.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 11:24:32 -0700 (PDT)
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
Date: Thu, 9 Apr 2020 21:24:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-8-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_112438_717675_202758B1 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
YyBsb25nIHRlZ3JhMjEwX2Nsa19lbWNfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywgdW5z
aWduZWQgbG9uZyByYXRlLAo+ICsJCQkJCXVuc2lnbmVkIGxvbmcgKnByYXRlKQo+ICt7Cj4gKwlz
dHJ1Y3QgdGVncmEyMTBfY2xrX2VtYyAqZW1jID0gdG9fdGVncmEyMTBfY2xrX2VtYyhodyk7Cj4g
KwlzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtY19wcm92aWRlciAqcHJvdmlkZXIgPSBlbWMtPnByb3Zp
ZGVyOwo+ICsJdW5zaWduZWQgaW50IGk7Cj4gKwo+ICsJaWYgKCFwcm92aWRlciB8fCAhcHJvdmlk
ZXItPmNvbmZpZ3MgfHwgcHJvdmlkZXItPm51bV9jb25maWdzID09IDApCj4gKwkJcmV0dXJuIGNs
a19od19nZXRfcmF0ZShodyk7CgpUaGlzIHN0aWxsIGxvb2tzIHdyb25nIHRvIG1lLiBOb2JvZHkg
c2hvdWxkIGJlIGFibGUgdG8gZ2V0IEVNQyBjbG9jawp1bnRpbCBwcm92aWRlciBpcyByZWdpc3Rl
cmVkLgoKVGhpcyBpcyB0cm91Ymxlc29tZSwgZXNwZWNpYWxseSBnaXZlbiB0aGF0IHlvdSdyZSBh
bGxvd2luZyB0aGUgRU1DCmRyaXZlciB0byBiZSBjb21waWxlZCBhcyBhIGxvYWRhYmxlIG1vZHVs
ZS4gRm9yIGV4YW1wbGUsIHRoaXMgd29uJ3Qgd29yawp3aXRoIHRoZSBjdXJyZW50IEFDVE1PTiBk
cml2ZXIgYmVjYXVzZSBpdCBidWlsZHMgT1BQIHRhYmxlIGJhc2VkIG9uIHRoZQpjbGstcmF0ZSBy
b3VuZGluZyBkdXJpbmcgdGhlIGRyaXZlcidzIHByb2JlLCBzbyBpdCB3b24ndCBiZSBhYmxlIHRv
IGRvCml0IHByb3Blcmx5IGlmIHByb3ZpZGVyIGlzICJ0ZW1wb3JhcmlseSIgbWlzc2luZy4KCi4u
LiBJIHRoaW5rIHRoYXQgaW4gYSBsb25nZXIgcnVuIHdlIHNob3VsZCBzdG9wIG1hbnVhbGx5IGJ1
aWxkaW5nIHRoZQpBQ1RNT04ncyBPUFAgdGFibGUgYW5kIGluc3RlYWQgZGVmaW5lIGEgcHJvcGVy
IE9QUCB0YWJsZSAocGVyLUhXIFNwZWVkbwpJRCwgd2l0aCB2b2x0YWdlcykgaW4gYSBkZXZpY2Ut
dHJlZS4gQnV0IHRoaXMgaXMganVzdCBhIHZhZ3VlIHBsYW5zIGZvcgp0aGUgZnV0dXJlIGZvciBu
b3cuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
