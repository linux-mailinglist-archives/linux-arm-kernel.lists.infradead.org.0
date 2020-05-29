Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCB81E87A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PSvNxliTsTTZffWSpB1FaMlG96qvkAL0zTDhqZfR8NI=; b=UZPgzgWO/JHkmWvqH3OpdMex5
	u7/MnQq5RAtWbCy9MRLlzZc30Oh3XSl4CWScLdGG2vuT7cK1Yu7OvICknz5EZbK/lq2DepGvB8+a/
	JVW3FF5o8/armWNXO0LcOTjlN8H/IAlAwKiYX4aXVkTZ/4cHxolKGisan+LC4HhJEkruIvdvcgxkM
	iGtj/SSAF3mlzCUUkOorIDn9AN9uPG9mQHhTaTs4nzdFfg7axaX49K7669qkIeUDdqfHN9RrdmcvV
	kJyRXnxuIssfSGd+UiA4KJw5h6N8JdujmExr65DdMsvSXRhNd2zZuox4cGGvHfvatNsKC3N24EbbW
	g9Gum4Z0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekXV-0004XZ-PR; Fri, 29 May 2020 19:19:33 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekXJ-0004X8-02
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 19:19:22 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04TJI2dv053359;
 Fri, 29 May 2020 19:19:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=otyw0YZ9V4bNP7MKEHhgkJR24Ilms/TAyE06rglTaVw=;
 b=SBFCAXhe5o7UqD1c4n02OJe340CvZKWOODvizoXzF2lwgUE0OdKTGfhspnUPt5yS9oQo
 P3dRdk1e6Sw1BKCx2z/hVtZrbF95ezxGlgng/6RRvOLHadjc7dY9f3ADU9bZXQswms1F
 hOuo3/jSbMsvbnVaFNKi2M0GQDcL0GU/sWR3yGhqZRBoavW1uE6bdwgV+YqEg+jlJnc7
 akAoRD3SIFVpsrKbKILYHnZVtzh5d4v5Nz3IEhDDNQX1wUuMdPr2ezKaKWx2tJT/CklQ
 OktnWWTgVgjAwgmzrNUaTaQn9lL1TMbSls1J4WacU8CtsIAZfMREGh5kIv55xWedt0em og== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 318xbkc43q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 19:19:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04TJJ1MS123231;
 Fri, 29 May 2020 19:19:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 317ds4qcn4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 May 2020 19:19:14 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04TJJDQE019992;
 Fri, 29 May 2020 19:19:13 GMT
Received: from [10.74.105.211] (/10.74.105.211)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 29 May 2020 12:19:13 -0700
Subject: Re: [PATCH v4 0/2] soc: ti: add k3 platforms chipid module driver
To: Arnd Bergmann <arnd@arndb.de>, Grygorii Strashko <grygorii.strashko@ti.com>
References: <20200512123449.16517-1-grygorii.strashko@ti.com>
 <a132765e-f4e4-a1e8-fb43-239188fecf1b@ti.com>
 <CAK8P3a31DYOn1TyjxCYM7ebc9nL5EFKsNpSHkq55bG54Bns+MA@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <cb980673-d3ad-53b8-9351-196ff3f47c45@oracle.com>
Date: Fri, 29 May 2020 12:19:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a31DYOn1TyjxCYM7ebc9nL5EFKsNpSHkq55bG54Bns+MA@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9636
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005290145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9636
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005290145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_121921_125784_D4679220 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/29/20 11:34 AM, Arnd Bergmann wrote:
> On Fri, May 29, 2020 at 8:22 PM Grygorii Strashko
> <grygorii.strashko@ti.com> wrote:
>> On 12/05/2020 15:34, Grygorii Strashko wrote:
> 
>>>    .../bindings/soc/ti/k3-socinfo.yaml           |  40 +++++
>>>    drivers/soc/ti/Kconfig                        |  10 ++
>>>    drivers/soc/ti/Makefile                       |   1 +
>>>    drivers/soc/ti/k3-socinfo.c                   | 152 ++++++++++++++++++
>>>    4 files changed, 203 insertions(+)
>>>    create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
>>>    create mode 100644 drivers/soc/ti/k3-socinfo.c
>>>
>>
>> Any chances you can pick this up?
> 
> I merged a version of this driver from Santosh's pull request into the
> arm/drviers tree yesterday.
> 
> Is there something missing?
> 
Nope. I was going to reply on the thread but missed it.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
