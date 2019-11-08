Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E088DF437D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4B7ko8PRkj5eTWAnGSuBkXR59NG8FKkZmlTVb03RPM8=; b=oSSATd743rHHex
	2ETnx+Urfrx4X4EI0suptB+RsH4qYgyUbkdgeAW7dojsH2m0Z39gGNBmZH26vNyH/skd+BVekaGFH
	7OBzpmwkFhUNixNZ5MIUtYR7N07vffI53D5MDV7kb2m+KebGtjuZBr/kynpHq4wymIPwW05JksWyX
	B0sRmp+tqNt5F36tiaQpkKDHfHYypKkHx2JHMFCvWGn93HcEj2s3l/jX1bQ2nNsKdzyUhmhQpg69h
	y2IGs436fLSqHQsCKkoVuuaiiiCaZJ24mZspKe7mOIMUdULwTXjylXbcibTz2UYpekgez9rIxR8Vp
	UFnhjtr0a8MswuZX7wOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0i2-0004QI-HZ; Fri, 08 Nov 2019 09:37:38 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0gY-0003Dh-Dg
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:36:08 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA89WHdl146380
 for <linux-arm-kernel@lists.infradead.org>; Fri, 8 Nov 2019 04:36:03 -0500
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w53pscpmb-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 08 Nov 2019 04:36:03 -0500
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <alistair@popple.id.au>;
 Fri, 8 Nov 2019 09:36:00 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 8 Nov 2019 09:35:55 -0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xA89Zsv937224532
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 Nov 2019 09:35:54 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 96EFC5204F;
 Fri,  8 Nov 2019 09:35:54 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id F40635204E;
 Fri,  8 Nov 2019 09:35:53 +0000 (GMT)
Received: from townsend.localnet (unknown [9.81.221.11])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id C9C28A01E3;
 Fri,  8 Nov 2019 20:35:49 +1100 (AEDT)
From: Alistair Popple <alistair@popple.id.au>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 11/11] fsi: aspeed: Fix OPB0 byte order register values
Date: Fri, 08 Nov 2019 20:31:12 +1100
In-Reply-To: <20191108051945.7109-12-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
 <20191108051945.7109-12-joel@jms.id.au>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19110809-0008-0000-0000-0000032CAD21
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19110809-0009-0000-0000-00004A4BB52E
Message-Id: <1856299.kAykGyoYJU@townsend>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-08_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911080093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_013606_461791_2B3DC572 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Andrew Jeffery <andrew@aj.id.au>,
 Greg KH <gregkh@linuxfoundation.org>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Rob Herring <robh+dt@kernel.org>, Jeremy Kerr <jk@ozlabs.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OPB data mirroring is pretty special, glad someone has figured it out and made 
some artwork in the process.

Acked-by: Alistair Popple <alistair@popple.id.au>

On Friday, 8 November 2019 4:19:45 PM AEDT Joel Stanley wrote:
> From: Andrew Jeffery <andrew@aj.id.au>
> 
> The data byte order selection registers in the APB2OPB primarily expose some
> internal plumbing necessary to get correct write accesses onto the OPB.
> OPB write cycles require "data mirroring" across the 32-bit data bus to
> support variable data width slaves that don't implement "byte enables".
> For slaves that do implement byte enables the master can signal which
> bytes on the data bus the slave should consider valid.
> 
> The data mirroring behaviour is specified by the following table:
> 
>     +-----------------+----------+-----------------------------------+
>     |                 |          |          32-bit Data Bus          |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |         |       |          |         |         |       |       |
>     |   ABus  | Mn_BE |  Request |   Dbus  |   Dbus  |  Dbus |  Dbus |
>     | (30:31) | (0:3) | Transfer |   0:7   |   8:15  | 16:23 | 24:31 |
>     |         |       |   Size   |  byte0  |  byte1  | byte2 | byte3 |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    00   |  1111 | fullword |  byte0  |  byte1  | byte2 | byte3 |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    00   |  1110 | halfword |  byte0  |  byte1  | byte2 |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    01   |  0111 |   byte   | _byte1_ |  byte1  | byte2 | byte3 |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    00   |  1100 | halfword |  byte0  |  byte1  |       |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    01   |  0110 |   byte   | _byte1_ |  byte1  | byte2 |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    10   |  0011 | halfword | _byte2_ | _byte3_ | byte2 | byte3 |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    00   |  1000 |   byte   |  byte0  |         |       |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    01   |  0100 |   byte   | _byte1_ |  byte1  |       |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    10   |  0010 |   byte   | _byte2_ |         | byte2 |       |
>     +---------+-------+----------+---------+---------+-------+-------+
>     |    11   |  0001 |   byte   | _byte3_ | _byte3_ |       | byte3 |
>     +---------+-------+----------+---------+---------+-------+-------+
> 
> Mirrored data values are highlighted by underscores in the Dbus columns.
> The values in the ABus and Request Transfer Size columns correspond to
> values in the field names listed in the write data order select register
> descriptions.
> 
> Similar configuration registers are exposed for reads which enables the
> secondary purpose of configuring hardware endian conversions. It appears the
> data bus byte order is switched around in hardware so set the registers such
> that we can access the correct values for all widths. The values were
> determined by experimentation on hardware against fixed CFAM register
> values to configure the read data order, then in combination with the
> table above and the register layout documentation in the AST2600
> datasheet performing write/read cycles to configure the write data order
> registers.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/fsi/fsi-master-aspeed.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-
aspeed.c
> index 95e226ac78b9..f49742b310c2 100644
> --- a/drivers/fsi/fsi-master-aspeed.c
> +++ b/drivers/fsi/fsi-master-aspeed.c
> @@ -459,11 +459,11 @@ static int fsi_master_aspeed_probe(struct 
platform_device *pdev)
>  	writel(fsi_base, aspeed->base + OPB_FSI_BASE);
>  
>  	/* Set read data order */
> -	writel(0x0011bb1b, aspeed->base + OPB0_READ_ORDER1);
> +	writel(0x00030b1b, aspeed->base + OPB0_READ_ORDER1);
>  
>  	/* Set write data order */
> -	writel(0x0011bb1b, aspeed->base + OPB0_WRITE_ORDER1);
> -	writel(0xffaa5500, aspeed->base + OPB0_WRITE_ORDER2);
> +	writel(0x0011101b, aspeed->base + OPB0_WRITE_ORDER1);
> +	writel(0x0c330f3f, aspeed->base + OPB0_WRITE_ORDER2);
>  
>  	/*
>  	 * Select OPB0 for all operations.
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
