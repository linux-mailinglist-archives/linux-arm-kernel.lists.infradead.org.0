Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C7015ADF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 18:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWaZVPWoce02p57hfvx+f8rNkxE6f6WkMgGxb9eneWU=; b=gyIWquaMr3Wg9T
	BSBS8Gt91bo/AlahfISY0wmQ9/H3ZB1+qcl+ygN52exQFVHfIB4LawXirXGoqIES2XTgjqUnLRAjJ
	gyDmYDbR+LczJ716Mda3kRtCTzGYtqfXJzpyXW16cKcCj3lExoVbBSBvbd5+t2oNvZ6KIet6buyig
	IWUlz/FjlUQwKr5y9TY3NL2Nqp2T8OlMWSSBv57aHuJ5VdSvKr6bf1i4d/8c8LSLg+YBLttVE/CWr
	mnT01q31GISOEO6iQuB8D5rDw+A0NmhZ2ysOT2bBc6HG1/iYMvDR+AC9rQ4JW2XyTrq45QzHGdnv4
	X8++Yq/5qW7s7sm3rQhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vQe-0005hd-SE; Wed, 12 Feb 2020 17:04:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vQZ-0005hJ-HK
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 17:03:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CF6630E;
 Wed, 12 Feb 2020 09:03:54 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 80FD73F68F; Wed, 12 Feb 2020 09:03:52 -0800 (PST)
Date: Wed, 12 Feb 2020 17:03:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH] arm64: mte: Clear SCTLR_EL1.TCF0 on exec
Message-ID: <20200212170350.GB587247@arrakis.emea.arm.com>
References: <CAMn1gO4iv1FsxV+aR3CgU=jgmVjHL0YQF-xJJG0UMv3nJZnOBw@mail.gmail.com>
 <20191220014853.223389-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220014853.223389-1-pcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_090355_615996_4567F5DE 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 linux-mm@kvack.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Marc Zyngier <maz@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kostya Serebryany <kcc@google.com>, Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 05:48:53PM -0800, Peter Collingbourne wrote:
> On Thu, Dec 19, 2019 at 12:32 PM Peter Collingbourne <pcc@google.com> wro=
te:
> > On Wed, Dec 11, 2019 at 10:45 AM Catalin Marinas
> > <catalin.marinas@arm.com> wrote:
> > > + =A0 =A0 =A0 if (current->thread.sctlr_tcf0 !=3D next->thread.sctlr_=
tcf0)
> > > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 update_sctlr_el1_tcf0(next->thread.sctl=
r_tcf0);
> >
> > I don't entirely understand why yet, but I've found that this check is
> > insufficient for ensuring consistency between SCTLR_EL1.TCF0 and
> > sctlr_tcf0. In my Android test environment with some processes having
> > sctlr_tcf0=3DSCTLR_EL1_TCF0_SYNC and others having sctlr_tcf0=3D0, I am
> > seeing intermittent tag failures coming from the sctlr_tcf0=3D0
> > processes. With this patch:
[...]
> > Since sysreg_clear_set only sets the sysreg if it ended up changing, I
> > wouldn't expect this to cause a significant performance hit unless
> > just reading SCTLR_EL1 is expensive. That being said, if the
> > inconsistency is indicative of a deeper problem, we should probably
> > address that.
> =

> I tracked it down to the flush_mte_state() function setting sctlr_tcf0 but
> failing to update SCTLR_EL1.TCF0. With this patch I am not seeing any more
> inconsistencies.

Thanks Peter. I folded in your fix.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
