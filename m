Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCE997461
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+wcVuxu+fXoYtaqjOGnW3KktAxpBlAeVImxxo66G9I4=; b=gz6+MOc2vM/Ljeo+5up/KCSwT
	IEC8lPCRufS6SgGn3ETmH+a0uQ7Phqya7NH6UKLOsy0wVtrREm5LB1H+8art6QCdHNx96MFPCWJOs
	KHpN+wyV1ay4g1b/jM5r0wmIIWpvy4GsiJUv1L1FM3H5wPzTVIN4GCfD4ZtoCb7LIhZNfUGV0ArYV
	YaVfBhw4cLCeCWI3ibN97edK5WQp+/AT4TCxzXXLG1rDHJBYOWdrTs+B+bvMLLcXHY1dxMPysDQ1+
	AjzZBQCNQfNCNilnkw630emXFkdQoujO3PbhJuCIo24Dw/A3VAQc74qsC3VvadVw1ni4BuImXhwQb
	/u8A/Qz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ldw-0003G2-G9; Wed, 21 Aug 2019 08:06:56 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ldi-0002Ol-SG
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:06:44 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7x3cx118291;
 Wed, 21 Aug 2019 08:06:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=vKVNf4IhiUveahMlLfpeZpOJzHv5MOawoj84x9+0ZTU=;
 b=F8C5bGQy6Ax7XMY9FLfJXqwkb35au59QUC0ekg5Rbq0S0g+b+ZRLxodjv+YLDjL1zTT/
 hU8mMT7gCSWmIBEK3pgzZWoyaOUqrUTpdnPPaI5EvEHQsxtycDgor3vrFeymfjqRzObL
 P9h/yq2itDDWBYJB7Nx5919daWqazSv92MlcbI3etMmDz6zu5uATWBuKZGrsYluuvemF
 EYfWOrzIyXN9C4acZl66qtIEwy0mqRI7aSap46KiA+eEQ3iQ83wH5JUFL4CoqFIbJAc/
 vZi2hy+lWeeq772+T0z3FK7kXW0v5wg/+enVISN9A8I+f8/RM2Z/7Z3/GVLNIc+Q6rHE /w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2uea7quqbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 08:06:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7wicw132585;
 Wed, 21 Aug 2019 08:06:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2ug1gaapcx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 08:06:37 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7L86ZTS019078;
 Wed, 21 Aug 2019 08:06:36 GMT
Received: from [10.172.157.160] (/10.172.157.160)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 21 Aug 2019 01:06:35 -0700
Subject: Re: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device
 requests
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
 <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
Date: Wed, 21 Aug 2019 10:06:32 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_010643_020367_3A76F672 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/20/19 2:48 PM, Lokesh Vutla wrote:
> 
> 
> On 29/07/19 5:54 PM, Lokesh Vutla wrote:
>> Sysfw provides an option for requesting exclusive access for a
>> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
>> not used, the device is meant to be shared across hosts. Once a device
>> is requested from a host with this flag set, any request to this
>> device from a different host will be nacked by sysfw.
>>
>> Current tisci firmware and pm drivers always requests for device with
>> exclusive permissions set. But this is not be true for certain devices
>> that are expcted to be shared across different host contexts.
>> So add support for getting the shared or exclusive permissions from DT
>> and request firmware accordingly.
> 
> Gentle Ping on this series.
> 
I can queue this up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
