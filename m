Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 967B8F6E45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+cI4Tg7KTNjZkNmG9+YT2ZWp4khmVDF964XJJd2Jq0=; b=a/6y+HJLNCQ60v
	ztPq1zIZzz6gfRUo4IZMa/F5yzrc/fGoSFXbHE5VU1hsb00Ff4fCMuNH50/BbINKNlR9FcY2dOLK5
	AqcYGtjmr7SIoeuI2At9y9PDtWScRXJrE+oOSR8amcudhQriokY9vCEtrhVIGi2kDDA2R6iPAPwxX
	T05Re14u01KvT4AgkPBjcA6Nwvo2sNdzl7oc4DiVdEyjoeM2wvtORySKDlCVBHeQxaAtqGJ/BmXwb
	UW2yMeabVJI9eyhmlV2sEi+LC7dazjdCZUZLNjGN0tiiXiTF8pUbywGsPICSDmJ5CemhJu4zLXwJ9
	54WBMZ2fllYAn7g2lrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2be-0002aE-Bj; Mon, 11 Nov 2019 05:51:18 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2bT-0002Zf-1z
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:51:09 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191111055104epoutp0443b7284752ffd8e8be0c022796cd8e9f~WBcVDz0tC0513305133epoutp04f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 05:51:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191111055104epoutp0443b7284752ffd8e8be0c022796cd8e9f~WBcVDz0tC0513305133epoutp04f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573451464;
 bh=SSgDsDt7wUeOaf8M1LI9DquotXir07rVp6pfIcdY/FI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=E89m2jkrCSx8B2NAL31FtQrDw2byPJCUzbfowPu29UX+uEZ4yOGWRZro+/UiPFLGx
 fbcQWtAY4ZiaQh1D5lHKKzxzVfF0FmmnR0Bx43SSAJVjyP5zhQlMRgrnpiVJOojE8V
 IbfzxlDqWrsA9fZARi8m59KxunMIoxyBI8aU+0I4=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191111055104epcas1p11af7afa474c05b691c1ff0969e4a0a89~WBcUlBC-I2149921499epcas1p15;
 Mon, 11 Nov 2019 05:51:04 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47BKjx5KjHzMqYkr; Mon, 11 Nov
 2019 05:51:01 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 59.24.04135.5C6F8CD5; Mon, 11 Nov 2019 14:51:01 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191111055101epcas1p4eb0f8d9baf763764299aec2a84f5661d~WBcR0k2ly3154331543epcas1p48;
 Mon, 11 Nov 2019 05:51:01 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191111055101epsmtrp1f740ae52de39103084b47b997e594d74~WBcRznsWI2584825848epsmtrp1g;
 Mon, 11 Nov 2019 05:51:01 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-d6-5dc8f6c59cbd
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EB.23.24756.4C6F8CD5; Mon, 11 Nov 2019 14:51:01 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191111055100epsmtip2bd455a61455f85e2a496be2736a2acb7~WBcRj3SNh2527025270epsmtip2d;
 Mon, 11 Nov 2019 05:51:00 +0000 (GMT)
Subject: Re: [PATCH v10 09/11] PM / devfreq: Introduce get_freq_range helper
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <b6662a88-af9b-6948-a1ea-921a10ca937d@samsung.com>
Date: Mon, 11 Nov 2019 14:56:48 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6fd2ab4b54f5cd3a02b3f5f8aae5e776485441e3.1572556786.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHJsWRmVeSWpSXmKPExsWy7bCmnu7RbydiDX5P1rI4dGwru8XX06cY
 LZZdOspoMX3vJjaL8+c3sFucbXrDbrHi7kdWi02Pr7FadP1ayWzxufcIo8XnDY8ZLW43rmCz
 WH3uIJvFmdOXgLKH/rJZbPzq4SDg8f5GK7vH7IaLLB4LNpV6bFrVyeZx59oeNo/NS+o9Nr7b
 weRx8N0eJo8tV9tZPPq2rGL0+LxJLoA7KtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX
 0NLCXEkhLzE31VbJxSdA1y0zB+gdJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6B
 ZYFecWJucWleul5yfq6VoYGBkSlQYUJ2xtuNP1gL7hlULPn+iK2BcZlaFyMnh4SAicT2/rWs
 XYxcHEICOxgl9k26xAbhfGKU+P70B1TmG6PEi/Yt7DAt/a9XMUIk9jJK7Dk1iRkkISTwnlHi
 5QE5EFtYwEfixZlVYKNEBNYxSvw53MUE4jALPGCWmDT1NyNIFZuAlsT+FzfYQGx+AUWJqz8e
 g8V5Bewk1q+bxApiswioSlzqmQhUw8EhKhAhcfprIkSJoMTJmU9YQGxOgTiJlwtng9nMAuIS
 t57MZ4Kw5SW2v53DDLJXQuAWu8TShZuhXnCRuDL3JCuELSzx6jjMa1ISL/vboOxqiZUnj7BB
 NHcwSmzZfwGqwVhi/9LJTCAHMQtoSqzfpQ8RVpTY+XsuI8RiPol3X3tYQUokBHglOtqEIEqU
 JS4/uMsEYUtKLG7vZJvAqDQLyTuzkLwwC8kLsxCWLWBkWcUollpQnJueWmxYYIQc3ZsYwWld
 y2wH46JzPocYBTgYlXh4A/RPxAqxJpYVV+YeYpTgYFYS4d1RARTiTUmsrEotyo8vKs1JLT7E
 aAoM7InMUqLJ+cCck1cSb2hqZGxsbGFiaGZqaKgkzuu4fGmskEB6YklqdmpqQWoRTB8TB6dU
 A6NVs7NbGf/MF/VTOs5tDvhzueP4FBetaOOezm+homcbDa8zJG0Nf/TW5/SWctfq21GrHwna
 62f6ZPhxSEiuvdwWG7pWWeCaN7/bSzmf5Osuz+7P8F7pMct4TU5f/IWg3ebSt2T2zrgkyxiQ
 mDH/srRn1zW2ldUNz2/zh1jcf3hvstxLbYOPrkosxRmJhlrMRcWJACw5+n0BBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Rb0gTYRzHeXa322mtLjV8NMgclCalLgzuhWkS1AWBvesfZpceU3Jz3Pm3
 XrgEU2f/w7RZqSEyV9l26jZyFc4m/ivbQhtmvXCWms4Im4o0yG0Fe/f5PZ/v59WDI2GTaDSe
 ryhiWAVdIMFCUWO/JGa/bWUwK3ntt4C0DvSISM/IMCDbHTZANrziMXJsTC8i31Uuikjtl19C
 kndNCEn1egdCLt94C8hlvQuQn69qMfLp+z6MHB1xbFirFyMNHuowQf10VomoJpUdpVr4YorX
 1WLU1IQFo7raKijDkllA9S1ZBFT3eDVK3ezWAWqZ33ly09nQ1FymIL+EYZPSLoTmuQ1rQuXX
 5LK21WlMBdr3qEEIDokUeGtBB9QgFA8jegG0PetFAiIK3rfbNhjf4HDY388FNm4AtY0WzLcJ
 J07AuVEd5hMRhB7Ajh6vwHcgxDQCjVYPFkimAbTXrPsTjEiAb+acft5KxMLxNRfwsZhIgy86
 7wp9jBK7oeP6Hf9mO3Eazpqc/zbb4NCDGdTHIcR5ON/a5GeEiIN/HjuQAEfCyZlmQYBjoMn9
 ELkNwjVBuSYo0QQlmqCkBaA6EMUoOblMzkmVUgVTmsjRcq5YIUvMKZTzwP/jCXvN4GNbthUQ
 OJBsFq/tG8wKE9IlXLncCiCOSCLE5rKNJ3EuXX6ZYQuz2eIChrOCHTgqiRR/UwycCSNkdBFz
 iWGUDPvfCvCQaBWodq92N3e5r6QeTF/JU+np2YwMdeNWz4J6KTPpkLc+PiPGxE7FfZAZRzLr
 azr52PKKU8qXzxcLWYPZHF9lSrk45bI+4bSPjD8KvJH5r5fOCY3maGdlzvyxXQK7RvdJWjq+
 eK2ugY9p/Z5+fHihtvPAkGXLUX3N/L06jaxq8YgE5fJoaQLCcvRfOOYY5O0CAAA=
X-CMS-MailID: 20191111055101epcas1p4eb0f8d9baf763764299aec2a84f5661d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191031213445epcas1p27e2afe33522f95e9b77db3d9fec62028
References: <cover.1572556786.git.leonard.crestez@nxp.com>
 <CGME20191031213445epcas1p27e2afe33522f95e9b77db3d9fec62028@epcas1p2.samsung.com>
 <6fd2ab4b54f5cd3a02b3f5f8aae5e776485441e3.1572556786.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_215107_432984_2F7E7EB3 
X-CRM114-Status: GOOD (  29.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/1/19 6:34 AM, Leonard Crestez wrote:
> Moving handling of min/max freq to a single function and call it from
> update_devfreq and for printing min/max freq values in sysfs.
> 
> This changes the behavior of out-of-range min_freq/max_freq: clamping
> is now done at evaluation time. This means that if an out-of-range
> constraint is imposed by sysfs and it later becomes valid then it will
> be enforced.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 108 +++++++++++++++++++++-----------------
>  1 file changed, 60 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index ab12fd22aa08..ba3b53ee23fd 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -96,10 +96,51 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
>  		dev_pm_opp_put(opp);
>  
>  	return max_freq;
>  }
>  
> +/**
> + * get_freq_range() - Get the current freq range
> + * @devfreq:	the devfreq instance
> + * @min_freq:	the min frequency
> + * @max_freq:	the max frequency
> + *
> + * This takes into consideration all constraints.
> + */
> +static void get_freq_range(struct devfreq *devfreq,
> +			   unsigned long *min_freq,
> +			   unsigned long *max_freq)
> +{
> +	unsigned long *freq_table = devfreq->profile->freq_table;
> +
> +	lockdep_assert_held(&devfreq->lock);
> +
> +	/*
> +	 * Initialize minimum/maximum frequency from freq table.
> +	 * The devfreq drivers can initialize this in either ascending or
> +	 * descending order and devfreq core supports both.
> +	 */
> +	if (freq_table[0] < freq_table[devfreq->profile->max_state - 1]) {
> +		*min_freq = freq_table[0];
> +		*max_freq = freq_table[devfreq->profile->max_state - 1];
> +	} else {
> +		*min_freq = freq_table[devfreq->profile->max_state - 1];
> +		*max_freq = freq_table[0];
> +	}
> +
> +	/* Apply constraints from sysfs */
> +	*min_freq = max(*min_freq, devfreq->min_freq);
> +	*max_freq = min(*max_freq, devfreq->max_freq);
> +
> +	/* Apply constraints from OPP interface */
> +	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
> +	*max_freq = min(*max_freq, devfreq->scaling_max_freq);
> +
> +	if (*min_freq > *max_freq)
> +		*min_freq = *max_freq;
> +}
> +
>  /**
>   * devfreq_get_freq_level() - Lookup freq_table for the frequency
>   * @devfreq:	the devfreq instance
>   * @freq:	the target frequency
>   */
> @@ -348,20 +389,11 @@ int update_devfreq(struct devfreq *devfreq)
>  
>  	/* Reevaluate the proper frequency */
>  	err = devfreq->governor->get_target_freq(devfreq, &freq);
>  	if (err)
>  		return err;
> -
> -	/*
> -	 * Adjust the frequency with user freq, QoS and available freq.
> -	 *
> -	 * List from the highest priority
> -	 * max_freq
> -	 * min_freq
> -	 */
> -	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
> -	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
> +	get_freq_range(devfreq, &min_freq, &max_freq);
>  
>  	if (freq < min_freq) {
>  		freq = min_freq;
>  		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
>  	}
> @@ -1292,40 +1324,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
>  	ret = sscanf(buf, "%lu", &value);
>  	if (ret != 1)
>  		return -EINVAL;
>  
>  	mutex_lock(&df->lock);
> -
> -	if (value) {
> -		if (value > df->max_freq) {
> -			ret = -EINVAL;
> -			goto unlock;
> -		}
> -	} else {
> -		unsigned long *freq_table = df->profile->freq_table;
> -
> -		/* Get minimum frequency according to sorting order */
> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> -			value = freq_table[0];
> -		else
> -			value = freq_table[df->profile->max_state - 1];
> -	}
> -
>  	df->min_freq = value;
>  	update_devfreq(df);
> -	ret = count;
> -unlock:
>  	mutex_unlock(&df->lock);
> -	return ret;
> +
> +	return count;
>  }
>  
>  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
>  			     char *buf)
>  {
>  	struct devfreq *df = to_devfreq(dev);
> +	unsigned long min_freq, max_freq;
>  
> -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> +	mutex_lock(&df->lock);
> +	get_freq_range(df, &min_freq, &max_freq);
> +	mutex_unlock(&df->lock);
> +
> +	return sprintf(buf, "%lu\n", min_freq);
>  }
>  
>  static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  			      const char *buf, size_t count)
>  {
> @@ -1337,40 +1357,32 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
>  	if (ret != 1)
>  		return -EINVAL;
>  
>  	mutex_lock(&df->lock);
>  
> -	if (value) {
> -		if (value < df->min_freq) {
> -			ret = -EINVAL;
> -			goto unlock;
> -		}
> -	} else {
> -		unsigned long *freq_table = df->profile->freq_table;
> -
> -		/* Get maximum frequency according to sorting order */
> -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> -			value = freq_table[df->profile->max_state - 1];
> -		else
> -			value = freq_table[0];
> -	}
> +	if (!value)
> +		value = ULONG_MAX;
>  
>  	df->max_freq = value;
>  	update_devfreq(df);
> -	ret = count;
> -unlock:
>  	mutex_unlock(&df->lock);
> -	return ret;
> +
> +	return count;
>  }
>  static DEVICE_ATTR_RW(min_freq);
>  
>  static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
>  			     char *buf)
>  {
>  	struct devfreq *df = to_devfreq(dev);
> +	unsigned long min_freq, max_freq;
> +
> +	mutex_lock(&df->lock);
> +	get_freq_range(df, &min_freq, &max_freq);
> +	mutex_unlock(&df->lock);
>  
> -	return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
> +	return sprintf(buf, "%lu\n", max_freq);
>  }
>  static DEVICE_ATTR_RW(max_freq);
>  
>  static ssize_t available_frequencies_show(struct device *d,
>  					  struct device_attribute *attr,
> 

Applied it because it doesn't depend on the pm_qos feature.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
