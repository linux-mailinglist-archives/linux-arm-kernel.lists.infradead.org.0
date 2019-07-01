Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A45C33F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 20:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VAr1Z5+cEdF7ReVqYH84WloMfRDImDIy8wpcMWjQgE=; b=SCU9y4pu+sIMAQ
	K1Ur3JMfn2WIIn3JDuy+VbzhZpNol/WsN3uVNoai3MxarSXzVgMV1r2u76cIfkT9/BGu8SM39Z3xc
	zbvbXpOj+uIM2k/+rczvRm+5VDvfRm0B4lGIy4UeU97rjD58Chst0OXdvB99EoYvaegKTR9KONp9r
	JfDkogtrxvngpxgTOzkFSHuay0CEalDQXYEceEBbNRgPd8wXjveF+jwrGyNzg06tUymQKtYyumwik
	bQqZfuFllRXBOh4c53NyH/Rh4rNqcG5hR2QPXfv1X02qV0LAJZo6bTmz6Ie3PpfmD4MjJ2fotrwMQ
	rONkxlyX50JN00LNO8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi1Pg-0002PI-VV; Mon, 01 Jul 2019 18:52:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi1P7-00028h-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 18:51:55 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so31195493ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 11:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=DYrhizvtIbWqHkjv2BkSfsRwmy8RzQ5cYYvDtrQv3lo=;
 b=KZy85/4tTSnfbHIjMO+VoX0+BzXfz2fZQXO03A8+ppgNGdVN1iiRyi0w65nxrfVUZl
 LepUYO6VLS+jWb4ZEZIP29HDqaCzsslQpNBhXbiOlIoxgSn2uuIl4ssVV9xuCXFt8tUT
 TL+Z5XhuSUaJjo0+lMAckhVGAYw8uHtOm4kXAp4cKTJsd9jeJqnnFl8VS6x5iUdwAk4o
 bvnvtEKAJCVVT91seyxUHFcUgBIhvWFC6h1heJaNnYcHpP3SG2SKIXfdKgofJ/rKSkPj
 aYy7DtYis+jalc6jZkzq+JsJ81egv/yIQivLKN+bVoPVv6YsKV8EOVJwFQr95bRlUiwD
 dPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=DYrhizvtIbWqHkjv2BkSfsRwmy8RzQ5cYYvDtrQv3lo=;
 b=H/rn5oAgOli0JSnTqebVzOEim+z2d1m8VOBPlLTRMQC0ZP1tcrzZ8wKsvRKLpF5KO0
 7U3lpbktrznSLHsZesjmSqLaHPuuaG5mLPIjX9sOOkz6GnDCc9gAHG1ykw3DkwDFyVxt
 tXHmh0et50ltEyKXKXXuNNr4N9hQ1JNQwpYeWjxrmhiuEWdA4iwVITtHbqQF171ZBy38
 MIom6tBdsMRztaNm+Ftzt0GAvwhHSNWg2gdhiG0gZ30aNHAioulCU3piNNSU7Vb8v8rE
 9anhdCxEuIf89W3B4QLs4uwyjjfMl4QdnA8mD5fgTKGDtDGpkTblRcSRmdQ8R3yo+ddj
 Ho1A==
X-Gm-Message-State: APjAAAUtr4kKJDNul4N+rljROB4brUBDd8n6Wu+klXyXMxMnFoRFr6Xb
 4aMHbzLHxY46g6D6U8BmqpGi0g==
X-Google-Smtp-Source: APXvYqx8evMbqCB5mcUZCJSlJkUvQvODT7P9GsKOEHqnl7p98ygfjhRMioyAwvw2nWgeKnX/BBIurQ==
X-Received: by 2002:a02:cb96:: with SMTP id u22mr30802401jap.118.1562007111969; 
 Mon, 01 Jul 2019 11:51:51 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r5sm9977978iom.42.2019.07.01.11.51.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 11:51:51 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:51:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>, 
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 1/2] x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config
 in arch/Kconfig
In-Reply-To: <20190701175900.4034-2-alex@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907011146550.3867@viisi.sifive.com>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <20190701175900.4034-2-alex@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_115153_739215_48A2CAEE 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Alexandre Ghiti <alex@ghiti.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Hanjun Guo <guohanjun@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Catalin, Palmer,

On Mon, 1 Jul 2019, Alexandre Ghiti wrote:

> ARCH_WANT_HUGE_PMD_SHARE config was declared in both architectures:
> move this declaration in arch/Kconfig and make those architectures
> select it.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>

Since the change from v2 to v3 was minor (the removal of the "config 
ARCH_WANT_HUGE_PMD_SHARE" line from the arm64 port), I'm planning to 
apply your Reviewed-by:s and acks from 

https://lore.kernel.org/linux-riscv/20190603172723.GH63283@arrakis.emea.arm.com/

https://lore.kernel.org/linux-riscv/mhng-4d1d4acb-f65f-4ed4-bc86-85a14b7c3e16@palmer-si-x1e/

If there's any objection, please let me know as soon as possible.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
