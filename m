Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B765C303D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 23:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4k6V6f96qRD1oh5neaFKAfG/L8x2qinUeqT22ew05Q=; b=oWzZnJExcqJ0Kn
	dO+ZE/7NOHw5r50Z1sDfPr6zX2caRPjpSABmb78xA+ANEk+DsE5SojuAlS0S+L0iw1M0tRhTG/M5M
	IZKQpDnG/YNhPdCNrtYfBRlF5Lk0i8NedzMSiajVW2VnXTA4cvN7meJz8aiX9dnmumm7x7JrUWOJn
	UgScznek1FZudqg2ujK0QUBkVSVmNsfpf2zUoIGo6Ckod7YkKbYfIGiQV4N0d70ze7Oqk/DKq8G0+
	Hk26BcP6x+iYBu4dAj0vl6En8CmsOwAePvw81qk9o61xg2rQsyZ4zCxyJY3WdVkroV1Qcuz5QtxrS
	85EevQea1v+BjFfi6W2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWSGj-0005CN-9y; Thu, 30 May 2019 21:07:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWSGc-0005BS-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 21:07:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id p26so11125467edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 14:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pv5CB4WwZj0N9C+rEj8/2lRh5EGUHdn0uj79m0rM0oo=;
 b=VEU5u5GDrcgB8PRAclAeTaxHNWRXxNgMKQuxMFD2SFRizhpvwX2vSFrW58YKLvKdGO
 eVuKFZtXyc1RHb9iKevkl1RKESa8X+H4JsE7X49/wDWGTTF1++R+Oi6bCGLu0qiMFC7q
 hWo0t+OsCQNb5YJC5V+PLRuPaGXL4SH2RlhfYwJV76d+wtYGM87zkTYGJrmM5dahxIDn
 qHnxrRKHJ981k6zXutXR8rLnD27RwSUR9gdS6t3qdzrPraAAqPEeILMrt+Xu+DkaI8aO
 CnVCUN2x67n04/yYkoMoVaF4yzXSA1yTow1K1ywH4DmLZh4o+OnP8FcuMAvRu6sLPZIL
 UDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pv5CB4WwZj0N9C+rEj8/2lRh5EGUHdn0uj79m0rM0oo=;
 b=oFc6td4hS4LVUetNzns6S5iSspRNsZcAcFhgu0dhFJqCTka1XTnQX0e6yd7Sm7V14C
 R+wd9JbZh1R/5eBGgJGdIpTJ546WwiyVrklzAKxjMWrRBEMuO2m+foKUQbeiCIDNxzXa
 U52eAAD3aNO0zrpv0kHVM2733LCsFyxVyuj6W2wKbY7sI2IigBKslj/5jWA/D6mRzCJO
 gtvjcxDhgNS87r5xD+sWmSf6WUH3fW71+c/jVhjkZLRgvTJcsOCMk57+48iCTlib9s/o
 xj0kk+a24cKDSNW1ckdc87KOYHhuM2mwa+gJaueek1Z+ixYqlCbLGqLC2j8zpx3mbhmM
 GA1w==
X-Gm-Message-State: APjAAAVyAM/kDikgPQa7Y+nxoa/YxcZAU3luSSAn7v37DbYXsFrFPsDu
 +Q1/fmLnnjaMQQzp1O/0onjplOqZtOe3zjXFXg0ALA==
X-Google-Smtp-Source: APXvYqzIBqcTjn5yiKx6Vr6nLGFPUVRyPMd7kuo7uA8Xmjn8HuSs90QeWcqYdxDxX2LpwL8i4qi0lXPOMCD5KRVUoAU=
X-Received: by 2002:aa7:d711:: with SMTP id t17mr7195382edq.80.1559250436307; 
 Thu, 30 May 2019 14:07:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-8-david@redhat.com>
In-Reply-To: <20190527111152.16324-8-david@redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 30 May 2019 17:07:05 -0400
Message-ID: <CA+CK2bBLtZL8qxsjJt-tdaOraJCbDYfH2cbQ1ABJJ8hYif8LiQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] mm/memory_hotplug: Create memory block devices
 after arch_add_memory()
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_140718_629217_059346C5 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, "mike.travis@hpe.com" <mike.travis@hpe.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Mathieu Malaterre <malat@debian.org>,
 LKML <linux-kernel@vger.kernel.org>, Arun KS <arunks@codeaurora.org>,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm <linux-mm@kvack.org>,
 Andrew Banman <andrew.banman@hpe.com>, Qian Cai <cai@lca.pw>,
 Igor Mammedov <imammedo@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 7:12 AM David Hildenbrand <david@redhat.com> wrote:
>
> Only memory to be added to the buddy and to be onlined/offlined by
> user space using /sys/devices/system/memory/... needs (and should have!)
> memory block devices.
>
> Factor out creation of memory block devices. Create all devices after
> arch_add_memory() succeeded. We can later drop the want_memblock parameter,
> because it is now effectively stale.
>
> Only after memory block devices have been added, memory can be onlined
> by user space. This implies, that memory is not visible to user space at
> all before arch_add_memory() succeeded.
>
> While at it
> - use WARN_ON_ONCE instead of BUG_ON in moved unregister_memory()
> - introduce find_memory_block_by_id() to search via block id
> - Use find_memory_block_by_id() in init_memory_block() to catch
>   duplicates
>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: "mike.travis@hpe.com" <mike.travis@hpe.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Ingo Molnar <mingo@kernel.org>
> Cc: Andrew Banman <andrew.banman@hpe.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Wei Yang <richard.weiyang@gmail.com>
> Cc: Arun KS <arunks@codeaurora.org>
> Cc: Mathieu Malaterre <malat@debian.org>
> Signed-off-by: David Hildenbrand <david@redhat.com>

LGTM
Reviewed-by: Pavel Tatashin <pasha.tatashin@soleen.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
