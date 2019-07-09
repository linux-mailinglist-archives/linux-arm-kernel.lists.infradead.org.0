Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D63463DF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 00:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wew7+IajNASJ6/M0Opum2h2Yg4suhx2uE5dZMgmEeE8=; b=FP/uGtJrnr4uQo
	tOz691ZDDv3ky9HdFXo3bW23xrEgYlFS/qmcUYnqPFtvOkkj2uL3BphJfWpkB01lYykCcd5rtuP5M
	u7160FYfna08wHQvYHiF1IitzXnIj+fbzI2xlEf5wYeEk5W3aEfn+8cB36lgczD+k8M765cz9fG5B
	2BEqI8sf1GFLpXA5RqJvAnAV1Z2Sd3+8rdYncWaRH+rjERXlbVyD5UYhKcxSL1vIqAahqC9XfpSoz
	xTxkCvYcDIxt+sUDySqf+OlU21ked5Kbxx/3aVeywSRLzM84wwz3uTtWcpBI8u2WkXaFEr5mKJmb3
	5ByCi28gGHUQHVIssiHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkypA-0000vl-0Y; Tue, 09 Jul 2019 22:43:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkyov-0000vM-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 22:42:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id q4so167824pgj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 15:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EnQW9i20df0zx3M6tQh/RXiMIwRQmZ5+hWLyjYA/FdM=;
 b=DD0AQXo7JMl/6LPkpiSOoXmJvtk0qrVJHBq8NWlJXgANSN9l8CYGHoEAX+Cg88pCHo
 TjMtn/CAJnppHWLIVz6IGlqKuRg9mx2vSLtavvneT2TSfEmj31fdZW1RV/CGU9cg9feM
 LFd8+qBvS2j4Q+F4zPaw9pKQ+w2UqTz6Gi9eSWRLAOsCs8/F/nHXqk/RhMtZIImDO9kn
 qoroYl8z7mi57bbK3gsqZQC5gXEFa7fs6PBen9hSbEgYL9D4FLsV9sKg2tuF6f8LmUNa
 U4XZXl4CbpMCgLpIjrWMldNTqZk4e9T6M1phfKBqPUCln+P90FeXwVX5AuosNREIy2vd
 X4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EnQW9i20df0zx3M6tQh/RXiMIwRQmZ5+hWLyjYA/FdM=;
 b=em9ya+WKmARofYQf4Gv4L5Uxqv6bZ7EJS4WssD5jpKAL++3PlHGdkKnUexfCO+6FYV
 k1vEGAbhEMyijRggReg4PDK3rhfuRBz8eCFX+YQ0NNtzDucUaz9rnNNtzAXZKaAQGlXW
 Qq2nJUuKWva8+00bp5NeZJPOdjQaj+BWrh/9jEaoR8BSN5/hw9YmLidE1aT7LWUpwc0m
 bTcRqRqoGV9JEz3uPAcGWRjGQSSBvXYgM1oI3S+LXj5U28HoTB8MbQdReRsZv0B0zccv
 1GFJ+mHLHLj1qQtxmjhXscidO7sY/aVeCDo86nxHdeBZUQ/87mlhBItzW1bPLLdYIxsK
 NClg==
X-Gm-Message-State: APjAAAU7dgkFxrMhdEalHNNNe/5xcrjbvGKDyv6eJG0zisDMliQmKQ/1
 Mx96ncF1M4ltC+YfBvlU8KaWJAvguFE=
X-Google-Smtp-Source: APXvYqzWIHWAc0izqtDS4qxFCC/slE9GIKp9Zy4uf+1dCpoSZl/0jGEsHCMr1DHfkCHmu5CfiqPWOw==
X-Received: by 2002:a17:90a:20a2:: with SMTP id
 f31mr2745143pjg.90.1562712163888; 
 Tue, 09 Jul 2019 15:42:43 -0700 (PDT)
Received: from localhost ([2607:f140:6000:1f:f5fc:878f:592:306])
 by smtp.gmail.com with ESMTPSA id t9sm141136pji.18.2019.07.09.15.42.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:42:43 -0700 (PDT)
Date: Tue, 9 Jul 2019 15:42:41 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <ynorov@caviumnetworks.com>
Subject: Re: [PATCH v9 00/24] ILP32 for ARM64
Message-ID: <20190709224241.GA28503@yury-thinkpad>
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516081910.10067-1-ynorov@caviumnetworks.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_154245_609389_9F03C5ED 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yury.norov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
> 
> Changes:
> v3: https://lkml.org/lkml/2014/9/3/704
> v4: https://lkml.org/lkml/2015/4/13/691
> v5: https://lkml.org/lkml/2015/9/29/911
> v6: https://lkml.org/lkml/2016/5/23/661
> v7: https://lkml.org/lkml/2017/1/9/213
> v8: https://lkml.org/lkml/2017/6/19/624
> v9: - rebased on top of v4.16;
>     - signal subsystem reworked to avoid code duplication, as requested
>       by Dave Martin (patches 18 and 20);
>     - new files introduced in series use SPDX notation for license;
>     - linux-api and linux-arch CCed as the series changes kernel ABI;
>     - checkpatch and other minor fixes.
>     - Zhou Chengming's reported-by for patch 2 and signed-off-by for
>       patch 21 removed because his email became invalid. Zhou, please
>       share your new email.

This is a 5.2-based version of series.
https://github.com/norov/linux/tree/ilp32-5.2

Thanks,
Yury

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
