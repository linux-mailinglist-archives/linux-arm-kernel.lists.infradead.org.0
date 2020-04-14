Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC47B1A82CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3M3fnRottp+c78U133pI/8NOrFark8pLgY6BQAuXek=; b=FWICrojZLrCFKM
	u+F5oYc2guwav2+LNGhL2AciNrdEFPFkSM5guGBoDDydXRdJdksxuQU4fwN3t2KG2MBXntlhcWPYl
	U32WiGp8LN9k1AVfdLu6YWda2f9gjn8Fu1kg+1f5CDH/3wSyfCUGl3mNUWO7MEMlMxd34wPD4YYec
	pN4l2Bj8qGHvJTiXa8q/yevmMWpw0suJzH74Y9CvZezkTPje9AERxQm5sjl9CZVQnWmQaYCzSRxTA
	wCNIl+wheji7ERCRaiWlSgnSv8tvYU1+8YNSS5mG3FWkwu5Pz/b+AZntgadnSF4zKLIcQdIceT1sM
	GCCfuHcIXjMd5/xMyh6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONYj-0006Sh-1F; Tue, 14 Apr 2020 15:33:09 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONYb-0006S3-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:33:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id m19so39891lfq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4eIrItheLX7YX2ovx/taypeY8owEKNTnWW8Vad5FCew=;
 b=MI34FaFABelIhbrwZvWxpE3BeRjE+jLVkAPgR5417k1cCJsV73RHRHbvaa84RzMxgW
 xetz+hgEeMaQ9aO0rfNL/aOte1KsQtdBPkNlzr5dikvh/3Lig+gpmfNtfeB7GA9UJASU
 nbmkKqX2fP7DiasP27nvBvPpo6P2xGWSqXLGirBeR6WrvSn8jCF7ZJOUQZIBGwbgrnH5
 Rbq+AalrTIDbO3yyhvli1Qw7FejKlGpXk9qwvwwGpEQxfl4FlhhfSlTZ3bxUBPrCRmjP
 OLqjoR1LLJqjShTkwHmyuGdWL+JU7XSJUeVHv+3YpsEdC8ONzx4MexTEHcObjT1kph/Z
 pSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4eIrItheLX7YX2ovx/taypeY8owEKNTnWW8Vad5FCew=;
 b=aRtPu8gP+PSupG75erkMsFJnd6zVL0ksCTdoIrFjbOf8YPjDWN3ILAwBXcalHj21rn
 GCKa/OnQzfSkKcaRVp+UKpz4fI1AcdQK0KQnIL8i9jOV/rMJszUv0bNI49OLO2FLsa8P
 KofGEDyDtWcXYgmrUPEKL+G/bj2jgH3XYaRIxiZekEWAZsmvecrFGKvfNGHY+S0iS5Hs
 QenvVChr0qWHLpATvwXeIyun6IWd/fcvSfmvHAHdgyLVWRk6c4z+Kx9xshTGwCsaaaX1
 mGm4demTZKrTDR1R/jy4khuJ/BRlSN3klhjfLBbcz7GvETKPrLXOSlmIpNqxDNxlo+w/
 KxwA==
X-Gm-Message-State: AGi0PubBwtNGcT3xB+ikxuFFK/GhwPqF2wga20isYON07yx/fffwb/c9
 5ORzsXzWCxEVO1oonCm95ADckESi
X-Google-Smtp-Source: APiQypKpGY5BqwvpNTlCvMY9U59k/lj+SeiqM+aeyFKz8Q5woDyVq/h4Ljj2eIGognuBJLL5rYF67g==
X-Received: by 2002:a19:c216:: with SMTP id l22mr229478lfc.172.1586878378571; 
 Tue, 14 Apr 2020 08:32:58 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id l12sm7528500lfp.35.2020.04.14.08.32.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 08:32:57 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
 <6976796c-6972-328e-3e9f-60c1737cf0e2@gmail.com>
 <20200414150516.GL3593749@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <45b65baa-fd9b-3248-bc24-e226cfc8c8dc@gmail.com>
Date: Tue, 14 Apr 2020 18:32:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414150516.GL3593749@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083301_093033_9D80330C 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAxODowNSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4+IFdoYXQg
YWJvdXQgcmVwbGFjaW5nIHRob3NlIGJhcmVseSByZWFkYWJsZSBjb25jYXRlbmF0ZWQgbWFjcm9z
IHdpdGggYQo+PiByYXcgdmFsdWVzPwo+Pgo+PiBMaWtlOgo+Pgo+PiBUUklNX1JFRyhicmxzaGZ0
X2lkeCwgb2JfZGRsbF9sb25nX2RxX3JhbmtfbWFzaywgLi4uKQo+IAo+IFRoYXQncyBqdXN0IGdv
aW5nIHRvIG1vdmUgdGhlIGNvbXBsZXhpdHkgZnJvbSB0aGUgbWFjcm9zIHRvIHRoZQo+IGNhbGxz
aXRlcywgaXNuJ3QgaXQ/Cj4gCj4gSSBzdXBwb3NlIEkgY291bGQgc3BlbmQgYSBmZXcgY3ljbGVz
IHRyeWluZyB0byBtYWtlIHRoaXMgYSBsaXR0bGUgbW9yZQo+IHJlYWRhYmxlLCBidXQgdG8gYmUg
ZnJhbmssIHRoZSBjb21wbGV4aXR5IGluIHRoaXMgZHJpdmVyIGlzIGFscmVhZHkgc28KPiBoaWdo
IHRoYXQgdGhpcyBkb2Vzbid0IHJlYWxseSBtYWtlIG11Y2ggb2YgYSBkaWZmZXJlbmNlLCBpbiBt
eSBvcGluaW9uLgoKSSBjYW4ndCBndWFyYW50ZWUgdGhhdCB0aGUgZmluYWwgcmVzdWx0IHdpbGwg
YmUgZXhjZWxsZW50LCBidXQgSSdkIHRyeQp0byB0dXJuIHRoYXQgbWFjcm8gaW50byB0aGUgZnVu
Y3Rpb24gYW5kIHRoZW4gdXNlIHRoZSByYXcgSFcgdmFsdWVzCmluc3RlYWQgb2YgdGhlIGRlZmlu
ZXMuIEl0IGxvb2tzIHRvIG1lIHRoYXQgdGhlIHJlc3VsdCBhdCBsZWFzdCBzaG91bGQKYmUgYmV0
dGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
