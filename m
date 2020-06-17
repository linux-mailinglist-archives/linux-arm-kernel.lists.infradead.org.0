Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51131FC95F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xcObKzvBWsBHT37PAOSw2yW2MlOY29UILrHHPO5MxA=; b=j8Hz9Jm4rFj6vE
	L3pkZirOD3NagTVHQjwvZ42o/GMXFnXJZC7oEQGETiTcj0pFRxOsMwc21TzLwz1hTofAjNPmtz5AW
	MEJ319tbKPTIuQAPVq5U/H5mL2JJ9Vh5jwqBQEpjMLx6Yt6HVQxXzQvAd81w3h4X/+hIJu3Bt1wR5
	XypbkwaaQOuo8VK+gD0xQwMKEjqT61z5EtReOXXPyGD/VhzZ5wij9QdytoLMITzzfEq+8fe/DBvAa
	IgYxTh14OVmJjzU7qJzVd8zSEJysX65wc8POGkqnprNKLEehi46THv/1qzvHDD7m+6O6PcBnmLPOa
	YSdODvwsM65M5l6YivxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTv0-00074R-PI; Wed, 17 Jun 2020 08:59:38 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTur-00073I-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 08:59:30 +0000
Received: by mail-vs1-xe42.google.com with SMTP id k13so909208vsm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 01:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EYFdMqmIuxR/QD+dIztgN1OBOyAiHVdjdW3clKBfx9w=;
 b=YootRK1o/udIGpVTrSt0b6/K6VzGjZvz3cEm9RpKyz4BswP0wBqUjzOPoH4EOOVwkV
 oF3kdAtTnl80p5ZbZJ/N7DqKYe5Yk5NahvHD+h3uT2mTbIGqQ65VEmghjk0pGeVZ+BaD
 8i5mbNGeC7SdbeaAmjRzRHn1NX6qI0loVq032cnOmJzqQGRvw9T8IUEvt79+Q0B7auKD
 kF5/DwtVLoAPsxey47ySitNdVJVX2lZfo6GZam0zP52oF+ASGmXZ5VPE+IPPMrOkQbE1
 r+9cLNfNbeV9vOqp3Bm7aS0Bmynqc2JCDJszzJv0hSLEaQSe5+l5UwsAg18AO2ycumDh
 /v5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EYFdMqmIuxR/QD+dIztgN1OBOyAiHVdjdW3clKBfx9w=;
 b=aFt0Eae9Hq3J3cThyXau6A15hHkRah1PvsjJ+V9p7lPSzTOGkI7jfVe/pNHWqzGCyl
 X+xcMRMVt1o/fCjuUWzHFzt3EN/vXkXL6KyHHhuAmDhAtjj9U/hyZcmwjb2bz7c3BaJ6
 R7quX7FGvrFHXjwYg3x4xXGCHZlHdEYY5HXoNEyTD/KAkzvQS2mmIEsusrvKD2vG5Rfs
 tNmY7k5irPc9sH5X4G4Rk17NWofr4iJ1bueHBlbvYTcqGQpsQbI4y3vCT4MBMJW8kQ0Q
 W8AgBhTCDY0iZzMB2odTn1JnDIPiRS7dq+tmeoj4DjQcLagV0UkPd3QW2FrL6ksIkjbC
 3xTg==
X-Gm-Message-State: AOAM53129wfqBpo0VegPXvrfFcfedMeaSgVNXtFcGOLz2pfV1UWw27Jx
 7BWQGv7UaOzAOLfge4QL8ANjfScjOfEZZ5mlcGU=
X-Google-Smtp-Source: ABdhPJyc1vZfkYuSzIe3xUWojqAeNU1qlFHLUMD47fby93Le5wM33xkoWW/r8PFCmbr5olRG8c6+eESixM28o0UA/NA=
X-Received: by 2002:a67:fb8e:: with SMTP id n14mr4826303vsr.136.1592384363723; 
 Wed, 17 Jun 2020 01:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200617084911.167359-1-colin.king@canonical.com>
In-Reply-To: <20200617084911.167359-1-colin.king@canonical.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Wed, 17 Jun 2020 14:28:48 +0530
Message-ID: <CAGOxZ52KM-DpPPv5qpKZCRoXzEH=YJvcHsNs=3t6rcrB8yX56Q@mail.gmail.com>
Subject: Re: [PATCH][next] scsi: ufs: ufs-exynos: fix spelling mistake
 "pa_granularty" -> "pa_granularity"
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_015929_235144_B3A67CB0 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 kernel-janitors@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Alim Akhtar <alim.akhtar@samsung.com>,
 Seungwon Jeon <essuuj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 2:19 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> There is a spelling mistake in a dev_warn message. Fix it.
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
Thanks Colin,
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

>  drivers/scsi/ufs/ufs-exynos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/scsi/ufs/ufs-exynos.c b/drivers/scsi/ufs/ufs-exynos.c
> index 440f2af83d9c..0a9e99084f2a 100644
> --- a/drivers/scsi/ufs/ufs-exynos.c
> +++ b/drivers/scsi/ufs/ufs-exynos.c
> @@ -883,7 +883,7 @@ static int exynos_ufs_post_link(struct ufs_hba *hba)
>                 if (attr->pa_granularity < 1 || attr->pa_granularity > 6) {
>                         /* Valid range for granularity: 1 ~ 6 */
>                         dev_warn(hba->dev,
> -                               "%s: pa_granularty %d is invalid, assuming backwards compatibility\n",
> +                               "%s: pa_granularity %d is invalid, assuming backwards compatibility\n",
>                                 __func__,
>                                 attr->pa_granularity);
>                         attr->pa_granularity = 6;
> --
> 2.27.0.rc0
>


-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
