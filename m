Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFFF6740F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 19:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Deut49gzLHwiIwR5V+hkbjx9Lv2Q4svnP+OT0nxiWiM=; b=UHXLI4MRN8YJkG
	z/jBbLpevJlgrzUcQ3yB538/j2GPXbcYaXHCMSyXmRPhrEfq3yrJSx/0mzLeUMx8BbY/4kF7iS6xd
	Qb+NB69QsR2QcSJV/p7mgZNS2WCMl+kCC3OqK9+YSrv/1ZX9gO/mQwx0DvoxwgXNH/qbEGosQB2Ps
	s/PO64I4AlD6tbA3pB96cQ17kBMsnlE8YG40ahnwkufOu27MR6UWnjGAsW6WhU0+6Y3YxTz86bMsP
	AxVSzjc21s9LV72C7wX1ITXZpOsBgzxdy4hWEu7qSUy97ZOxTGW8g4AWsmR2Lk2Np2idTVCusP3WW
	08SdDF+q4Tn9JjbY1Hnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzAQ-0003Vp-9E; Fri, 12 Jul 2019 17:17:06 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzA5-0003Tl-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 17:16:46 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so21875423ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 10:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iXtdpQd8nnhs4LGXKgAYAQvupi8/WOX4e9Rzt2Cr9CU=;
 b=YT2j/iU40MxuBBXO9lb5IQbBE5jrkfnrRY9xLOdGAaikbSdl2YU6uISPilY0ddfipw
 SPtU62qkG3Z5Z3Ogc2azK7ti8QpOISRgUsmIIABxcIsT1X+rWxrTo6IzUEhlO1bsVrAX
 IveXj25vZsg7hNSxNfVrqRhQ0scEmYofrPVcosq7oaf1o1lzV41Pxc/GvnY5xxtmwY2K
 fevC+u/BdbIWXOzlfkUy2QZuiBwhUm4UUuihyenGCKdHe92z/Ub/e3biIlISfJPE1eXI
 plfC/5M62ssyRlos7GBsgbXMMsn21QEaFARhtqdvHLFp5TTp0Ko2bKH5YUaAl4pEeEEd
 ub5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iXtdpQd8nnhs4LGXKgAYAQvupi8/WOX4e9Rzt2Cr9CU=;
 b=OC83OwydFNfyM/2yZ2wVaYgFL7mvPij+4CONi6RPbZVB8jKXHc9hLugL6l7nFXaV5U
 GohS2GrI42hiED7Pq1+P8q1cN1TGJVCTmqCCCORjxiGk6m+c9Zo/seM9sYlOPFlV+eSg
 tbFsBk0arhYZNRnymhodwSlSWda3H2AzVbe1MBKDGJlaeG5wXY+0ooSokaLJSpaMsijg
 fAcXZgMyuSaKkXxXSSPvZmacWAMXhqcJDDAGmQ1yENHB8IZiC/m/EsiHlCkF1QYHpyDO
 o+pTXOilqrAAYtpBS2YhTIth8uvk9JF1vYFLG8p8qjnDaLDtCoY3dGwqOWjw/AmD5d3X
 mnHg==
X-Gm-Message-State: APjAAAWPDig8vtLUEN0rfTXL5u2Q737DmEdkFXHqg8WPASvcrZF0KswQ
 5v1hFjQDpPLpfWKDoxuLFX6nQw==
X-Google-Smtp-Source: APXvYqxp30Df9fi24c2tRwl/AdFAuK1PmmHMpS9VUIm5CnVMt7nYgcOw7iNzakTGt5JdeoZaczA5TQ==
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr12058493ioq.50.1562951801913; 
 Fri, 12 Jul 2019 10:16:41 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id c81sm13381678iof.28.2019.07.12.10.16.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 10:16:41 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:16:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V 
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_101645_195425_7980B3F2 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Folks,

On Thu, 27 Jun 2019, Atish Patra wrote:

> The cpu-map DT entry in ARM can describe the CPU topology in much better
> way compared to other existing approaches. RISC-V can easily adopt this
> binding to represent its own CPU topology. Thus, both cpu-map DT
> binding and topology parsing code can be moved to a common location so
> that RISC-V or any other architecture can leverage that.
> 
> The relevant discussion regarding unifying cpu topology can be found in
> [1].
> 
> arch_topology seems to be a perfect place to move the common code. I
> have not introduced any significant functional changes in the moved code.
> The only downside in this approach is that the capacity code will be
> executed for RISC-V as well. But, it will exit immediately after not
> able to find the appropriate DT node. If the overhead is considered too
> much, we can always compile out capacity related functions under a
> different config for the architectures that do not support them.
> 
> There was an opportunity to unify topology data structure for ARM32 done
> by patch 3/4. But, I refrained from making any other changes as I am not
> very well versed with original intention for some functions that
> are present in arch_topology.c. I hope this patch series can be served
> as a baseline for such changes in the future.
> 
> The patches have been tested for RISC-V, ARM64, ARM32 & compile tested for
> x86.

Since these patches touch files across several different architectures, 
and thus really should sit in -next for a while; and because it's late in 
the merge window, I'm planning to postpone sending these patches upstream 
until after v5.3-rc1 is released.

Once v5.3-rc1 is released, let's plan to get these patches rebased and 
reposted and into linux-next as soon as possible.


Sorry for the delay here,


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
