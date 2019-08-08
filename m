Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC53868F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6bSDec/gWD7nsRwIOtazDhAcl+3eRFcF3CX1j+cbHY=; b=ZDA6WbTsjAjMtL
	14qdIJYRlX1+p2IuudSuHFSNNVtw9rVD2HcpbKb4FOq/FwurhAZGrfTeqhTW2xzE8M17aGfnPtod3
	5arz9tcqZq6ZjthcSVsv/NFW/4pzKbphJFoNlgLZ+/nN9MUmjK7RdcJKUiVrcLSbDdq9ZOwqXJZnb
	MYjuk3TaufAIWQUEIJS8NvKu+tFPzLcLYbwS0tAgPgc1Vo2NLT/FpdDl2OwCUb4A9PfJBDLvXj3+4
	s9w0hN+gNdF9JG7dK7fIexnxJrVTHEQW12S7iBbMT9wAZBt39wdQxAUoWYuaVYEmz94jdbWIYuBBA
	lWSIiElXpiNJAie72uRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnMR-0005Nj-Rc; Thu, 08 Aug 2019 18:42:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnMH-0005NF-CY
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 18:41:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so44567063pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 11:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZZK+fyWZjI5hSA6Qnbu9v76+SqqCqOmIE8jtu8ZGPCs=;
 b=ExxwGCibE21sc8KG1HZ0UsxlIUpqyquINJWIphQpP5BWrLFQuJbqM4/Qa7y3EMxKGk
 u5GrGX64wvkaZU+q6huAtHVuqAWkaBkPCF09bpKs83rYE18bh7Opf6p/xeKnNX4sdGhC
 oDGkV/1+tjK/DcGSuQfRH1Z96wbZdk1yEiXeUCRmPxZjqQicjt4fbjddbAx7fQ9v3YRz
 cgNr5lvQHbORziE5OshBxu2MkX5j7ncutuywKLkv8ixmo964EOdprPS4GdWPqXMuYnQ2
 2CY8UqquYB980H1NQ5wV+zbU/siUvCMJLrAWUTzGsyDKN4UN8+vVrmXbb30AoINnzMAt
 HRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=ZZK+fyWZjI5hSA6Qnbu9v76+SqqCqOmIE8jtu8ZGPCs=;
 b=jggpu4699+3OAauvl/HcD1RVUjYxJgifK5T2NC8KGCH0AXG0pRHN1N9hxyqgaJ8uJO
 V/0Aqu78NzC0lDj6fG2gW4SSR8UNNnFchbYlAISFUTm6iQhdqWWlD4EijkXBrtXRrZvN
 cSVlj93liIa7K66cbYdw5+PueNCWo0V8v7TOGc5H65TdAi39R57l87CX9+S9M1f1W6Rj
 jELrbfvCSHepwm2bkFcq10+kNBwN9CkKredGYgoO4CzxF4itU1ZkFcGvS2433WjHPfi+
 U5iQZho9O0RAsHG6aiRFaKSxkLJNq3EjFw9UrVVxhvZhmhdJO+NPp+9hqO1rlS0HGbGH
 /eKA==
X-Gm-Message-State: APjAAAVYTzyCOoUx9NPr8mAeX/Q/3kzBygtTJ3BCbDgFdQTjQcOR8zR4
 4I0ikcC8xovYLFkcDzSf5hI=
X-Google-Smtp-Source: APXvYqx5EmGw/rrd/R2q+S2qeMRTUxcFUUR9uhxx05XW9ppoZP59FXTb8pky/sKgdxdcuILdqHHe+g==
X-Received: by 2002:a17:90a:7787:: with SMTP id
 v7mr5462994pjk.143.1565289712264; 
 Thu, 08 Aug 2019 11:41:52 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id n17sm102767545pfq.182.2019.08.08.11.41.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 11:41:51 -0700 (PDT)
Date: Thu, 8 Aug 2019 11:41:49 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master build: 230 builds: 5 failed, 225 passed, 6 errors,
 1344 warnings (next-20190805)
Message-ID: <20190808184149.GA441@roeck-us.net>
References: <5d47f990.1c69fb81.a5d88.ee1f@mx.google.com>
 <20190805111205.GB6432@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805111205.GB6432@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_114153_453100_E276F3A1 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org, David Zhou <David1.Zhou@amd.com>,
 kernel-build-reports@lists.linaro.org, David Airlie <airlied@linux.ie>,
 Tao Zhou <tao.zhou1@amd.com>, amd-gfx@lists.freedesktop.org,
 linux-next@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Dennis Li <dennis.li@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMTI6MTI6MDVQTSArMDEwMCwgTWFyayBCcm93biB3cm90
ZToKPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwMjo0MDozMkFNIC0wNzAwLCBrZXJuZWxjaS5v
cmcgYm90IHdyb3RlOgo+IAo+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVpbGQgYW4gYXJtIGFs
bG1vZGNvbmZpZyBkdWUgdG86Cj4gCj4gPiBhbGxtb2Rjb25maWcgKGFybSwgZ2NjLTgpIOKAlCBG
QUlMLCAyIGVycm9ycywgMTYgd2FybmluZ3MsIDAgc2VjdGlvbiBtaXNtYXRjaGVzCj4gPiAKPiA+
IEVycm9yczoKPiA+ICAgICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNl
LmM6Mjc5Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiAncmVhZHEn
OyBkaWQgeW91IG1lYW4gJ3JlYWRiJz8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFy
YXRpb25dCj4gPiAgICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5j
OjI5ODozOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24gJ3dyaXRlcSc7
IGRpZCB5b3UgbWVhbiAnd3JpdGViJz8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFy
YXRpb25dCj4gCj4gZHVlIHRvIDRmYTFjNmE2NzliYjAgKGRybS9hbWRncHU6IGFkZCBSUkVHNjQv
V1JFRzY0KF9QQ0lFKSBvcGVyYXRpb25zKQo+IHdoaWNoIGludHJvZHVjZXMgdXNlIG9mIHJlYWRx
KCkgYW5kIHdyaXRlcSgpLgoKQUZBSUNTIHRoaXMgcHJvYmxlbSBhZmZlY3RzIGFsbCAzMi1iaXQg
YnVpbGRzLCBpbmNsdWRpbmcgaTM4Ni4KSXMgaXQgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcgZml4
ZWQsIG9yIHNob3VsZCB3ZSBzdWJtaXQgYQpwYXRjaCBsaW1pdGluZyBEUk1fQU1ER1BVIHRvIDY0
LWJpdCBidWlsZHMgPwoKR3VlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
