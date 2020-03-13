Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3745C184454
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BA5iYsSHR7q7iDMp9u6xjvSVabHMyyFPZhxVNv2MfEE=; b=eNq4e/XY+OfcpH
	7uxiHkd8Q0x4webHayncCFl6vs/r8Ec8T1RgCGOvEs4XH8BYEMwTqUg5aymoFQaHkSWSVmMWD3Fmj
	5t/8C+6AVAh7CtQF/aFWvXDgWtRiAzPoiKCv5dif3KSy6OD8DLZZYsYbT6awA8zW6aj1rJx9aVUeR
	jYkXk0HrQepdMzXCNhj0AkjprGeAqEJbBzwwNQqa8Vk0oCsU7cw94QWr3vH19eAdLqfWBIenszCEz
	N7g8YzkyPYo1FuRgVgyRSnMxwHLnCqrTCeU3vM6HsLRm6TvHMnTdcZyQd4Vkzmhn0dyYQNhKqfjWs
	mkpIX1G8Q4AowbSY8dpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChCW-0007ld-7M; Fri, 13 Mar 2020 10:05:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChC3-0007S8-Ht
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:05:28 +0000
Received: by mail-wm1-x344.google.com with SMTP id t13so3217797wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 03:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7A08Rj8P2xGcyK9AB5G4W7ODgf9lGGlI82SYTmkYv3s=;
 b=D/DpgEg7QQzJfqKNUl5khuQLcYUbGC22joQsDqsWmXaZ8s2qUjOKDJikJzae8B1z2L
 K+ARroJwkcNl1XwIYeePVG0Hy/f0ro8Zh1qyLoIudtv3k22kPtv0edlXLXIRgsnao4Vo
 F2wPorPZxp5iQEHNFFeemtS6QxDWkHyzQB1vgur+6a9lgN8/hixZvM9g+QVBUzjY/fVm
 sw+tfKPeDpoof9TtodfR4XapiwS6kZDSTvzxbdGAjnFSeAU2Z0jhFWUyf1/SJX/feta5
 hoei5nJCk0K4h42a9KchmMflcxOQ5vdIvDyff1Xdaf0Xan0euJAoqfyMVuOGx9eMeia/
 /mBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7A08Rj8P2xGcyK9AB5G4W7ODgf9lGGlI82SYTmkYv3s=;
 b=THIT/TdnxX5grzeI+UqRAia7t6ojTFfrPjaEUQO3GShZHFPOoZlLgJDJMsnPTgBC45
 0g9o8ELQXLiRiOtDrsfAp1Qdlz/TffLUqi4+lyiWgVjAy5Q7zNcP6XA/MtqTkVSRQUTR
 vM+4vWCppRgEhQhtf5TkuUyNyGmOpEtWQzK6sHwJx0ipUhTNMPuE7tcrCEJAmy0BRdk7
 fWT1+yuiubtGFdbN2rQ1VxsYhRjwu9v/D9irMAT5nz+213a3Uhe21Qf/Cgjy1uWE0hMw
 LQbxLvvHt/c37otrPkWXU6CCnwvYsmXsMl5OJyOiA6IWyraURYy6fC2ECU63DKt+Q/rL
 3k4A==
X-Gm-Message-State: ANhLgQ2NWwVlE7FmrO+6BitR/48PUpkefkPm2k9UuY5bt3iUOL4KiluU
 DK1bdAC+A5JK5LEJ76Rb1BrpiluDFtV9eibh6vepZA==
X-Google-Smtp-Source: ADFU+vu0PpaCkNgoXeULQRHRdjU6VS+GANZ8PsV6W1M39IY8FgdOGV7zlfz6j1KcE0519wldZVdh6IhYJ76cnzKqPV0=
X-Received: by 2002:a05:600c:2244:: with SMTP id
 a4mr9578436wmm.147.1584093925714; 
 Fri, 13 Mar 2020 03:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200313090104.20750-1-digetx@gmail.com>
In-Reply-To: <20200313090104.20750-1-digetx@gmail.com>
From: Nicolas Chauvet <kwizart@gmail.com>
Date: Fri, 13 Mar 2020 11:05:14 +0100
Message-ID: <CABr+WTka7KirNLT=ZptxxZ+L-ZoNKfKwL7RrjZR=ksZh0MAPwg@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: tegra: Correct PL310 Auxiliary Control Register
 initialization
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_030527_620113_47FBA7E6 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kwizart[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiAxMyBtYXJzIDIwMjAgw6AgMTA6MDIsIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdt
YWlsLmNvbT4gYSDDqWNyaXQgOgo+Cj4gVGhlIFBMMzEwIEF1eGlsaWFyeSBDb250cm9sIFJlZ2lz
dGVyIHNob3VsZG4ndCBoYXZlIHRoZSAiRnVsbCBsaW5lIG9mCj4gemVybyIgb3B0aW1pemF0aW9u
IGJpdCBiZWluZyBzZXQgYmVmb3JlIEwyIGNhY2hlIGlzIGVuYWJsZWQuIFRoZSBMMlgwCj4gZHJp
dmVyIHRha2VzIGNhcmUgb2YgZW5hYmxpbmcgdGhlIG9wdGltaXphdGlvbiBieSBpdHNlbGYuCj4K
PiBUaGlzIHBhdGNoIGZpeGVzIGEgbm9pc3kgZXJyb3IgbWVzc2FnZSBvbiBUZWdyYTIwIGFuZCBU
ZWdyYTMwIHRlbGxpbmcKPiB0aGF0IGNhY2hlIG9wdGltaXphdGlvbiBpcyBlcnJvbmVvdXNseSBl
bmFibGVkIHdpdGhvdXQgZW5hYmxpbmcgaXQgZm9yCj4gdGhlIENQVToKPgo+ICAgICAgICAgTDJD
LTMxMDogZW5hYmxpbmcgZnVsbCBsaW5lIG9mIHplcm9zIGJ1dCBub3QgZW5hYmxlZCBpbiBDb3J0
ZXgtQTkKPgo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBE
bWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+ClRlc3RlZC1ieTogTmljb2xhcyBDaGF1
dmV0IDxrd2l6YXJ0QGdtYWlsLmNvbT4KClRoaXMgd2FzIHRlc3RlZCBvbiBwYXowMCAodGVncmEy
MCkuCkFsc28gdGVzdGVkIHRoYXQgc3VzcGVuZCBzdGlsbCB3b3Jrcy4KClRoYW5rcyBmb3IgZml4
aW5nIHRoaXMgbG9uZyBzdGFuZGluZyBpc3N1ZSEKCi0tIAotCgpOaWNvbGFzIChrd2l6YXJ0KQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
