Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB42B639A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTs8sIPPILIfuFC8OYakd3k8U4G0z7M13aRuaWjHavo=; b=AwTyzHmVjmqHPg
	tgLEQgQ4a/CkGa+4YxkRanCa4m46KS6Pru9uTwQkkj2NIBV/R8J6DJ9xQ7uv7mZTCbY0dZZzAZ6IO
	2qUfE2ZEeuHCrv3CesrgQYnSd/0+TlDiIUUCXNSSaPf2FkdoxrS/Jz81jGmBXclJ2fPNSSl6VXumM
	1xU9lLYH0grTVd5fekF55Qhc//nWKT9M/hvOlekO1JsxCJK3yc1M1qjmq4iSOTNJD0ZdhxyByfwfe
	NhpNEAosna43onnREO/E+U5YqF7Jk+R49noFibR+gKSqaVumPY9cANJGxhqIFX4t45hFHKAFN8ZFQ
	OpWQbeVNdK9tPrB5gAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZU3-0001jy-IT; Wed, 18 Sep 2019 12:54:59 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZTn-0001jX-My
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:54:45 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
 by mx0b-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICsbtm031103; Wed, 18 Sep 2019 07:54:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=13RYjTpIb0kBseBOnzm4zjz1SptlMzV+30Q8nl5N5ww=;
 b=MuRgHPO+yDFw6h/GA/126LtZbd49VGvfwxM0iXQIHWWwEy65n/vzqKOHBKf2hNQ7xegf
 MXrO5BIOyTASHfS6oc22raXYhxdJHTw59TbCdYFggWl1/rO0cqx28ZkABUi1f4poXFdd
 XIzjLijqKxpPvneqi7LZ+etAm/h4yCxXi4JExUzYFpI/WYGqyzNWFiuAl6GF/V35lEO6
 ksvaQy6Jx0M+MlAXwiEaXN/Pn2LsBQ9OTb8zyDhb7OStcQN3sJJkCq7GuvSCW0jTsuaK
 E1PMt6y5bkYJS8fu4n7iWp12Ok6UDayArEz+yFWcB9YZTud3451dc9TKm+7CcdhOj7bD qw== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
 by mx0b-001ae601.pphosted.com with ESMTP id 2v37m192gu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 18 Sep 2019 07:54:37 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Sep
 2019 13:54:35 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Wed, 18 Sep 2019 13:54:35 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id D070F2C1;
 Wed, 18 Sep 2019 12:54:35 +0000 (UTC)
Date: Wed, 18 Sep 2019 12:54:35 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
Message-ID: <20190918125435.GF10204@ediswmail.ad.cirrus.com>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com>
 <49ef7282-3765-9149-285d-a4025417eb58@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49ef7282-3765-9149-285d-a4025417eb58@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 lowpriorityscore=0
 malwarescore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=853 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055443_876646_08F3FDAF 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.152.168 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, broonie@kernel.org,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:59:28PM +0200, Sylwester Nawrocki wrote:
> On 9/18/19 12:46, Sylwester Nawrocki wrote:
> > The WM1811/WM8994/WM8958 audio CODEC DT bindings specify two optional
> > clocks: "MCLK1", "MCLK2". Add code for getting those clocks in the MFD
> > part of the wm8994 driver so they can be further handled in the audio
> > CODEC part.
> > 
> > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > ---
> >  
> > +	wm8994->mclk[WM8994_MCLK1].id = "MCLK1";
> > +	wm8994->mclk[WM8994_MCLK2].id = "MCLK2";
> > +
> > +	ret = devm_clk_bulk_get_optional(wm8994->dev, ARRAY_SIZE(wm8994->mclk),
> > +					 wm8994->mclk);
> > +	if (ret != 0)
> > +		return ret;

Would be nice to print a message here as well, make it clear what
failed in the log. Apart from that minor nit:

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
