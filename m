Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0597F7F7C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKSw4YQFmaS5/kwApKkoxxd9hj6wgv7+vHfiE3bdsu4=; b=GCfDj1zseFtbCd
	kHe5PBL9Aih2+zf8nehOxvMl64qBiv0x9eHTJp/HSOLGu1YZBvNWMX/lCBz+mXtcM8yAaGycnBSkz
	8Vy/gqL60Hq0C+QQ4BkMnN0YxlxP0ARenkVmtNJKhVC0V5GjKNzXNUbyCUkb+KnPHkScShgvq8YDi
	J0n2nq9ZO99mckf9OpseDYfpwtH63U9xKoffL2CElNX50Jp3qVbnTmboHjRMWepptuVmHfwqWl1/T
	sxw3tzBn7OyBVX5niYh5EtNxHHHTL6kurQvj/WGSoY8P/5RBn/DBH7ePG9DwWBNB5pssKGeuNxMnR
	ur4W+buCffBVVVL2F8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXFT-0007jL-Pg; Fri, 02 Aug 2019 13:05:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXFE-0007Vu-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 13:05:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so52027368wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 06:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=il2Ej3vHRliPEn6sqXO6sZuqcYtp78kT2DJDKX0yHiY=;
 b=D3PJqvXkehUgJ7EFnE1gNmRspFqaGcYW4guK1N6q7nRPkAxFFE7rj2vbbVHaVAKqmi
 q05/TUKmrPFhyIt4LsJBS/nnfDAqxrBtE59osyWVEdvYNYZcIlDRin0/OXKTldzAftr5
 lLhE7vi2uhlWxG6ccEomevf4GHgds/jY7sID9dZZR4Tus2brra7qTlTK6LnGbb+0HfEo
 gMWAmrlWbD+ArRDbEj8aPFHlEDIB7OtBghqX+qm9JCERxyvezWAOto7rmpQtGKiwbus8
 T/GtpbYupujhuzSxXGHAwafwUEUMxz2xeWmhTeurmadWEihvTOkzUoZWKUmWfgxI9ZXY
 ilYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=il2Ej3vHRliPEn6sqXO6sZuqcYtp78kT2DJDKX0yHiY=;
 b=McoS+mj9tbjrbLADC52clv4kgHJU4RLuOBQIlHG5DbwL1ldbAo8u+Gxp7tQwLxQwmo
 xYGF5Uy5SNtceViRDTeOIKMpJzEZ3WsPuIN1pB5r/qv3jR09b0VS/PMeWJftO4EkZZVr
 jSq2WA5gQDdsXTZDQ2S5me8aTnjiFtzP2KpVkh8lwOA8vf+IgyDlWyJMg+1vcpasRMiI
 +6KQqYcLSVAqOfWqXTEuekfXDOiSJQ2iLOuhBh6pqfjVY2IZRypZPCHoL4Zd68tqgLs7
 odniMwqwYE1UOYHumKTq58uZWKDsXqEJnJ8z4E3kGg32n2pEFpmwzhul7SYHbzhbcuDO
 YS+g==
X-Gm-Message-State: APjAAAXgz2eYrW/vMwjYK7iG3PcxswsN1q3ypxbybmCJ0WfuoYvxvo0B
 ymHAuidUvnuOr0vZEzcOKc0=
X-Google-Smtp-Source: APXvYqy6Xh0VOvj4zV+m+M+mewFsvTNPkf1aVgulz9pxWbDZ7xtEsGCJplXZliZM/ojiTUAxS83E3w==
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr70067056wrn.324.1564751114494; 
 Fri, 02 Aug 2019 06:05:14 -0700 (PDT)
Received: from rric.localdomain (x4e375ad3.dyn.telefonica.de. [78.55.90.211])
 by smtp.gmail.com with ESMTPSA id
 y7sm55067297wmm.19.2019.08.02.06.05.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 02 Aug 2019 06:05:13 -0700 (PDT)
Date: Fri, 2 Aug 2019 15:05:11 +0200
From: Robert Richter <rric@kernel.org>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Message-ID: <20190802130510.rd4uyndtqlcfdhtm@rric.localdomain>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-2-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801034634.26913-2-jeremy.linton@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_060516_206398_D02A6AD5 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rric.net[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.07.19 22:46:33, Jeremy Linton wrote:

> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 9426b9aaed86..9d0e20a2ac83 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -1302,11 +1302,16 @@ static inline int lpit_read_residency_count_address(u64 *address)
>  #endif
>  
>  #ifdef CONFIG_ACPI_PPTT
> +int acpi_pptt_cpu_is_thread(unsigned int cpu);
>  int find_acpi_cpu_topology(unsigned int cpu, int level);
>  int find_acpi_cpu_topology_package(unsigned int cpu);
>  int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
>  int find_acpi_cpu_cache_topology(unsigned int cpu, int level);

All those functions (exept hetero_id) are used only in
parse_acpi_topology(). So how about creating a struct with thread_id,
core_id, and cache_id (and hetero_id (?)) and have a single pptt table
parsing function that fills in all of this into that struct? This
simplifies the api and also the code.

This also shows that hetid (see arm_pmu_acpi.c) better should be
stored in cpu_topology[] too and thus being parsed with the other
parameters as well and made accessible from there by a helper.

-Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
