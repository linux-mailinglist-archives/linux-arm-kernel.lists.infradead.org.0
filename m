Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C4C18295
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 01:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nliQhoSm47tWGGry89oTFMvTTLEoJBsVTFdEqyaSZvo=; b=ENz82euoSyyymX
	rDEeqyo9xdK0PIcvInPr08eaoO7SY1lowuKYGpmhy1k5g1lD35CWmZlPAV0KalD/2saB0a4OnZ9m6
	0Z5CmptF/6Ac5I1pwMEdwTocXfabCoMTf9W1uoeW8+MYEX/WyRlm0i8Wg6FeYS35dOppNzkO8o6Al
	jPxfa/J/n2WZVuFGzyxNi686veMlDr33zcSPuciYxKuJDj613Q/uviKnW1mMnpIaewvVR20vZhEVT
	iRdUgOLbtj8iVBnZgHv9pyj8QV1jxXYA6YITHjaJ53MMb0lpX3TRaE81W9s6ao/8SJkT1wUi3LEtb
	1Sm2RrUtMvjxUyHEAM4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVi8-00035U-UI; Wed, 08 May 2019 23:10:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVi1-00034L-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 23:10:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so151807pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 16:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+LJ0Cn1Gl3738/eaWlowVBGhukI/6ESTOQgJ9l5ewls=;
 b=emG0HjPmMtIxbDy1mRJavqqP+Ml3Y914i4uRgoQIRwviNF54fnhl5HayKi3NJRzygJ
 dIyFgllAOMeHEtGNWSbXpJYStZqnj6WUtST5tTTIBTlXhYZlFnTnpEZ6lvdbvkTFUXKq
 hAMx7By6W8m+cWdFA0Ej6EPmp9lksdcrS3uw6kBXsCE1ATMOCP7Gp9XEakgYxzgbxOTl
 vWzMvH+C6UwCjjFdgxJ9Ze1m405zXBdAyzfzCE9JV+XZ3D0AgDM2RAWe/RWkklhNxOvW
 sCYe1hGlKD8B11I6+kfKT0s+hmal9qhM2haJtC0Bz0jtFyCMSQ3lg0dVgnLKzhtDEJc4
 grMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+LJ0Cn1Gl3738/eaWlowVBGhukI/6ESTOQgJ9l5ewls=;
 b=kQ/f4pObK8J4cdeEm/Bs6iDcN01X/QHlP5SSpf9m6BWudSFtLrpwpPiKSR5qEaMtXr
 df0yjAZSw8aKSgsUdDVgUw8DjmKrPEBe+pPwK44+qaelkDdSiwfffzYrbJK3zVTNVXbd
 KgL0s/OGXKeaF92btofFbYkZh0TFKGoe2gNNCXDkWMemrLWYSaDFN8Df3Q+xgAPB6niE
 lSf26GLWPav/C89JDnAz1K2S+7I3goPdLfcncJvtOjKIKeLDtIx954tXJ6asl6q7U/pb
 lT751TB6fkuZXwkEzcTfNyOOf+eSHYyXAxVS4ADHoA94imtUYs4KY8Rj1Y3z4EZ7INQG
 /+JQ==
X-Gm-Message-State: APjAAAWF/ab7AJuJ61uujzZ+FRpiQ+sXHZZLdaKbBrF8g4K/hQmEjBep
 nixddf0lUddiA4S6W/uK76g=
X-Google-Smtp-Source: APXvYqwuQNwbOiDiZ2cfsPquiOdg62y/kOwmhRURMa7Q5QSdhFbfEdDCJIe7hUK4HDFz2wpB9NOLOQ==
X-Received: by 2002:a65:49c7:: with SMTP id t7mr996240pgs.324.1557357044045;
 Wed, 08 May 2019 16:10:44 -0700 (PDT)
Received: from localhost ([2601:640:0:ebed:19d3:11c4:475e:3daa])
 by smtp.gmail.com with ESMTPSA id w38sm287165pgk.90.2019.05.08.16.10.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 16:10:43 -0700 (PDT)
Date: Wed, 8 May 2019 16:10:35 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Yury Norov <ynorov@caviumnetworks.com>
Subject: Re: [PATCH v9 00/24] ILP32 for ARM64
Message-ID: <20190508231035.GB14091@yury-thinkpad>
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
 <20190508225900.GA14091@yury-thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508225900.GA14091@yury-thinkpad>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_161045_405063_ACF22502 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, Yury Norov <yury.norov@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Joseph Myers <joseph@codesourcery.com>, linux-arch@vger.kernel.org,
 Steve Ellcey <sellcey@caviumnetworks.com>, Yury Norov <ynorov@marvell.com>,
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

On Wed, May 08, 2019 at 03:59:00PM -0700, Yury Norov wrote:
> Hi all,
> 
> On Wed, May 16, 2018 at 11:18:45AM +0300, Yury Norov wrote:
> > This series enables AARCH64 with ILP32 mode.
> > 
> > As supporting work, it introduces ARCH_32BIT_OFF_T configuration
> > option that is enabled for existing 32-bit architectures but disabled
> > for new arches (so 64-bit off_t userspace type is used by new userspace).
> > Also it deprecates getrlimit and setrlimit syscalls prior to prlimit64.
> > 
> > Based on kernel v4.16. Tested with LTP, glibc testsuite, trinity, lmbench,
> > CPUSpec.
> > 
> > This series on github: 
> > https://github.com/norov/linux/tree/ilp32-4.16
> > Linaro toolchain:
> > http://snapshots.linaro.org/components/toolchain/binaries/7.3-2018.04-rc1/aarch64-linux-gnu_ilp32/
> > Debian repo:
> > http://people.linaro.org/~wookey/ilp32/
> > OpenSUSE repo:
> > https://build.opensuse.org/project/show/devel:ARM:Factory:Contrib:ILP32
> 
> This is the 5.1-based version.
> Changes comparing to 5.0:
>  - drop arch patches that has been taken upstream:
>    80d7da1cac62 asm-generic: Drop getrlimit and setrlimit syscalls from default list
>    942fa985e9f1 32-bit userspace ABI: introduce ARCH_32BIT_OFF_T config option
>    0d0216c03a7a compat ABI: use non-compat openat and open_by_handle_at variants
>  - in include/linux/thread_bits.h define current_thread_info() prior to
>    inclusion of asm/thread_info.h, to avoid circullar dependencies (thread: move
>    thread bits accessors to separated file);
>  - enable old IPC interfaces for ilp32, according to mainline changes
>    (arm64: ilp32: introduce syscall table for ILP32).

Missed link:
https://github.com/norov/linux/tree/ilp32-5.1

> 
> Thanks,
> Yury

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
