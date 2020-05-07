Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F871C8663
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpBRtLDfIMvZs39j23UMlE5ZQItLCF7Beq8LIJ/F7jo=; b=f+4eIPPiqMgMg9
	wouUEAUMmC2V8lF68t6RHe2kQC9f4kLZQe2G43c69znlytu1/9I8AgHVni4tB3qhC0ow41br8QV+V
	TJPQ8ev1L/lmRPvabyq2YR7YCtU6/MgUrVnzuM9e7i475/o7VFep/8NBtvI6BC0nnsGCJ0GzfbfIK
	WQtU6xJTJes0eYU8PGLiC52HcPkk80Z3kGMA23Y7AoQWgHxNPoam9KoUD1zB1Xt3szmHU+hI438YT
	fOnmqT0HJp8yqKKfrR6ZNFI8j9jdjNbHMwFSWBJgyWhPOjw0+IayftWSSYDxYE7YkLrX3Xba+I7jL
	pfcPCj1xrtIM3V+6A61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdTN-0003RY-8X; Thu, 07 May 2020 10:09:45 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdTG-0003R3-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:09:39 +0000
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 047A1Xmb110478; Thu, 7 May 2020 06:09:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30s4gwxe0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 06:09:28 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 047A1kwi110956;
 Thu, 7 May 2020 06:09:27 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.70])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30s4gwxdun-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 06:09:27 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
 by ppma01fra.de.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 047A5GIc010683;
 Thu, 7 May 2020 10:09:15 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma01fra.de.ibm.com with ESMTP id 30s0g5chgt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 10:09:15 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 047A9D8u64159964
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 May 2020 10:09:13 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9F4124C058;
 Thu,  7 May 2020 10:09:13 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EAB0C4C040;
 Thu,  7 May 2020 10:09:12 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.201.211])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  7 May 2020 10:09:12 +0000 (GMT)
Date: Thu, 7 May 2020 13:09:11 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/2] Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200507100911.GD683243@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200507081409.GQ1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507081409.GQ1551@shell.armlinux.org.uk>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_06:2020-05-05,
 2020-05-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_030938_246343_52D80BFB 
X-CRM114-Status: GOOD (  17.68  )
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
Cc: sboyd@kernel.org, opendmb@gmail.com,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, May 07, 2020 at 09:14:09AM +0100, Russell King - ARM Linux admin wrote:
> On Wed, May 06, 2020 at 04:50:07PM -0700, Florian Fainelli wrote:
> > Hi all,
> > 
> > This patch series somehow got lost back in 2015, and while looking at
> > the various patches that we are carrying in our BRCMSTB downstream
> > kernel those two patches should have made it upstream.
> 
> I don't believe it's a good idea for multiplatform.
> 
> If you have a platform that relies on sparsemem within the multiplatform
> family, and you select flatmem, how would it boot?
> 
> Sparsemem can support flatmem layouts, but flatmem can't support
> sparsemem layouts.
> 
> So, allowing flatmem seems to go against the underlying principle of
> multiplatform support.

Currently neither of multiplafrom builds has SPARSEMEM enabled, so
unless I misread theses patches, they actually allow enabling SPARSEMEM
in menuconfig for custom builds based on a multiplatform config.

> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
