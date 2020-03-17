Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969AD1881E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXFDUwvZ7j7TaPQge7rwrD9W3DUmAtTgrzwrr8Y6rbg=; b=cSav9J4IqzsPtY
	sBPpErvGmQ0RtJEM123bNysEOwdpm1JpVACzjS6Nk7QaRkbBuBZqtX5irAHrTo7GBGFtSLTefi32b
	o9XLC7AjbaM1YyDFyo2YKGmwa+Yr3uOa8/qpO/4ZIpuku+5fDLjd9u6E9C7lLfz2uk/mIHncemHNh
	YgD/Z169ZZE2KtHzrW049USoh/f6IR8XytqZXeOpPr7AU0e15dCCt7xNKpLUcO+Mz06ojfRB15JAM
	fDdDGrIebR5iqn7E/PffJ3piqt1XEbLm3iw+BF5cUf77+Jd0ZkW8lSNX+dq3+Vk7xPbxQrUZiy/9J
	+yFIfcGdJKpJvqVCyoiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEAIJ-0008En-Lg; Tue, 17 Mar 2020 11:21:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEAI6-0008CW-Bs
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:21:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE7D71FB;
 Tue, 17 Mar 2020 04:21:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BF9CC3F534; Tue, 17 Mar 2020 04:21:43 -0700 (PDT)
Date: Tue, 17 Mar 2020 11:21:41 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v3 06/15] arm64: hibernate.c: Create a new function to
 handle cpu_up(sleep_cpu)
Message-ID: <20200317112141.GB632169@arrakis.emea.arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-7-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192942.18420-7-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_042146_443148_50B6A56E 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Paul E . McKenney" <paulmck@kernel.org>, Steve Capper <steve.capper@arm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Jiri Kosina <jkosina@suse.cz>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, James Morse <james.morse@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 07:29:33PM +0000, Qais Yousef wrote:
> In preparation to make cpu_up/down private - move the user in arm64
> hibernate.c to use a new generic function that provides what arm64
> needs.
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: Steve Capper <steve.capper@arm.com>
> CC: Richard Fontana <rfontana@redhat.com>
> CC: James Morse <james.morse@arm.com>
> CC: Mark Rutland <mark.rutland@arm.com>
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Josh Poimboeuf <jpoimboe@redhat.com>
> CC: Ingo Molnar <mingo@kernel.org>
> CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>
> CC: Nicholas Piggin <npiggin@gmail.com>
> CC: Daniel Lezcano <daniel.lezcano@linaro.org>
> CC: Jiri Kosina <jkosina@suse.cz>
> CC: Pavankumar Kondeti <pkondeti@codeaurora.org>
> CC: Zhenzhong Duan <zhenzhong.duan@oracle.com>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-kernel@vger.kernel.org

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
