Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80EA1802E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQIO0kPt9bAZi4wKdJsjk1JtihHEJDtrez/xmMOdxJY=; b=o+VG0SV/WX8Ujn
	Do/OykVJ8IS5HMw+llNvWEvIeaa9hDEFsIaEhKS3+w7pU1PhMp9YJ81EYGu9gnJTTcGDRmMkmdO8v
	FgTAHUFJYh6xjkYMwgPdHa/Vi4c+BYBYmHIeL1de4t+O50hrUC0QuT75q2Kexy/N7UmugeiHoalLE
	YSgIGNzuQKimhIFhSubxIJjHNYUFshdLzvJQJoUa3I9GJiLJ9OejB98WJTwQ8/q7uBs0cLBivs8xU
	LVwWjRMVf/YK963ORvTls3KH0tDGk2KKxYvNTqEtYq0d+IcUiZwB/sO7DqIrlbDSlO4GTm+LjmUwK
	5tnPITmCZxw6JNNChMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhVf-00010z-JA; Tue, 10 Mar 2020 16:13:35 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhVZ-00010N-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:13:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so6838606lfe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W+60mEKOc6FZpec77KfiUx6G8m6jCqzHZbWxKsI68hg=;
 b=Ec9Xy47+PEgWoZAna5oFPlDRIuAjLD0n5J1sYYhhvbZCyOwpVFQMQ9XujlWExJs3gU
 7IwvIHCypTprj5W4tTESsxFSFbeqz9RBaIeJwEfQbxWzwX/oiySVJuiNe+tc8b4AIcDS
 s+CIz9PNBIesDikyaqiiLYix5W0mypifUSly7oN/hs4eUs/WIJr14ghZJeIktIi0SjPf
 24LH4DcyqCAxbnqVBGc29gB8XISHLBBgplOexNl1aDjLREoxHdyby2EQW3Qt6UR2SY9u
 lv41viFMWNFfAm/YvDown//2YQqJzY5zIMJP+fQ1K1uH2r9jChayZRg0WrkxzuMD+dFO
 L1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W+60mEKOc6FZpec77KfiUx6G8m6jCqzHZbWxKsI68hg=;
 b=MpuKzwywWwXsbSYSjUIYqys4+EgibkjcuUngoeuflDdnrGauAEIYw1YiVdDEFOYGDU
 GqdNUAsu706EYW68I032iO8FD2IDABt0Pw1jHxS1r/S377U5XAY1pSVqGiOsmnOFUWk/
 Pl3E7iBaT2vWq4yVXGQP9gxth/q2ze0B4iwTACV+wmk2kN7VD7B98sCht3MzEsz+4XDi
 yqXxmF2HFz3G8QGS/LlH+P+3y6piuA02rc4PLjCfxVqpNWvJqI3HhEOrCNx/w+v1y+Kn
 eRNsU/fKpTfV0YO1niYQbLVVEsE4DLMrg7bJL9Pf1wgAHGa3eAhOVHte/BCeKi2w4O2H
 6s7A==
X-Gm-Message-State: ANhLgQ2pS4dX7UZlSBAyfRYPFoXEdOSE8RdMs513puDRTFUsP1YYgHpl
 PZiKaOu/0TL/ThJrHhsFJUD7nRIf
X-Google-Smtp-Source: ADFU+vtaKKamjRMw8i2j8oskqRtAMyNXrKMEbwftPQGJTJ3Tr/icqA8fhaQeQsImoRUm3raAqgliwg==
X-Received: by 2002:a19:4c08:: with SMTP id z8mr7699955lfa.95.1583856806690;
 Tue, 10 Mar 2020 09:13:26 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id t27sm11160833ljk.78.2020.03.10.09.13.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:13:26 -0700 (PDT)
Subject: Re: [PATCH v5 2/8] clk: tegra: Export functions for EMC clock scaling
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-3-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
Date: Tue, 10 Mar 2020 19:13:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-3-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_091329_160805_48E6E186 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBFeHBvcnQgZnVuY3Rpb25zIHRvIGFsbG93
IGFjY2Vzc2luZyB0aGUgQ0FSIHJlZ2lzdGVyIHJlcXVpcmVkIGJ5IEVNQwo+IGNsb2NrIHNjYWxp
bmcuIFRoZXNlIGZ1bmN0aW9ucyB3aWxsIGJlIHVzZWQgdG8gYWNjZXNzIHRoZSBDQVIgcmVnaXN0
ZXIKPiBhcyBwYXJ0IG9mIHRoZSBzY2FsaW5nIHNlcXVlbmNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkg
UmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2NToKPiAtIHJl
bW92ZSB0ZWdyYTIxMF9jbGtfZW1jX3VwZGF0ZV9zZXR0aW5nKCkgd2hpY2ggaXMgbm8gbG9uZ2Vy
IG5lZWRlZAo+IAouLi4KPiArRVhQT1JUX1NZTUJPTF9HUEwodGVncmEyMTBfY2xrX2VtY191cGRh
dGVfc2V0dGluZyk7Ci4uLgo+ICtleHRlcm4gdm9pZCB0ZWdyYTIxMF9jbGtfZW1jX2RsbF9lbmFi
bGUoYm9vbCBmbGFnKTsKPiArZXh0ZXJuIHZvaWQgdGVncmEyMTBfY2xrX2VtY19kbGxfdXBkYXRl
X3NldHRpbmcodTMyIGVtY19kbGxfc3JjX3ZhbHVlKTsKPiArZXh0ZXJuIHZvaWQgdGVncmEyMTBf
Y2xrX2VtY191cGRhdGVfc2V0dGluZyh1MzIgZW1jX3NyY192YWx1ZSk7CgpXaHkgdGhlc2UgZXhw
b3J0cyBhcmUgbmVlZGVkIGdpdmVuIHRoYXQgdGhlIEVNQyBkcml2ZXIgaXMgYnVpbHQtaW4/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
