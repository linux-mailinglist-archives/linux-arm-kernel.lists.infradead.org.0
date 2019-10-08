Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EB5D02E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uue3xfd7QqELhrCDwaki+mlY8V/BGN/7D5/Iwzl1RfE=; b=WB6XYihDh/dMha
	uKEJjsCEzEZRxlmiSLIh40gkKZUq6RDJ2T5IVSfCd+ilxMJdnQPuv7PLb6/8AccH5eGQ67Q4VrFvA
	L2oQc0vzrhvX/T3PD+orzyTkHkOpHqMYuaXI96vRnK+VEQeQ2dSFcQHhTS2mVWQOnSVKyA4T1qLUS
	B7VDhS2m9ijWEQDjqA464buCnEZEcdhqjRJZFJDyVzTHRqGjq4Y5mCORld+z0jfxziZnfq2n9Ho1S
	nlZy1UnTNC9VU4rCCbKievzRbyvnSaQ4vAvHU2tnc8JDsXEYagvX+C2koj4drWNp0KUqYdaeQLjr+
	WkrAt48dhjs4NFbiMH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHx7N-0005NF-8n; Tue, 08 Oct 2019 21:34:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHx7F-0005MU-Is
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 21:33:58 +0000
Received: by mail-io1-xd41.google.com with SMTP id n26so254010ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 14:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZuBgbJzoXltmhH0lNq67zyda70EYzZtMbVg27O16d4E=;
 b=hsox7f1O1JhOkCIRKYbrxjgajBPsOSDqi7B1Lgvugxaamtq9i8nHkkuJBUx+fuqpmy
 BAak+i52MGnX+KzvK730xUE8OgRGhRjWhnGkFA0okRMkJZ8lV6Q62WhiPg+6n0vFgHbL
 VCEAwKUPWz0rPth4e7crkTcSlit2voXqJ0ejpl9sJAU7dNLLjT4gqcHH0rIgjJllHUEy
 PhH3RYFcBRHAIgaKfDAF6XcaX/IvuwtFwRKYJ3kZi33kqKQ1pMfAy1jUs6Wj0FZ/F1G3
 kGyRJLvuLqMwxBTP7vx/7G4QtZd9roGDtY1NKikyRwzKqH8JMU5sTbhDnrBfv3XSNB4G
 +aQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZuBgbJzoXltmhH0lNq67zyda70EYzZtMbVg27O16d4E=;
 b=Szshgvqazf2zf9DKNnZjvyqtyrNBSbW5Gj/BVGa0EE/rb0bU1dY6u3ooVrAur2kApw
 x0sGTCDdLu3Yv6IFbFlVKyUDVoyzy7gFhxWGiZpNw6WOO8qRLs7ZtXv2FRqnTk6ccQH5
 PZKfUpOPhW00RcJsos8CKIyEwcZSnBVWU/oyRfgfN3xbw0/IswBAxeTXM/8agRj7E4O8
 PxZh32gif8DALRMpOXknbXSeW5cqOYKpDH0ZUt9hrsOo25Z22Dv+9C0MyS0VzckmUu3L
 4MsW8YQelpAHaAW8kpBZqeEzc4Tw1szD5a82StSnrUt8YSie3JfKQzhaWWse139mkaZb
 12Qg==
X-Gm-Message-State: APjAAAUgcmJd1TOaYamyUfmvvvujUkN/utfgjYS6lqXoBxgv69CBM/W/
 pRmJpPgP7M7Jc8yqTUikUl8rHg==
X-Google-Smtp-Source: APXvYqzsdLumb009bSD2b+NTzNpdbo2nocSDdqyWA/rpF/UqKzncKB6JaSotk0ttAt3W1vuG0mXL5Q==
X-Received: by 2002:a6b:c701:: with SMTP id x1mr331218iof.162.1570570436145;
 Tue, 08 Oct 2019 14:33:56 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id c8sm107904iol.57.2019.10.08.14.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 14:33:55 -0700 (PDT)
Date: Tue, 8 Oct 2019 14:33:48 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Steven Price <steven.price@arm.com>, alex@ghiti.fr
Subject: Re: [PATCH v11 07/22] riscv: mm: Add p?d_leaf() definitions
In-Reply-To: <20191007153822.16518-8-steven.price@arm.com>
Message-ID: <alpine.DEB.2.21.9999.1910081431310.11044@viisi.sifive.com>
References: <20191007153822.16518-1-steven.price@arm.com>
 <20191007153822.16518-8-steven.price@arm.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_143357_651657_C558243D 
X-CRM114-Status: GOOD (  11.46  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 Albert Ou <aou@eecs.berkeley.edu>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Palmer Dabbelt <palmer@sifive.com>,
 Arnd Bergmann <arnd@arndb.de>,
 =?ISO-8859-15?Q?J=E9r=F4me_Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019, Steven Price wrote:

> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
> 
> For riscv a page is a leaf page when it has a read, write or execute bit
> set on it.
> 
> CC: Palmer Dabbelt <palmer@sifive.com>
> CC: Albert Ou <aou@eecs.berkeley.edu>
> CC: linux-riscv@lists.infradead.org
> Signed-off-by: Steven Price <steven.price@arm.com>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv  

Alex has a good point, but probably the right thing to do is to replace 
the contents of the arch/riscv/mm/hugetlbpage.c p{u,m}d_huge() functions 
with calls to Steven's new static inline functions.


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
