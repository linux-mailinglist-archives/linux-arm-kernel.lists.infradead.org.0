Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AF9182912
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 07:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IS+huZHMrTg71QVqCIzTGkKbBck2DZv46EuySIKjwRo=; b=XZiMBnKXDxFpFk
	7boxb6i47p6YcDYoR7F3zB+nReORJMCmTFUg0c3paw/lzLjMcrddIMY5J1J8UsLHGB0JeGuoP9Mfa
	k61g54PAskiQakH8lRorSEVCq8BK5Dgs4kxwlIouF81+KbQOh+Fk5gN3gVZX4j4tdIZs4C3raTjEI
	0W2lxwzia91IfOe51A5yO08IT11DbHWYz2Ni7pTJabhi+VxVoidtWuRJahHHsZ6v2hfoLlz5fKhKy
	ZdhQEGv9n9+mH+UrA1uRI45z32G9vRq05knpTKIflaE0wBEi2+t0R8ZewULZzSLaqJPM8rPJNvTIn
	FA3Kk1KTigjWgkpo9Y8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHNt-0005Cc-Dk; Thu, 12 Mar 2020 06:31:57 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHNi-0005By-9k
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 06:31:49 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02C6Rl2M011219;
 Thu, 12 Mar 2020 06:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=96anitlCLucRc7Rxq6Z65CxVwAN+xtGFFnozhiQVg1M=;
 b=MdmdNzqJUr1kCzQwNGsk6HMI/L73k9iHploydfbFztc9r64/ijOrEMVd+HU1+qYFMThc
 ELzN7uEZMjoJr3c9DVlne/xtxQrVnntXbZA2Pni/z4S6aXF/VHJvjIR24Q0dNyqJIOaB
 fCQ/Ke4ImT0F4+XjIBYB1ctJswnqqUjaYiV3lTUJLbreCZYYEvGc9FgyLU8Bj7Isfjew
 0e32QVftWg9DjX5/kk7hE+/zVPWj0Kzw8vLZsA1jdsu1G4J1zGp/NX5TKQBOtRAks0cw
 Iq2aUhOhybIGJ64mdfDjlsoXDEeSjWbbk2Mu44/Fz0qJWK2L+S/PEjfniiTQhd+Pdg8Y AQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2yp7hmc1u3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 06:31:40 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02C6MLjp155279;
 Thu, 12 Mar 2020 06:31:40 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2yp8qymc4u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Mar 2020 06:31:40 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02C6Vcfh025334;
 Thu, 12 Mar 2020 06:31:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Mar 2020 23:31:37 -0700
Date: Thu, 12 Mar 2020 09:31:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH] PM / devfreq: Fix handling dev_pm_qos_remove_request
 result
Message-ID: <20200312061800.GE11583@kadam>
References: <CGME20200312031520epcas1p3ae8085a7d85da5b41776136f61ad40a3@epcas1p3.samsung.com>
 <ea4c8b53f2a045116a5f70e24374ce62c85f0b81.1583982882.git.leonard.crestez@nxp.com>
 <780efc9c-a85f-ef9f-e64f-68e5edce4cd3@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <780efc9c-a85f-ef9f-e64f-68e5edce4cd3@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0 mlxscore=0
 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003120033
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9557
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0
 priorityscore=1501 clxscore=1011 mlxscore=0 impostorscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003120033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_233147_088815_ACE60EA0 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 12:30:42PM +0900, Chanwoo Choi wrote:
> On 3/12/20 12:15 PM, Leonard Crestez wrote:
> > The dev_pm_qos_remove_request function can return 1 if
> > "aggregated constraint value has changed" so only negative values should
> > be reported as errors.
> > 
> > Fixes: 27dbc542f651 ("PM / devfreq: Use PM QoS for sysfs min/max_freq")
> > 
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Since you're resending anyway, could you remove the blank line after the
Fixes tag?  All the tags go together at the end.  (The blank line does
not matter at all to anyone, purely aesthetic).

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
