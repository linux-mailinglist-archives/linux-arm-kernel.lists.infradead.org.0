Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30C61D124C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2dAJ60oU+m7KYzv3vqWytsKX4lXl/oqa1GRHUfkq6s=; b=cWU33BpIgkLgki
	Stw5wFj5q6lwZQKpqNd59N0ntdXTlh1Cqom/gYoLYwH6oXSeS6RO90/6nOQuvrbFlPdGkHRbmAoHw
	FuuHUdnw8M355wd8Zbvj2LdvptM2WepCdwZ0/3hbHI7n3sfFTDriBO7BFLJTxLnS/d+/dfuvtAsJc
	o53ywnrE+5T+T2V54mBuFWagQYAGP/br/VxYDrifcS0+eyb146GCcjCWY+5LeGMCcxtJ81c1pL54c
	WdmlqpPqHZA6otqgmqcjMj/HSC1PtACBGeQwUDEhpsx/tigHJLWNz0mAThaumOjNjSgYEWoWhW4m+
	4OagJconiOS4V1H4xU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqAA-00025U-Px; Wed, 13 May 2020 12:07:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYq9p-00021b-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:06:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so20582961wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 05:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fhDNmmvpzcm8F44Tpv9IkktsDhvARR3ewt8RuiOuBoA=;
 b=beeHv2OAHYMxvQRdS0dGGTcvJZSVDRI8XdA2wxJmK9wwv+MDp31Gd5wu3TselVR2/8
 rmN9sAkbrajGgJenRb/nwB9p7z80N7YObbaYKItKby8SGY9Mkm+qj29KUUXDcSQ3XKfE
 BV4YxjHVkMG16zNhHHyyVW9RlDbheebn2ZmyCURlG14mk061hXorpdzcgcA94kqYcY3D
 SauCek2rrKM9o3GZwejTQh+M1XCjElH9zvNrn1QUTv4gnzxhsbnPyE2QDzYmsEvi19iu
 dXpVlHutjrawC61GVZuOGn7OHsTb5zLcfOv9qZJaAV66f+tkx7vq1jYFJ+uZACFG0w8W
 ksKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fhDNmmvpzcm8F44Tpv9IkktsDhvARR3ewt8RuiOuBoA=;
 b=llb210BfJtzpzCu/GLUcUVUsCLQBgvOEytF7z8VQjlVA0XTuG8BWtkJ42PxM9Wk7MG
 XCZTCWqwB2korX2K2cHLrQcYxSdXj4sEwKqNB/qURTD17JlbaEomge8TE1ypYVNZC/JC
 jAxYBf0pPXxTOwFUqL3c4Z14xr71eS7gc7ttZeXp/oo5c3jEFlZIlWxmwApagWdEN3D3
 yxZ6PRgbI8v6chhfs5d7n3gm5qZQZ8v7dUCFmRR89dr/uqqXHjCqoqeU1QQAw417fdFq
 fj3ZgJqteZXou3nfLgK5h8F0PjrgaPxIr0nfqaSHd75NGU+qGCB/3eSVXeijRgjB8JAN
 ugjw==
X-Gm-Message-State: AGi0PuavKFqhGU0NH6up4o7WgmQVJGTOiItJva2azHEz9yyMJQ2a/j5C
 BdLSNC55a+2GKGIIW7eTi+HQRQek
X-Google-Smtp-Source: APiQypJ+JkfUFgeVGuy2lwVKtUdi+R+XLHBgJnoRbjyKUvjsmd6yl5GVgPkk19ITONcmJLFxERAcJA==
X-Received: by 2002:adf:fe89:: with SMTP id l9mr30432002wrr.400.1589371599386; 
 Wed, 13 May 2020 05:06:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id p8sm26809589wre.11.2020.05.13.05.06.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 05:06:38 -0700 (PDT)
Subject: Re: [PATCH 10/14] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-11-git-send-email-Dave.Martin@arm.com>
 <bd548916-11c8-a53f-67b5-876c79088258@gmail.com>
 <20200513114915.GL21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <604879eb-1c7e-d08b-a6b8-165e4259b60c@gmail.com>
Date: Wed, 13 May 2020 14:06:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513114915.GL21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_050641_345329_160B4AF1 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Tim Chen <tim.c.chen@linux.intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xMy8yMCAxOjQ5IFBNLCBEYXZlIE1hcnRpbiB3cm90ZToKPiBPbiBXZWQsIE1heSAxMywg
MjAyMCBhdCAwMToyMToxMlBNICswMjAwLCBNaWNoYWVsIEtlcnJpc2sgKG1hbi1wYWdlcykgd3Jv
dGU6Cj4+IEhlbGxvIERhdmUsCj4+Cj4+IE9uIDUvMTIvMjAgNjozNiBQTSwgRGF2ZSBNYXJ0aW4g
d3JvdGU6Cj4+PiBBZGQgdGhlIFBSX1NQRUNfSU5ESVJFQ1RfQlJBTkNIICJtaXNmZWF0dXJlIiBh
ZGRlZCBpbiBMaW51eCA0LjIwCj4+PiBmb3IgUFJfU0VUX1NQRUNVTEFUSU9OX0NUUkwgYW5kIFBS
X0dFVF9TUEVDVUxBVElPTl9DVFJMLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhdmUgTWFydGlu
IDxEYXZlLk1hcnRpbkBhcm0uY29tPgo+Pj4gQ2M6IFRpbSBDaGVuIDx0aW0uYy5jaGVuQGxpbnV4
LmludGVsLmNvbT4KPj4+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4K
Pj4KPj4gVGhhbmtzLiBQYXRjaCBhcHBsaWVkLCBidXQgbm90IHlldCBwdXNoZWQgd2hpbGUgSSB3
YWl0IHRvIHNlZSBpZiBhbnkKPj4gUmV2aWV3L0FjayBhcnJpdmVzLgo+Pgo+PiBBbHNvLCBjb3Vs
ZCB5b3UgcGxlYXNlIGNoZWNrIHRoZSB0d2Vha3MgSSBub3RlIGJlbG93Lgo+Pgo+Pj4gLS0tCj4+
PiAgbWFuMi9wcmN0bC4yIHwgMjQgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+PiAgMSBmaWxl
IGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL21hbjIvcHJjdGwuMiBiL21hbjIvcHJjdGwuMgo+Pj4gaW5kZXggZThlYWY5NS4uNjY0
MTdjZiAxMDA2NDQKPj4+IC0tLSBhL21hbjIvcHJjdGwuMgo+Pj4gKysrIGIvbWFuMi9wcmN0bC4y
Cj4+PiBAQCAtMTIxMywxMSArMTIxMywyMCBAQCBhcmd1bWVudHMgbXVzdCBiZSBzcGVjaWZpZWQg
YXMgMDsgb3RoZXJ3aXNlIHRoZSBjYWxsIGZhaWxzIHdpdGggdGhlIGVycm9yCj4+PiAgLlwiIGNv
bW1pdCAzNTZlNGJmZmYyYzU0ODllMDE2ZmRiOTI1YWRiZjEyYTFlMzk1MGVlCj4+PiAgU2V0cyB0
aGUgc3RhdGUgb2YgdGhlIHNwZWN1bGF0aW9uIG1pc2ZlYXR1cmUgc3BlY2lmaWVkIGluCj4+PiAg
LklSIGFyZzIgLgo+Pj4gLUN1cnJlbnRseSwgdGhlIG9ubHkgcGVybWl0dGVkIHZhbHVlIGZvciB0
aGlzIGFyZ3VtZW50IGlzCj4+PiArQ3VycmVudGx5LCB0aGlzIGFyZ3VtZW50IG11c3QgYmUgb25l
IG9mOgo+Pj4gKy5SUwo+Pj4gKy5UUAo+Pj4gIC5CIFBSX1NQRUNfU1RPUkVfQllQQVNTCj4+PiAt
KG90aGVyd2lzZSB0aGUgY2FsbCBmYWlscyB3aXRoIHRoZSBlcnJvcgo+Pj4gK3NwZWN1bGF0aXZl
IHN0b3JlIGJ5cGFzcyBjb250cm9sLCBvcgo+Pgo+PiBzL3NwZWN1bGF0aXZlL2VuYWJsZSBzcGVj
dWxhdGl2ZS8KPj4KPj4+ICsuXCIgY29tbWl0IDkxMzdiYjI3ZTYwZTU1NGRhYjY5NGVhZmE0Y2Nh
MjQxZmEzYTY5NGYKPj4+ICsuVFAKPj4+ICsuQlIgUFJfU1BFQ19JTkRJUkVDVF9CUkFOQ0ggIiAo
c2luY2UgTGludXggNC4yMCkiCj4+PiAraW5kaXJlY3QgYnJhbmNoIHNwZWN1bGF0aW9uIGNvbnRy
b2wuCj4+Cj4+IHMvaW5kaXJlY3QvZW5hYmxlIGluZGlyZWN0Lwo+IAo+IFRoYXQgZG9lc24ndCBz
ZWVtIHF1aXRlIHJpZ2h0LgoKTXkgZ29vZiwgbm90IGxvb2tpbmcgYXQgdGhlIGJpZ2dlciBjb250
ZXh0IG9mIHRoZSBwYXRjaC4KCj4gCj4gYXJnMiBqdXN0IGlkZW50aWZpZXMgd2hhdCBiZWhhdmlv
dXIgdG8gY29uZmlndXJlLgo+IEl0J3MgYXJnMyB0aGF0IHNheXMgd2hldGhlciB0byBkaXNhYmxl
IC8gZW5hYmxlIGl0IG9yIHdoYXRldmVyLgo+IAo+IAo+IFdoaWxlIGVkaXRpbmcgdGhpcyBJIGRp
ZCB3b25kZXIgd2hldGhlciB0aGUgImNvbnRyb2wiIHdhcyBoZWxwZnVsLgo+IE1heWJlIGp1c3Qg
ZHJvcHBpbmcgdGhhdCB3b3JkIGZyb20gdGhlc2UgZW50cmllcyB3b3VsZCBoZWxwLgoKT2theSBJ
IHRyaWVkIHRvIGZpeCB0aGluZ3MsIGFuZCBtYWRlIGFsc28gc29tZSBvdGhlciBlZGl0cy4KSG93
IGRvZXMgdGhlIGZvbGxvd2luZyBsb29rIHRvIHlvdT8KCiAgICAgIFBSX1NFVF9TUEVDVUxBVElP
Tl9DVFJMIChzaW5jZSBMaW51eCA0LjE3KQogICAgICAgICAgICAgIFNldHMgdGhlIHN0YXRlIG9m
IHRoZSBzcGVjdWxhdGlvbiBtaXNmZWF0dXJlICBzcGVjaWZpZWQgIGluCiAgICAgICAgICAgICAg
YXJnMi4gICBUaGUgIHNwZWN1bGF0aW9uLW1pc2ZlYXR1cmUgc2V0dGluZ3MgYXJlIHBlci10aHJl
YWQKICAgICAgICAgICAgICBhdHRyaWJ1dGVzLgoKICAgICAgICAgICAgICBDdXJyZW50bHksIGFy
ZzIgbXVzdCBiZSBvbmUgb2Y6CgogICAgICAgICAgICAgIFBSX1NQRUNfU1RPUkVfQllQQVNTCiAg
ICAgICAgICAgICAgICAgICAgIFNldCB0aGUgc3RhdGUgb2YgdGhlIHNwZWN1bGF0aXZlIHN0b3Jl
ICBieXBhc3MgIG1pc+KAkAogICAgICAgICAgICAgICAgICAgICBmZWF0dXJlLgoKICAgICAgICAg
ICAgICBQUl9TUEVDX0lORElSRUNUX0JSQU5DSCAoc2luY2UgTGludXggNC4yMCkKICAgICAgICAg
ICAgICAgICAgICAgU2V0ICB0aGUgIHN0YXRlICBvZiAgdGhlIGluZGlyZWN0IGJyYW5jaCBzcGVj
dWxhdGlvbgogICAgICAgICAgICAgICAgICAgICBtaXNmZWF0dXJlLgoKICAgICAgICAgICAgICBJ
ZiBhcmcyIGRvZXMgbm90IGhhdmUgb25lIG9mIHRoZSAgYWJvdmUgIHZhbHVlcywgIHRoZW4gIHRo
ZQogICAgICAgICAgICAgIGNhbGwgZmFpbHMgd2l0aCB0aGUgZXJyb3IgRU5PREVWLgoKICAgICAg
ICAgICAgICBUaGUgIGFyZzMgIGFyZ3VtZW50ICBpcyAgdXNlZCB0byBoYW5kIGluIHRoZSBjb250
cm9sIHZhbHVlLAogICAgICAgICAgICAgIHdoaWNoIGlzIG9uZSBvZiB0aGUgZm9sbG93aW5nOgoK
ICAgICAgICAgICAgICAuLi4KCkNoZWVycywKCk1pY2hhZWwKCgotLSAKTWljaGFlbCBLZXJyaXNr
CkxpbnV4IG1hbi1wYWdlcyBtYWludGFpbmVyOyBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21h
bi1wYWdlcy8KTGludXgvVU5JWCBTeXN0ZW0gUHJvZ3JhbW1pbmcgVHJhaW5pbmc6IGh0dHA6Ly9t
YW43Lm9yZy90cmFpbmluZy8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
