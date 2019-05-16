Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9263A1FEC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 07:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FU5X7wxNi03juuwhiIqf1tFaM8LwzAv6ll9y0yhziw=; b=LfKDhtesD5DeIp
	ZEwtLbCfBqzpYgXFQh7K9SSRCgmiLZ1qzaX4I32qTwPTP6fBRQiHnuhfzUEun051AfXknx1AlvWxq
	Y6veCLcA9x2RbdtUPSpHvffkvrZQYoDT1LbWNRpGULuk9zaqPWNry4mv12f6pJYGwSJoaaOG4K8Kb
	gqqe7hs00ECQNMduvecbBi3Gba90NFjlYlTcdh3TXmYH10JBcuxfQFbu0S28zB448Zh0vBfNgyukT
	PLdHpCGA1oESS1NuWkrkY0VnfHV2vzTp+J984QFZVOXnBeKgtzoDE74ZxAw4SVHMLrKAd7a63+fsh
	MIg/lWOas5s7sg1zbHqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8nu-0000iH-O5; Thu, 16 May 2019 05:19:42 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8nm-0000hU-Ng
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 05:19:36 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4G5IWRf082636
 for <linux-arm-kernel@lists.infradead.org>; Thu, 16 May 2019 01:19:32 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sgvm7jgg3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 16 May 2019 01:19:31 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 16 May 2019 06:19:29 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 16 May 2019 06:19:25 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4G5JOew57802782
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 May 2019 05:19:24 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7A8A911C06E;
 Thu, 16 May 2019 05:19:24 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 81D8911C05B;
 Thu, 16 May 2019 05:19:23 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 16 May 2019 05:19:23 +0000 (GMT)
Date: Thu, 16 May 2019 08:19:21 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 0/3] remove ARCH_SELECT_MEMORY_MODEL where it has no effect
References: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19051605-4275-0000-0000-000003354B30
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19051605-4276-0000-0000-00003844D161
Message-Id: <20190516051921.GC21366@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-16_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=682 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905160037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_221934_881568_58DBE0B6 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, sparclinux@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andrew,

Can this go via the -mm tree?

On Wed, May 01, 2019 at 10:56:14PM +0300, Mike Rapoport wrote:
> Hi,
> 
> For several architectures the ARCH_SELECT_MEMORY_MODEL has no real effect
> because the dependencies for the memory model are always evaluated to a
> single value.
> 
> Remove the ARCH_SELECT_MEMORY_MODEL from the Kconfigs for these
> architectures.
> 
> Mike Rapoport (3):
>   arm: remove ARCH_SELECT_MEMORY_MODEL
>   s390: remove ARCH_SELECT_MEMORY_MODEL
>   sparc: remove ARCH_SELECT_MEMORY_MODEL
> 
>  arch/arm/Kconfig   | 3 ---
>  arch/s390/Kconfig  | 3 ---
>  arch/sparc/Kconfig | 3 ---
>  3 files changed, 9 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
