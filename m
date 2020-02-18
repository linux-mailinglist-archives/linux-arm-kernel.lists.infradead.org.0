Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0862162ABF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbcOMJ+2fVDJHmzGwmMYXP/4eY7/sIbvZEVSAUx6FlM=; b=Hh7g9P7cgB67gH
	4cWZGQ9CsISOq9Yi9vKN1P8ElvU4ZEIPdxzR/VMPptT2RzaH9Fa1kakXXV1HLxcVDppzOfrgHrZ48
	qVgsmAWY7qLfcHs7dKPIo/J2frXrxotzm0W9gUIi8KtxrpBd4P74+PonPGonkGq8lvqtHF0C6BhOE
	/o96FKYGJQoYa/mX+HU9Mgo1DArlNYLnhIDvlj8hl/a86a0jlWCE2eJGrw5TkVoQe/CP9Vk7LMfPV
	7XOtqIP+AeCycu/SjyKp+9bBNMhXz3vtcY99R5Kh2YVgWu6zNZsoRJyGpEibfxNJ59+HZj/l2aWyx
	VLAb4wWPdLykAe48axpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j45q7-0002bz-4Q; Tue, 18 Feb 2020 16:35:15 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j45pw-0001a0-UR
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:35:06 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01IGVM8B004765;
 Tue, 18 Feb 2020 16:34:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=9uIbz+6IZmhj+I6Ic8HpGMJUYSme2yHvjIUhlDjxNmM=;
 b=jtIPsg8TtK+AILGdKY3iw3MXqwd1YZljuFfBFRFF8O2BEklHbn/34z1C3+dOVpTim1nC
 AVnwk+Ai7/yXUDdypDiEmIuTRmcvdkLlGim74/L7Y0fbBNLHnMpVHgjpeMn4beh2KfrA
 mNMlJZLODJM570UZ7fCXhe8C5MPIVtkptQ8fhS0FwzyWbrzo8f8R0B/OXRY9ieck7FSd
 2yjUzpEnPO67hqN2nH5kDIUq+Q0tK0z5z1YY09dLVdqj58HJT7+XkoU3yfy2tQDTF1Oi
 nUN8pP42lh34BL8GG7W+wx7sfqueSxaTnFE4FiyoESdGtYu/C2NORDfsjh12wNNXlxm6 mA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2y8e1hjruy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 16:34:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01IGRrFR019262;
 Tue, 18 Feb 2020 16:34:50 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2y6ternbnp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 16:34:50 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01IGYmmg023227;
 Tue, 18 Feb 2020 16:34:48 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Feb 2020 08:34:48 -0800
Date: Tue, 18 Feb 2020 11:35:04 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217204803.GA13479@Red>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 bulkscore=0
 suspectscore=2 mlxscore=0 mlxlogscore=987 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002180121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1011 adultscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_083505_084260_80831C9E 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 tj@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corentin,

On Mon, Feb 17, 2020 at 09:48:03PM +0100, Corentin Labbe wrote:
> When running some CI test jobs (targeting crypto tests), I always get the following WARNING:

Can you be more specific about which test triggers this?  I used the config
option you mention and failed to reproduce after doing the boot-time crypto
tests and running various tcrypt incantations.

> [    7.886361] ------------[ cut here ]------------
> [    7.886388] WARNING: CPU: 2 PID: 147 at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
> [    7.886394] Modules linked in: ghash_generic
> [    7.886409] CPU: 2 PID: 147 Comm: modprobe Not tainted 5.6.0-rc1-next-20200214-00068-g166c9264f0b1-dirty #545

I was using just plain next-20200214.  Can't find 166c9264f0b1, what tag/branch
were you using exactly?

> So it seems that it is a "events" workqueue that hit this problem.

Looks like "schedule_work(&init_free_wq)" in do_init_module(), can't be sure
though.

thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
