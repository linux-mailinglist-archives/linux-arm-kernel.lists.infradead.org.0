Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E7BD8D5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUuKdmtyBMgZCeUgNKB4qHjdpMTuVbDYSCpMY5t+yNs=; b=HM06LdQQDxWYGg
	zmnx8kNodprNHyt3nwRSIkxGv7BznGYsbtJfKqOY6XuXfreFlq2FLVtR0ERFt3Swt+3iRMR3R7eVa
	op5blFo3olgdPP7l/e0+C0sNs57Y5UpLH+qqeEh/7gdcpl4qKugf5KDjeIk1qHXzPIrIbI5SwJH+A
	Ubf1CNhgcNhE1V0PKZZ4OR+/+wUb57S4+4pwo1EmqOT4p5dm6IGIueqwYF3KX0Hq6GDAzodD6A7y5
	j2kxdANhJviRx6wE3x60fCiyuMwvQeB+7HvBZGFRWjvbaypVeKqosHaFehjnmCJyttVqo3OoqzkNz
	IB3K1Ln68iUaTTKPIfXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgFN-0008L2-EI; Wed, 16 Oct 2019 10:09:37 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgEz-0008DS-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:09:15 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9GA51sp009174; Wed, 16 Oct 2019 05:09:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=wY7mAvj5F21+V86bnuE18PYzkAjmvRHb8mMHS3hceXQ=;
 b=EA00SE6Z2E3k7SYFmqLaahzFj9XBNXjotsuUm/KPxWHyilfAJAm5KZPxQmDDAJgrJUle
 gnJUdIu3m1gPVluI0VzrM0AX1MdVV/iAOspKE8s/QO1nKSpmsxQkQfyJoUEt4/lXWVew
 LF6SWzPJAJWOR2PKHdG4CaibjbMB8WtQqdgVSmrR41mibmFPlpRucfSj++0eq28ey8OI
 SMP0stSn8afBqt+M1O/iK/mZvq+3iAlZZUfF8bB3guzQMjGxX6mPTHo3W2v/TfMfmhz0
 qZU8xVquIHF32s7/MTVCNiLTmcVXo6jMXqbbLwD2Y03PXK3bCfQXNh10hu5x7koRn8j7 cQ== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2vkc83dbua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 16 Oct 2019 05:09:06 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 16 Oct
 2019 11:09:04 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Wed, 16 Oct 2019 11:09:04 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id AB4E92C1;
 Wed, 16 Oct 2019 10:09:04 +0000 (UTC)
Date: Wed, 16 Oct 2019 10:09:04 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 12/36] ARM: s3c64xx: remove mach/hardware.h
Message-ID: <20191016100904.GC31391@ediswmail.ad.cirrus.com>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-12-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-12-arnd@arndb.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 suspectscore=0
 phishscore=0 malwarescore=0 mlxscore=0 impostorscore=0 clxscore=1011
 lowpriorityscore=0 mlxlogscore=942 adultscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910160090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_030913_451917_08C86F15 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:56PM +0200, Arnd Bergmann wrote:
> This header is empty and conflicts with the s3c24xx version
> of the same file when we merge the two, so stop including it.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
