Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1506116A368
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hC7463ZEmi5XABBv5JmCMibrhl46RDKuX6h/DvAyhRA=; b=a5sTghyCelNHLL
	qnqDGdkOWvRtadMnipr24xrZ0i5ykZxCrAtkep72KNOWR4cC1yqPG86S9wq3+wOvotXnmVLGb9QkY
	KSGNr08uTu/zWa80Myrqfisgwnx7/4jWtrLEAa1BYCHLzd7l9Lwe3g3oVXc5Wc7u6PMCRyq0KTH8A
	ks+KV+bjmoBo4iSrAXSIrNemruV30DJOGsGFNNkpDvfOeTifcsEn0GUr3frVq8IiozUZxsTncohyr
	LV5WVq6LXQ/ykh3CBwGnzdwlZg+EGw56wja8iCL1YwcAsOaLRRo52bVxDRT+t0lzg6hBuS/74A+N8
	2r9BKU/rsTteJaYbC+ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AXe-0007HN-8h; Mon, 24 Feb 2020 10:00:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AX4-0005yz-K8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:00:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so9610273wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 02:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5kMWKYrh992GZWTACf9amzemAuduDOlF955KN5EwvQw=;
 b=wOJl5CgbQy6U3aWnwofJi51rIVWN4K+Ld9+tffFieiVlVfi2/dHqXF40Cq3T1kb4Hd
 JUNcqOCZ8LswILeUgNcr8bP9l5VvdXg6prdZboDZ0FklYR/nEO/5G5+SLS2xyvII0M8O
 MyPUv37S1xPx4szsummDjBD7YuBDtftwpdc1a/douez9IdwrT/1qWH81PPr5mWk5S5ZX
 Dr6JVrft/D6igiJSAztEKvVYmr3wkssu/UxOPrnYXEYS1jrqH3t1kEYNrzRLZy50NY+k
 2LTdsT4gZ8wC7Xunm8aJACAx3yBq5deU3CkCN7mubwdZRtAB9YKvzKBmufAgRjdi8ydd
 L/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5kMWKYrh992GZWTACf9amzemAuduDOlF955KN5EwvQw=;
 b=brZD6mm6Jl38Qin/rM+ubeHugdwVHy+5h71eQi1LM9l6jvMoeTgzIUpDHf3R57EHGQ
 414qs+RXUo9LOfvD/8YGeVIQ7v72PN6cRaJyC0Jd6hjNXApih1/20UeohR9zynAXRo9q
 QLRzp4sR2ne7KmyJU1/VRdymrPubu4kITd6Hgz6U3XrVjEcHu0f2fu4JKVp/hWvjNcAu
 bjFl1fMPXfhQWECl3fj4o+B/ugDEovSvcnsf3hfUwhYigujYUPs0KbzCIYnnL/NQv2kT
 m9+osATgQmfdlELQWUFsI4aaU0FlNitD1hvuLlzVjTjK5i5kXbOxbixQ9E1BdkMpSGIg
 +XgQ==
X-Gm-Message-State: APjAAAWifjFgtckfE6ldhYlXGVy6wtqpTm+nz5RNv9FJGVxrxxhsEKNH
 qsMwYSP+t5DE2RyCPsbSEM6fXS64GEY=
X-Google-Smtp-Source: APXvYqw+eVT/ekOFVzqh6k7LzKVEDiUtf7y1cMrybh2fcleVG3PtFkiVzf5QhVfc93XqXI91aPlTag==
X-Received: by 2002:a5d:45ca:: with SMTP id b10mr9472914wrs.250.1582538406847; 
 Mon, 24 Feb 2020 02:00:06 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id v1sm11105968wrp.16.2020.02.24.02.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 02:00:06 -0800 (PST)
Date: Mon, 24 Feb 2020 10:00:37 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
Message-ID: <20200224100037.GK3494@dell>
References: <20200127231208.1443-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127231208.1443-1-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_020010_869219_9C36671B 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyNyBKYW4gMjAyMCwgU3VtYW4gQW5uYSB3cm90ZToKCj4gVGhlIERUIG5vZGUgZnVs
bCBuYW1lIGlzIGN1cnJlbnRseSBiZWluZyB1c2VkIGluIHJlZ21hcF9jb25maWcKPiB3aGljaCBp
biB0dXJuIGlzIHVzZWQgdG8gY3JlYXRlIHRoZSByZWdtYXAgZGVidWdmcyBkaXJlY3Rvcmllcy4K
PiBUaGlzIG5hbWUgaG93ZXZlciBpcyBub3QgZ3VhcmFudGVlZCB0byBiZSB1bmlxdWUgYW5kIHRo
ZSByZWdtYXAKPiBkZWJ1Z2ZzIHJlZ2lzdHJhdGlvbiBjYW4gZmFpbCBpbiB0aGUgY2FzZXMgd2hl
cmUgdGhlIHN5c2NvbiBub2Rlcwo+IGhhdmUgdGhlIHNhbWUgdW5pdC1hZGRyZXNzIGJ1dCBhcmUg
cHJlc2VudCBpbiBkaWZmZXJlbnQgRFQgbm9kZQo+IGhpZXJhcmNoaWVzLiBSZXBsYWNlIHRoaXMg
bG9naWMgdXNpbmcgdGhlIHN5c2NvbiByZWcgcmVzb3VyY2UKPiBhZGRyZXNzIGluc3RlYWQgKGlu
c3BpcmVkIGZyb20gbG9naWMgdXNlZCB3aGlsZSBjcmVhdGluZyBwbGF0Zm9ybQo+IGRldmljZXMp
IHRvIGVuc3VyZSBhIHVuaXF1ZSBuYW1lIGlzIGdpdmVuIGZvciBlYWNoIHN5c2Nvbi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBTdW1hbiBBbm5hIDxzLWFubmFAdGkuY29tPgo+IC0tLQo+IHYyOiBGaXgg
YnVpbGQgd2FybmluZyByZXBvcnRlZCBieSBrYnVpbGQgdGVzdCBib3QKPiB2MTogaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTM0NjM2My8KPiAKPiAgZHJpdmVycy9tZmQvc3lz
Y29uLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKV2FpdGluZyBmb3IgQXJuZCB0byByZXZpZXcuCgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBU
d2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
