Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89452F4371
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Te+U+UbkQ/OBXyzkHVwK2UtWrIuQk3fTLILzgegJzDg=; b=D396CL62w87VF7
	sX8hr99Qin/EYO7ReJjBEBTEHVTN0ZlrWiRHp3ArXrCuIyEvmCpkG6X1BSjTpEJItEb7YZ7d0evMC
	V0CbrpdmEKdyx4slcXBXVDzCOJ2tyD7t4dCfjsarTrlK9l3YUBRhOk5AjUMZBCQkfJqqka5CRZqNb
	ozuSOE6jJlHsKWWKKYNE8g/EMtfbF5ld+8Rp3gXVh7fSZlxvKmRa33dKFHCyktvTfSYoNqq+Ka+LW
	B/5t9TlLNR+h39qk5HS1PDC0YsRtgNKaNM2s+aDlMhpW6HXlK9xLevu1cirzLi5JFsVXTVQuu4jDu
	4O5lKDYh/z8O5uSGg+Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0gh-0003Fz-Ab; Fri, 08 Nov 2019 09:36:15 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0gX-0003Db-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:36:07 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA89Y73x015722
 for <linux-arm-kernel@lists.infradead.org>; Fri, 8 Nov 2019 04:36:02 -0500
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w5433bvbd-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 08 Nov 2019 04:36:02 -0500
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <alistair@popple.id.au>;
 Fri, 8 Nov 2019 09:35:59 -0000
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 8 Nov 2019 09:35:56 -0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xA89ZtZm24510474
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 Nov 2019 09:35:55 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DD9AA4C04E;
 Fri,  8 Nov 2019 09:35:54 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4DAD34C046;
 Fri,  8 Nov 2019 09:35:54 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  8 Nov 2019 09:35:54 +0000 (GMT)
Received: from townsend.localnet (unknown [9.81.221.11])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id B17F9A0273;
 Fri,  8 Nov 2019 20:35:51 +1100 (AEDT)
From: Alistair Popple <alistair@popple.id.au>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 03/11] ABI: Update FSI path documentation
Date: Fri, 08 Nov 2019 20:27:47 +1100
In-Reply-To: <20191108051945.7109-4-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
 <20191108051945.7109-4-joel@jms.id.au>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19110809-0028-0000-0000-000003B416AA
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19110809-0029-0000-0000-00002477177B
Message-Id: <3563232.FuPAt9pb84@townsend>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-08_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911080093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_013605_842990_EA74B8B6 
X-CRM114-Status: GOOD (  26.72  )
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
Cc: devicetree@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rob Herring <robh+dt@kernel.org>,
 Jeremy Kerr <jk@ozlabs.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, 8 November 2019 4:19:37 PM AEDT Joel Stanley wrote:
> The paths added back in 4.13 weren't quite correct. The in reality the

Minor nit-pick, it should read "In reality the...". Otherwise looks reasonable.

Acked-by: Alistair Popple <alistair@popple.id.au>

> files documented lived under
> 
>   /sys/devices/../fsi0/rescan
>   /sys/devices/../fsi0/break
>   /sys/devices/../fsi0/slave@00:00/term
>   /sys/devices/../fsi0/slave@00:00/raw
> 
> In 5.5 with the addition of the FSI class they move to
> 
>   /sys/devices/../fsi-master/fsi0/rescan
>   /sys/devices/../fsi-master/fsi0/break
>   /sys/devices/../fsi-master/fsi0/slave@00:00/term
>   /sys/devices/../fsi-master/fsi0/slave@00:00/raw
> 
> This is closer to how the (incorrect) documentation described them.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  Documentation/ABI/testing/sysfs-bus-fsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-fsi b/Documentation/ABI/testing/sysfs-bus-fsi
> index 57c806350d6c..320697bdf41d 100644
> --- a/Documentation/ABI/testing/sysfs-bus-fsi
> +++ b/Documentation/ABI/testing/sysfs-bus-fsi
> @@ -1,25 +1,25 @@
> -What:           /sys/bus/platform/devices/fsi-master/rescan
> +What:           /sys/bus/platform/devices/../fsi-master/fsi0/rescan
>  Date:		May 2017
>  KernelVersion:  4.12
> -Contact:        cbostic@linux.vnet.ibm.com
> +Contact:        linux-fsi@lists.ozlabs.org
>  Description:
>                  Initiates a FSI master scan for all connected slave devices
>  		on its links.
>  
> -What:           /sys/bus/platform/devices/fsi-master/break
> +What:           /sys/bus/platform/devices/../fsi-master/fsi0/break
>  Date:		May 2017
>  KernelVersion:  4.12
> -Contact:        cbostic@linux.vnet.ibm.com
> +Contact:        linux-fsi@lists.ozlabs.org
>  Description:
>  		Sends an FSI BREAK command on a master's communication
>  		link to any connnected slaves.  A BREAK resets connected
>  		device's logic and preps it to receive further commands
>  		from the master.
>  
> -What:           /sys/bus/platform/devices/fsi-master/slave@00:00/term
> +What:           /sys/bus/platform/devices/../fsi-master/fsi0/slave@00:00/term
>  Date:		May 2017
>  KernelVersion:  4.12
> -Contact:        cbostic@linux.vnet.ibm.com
> +Contact:        linux-fsi@lists.ozlabs.org
>  Description:
>  		Sends an FSI terminate command from the master to its
>  		connected slave. A terminate resets the slave's state machines
> @@ -29,10 +29,10 @@ Description:
>  		ongoing operation in case of an expired 'Master Time Out'
>  		timer.
>  
> -What:           /sys/bus/platform/devices/fsi-master/slave@00:00/raw
> +What:           /sys/bus/platform/devices/../fsi-master/fsi0/slave@00:00/raw
>  Date:		May 2017
>  KernelVersion:  4.12
> -Contact:        cbostic@linux.vnet.ibm.com
> +Contact:        linux-fsi@lists.ozlabs.org
>  Description:
>  		Provides a means of reading/writing a 32 bit value from/to a
>  		specified FSI bus address.
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
