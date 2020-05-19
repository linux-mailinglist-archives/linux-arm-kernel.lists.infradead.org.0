Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79471D9B1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adYNR8MRXJ4FAbLq7ymmNaYzbfDMiFaSkuYeAZJcCOE=; b=rcfzxiwCR7rcSt
	B+Dul/2qQFnE09Y50KBeubc7uMftVhLJzh2WLD/IQkWCq0wFoFBy+0FBqTVh+lWY+u/wuEh+iDyls
	KgnHV7YhwddRmanvTwyQlW9zQy9hymtaKcGUIWgrPUUmq6nKOrWUHo/gJuxW7T/h7tbpi4tmL/Fpb
	ms54fnkiGbOnarZ9MLk5RgR92jizPmu1s/7WrX14tD1n9/qmWsTreHYgvrVMCreVlpf2TYjsHKkJZ
	VFzQZmjbEtO0WCNcBPOAHw2IOza8peahDUkluETZQDNmfJnzHHlVLIfThyP4cVhy20OgHcWewuUjp
	8WpL+UsBbEyaShILcGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb49f-0002d2-LL; Tue, 19 May 2020 15:27:43 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb49W-0002ch-2F
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:27:35 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04JF4iGn057604; Tue, 19 May 2020 11:27:24 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312wsj1kwn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 11:27:24 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04JF5ORw059262;
 Tue, 19 May 2020 11:27:23 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312wsj1kvn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 11:27:23 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04JFKYIn022340;
 Tue, 19 May 2020 15:27:21 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma03ams.nl.ibm.com with ESMTP id 313xas1wdg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 May 2020 15:27:21 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 04JFRJb542926448
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 15:27:19 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F1AA3A4051;
 Tue, 19 May 2020 15:27:18 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 87152A404D;
 Tue, 19 May 2020 15:27:17 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.202.182])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 19 May 2020 15:27:17 +0000 (GMT)
Date: Tue, 19 May 2020 18:27:14 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200519152714.GF1059226@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519150452.GH1551@shell.armlinux.org.uk>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-19_04:2020-05-19,
 2020-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=926
 lowpriorityscore=0 cotscore=-2147483648 suspectscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 adultscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005190131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_082734_223467_484D85EA 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, May 19, 2020 at 05:43:06PM +0300, Mike Rapoport wrote:
> > On Tue, May 19, 2020 at 09:59:48AM +0200, Arnd Bergmann wrote:
> > > On Mon, May 18, 2020 at 9:45 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > On Mon, May 18, 2020 at 08:58:36AM -0700, Florian Fainelli wrote:
> > > > >
> > > > > Mike, do you want to make a formal submission to Russell's patch
> > > > > tracker? If so, feel free to add:
> > > >
> > > > I actually hoped to hear from people what do they think about switching
> > > > over to SPARSEMEM for the multiplatform builds. I think at least v7 CPUs
> > > > it would make sense.
> > > 
> > > It seems that at least s5p/exynos and clps711x (armv4) used to default to
> > > sparsemem, and that got lost in the multiplatform conversion.
> > > 
> > > I also see discontiguous memory ranges in multiple broadcom chips,
> > > on TI dm8168, ecx-2000 and imx.
> > > 
> > > > Russel, Arnd, can you comment please?
> > > 
> > > I see no problem with giving users the choice for all multiplatform
> > > builds. No idea on what the default should be really, i.e. whether
> > > only v7 configurations should make it the default, or rather none of
> > > them or all of them.
> > 
> > Me neither :)
> > 
> > I'd say let's move forward with letting user select the memory model for
> > all multiplaform builds and keep flatmem the default.
> > 
> > Enabling sparsemem (with SPARSEMEM_STATIC) for defconfig build increases
> > the kernel nearly by 8k and most probably will make things slower.
> 
> I think when selecting the default, you need to consider whether
> platforms can boot with that default configuration or not.
> 
> There are cases where the reason to use sparsemem is not an optional
> one but is out of necessity - they require the page array to be split
> up in order to boot successfully.
> 
> With that in mind, flatmem becomes an "optimisation" over sparsemem.

At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX, 
ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.

I do not intend to change that, I am only going add an ability to select
the memory model for ARCH_MULTIPLATFORM. 

I'll respin the series on the list before adding the patches to the
patch system.

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
