Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C571E5AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 01:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy2SEXdR7JlUjeDZL3Sijuyu599P0YRf1DmfJqmvYH8=; b=OV6fSws0OsyyTM
	ZC0YPaKa28/lbjiuVqDMoF4K6TD8811H78eUFnNC1fFkTfyVCPB4j3R2Z10kga4lylILpiGkJKo9v
	SP4WqSMztSgoP7Yt0EbRgKI3+aqgviJ5uBPlL3e3aeQPsy/OtnLi+5Ayso4E2OSPMT9dHlUZH6jRW
	SInMwrr/1ByF7EXVEQ4X2/FQ6mKGf98dfeO6rsutJQ90FqkO0rG33toySA6Zfnqiij74zc9T6dBEu
	tiSjhuEX+GKMQEu1QWJZbtxVzPYS+TIN0lagGiPzaR7HBG0xfb8O2R8vPP1S/NXLfYT9PI80arZtJ
	JIrs1p9G8wNBGUj7WwuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQh3c-0004Nl-7v; Tue, 14 May 2019 23:42:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQh3T-0004Mn-Tc
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 23:41:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id h17so355653pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 16:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DY6OWxXL6Mkjdnz9bKItmOBCwg7lWspCryDrZpJJELw=;
 b=X4mfkQznNYHZpXmFQYc7WK7z6OUmo6Sk25Nz/vjKV2dkhuYPBTUE6ya8Uuvkk/gBjh
 yA9ixJsoOl6ZMN9xYtfiFtg3vHtMFGQ1iOyOf+mqu3wjSEummwRW/BRDCd+QtgiQZPHj
 pa7E7QrakEnijd59IO6EK+x0NSpSwHa5cORHnMYA76qNEjYcLFOmQ1p30SGuBQR708zp
 CygDrnfb/RYOSwMJwPiynqo8DLa4PyaW8HtNT/zDcyu4TUn3xmi3AVBPGtHTxz+qem38
 Nxe3M+AbbxfJsYvo5uXQMhJnOobYuVgUeifiaAKUUDLjXnmhcvT22u4FH00JEvinEmNk
 a4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DY6OWxXL6Mkjdnz9bKItmOBCwg7lWspCryDrZpJJELw=;
 b=Xa3+meeUnvtufVRT+HB21HYhnMGNA1vw4CJxtEQPztYV0dLn+CBq55bdLTpcdosIGo
 YeQCB/J114YF8Kkm2BPznTYdn/Q/wyxd/+6vUn3/bNMtq5uUdMpTSlXNxcbiJUumiVAi
 eSsYdTS+5IRXKuRxikBPcvis+df/KbyF0D8AGs4T2a09yXIvr/vlZLamvQ2E+c3Da4tR
 1shiclVWKLYXb5CsZyTDZIEufTD07qNhHSWeI+NFCkLDDblBZvHLgf5o0OaLauUggwyf
 Pq9J7o1OhBrGKpTa3zNU3+dvtnLmp6zTMcdVZkBbe1P03nrkUdsBgEE0gg3gUu/1R7H6
 SSPA==
X-Gm-Message-State: APjAAAVw0nGwtCyPcNUolx8LrRA4U4EWkZwvQEg8ef6s8nrDSGiC/czL
 khnpmQ37cMEwBbQnh5zHvl8=
X-Google-Smtp-Source: APXvYqwNBpkrVnbSQYAwgohdGmjunNQdCGyoDBa+JV+/+DN57azD9XaTe7h6TpYw5x0TTy4MoQNjgQ==
X-Received: by 2002:a63:4346:: with SMTP id q67mr40722725pga.241.1557877311862; 
 Tue, 14 May 2019 16:41:51 -0700 (PDT)
Received: from localhost ([2601:640:5:a19f:19d3:11c4:475e:3daa])
 by smtp.gmail.com with ESMTPSA id u123sm290199pfu.67.2019.05.14.16.41.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 16:41:51 -0700 (PDT)
Date: Tue, 14 May 2019 16:41:49 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Cyril Hrubis <chrubis@suse.cz>
Subject: Re: [LTP] [EXT] Re: [PATCH v9 00/24] ILP32 for ARM64
Message-ID: <20190514234149.GA12077@yury-thinkpad>
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
 <20190508225900.GA14091@yury-thinkpad> <mvmtvdyoi33.fsf@suse.de>
 <MN2PR18MB30865B950D85C6463EB0E1D4CB0F0@MN2PR18MB3086.namprd18.prod.outlook.com>
 <20190514104311.GA24708@rei>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514104311.GA24708@rei>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_164155_958878_E01CE0DE 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yury.norov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Joseph Myers <joseph@codesourcery.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Steve Ellcey <sellcey@caviumnetworks.com>, Yuri Norov <ynorov@marvell.com>,
 Prasun Kapoor <Prasun.Kapoor@caviumnetworks.com>,
 Andreas Schwab <schwab@suse.de>, Alexander Graf <agraf@suse.de>,
 Bamvor Zhangjian <bamv2005@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Martin <Dave.Martin@arm.com>,
 Adam Borowski <kilobyte@angband.pl>,
 Manuel Montezelo <manuel.montezelo@gmail.com>,
 James Hogan <james.hogan@imgtec.com>, Chris Metcalf <cmetcalf@mellanox.com>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Pinski <pinskia@gmail.com>,
 Lin Yongting <linyongting@huawei.com>, Alexey Klimov <klimov.linux@gmail.com>,
 Mark Brown <broonie@kernel.org>, "ltp@lists.linux.it" <ltp@lists.linux.it>,
 Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>,
 Florian Weimer <fweimer@redhat.com>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 Nathan_Lynch <Nathan_Lynch@mentor.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ramana Radhakrishnan <ramana.gcc@googlemail.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 12:43:11PM +0200, Cyril Hrubis wrote:
> Hi!
> > > There is a problem with the stack size accounting during execve when
> > > there is no stack limit:
> > >
> > > $ ulimit -s
> > > 8192
> > > $ ./hello.ilp32 
> > > Hello World!
> > > $ ulimit -s unlimited
> > > $ ./hello.ilp32 
> > > Segmentation fault
> > > $ strace ./hello.ilp32 
> > > execve("./hello.ilp32", ["./hello.ilp32"], 0xfffff10548f0 /* 77 vars */) = -1 ENOMEM (Cannot allocate memory)
> > > +++ killed by SIGSEGV +++
> > > Segmentation fault (core dumped)
> > >
> > > Andreas.
> > 
> > Thanks Andreas, I will take a look. Do we have such test in LTP?
> 
> We do have a test that we can run a binary with very small stack size
> i.e. 512kB but there does not seem to be anything that would catch this
> specific problem.
> 
> Can you please open an issue and describe how to reproduce the problem
> at our github tracker:
> 
> https://github.com/linux-test-project/ltp/issues
> 
> Then we can create testcase based on that reproducer later on.

This is it:
https://github.com/linux-test-project/ltp/issues/530

Yury

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
