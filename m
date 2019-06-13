Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EE74324D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 05:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ow0RZ2nw2FMgzj/GL1zGo7HTgMEvT9SURawcYaI7LwM=; b=eRQj1kb6+1KjReACuig0xV18x
	EiWeHZmlIbIuSjY9VzH+pqZkfPx3QWDu/HEej9UM2hDj1H1vEN0b/oHgqgqyGWRjlWkcbfiF0+qNs
	9Ec+v54jk3mDnkZ4UMu1suG/nZbdAhTxkhHn3kUUJvNhg+QycrNjgTWhJs+8FjCwSg31faeyps8Jr
	PJ0lkhBWQimVQGuRb7QKTNa+FnznPJiXxTNRJeB3G1yqizJ8r34LkkRKap1i3X4jQNVKvBDxWCkse
	QSYEbmok4FHzix4XsQ28bhfLVvhMxSTxXC8jgrS2A54lMkanbAqoKinfpQ9ldJJHQtA5wETlEWT0p
	Var059jfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGKB-0003Nd-UF; Thu, 13 Jun 2019 03:22:52 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGJy-0003ND-Jx
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 03:22:39 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D3J8Lp055866;
 Thu, 13 Jun 2019 03:22:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=9vhxVzBjIOW2kd7FjfDbG6DZy30iVhRnnVMSLAEyApY=;
 b=LmlrrscRg1ZxFQwPEvnkAlQPvWuUSyrONjt9cojXUjzKbxjysbacIlDxUVS6cZGbcmJN
 zcjuvzm9wnyAX0h2MdlyT+seNh33euMd8V1iEATfBTSHGuTKhWJDOvOIwelcHBOvLRm7
 orR3Bup75KCbz2+RubnpWiZIR0zLukGsaJpLEZkNXwbh6b+698CBOea4XvmpIbcNlmv/
 0PkTdEpbFRywdy7oWJ+A+rDvxG/vRFcyPMfBoj9GGNz5t3r6zLI2Jx6xj3sBe5YHprlN
 Av8xS1XhH6l5bjY4N+MdsI51OqrQ35NIZiMrdomnMYmjP+GebzpwoAQE4tbFoPWOtdVM Vw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t04etxy24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 03:22:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D3Lok5025167;
 Thu, 13 Jun 2019 03:22:34 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2t024v9u54-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 03:22:33 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5D3MWfY022569;
 Thu, 13 Jun 2019 03:22:33 GMT
Received: from dhcp-10-159-243-244.vpn.oracle.com (/10.159.243.244)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 20:22:32 -0700
Subject: Re: [GIT PULL] firmware: ti-sci: changes for 5.3 v2
To: Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <3730dcca-a1eb-1dae-c11c-d9b0f58d38c8@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <b5c7f212-2357-3705-bc5e-473bfcca17a7@oracle.com>
Date: Wed, 12 Jun 2019 20:22:28 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3730dcca-a1eb-1dae-c11c-d9b0f58d38c8@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_202238_739642_33E007D4 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, "Ujfalusi, Peter" <peter.ujfalusi@ti.com>,
 "Andrew F. Davis" <afd@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/19 5:06 AM, Tero Kristo wrote:
> Hi Santosh,
> 
> Here's the collection of the TI SCI firmware changes for 5.3.
> 
> v2 of this pull request has the clock related firmware change dropped, 
> and thus does not have any cross-dependencies to anything.
> 
Applied. Should start showing up in linux-next soon.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
