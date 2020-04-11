Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973341A4F29
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 11:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJ5IWEo6dtSXqbZunelp86fMBM6wih+nnUebX/7Cy2M=; b=Nb3l4VGsHteFO8
	MhnddI2UUUZeQZ/pS0cZFSmoIIhSftzemvT48KLEldMXVZGgqBBHYvkOQCT/WY0jP8+xpo+fbrZ5E
	RKxzKUozLMfs2WXBhumQe1O2yaTO8w0axbuaW7ouvrXtGTBYMwJjiCicXpIiJKl3Gt8/KvFBgLFc4
	rOxAlEvM96qyWbJ1KoykUj0dW9x69lBoLjXnvAYUt33fOnqYEi0UqlPUvwgdjqxSFeelCuLcn1cS8
	yWyhKFEfDkHcQ3DDDL7fvnYBylHJ00+q3vI2Z+WMs3P84L30IIntqE2RMj40MFuxhSTGJzXyCJ8kb
	Ag/nh4hOC/XVqJHjIyew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNCTR-0004zM-W3; Sat, 11 Apr 2020 09:30:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNCTJ-0004yL-3w; Sat, 11 Apr 2020 09:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/T50vNyIDroG6rZk+1WnkioFUih4u+rrzE6Gbv2xvA=; b=ZcZ6R9Ga79RDysvdKOeH0GJGN
 0qoUyilQcy+UBNy5EeY2ry80tv9etfPNyKueZE4XSv2cOCLF5xSK5fTr2oV+7YVczKrH4IjonAWEv
 GoaU5X6ZpUQGcFjDA0Qai/zeQZ4sDGmKjoo2qdu1pADZzYDCk1AFYiW7V7d06BWtRvbta+ifPqWWZ
 ecM0NXRJP1uTPHRovhrmZf7TnkxuJRUqrP/npldeV7ZfU7EY2f+QR1c0Ub2TN6NG7klMAN9nrqu3w
 q+nFZt9DAjUnN29YQUHJ9WP1N5XT2f0QywbKlP9zMxqAWg1tRnri0h+rUGUferiS42pLqWVFevjQ0
 fFIoK5ruQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48586)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jNCSp-0006TI-Sk; Sat, 11 Apr 2020 10:30:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jNCSn-0004vU-D4; Sat, 11 Apr 2020 10:30:09 +0100
Date: Sat, 11 Apr 2020 10:30:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200411093009.GH25745@shell.armlinux.org.uk>
References: <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411034414.GH2129@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_023041_160181_9F4B4F96 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 11, 2020 at 11:44:14AM +0800, Baoquan He wrote:
> Because We tend to use kexec_file_load more and improve/enhance it in the
> future, and gradually obsolete the old kexec_load interface which this
> patchset is trying to fix on. 

That's not going to happen; 32-bit ARM kexec uses the kexec_load
interface rather than the kexec_file_load version, and I see no one
with any interest in changing that - and there's users of the former.

I don't see how it's possible to convert 32-bit ARM kexec to the
kexec_file_load interface - this assumes that all you have are the
kernel, initrd, and commandline, but on 32-bit ARM kexec, we have
kernel, initrd and the dtb blob which the user can specify.

So, if we wanted to obsolete the kexec_load interface, _first_ there
needs to be a way to provide users with the existing functionality
they have already in place on 32-bit ARM - otherwise we're looking
at a userspace regression.  Especially as kexec_file_load takes
precedence on some distro patched versions of the kexec tool,
irrespective of which interface the user requests of the tool.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
