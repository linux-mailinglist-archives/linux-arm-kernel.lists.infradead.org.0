Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F46138124
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 12:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChzJOBYf7gXHpZj6UgiypHCT4HeMtdgUtdeL9DvZ/5Q=; b=olGdiFfLuLdWn7
	8dVBuE1L6OttxqxlxCb4KuaF9OV0sWH+PlKTh1cr7umAvoJENZvEQzDvluz5+ALZZmTkjE3T16RCq
	o+8OxjWI/lkk+8M3UDK1qdISHm7K0FHc7VHub2hSebFfzlq/sNlBh9eB0UkTdBEGDuapXz+r3aAUe
	hYNtoybB2agPR735xxNEpvW3b6pom+4jZn6k1DMAJAw5WnY+2+NP9x71qBjPIKPyHF0zexCK+lUJk
	hJg0y/VYfAvFkIj6QwhnmI3VkgNL9EiXrNt1T0ii8gSSaNha2nIThwmk+IZ1y4CwlIvBb/aBF/qwW
	5+/N4YupUZ5MUPfPLixQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqF1s-0006pJ-Pr; Sat, 11 Jan 2020 11:34:08 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqF1l-0006o5-Cx
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 11:34:03 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 00BBXTQb023225;
 Sat, 11 Jan 2020 05:33:29 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 00BBXSxW023224;
 Sat, 11 Jan 2020 05:33:28 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Sat, 11 Jan 2020 05:33:28 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: Surprising code generated for vdso_read_begin()
Message-ID: <20200111113328.GX3191@gate.crashing.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
 <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_033401_585049_5A8D5318 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: arnd@arndb.de, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 07:45:44AM +0100, Christophe Leroy wrote:
> Le 09/01/2020 =E0 21:07, Segher Boessenkool a =E9crit=A0:
> >It looks like the compiler did loop peeling.  What GCC version is this?
> >Please try current trunk (to become GCC 10), or at least GCC 9?
> =

> It is with GCC 5.5
> =

> https://mirrors.edge.kernel.org/pub/tools/crosstool/ doesn't have more =

> recent than 8.1

Arnd, can you update the tools?  We are at 8.3 and 9.2 now :-)  Or is
this hard and/or painful to do?

> With 8.1, the problem doesn't show up.

Good to hear that.  Hrm, I wonder when it was fixed...


Segher

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
