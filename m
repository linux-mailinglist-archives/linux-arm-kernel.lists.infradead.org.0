Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C11410BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PlAPAWwGoZsVRlr/8PpVPgeXGedY7479Gp+xRTCWXQc=; b=YY41g3N1/MfcE1BfMnBVt2Jlp
	K6GN7iINGrCizLbzs0yYYGdawMih76bmneHGC8xOZTaxrpWMFxOBbeR5c7OhHY5yu+Da3Qi4enxAS
	tI5NeL0r0BfiM/BIBKjO3sWjnhWKby57cqGJk/VLxbcCGECe7YoHMrRbbg9K3QeF8VboaLGjLnZ1h
	C/noaA/noia8dl+3pOj2lUQynFEt4w2bnWp3x3tv9LlUd0VNxKhu0iy2FkVLKaB1OtdrmpWFOl7dj
	fhU9Qf6wSCmpXzKj31HrE80jprpldBmH3TMcWTRI+cyuy5A/Y2pM6Okjk56f3KpvQY4cqpJITg0ia
	chWb6aQcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWIE-0006q9-Ex; Fri, 17 Jan 2020 18:24:26 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWI0-0006pD-4e
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:24:16 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00HIDFPF186359;
 Fri, 17 Jan 2020 18:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=V6jdRO8DhqcENdZcDjhcv4ayNKUxDX1LtbH6Da7E+34=;
 b=b4Mr7Ihr0XV9WdlwaWg34Hl0DTRKBlJWqerwaqJco3cCtBY7/FeDhy6hUVpcVsto44uK
 6yX0cRD7SwWdMna9wbQ5LCIEnTwRD6/QKS77/hPrJxhmebfvn+9HJq1yWHKqOTHAKC7l
 nC3zc6dRW+WJbKy7zpM2na1+VI0W39bNZ+L6OKzs/x05DecBuD9+unYJX2FK22B3wEpK
 ZEMWL2dfG1bxlwt0ynLP1mLqpziNw6UJose15+KzmDa80uS0XexrsIFD0dRfTESCaWHG
 4CXVQP+bunQ/dSk35jRca/uY6pQ+CsImV4gsmNOzyPeuyx9CIo6WyJfMxkC4jw/pgovm iA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2xf74st9er-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 18:24:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00HIAmtU141255;
 Fri, 17 Jan 2020 18:24:07 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2xk24ff8bm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 18:24:07 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00HIO6VS005836;
 Fri, 17 Jan 2020 18:24:06 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 17 Jan 2020 10:24:05 -0800
Subject: Re: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep
 expression to RCU lists
To: Amol Grover <frextrite@gmail.com>, arm-soc <arm@kernel.org>
References: <20200117133048.31708-1-frextrite@gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <5d77df7f-8693-0232-dbfe-0acfc37e040f@oracle.com>
Date: Fri, 17 Jan 2020 10:24:04 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200117133048.31708-1-frextrite@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9503
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=945
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001170142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9503
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001170142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_102412_266922_DD14235D 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, Santosh Shilimkar <ssantosh@kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/17/20 5:30 AM, Amol Grover wrote:
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
Looks fine to me.

Hi Olof, Arnd,
Can you please pick this one and apply to your driver-soc branch ?
I already sent out pull request and hence the request.

regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
