Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF1ABAFF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1Y3FSC2PpXrwOg3r2gNn8Ek7y+dJ1FW3rWHAQBwn4o=; b=A7zUEpy+qJs81y
	GPFOFWaHu0qQwl+dVibGtWepAQNHJkJwcm60StxsiwUb/YAjlRwFjZBN9RYvUNdu5mrNcXLa5n+9l
	nLYiWJ/ZExYmSUtTW36Ccr8lxHMxKJHxsz+Xu6P/voqzDlkdZXHKL4pVPtxbS1/RfWE3WUsYiP7LN
	gVQKYWHNlVKiZizkHK0ye06AWk4Jhmzlk2wGOCxo+SXnl/zOm5232qddinpQs32Z65yjkzQL3Zy4H
	GfnwMmGuXe6qZYCykG6ZMQDvYUU0VlBXT6j0QK0Z4iRPQuQPlejg9wlzA1HTyNT81+AWnvlfr/XU9
	rVIlYWaKk9+c7whdtN+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCK4F-0006Yx-0h; Mon, 23 Sep 2019 08:51:35 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCK41-0006Xm-Mk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:51:23 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8N8nBFA006747; Mon, 23 Sep 2019 03:51:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=BjpMtBhJnZ6yh/cP1ZHvKQ1eEYxgByGKmNnK9h7ukFI=;
 b=FV0NWlKenyfQ9wRSBC+FzmSlIWKuiRI5Huzbh6gvWWvoXO2gD/MN+NfF2krpBpML4N6M
 vP919MnDOvEPBvrmYJHA38ERSbU8z7JljFdu0QF99uvs5N08V/FFZ4rTIOVZpbUQOQWg
 IhkSdYUbeqY44JdXjW5l2M10rM2RSwjI3KO6pZBxjQOS+CbCbOK+oPMPrIqzaywuHQ9E
 KMa9fZttu5DiKPOdrKWPk21QDsUQTW2flraMGhF85jp2OutEl2eL0+UFcPZTbZ/n02kh
 4O/kWd5xpPyPvac32mQ8jOZCv+Q7j+w6pkr5/3bhtuSHlRC+MhR1/3ZeVdYIQGiaaqQL Eg== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2v5h923796-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Mon, 23 Sep 2019 03:51:08 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 23 Sep
 2019 09:51:05 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Mon, 23 Sep 2019 09:51:05 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id B94A02B3;
 Mon, 23 Sep 2019 08:51:05 +0000 (UTC)
Date: Mon, 23 Sep 2019 08:51:05 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 04/10] ASoC: wm8994: Add support for MCLKn clock gating
Message-ID: <20190923085105.GN10204@ediswmail.ad.cirrus.com>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130317eucas1p188d724710077d704f768798c6555c741@eucas1p1.samsung.com>
 <20190920130218.32690-5-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-5-s.nawrocki@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 priorityscore=1501
 adultscore=0 mlxlogscore=943 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 spamscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909230089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_015121_759467_E6CE8B61 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, broonie@kernel.org,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:02:13PM +0200, Sylwester Nawrocki wrote:
> As an intermediate step before covering the clocking subsystem
> of the CODEC entirely by the clk API add handling of external CODEC's
> master clocks in DAPM events when the AIFn clocks are sourced directly
> from MCLKn; when FLLn are used we enable/disable respective MCLKn
> before/after FLLn is enabled/disabled.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---

Looks good to me:

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
