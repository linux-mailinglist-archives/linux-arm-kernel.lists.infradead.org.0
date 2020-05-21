Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE271DD27E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywFm2bQmHlwS1NQAt1flC9iJMov0HbOasxpVFjHM7xg=; b=LBsHo+5JV4CPO6
	F6DbqAD5vATv1imAjavpPKinyUHwjL9FhuTMa/GbRhk9N1Uvr/J6LTiO0itZ75HtJSCSeJWNrKHJl
	60Q+M3zQGTA8AztlAWGDUzjpupl65thRjmbcI/6YSfzeWIya45nT6Y90EAmsdKbHz9TgqfKeUWbpX
	QauNQ3pEDaWhQQlkY+SaqNvaZ6bdNj/WNegUhdiyqsWzVbsQrvWTI8pGQKn05NUvk9wuH+kkn1/V8
	H1eFxiAptXY0X1bNN6rEnI8bL7++hTquwTYt0OVh8s+Rh3iLdjbrKtohHwJ76yT0kR9pPgKZsjpB0
	u4KJvM+yD8UTNL5cRQJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnZ7-0002oD-4T; Thu, 21 May 2020 15:57:01 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnYv-0002mn-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:56:51 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04LFYFvj082170; Thu, 21 May 2020 11:56:37 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 314ua5p5yu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 11:56:37 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04LFZs4F092315;
 Thu, 21 May 2020 11:56:36 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 314ua5p5xx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 11:56:36 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04LFeVtE026896;
 Thu, 21 May 2020 15:56:34 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma03ams.nl.ibm.com with ESMTP id 313xas5vqv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 May 2020 15:56:34 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04LFuWA050921510
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 15:56:32 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6B0BE52050;
 Thu, 21 May 2020 15:56:32 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.51])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 899375204E;
 Thu, 21 May 2020 15:56:31 +0000 (GMT)
Date: Thu, 21 May 2020 18:56:29 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200521155629.GT1059226@linux.ibm.com>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
 <20200521140745.GS1059226@linux.ibm.com>
 <20200521145020.GS1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521145020.GS1551@shell.armlinux.org.uk>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-21_08:2020-05-21,
 2020-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0 phishscore=0
 cotscore=-2147483648 suspectscore=0 bulkscore=0 spamscore=0 clxscore=1015
 mlxscore=0 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005210112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085649_570489_6F1B18BA 
X-CRM114-Status: GOOD (  31.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Doug Berger <opendmb@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 03:50:20PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, May 21, 2020 at 05:07:45PM +0300, Mike Rapoport wrote:
> > On Thu, May 21, 2020 at 03:33:29PM +0300, Mike Rapoport wrote:
> > > On Thu, May 21, 2020 at 01:03:08PM +0100, Russell King - ARM Linux admin wrote:
> > > > On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> > > > > (resendig for the correct address and with mailing list cc'ed, sorry for
> > > > > the noise)
> > > > > 
> > > > > Hi,
> > > > > 
> > > > > Following the discussion at [1], I'm resending the patches that enable
> > > > > memory model selection in menuconfig and such.
> > > > > 
> > > > > These patches do not change the way the configuration is generated from the
> > > > > defconfigs and they do not change explicit selection of SPARSEMEM for
> > > > > platforms that have "select ARCH_ENABLE_SPARSEMEM".
> > > > > 
> > > > > The mere change is that when a user runs an interactive configuration they
> > > > > will be allowed to select between FLATMEM and SPARSMEM, which is not the
> > > > > case today.
> > > > > 
> > > > > There is indeed some awkwardness in, e.g. removal of
> > > > > ARCH_SPARSEMEM_DEFAULT, but this is what memory model selection logic in
> > > > > mm/Kconfig imposes.
> > > > > 
> > > > Right, but the question is whether we want to offer flatmem for rpc.
> > > > It isn't allowed today, and so far no one has said why it's a
> > > > desirable change to make.
> > > 
> > > With ARCH_RPC=y (or ARCH_SA1100 or ARCH_EP93XX for that matter)
> > > ARCH_MULTIPLATFORM=n which prevents ARCH_SELECT_MEMORY_MODEL from being
> > > enabled and since any of these machines explicitly selects
> > > ARCH_SPARSEMEM_ENABLE, the only available memory model would be
> > > SPARSEMEM.
> > > 
> > > I played a bit with menuconfig and if any of the platforms requiring
> > > sparsemem is selected, the menu allowing the user to choose the memory
> > > model disappears.
> > 
> > Ah, when either of these patforms will become a part of the
> > multiplatform build, the only option for multiplatform build will be
> > sparsemem.
> > So it would be nice if somebody could check the cost of using sparsemem
> > vs flatmem, espessially on low end machines.
> 
> Do you think they will become part of multiplatform?
> 
> If they're low-end machines, then adding:
> 
> (a) the additional memory overhead of a multiplatform kernel
> (b) the additional runtime overhead of the complexities of multiplatform
>     kernels
> 
> is surely an odd thing to do, especially when few really care about
> these platforms becoming part of a multiplatform kernel, except those
> who like the idea of multiplat.

I honestly don't know, it was Arnd who was talking about adding ep93xx
to multiplat.

So, probably better phrasing would have been "if either of these
patforms will become a part of the multiplatform build...".

Anyway, benchmarking sparsemem vs flatmem on a platform that is already
a part of multiplat might be useful to understand whether we need both
of them or we can simply make everything use sparsemem.

> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
