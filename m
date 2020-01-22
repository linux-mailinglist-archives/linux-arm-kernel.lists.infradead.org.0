Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ECD144D23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNfV//P36w5oX/spvgXUnYD9m8xR25zDPU0gJtpBz54=; b=N0ewwrrC75bBW9
	3ZQL2t29Ot9bbVWPiax4zbdvdqp7JEm755pZho+58f+SNsppKHyniQOqUanC3DrIkriPJ1255Ot34
	SWu/LcP05BZMQHg0t/Cx2qMBUiYLqdTcB48WGoB4tPx6XPJoBALWnM3lST9D3khZlnT4LvW89Ie2U
	QhqCCYNnzUglt98cHFEdpCcIafvdbTX8N+hIJpVRmFdOQVF1/NLbcegxaZjGk4OFUGa9Hua2MnIPH
	hywx5K3YeNx7qAb5vlFysVpsT/UVBiZJZUhwoaAwWn8MZgKsqzPM4NSXx858wuSvYA915zxd5yDwV
	6yPd2cTSqDlv2aRRLcHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBEz-0004Pt-Hh; Wed, 22 Jan 2020 08:19:57 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBEj-0004P4-JQ; Wed, 22 Jan 2020 08:19:42 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00M8IhCN041195;
 Wed, 22 Jan 2020 08:19:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=uWz8eBHkgeZjITXN+B+A8IBMNj27yjCWOIaSt0VAyxA=;
 b=m5SR2jNBsD7bKa33po2xbgW/FAuQ9XGEBLxEAzCnzmTY0DMFtab76AjgBAH6mkz2FGLq
 2ePvW3XnakSiOxVVsVqJ6wgQYjrjDIU5wMXORM8I5hGT6Ise3MjSwNiQpT2kvhWfGKg1
 Oeud6+cku57pkGh5VJu9tidaUApLO7FlxFPm9Srz2WuyguCsfEIvCl9wdEjDS5La2h6B
 vONIWK+F54NhbRm2/spqIu+WW6tqGFOhUz0KJ+Di2Gg8DyOajTD8vxaLHWz4Zcxd+0e2
 MOn5JAEF+aUb6jFmnpeQpISvcAFHev6DfflEcOn35tPmNodhlt0/hRgbV0n6ZDihf3bV pg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2xkseuj7wk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 08:19:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00M8J7pF188324;
 Wed, 22 Jan 2020 08:19:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2xnpfqqvr0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jan 2020 08:19:33 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00M8I16Q024075;
 Wed, 22 Jan 2020 08:18:01 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jan 2020 00:18:00 -0800
Date: Wed, 22 Jan 2020 11:17:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: Align code by cleanup long lines
Message-ID: <20200122081753.GE1847@kadam>
References: <20200121195218.GA10666@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121195218.GA10666@SandeshPC>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001220075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001220075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_001941_725714_74486DB4 
X-CRM114-Status: GOOD (  16.89  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 08:52:18PM +0100, Sandesh Kenjana Ashok wrote:
> Cleanup lines over 80 characters in pinctrl-rt2880.c.
> Issue found by checkpatch.pl
> 
> Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> index d0f06790d38f..254d4eb88f5f 100644
> --- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> +++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> @@ -159,8 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
>  }
>  
>  static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
> -						struct pinctrl_gpio_range *range,
> -						unsigned int pin)
> +					struct pinctrl_gpio_range *range,
> +					unsigned int pin)
>  {
>  	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

Now it has a new warning.

CHECK: Alignment should match open parenthesis
#162: FILE: drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c:162:
+static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
+                                       struct pinctrl_gpio_range *range,

Just leave it.  The original is fine.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
