Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E314444F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0tOJYi9rzlrQbXcHeQMQs9IP5huyA6e8qLVJ1wtlAU=; b=e32Ed5RaRljkeD
	j3Djop8rqMs1/oIsg+DTBh5Hb+Han80/3I4I4GFFIJ6R7+55hNGsJflfSg7Quu3BQdUySDF35oXAo
	V77nq3dbloCpAAlJ/ZgYXr4EPDvCCzNg/F70ip2DZtg2VhkZBdibma7LpDqRkyzi4eMH68fA/fLF3
	21O5G/OzWhk9vsbsHrzDXWWnVP5bpdbCwY7Vnr1czu+Gz/Wk3s924C6mmtyBWDgtpn0XKL977w1Z/
	tluo5+jXkNOOq8OqEV+hK0xkAfwHh8bq0ZceBNG9IcnW0jNkwa0y5Hgyf0gEQt8svqxSt//67iXoG
	8Q2UT8Ec+bamVAs69YDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityIN-0007Gi-CG; Tue, 21 Jan 2020 18:30:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityI8-0007Fc-Td
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579631419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=n6ph8C+aXX0HI0FhHPqndGPmUHr5PUk3iM34mdtK754=;
 b=WoEpqp79Jpao9qyUg3Uvvc4mQ4n9D8MEvA3+3z2MgM4dsuIZZk6KlSojelnpG8O+TGbQFs
 RGTZkuPhSuQbKVM8sW0jDEzGTojGx50RohV1GspTrIK6KESh83e+R12JgYZ0Xo59XMEUkR
 9U4Za2L+3Ldo/jV6+OjjjcHJzZfyC0E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-uxQgXMv6MISRi-IAIju01Q-1; Tue, 21 Jan 2020 13:30:15 -0500
X-MC-Unique: uxQgXMv6MISRi-IAIju01Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2643800D4C;
 Tue, 21 Jan 2020 18:30:12 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3115639A;
 Tue, 21 Jan 2020 18:30:11 +0000 (UTC)
Date: Tue, 21 Jan 2020 12:30:09 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121183009.253yh6aehvnvxoew@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
 <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
 <20200121180632.GA13592@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121180632.GA13592@willie-the-truck>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_103021_147097_944570AF 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, raphael.gault@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 06:06:34PM +0000, Will Deacon wrote:
> On Tue, Jan 21, 2020 at 09:08:29AM -0800, Nick Desaulniers wrote:
> > On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > > > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > > > The 0day bot reported a couple of issues with clang with this series;
> > > > > the full report is available here (clang reports are only sent to our
> > > > > mailing lists for manual triage for the time being):
> > > > >
> > > > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > > > >
> > > >
> > > > Thanks, I'll have a look at those.
> > > >
> > > > > The first obvious issue is that this series appears to depend on a GCC
> > > > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > > > over my head but I see this warning during configuration (allyesconfig):
> > > > >
> > > > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > > > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > > > >      Selected by [y]:
> > > > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > > > >
> > > > > Followed by the actual error:
> > > > >
> > > > > error: unable to load plugin
> > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > > > open shared object file: No such file or directory'
> > > > >
> > > > > If this plugin is absolutely necessary and can't be implemented in
> > > > > another way so that clang can be used, seems like STACK_VALIDATION
> > > > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > > > >
> > > >
> > > > So currently the plugin is necessary for proper validation. One option can
> > > > be to just let objtool output false positives on files containing jump
> > > > tables when the plugin cannot be used. But overall I guess it makes more
> > > > sense to disable stack validation for non-gcc builds, for now.
> > >
> > > Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> > > STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> > > to prevent generation of these things?
> > 
> > Surely we wouldn't want to replace jump tables with long chains of
> > comparisons just because objtool couldn't validate jump tables without
> > a GCC plugin for aarch64 for some reason, right?  objtool validation
> > is valuable, but tying runtime performance to a GCC plugin used for
> > validation seems bad.
> 
> I'm only suggesting it if STACK_VALIDATION is selected. It's off by default,
> and lives in Kconfig.debug. I'd prefer that to "cross your fingers are do
> nothing differently", which is what the other option seems to be.

I don't know what the right answer is here, but keep in mind that
objtool is on by default for x86, so don't be surprised if that
eventually happens to arch64 too.

Short term it might be ok to disable jump tables with objtool enabled,
or to disable objtool when clang is in use, but long term we'll need to
figure out a better solution.

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
