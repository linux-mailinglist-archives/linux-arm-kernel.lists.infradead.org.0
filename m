Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56511D8870
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 21:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOj5wtG0IvNo+6iXn/O/1aASQW/Q95VLREGsewmYJgM=; b=o6/oD3ALEXXJ+Y
	7xf+miYQxirN+grZPf7auOXw04WydKjsWVVc4WCOyXDmPYKf9V//0E5AK5sRwuZ5YvJhJ9NgsxFEP
	vvFOonkvYzzThCuqgBboUl/o6ej9M4lFjhOLU9VV7dvNcv9V+1zEl/ox37NA121JiGBSLf72xqsx0
	lEpSmmJdvwqhTqhQwhnD0lcIpKYT9upNAaVVpA4lQvf2q5nmCpEiJGngkpnM3hCWEeJvwSYoYvqEo
	djq3FB4GZ14ffIHXVBtHTeZlPCFtEVHuDytZs7If6gI1s2tcBnHmAHsOPLACbhBUsgMPfiwCsfNDu
	q3pZNaQZRnVehXV06Gvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaliD-0003E6-Gi; Mon, 18 May 2020 19:46:09 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jali2-0003DS-BG
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 19:45:59 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04IJXAZ9092513; Mon, 18 May 2020 15:45:41 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312agcx67x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 15:45:40 -0400
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04IJXsYg095586;
 Mon, 18 May 2020 15:45:40 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.108])
 by mx0a-001b2d01.pphosted.com with ESMTP id 312agcx678-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 15:45:40 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
 by ppma05fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 04IJf8kT022557;
 Mon, 18 May 2020 19:45:38 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com
 (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
 by ppma05fra.de.ibm.com with ESMTP id 313x4xg31m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 19:45:38 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 04IJjZP51049034
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 18 May 2020 19:45:36 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E30A55204E;
 Mon, 18 May 2020 19:45:35 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.203.217])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 0EF615204F;
 Mon, 18 May 2020 19:45:34 +0000 (GMT)
Date: Mon, 18 May 2020 22:45:33 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200518194533.GD1059226@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_06:2020-05-15,
 2020-05-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0
 malwarescore=0 impostorscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=2 cotscore=-2147483648
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005180161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_124558_390616_20173A7E 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 rmk+kernel@armlinux.org.uk, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 08:58:36AM -0700, Florian Fainelli wrote:
> 
> 
> On 5/7/2020 1:11 PM, Florian Fainelli wrote:
> > 
> > 
> > On 5/7/2020 12:27 AM, Mike Rapoport wrote:
> >> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
> >>> From: Gregory Fong <gregory.0xf0@gmail.com>
> >>>
> >>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
> >>> system memory can be located deep in the 36-bit address space.  Allow
> >>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
> >>> the default.
> >>>
> >>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
> >>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
> >>> commit message text above.  As Arnd pointed out at [2] there doesn't
> >>> seem to be any reason to tie this specifically to ARMv7, so this has
> >>> been changed to apply to all multiplatform kernels.
> >>>
> >>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
> >>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
> >>>
> >>> Cc: Kevin Cernekee <cernekee@gmail.com>
> >>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
> >>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
> >>> Signed-off-by: Doug Berger <opendmb@gmail.com>
> >>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >>> ---
> >>>  arch/arm/Kconfig | 5 +++++
> >>>  1 file changed, 5 insertions(+)
> >>>
> >>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> >>> index 5986277296c3..7bb5264a9c3a 100644
> >>> --- a/arch/arm/Kconfig
> >>> +++ b/arch/arm/Kconfig
> >>> @@ -312,6 +312,8 @@ choice
> >>>  config ARCH_MULTIPLATFORM
> >>>  	bool "Allow multiple platforms to be selected"
> >>>  	depends on MMU
> >>> +	select ARCH_FLATMEM_ENABLE
> >>> +	select ARCH_SPARSEMEM_ENABLE
> >>
> >> The logic in mm/Kconfig is quite convoluted, so selecting
> >> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
> >>
> >> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
> >> something like:
> > 
> > Yes indeed, thanks that does allow me to select between flatmem and
> > sparsemem from menuconfig correctly now.
> 
> Mike, do you want to make a formal submission to Russell's patch
> tracker? If so, feel free to add:

I actually hoped to hear from people what do they think about switching
over to SPARSEMEM for the multiplatform builds. I think at least v7 CPUs
it would make sense.

Russel, Arnd, can you comment please?

> Tested-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Thanks!
> --
> Florian

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
