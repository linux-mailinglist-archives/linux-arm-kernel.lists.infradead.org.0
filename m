Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CFF12A295
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Mime-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPFzliUMXQg3tI9eTuAgMSBiH1bJCPetak6nUL6w538=; b=jm7N5WNl1uklXe
	pwe5vg9L76EJ1OV+GkgBGq3mzpb5q0NgLupm3b0XJGFlOpPgcBZ+yLbGGdUkTUYOzwOHU7dyMPidY
	gs5Vnd2WtHrqe8xj81/Pf4EFxgU4Iy090DqAykU4Dbdjp4f2BBYFrH/JLdG/HWATlKKymyi66SDRV
	7+hF54v+GaDV3kg5XRoKtGn2Izwvh2EJnMjtSRgM9XFulu6GnVIsuHf6CvwJRpXDaNPqw1tCzeSji
	0V0ye8Dmb+oadxO/pt37laXb3RpfMkCLbyVqOEQvL6OMY54MdHTJ7Tj4eV0NIdC5G3epapqSd4WRc
	yRB+6/BcJHypMviHK/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlSZ-0007v5-KK; Tue, 24 Dec 2019 14:46:55 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlSR-0007uj-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:46:48 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id xBOEkNuV031561;
 Tue, 24 Dec 2019 08:46:23 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id xBOEkMoQ031560;
 Tue, 24 Dec 2019 08:46:22 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Tue, 24 Dec 2019 08:46:21 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Andy Lutomirski <luto@amacapital.net>
Subject: Re: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the
 arch
Message-ID: <20191224144621.GG4505@gate.crashing.org>
References: <de5273aa-69dc-8e37-c917-44708257d2ba@c-s.fr>
 <D2614EC4-5B80-4846-994D-22730ACD44A1@amacapital.net>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D2614EC4-5B80-4846-994D-22730ACD44A1@amacapital.net>
User-Agent: Mutt/1.4.2.3i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_064647_543648_EDF4A7A2 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: christophe leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
 X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMjQsIDIwMTkgYXQgMDg6MTU6MTFQTSArMDgwMCwgQW5keSBMdXRvbWlyc2tp
IHdyb3RlOgo+IERvZXMgcG93ZXIgaGF2ZSBQQy1yZWxhdGl2ZSBkYXRhIGFjY2Vzcz8gIElmIHNv
LCBJIHdvbmRlciBpZiB0aGUgY29kZSBjYW4gYmUgYXJyYW5nZWQgc28gdGhhdCBldmVuIHRoZSBh
cnJheSBhY2Nlc3NlcyBkb27igJl0IHJlcXVpcmUgY29tcHV0aW5nIGFuIGFic29sdXRlIGFkZHJl
c3MgYXQgYW55IHBvaW50LgoKTm90IGJlZm9yZSBJU0EgMy4wICh0aGF0IGlzIFBvd2VyOSkuCgpU
aGUgYmNsL21mbHIgZGFuY2UgaXNuJ3QgKnRoYXQqIGV4cGVuc2l2ZSwgaWYgeW91IHVzZSBpdCBz
cGFyaW5nbHkuCgoKU2VnaGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
