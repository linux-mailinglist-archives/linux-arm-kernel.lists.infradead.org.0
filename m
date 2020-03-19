Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B6518B862
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:51:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oZuAWNcFWj1MQitdNPjHgQMrP4zzv9c8AtauW2VV1zs=; b=YZLQeEshBzSy7VGjxozB/5Upp
	0HEpJ3y3DU6sTzFWSETQTj0kmdQNSgr5n3LYiKzdV/UjPluECpfqNW8djzaibb41zPBNr4N3TxuUL
	UNfOd5kHPOHvJCXkYno+5zZUquf3zO4uD/L2cFHy3RsLWRYDFk/GY+7/+WlLVLsPekRBy0f7jSV2V
	QPhm4+nEw8tHL2G9jxPrf/SoOc0bCu26xZf/OLp7dcBwZWskcr2dU8BCVJTmPv9lLaIU//GlmVLPh
	eLME00gfihOPlkAPB41sU4hRfEBaMpryZOCiJ0bFXJHpvTXd6NWE55lTCT0u9QGsZ9eQMutJrmzQG
	gIAfne4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvaI-0000aR-Ii; Thu, 19 Mar 2020 13:51:42 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEva8-0000Z9-EG; Thu, 19 Mar 2020 13:51:33 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JDgtZM174045;
 Thu, 19 Mar 2020 13:51:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=eWXMKVtdGsYfSp2Ry0nG0/jtLiPQGoFuRS02zDj15tQ=;
 b=EirR+/p4Rdmb9Ei0aSLzxHfRnXibD0FmfjNKVZ0k67S3QzSdmAZxs+l7fCWbNjHKF+B8
 DHZlebdIoyP/ynFl7MefE6b0IzeQ90OFxE6DUG+NB908VZl9BwJxJn6EA5PZkG/iNkUg
 zMq7/+m8JJU1tNqKtjfRYnM3y2cr1cbMW4N8IMST9xJYq8luQSpouy7ea4zbGQ7uzweC
 qaxrBUGCEYTmhE+G71BcnntMd0rZwHeZGGvpunaawKsJxR1HSx7j/SrfTnYpaFQzuloG
 c1sSaF5h1S3IJK5UrvqiIVTUA0JDlE/q2b6V63WudqzeQsy71hHL90MvCoj5vsdHNBcZ kA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2yrpprgeek-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 13:51:21 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02JDoesY139259;
 Thu, 19 Mar 2020 13:51:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2ys90440s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Mar 2020 13:51:21 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02JDpJmA011291;
 Thu, 19 Mar 2020 13:51:19 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Mar 2020 06:51:18 -0700
Subject: Re: [PATCH 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1584603551-23845-1-git-send-email-amit.kachhap@arm.com>
 <1584603551-23845-2-git-send-email-amit.kachhap@arm.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <5235269c-e3c7-efff-6083-a05a39699735@Oracle.com>
Date: Thu, 19 Mar 2020 08:51:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1584603551-23845-2-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999 mlxscore=0
 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190061
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011
 impostorscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_065132_564394_E10C0731 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/19/20 2:39 AM, Amit Daniel Kachhap wrote:
> Add documentation for KERNELPACMASK variable being added to vmcoreinfo.
> 
> It indicates the PAC bits mask information of signed kernel pointers if
> ARMv8.3-A Pointer Authentication feature is present.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Dave Anderson <anderson@redhat.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>   Documentation/admin-guide/kdump/vmcoreinfo.rst | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> index 007a6b8..5cc3ee6 100644
> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> @@ -393,6 +393,12 @@ KERNELOFFSET
>   The kernel randomization offset. Used to compute the page offset. If
>   KASLR is disabled, this value is zero.
>   
> +KERNELPACMASK
> +-------------
> +
> +Indicates the PAC bits mask information if Pointer Authentication is
> +enabled and address authentication feature is present.
> +
>   arm
>   ===
>   
> 
> 


Hi,

Does this require changes to the  makedumpfile or crash utilities ?



-- 
Thank You,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
