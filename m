Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB21410D88
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iL1RwEy3ZDFuiDCV7N6GpuGjZsJ/kb/gthTN39oPdy0=; b=MCS
	F+Np63qURzNiybUwmjkxFpovu0qSmEhe4PJPsnf0poYpyqxLCYgy2WwmSszmc2z/McyjtAyUV5K35
	BRnemP5yjsntbyhRncQrfpjp5aqyvTO3axll+6LNAp/iA/i+p+xZalxU6+vlhaP+IoKZJwpokPaaj
	/8UHflej+eyx4+whc/OMoQ1vuFCxIca1dPS/DLxKToX8L2U1ivfq5L7GZCMrnnTvr2x/BLXKiYk2h
	JR8ckxV746Jevixqnxg8Vhpo6ZjWuUw6Rt77Zx3sZq5HSv3WUogg6MHcHlfxwb8X7XXauouTEzJ5Z
	pfEUrNeW4ft6AGFO5/NP8dudS5RSthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvLK-0006t2-61; Wed, 01 May 2019 19:56:38 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvLE-0006rD-1G
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:56:33 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x41JqFrM106898
 for <linux-arm-kernel@lists.infradead.org>; Wed, 1 May 2019 15:56:29 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s7gykjr6y-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 01 May 2019 15:56:29 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 1 May 2019 20:56:27 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 1 May 2019 20:56:24 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x41JuNGo38338626
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 1 May 2019 19:56:23 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8362BAE05D;
 Wed,  1 May 2019 19:56:23 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5D165AE055;
 Wed,  1 May 2019 19:56:20 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.12])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  1 May 2019 19:56:20 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Wed, 01 May 2019 22:56:18 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 0/3] remove ARCH_SELECT_MEMORY_MODEL where it has no effect
Date: Wed,  1 May 2019 22:56:14 +0300
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19050119-0020-0000-0000-000003384BDA
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050119-0021-0000-0000-0000218AD092
Message-Id: <1556740577-4140-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-01_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=524 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905010124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_125632_194739_69BC95F3 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.7 KHOP_DYNAMIC           Relay looks like a dynamic address
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
 Mike Rapoport <rppt@linux.ibm.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

For several architectures the ARCH_SELECT_MEMORY_MODEL has no real effect
because the dependencies for the memory model are always evaluated to a
single value.

Remove the ARCH_SELECT_MEMORY_MODEL from the Kconfigs for these
architectures.

Mike Rapoport (3):
  arm: remove ARCH_SELECT_MEMORY_MODEL
  s390: remove ARCH_SELECT_MEMORY_MODEL
  sparc: remove ARCH_SELECT_MEMORY_MODEL

 arch/arm/Kconfig   | 3 ---
 arch/s390/Kconfig  | 3 ---
 arch/sparc/Kconfig | 3 ---
 3 files changed, 9 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
