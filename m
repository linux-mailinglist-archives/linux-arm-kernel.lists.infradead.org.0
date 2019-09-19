Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48637B765C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl/cllUBqWuEFPb3JjE8VZfUC0FDjjY9KyxEsm3wJqI=; b=CvL9HWGgLFo52I
	QfdMhXjeX2aTyU3a+Abn22c/sLpL/GGyFEgjv4t0uFb6IXxt5tOQAdJyQJQUS7fwvE7w4sJELrB7G
	NNpHSsLZB7xJoUQXr4ff+qgYoEjP9OaSPMuVc7MaEUbHCYSLghD8lc/adtCxj0knw1V2MDt0I57zz
	+jg1cBgAzzZNnP6Ddc4x8yvlm98+M4jj0Wt6lRJUCnxwfv+GWxWBF5WKjEBUH9inaBu48Sr45k4KO
	qzbHLNd6yzKpUaGYrexjDHN+1VmjmJhJzhdKuboi0bdK+utohpa0XJvM5D2+8m30hPWbKK6+4GyFX
	zRv/b7jhQvZ09cuf58Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsoV-00040Q-Kp; Thu, 19 Sep 2019 09:33:23 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsoI-000401-82
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:33:11 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8J9OI66018021;
 Thu, 19 Sep 2019 09:33:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=ntE+c9cESazn72DuT4SsObOcii7mo2s3N68Qv9djNSw=;
 b=V54QvGT+VYQNpveqIkWSOpQzqmOSxvNze/4+IsHujmBXR1puO+PnSm+OFjQLE+64pIBH
 3qP39ipm4Kho7S6ZHmcBOjA8mzJ+e3KCkXQ1xyroKesqkUFXtwtiWMMsOIpv86zuPKSt
 /ze9oN6AhzieZKCrHeXwDd2A5aOEtpP/OYD+iYsC7Na17P/cc5tCkYOz9C4yJLLexgu6
 toq91MbiBoWIcZrvHvkL2caEYqXHl7xWz0Tt+3QG/+GOz6Nuyp6zY8AoedabO5Kx+DTe
 60nDzRa04VjJqpqmoHOnG6p5qq0WNRsd3SlJSJ8+VrZNsf8cIdLz5mlEWo7zE3NFewin lA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2v3vb4tny5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Sep 2019 09:33:01 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8J9SsYw169589;
 Thu, 19 Sep 2019 09:33:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2v3vbfrjxy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Sep 2019 09:33:01 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8J9Wx3D018214;
 Thu, 19 Sep 2019 09:32:59 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Sep 2019 02:32:59 -0700
Date: Thu, 19 Sep 2019 12:32:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 1/2] memory: samsung: exynos5422-dmc: Fix kfree() of
 devm-allocated memory and missing static
Message-ID: <20190919093246.GF20699@kadam>
References: <20190919092641.4407-1-l.luba@partner.samsung.com>
 <CGME20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be@eucas1p1.samsung.com>
 <20190919092641.4407-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919092641.4407-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909190090
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909190090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023310_415599_6E39DA61 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 cw00.choi@samsung.com, b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks!  Looks good.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
