Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEC71394BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bqe+6+s74DRBcH8bBFhAVa3Cw1TRMV9Zl5h9j36BaM=; b=g/96c3lje1UkjI
	Vg2vlQ8PqNjzqkxlknORz65FPntCi2EMf9ENjfEdVFUNI4zlp++FurmQXUV5tpraicfmjtXndpJCv
	f79SaPAhNPVclWIm5N1igi/+hCHO5RAChNrQQxYM0jvSRXao4q6+fCylt3iURjabgEOX97nnCTIuQ
	YPQCOeUanMi3qVTq56TPvLwxpNWldmXPLlaxr+VrqoNe6DA5op9vfl4Be2H61uE/6pPgwwP/2/IBq
	AmI+zAWD3OEVh1LeO9FTnUaGw+TlsHRJIllqTQzCgGr+motbbRiwhOguEVkFZdycSjyEgnfWXhngm
	cEufZgLr7uGEmTTqrWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Ym-0000mr-KL; Mon, 13 Jan 2020 15:23:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Yd-0000m5-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:23:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so3953308plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 07:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=P5Fr7LX8SyGjfIYpXVgAHCXpeiamvTYOg9P0ZgSQ/fA=;
 b=wkPnfeVgMtuBv2icEDFQ9boOu3Dyeg4c36Gok3ASUmMFIlaqOiUsxaKd+nbDDgdHgB
 rJbJhRj0zhfQ/kLnXvQAaysOxwd7l2cKa9v+KIrDskDBMdTMLg2naGKhCwfhjTEjsRMW
 xnb2dQ8S1jiM/bEEsiw1tBZ1/KbmafhDH3/GAdJlUWDUq111+5/eG6b/WKyQPUGaiSYC
 1gSanHXp+/Qi+SKhY4kRYyUlRoCUYiBqLls4c0pWlXO5dnKMR4wPu8d+9Bd480R7yfDS
 bc1V2De00kB9a9qw7liS48SdBOXgoorg5q2tu0WyGdsO1dpBY4T1wVEGr3Rt3ze1dce3
 uhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=P5Fr7LX8SyGjfIYpXVgAHCXpeiamvTYOg9P0ZgSQ/fA=;
 b=YEuUoP2gRZh7NukLK9F6Qw574nHE/e2dMWknmSapcmTJ1/rEfjECnJZOAXTd6WNcPV
 57If9c9wEzeaxzQdsPEo4YLuJSHXh7shhrg96VrBxAM98OMjdM4ggJvv/Wg8EfxGDfFI
 nkLqE6+a4XnHS66VNLfEpaJkfo9TZkDPLbdATnrHF3iEEVPySsYHhj+GdGmk2ILQ5z1b
 G4J7Jvr0CBfSVC8YAAyK0AwRH6ZT5MQxiVhyIe28J/OVkpGjB98NEFJbyvZswWpE62ye
 IRO3JTNzmVG5cXfO9w6xoYKUoXWyeCwjzdUUx0pb+mWnt6vhZxxG6NtuM3mEOm4QA2cn
 PcGw==
X-Gm-Message-State: APjAAAXRg2s9SAvo9+x+7Nq13XR1tColDCPHYRbPjsuN5ckhyePT/A9Y
 qO7bQDQqZILhSHhdVHT/nEeCVQ==
X-Google-Smtp-Source: APXvYqyoZxD3ZhwhXAePP17c+P28G/HRivKern1yZbJF0kFmt9zZKnhCqnFNhZU2yiwviUn4RKBr+Q==
X-Received: by 2002:a17:90a:b311:: with SMTP id
 d17mr23213686pjr.17.1578928991071; 
 Mon, 13 Jan 2020 07:23:11 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id a1sm14299950pfo.68.2020.01.13.07.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 07:23:10 -0800 (PST)
Date: Mon, 13 Jan 2020 23:22:59 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200113152259.GD10620@leoy-ThinkPad-X240s>
References: <20200108142010.11269-1-leo.yan@linaro.org>
 <20200110150422.GH82989@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110150422.GH82989@krava>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_072311_659748_EA0D3A2C 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTAsIDIwMjAgYXQgMDQ6MDQ6MjJQTSArMDEwMCwgSmlyaSBPbHNhIHdyb3Rl
Ogo+IE9uIFdlZCwgSmFuIDA4LCAyMDIwIGF0IDEwOjIwOjA5UE0gKzA4MDAsIExlbyBZYW4gd3Jv
dGU6Cj4gPiBUaGUgc3RydWN0IHBlcmZfZXZzZWxfY29uZmlnX3Rlcm06OnZhbCBpcyBhIHVuaW9u
IHdoaWNoIGNvbnRhaW5zCj4gPiBtdWx0aXBsZSB2YXJpYWJsZXMgZm9yIGNvcnJlc3BvbmRpbmcg
dHlwZXMuICBUaGlzIGxlYWRzIHRoZSB1bmlvbiB0bwo+ID4gYmUgY29tcGxleCBhbmQgYWxzbyBj
YXVzZXMgY29tcGxleCBjb2RlIGxvZ2ljLgo+ID4gCj4gPiBUaGlzIHBhdGNoIHJlZmFjdG9ycyB0
aGUgc3RydWN0dXJlIHRvIHVzZSB0d28gZ2VuZXJhbCB2YXJpYWJsZXMgaW4gdGhlCj4gPiAndmFs
JyB1bmlvbjogb25lIGlzICdudW0nIGZvciB1bnNpZ25lZCA2NC1iaXQgaW50ZWdlciBhbmQgYW5v
dGhlciBpcwo+ID4gJ3N0cicgZm9yIHN0cmluZyB2YXJpYWJsZS4gIFRoaXMgY2FuIHNpbXBsaWZ5
IHRoZSBkYXRhIHN0cnVjdHVyZSBhbmQKPiA+IHRoZSByZWxhdGVkIGNvZGUsIHRoaXMgYWxzbyBj
YW4gYmVuZWZpdCBmb3IgcG9zc2libHkgZXh0ZW5zaW9uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBMZW8gWWFuIDxsZW8ueWFuQGxpbmFyby5vcmc+Cj4gCj4gdGhlcmUncyBzb21lIGFyY2ggY29k
ZSB0aGF0IG5lZWRzIHRvIGJlIGNoYW5nZWQuLiBwbGVhc2UKPiBjaGFuZ2Ugb3RoZXIgYXJjaHMg
YXMgd2VsbAo+IAo+IAo+ICAgQ0MgICAgICAgYXJjaC94ODYvdXRpbC9pbnRlbC1wdC5vCj4gYXJj
aC94ODYvdXRpbC9pbnRlbC1wdC5jOiBJbiBmdW5jdGlvbiDigJhpbnRlbF9wdF9jb25maWdfc2Ft
cGxlX21vZGXigJk6Cj4gYXJjaC94ODYvdXRpbC9pbnRlbC1wdC5jOjU2MzoyNDogZXJyb3I6IOKA
mHVuaW9uIDxhbm9ueW1vdXM+4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYY2ZnX2NoZ+KAmQo+
ICAgNTYzIHwgICB1c2VyX2JpdHMgPSB0ZXJtLT52YWwuY2ZnX2NoZzsKClRoaXMgY29tcGlsaW5n
IGVycm9yIHdpbGwgYmUgZGlzbWlzc2VkIGluIHBhdGNoIHY1LCBzaW5jZSB2YWwuY2ZnX2NoZwpp
cyBrZXB0IGluIHRoZSBzdHJ1Y3R1cmUuCgpUaGFua3MsCkxlbwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
