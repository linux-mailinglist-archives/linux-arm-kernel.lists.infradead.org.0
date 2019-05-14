Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EEB1E56D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 01:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlH9Xy4J8yq25WlAcgvG3J1YaTTsm5o2BPi9SClJSfI=; b=gUqsiuPuLIoEne
	SrGwXNd6qOrk/F9zgQTpngnPVUThHInmnm0mPeVdIRfc5x4iJa7nmJaHiwKZfeDSylmu+KI7B6H/p
	+QVOv2haV/ncHQqfr9Vl915XrnVsR41SUkQ0lQGr1LMXRVk+g6jwQMQVCR0d/cp0z7L6lINAukGP1
	6j2qknqQg9QLUOAF/l7SsU23lH8nqqWopNl3bF6sDrBiFq+P4PMm7WhUxkWyrnbjn5+DzRvXXeNYP
	1NLy5mT1F0nxFYZOKHGYgzToNig/u1qBWTwZBhuczeqU1olLvWyFjyA/9rXR4d1cx0qmz2Po6/IrJ
	2fkpfUj7JPQYr01L6nZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQgS7-0008Ev-PH; Tue, 14 May 2019 23:03:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQgS0-0008E1-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 23:03:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id a5so305433pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 16:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4xuOhafijhTBKjPcHvwICr8fCf3XDF6k7moLbg3FXwg=;
 b=f+iki57StuAV+FkmK28LEJUx6eRLXHSLyK478LBU5ugMCQKEKAZdX23XdU0hTop3GI
 xGJewyrbS+bCN0qDv8n7PLgw3R8cXpE0K/wG2jRzQacmvbhYfW7oSLUF0VZeH68ddsoC
 qCNTE4tz3BD6ag5z4FRz+GrqR1A+UYG9qKbww7xnZsjPhVhqd+6O8objP/SAgY/BQF1Q
 ivbwlEgshLeExC9RVBfCEAUIXWs05qZfaYgSJfxqkwNiFZ85iJBc25BjSEsCaj8LJ185
 thGVy5+SA6YMXpJunfpxoxvi7Ld/QsAGJr58tOGd2mFNOsejpsJWS0s/mxLb0Izfo4iT
 76Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4xuOhafijhTBKjPcHvwICr8fCf3XDF6k7moLbg3FXwg=;
 b=V4NgbqDdZ778/b/gGTuoAR8/vctJDsg1wS44huAMXAdWGWvrwPuwO4pBUpmoKhF6nf
 OaMyXbvtdAfKPXM0EwthfF2DmF7TDGB4wi1X7CEEFjqhwq6Wj0X91wcFRILMbHAGkzGz
 wFmziWv9SMcSNINKLA4kUS6+rm/JhV4DQvt65OanTe+vTuvq+dYZfYk6TITcqheD1MDi
 QttKjR4p7bCDWA6KEU8WozH0ttffCnlOeus3VoW7d3Ys8+EC7Jw9QIF0Cn8q2jzWRg1e
 LKqtn2NhSeExP+5BDlDSCu8hOXhSVVeRH3SlDAaz77iPX46Y/jP8BU+rJLIb8R+3y+wh
 0ySw==
X-Gm-Message-State: APjAAAVFD6nxhdaZ5CNITLmeIfpteQQs3apPznGYeBl4d9kCyZ0JWCkL
 2p65OihXbMHPXeESmPwd8XQ=
X-Google-Smtp-Source: APXvYqy3fmo7/ncm6lIHtrFpfQoSewVnPVoZDijQHrQxC4R9KBEXyV2Q9ZJU/PMMxrsLSU8w/4pXOg==
X-Received: by 2002:a17:902:5983:: with SMTP id
 p3mr38930332pli.224.1557874990361; 
 Tue, 14 May 2019 16:03:10 -0700 (PDT)
Received: from localhost ([2601:640:5:a19f:19d3:11c4:475e:3daa])
 by smtp.gmail.com with ESMTPSA id l65sm238391pfb.7.2019.05.14.16.03.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 16:03:09 -0700 (PDT)
Date: Tue, 14 May 2019 16:01:58 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Cyril Hrubis <chrubis@suse.cz>
Subject: Re: [LTP] [EXT] Re: [PATCH v9 00/24] ILP32 for ARM64
Message-ID: <20190514230158.GA6780@yury-thinkpad>
References: <20180516081910.10067-1-ynorov@caviumnetworks.com>
 <20190508225900.GA14091@yury-thinkpad> <mvmtvdyoi33.fsf@suse.de>
 <MN2PR18MB30865B950D85C6463EB0E1D4CB0F0@MN2PR18MB3086.namprd18.prod.outlook.com>
 <20190514104311.GA24708@rei>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514104311.GA24708@rei>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_160312_534169_CAA74071 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

So the problem was in not converting new compat-sensitive code:

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5bdf357169d8..c509f83fa506 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -63,7 +63,7 @@
 				TASK_SIZE_32 : TASK_SIZE_64)
 #define TASK_SIZE_OF(tsk)	(is_compat_thread(tsk) ? \
 				TASK_SIZE_32 : TASK_SIZE_64)
-#define DEFAULT_MAP_WINDOW	(test_thread_flag(TIF_32BIT) ? \
+#define DEFAULT_MAP_WINDOW	(is_compat_task() ? \
 				TASK_SIZE_32 : DEFAULT_MAP_WINDOW_64)
 #else
 #define TASK_SIZE		TASK_SIZE_64

The fix is incorporated in ilp32-5.1.1:
https://github.com/norov/linux/tree/ilp32-5.1.1

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
> 
> -- 
> Cyril Hrubis
> chrubis@suse.cz

OK, I'll do.

Yury

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
