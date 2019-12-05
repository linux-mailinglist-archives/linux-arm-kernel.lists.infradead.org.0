Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF2A1142DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:39:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciwFvD2UdjbYM1I0NITfMMETtGUzs/Pn7TtyJyi+ajA=; b=e3qjzeQQYIZPVB
	k+Jjl6nd5dMy0qqZAB/d3JmVaiag70F4BrPVK/5X3eXNDX6F7RklGpkudpB6N3kyM6376X62prNYc
	zHt4vZC1xZHZEI21asJmF/VWuMKNS+VogvsNObpO92MCJJa0rePGzojnwW/MSluorSwS4Ngn4VGam
	dUC05MmBN8lm28XmMkltYKUfDWM9lJ/ofXe+cdvO7cOlQ17PIqL15IdCIv+NX9zmbxKpQ6Cv5Gj8T
	3SeUZJ+xdK3s4ButHaiiZl0/C2G9DCBclQj0wDLt0TGAMXeDVaIa4UfxmcjSerP4tXdUwNlm/8irW
	BAjDkW+F9mnm5kmz24Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsHQ-0000h4-4e; Thu, 05 Dec 2019 14:38:56 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsGq-0000Gb-OG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:38:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id v19so3515013qkv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=omWgUdt2lqUl+xhBEN5ihPOntS+M4FEdV/QH92UTrzU=;
 b=UIhWvGttTAkN5l5034Z8e5zeLaLNI3r2q89siMfEfzDHyVPGBlUyw9awSlnXLtOU8K
 7HogI8QP7c/UhmzG7czmyKNTXD/w62FImbIi0ya5oibqTtm/55lDwvAwd1hYw4gmxSr0
 s3HbWI3oRozCHqxoCdDk8nYYmFUUMuLFaMSQ9239tyNGy0PIy6CUGu2+xsaqV5N4WeDH
 wKuLF0RzYHred7Gwf0n0mlDXXwzDGENqN998v9vaSp87D5CvHB22tpUVFU7ra84PHoSR
 fdGpaf2KPH+QaxB3GJ0rzNKqwUuETRjTSrZDKgTUlD1L+08gLMwBY6CbI2aY+BydsZmM
 BYMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=omWgUdt2lqUl+xhBEN5ihPOntS+M4FEdV/QH92UTrzU=;
 b=Keq3UCzxqE20V8ZHNwxFol+CSNgENbqZuw42EdeOLoDugQr9o4k4JWB18Pz6dJytLN
 bbZBE9uVfUq50q9I3VGsLdzNlvQvamemI45vy9WL0NKWHGhrxIvM/KmqXePxi8Jnnw2k
 ykNLO6RRVaOOGS6woJ52L2kPEKMXe1qBGa3wtYEVeS5eFOAoPGpjj4yxf9VKm9yrN0CQ
 DWcgWidYwevByxxZOnl6nGkQK6YB41KB1MgzaWYmA0CukAXoqYIJveyPVUl39rcFB4l4
 hbkLDVjwm7IEkmGzEAWXCHNSzCktWjcDTA0d5qz8yohdVc81t9GMM2cDmNMUDs45XvYc
 46sA==
X-Gm-Message-State: APjAAAUtqUVJ0U91NrqgSQ/AAe8AnzPqj/a5YUFDp8ocDc6OP037ZNnI
 M0+ugqfsXBnOyFldXW7/7SIZSQ==
X-Google-Smtp-Source: APXvYqw3uCvzvHTDFgO1iY1S8KTw29SAdiF1UyUgWAbRL+Ur4SVE1kG+cTjFz5MmpWO2vcqfQWv95A==
X-Received: by 2002:a05:620a:98d:: with SMTP id
 x13mr7954868qkx.221.1575556699289; 
 Thu, 05 Dec 2019 06:38:19 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id t9sm1262482qkt.112.2019.12.05.06.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 06:38:18 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
From: Qian Cai <cai@lca.pw>
In-Reply-To: <e1f4ec12f9b3f92e481a42698cc1a5645e0e7c0f.camel@vmware.com>
Date: Thu, 5 Dec 2019 09:38:17 -0500
Message-Id: <A1E27467-83D7-4D36-A029-31649417248E@lca.pw>
References: <20191204163235.GA1597@arm.com>
 <A22DE6B7-23A1-41FA-AF82-9613778277C7@lca.pw>
 <e1f4ec12f9b3f92e481a42698cc1a5645e0e7c0f.camel@vmware.com>
To: Thomas Hellstrom <thellstrom@vmware.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063820_876884_AE929042 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Mark.Rutland@arm.com" <Mark.Rutland@arm.com>,
 "david@redhat.com" <david@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "hpa@zytor.com" <hpa@zytor.com>,
 "will@kernel.org" <will@kernel.org>,
 "kan.liang@linux.intel.com" <kan.liang@linux.intel.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "Steven.Price@arm.com" <Steven.Price@arm.com>,
 "mingo@redhat.com" <mingo@redhat.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "jglisse@redhat.com" <jglisse@redhat.com>, "bp@alien8.de" <bp@alien8.de>,
 "luto@kernel.org" <luto@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "James.Morse@arm.com" <James.Morse@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyA1LCAyMDE5LCBhdCA5OjMyIEFNLCBUaG9tYXMgSGVsbHN0cm9tIDx0aGVsbHN0
cm9tQHZtd2FyZS5jb20+IHdyb3RlOgo+IAo+IE9uIFRodSwgMjAxOS0xMi0wNSBhdCAwODoxNSAt
MDUwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+PiBPbiBEZWMgNCwgMjAxOSwgYXQgMTE6MzIgQU0sIFN0
ZXZlbiBQcmljZSA8U3RldmVuLlByaWNlQGFybS5jb20+Cj4+PiB3cm90ZToKPj4+IAo+Pj4gSSd2
ZSBiaXNlY3RlZCB0aGlzIHByb2JsZW0gYW5kIGl0J3MgYSBtZXJnZSBjb25mbGljdCB3aXRoOgo+
Pj4gCj4+PiBhY2U4OGYxMDE4YjggKCJtbTogcGFnZXdhbGs6IFRha2UgdGhlIHBhZ2V0YWJsZSBs
b2NrIGluCj4+PiB3YWxrX3B0ZV9yYW5nZSgpIikKPj4gCj4+IFNpZ2gsIGhvdyBkb2VzIHRoYXQg
Y29tbWl0IGVuZCB1cCBtZXJnaW5nIGluIHRoZSBtYWlubGluZSB3aXRob3V0Cj4+IGdvaW5nIHRo
cm91Z2ggQW5kcmV34oCZcyB0cmVlIGFuZCBtaXNzZWQgYWxsIHRoZSBsaW51eC1uZXh0IHRlc3Rp
bmc/IEl0Cj4+IHdhcyBtZXJnZWQgaW50byB0aGUgbWFpbmxpbmUgT2N0IDR0aD8KPiAKPiBJdCB3
YXMgYWNrZWQgYnkgQW5kcmV3IHRvIGJlIG1lcmdlZCB0aHJvdWdoIGEgZHJtIHRyZWUsIHNpbmNl
IGl0IHdhcwo+IHBhcnQgb2YgYSBncmFwaGljcyBkcml2ZXIgZnVuY3Rpb25hbGl0eS4gSXQgd2Fz
IHByZWNlZGVkIGJ5IGEgZmFpcmx5Cj4gbGVuZ2h0eSBkaXNjdXNzaW9uIG9uIGxpbnV4LW1tIC8g
bGludXgta2VybmVsLgo+IAo+IEl0IHdhcyBtZXJnZWQgaW50byBkcm0tbmV4dCBvbiAxOS0xMS0y
OCwgSSB0aGluayB0aGF0J3Mgd2hlbiBpdAo+IG5vcm1hbGx5IGlzIHNlZW4gYnkgbGludXgtbmV4
dC4gTWVyZ2VkIGludG8gbWFpbmxpbmUgMTktMTEtMzAuIEFuZHJldydzCj4gdHJlZSBnb3QgbWVy
Z2VkIDE5LTEyLTA1LgoKQWgsIHRoYXQgd2FzIHRoZSBwcm9ibGVtLiBNZXJnZWQgaW50byB0aGUg
bWFpbmxpbmUgYWZ0ZXIgb25seSBhIGRheSBvciB0d28Kc2hvd2VkIHVwIGluIHRoZSBsaW51eC1u
ZXh0LiBUaGVyZSBpc27igJl0IGVub3VnaCB0aW1lIGZvciBpbnRlZ3JhdGlvbiB0ZXN0aW5nLgoK
PiAKPiBsaW51eC1uZXh0IHNpZ25hbGVkIGEgbWVyZ2UgY29uZmxpY3QgZnJvbSBvbmUgb2YgdGhl
IHBhdGNoZXMgaW4gdGhpcwo+IHNlcmllcyAobm90IHRoaXMgb25lKSByZXNvbHZlZCBtYW51YWxs
eSB3aXRoIHRoZSBha3BtIHRyZWUgb24gMTktMTItMDIuCj4gCj4gVGhvbWFzCj4gCj4gCj4gCj4g
Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
