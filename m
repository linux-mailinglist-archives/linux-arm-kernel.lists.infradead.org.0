Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E84B5CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 11:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgL3LRTPr4qb6LJVjMEsznnlhtVu7nM28ceBLpIZu0A=; b=Nr0ED8GXJM2u2a
	Vt19Lv7pR/x4CR3U6CiNle6J6/jUnxzVgyik1xfgMHTrsV1XEvAVE1FaFFt1R0uztTD2zsGGP4HfE
	M7RdP3nlwHHIHbs7yCn3nSbSzfJHhK/i89yHMtXkoGeEvmaT2pwHcUkZVpBW85S5LXyq9F29gojT7
	SBa2gbDAl0XicBPUfVk5S9kA/d9uDHo7bY0MNmHXzm7qWcTeKJIC3OX6LGke3yhnmZyN4XG89LDJk
	sH5Dti0HoNQH5WI79QV5vUwW9V493mVddcV4e0zo8vyToc4Nwo1UziJmPhlvLL2te8TaGJgHbXPfz
	RNxAW/T1v5CNcBUPHJSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKgW3-0006UR-1e; Sun, 28 Apr 2019 09:54:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKgVv-0006Ti-LT
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 09:54:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id 4so9742632wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 02:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=18eNnxmuie4YUiAn2ktXEOwnJbLtCYELaDk1cHoo7YE=;
 b=TSrtIXhGjfKv/TjlKx/EIEbo44O3DkyUnlzZHIpZHYJif3uSezeAmR1mIUcIZY4WjE
 ftl9ZRYs3ViMuFvUPpdGV8jOgsxv/NvRClKhL8yDWPBh+GVnIbqLZ9FxwC9rp/lTNoD4
 uUI98M9Pd8tDrchv4rWRp9HiaHv2fn9od/dfnf+y87SwkKkqC4bny9jqxMdXBaZuIXSv
 CxN9okiF9t9KcSUwJ5hVINBe/NTY6TL1D+tbGv8Tr/Gy1zzC0obF1LNRXbdyNCYTL2ND
 afxjo5CtNW7GVgiNjUuOFJBjKyQyJSE+eIPDM5YKqKp8OWrRmRhXzUPEFfA758wY5LgS
 OAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=18eNnxmuie4YUiAn2ktXEOwnJbLtCYELaDk1cHoo7YE=;
 b=cCAGtP0TnKEXWrjhHR6QsOm4zo0vl7TJwFosaOxayu0iXyuCWD4lY1oThfzmMEbopz
 9xJIeDP91Mhajt2zQP4ec0IipofCZgkxOQDVrbg3LNa5ep5rxm1/2wqPl0CeyJjZcjUL
 sAw+AgGNY/cDZjM4AskFUjoadAri16JYJIwFUlxxpfIa7PxfGXvg/IyiN6r3Hj0W8ceK
 oV/dSbN8gfrJrQWc3ojPP0mlOKOmZi808t8aY3maHJGwXzoCusyASvEIV/nkSPPdCK4g
 V0NVEe116XNjGTncSx3nQXs1dhP+VEduLWeVYID9dQaXmDRdIi8SNH96xZ1eEvGj9KyZ
 cn6Q==
X-Gm-Message-State: APjAAAUdzvQoJr3pkkDQHbs/bp/rmiKVUHS3UdDY4xuMYlrRiqcKa9vN
 9NVQucXYKk6FtKVaKTMDJaqBQw==
X-Google-Smtp-Source: APXvYqw1dvLF3xdep/0p3slDjbc+0+I/l5cPcDK7PAJx6ANAKR48Aozw+LhJXCW3uvoeUzthKPTxfg==
X-Received: by 2002:a1c:c287:: with SMTP id s129mr14202725wmf.63.1556445265360; 
 Sun, 28 Apr 2019 02:54:25 -0700 (PDT)
Received: from [192.168.0.41] (86.204.129.77.rev.sfr.net. [77.129.204.86])
 by smtp.googlemail.com with ESMTPSA id e5sm1577864wrh.79.2019.04.28.02.54.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:54:24 -0700 (PDT)
Subject: Re: [PATCH v3 0/9] clocksource: improve Atmel TCB timer driver
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20190426214718.13470-1-alexandre.belloni@bootlin.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <09e0dadb-41fd-4fa8-c9ab-f7c071ec2128@linaro.org>
Date: Sun, 28 Apr 2019 11:54:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426214718.13470-1-alexandre.belloni@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_025427_705936_839C036A 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexander Dahl <ada@thorsis.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Romain Izard <romain.izard.pro@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFwcGxpZWQsIHRoYW5rcy4KCiAgLS0gRGFuaWVsCgoKT24gMjYvMDQvMjAxOSAyMzo0NywgQWxl
eGFuZHJlIEJlbGxvbmkgd3JvdGU6Cj4gSGksCj4gCj4gVGhpcyBzZXJpZXMgaW1tcHJvdmVzIHRo
ZSBBdG1lbCBUQ0IgY2xvY2tzb3VyY2UgZHJpdmVyIHRvIGFkZHJlc3MgdGhlCj4gbW9zdCB1cmdl
bnQgc2hvcnRjb21pbmdzOgo+ICAtIHRoZSBjdXJyZW50IHRjYl9jbGtzcmMgZHJpdmVyIGlzIHBy
b2JlZCB0b28gbGF0ZSB0byBiZSBhYmxlIHRvIGJlIHVzZWQgYXQKPiAgICBib290IGFuZCB3ZSBu
b3cgaGF2ZSBTb0NzIHRoYXQgZG9uJ3QgaGF2ZSBhIFBJVC4gVGhleSBjdXJyZW50bHkgYXJlIG5v
dCBhYmxlCj4gICAgdG8gYm9vdCBhbiB1cHN0cmVhbSBrZXJuZWwuCj4gIC0gdXNpbmcgdGhlIFBJ
VCBkb2Vzbid0IHdvcmsgd2VsbCB3aXRoIHByZWVtcHQtcnQgYmVjYXVzZSBpdHMgaW50ZXJydXB0
IGlzCj4gICAgc2hhcmVkIChpbiBwYXJ0aWN1bGFyIHdpdGggdGhlIFVBUlQpIGFuZCB0aGVpciBp
bnRlcnJ1cHQgZmxhZ3MgYXJlCj4gICAgaW5jb21wYXRpYmxlKS4gVGhpcyBhbHNvIGhhcHBlbiB3
aXRoIHRoZSB0aHJlYWRlZGlycSBjb21tYW5kIGxpbmUKPiAgICBzd2l0Y2guCj4gIC0gdGhlcmUg
aXMgY3VycmVudGx5IG5vIGhpZ2ggcmVzb2x1dGlvbiBzY2hlZF9jbG9jay4KPiAKPiBUaGUgcGxh
biBpcyB0byBnZXQgdGhvc2UgY2hhbmdlcyB1cHN0cmVhbSBhcyBzb29uIGFzIHBvc3NpYmxlIGFz
IHRoZXkgYXJlIGZpeGluZwo+IHJlYWwgaXNzdWVzIHRoYXQgcGVvcGxlIGFyZSBmYWNpbmcuIFRo
ZXJlIGFyZSBmdXJ0aGVyIGNoYW5nZXMgbmVlZGVkIG9uIHRoZQo+IGNsb2Nrc291cmNlIGRyaXZl
ciB0byB0cnkgdG8gc3RvcCB3YXN0aW5nIGEgVENCIGNoYW5uZWwuCj4gVGhlIFBXTSBUQ0IgZHJp
dmVyIHdpbGwgYWxzbyBiZSBjaGFuZ2VkIHRvIGFjdHVhbGx5IHVzZSB0aGUgcmV2aWV3ZWQgYmlu
ZGluZwo+IGFuZCB0aGlzIHdpbGwgYWxsb3cgdG8gZ2V0IHJpZCBvZiBhdG1lbF90Y2xpYi4KPiAK
PiBDaGFuZ2VzIGluIHYzOgo+ICAtIGNvbGxlY3RlZCBhY2sgZnJvbSBHS0gKPiAgLSByZXR1cm4g
LUVCVVNZIGluc3RlYWQgb2YgMCB3aGVuIHRoZSBUQ0IgaXMgYWxyZWFkeSB1c2VkCj4gCj4gQ2hh
bmdlcyBpbiB2MjoKPiAgLSBjb2xsZWN0ZWQgYWNrcyBmcm9tIFRoaWVycnkgYW5kIEFybmQKPiAg
LSBkcm9wcGVkIG1vc3Qgb2YgdGhlIGF0bWVsX3RjbGliIGNoYW5nZXMgdGhhdCBjb3VkIGJlIHNl
cGFyYXRlZC4KPiAgLSBhZGRlZCBhIHBhdGNoIGZyb20ga2J1aWxkCj4gIC0gZHJvcHBlZCB0aGUg
cGF0Y2ggcmVtb3ZpbmcgdGhlIFBJVCBmcm9tIHRoZSBkZWZjb25maWcKPiAgLSBtb3ZlZCB0aGUg
YXRtZWxfdGNiLmggaW5jbHVzaW9uIGluIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC10Y2IuYyBhcyBy
ZXF1ZXN0ZWQKPiAgICBieSBUaGllcnJ5Cj4gIC0gc3RvcHBlZCB1c2luZyBhdG1lbF90Y2JfY29u
ZmlnCj4gIC0gcmV3b3JrZWQgdGhlIGlycSBudW1iZXIgcGFyc2luZyB0byBvbmx5IGNhcmUgZm9y
IGNoYW5uZWwgMgo+IAo+IAo+IEFsZXhhbmRyZSBCZWxsb25pICg4KToKPiAgIEFSTTogYXQ5MTog
bW92ZSBTb0Mgc3BlY2lmaWMgZGVmaW5pdGlvbnMgdG8gU29DIGZvbGRlcgo+ICAgY2xvY2tzb3Vy
Y2UvZHJpdmVycy90Y2JfY2xrc3JjOiBzdG9wIGRlcGVuZGluZyBvbiBhdG1lbF90Y2xpYgo+ICAg
Y2xvY2tzb3VyY2UvZHJpdmVycy90Y2JfY2xrc3JjOiBVc2UgdGNiIGFzIHNjaGVkX2Nsb2NrCj4g
ICBBUk06IGF0OTE6IEltcGxlbWVudCBjbG9ja3NvdXJjZSBzZWxlY3Rpb24KPiAgIGNsb2Nrc291
cmNlL2RyaXZlcnMvdGNiX2Nsa3NyYzogbW92ZSBLY29uZmlnIG9wdGlvbgo+ICAgY2xvY2tzb3Vy
Y2UvZHJpdmVycy90aW1lci1hdG1lbC1waXQ6IHJld29yayBLY29uZmlnIG9wdGlvbgo+ICAgY2xv
Y2tzb3VyY2UvZHJpdmVycy90Y2JfY2xrc3JjOiBSZW5hbWUgdGhlIGZpbGUgZm9yIGNvbnNpc3Rl
bmN5Cj4gICBtaXNjOiBhdG1lbF90Y2xpYjogZG8gbm90IHByb2JlIGFscmVhZHkgdXNlZCBUQ0Jz
Cj4gCj4ga2J1aWxkIHRlc3Qgcm9ib3QgKDEpOgo+ICAgY2xvY2tzb3VyY2UvZHJpdmVycy90aW1l
ci1hdG1lbC10Y2I6IHRjX2Nsa3NyY19zdXNwZW5kKCkgY2FuIGJlIHN0YXRpYwo+IAo+ICBhcmNo
L2FybS9tYWNoLWF0OTEvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgfCAgMjMgKysrKwo+ICBk
cml2ZXJzL2Nsb2Nrc291cmNlL0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgMTIgKy0KPiAg
ZHJpdmVycy9jbG9ja3NvdXJjZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAyICstCj4g
IC4uLi97dGNiX2Nsa3NyYy5jID0+IHRpbWVyLWF0bWVsLXRjYi5jfSAgICAgICB8IDEzMCArKysr
KysrKysrKystLS0tLS0KPiAgZHJpdmVycy9taXNjL0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDI0IC0tLS0KPiAgZHJpdmVycy9taXNjL2F0bWVsX3RjbGliLmMgICAgICAgICAg
ICAgICAgICAgIHwgICA1ICstCj4gIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC10Y2IuYyAgICAgICAg
ICAgICAgICAgICB8ICAgMiArLQo+ICAuLi4vYXRtZWxfdGMuaCA9PiBzb2MvYXQ5MS9hdG1lbF90
Y2IuaH0gICAgICAgfCAgIDQgKy0KPiAgOCBmaWxlcyBjaGFuZ2VkLCAxMjkgaW5zZXJ0aW9ucygr
KSwgNzMgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBkcml2ZXJzL2Nsb2Nrc291cmNlL3t0Y2JfY2xr
c3JjLmMgPT4gdGltZXItYXRtZWwtdGNiLmN9ICg3OSUpCj4gIHJlbmFtZSBpbmNsdWRlL3tsaW51
eC9hdG1lbF90Yy5oID0+IHNvYy9hdDkxL2F0bWVsX3RjYi5ofSAoOTklKQo+IAoKCi0tIAogPGh0
dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9w
YWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+
IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
