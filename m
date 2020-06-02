Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781A51EBED3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=11kCA6jbNZu77pxjuWPucYe/G+Y8V2ConcSxiQIkpU0=; b=Ji3lieb+xjmRRsCIGBVYHDpb+
	4L6xlP6dWbVh+bJtMK3mo/AI/ug4RF9YOzaGnLIsAgoyg7U38HEq62OGYLPa10q2FnJRwGquzSrZ0
	fdbJccYlFWJ2OyugMejVeKijzhHoMQwf5o5Thi3GwuF8Tx05RS2mrWFmfy+O/ivGYOrfsEcYYiCXq
	brNsP1SdnkuSTy5dzb9WZON7/SiZ4opQ/0lZRGEqVW6az1olJU3dQwx5mN7pZeuPzYtegPrVKXmYo
	gQwcVkCpWZdkq1rwtCH7HNB4+pJq6N+Dsix8hG+WhVaRdfcXW+EyROtZzofgZA08GSfmfUY0radI1
	r0FceXIWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8cO-0007Y9-Pp; Tue, 02 Jun 2020 15:14:20 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8cG-0007WF-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 15:14:13 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052F8RBn067493;
 Tue, 2 Jun 2020 15:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=twSSHzQ0o2SniDDDgsjFjigkpdNI1jvAkB6VRynIq5I=;
 b=w/Q2lTJ6WsVlDYvJ/OSXpdnD2sCZKiktiaiz6dAlQkhXZgGlmjJsrSCes/+cOEaI3tEh
 6mSgi8hGez4c7nSph7jbzt3ZC6cvZU1m0+3Px3Wro5Qr94TJzQsi5XBuuJMaA2ZMLZM4
 od5O4JFYpHURxF6bTpejNZkwt1G/dX48CtzJvRJvGoHNMFgmCjpHmiUub6aCRU5khOaN
 0qKdEqRBxmTvqAaaLQ8o7A+YvXuKgzshoTUvMsOqbHIStrer9yY9EGK9gvZuNg4ATwZa
 WFoZAcm6OHRpaGatTspTy2Nxjx2nM4NvUQRPU2z8A+/JSiug89wMhkJHNvDuwg6+J9Oc eg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31bfem4j1w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 15:14:04 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052FE1Ao009391;
 Tue, 2 Jun 2020 15:14:04 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31dju1n35e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 15:14:03 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052FDgOZ016066;
 Tue, 2 Jun 2020 15:13:44 GMT
Received: from [10.74.110.208] (/10.74.110.208)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 08:13:41 -0700
Subject: Re: [GIT PULL] ARM: Keystone DTS updates for 5.7
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org, arnd@arndb.de,
 olof@lixom.net
References: <1583603819-9651-1-git-send-email-santosh.shilimkar@oracle.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <8750635a-37de-f4d0-08b1-16e904be2de7@oracle.com>
Date: Tue, 2 Jun 2020 08:13:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <1583603819-9651-1-git-send-email-santosh.shilimkar@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_081412_354900_3E3638D7 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, khilman@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

On 3/7/20 9:56 AM, Santosh Shilimkar wrote:
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> 
>    Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> 
> are available in the git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/keystone_dts_for_5.7
> 
> for you to fetch changes up to 7856488bd83b0182548a84d05c07326321ae6138:
> 
>    ARM: dts: keystone-k2g-evm: add HDMI video support (2020-03-07 09:47:24 -0800)
> 
> ----------------------------------------------------------------
> ARM: Keystone DTS updates for 5.7
> 
> Add display support for K2G EVM Board
> 
> ----------------------------------------------------------------
> Jyri Sarha (2):
>        ARM: dts: keystone-k2g: Add DSS node
>        ARM: dts: keystone-k2g-evm: add HDMI video support
> 
>   arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/keystone-k2g.dtsi    |  22 +++++++
>   2 files changed, 123 insertions(+)
> 
Looks like this pull request wasn't picked. Can you please check
in case am missing something.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
