Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAE75C6A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 03:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VUaF8RxB3/HJdWstpLSDKjVt1QS0lMa+hTk4G4aw/60=; b=eUuElLeAibEgg98aUHDvSECru
	pvi75JmiQ/LG2Xdg04mxKTt1oyWrvlpi5xO6e90ELDeMP0IkIL6mpHJU6t0ZJ62LmIQQro/0BW2tQ
	BbfI3zVq56i6G2WVseL7hKH+2kEix1JYBwxX7mRyQhbBA2jCqpLiCe83w7vgwykKZfInJMzQEsJKH
	Yn11DEbeSz7z8OE0MQ8nRojxPjX/b+jH1vhX/9Jd1+Gg9q+dKzdA/8N8kuMfXLWaIT3tGox+LYB3I
	ZegyxesUiPOe5lJbi5Y/g/gWqdI+WUY51LMsr9q9RTKsOzlT7bFoZuOzKKm+aWVLIW40WJwmRGZdj
	OLoIY8waw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi7f1-0002MT-8s; Tue, 02 Jul 2019 01:32:43 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi7eo-0002M5-Ng
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 01:32:32 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x621IeTc170139;
 Tue, 2 Jul 2019 01:32:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=CTmK2bG4LfuAj+OGk5lCbn5r1g3VskoESmcpOd+WCVk=;
 b=PHuaCxD02WjFRnUJ0yL8NVZgO4T7q7BEmHAMOV5o9R9/JS8Q+ePLiaUb2NCNYvk/mUMC
 pQnfRR5Ko7UcMlbnXNbAe2rjXBr62NZHhOpAD5k1aT5bWjazZtUvKheBop1Y/eOMozHO
 Ub5k3EToCB2v6o4SkEc+JRpDkEUmpW+UEnZoDoqzNyN6oiEQJTD0oGxWUpy7ACDzEk93
 RkIuy4JL8XIXg6EnfgwGnMa9pxdbyl9yomSdTjoulOmiNs6WTxPf/0AAsDQwa1SlwWCN
 +9APY4EzjyIUIXo9sumxogh/scE9JS597BkUUtLMOClQsEY2tCVyovnNMCBRFbRfJ3l3 vw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2te61prhk2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jul 2019 01:32:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x621N30L022377;
 Tue, 2 Jul 2019 01:30:15 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2tebqg7pkm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jul 2019 01:30:14 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x621UAkk007677;
 Tue, 2 Jul 2019 01:30:11 GMT
Received: from [10.159.132.152] (/10.159.132.152)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jul 2019 18:30:10 -0700
Subject: Re: [PATCH] soc: ti: fix irq-ti-sci link error
To: Olof Johansson <olof@lixom.net>
References: <20190617130149.1782930-1-arnd@arndb.de>
 <7a96a4d2-25e7-f9cf-1109-23c5495325a8@oracle.com>
 <CAOesGMi5urJPF3cKfF+UB_KrK50_VQw+MMS5w_UqKzEMYKeXFA@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <f767335b-eed9-13fd-3a85-774bde43eba4@oracle.com>
Date: Mon, 1 Jul 2019 18:30:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAOesGMi5urJPF3cKfF+UB_KrK50_VQw+MMS5w_UqKzEMYKeXFA@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9305
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907020012
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9305
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907020012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_183230_910166_D7826383 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: kernle.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Tony Lindgren <tony@atomide.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/1/19 3:24 PM, Olof Johansson wrote:
> On Mon, Jul 1, 2019 at 10:36 AM <santosh.shilimkar@oracle.com> wrote:
>>
>> On 6/17/19 6:01 AM, Arnd Bergmann wrote:
>>> The irqchip driver depends on the SoC specific driver, but we want
>>> to be able to compile-test it elsewhere:
>>>
>>> WARNING: unmet direct dependencies detected for TI_SCI_INTA_MSI_DOMAIN
>>>     Depends on [n]: SOC_TI [=n]
>>>     Selected by [y]:
>>>     - TI_SCI_INTA_IRQCHIP [=y] && TI_SCI_PROTOCOL [=y]
>>>
>>> drivers/irqchip/irq-ti-sci-inta.o: In function `ti_sci_inta_irq_domain_probe':
>>> irq-ti-sci-inta.c:(.text+0x204): undefined reference to `ti_sci_inta_msi_create_irq_domain'
>>>
>>> Rearrange the Kconfig and Makefile so we build the soc driver whenever
>>> its users are there, regardless of the SOC_TI option.
>>>
>>> Fixes: 49b323157bf1 ("soc: ti: Add MSI domain bus support for Interrupt Aggregator")
>>> Fixes: f011df6179bd ("irqchip/ti-sci-inta: Add msi domain support")
>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>>> ---
>> Thanks Arnd. Will you be able to add it to your fixes queue.
>>
>> FWIW, Acked-by: Santosh Shilimkar <ssantosh@kernle.org>
> 
> Cc:ing to arm@kernel.org is the best way to make sure it surfaces.
> 
> Also, please do Acked-by on separate line so the tools catch it next
Will do..

> time (also, check for typos. :)
> 
:- )

> Applying to fixes.
Thanks for picking it up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
