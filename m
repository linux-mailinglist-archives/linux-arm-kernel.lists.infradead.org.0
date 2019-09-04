Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FABBA870C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G8hfWU2Fh/srrGB2QkEiD6qWiy2xhQ9IOyQI47f5wAE=; b=fQZai/3hirwa41TlnMqQWOJJ+
	OVidIXHru5nT6srybj0ijsbYWOZDONT19n4LNz7eF+K2G/so3XtoDTMTOrKucoYMu4KXr+pEs3Xll
	tPD4luQbnW2lhfCrrMcMnHxapdyNIbpSS7GlDUGTmv10TTID8fPj6BwrR0z4KsgOw3S/OpFpx6iL/
	J/XkHrobUUUbeIyOe4LWg4MhKYFh4vOCcqn1GYdKVT2JIKWzpiqA3wnVmYG4qQW8PYWzDRzXqwp5B
	X2pphHwe9UvDKj8i3RV/uawORCP3KUgVx+3hHNIiyxMnryYNB2hcT9ViX7SB3kNlcSMDgMDm7r3Ka
	4acNDwpvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZCL-0002l3-I8; Wed, 04 Sep 2019 17:36:01 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZCA-0002ki-5D
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:35:51 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x84HXaJ6178061;
 Wed, 4 Sep 2019 17:35:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=oKAkTwSIfkLy1nyeOp7Bhpf8xnCuOFObRzurrxywKfg=;
 b=XfzOvHMWY/mrSSg9OA3+35NYIVw1A8UGcpvQvqJfD4G+PPLpa4dvKXqyaeQFs+Ik99Hk
 gclX6tHZ/fAbx6AAnqpSQXewCEhk4kKchGGNdQ39SjqA2ThB7h6i/JzAAKUshzbKsPRz
 aoVIm4fv7GzuKBriNZsIICBVIjsMdjr8hsN0J2/RcjoI7C1CWzUKyAsRrOqxSvBgRkMa
 dascJ8PVldmFQETpIop4ryhCxsVGJTGRC5AqUxmXU24c7Jn0tvVO2D83ZCNaLKt/bKoJ
 DZWMMgXOFb2j9CpYXw3v088ByYCXqCPPWiipTG70FBaZBJ4daVkfMiJ7er07ZT4OqHXr XQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2uthkbr35c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2019 17:35:41 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x84HXLJS194806;
 Wed, 4 Sep 2019 17:35:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2usu53e1ej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Sep 2019 17:35:41 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x84HZe9E026221;
 Wed, 4 Sep 2019 17:35:40 GMT
Received: from [10.209.243.89] (/10.209.243.89)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 04 Sep 2019 10:35:39 -0700
Subject: Re: [GIT PULL] SOC: TI soc updates for 5.4
To: Arnd Bergmann <arnd@arndb.de>
References: <1566875507-8067-1-git-send-email-santosh.shilimkar@oracle.com>
 <CAK8P3a3_NWWBFrpNpbPH9+47Segi_EaYx2jx5jvPhYJJqR+a7A@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <3af4da24-2246-ff94-b83d-2b6ada4fc362@oracle.com>
Date: Wed, 4 Sep 2019 10:35:38 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3_NWWBFrpNpbPH9+47Segi_EaYx2jx5jvPhYJJqR+a7A@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9370
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909040175
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9370
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909040175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_103550_287489_E04DE25A 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/4/19 6:13 AM, Arnd Bergmann wrote:
> On Tue, Aug 27, 2019 at 5:12 AM Santosh Shilimkar
> <santosh.shilimkar@oracle.com> wrote:
> 
>> ----------------------------------------------------------------
>> soc: TI soc updates for 5.4
>>
>>   -  Update firmware to support PM domain shared and exclusive support
>>   -  Update driver and dt binding docs for the same.
>>
>> ----------------------------------------------------------------
>>
>> Lokesh Vutla (3):
>>    firmware: ti_sci: Allow for device shared and exclusive requests
>>    dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared
>>      access
>>    soc: ti: ti_sci_pm_domains: Add support for exclusive and shared
>>      access
> 
> Hi Santosh,
> 
> I noticed that your branch is based on top of v5.3-rc2, while my
> arm/drivers branch started out from -rc1.
> 
> Do you have any dependencies on -rc2 in your changes? If not,
> could you please resubmit after rebasing? I can also just
> cherry-pick those three commits if that's easier.
> 
No dependencies. Can you please cherry pick them this time ?
Will use rc1 for future pull request(s). Thanks !!

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
