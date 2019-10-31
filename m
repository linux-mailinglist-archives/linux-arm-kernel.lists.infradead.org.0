Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2A9EAE6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDlQpJkoKLOENl0jL0ORSwghYwaT5KiHaca/ag3BPr0=; b=kyapVFVd4J0z6U
	2tWWswG0rk8RwsDIsiXxTKR6ESnHfcz77po38EmyScWOozIDnjqXuueNiy/dQrCykEskBIRFY8L95
	pPC01PkDu8LZX/PB4JSDK9BG3Pdn8f+7sGEDf2f8HhirDAxEMegt2EVzgaabwi9p+Bs7MYYj8b/E3
	HSNq6cCAP45MdF8Dj7ihvyixYKAQRFYuklLVylTuxcpblr9bxByqrUib136ukLv6TCQbsqQ5O4G+F
	p/3TWSkWNY9d+Yt4WBF9dyFdMWCdF0lKEO7CdexrGx9PcY4mqQSQyS8WgrfwVM85Sww7+UjredMHP
	UyiHToBI3tlj17APQ9aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8IH-0000kh-Gh; Thu, 31 Oct 2019 11:07:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8I7-0000kE-16
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:07:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A6BF1F1;
 Thu, 31 Oct 2019 04:06:58 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9245D3F719; Thu, 31 Oct 2019 04:06:57 -0700 (PDT)
Date: Thu, 31 Oct 2019 11:06:55 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.4.0-rc5-34072e5.cki (arm-next)
Message-ID: <20191031110655.GB39590@arrakis.emea.arm.com>
References: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
 <1219834772.9691319.1572429836705.JavaMail.zimbra@redhat.com>
 <20191030100747.GB17773@willie-the-truck>
 <20191030104520.GC17773@willie-the-truck>
 <4c22a384-ce30-8879-19a5-9ec6743268dc@arm.com>
 <b8a59be8-e0dd-3c99-09bf-f578b449b77f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8a59be8-e0dd-3c99-09bf-f578b449b77f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040659_111056_57A5BFD8 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org, Memory Management <mm-qe@redhat.com>,
 Will Deacon <will@kernel.org>, Jan Stancek <jstancek@redhat.com>,
 CKI Project <cki-project@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 03:08:36PM +0000, Robin Murphy wrote:
> > > > On Wed, Oct 30, 2019 at 06:03:56AM -0400, Jan Stancek wrote:
> > > > > What's failing is preadv2/readv over PROT_NONE mapping:
> > > > > =

> > > > > [pid=A0 2424] mmap(NULL, 1, PROT_NONE,
> > > > > MAP_PRIVATE|MAP_ANONYMOUS, 0, 0) =3D 0x3ff7f8b0000
> > > > > [pid=A0 2424] preadv2(3, [{iov_base=3D0x3ff7f8b0000,
> > > > > iov_len=3D64}], 1, 0, 0) =3D 16
> > > > > =

> > > > > Test expects EFAULT.
> > > > > =

> > > > > It seems specific to arm64/linux.git as I do not see it fail on
> > > > > Linus' master (v5.4-rc5-34-g23fdb198ae81).
[...]
> OK, what's up is that we designed the improved fixup logic to support off=
set
> addressing in the implicit context of the existing copy template, where
> accesses were always in strictly increasing order. And then we also plumb=
ed
> in a clever new template which in certain cases does some out-of-order
> copying to support overlaps :(
> =

> If a nonzero return from copy_*_user() is allowed to underestimate how ma=
ny
> bytes were actually copied, then I think there should be a relatively sim=
ple
> fix; if it must always be exact, then I've got some more thinking to do...

I think in various incarnations of the copy routines we always had some
risk of underestimating. For example, we align the source but not the
destination. The destination is written via STP post-indexed but if the
second 64-bit write fails, we still report the copy based on the
unmodified dst, so underestimating by 8 bytes.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
