Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4335F94A06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reccmG8C8UJI2S5qMOQb9Rh0vRF/jYR7SoNblAH3XeA=; b=T2YJgLB7K+6tgo
	BH1dwZyc3KUY5OY3ZNL0uLQEVEae/oCAnGZzxt0Xb7O8tLjz6W9ZX3d1EiwgSheWOCejBYi8HAkjP
	chfACrix8GKB2dhd1fFnd4gab/0AYvffPAOsfO438jeWWhOHVZHQDjOPuY7hlyci8xyInyLpX8+MW
	BQ1B0m/wiYbiH1LQwDWSnXf9Ij0nMs52Z8SkaKhL6mD8XbI6jH9dD4g96Xmmx9n5/UlDi5VPrPjaf
	AhK2HgaofQVW87JjtCzlOiQOMEYMLPmXXfvmajDyUdg5OFw9WcR4fQOkabl2qj2JSC5Kazd7v6msd
	5xNFwkLSXwPX8lHLgzdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzkbT-0004JO-OY; Mon, 19 Aug 2019 16:33:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzkbJ-0004HR-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:33:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id a21so2249846edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 09:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yVK+oDacf76Bx/B5cuYpj3efTA3uTCksTraTbtiiMb0=;
 b=ZEMpBjD1i8baVAX/ysJWrVswsclG5Ad98mIeqTE/tdXxI8qBuXPct792egADG2RR7r
 4WqNdNKNoNpDzDDyL8S5UElB1wql/7fcm9FEC9kEb9rR1nmCuc33o1Mu3CGfUOO4vaD1
 fVtFr3LF4sw1xugNbHHRMApJ+dbe8tCgl859HeK8Ezaw612OsfP2u11M5CKtz3i9aYuB
 raHJWrkU32+i55vWzSvZZhUa2Lorjv/Xn4/PRO2V0oFVOxB+GkW2KnO7ujnITNFll6K/
 wXTKtGUMyYu2QqZe/sMjFRDDbes+QqWwm1b95GyQAS45k3C2khb54EAK0qO674IRBVq6
 UlOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yVK+oDacf76Bx/B5cuYpj3efTA3uTCksTraTbtiiMb0=;
 b=dylJXkpylrYMhkMFkofd5UP9vBavztsRZtV+LZEf+JiBGgc3k6SO91P4bWQOTmGctG
 WXK+bqGdXyll+tR1GBQcdB43K7ula/6mwti+NjNQ4uv1OSu88RnYVZin0hYb+06CvxKr
 JjNXe+buWYAIerLeYo7//d2YgrLqFM4nd//egGX6LjROFYOuxV+4B4wk1fb8YlAbncvN
 JU7CZGeYEJcPg9SKwq00Mvx9PuTDfd5kVlYpI7Rgep7CHXz9UIO9JkxuR70QlqCHpXZf
 EAQUElo4xK/IxmoT1Jnsy9fnnwd6hOg1J6yZ5WjgBkEM3zTV15BueXvI7DWZhkKZhna9
 8z4g==
X-Gm-Message-State: APjAAAXP28rrDNJADA3Gmn2SIt149oou8G7GRqdmik3dnnCo84vPg9R4
 lTsCk3TcwD5YgPOBHoRKZqh290DDHFDRErP+REkuuA==
X-Google-Smtp-Source: APXvYqyjbCqvgSjNDeQHl6JxdPMDE41wKcHDp+hgvJVj2Py8dcsk85GHr9ynLPCamRht+oDfymAzPK5UbbwLGbxAp2Y=
X-Received: by 2002:a17:906:ccc1:: with SMTP id
 ot1mr22297087ejb.156.1566232422354; 
 Mon, 19 Aug 2019 09:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
 <20190819155824.GE9927@lakrids.cambridge.arm.com>
In-Reply-To: <20190819155824.GE9927@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 19 Aug 2019 12:33:31 -0400
Message-ID: <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] arm64,
 hibernate: add trans_table public functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_093345_923352_266CF9D3 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:58 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Aug 16, 2019 at 10:46:18PM -0400, Pavel Tatashin wrote:
> > trans_table_create_copy() and trans_table_map_page() are going to be
> > the basis for public interface of new subsystem that handles page
> > tables for cases which are between kernels: kexec, and hibernate.
>
> While the architecture uses the term 'translation table', in the kernel
> we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
> to that naming scheme.

The idea is to have a unique name space for new subsystem of page
tables that are used between kernels:
between stage 1 and stage 2 kexec kernel, and similarly between
kernels during hibernate boot process.

I picked: "trans_table" that stands for transitional page table:
meaning they are used only during transition between worlds.

All public functions in this subsystem will have trans_table_* prefix,
and page directory will be named: "trans_table". If this is confusing,
I can either use a different prefix, or describe what "trans_table"
stand for in trans_table.h/.c

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
