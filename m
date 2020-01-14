Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686F513AF26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4lpX6A+scykEiQtRMhqEOpePaqPpfEUCxxv9Gzp414=; b=cgV9PRrOYhYPUQ
	AQmFPJNmlk1hkxEDX1mkDBwCqL+C6XFXBsj70A7lTYxheSVwSTkpAZ6cN8x288kg1M0hp6psdITAJ
	jjilTiyvvImb4j5Uf2Fvw/T3vzk6Fawc+CHqnObPy9WjCGBqb8QakCQjb9XDw9tDFRbPk1f1/qzSE
	98zHctujI+/1ka6TWVJzPjEnxcIsTaskqAudn9lEAufne3LBCgwwFOi5xijMZNWADHZRhMHkWvqm4
	PwT94Rh+8ZWGln9NHhbf5x8MdhVTch9K91kg/395G0cKyEodkkisDgMSdlu25FyI6+RmZdEZNh660
	hMZQLYSgLhClj6cAKmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOvl-0003YP-Lf; Tue, 14 Jan 2020 16:20:37 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOvZ-0003Xj-7j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 16:20:29 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irOvA-00024a-Fo; Tue, 14 Jan 2020 17:20:00 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id B7A82101DEE; Tue, 14 Jan 2020 17:19:59 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH RESEND v4] reboot: support offline CPUs before reboot
In-Reply-To: <20200114110620.164861-1-hsinyi@chromium.org>
References: <20200114110620.164861-1-hsinyi@chromium.org>
Date: Tue, 14 Jan 2020 17:19:59 +0100
Message-ID: <87o8v6au34.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_082025_417769_63F93046 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 sparclinux@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, linux-csky@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-pm@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Stephen Boyd <swboyd@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hsin-Yi Wang <hsinyi@chromium.org> writes:
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Resend v4:
> * Cc more people and mailing lists. Also fix a few nits from v4.

Please don't name it resend if you actually changed the patch. Resend
wants to be an unmodified patch and the only reasons to do that are:

 - add more people to CC

 - Resend it because it got ignored or dropped (do that only after a
   couple of weeks)

If you changed the patch, then it wants a new version number.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
