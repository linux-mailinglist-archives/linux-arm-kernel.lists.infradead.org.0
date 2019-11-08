Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7E3F4381
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhbLo7pDMTCHdTs2Tj1RTnj7TJsYgjFcvEoC/ttKw0s=; b=QGYKNuweBkDkaF
	sDrcquOefozmksEl0Lg+8f2AdkgWw2CinWEO+CHgQgy8DSF1VsZs44riF803VjJMgiYqfv2D35q4i
	bTtAmWx174rclTIHnLXxhoD1KPvDMPXB5BPAZfYw2uLWS+yLv8tUaE5BbSfwnDYtxfLtUSV4DWGT6
	16JZ7mqpGOqAuR3iPSDZXuF3uQoWq4OC34ojhZpip6KyWVimkiSmFn+b6mOfBhZ9zP9qMiFsiEvei
	vqN1DzEU17EfPqqOQcklVjNyY0PJuorMyr8fTP9n1BpJ6zz3eoCOy25IYvbz+yVmiWrbR5xi0jfZb
	1e0tS4KJHvPcBiE9sugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0iM-0004kk-Qx; Fri, 08 Nov 2019 09:37:58 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0gj-0003Q1-Hn
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:36:19 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA89ZRBl100122
 for <linux-arm-kernel@lists.infradead.org>; Fri, 8 Nov 2019 04:36:16 -0500
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w41w7xws1-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 08 Nov 2019 04:36:14 -0500
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <alistair@popple.id.au>;
 Fri, 8 Nov 2019 09:36:01 -0000
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Fri, 8 Nov 2019 09:35:57 -0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id xA89ZLIj41877838
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 Nov 2019 09:35:21 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6EB0811C04C;
 Fri,  8 Nov 2019 09:35:56 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 19A4511C050;
 Fri,  8 Nov 2019 09:35:56 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  8 Nov 2019 09:35:56 +0000 (GMT)
Received: from townsend.localnet (unknown [9.81.221.11])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 74862A027A;
 Fri,  8 Nov 2019 20:35:53 +1100 (AEDT)
From: Alistair Popple <alistair@popple.id.au>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 04/11] trace: fsi: Print transfer size unsigned
Date: Fri, 08 Nov 2019 20:21:01 +1100
In-Reply-To: <20191108051945.7109-5-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
 <20191108051945.7109-5-joel@jms.id.au>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19110809-0012-0000-0000-00000361D4FD
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19110809-0013-0000-0000-0000219D38D5
Message-Id: <2120832.yXaHOgoxCj@townsend>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-08_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1034 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=810 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911080093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_013617_738056_51983D60 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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

Acked-by: Alistair Popple <alistair@popple.id.au>

On Friday, 8 November 2019 4:19:38 PM AEDT Joel Stanley wrote:
> From: Andrew Jeffery <andrew@aj.id.au>
> 
> Due to other bugs I observed a spurious -1 transfer size.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  include/trace/events/fsi.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/trace/events/fsi.h b/include/trace/events/fsi.h
> index 92e5e89e52ed..9832cb8e0eb0 100644
> --- a/include/trace/events/fsi.h
> +++ b/include/trace/events/fsi.h
> @@ -26,7 +26,7 @@ TRACE_EVENT(fsi_master_read,
>  		__entry->addr = addr;
>  		__entry->size = size;
>  	),
> -	TP_printk("fsi%d:%02d:%02d %08x[%zd]",
> +	TP_printk("fsi%d:%02d:%02d %08x[%zu]",
>  		__entry->master_idx,
>  		__entry->link,
>  		__entry->id,
> @@ -56,7 +56,7 @@ TRACE_EVENT(fsi_master_write,
>  		__entry->data = 0;
>  		memcpy(&__entry->data, data, size);
>  	),
> -	TP_printk("fsi%d:%02d:%02d %08x[%zd] <= {%*ph}",
> +	TP_printk("fsi%d:%02d:%02d %08x[%zu] <= {%*ph}",
>  		__entry->master_idx,
>  		__entry->link,
>  		__entry->id,
> @@ -93,7 +93,7 @@ TRACE_EVENT(fsi_master_rw_result,
>  		if (__entry->write || !__entry->ret)
>  			memcpy(&__entry->data, data, size);
>  	),
> -	TP_printk("fsi%d:%02d:%02d %08x[%zd] %s {%*ph} ret %d",
> +	TP_printk("fsi%d:%02d:%02d %08x[%zu] %s {%*ph} ret %d",
>  		__entry->master_idx,
>  		__entry->link,
>  		__entry->id,
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
