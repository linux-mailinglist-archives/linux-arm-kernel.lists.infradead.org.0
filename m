Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B16B72C38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6pCSNdubdEPUzhhYAc6mfXMCeqx45DPMj5h2kg4tKI=; b=Uag1/JNWEkNUry
	+7dQoA8nMixp7qd9obaoE/RsvWVufdoosAhpXOW9JVVyZd2bZlW+pRhlRdXDMebVKiLXxlYrQKoMx
	7vRIbjr1OufYY2xjBgsvRrtDz5e3U5IjmAHaw4TR2uSX+bGJU8oqbGpL9Fz2wZTZ/ZggGru/bEBH3
	tuDHEIoA4Ez1b9U/N07+GvYANU1U53xPPIFMJ26lnBZc6m4KdZayf/pdXPfMYfK/zjg7GVEeq0qsJ
	n0iI9fs5tjmRIEvHWynfvPdqVs9tKEkPdkPU2ob2HhsEempFIakktvrGpFYtzAHhy5mHw6gSA/Ak7
	x9evCuIozxNooyhQKqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEJa-0003uH-CO; Wed, 24 Jul 2019 10:16:06 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEJL-0003tZ-HJ
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:15:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190724101549euoutp024596ecc56f06f2639de80f4619831f19~0UGFEgO8C1082110821euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 10:15:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190724101549euoutp024596ecc56f06f2639de80f4619831f19~0UGFEgO8C1082110821euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563963349;
 bh=VgfVrkM7RnbML6MfPA1/+fseqSPr/HcYgdilfOy6ZNA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Pacv9sO3Olp0BDQaJt3zgErH8x2mtnLmChkXQnWF+H+OPhfVL7HhJyiEoll8LAAIk
 iSl51RSDCV9pamQI0+1pvM+PXyq/2K0oFE+GBX7JNvZw7iD3NggkOFLQE5L3QchYp3
 3aw6C7Rn6iSV2yK+9we5+R9zKALkB/j+O/8m6xms=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190724101548eucas1p2461aaec56a443c46b4992b2f9bf1b30a~0UGEX79oN1335213352eucas1p2J;
 Wed, 24 Jul 2019 10:15:48 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 09.F9.04377.4DF283D5; Wed, 24
 Jul 2019 11:15:48 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190724101547eucas1p240814a5a29b21a6d59665ee76fbf4d28~0UGDsMoVk0872508725eucas1p2S;
 Wed, 24 Jul 2019 10:15:47 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190724101547eusmtrp11216b5c524db02077f03620ce50883ec~0UGDeAdtz0333803338eusmtrp1r;
 Wed, 24 Jul 2019 10:15:47 +0000 (GMT)
X-AuditID: cbfec7f4-5632c9c000001119-c0-5d382fd4e45c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 96.30.04140.3DF283D5; Wed, 24
 Jul 2019 11:15:47 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190724101546eusmtip15fe00697368d391e9d2a79e54f65ec75~0UGCuwJAq1498014980eusmtip1P;
 Wed, 24 Jul 2019 10:15:46 +0000 (GMT)
Subject: Re: [PATCH v4 3/5] drivers: devfreq: events: extend events by type
 of counted data
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cw00.choi@samsung.com
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <37af143f-a585-a28a-a36f-2ed25c5b6d3b@partner.samsung.com>
Date: Wed, 24 Jul 2019 12:15:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190605091236.24263-4-l.luba@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNKsWRmVeSWpSXmKPExsWy7djP87pX9C1iDb5MEbLYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZtF694j7BaH37SzWnw78YjRQcBjzbw1jB47Z91l99i0qpPNY/OSeo++LasYPT5vkgtg
 i+KySUnNySxLLdK3S+DK+HflJWPBXM2K5dNWsTUw3pbvYuTkkBAwkXj88z97FyMXh5DACkaJ
 LTe6oZwvjBKHHpxlhHA+M0osbtjGDNNy8M4uJojEckaJH+uboareMko0L+kEynBwCAvESrSt
 NgOJiwjsYpQ4/WM1M4jDDDLq5INrrCBFbAJ6EjtWFYJM5RVwk9g/dTobiM0ioCrxfPUeFhBb
 VCBC4vKWXYwQNYISJ2c+AYtzCjhInG38C2YzC4hL3HoynwnClpfY/nYO2C4JgUYOiZWXLrBC
 nO0i8e/8dKgXhCVeHd/CDmHLSJye3MMCYRdLNPQuZISwayQe98+FqrGWOHz8ItjNzAKaEut3
 6UOEHSUW9D9iAQlLCPBJ3HgrCHECn8SkbSCbQMK8Eh1tQhDVGhJbei4wQdhiEsvXTGOfwKg0
 C8ljs5A8MwvJM7MQ9i5gZFnFKJ5aWpybnlpslJdarlecmFtcmpeul5yfu4kRmORO/zv+ZQfj
 rj9JhxgFOBiVeHgrmMxjhVgTy4orcw8xSnAwK4nwBjaYxQrxpiRWVqUW5ccXleakFh9ilOZg
 URLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLglGpgzFIplbuTceo4b/MElqyg1IjaTIn+97yTnVyf
 rSpNfa4sGhXDX8X+3F68U6rmxnpJ45tTPrXvWmxqLXx3pbwaR/7N09Xdk7ONT+7QCpHukInT
 V7Oacv135BzuNxp1/ROi64LCf0ltEDHTK1yQInpU7+3jxzv6Wy4/O9lyKHj58iDH423i+nFK
 LMUZiYZazEXFiQDgX1TcbgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsVy+t/xu7qX9S1iDU5slbXYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLZZev8hk
 cbtxBZtF694j7BaH37SzWnw78YjRQcBjzbw1jB47Z91l99i0qpPNY/OSeo++LasYPT5vkgtg
 i9KzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DL+Hfl
 JWPBXM2K5dNWsTUw3pbvYuTkkBAwkTh4ZxdTFyMXh5DAUkaJ2/f3MUIkxCQm7dvODmELS/y5
 1sUGUfSaUeL+7anMIAlhgViJpkuXWUESIgK7GCW2/24BG8Us8JlRYvqay8wQLScZJT6uPglU
 xsHBJqAnsWNVIUg3r4CbxP6p09lAbBYBVYnnq/ewgNiiAhESfW2z2SBqBCVOznwCFucUcJA4
 2/gXzGYWMJOYt/khM4QtLnHryXwmCFteYvvbOcwTGIVmIWmfhaRlFpKWWUhaFjCyrGIUSS0t
 zk3PLTbSK07MLS7NS9dLzs/dxAiM7W3Hfm7Zwdj1LvgQowAHoxIPbwWTeawQa2JZcWXuIUYJ
 DmYlEd7ABrNYId6UxMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4Hpp28knhDU0NzC0tDc2NzYzML
 JXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MZUYNH3umHPvVkyIq/trEY0O2jMcJ/04NpRmr
 GCrnXucX2JGTI8NabfZtSlaMv83p/EXH3G44iaW/vK0f2/637+CxHaIMT9tnzpANPCv2JdpO
 6Z+hzb/td9M3t9pMeNEzZ5/YGWfGksBIafPNZirXa6XkTh5a6RS9TnfFLbFaM9UbZQ7/+N2V
 WIozEg21mIuKEwG+51A1AwMAAA==
X-CMS-MailID: 20190724101547eucas1p240814a5a29b21a6d59665ee76fbf4d28
X-Msg-Generator: CA
X-RootMTR: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a@eucas1p2.samsung.com>
 <20190605091236.24263-4-l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_031551_778798_34B9F02C 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chanwoo,

Could you have a look a this patch, please?
This patch has been rewritten accorifing to your suggestion.
Krzysztof tried to apply 5/5 DT patch on his current branch,
but it is missing earlier stuff.
The other patches have needed ACKs so could go through devfreq tree
probably, but this one left.

Regards,
Lukasz

On 6/5/19 11:12 AM, Lukasz Luba wrote:
> This patch adds posibility to choose what type of data should be counted
> by the PPMU counter. Now the type comes from DT where the event has been
> defined. When there is no 'event-data-type' the default value is used,
> which is 'read+write data in bytes'.
> It is needed when you want to know not only read+write data bytes but
> i.e. only write data in byte, or number of read requests, etc.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>   drivers/devfreq/event/exynos-ppmu.c | 60 ++++++++++++++++++++---------
>   include/linux/devfreq-event.h       |  6 +++
>   2 files changed, 47 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
> index 17f3c86a6f00..12f637320e9e 100644
> --- a/drivers/devfreq/event/exynos-ppmu.c
> +++ b/drivers/devfreq/event/exynos-ppmu.c
> @@ -161,9 +161,9 @@ static int exynos_ppmu_set_event(struct devfreq_event_dev *edev)
>   	if (ret < 0)
>   		return ret;
>   
> -	/* Set the event of Read/Write data count  */
> +	/* Set the event of proper data type monitoring */
>   	ret = regmap_write(info->regmap, PPMU_BEVTxSEL(id),
> -				PPMU_RO_DATA_CNT | PPMU_WO_DATA_CNT);
> +			   edev->desc->data_type);
>   	if (ret < 0)
>   		return ret;
>   
> @@ -375,23 +375,11 @@ static int exynos_ppmu_v2_set_event(struct devfreq_event_dev *edev)
>   	if (ret < 0)
>   		return ret;
>   
> -	/* Set the event of Read/Write data count  */
> -	switch (id) {
> -	case PPMU_PMNCNT0:
> -	case PPMU_PMNCNT1:
> -	case PPMU_PMNCNT2:
> -		ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
> -				PPMU_V2_RO_DATA_CNT | PPMU_V2_WO_DATA_CNT);
> -		if (ret < 0)
> -			return ret;
> -		break;
> -	case PPMU_PMNCNT3:
> -		ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
> -				PPMU_V2_EVT3_RW_DATA_CNT);
> -		if (ret < 0)
> -			return ret;
> -		break;
> -	}
> +	/* Set the event of proper data type monitoring */
> +	ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
> +			   edev->desc->data_type);
> +	if (ret < 0)
> +		return ret;
>   
>   	/* Reset cycle counter/performance counter and enable PPMU */
>   	ret = regmap_read(info->regmap, PPMU_V2_PMNC, &pmnc);
> @@ -507,6 +495,7 @@ static int of_get_devfreq_events(struct device_node *np,
>   	struct device_node *events_np, *node;
>   	int i, j, count;
>   	const struct of_device_id *of_id;
> +	int ret;
>   
>   	events_np = of_get_child_by_name(np, "events");
>   	if (!events_np) {
> @@ -556,6 +545,39 @@ static int of_get_devfreq_events(struct device_node *np,
>   		desc[j].driver_data = info;
>   
>   		of_property_read_string(node, "event-name", &desc[j].name);
> +		ret = of_property_read_u32(node, "event-data-type",
> +					   &desc[j].data_type);
> +		if (ret) {
> +			/* Set the event of proper data type counting.
> +			 * Check if the data type has been defined in DT,
> +			 * use default if not.
> +			 */
> +			if (info->ppmu_type == EXYNOS_TYPE_PPMU_V2) {
> +				struct devfreq_event_dev edev;
> +				int id;
> +				/* Not all registers take the same value for
> +				 * read+write data count.
> +				 */
> +				edev.desc = &desc[j];
> +				id = exynos_ppmu_find_ppmu_id(&edev);
> +
> +				switch (id) {
> +				case PPMU_PMNCNT0:
> +				case PPMU_PMNCNT1:
> +				case PPMU_PMNCNT2:
> +					desc[j].data_type = PPMU_V2_RO_DATA_CNT
> +						| PPMU_V2_WO_DATA_CNT;
> +					break;
> +				case PPMU_PMNCNT3:
> +					desc[j].data_type =
> +						PPMU_V2_EVT3_RW_DATA_CNT;
> +					break;
> +				}
> +			} else {
> +				desc[j].data_type = PPMU_RO_DATA_CNT |
> +					PPMU_WO_DATA_CNT;
> +			}
> +		}
>   
>   		j++;
>   	}
> diff --git a/include/linux/devfreq-event.h b/include/linux/devfreq-event.h
> index 4db00b02ca3f..cc160b1274c0 100644
> --- a/include/linux/devfreq-event.h
> +++ b/include/linux/devfreq-event.h
> @@ -81,14 +81,20 @@ struct devfreq_event_ops {
>    * struct devfreq_event_desc - the descriptor of devfreq-event device
>    *
>    * @name	: the name of devfreq-event device.
> + * @data_type	: the data type which is going to be counted in the register.
>    * @driver_data	: the private data for devfreq-event driver.
>    * @ops		: the operation to control devfreq-event device.
>    *
>    * Each devfreq-event device is described with a this structure.
>    * This structure contains the various data for devfreq-event device.
> + * The data_type describes what is going to be counted in the register.
> + * It might choose to count e.g. read requests, write data in bytes, etc.
> + * The full supported list of types is present in specyfic header in:
> + * include/dt-bindings/pmu/.
>    */
>   struct devfreq_event_desc {
>   	const char *name;
> +	u32 data_type;
>   	void *driver_data;
>   
>   	const struct devfreq_event_ops *ops;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
