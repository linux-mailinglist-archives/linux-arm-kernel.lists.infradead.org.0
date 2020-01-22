Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EDF145DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 22:27:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO38wUoOvWAKG9zEplWmlf5/yV8HVyItjljuX3oC/os=; b=Hrrt+cyIFHEM6R
	UD/k2CFSiDclVhPaU94hWKYF8CSORZCGh2XyPKhTgQba+jovcOGrTYEzovHMClSj9QuFW+ZUOIBum
	5Tx0BEFnvnqzGugxWG+GTiePUIo07aPPb+C6SZRx3ptwtCdVMNa8aLXeHUNHaB59AMx861qkrmWdy
	iV27h9LjCbGwGfgXXdTp7NXGaOAoFgPHivCSf8/iBQXcqip9nor7TeavpxfA9/WE0LMJxVL0MoJKp
	cMqB+zBbOsyC03Khc6mVB4NQ2PWiEOq+Ekg7RsFs8L2miKVRgF2EjXnLEvtuUZ9ycoz8IDgIsE0xf
	PxqBvao4pgr19kuOUHjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuNWl-0002xZ-BW; Wed, 22 Jan 2020 21:27:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuNWb-0002wr-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 21:26:59 +0000
Received: by mail-ed1-x541.google.com with SMTP id j17so1140417edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 13:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7NWYL+Ed0eej5tqq6Nr2hELijUhmsFmkPkaeZ7to9rY=;
 b=ZcMY/2xPscgj0Susje/mJzF5D0Gk3JKC7tzFkovTQUpyi9hozbNt68PVcyfCms6aha
 8BbwvtszrRnGFjpxh0iZCVUAc4pJWFgPjkvM1a7IyUOHYNM6V/S0exKjYNuxaJLn6P3p
 H8yl40ZRn9ogmrez9sx7sxwXD8Y3AJCJNki2+n/UkMQ6SR5MmHZV4JofwOO1uJEvO84w
 jYoXnn6Su2Jctsvkk5qg0nwcNNzejAUURWBqxKj46Asy3TaeIHeNb4nk3ggF6+zGuCcA
 8Buch9fBPzj0GBa8QiFTZuydlNo4O1OOc3Z8MwP6SN+HHg4yx+1c8UkKVSV2uAGPpcRL
 Vp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7NWYL+Ed0eej5tqq6Nr2hELijUhmsFmkPkaeZ7to9rY=;
 b=cWHxHWw9uwf/TlU499fbGZ3QpeDylOxmCQxVjBCxk1gkgt6HIPlMN3R6QDd5FfFp3z
 fLhH/6BHD1fxPJGpuwZI4cuLabtdr5gKnNauD4v7EEAzZqRNKHJqCPWUo/gC7h3ja0S4
 JEHFLyDb4wrrZI1za9+6ZMsjbH+PCCr3J6+V5DezoBc12n3zn2ub+Lqdy34lmfa2M8TL
 i5PyGeHulBnUQYOyS+g+LiI6kQHV6Ig6ScKL8dJiwAjJ2ldVFhMBJob30Im1lzYgOprD
 GlDhMSwveiPyMA1vYUoP5COZhf1YThcIWGcp3HYaJLdV0wvlWAUDZi9IhVGF/bYEdf8j
 hktA==
X-Gm-Message-State: APjAAAWwROyj4WE7NBT5Apir9Yrw8MNAM225XSUSlQIYrNVibwJ19gfH
 +gQ0PgBknW+6cT90Ajlie0xwst4+
X-Google-Smtp-Source: APXvYqwjcnyhwnZdaof3q66y/urTMhmhXFM2U3gHW0JoXfUbTroA2rYs1AsjPg1iTijvKOTYRrc0Qg==
X-Received: by 2002:a50:f382:: with SMTP id g2mr4539545edm.260.1579728411621; 
 Wed, 22 Jan 2020 13:26:51 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id h16sm345ejc.89.2020.01.22.13.26.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Jan 2020 13:26:50 -0800 (PST)
Subject: Re: [tip: core/kprobes] arm/ftrace: Use __patch_text()
To: linux-kernel@vger.kernel.org,
 tip-bot2 for Peter Zijlstra <tip-bot2@linutronix.de>,
 linux-tip-commits@vger.kernel.org, Will Deacon <will@kernel.org>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jon Hunter <jonathanh@nvidia.com>
References: <20191113092636.GG4131@hirez.programming.kicks-ass.net>
 <157544841563.21853.2859696202562513480.tip-bot2@tip-bot2>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <10cbfd9e-2f1f-0a0c-0160-afe6c2ccbebd@gmail.com>
Date: Thu, 23 Jan 2020 00:26:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <157544841563.21853.2859696202562513480.tip-bot2@tip-bot2>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_132657_966642_2B65590D 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Denys Vlasenko <dvlasenk@redhat.com>,
 ard.biesheuvel@linaro.org, Brian Gerst <brgerst@gmail.com>,
 x86 <x86@kernel.org>, rabin@rab.in, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 james.morse@arm.com, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDQuMTIuMjAxOSAxMTozMywgdGlwLWJvdDIgZm9yIFBldGVyIFppamxzdHJhINC/0LjRiNC10YI6
Cj4gVGhlIGZvbGxvd2luZyBjb21taXQgaGFzIGJlZW4gbWVyZ2VkIGludG8gdGhlIGNvcmUva3By
b2JlcyBicmFuY2ggb2YgdGlwOgo+IAo+IENvbW1pdC1JRDogICAgIDVhNzM1NTgzYjc2NDc1MDcy
NjYyMWIwMzk2ZDAzZTQ3ODI5MTFiNzcKPiBHaXR3ZWI6ICAgICAgICBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3RpcC81YTczNTU4M2I3NjQ3NTA3MjY2MjFiMDM5NmQwM2U0NzgyOTExYjc3Cj4gQXV0
aG9yOiAgICAgICAgUGV0ZXIgWmlqbHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPgo+IEF1dGhv
ckRhdGU6ICAgIFR1ZSwgMTUgT2N0IDIwMTkgMjE6MDc6MzUgKzAyOjAwCj4gQ29tbWl0dGVyOiAg
ICAgSW5nbyBNb2xuYXIgPG1pbmdvQGtlcm5lbC5vcmc+Cj4gQ29tbWl0dGVyRGF0ZTogV2VkLCAy
NyBOb3YgMjAxOSAwNzo0NDoyNSArMDE6MDAKPiAKPiBhcm0vZnRyYWNlOiBVc2UgX19wYXRjaF90
ZXh0KCkKPiAKPiBJbnN0ZWFkIG9mIGZsaXBwaW5nIHRleHQgcHJvdGVjdGlvbiwgdXNlIHRoZSBw
YXRjaF90ZXh0IGluZnJhc3RydWN0dXJlCj4gdGhhdCB1c2VzIGEgZml4bWFwIGFsaWFzIHdoZXJl
IHJlcXVpcmVkLgo+IAo+IFRoaXMgcmVtb3ZlcyB0aGUgbGFzdCB1c2VyIG9mIHNldF9hbGxfbW9k
dWxlc190ZXh0XyooKS4KPiAKPiBUZXN0ZWQtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgWmlqbHN0cmEgKEludGVsKSA8cGV0ZXJ6QGluZnJh
ZGVhZC5vcmc+Cj4gQ2M6IEFuZHkgTHV0b21pcnNraSA8bHV0b0BrZXJuZWwub3JnPgo+IENjOiBC
b3Jpc2xhdiBQZXRrb3YgPGJwQGFsaWVuOC5kZT4KPiBDYzogQnJpYW4gR2Vyc3QgPGJyZ2Vyc3RA
Z21haWwuY29tPgo+IENjOiBEZW55cyBWbGFzZW5rbyA8ZHZsYXNlbmtAcmVkaGF0LmNvbT4KPiBD
YzogSC4gUGV0ZXIgQW52aW4gPGhwYUB6eXRvci5jb20+Cj4gQ2M6IExpbnVzIFRvcnZhbGRzIDx0
b3J2YWxkc0BsaW51eC1mb3VuZGF0aW9uLm9yZz4KPiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1
dGxhbmRAYXJtLmNvbT4KPiBDYzogUGV0ZXIgWmlqbHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3Jn
Pgo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiBDYzogYXJkLmJp
ZXNoZXV2ZWxAbGluYXJvLm9yZwo+IENjOiBqYW1lcy5tb3JzZUBhcm0uY29tCj4gQ2M6IHJhYmlu
QHJhYi5pbgo+IExpbms6IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTExMTMwOTI2MzYu
R0c0MTMxQGhpcmV6LnByb2dyYW1taW5nLmtpY2tzLWFzcy5uZXQKPiBTaWduZWQtb2ZmLWJ5OiBJ
bmdvIE1vbG5hciA8bWluZ29Aa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0va2VybmVsL01h
a2VmaWxlIHwgIDQgKystLQo+ICBhcmNoL2FybS9rZXJuZWwvZnRyYWNlLmMgfCAxMCArKy0tLS0t
LS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL01ha2VmaWxlIGIvYXJjaC9hcm0va2Vy
bmVsL01ha2VmaWxlCj4gaW5kZXggOGNhZDU5NC4uYTg4NTE3MiAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9rZXJuZWwvTWFrZWZpbGUKPiArKysgYi9hcmNoL2FybS9rZXJuZWwvTWFrZWZpbGUKPiBA
QCAtNDksOCArNDksOCBAQCBvYmotJChDT05GSUdfSEFWRV9BUk1fU0NVKQkrPSBzbXBfc2N1Lm8K
PiAgb2JqLSQoQ09ORklHX0hBVkVfQVJNX1RXRCkJKz0gc21wX3R3ZC5vCj4gIG9iai0kKENPTkZJ
R19BUk1fQVJDSF9USU1FUikJKz0gYXJjaF90aW1lci5vCj4gIG9iai0kKENPTkZJR19GVU5DVElP
Tl9UUkFDRVIpCSs9IGVudHJ5LWZ0cmFjZS5vCj4gLW9iai0kKENPTkZJR19EWU5BTUlDX0ZUUkFD
RSkJKz0gZnRyYWNlLm8gaW5zbi5vCj4gLW9iai0kKENPTkZJR19GVU5DVElPTl9HUkFQSF9UUkFD
RVIpCSs9IGZ0cmFjZS5vIGluc24ubwo+ICtvYmotJChDT05GSUdfRFlOQU1JQ19GVFJBQ0UpCSs9
IGZ0cmFjZS5vIGluc24ubyBwYXRjaC5vCj4gK29iai0kKENPTkZJR19GVU5DVElPTl9HUkFQSF9U
UkFDRVIpCSs9IGZ0cmFjZS5vIGluc24ubyBwYXRjaC5vCj4gIG9iai0kKENPTkZJR19KVU1QX0xB
QkVMKQkrPSBqdW1wX2xhYmVsLm8gaW5zbi5vIHBhdGNoLm8KPiAgb2JqLSQoQ09ORklHX0tFWEVD
KQkJKz0gbWFjaGluZV9rZXhlYy5vIHJlbG9jYXRlX2tlcm5lbC5vCj4gICMgTWFpbiBzdGFmZnMg
aW4gS1BST0JFUyBhcmUgaW4gYXJjaC9hcm0vcHJvYmVzLyAuCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2tlcm5lbC9mdHJhY2UuYyBiL2FyY2gvYXJtL2tlcm5lbC9mdHJhY2UuYwo+IGluZGV4IGJk
YTk0OWYuLjJhNWZmNjkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0va2VybmVsL2Z0cmFjZS5jCj4g
KysrIGIvYXJjaC9hcm0va2VybmVsL2Z0cmFjZS5jCj4gQEAgLTIyLDYgKzIyLDcgQEAKPiAgI2lu
Y2x1ZGUgPGFzbS9mdHJhY2UuaD4KPiAgI2luY2x1ZGUgPGFzbS9pbnNuLmg+Cj4gICNpbmNsdWRl
IDxhc20vc2V0X21lbW9yeS5oPgo+ICsjaW5jbHVkZSA8YXNtL3BhdGNoLmg+Cj4gIAo+ICAjaWZk
ZWYgQ09ORklHX1RIVU1CMl9LRVJORUwKPiAgI2RlZmluZQlOT1AJCTB4Zjg1ZGViMDQJLyogcG9w
Lncge2xyfSAqLwo+IEBAIC0zNSw5ICszNiw3IEBAIHN0YXRpYyBpbnQgX19mdHJhY2VfbW9kaWZ5
X2NvZGUodm9pZCAqZGF0YSkKPiAgewo+ICAJaW50ICpjb21tYW5kID0gZGF0YTsKPiAgCj4gLQlz
ZXRfa2VybmVsX3RleHRfcncoKTsKPiAgCWZ0cmFjZV9tb2RpZnlfYWxsX2NvZGUoKmNvbW1hbmQp
Owo+IC0Jc2V0X2tlcm5lbF90ZXh0X3JvKCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiBAQCAt
NTksMTMgKzU4LDExIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIGFkanVzdF9hZGRyZXNzKHN0cnVj
dCBkeW5fZnRyYWNlICpyZWMsIHVuc2lnbmVkIGxvbmcgYWRkcikKPiAgCj4gIGludCBmdHJhY2Vf
YXJjaF9jb2RlX21vZGlmeV9wcmVwYXJlKHZvaWQpCj4gIHsKPiAtCXNldF9hbGxfbW9kdWxlc190
ZXh0X3J3KCk7Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiAgaW50IGZ0cmFjZV9hcmNoX2NvZGVf
bW9kaWZ5X3Bvc3RfcHJvY2Vzcyh2b2lkKQo+ICB7Cj4gLQlzZXRfYWxsX21vZHVsZXNfdGV4dF9y
bygpOwo+ICAJLyogTWFrZSBzdXJlIGFueSBUTEIgbWlzc2VzIGR1cmluZyBtYWNoaW5lIHN0b3Ag
YXJlIGNsZWFyZWQuICovCj4gIAlmbHVzaF90bGJfYWxsKCk7Cj4gIAlyZXR1cm4gMDsKPiBAQCAt
OTcsMTAgKzk0LDcgQEAgc3RhdGljIGludCBmdHJhY2VfbW9kaWZ5X2NvZGUodW5zaWduZWQgbG9u
ZyBwYywgdW5zaWduZWQgbG9uZyBvbGQsCj4gIAkJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAK
PiAtCWlmIChwcm9iZV9rZXJuZWxfd3JpdGUoKHZvaWQgKilwYywgJm5ldywgTUNPVU5UX0lOU05f
U0laRSkpCj4gLQkJcmV0dXJuIC1FUEVSTTsKPiAtCj4gLQlmbHVzaF9pY2FjaGVfcmFuZ2UocGMs
IHBjICsgTUNPVU5UX0lOU05fU0laRSk7Cj4gKwlfX3BhdGNoX3RleHQoKHZvaWQgKilwYywgbmV3
KTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IAoKSGVsbG8sCgpOVklESUEgVGVncmEyMC8zMCBh
cmUgbm90IGJvb3Rpbmcgd2l0aCBDT05GSUdfRlRSQUNFPXksIGJ1dCBldmVuIHdpdGgKQ09ORklH
X0ZUUkFDRT1uIHRoaW5ncyBhcmUgbm90IHdvcmtpbmcgd2VsbC4KClJldmVydGluZyB0aGlzIHBh
dGNoIGFuZCAibW9kdWxlOiBSZW1vdmUgc2V0X2FsbF9tb2R1bGVzX3RleHRfKigpIiAodG8KZml4
IGNvbXBpbGF0aW9uKSBoZWxwcy4KClsgICAxMy4zNjM1MjNdIDg8LS0tIGN1dCBoZXJlIC0tLQpb
ICAgMTMuMzY2ODg3XSBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBwYWdpbmcgcmVxdWVzdCBhdCB2
aXJ0dWFsIGFkZHJlc3MKM2UyNGZjYTMKWyAgIDEzLjM3MDM0Ml0gcGdkID0gZjkzOTczODAKWyAg
IDEzLjM3MzYyNV0gWzNlMjRmY2EzXSAqcGdkPTAwMDAwMDAwClsgICAxMy4zNzcyNzRdIEludGVy
bmFsIGVycm9yOiBPb3BzOiA1IFsjMV0gU01QIFRIVU1CMgpbICAgMTMuMzgxMDg2XSBNb2R1bGVz
IGxpbmtlZCBpbjoKWyAgIDEzLjM4NDM3Ml0gQ1BVOiAxIFBJRDogMjA5IENvbW06IHN5c3RlbWQt
am91cm5hbCBOb3QgdGFpbnRlZAo1LjUuMC1yYzctbmV4dC0yMDIwMDEyMi0wMDE3Ny1nOWI3ODMz
Y2EyZTdhICM5ODMKWyAgIDEzLjM4NzkyOV0gSGFyZHdhcmUgbmFtZTogTlZJRElBIFRlZ3JhIFNv
QyAoRmxhdHRlbmVkIERldmljZSBUcmVlKQpbICAgMTMuMzkxNTAwXSBQQyBpcyBhdCBfX3NlY2Nv
bXBfZmlsdGVyKzB4ODYvMHgzNzAKWyAgIDEzLjM5NTEwM10gTFIgaXMgYXQgX19zZWNjb21wX2Zp
bHRlcisweDc3LzB4MzcwClsgICAxMy4zOTg1ODRdIHBjIDogWzxjMDE5NGQ1Nj5dICAgIGxyIDog
WzxjMDE5NGQ0Nz5dICAgIHBzcjogNjAwZTAwMzMKWyAgIDEzLjQwMjIxMV0gc3AgOiBlZTZmM2Vl
MCAgaXAgOiBlZTZmM2YyMCAgZnAgOiBlZTZmMjAwMApbICAgMTMuNDA1NzY5XSByMTA6IGZmZmYw
MDAwICByOSA6IDdmZmYwMDAwICByOCA6IGVlNmYzZjIwClsgICAxMy40MDk4NDRdIHI3IDogN2Zm
ZjAwMDAgIHI2IDogZWU2YjcyODAgIHI1IDogMDAwMDAwMTQgIHI0IDogN2ZmZjAwMDAKWyAgIDEz
LjQxMzc3Nl0gcjMgOiAzZTI0ZmM3ZiAgcjIgOiAwMDAwMDAwMCAgcjEgOiAzZTI0ZmNhNyAgcjAg
OiBlZTZmM2YyMApbICAgMTMuNDE3MzgyXSBGbGFnczogblpDdiAgSVJRcyBvbiAgRklRcyBvbiAg
TW9kZSBTVkNfMzIgIElTQSBUaHVtYgpTZWdtZW50IG5vbmUKWyAgIDEzLjQyMDk5MV0gQ29udHJv
bDogNTBjNTM4N2QgIFRhYmxlOiAyZTc2NDA0YSAgREFDOiAwMDAwMDA1MQpbICAgMTMuNDI0NjY3
XSBQcm9jZXNzIHN5c3RlbWQtam91cm5hbCAocGlkOiAyMDksIHN0YWNrIGxpbWl0ID0gMHg5MDE5
NGQzNykKWyAgIDEzLjQyODMzMV0gU3RhY2s6ICgweGVlNmYzZWUwIHRvIDB4ZWU2ZjQwMDApClsg
ICAxMy40MzIwODJdIDNlZTA6IDAwMDAwMDA4IDAwMDAwMDAwIGMwZmEyM2E4IGMwYzY1OTU4IDAw
MDAwMDA4CjAwMDAwMGM1IDAwMDAwMDA2IDAwMDAwMDAwClsgICAxMy40MzU5NTldIDNmMDA6IDAw
MDAwMDA0IDAwMDAwMDAyIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDE0CmI2ZjVkNGQwIGVkYzk2
ZWU4IGVlNjAwOTA4ClsgICAxMy40Mzk3ODZdIDNmMjA6IDAwMDAwMDA2IDQwMDAwMDI4IGI2ZTNj
ZDU2IDAwMDAwMDAwIDAwMDAwMDE0CjAwMDAwMDAwIDAwMDAwMDAyIDAwMDAwMDAwClsgICAxMy40
NDQyODVdIDNmNDA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDE0
CjAwMDAwMDAwIGI2ZjVkNGQwIDAwMDAwMDAwClsgICAxMy40NDg0MzJdIDNmNjA6IDAwMDAwMDAw
IDk0NDVhNThhIDAwMDAwMDAwIDAwMDAwMDE0IGZmZmZlMDAwCjAwMDAwMDAwIDAwMDAwMDA2IGMw
MTAxMWU0ClsgICAxMy40NTIyMDJdIDNmODA6IGVlNmYyMDAwIDAwMDAwMDgwIDAwMDAwMDAwIGMw
MTA4MGQ1IDAwMDAwMDE0CmI2ZjVkNGQwIDAwMDAwMDAwIDAwMDAwMDA2ClsgICAxMy40NTYwMjVd
IDNmYTA6IGMwMTAxMWU0IGMwMTAxMTk1IDAwMDAwMDE0IGI2ZjVkNGQwIDAwMDAwMDE0CjAwMDAw
MDAyIDAwMDAwMDAwIDAwMDAwMDAwClsgICAxMy40NTk4NzJdIDNmYzA6IDAwMDAwMDE0IGI2ZjVk
NGQwIDAwMDAwMDAwIDAwMDAwMDA2IGI2ZjVkNGUwCmJlZmE1NjEwIDAwMDAwMDAyIDAwMDAwMDAw
ClsgICAxMy40NjM3MzZdIDNmZTA6IDAwMDAwMDA2IGJlZmE1NTE4IGI2ZWI2YzdkIGI2ZTNjZDU2
IDgwMGUwMDMwCjAwMDAwMDE0IDAwMDAwMDAwIDAwMDAwMDAwClsgICAxMy40Njc1NzBdIFs8YzAx
OTRkNTY+XSAoX19zZWNjb21wX2ZpbHRlcikgZnJvbSBbPGMwMTA4MGQ1Pl0KKHN5c2NhbGxfdHJh
Y2VfZW50ZXIrMHg0NS8weGFjKQpbICAgMTMuNDcxNTIwXSBbPGMwMTA4MGQ1Pl0gKHN5c2NhbGxf
dHJhY2VfZW50ZXIpIGZyb20gWzxjMDEwMTE5NT5dCihfX3N5c190cmFjZSsweDkvMHgzNCkKWyAg
IDEzLjQ3NTU5Ml0gRXhjZXB0aW9uIHN0YWNrKDB4ZWU2ZjNmYTggdG8gMHhlZTZmM2ZmMCkKWyAg
IDEzLjQ4MDAxMl0gM2ZhMDogICAgICAgICAgICAgICAgICAgMDAwMDAwMTQgYjZmNWQ0ZDAgMDAw
MDAwMTQKMDAwMDAwMDIgMDAwMDAwMDAgMDAwMDAwMDAKWyAgIDEzLjQ4NDEyN10gM2ZjMDogMDAw
MDAwMTQgYjZmNWQ0ZDAgMDAwMDAwMDAgMDAwMDAwMDYgYjZmNWQ0ZTAKYmVmYTU2MTAgMDAwMDAw
MDIgMDAwMDAwMDAKWyAgIDEzLjQ4ODI0OF0gM2ZlMDogMDAwMDAwMDYgYmVmYTU1MTggYjZlYjZj
N2QgYjZlM2NkNTYKWyAgIDEzLjQ5MjMxOF0gQ29kZTogNjhmMyA0NjQwIGYxMDMgMDEyOCAoNmE1
YikgNDc5OApbICAgMTMuNDk2NTk3XSAtLS1bIGVuZCB0cmFjZSAyMTkwYjA0YzA0YTQxN2EyIF0t
LS0KWyAgIDEzLjUyMDQ5M10gbm90ZTogc3lzdGVtZC1qb3VybmFsWzIwOV0gZXhpdGVkIHdpdGgg
cHJlZW1wdF9jb3VudCAxClsgICAxMy41MzI3ODJdIHN5c3RlbWRbMV06IHN5c3RlbWQtam91cm5h
bGQuc2VydmljZTogU2VydmljZSBoYXMgbm8KaG9sZC1vZmYgdGltZSAoUmVzdGFydFNlYz0wKSwg
c2NoZWR1bGluZyByZXN0YXJ0LgpbICAgMTMuNTM4MDU1XSBzeXN0ZW1kWzFdOiBzeXN0ZW1kLWpv
dXJuYWxkLnNlcnZpY2U6IFNjaGVkdWxlZCByZXN0YXJ0CmpvYiwgcmVzdGFydCBjb3VudGVyIGlz
IGF0IDEuClsgICAxMy41NDQ5NjBdIHN5c3RlbWRbMV06IFN0b3BwZWQgSm91cm5hbCBTZXJ2aWNl
LgpbICAgMTMuNTU1MTIzXSBzeXN0ZW1kWzFdOiBDb25kaXRpb24gY2hlY2sgcmVzdWx0ZWQgaW4g
Sm91cm5hbCBBdWRpdApTb2NrZXQgYmVpbmcgc2tpcHBlZC4KWyAgIDEzLjU2NjA2Nl0gc3lzdGVt
ZFsxXTogU3RhcnRpbmcgSm91cm5hbCBTZXJ2aWNlLi4uClsgICAxMy43ODY2NjhdIHN5c3RlbWRb
MV06IFN0YXJ0ZWQgSm91cm5hbCBTZXJ2aWNlLgoKWyAgIDIyLjAxMzg2MV0gQlVHOiBCYWQgcnNz
LWNvdW50ZXIgc3RhdGUgbW06MjZjNjJiZGUgdHlwZTpNTV9BTk9OUEFHRVMKdmFsOjE3MAoKVGhp
cyAiQmFkIHJzcy1jb3VudGVyIiBzZWVtcyB0byBiZSBhIG5ldyBwcm9ibGVtIGFuZCB1bnJlbGF0
ZWQgdG8gdGhlCm9mZmVuZGluZyBwYXRjaCwgSSBkb24ndCByZWNhbGwgc2VlaW5nIGl0IGluIG5l
eHQtMjAyMDAxMTcgYW5kIGVhcmxpZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
