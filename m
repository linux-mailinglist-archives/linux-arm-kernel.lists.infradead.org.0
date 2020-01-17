Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2E7140331
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 06:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VnuwXW+rHaGeezvmnHGtgQFLpalzYMPuzaMwaOHzOt8=; b=rzFhQ7/LVWYa9OyiiHJelE2ss
	jH7oA/fvQJBeZ6hy4NCnP/FqQkXbEpW7FU/TuSpFAnxwhjASgQbzYq58+kl0DAU7RCqSDjkNe0EWq
	Xlv78tpl33Hdsx+na8d7/AwFqno4ItMutzTkRE9wpGp2kywMFp2fJATgcl8O3zOnhbYTSmcVowdpa
	WtJiJ8i0AcCVECwUN+8By8PsJ5g3Ud1dow9kGrAD0WsYcoBaeJAGrWxBUwb2/u22XEfwSNRcMYRjh
	gkma1wJMLbxR0QW/w25wtqkri9btwWLEmF6OBlFvf38pnb/jeYbcspzm/H6Pgdvbb83mDphHlWKMm
	Ed4AOG0pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJpg-0003Hm-HH; Fri, 17 Jan 2020 05:06:08 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJpY-0003H9-HA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 05:06:02 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00H4wCkt099355;
 Fri, 17 Jan 2020 05:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=D0bC/FCro14PWUm8Th4ozu+TaRNGi6mW4T+eWdjKjEc=;
 b=CX8Yfow0UIuoFmq4PnyfErIUqlt3DkIhV660PZTj16gveNqDabK1tbtrGb5DGW3fs6W3
 /BI00cKEXHsAATYRdQq2BoYCLpVfzxgnb5Drg03JhhqAj6x9cfMwcBa0ME66R7E5ah4E
 qMFmBJj4LPznYqUyLbhmSnWIq52G5o9osoXzHAJrlY5IJfP4h80lcqCa8lq5QC5sU3PA
 Bb8M+g6RLyb0j/bEsspHmXt1qcLvXRo+fFEGZedLTLjhGHvR+o7D7VFWdiv8+zL9Jkwr
 LkOI3d5aYyfZs0hB8cgF+FkDLBHUTiJPQrMUBGCX4DI2SikuCeLMk1EluDx4nEg4r+YH 9g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xf73u6f93-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 05:05:45 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00H4wKgT124735;
 Fri, 17 Jan 2020 05:05:44 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2xk22yxfnn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 17 Jan 2020 05:05:44 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00H55cY1025300;
 Fri, 17 Jan 2020 05:05:38 GMT
Received: from [192.168.86.20] (/69.181.241.203)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Jan 2020 21:05:38 -0800
Subject: Re: [GIT_PULL] SOC: TI Keystone Ring Accelerator driver for v5.6
To: Olof Johansson <olof@lixom.net>
References: <1579205259-4845-1-git-send-email-santosh.shilimkar@oracle.com>
 <20200117000358.fe7ew4vvnz4yxbzj@localhost>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <148b6ec3-6a8e-ced8-41b3-3dffd5528ed6@oracle.com>
Date: Thu, 16 Jan 2020 21:05:35 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200117000358.fe7ew4vvnz4yxbzj@localhost>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001170038
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9502
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001170038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_210600_659326_592EF290 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, arnd@arndb.de, khilman@kernel.org,
 linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/20 4:03 PM, Olof Johansson wrote:
> Hi,
> 
> On Thu, Jan 16, 2020 at 12:07:39PM -0800, Santosh Shilimkar wrote:
>> Its bit late for pull request, but if possible, please pull it to
>> soc drivers tree.
>>
>> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>>
>>    Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>>
>> are available in the git repository at:
>>
>>    git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.6
>>
>> for you to fetch changes up to 3277e8aa2504d97e022ecb9777d784ac1a439d36:
>>
>>    soc: ti: k3: add navss ringacc driver (2020-01-15 10:07:27 -0800)
>>
>> ----------------------------------------------------------------
>> SOC: TI Keystone Ring Accelerator driver
>>
>> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
>> enable straightforward passing of work between a producer and a consumer.
>> There is one RINGACC module per NAVSS on TI AM65x SoCs.
> 
> This driver doesn't seem to have exported symbols, and no in-kernel
> users. So how will it be used?
> 
> Usually we ask to hold off until the consuming side/drivers are also ready.
> 
The other patches getting merged via Vinod's tree. The combined series
is split into couple of series. Vinod is going to pull this branch
and apply rest of the patchset. And then couple of additional consumer
drivers will get posted.

> Also, is there a reason this is under drivers/soc/ instead of somewhere more
> suitable in the drivers subsystem? It's not "soc glue code" in the same way as
> drivers/soc was intended originally.
> 
These kind of SOC IP drivers, we put into drivers/soc/ because of lack
of specific subsystem where they fit in. Navigator was also similar example.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
