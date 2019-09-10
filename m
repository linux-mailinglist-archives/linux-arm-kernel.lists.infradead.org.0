Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E24AED1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Gya9vkEEnRWkmYervjAnsmXnunSu6T7REe5aF5WaPY=; b=eTJW6TtXV5a4mS
	S186NxnjEUEWy/I95aLbDyuRErrTOMATCASnFQQ6WMmOaHM6Lebsn18j0JoJRXMf6PGO+8yCCu773
	NXI2+rImk2Qdw/5z+Yjx+rUkqfKEmZsPlXPU/U52i7BRBLN+2BwlayZRcg1zC4AFj3q3CJiRAVieD
	rPm9MLyAwM/E17/4YqB1xTvb0UQ+xxCpSz+QlDDj42XPYApa1CbtmLJPQi4HNeS4x1H6a8GgvzZ0z
	Lg4MvCZcfcDj0H/0KM33WoUqWmlMwimQBbAXHfeTSDeoABNSQHbN3750EgMEyoq5xxA5U3SZVkuBj
	mnIoSbyD0aOEjJ8FZS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hER-0006pO-8u; Tue, 10 Sep 2019 14:34:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hEH-0006p0-5v
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:34:50 +0000
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 342562168B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 14:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568126088;
 bh=N9yEku3TkTccdcq4LDJA9znsoT5Phes4V2eVsDC3pkI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rNf0W3HdWezzXYc6WCfSSy27oJ+Nizwu+cDjjE2b692DxTjr9hi6tFN1Av1CQj1FE
 E6MvjzAnpBtJ6uQ/0EZNITH/3gUZlYUrvriCMVxwfnF7Yi1DPoOTaoQAQFjjieTSw1
 YXqlOo0PBoqYEHQ1DMGafFJdaGB//Ip+6esSwoDE=
Received: by mail-lf1-f43.google.com with SMTP id r22so2347897lfm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:34:48 -0700 (PDT)
X-Gm-Message-State: APjAAAVWFynbRhd/jWyVmnuDcxrqjw94edxnBei5pP1euYeS8T5bD5En
 Co3m6u3jShj4aEk3/LN4Ateq1k0HXul+1F/2Zvc=
X-Google-Smtp-Source: APXvYqwTxGoCSMY2hh0S4X+P7RznBzUvgDPCYT6mO8bQK3CwgOEn1aV209aKXhdq5c95WjWG4zmQiOwrHX5Gzg1E2w0=
X-Received: by 2002:a19:770a:: with SMTP id s10mr3174092lfc.30.1568126086301; 
 Tue, 10 Sep 2019 07:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <BY5PR12MB3699A8D741EF6226B8DB65E4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
 <20190909184504.GA10091@kozik-lap>
 <BY5PR12MB36991B9B4E33B2A3093132BCC4B60@BY5PR12MB3699.namprd12.prod.outlook.com>
In-Reply-To: <BY5PR12MB36991B9B4E33B2A3093132BCC4B60@BY5PR12MB3699.namprd12.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 10 Sep 2019 16:34:35 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdJnXP8t-E4aWcnxRNykkULYfFUyC9173SKepQ8z+ykCQ@mail.gmail.com>
Message-ID: <CAJKOXPdJnXP8t-E4aWcnxRNykkULYfFUyC9173SKepQ8z+ykCQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Fix init order of S3C64xx's clock providers
To: Lihua Yao <ylhuajnu@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_073449_243118_75241F62 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMCBTZXAgMjAxOSBhdCAxNDo1NiwgTGlodWEgWWFvIDx5bGh1YWpudUBvdXRsb29r
LmNvbT4gd3JvdGU6Cj4KPiBIaSAgS3J6eXN6dG9m77yMCj4KPiBPbiAxMC85LzIwMTkgMjo0NSBB
TSwga3J6a0BrZXJuZWwub3JnIHdyb3RlOgo+Cj4gT24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMDI6
NDc6NDhBTSArMDAwMCwgWWFvIExpaHVhIHdyb3RlOgo+Cj4gRnJvbTogTGlodWEgWWFvIDx5bGh1
YWpudUBvdXRsb29rLmNvbT4KPgo+IEVuc3VyZSBmaW5fcGxsIGlzIGluaXRpYWxpemVkIGJlZm9y
ZSBjbG9jay1jb250cm9sbGVyQDdlMDBmMDAwIHNvCj4gd2UgaGF2ZSBjb3JyZWN0IGNsb2NrIGZy
ZXF1ZW5jeSBsaWtlIGJlbG93Ogo+Cj4gWyAgICAwLjAwMDAwMF0gUzNDNjQxMCBjbG9ja3M6IGFw
bGwgPSA1MzIwMDAwMDAsIG1wbGwgPSA1MzIwMDAwMDAKPiBbICAgIDAuMDAwMDAwXSAgZXBsbCA9
IDI0MDAwMDAwLCBhcm1fY2xrID0gNTMyMDAwMDAwCj4KPiBIaSwKPgo+IFVuZm9ydHVuYXRlbHkg
eW91ciBwYXRjaGVzIG1pc3NlZCB0aGUgc2Ftc3VuZy1zb2MgbWFpbGluZyBsaXN0Ogo+IGh0dHBz
Oi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXNhbXN1bmctc29jLwo+Cj4gTWF5YmUgeW91
IG5lZWQgdG8gYmUgc3Vic2NyaWJlZD8KPgo+IEluIGdlbmVyYWwsIGlmIHRoZSBwYXRjaGVzIGFy
ZSBub3QgdGhlcmUsIEkgZG8gbm90IHNlZSB0aGVtIHVuZGVyCj4gUGF0Y2h3b3JrLiBZb3UgbWlz
cyBhbHNvIHJldmlldyBmcm9tIFNhbXN1bmcgZm9sa3MuCj4KPiBJIGhhZCB0cmllZCBzdWJzY3Jp
YmluZyBtYWlsIGxpc3QgYnV0IGdvdCByZWplY3RlZCBieSB2Z2VyLmtlcm5lbC5vcmcuCj4KPiAg
IG1ham9yZG9tb0B2Z2VyLmtlcm5lbC5vcmcKPiAgIHZnZXIua2VybmVsLm9yZwo+ICAgUmVtb3Rl
IFNlcnZlciByZXR1cm5lZCAnNTUzIDUuNy4xIEhlbGxvIFs0MC45Mi4xMS4zOF0sIGZvciB5b3Vy
IE1BSUwgRlJPTSBhZGRyZXNzIDx5bGh1YWpudUBvdXRsb29rLmNvbT4gcG9saWN5IGFuYWx5c2lz
IHJlcG9ydGVkOiAgIFlvdXIgYWRkcmVzcyBpcyBub3QgbGlrZWQgc291cmNlIGZvciBlbWFpbCcK
Pgo+IEkgaGFkIHVzZWQgbXkgQDE2My5jb20gZW1haWwgdG9vIGJ1dCBnb3Qgbm90aGluZy4gSSBj
b3VsZG4ndCB1c2UgZ21haWwKPiBhcyBnb29nbGUncyBzZXJ2aWNlcyBhcmUgYmxvY2tlZCBmcm9t
IGNoaW5hIG1haW5sYW5kLgo+Cj4gV291bGQgeW91IGtpbmRseSByZWNvbW1lbmQgc29tZSBlbWFp
bCBzZXJ2ZXJzIHRoYXQgdmdlci5rZXJuZWwub3JnIGlzCj4gaGFwcHkgdG8gYWNjZXB0PwoKSW5k
ZWVkIG91dGxvb2suY29tIHNlZW1zIHRvIGJlIGJsb2NrZWQuIEkgZG8gbm90IGtub3cgd2hhdCBv
dGhlcgpzZXJ2aWNlcyBhcmUgYWNjZXB0ZWQuIFRoZXJlIGFyZSBtYW55IENoaW5hLWJhc2VkIGRl
dmVsb3BlcnMgYW5kCnNvbWVob3cgdGhleSBhcmUgYWJsZSB0byBzZW5kIHRvIExLTUwuCgpCZXN0
IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
