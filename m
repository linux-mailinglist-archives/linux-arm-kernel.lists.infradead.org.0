Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF8818280
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 00:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFX6mWucEPko5WhKY0WEioXs8meadGm/BwCYGi4qh94=; b=jlv+7MxFIXooOH
	/F7JHypF1fWUij3L5daW6ipfv8rGJsmYC0CZoTShpHt5AI71BAgf8g5KFIsl/GXK9z5R5ae19Il/j
	pQT+Cg45LVgjjgeVrqZy2jKvQAzkquTmE5LIEiQnyM7KYKm1sVI1ENVDoizyZwVCcdegmh8PBaVtq
	fxMDFlSFoUzIMwkyHsQB3c6uGJ9gkz3cEin+Xt3ZOZn067kUEBdSjxknyOHzNaAtEanaTQbCvqgai
	CdpihLXivIXxe9pPDqOaYg08XwTv7AlYedCaM+ZH1A6a7puWyUcfBeQYx61fwHgJnf61L8FZeAkX8
	GXVWXAXUQvAqX7nJ+L1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVWp-0006gi-Q7; Wed, 08 May 2019 22:59:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVWh-0006fl-QB
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 22:59:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so144815pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 15:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3skeGRJ5pRr7+D0+GcBeYq1z7ba6TiYFkEy56aNuN4w=;
 b=f6E0Q9JV/oK81qEUGBzLotW8ivaqqSHQj7zCw/2vC4n6WMxqICOe4J18CGHEnErqml
 8wbXgFKBwRG1uwSDnr5Nkn/yCLqp0wlAiItz+AYTS7CWrdy3bMeTFC0yXK4CkYMks5yS
 qQqA5u3k0/MIGmqy5d0sr/1l+9LuLYarLCbc3pZhwmpX2Emen/uTBbGAbtd0Sj5FXEaX
 A3Tf/jGtFYql7ptoRop4ZSC4OQxhjEzN5jZ1VD4upkNn8MJoDEc31FtjJ3ZJmAWtNTas
 B0DgM3KudTDi1acsEkSoFtPV66r3dP+Ak6uPJLO8/hT9sfmFREvZkxJ6qmkjWjC7axjn
 2s/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3skeGRJ5pRr7+D0+GcBeYq1z7ba6TiYFkEy56aNuN4w=;
 b=KoLER6VuPlgKgMh0VC/doHaeagur+qcTYtfb7kV8o1lg0zSSs6J2TsMT+mnZk16EVy
 R4BakMzo64Y2uKDYpXmC+JAvukMaCOjVv7sYaSestpS0oE1TAfs/OZIEwtq/bw61iC7j
 oAKDcNfDL9PrT5kklyYnJzD0zl9nxCVAiTkiPqZwinArHwQoXjlUIPUVhiut2o8A104p
 lfDk8ypkpH76E17qKLxYBVL+IRd/RDdHEC2vAasWpb6EBEXzLAL/YHVJ2MEBDyG3Uada
 iwM7ty4yeFMuVFOrPyBBIP2zsce6Cin2fBhQI+885Pzl7S3gG7FoIRdXf7pfNA00tHTk
 DMaA==
X-Gm-Message-State: APjAAAUxl+twKbdiuQUQSODWSFbwKIdBZZ1gH4TejNHPhdhqUX90uvQb
 Kignk8MJL9H7G6thAwTXuNA=
X-Google-Smtp-Source: APXvYqyrohy1M3ppdW6lU7eKE2owmntyLl4B+K6DHGaWoh7InMPIPpSi5AI1dedYXt/CdhdeAcHu/g==
X-Received: by 2002:a63:6f8e:: with SMTP id k136mr969393pgc.104.1557356342554; 
 Wed, 08 May 2019 15:59:02 -0700 (PDT)
Received: from localhost ([2601:640:0:ebed:19d3:11c4:475e:3daa])
 by smtp.gmail.com with ESMTPSA id i65sm327948pgc.3.2019.05.08.15.59.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 15:59:01 -0700 (PDT)
Date: Wed, 8 May 2019 15:59:00 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <ynorov@caviumnetworks.com>
Subject: Re: [PATCH v9 00/24] ILP32 for ARM64
Message-ID: <20190508225900.GA14091@yury-thinkpad>
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516081910.10067-1-ynorov@caviumnetworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_155903_854643_3828A172 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yury.norov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Joseph Myers <joseph@codesourcery.com>, linux-arch@vger.kernel.org,
 Steve Ellcey <sellcey@caviumnetworks.com>,
 Prasun Kapoor <Prasun.Kapoor@caviumnetworks.com>,
 Andreas Schwab <schwab@suse.de>, Alexander Graf <agraf@suse.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Bamvor Zhangjian <bamv2005@gmail.com>, Dave Martin <Dave.Martin@arm.com>,
 Adam Borowski <kilobyte@angband.pl>,
 Manuel Montezelo <manuel.montezelo@gmail.com>,
 James Hogan <james.hogan@imgtec.com>, Chris Metcalf <cmetcalf@mellanox.com>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Pinski <pinskia@gmail.com>,
 Lin Yongting <linyongting@huawei.com>, Alexey Klimov <klimov.linux@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>,
 Florian Weimer <fweimer@redhat.com>, linux-api@vger.kernel.org,
 Nathan_Lynch <Nathan_Lynch@mentor.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.gcc@googlemail.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Wed, May 16, 2018 at 11:18:45AM +0300, Yury Norov wrote:
> This series enables AARCH64 with ILP32 mode.
> 
> As supporting work, it introduces ARCH_32BIT_OFF_T configuration
> option that is enabled for existing 32-bit architectures but disabled
> for new arches (so 64-bit off_t userspace type is used by new userspace).
> Also it deprecates getrlimit and setrlimit syscalls prior to prlimit64.
> 
> Based on kernel v4.16. Tested with LTP, glibc testsuite, trinity, lmbench,
> CPUSpec.
> 
> This series on github: 
> https://github.com/norov/linux/tree/ilp32-4.16
> Linaro toolchain:
> http://snapshots.linaro.org/components/toolchain/binaries/7.3-2018.04-rc1/aarch64-linux-gnu_ilp32/
> Debian repo:
> http://people.linaro.org/~wookey/ilp32/
> OpenSUSE repo:
> https://build.opensuse.org/project/show/devel:ARM:Factory:Contrib:ILP32

This is the 5.1-based version.
Changes comparing to 5.0:
 - drop arch patches that has been taken upstream:
   80d7da1cac62 asm-generic: Drop getrlimit and setrlimit syscalls from default list
   942fa985e9f1 32-bit userspace ABI: introduce ARCH_32BIT_OFF_T config option
   0d0216c03a7a compat ABI: use non-compat openat and open_by_handle_at variants
 - in include/linux/thread_bits.h define current_thread_info() prior to
   inclusion of asm/thread_info.h, to avoid circullar dependencies (thread: move
   thread bits accessors to separated file);
 - enable old IPC interfaces for ilp32, according to mainline changes
   (arm64: ilp32: introduce syscall table for ILP32).

Thanks,
Yury

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
