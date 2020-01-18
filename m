Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B351418DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 19:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vCpMCPCrXY9KGXlFLjSMJPC5UJMUbZkzPT8vsEaksVQ=; b=sdBPlahnqC7ccONkFrrReD+pa
	GVLDbg1jMsMbdoPQe1DNuMbqYItuj1eCmF7Ws5OQD3In0/iFn/0jgNrjniWJWnrZVGH3Sy96QBykf
	w1dcfUbT8osvlSahA+gmAlbU2BRs0NvXmE4Y8Rhq9ulIKJIOBvHiShiI/PaT4lRSrMWfnsIx10Ng0
	1yh5IS7fV2A2sYkPPehFlmTi1CrGK/sDZfLXaYpt/bhyb7XjOc7wnyA1wGKlufv+pBufDRXp61dmW
	17zz1Ul9kbTEiX7AUjeCMDR79TF0fRQtNjanK0YW2bDxMp42kM/m5v7pMPk2gMICGy2Yepewc46FO
	UtzGVVYFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1issUx-00030A-LF; Sat, 18 Jan 2020 18:07:03 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1issUp-0002y0-N3
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 18:06:57 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00II3IWl131777;
 Sat, 18 Jan 2020 18:06:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=RUMWuHIuYnvZA0LwP+zxBuE0/DCOWdUGFyUQQD5rKQA=;
 b=P4/pJzfhEdJDU7JJZOE10GaVmE6eLwEi8LK1DG8FjjJVxysF8jrUWnQ7L1faMJnXpQYu
 QdVKcKqZdYVG1+zt/xo1sv2OYXwNzwcR/c605UNRaoD8VCq5rrHE4K33hvgpKE84o5yT
 x1IefSONdkDUiREXVYEvQsRMXYawt7sxXDTkbgUEsJ58fdjlg4vH7XgVuzogbJfOsXuf
 w7bEJ3wauliuLHHX7JSobJ21oGHcGFGPmZBBEyJEZex/SXv528ptBIiAesi7F6/rHnlX
 LiYEX/ZkFBL/DvEuaHTmY5azWGkIXJwRw8BbhPC12Vr4lE8u2mWoAjlIQwcPV978OtwZ FQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xkseu1qv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 18 Jan 2020 18:06:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00II3u0D024002;
 Sat, 18 Jan 2020 18:06:36 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2xksc41da6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 18 Jan 2020 18:06:36 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00II6W91026232;
 Sat, 18 Jan 2020 18:06:32 GMT
Received: from [192.168.86.20] (/69.181.241.203)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 18 Jan 2020 10:06:32 -0800
Subject: Re: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep
 expression to RCU lists
To: Amol Grover <frextrite@gmail.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Olof Johansson <olof@lixom.net>
References: <20200118042433.4968-1-frextrite@gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <c58b6751-7502-fad4-e087-9f0bb744ebb9@oracle.com>
Date: Sat, 18 Jan 2020 10:06:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200118042433.4968-1-frextrite@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9504
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001180149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9504
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_100655_838599_FB64999F 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org,
 soc@kernel.org, arm@kernel.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/17/20 8:24 PM, Amol Grover wrote:
> inst->handles is traversed using list_for_each_entry_rcu
> outside an RCU read-side critical section but under the protection
> of knav_dev_lock.
> 
> Hence, add corresponding lockdep expression to silence false-positive
> lockdep warnings, and harden RCU lists.
> 
> Add macro for the corresponding lockdep expression.
> 
> Signed-off-by: Amol Grover <frextrite@gmail.com>
> ---
> v2:
> - Remove rcu_read_lock_held() from lockdep expression since it is
>    implicitly checked for.
>
Thanks.
Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

>   drivers/soc/ti/knav_qmss_queue.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
> index 1ccc9064e1eb..37f3db6c041c 100644
> --- a/drivers/soc/ti/knav_qmss_queue.c
> +++ b/drivers/soc/ti/knav_qmss_queue.c
> @@ -25,6 +25,8 @@
>   
>   static struct knav_device *kdev;
>   static DEFINE_MUTEX(knav_dev_lock);
> +#define knav_dev_lock_held() \
> +	lockdep_is_held(&knav_dev_lock)
>   
>   /* Queue manager register indices in DTS */
>   #define KNAV_QUEUE_PEEK_REG_INDEX	0
> @@ -52,8 +54,9 @@ static DEFINE_MUTEX(knav_dev_lock);
>   #define knav_queue_idx_to_inst(kdev, idx)			\
>   	(kdev->instances + (idx << kdev->inst_shift))
>   
> -#define for_each_handle_rcu(qh, inst)			\
> -	list_for_each_entry_rcu(qh, &inst->handles, list)
> +#define for_each_handle_rcu(qh, inst)				\
> +	list_for_each_entry_rcu(qh, &inst->handles, list,	\
> +				knav_dev_lock_held())
>   
>   #define for_each_instance(idx, inst, kdev)		\
>   	for (idx = 0, inst = kdev->instances;		\
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
