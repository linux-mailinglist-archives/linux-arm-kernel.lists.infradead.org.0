Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9C2EAEE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wnsChOTVKTd0HDU6o0jkNZndHPABPEp0rjN687hph4=; b=QCIfmN2qB629W+
	aE3fSk+CeIRn7FjRkc9v+Ht4lbR4c6sTelM9YgHocbol2xS/B6zhfmCpBxXSh4MBU2dAfUCtMAkTq
	ZsK8DTlIBsHhiHjCtTE8ea9UssziAE3VelKnGtDuSaWFO1zTTO08OaQ0eqWiBd6uVnOifXV41aba0
	sd2CzEJEQgVuB3eGof82QveIsI3/Vy9LZqhI/SSbSxKOoNZ1719HGVXTPTnE62odiYwadJDbxDiyw
	taJ5SFCty6QNuzLx1RIGM7/sSetoAjtLdpzZQSvAqZ7f6mx7SKVDSKMbcVJZi242jvcimBAnFqgMk
	JhTRcdUtwjPkHSTSr/hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8bQ-00012O-CA; Thu, 31 Oct 2019 11:26:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8bI-000124-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:26:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D30920650;
 Thu, 31 Oct 2019 11:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572521207;
 bh=wuc04ARyshWF/iHtTpd3Sa2loJ3CyL3ki3CTtWAJ680=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LibWu9bZ3g8dh7SQ/l/fw6uKBn7HJiqMzQU0PPbhl5fSkpSSGw24IjC8BqRdCc5Pi
 ICHdhJxKx+5LKFmYiEyleGWhtleKAf0L9LPOJdfdXkyvhHkTw60WbuFDbRqhMeJ+V3
 N9YUc6QjNb1GsLh1kgzIR9MStroQt5564nlRu7KE=
Date: Thu, 31 Oct 2019 11:26:43 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Message-ID: <20191031112642.GB26059@willie-the-truck>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
 <20191030100747.GB17773@willie-the-truck>
 <20191030104520.GC17773@willie-the-truck>
 <4c22a384-ce30-8879-19a5-9ec6743268dc@arm.com>
 <b8a59be8-e0dd-3c99-09bf-f578b449b77f@arm.com>
 <20191031110655.GB39590@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031110655.GB39590@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_042648_073087_94D9D6ED 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Memory Management <mm-qe@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>, Jan Stancek <jstancek@redhat.com>,
 CKI Project <cki-project@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:06:55AM +0000, Catalin Marinas wrote:
> On Wed, Oct 30, 2019 at 03:08:36PM +0000, Robin Murphy wrote:
> > > > > On Wed, Oct 30, 2019 at 06:03:56AM -0400, Jan Stancek wrote:
> > > > > > What's failing is preadv2/readv over PROT_NONE mapping:
> > > > > > =

> > > > > > [pid=A0 2424] mmap(NULL, 1, PROT_NONE,
> > > > > > MAP_PRIVATE|MAP_ANONYMOUS, 0, 0) =3D 0x3ff7f8b0000
> > > > > > [pid=A0 2424] preadv2(3, [{iov_base=3D0x3ff7f8b0000,
> > > > > > iov_len=3D64}], 1, 0, 0) =3D 16
> > > > > > =

> > > > > > Test expects EFAULT.
> > > > > > =

> > > > > > It seems specific to arm64/linux.git as I do not see it fail on
> > > > > > Linus' master (v5.4-rc5-34-g23fdb198ae81).
> [...]
> > OK, what's up is that we designed the improved fixup logic to support o=
ffset
> > addressing in the implicit context of the existing copy template, where
> > accesses were always in strictly increasing order. And then we also plu=
mbed
> > in a clever new template which in certain cases does some out-of-order
> > copying to support overlaps :(
> > =

> > If a nonzero return from copy_*_user() is allowed to underestimate how =
many
> > bytes were actually copied, then I think there should be a relatively s=
imple
> > fix; if it must always be exact, then I've got some more thinking to do=
...
> =

> I think in various incarnations of the copy routines we always had some
> risk of underestimating. For example, we align the source but not the
> destination. The destination is written via STP post-indexed but if the
> second 64-bit write fails, we still report the copy based on the
> unmodified dst, so underestimating by 8 bytes.

I wonder if this could be an issue in general though. If, for example, we
took a fault on the second page when crossing a page boundary, any "number
of bytes copied" metric returned to userspace probably needs to identify the
second page as the faulting one. Perhaps that works out because we only make
naturally-aligned accesses, but I'm not super comfortable about the
under-estimation. Do other architectures do that?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
