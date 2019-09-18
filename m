Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5143FB6391
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ebt6sGp2puFmDx2W3ICWcwQ2Ve9PP1NGgK5yVvLdH4c=; b=GqE5meAxGHw33G
	tSG65axfnT/MXe4vWjIKmt+LJAbK0fOoj2zYTxIkq1GzO307Dy2An8MzmhWY6bjHHgPxV86hZ/dDl
	UqrYcMuZrtX6rUymnBkbXTZy5b78wqciRn6pjGrlNQ5Cn2WeMeK3pEhF1CjSlNJK+xLJVFJzOdS1U
	HxqZPxS3TAg8Ut+2sOerWS1/X0doc7CQxaC72l0PHz8SNILSUHRWqS+ZKJUPoOSOkyLI+/6XTNGDn
	G8wS19naGxGbihzifCQ00y6GjlpPYXUDodGKJtswyZsVOTXPlf0W7atu+xjM/gYoisDxqvVEM1bS0
	oU3jqHc+6Maq3dG7/rEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZQz-0001CM-NY; Wed, 18 Sep 2019 12:51:49 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZQc-0001Aw-O4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:51:28 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ICoU91017902; Wed, 18 Sep 2019 07:51:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=wKNZX+fj//vdEHFqSAQU3SGsvWPgOaqjf7mXMYHKHtA=;
 b=DBPfGb5Ty99fs6NTUCeP5VmjS6XlkxKjLlro1crnhMBur6B/acJM51Y3ct6p3IoPwkxT
 2gZkupAM3wEUKIdiCShn9s/7/Vtk3pkzbrXwLMjjd4lwdXb2UfZGQVJlWW+P8Q1s6DWk
 UhC1vgmUy9w2IjY6gYSgmhwdiTXhrqnaVZxWooBW55dlT22kRGhmmbvtAjPtAis3pj4r
 BMI2muINEbh8bX1tw8l0se0DMXtvMi/ilKazRPJp2YTQyLtzcyezuhHzLz3B5jXGVYiI
 L7FdAxNl9xiKV13umechSyzQA1RrgQ0SB3Sfw0E3lDOsugEu5fLjvEy5/Yw2dwnBlsLA Mg== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2v382qs2jw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 18 Sep 2019 07:51:16 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Sep
 2019 13:51:14 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Wed, 18 Sep 2019 13:51:14 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 247822C1;
 Wed, 18 Sep 2019 12:51:14 +0000 (UTC)
Date: Wed, 18 Sep 2019 12:51:14 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 1/9] ASoC: wm8994: Do not register inapplicable
 controls for WM1811
Message-ID: <20190918125114.GE10204@ediswmail.ad.cirrus.com>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104653eucas1p2e23ccbd05b3b780300adc9f4cb7a4c49@eucas1p2.samsung.com>
 <20190918104634.15216-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 mlxlogscore=884 impostorscore=0
 phishscore=0 mlxscore=0 clxscore=1011 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055126_815594_4C044EB1 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
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
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:46:26PM +0200, Sylwester Nawrocki wrote:
> In case of WM1811 device there are currently being registered controls
> referring to registers not existing on that device.
> It has been noticed when getting values of "AIF1ADC2 Volume", "AIF1DAC2
> Volume" controls was failing during ALSA state restoring at boot time:
>  "amixer: Mixer hw:0 load error: Device or resource busy"
> 
> Reading some registers through I2C was failing with EBUSY error and indeed
> those registers were not available according to the datasheet.
> 
> To fix this controls not available on WM1811 are moved to a separate array
> and registered only for WM8994 and WM8958.
> 
> There are some further differences between WM8994 and WM1811, e.g. registers
> 603h, 604h, 605h, which are not covered in this patch.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
