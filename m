Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3F612F76
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fh5A6K+bNpWcrahd/b8p/lKxGCHeZhRX2prxyAy/Mh8=; b=FbG3rZFt7UZuR0
	7jivCRn80wGz3KNctpkVju4QZ1981fnL+cK/EM6zr3vxapdpfkLeaeHZe6GIG7AXnflrQkHvgkptQ
	9mQ+LjJpMJaZq2W706ngkSWHWM4cUwcYT79eI7aczEiXs830LZWmmzab3c8dzsx60vzbxvPkcGiQc
	I19Jxm9Yy2E5Z9GBNP+AjEvLFySsrhtw/1OWqE2Zo9N1VLWI6QJKiTDz5IYlhN20C1f/PAPMWfORI
	mI7ksxjm1PDYol9Q9ZWg8IQg8zBFoU6YMaQFx4cKFZDlAfCWB8yU3IpYFJEZRsrs2lErcY2zYeDSy
	5MhVUaBqGcf0YgmsliUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYXU-0001cM-1L; Fri, 03 May 2019 13:47:48 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYXM-0001bh-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:47:42 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x43DlZcv120910
 for <linux-arm-kernel@lists.infradead.org>; Fri, 3 May 2019 09:47:38 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s8pu300qb-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 03 May 2019 09:47:37 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <heiko.carstens@de.ibm.com>;
 Fri, 3 May 2019 14:47:26 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 3 May 2019 14:47:22 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x43DlLHG23330858
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 3 May 2019 13:47:21 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 27CA642045;
 Fri,  3 May 2019 13:47:21 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9B8E742041;
 Fri,  3 May 2019 13:47:20 +0000 (GMT)
Received: from osiris (unknown [9.152.212.21])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Fri,  3 May 2019 13:47:20 +0000 (GMT)
Date: Fri, 3 May 2019 15:47:19 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 2/3] s390: remove ARCH_SELECT_MEMORY_MODEL
References: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
 <1556740577-4140-3-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556740577-4140-3-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050313-0012-0000-0000-00000317F2E3
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050313-0013-0000-0000-0000215065E1
Message-Id: <20190503134719.GB5602@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=849 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905030087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_064740_900247_35A64022 
X-CRM114-Status: GOOD (  21.84  )
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
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, sparclinux@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 10:56:16PM +0300, Mike Rapoport wrote:
> The only reason s390 has ARCH_SELECT_MEMORY_MODEL option in
> arch/s390/Kconfig is an ancient compile error with allnoconfig which was
> fixed by commit 97195d6b411f ("[S390] fix sparsemem related compile error
> with allnoconfig on s390") by adding the ARCH_SELECT_MEMORY_MODEL option.
> 
> Since then a lot have changed and now allnoconfig builds just fine without
> ARCH_SELECT_MEMORY_MODEL, so it can be removed.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/s390/Kconfig | 3 ---
>  1 file changed, 3 deletions(-)

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
