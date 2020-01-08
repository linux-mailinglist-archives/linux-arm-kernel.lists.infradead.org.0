Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409CC134B42
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9F2WnjCTG3/D822YkOwVIxlXrrBmZkMPbyYnGmbo+w=; b=qI4D3IDI4V4klO
	pabCqJc91/3M5LnjHGIdtWIQChKsSvHcRJHhQViLpkxUdeFAXwLZe36kwEV+8N7YUuVJNjgbQ2rLf
	/yVZH9ZMNSO6/GdJACvfFs3NF4KYoVJHO9llxlr4aZDqOBOsP0PzfmWQmKiFzcwBHNs1VtX9bgxaJ
	8XVVgTRIDs+LRNSCvi5+vYbLfk++jnp14C0h7d04FrHqb5fqZReJ9qKr89naT4AR6/SVQHe90Uj+9
	+Hp2wnYp6L/lRk8QlBOBCUHcXDYzZnUtuEec8mRhfDzaiuKVdwQcVzXr4BjkZqPMsaLGoMazeUhyk
	mBqP5CNxrQbIwxESpkAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGgr-0007rh-AR; Wed, 08 Jan 2020 19:08:25 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGgg-0007pH-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 19:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578510492;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dF4FGW2H8qCPK5L+NqZ1nRPZo8yuJmWiHXHtrqRGZrM=;
 b=WFIwZeZ6tqh11X24oUcGDubjE4iEB3bYdT17j2zI1iYOAs9cSNLOztdI17W1/OzXkF1syy
 orv1ZfjSTMJ4st+Q2L+Le4wtrKPnLBzVHBagfaVsl+5QBqnqRO9vVpRq6p0BENIb9cbwyQ
 oPS0Q8Ewvefi/rY2dCRHz6h6XRpO+go=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-wsKL7Dr4MYyWNh6q0zxpsA-1; Wed, 08 Jan 2020 14:08:11 -0500
Received: by mail-wr1-f70.google.com with SMTP id c6so1794704wrm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 11:08:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Amws6MWhDh9ExYW39LjH1zvpuHRVUUVI5bKPn/z5HTo=;
 b=ryHNNzJ4ZCSc0/aERAwuxK9JDgTvTnwDGnQlTLwPkhERsnT8i/ZNDCsaPLa9FA2iw8
 v4oubT+VroCTmpvUQ4UekbcCqnHp32elpVIh9wO0wRwHbhvAGJGlIWl2tvbjRkE9KHbg
 Wr70rVVVCT7wifaHtNlxcBxWyGH7+gk2ybojKllfrrpZYeTYvwF6P0Wi9/jPmElEP7w5
 KxzDuglO2VqvXp9zfCP7EaD6PCTI5IBu6N9e5RKtyusHSscvJ0Kx4WEujx7i9QzugMHw
 cQBdYbpSrYQr8PupqzI29CQJrP0y1bJGHBlAayOhJr8E5vajZJFd4Yppr4C9lD8ekxYN
 JHAg==
X-Gm-Message-State: APjAAAU98WFC+X6QTddT5+iH35n4AHMpeK+GaKd9ixXiPAhHRVSqAqGP
 MFXtzuTIIjtdwMa8V9NI6fHVjXMp/+PPxwIVBBVaJjD4nstFSSP72KyvyrVXx8cmmgMn49/ukfX
 uX4cG6uhpaTYyW3U57mC4xfS13CyzGTdIz08=
X-Received: by 2002:a5d:534d:: with SMTP id t13mr6334286wrv.77.1578510490048; 
 Wed, 08 Jan 2020 11:08:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwSf5xR5AuD7FXuI2qLWJMD45CtNqKofERmd6oZKYNzsaH7aKCx0AwVIr77ei63TWVvkuj2Q==
X-Received: by 2002:a5d:534d:: with SMTP id t13mr6334244wrv.77.1578510489748; 
 Wed, 08 Jan 2020 11:08:09 -0800 (PST)
Received: from [192.168.3.122] (p5B0C6BAD.dip0.t-ipconnect.de. [91.12.107.173])
 by smtp.gmail.com with ESMTPSA id f12sm49809wmf.28.2020.01.08.11.08.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 11:08:09 -0800 (PST)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2 2/8] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_modifiers
Date: Wed, 8 Jan 2020 20:08:07 +0100
Message-Id: <5D5ED235-EB67-4072-8CCA-C046B7EC031C@redhat.com>
References: <CAPcyv4hdpMs5om4_VrYUz98aWDJ9eRhj7WJr312Jwn6LCmAm9Q@mail.gmail.com>
In-Reply-To: <CAPcyv4hdpMs5om4_VrYUz98aWDJ9eRhj7WJr312Jwn6LCmAm9Q@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
X-Mailer: iPhone Mail (17C54)
X-MC-Unique: wsKL7Dr4MYyWNh6q0zxpsA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_110814_600858_DC6A90D8 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 Linux-sh <linux-sh@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IEFtIDA4LjAxLjIwMjAgdW0gMjA6MDAgc2NocmllYiBEYW4gV2lsbGlhbXMgPGRhbi5qLndp
bGxpYW1zQGludGVsLmNvbT46Cj4gCj4g77u/T24gV2VkLCBKYW4gOCwgMjAyMCBhdCA5OjE3IEFN
IExvZ2FuIEd1bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4gd3JvdGU6Cj4+IAo+PiAKPj4g
Cj4+PiBPbiAyMDIwLTAxLTA4IDU6MjggYS5tLiwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+
PiBPbiAwNy4wMS4yMCAyMTo1OSwgTG9nYW4gR3VudGhvcnBlIHdyb3RlOgo+Pj4+IFRoZSBtaHBf
cmVzdHJpY3Rpb25zIHN0cnVjdCByZWFsbHkgZG9lc24ndCBzcGVjaWZ5IGFueXRoaW5nIHJlc2Vt
YmxpbmcKPj4+PiBhIHJlc3RyaWN0aW9uIGFueW1vcmUgc28gcmVuYW1lIGl0IHRvIGJlIG1ocF9t
b2RpZmllcnMuCj4+PiAKPj4+IEkgd29uZGVyIGlmIHNvbWV0aGluZyBsaWtlICJtaHBfcGFyYW1z
IiB3b3VsZCBiZSBldmVuIGJldHRlci4gSXQncwo+Pj4gZXNzZW50aWFsbHkganVzdCBhIHdheSB0
byBhdm9pZCBjaGFuZ2luZyBjYWxsIGNoYWlucyByb3VnaC1vdXQgYWxsIGFyY2hzCj4+PiB3aGVu
ZXZlciB3ZSB3YW50IHRvIGFkZCBhIG5ldyBwYXJhbWV0ZXIuCj4+IAo+PiBTdXJlLCB0aGF0IGRv
ZXMgc291bmQgYSBiaXQgbmljZXIgdG8gbWUuIEkgY2FuIGNoYW5nZSBpdCBmb3IgdjMuCj4gCj4g
T2gsIEkgd2FzIGp1c3QgYWJvdXQgdG8gY2hpbWUgaW4gdG8gc3VwcG9ydCAibW9kaWZpZXJzIiBi
ZWNhdXNlIEkKPiB3b3VsZCBleHBlY3QgYWxsIHBhcmFtZXRlcnMgdG8gZm9sZGVkIGludG8gYSAi
cGFyYW1zIiBzdHJ1Y3QuIFRoZQo+IG1vZGlmaWVycyBzZWVtIHRvIGJlIGxpbWl0ZWQgdG8gdGhl
IHNldCBvZiBpdGVtcyB0aGF0IGFyZSBvbmx5Cj4gY29uc2lkZXJlZCBpbiBhIG5vbi1kZWZhdWx0
IC8gZXhwZXJ0IG1lbW9yeSBob3RwbHVnIHVzZSBjYXNlcy4KPiAKCkl04oCYcyBhIHNldCBvZiBl
eHRlbmRlZCBwYXJhbWV0ZXJzIEnigJhkIHNheS4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
