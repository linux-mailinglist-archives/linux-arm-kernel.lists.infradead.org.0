Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166A15103B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 20:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XBvMd+vTbX36Jum3S1vMYMLk0B4Q12RCUHWBIfjO56g=; b=pJVxDAkGGxB6OuvSHh5x880ob
	2ApYheOm5mQO9ioYMlWMaR0+ejL3B4evY0kmPAsn0LNWzsO15DzKSZl3IMgRw8joY9SpBjdkkgRof
	PeldG1TEOT3noxERY09YI8INNb0L5FrCWCN77E8jMws0+BDG4x9WMq8u6pw6vc1n1YdEpDb6ROK7U
	F9HrqBCs4oGlp5zbzyA2cNcBIPz/feH5VzPa7iF/Lr/QCARSnbwaMxXEWB+vMNIwCxjGxBYQtWq3z
	pZKOy55eTH0NS8kheLSXsr5QaGVvBUc/PnJUjHFqLs2AlZBUQXLax1a/bNInT7EQOAHLWG6YMB0gz
	Aiz+Xn3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyhI6-0002tn-J1; Mon, 03 Feb 2020 19:21:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyhHz-0002tS-Cb
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 19:21:44 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 013J8Nt8062474;
 Mon, 3 Feb 2020 19:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=42PnVMUCUUF2AUd5X4IjIG+YZrkroHrBto7UIqcdm7I=;
 b=k6UcJN6a9fj4bVBT2A+mewOERMrwluhFGS6TO46yiEjVlW/GQbem70esh85lKKCJAfeb
 NB0IZJAI5aL1C+PYERInCLic3pNuhCjaCDvpKpydWBSX0dJ3u+7iEGI57xEz0k02EyfO
 xgktd4o+vZfbcLCtjGlDpiQa6U9+nZFbqYkqcYi1h/pMPVTzQrfpelBtraaxyoAVYS6J
 6P4ICg0TQHIaWDBSaGYBkX1H4Q9K86SUdcZwn+H83R6vx6PFSceBuIyNjFNS5YK3ytBh
 LDB9zNGxbvP/P/iiKxYwAVb+SsR5vaHQC3dUIqWqEt8lLobBTLJchFCK01JFof884cHG qQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xw0ru1yp7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 19:21:39 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 013J95eT071854;
 Mon, 3 Feb 2020 19:21:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2xwkfu7bd4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Feb 2020 19:21:39 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 013JLbC1001799;
 Mon, 3 Feb 2020 19:21:37 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 03 Feb 2020 11:21:37 -0800
Subject: Re: [PATCH] firmware: ti_sci: Correct the timeout type in
 ti_sci_do_xfer()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, ssantosh@kernel.org
References: <20200122104009.15622-1-peter.ujfalusi@ti.com>
 <a63c23ec-d468-fc9b-3990-becd7c120df6@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <639ea3ea-ba16-ab23-2390-241bec6fab06@oracle.com>
Date: Mon, 3 Feb 2020 11:21:36 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a63c23ec-d468-fc9b-3990-becd7c120df6@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002030138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002030138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_112143_556972_4CC9B319 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, nm@ti.com, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On 2/3/20 12:38 AM, Tero Kristo wrote:
> On 22/01/2020 12:40, Peter Ujfalusi wrote:
>> msecs_to_jiffies() returns 'unsigned long' and the timeout parameter for
>> wait_for_completion_timeout() is also 'unsigned long'
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Reviewed-by: Tero Kristo <t-kristo@ti.com>
> 
Can you collate all 3 patches in a series and repost
with Tero's ack ? I will add that to next merge window
queue.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
