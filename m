Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238D3E0781
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjQyVijHypgryYNRIFo9dgxC2y3GiVScYwJSPyJhm+4=; b=io2ECqsL6atStI
	g+ePAFBnEr2ayOYMrWurrzWevvkqDqqjvYdeqV2SpLt2G1bc9hhDEZGqYKSBPbteVTCjhAyz4ifzt
	RQ9diI1NV/F9/zs3hqUJf495CAg1jqfZlxMWrxKNGpEaLihjuChdu7Xqbkccuz23rKKg6C72pHbKA
	agpJjawRbxJzM4EoV87XYQ+MFqE3kSZ3buRmw21UVtZt2PfPl453Q7fZtCYjKufqiEFeHJVH1X72a
	YSInLFx6h7xM1+yDYOusl57Zsmc/MM58KZJmDBpULjN3zkONSLl8eWSlro/850cL3N6UKT4zssftI
	HrdqdZbwwBLzFqUO9LWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwAZ-0008Gw-Vq; Tue, 22 Oct 2019 15:33:59 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwAQ-0008GH-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:33:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17DEB176C;
 Tue, 22 Oct 2019 08:33:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEA4D3F71A;
 Tue, 22 Oct 2019 08:33:37 -0700 (PDT)
Date: Tue, 22 Oct 2019 16:33:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191022153335.GC52920@lakrids.cambridge.arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
 <20191021140756.613a1bac@gandalf.local.home>
 <20191022112811.GA11583@lakrids.cambridge.arm.com>
 <20191022085428.75cfaad6@gandalf.local.home>
 <20191022153035.GB52920@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022153035.GB52920@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_083350_898540_C48A5742 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: jthierry@redhat.com, svens@stackframe.org, ard.biesheuvel@linaro.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de, jeyu@kernel.org,
 linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org, mingo@redhat.com,
 james.morse@arm.com, jpoimboe@redhat.com, amit.kachhap@arm.com,
 will@kernel.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 04:30:35PM +0100, Mark Rutland wrote:
> On Tue, Oct 22, 2019 at 08:54:28AM -0400, Steven Rostedt wrote:
> > On Tue, 22 Oct 2019 12:28:11 +0100
> > Mark Rutland <mark.rutland@arm.com> wrote:
> > > | /**
> > > |  * ftrace_init_nop - initialize a nop call site
> > > |  * @mod: module structure if called by module load initialization
> > > |  * @rec: the mcount call site record
> > 
> > Perhaps say "mcount/fentry"
> 
> This is the exact wording that ftrace_make_nop and ftrace_modify_call
> have. For consistency, I think those should all match.

Now that I read this again, I see what you meant.

If it's ok, I'll change those to:

| @rec: the call site record (e.g. mcount/fentry)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
