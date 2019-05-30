Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967D730152
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 19:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVREHOzkn1edekZNz5XhU3e9xtMDJxveCpp+VZscPOg=; b=QkM5/ybkUZVfHN
	mm9IlSt68T53D5X+1WrgEoxJGrnSL0NCn9rWekA647ZUPHmr/l0aTBcKsR9Ecq7tBtQgHqy4YGFnL
	iLo+8wRA2E9WMpsNtt+Pl+f5V94B0VUas5q37khW4U/cUzTqmJH9Azpd8ROKqIk3N3fav2aF5ZWlL
	2D+C1oiZH4aaBUhULmMcPvo2h+9ngcarVduQGSr/aJo7lPH8fcLFCMpBJ/FT7/kd59QtKvYSzQmaM
	PsEGIyNi6E9y6mdCQcpwLvpgAy07ZHYCuthTw4Xjjw7Afmb/68DLdC4s2O4WAMhZi0vswC3qwA7ra
	VpnP4nIQI0OlJRFO1grA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPFu-0001JH-Un; Thu, 30 May 2019 17:54:22 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPFe-00015L-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 17:54:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id g24so674866eds.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 10:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QlYOqgGgItn5hucl8pZOYZeRpF+/j+lyZEX0rN4v98g=;
 b=LYlHNdAV/SNBSa2OU1jdHVGlps7i+f4ToRjbTl9D2wFgpxOnqYU6L0tHRyBKqXN8PS
 bA20mdUlqFwilW74sDweWwxCRjLlo9fuLRBJptvvxIq+vYgZ96pbtG7pADnxLsZ5u6Ed
 xa3CEpbgxATF5V1HpcSCSGovWdI7wIoti8PlUbQ7uPq+eFKDXrzPzbDKxcOs/rbfxHdW
 3wcYT/Y0vSetxxTI7PMr+4dEKBZMAaPHqAJ4cafp6No1HT2gZdPpzYTqxY9BWFqu5i8v
 c8SEsw9ZPMpf8Cmj587OTzTy+La1UCwO9pu1FiOK6SpUJ9aeYM0ra8QLMjn3GNWlh/JN
 PXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QlYOqgGgItn5hucl8pZOYZeRpF+/j+lyZEX0rN4v98g=;
 b=rVdyBW9fFppdCcClgDaw14Ls7nVM54rfGtsp7SHGLuG6OWdiQxzA+XCktJobi5a2O4
 dG1ud41FCzn+KfFVgfnhBMD2ifo5uGDwL/oBGbMRxONSAkrXm/ODhXUq5+Jv+ecwb/id
 zWqVFpUHnTRONDCFu1qS0HANu2B7+UlbTiXX45Y3lr7Hy9xkiZx2NVS6QXOs45kscJbx
 Hksv1cb/CmLdOMgx/enG79bIefetVzRHILRznP3WKQmm2MVCq5ACRE1IfbY8Er78vCBo
 CYL3hbZT4dy+AvNP2UTGolexVhalU15T8ZR3W6xBuRoD/WlenPxeYjLayL7lBD7d5v0v
 khPA==
X-Gm-Message-State: APjAAAVAbY6vVYro/5gS3lPaee656sbm1PpeV8zUAYn1LX6XRyjBG/Jx
 fXfXd7wKHEzVTPhUvfdJeQhdb8NwiiYFaEomUtKpIA==
X-Google-Smtp-Source: APXvYqxJpnEky/HQoCMiqMXy5GPOyKza2hJ+52II0wfo1HpL9rVDxjuGoL3UWKguhdIYjncFwf0xnjjAWLfB3JRkG5w=
X-Received: by 2002:a17:906:a354:: with SMTP id
 bz20mr4932536ejb.209.1559238840892; 
 Thu, 30 May 2019 10:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-2-david@redhat.com>
In-Reply-To: <20190527111152.16324-2-david@redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 30 May 2019 13:53:50 -0400
Message-ID: <CA+CK2bBW4vH+J6bam1dOxjSwFwvoOEok0VNO0n_JjyHxpkGj+A@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] mm/memory_hotplug: Simplify and fix
 check_hotplug_memory_range()
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_105406_778038_A5701392 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Mathieu Malaterre <malat@debian.org>, LKML <linux-kernel@vger.kernel.org>,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm <linux-mm@kvack.org>,
 Arun KS <arunks@codeaurora.org>, Qian Cai <cai@lca.pw>,
 Wei Yang <richardw.yang@linux.intel.com>, Igor Mammedov <imammedo@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 7:12 AM David Hildenbrand <david@redhat.com> wrote:
>
> By converting start and size to page granularity, we actually ignore
> unaligned parts within a page instead of properly bailing out with an
> error.
>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Wei Yang <richard.weiyang@gmail.com>
> Cc: Arun KS <arunks@codeaurora.org>
> Cc: Mathieu Malaterre <malat@debian.org>
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>

Reviewed-by: Pavel Tatashin <pasha.tatashin@soleen.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
