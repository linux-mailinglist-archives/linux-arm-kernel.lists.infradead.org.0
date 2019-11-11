Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC40EF7687
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8+On4xpJtJEQVg8P6OcHjt9Ts7Kz5p8jozKFilWLwI=; b=cycsFd+1GIVRmq
	Y0MDD31gM0YH5Fx6rZSjX+PqSucfEVVHYi4nGi3gzblFHzOka6QpxQ+2hN422J+kszUFii5+vJ+te
	hB672K5eJkdiCRZH8+Wg4DDF1NNdHE74Pz55HjOIsEhIZW3qjuIGQLyqLF60YmZfnOBqzJNkWu17x
	mDt2+O+Ery/aoOMyU3dnQlXRmua8K84wEc0SUdpppUuu/mjzs3JArKNgKOpPYd0E26ngpjz89geSw
	0KwO586YT6QAhxV1dvIm2aNFYAOn4yU5eVhzhYbDKwUHghcJyjp3WnucRdUH+oDzpy8qU8Z/3LBQg
	bb3HOs4cji6MwSor8gKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAot-0007Np-8r; Mon, 11 Nov 2019 14:37:31 +0000
Received: from mail-eopbgr30043.outbound.protection.outlook.com ([40.107.3.43]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAok-0007Lv-Bf
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:37:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g6Pk8e63a6AZGxEeHxTdR5u3Uad57b6X4skuYh9TWMv+JyOyIJ6p4FnVqXvmN3W6AKq3yYdHYdWrkEErLxoKlGWeSMWqlGGrCNlvd0JZvAzO6w0w42Q89esgMUwnFa9bPtvPx7SYlfZpkL40Y5yDcFC5GZ+gtXggFDtWhiduw4uVBE2wMZamB1sDOcMHi4V74olWR2vbtkUFWqL8Da2JG5G6WeiXOkAV+MuUAxuyriQ1ZeOXu5zHkqRwQ/mV0an/pC5pNboU8DaKCaQm/mcNddiuNTiuVP/a7TkySdoHKIkYW8vQMRz1lvpP3bJyZiNwn898Fefatws3nvz9fJ9eDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9MzICkuvu+0G7PiSLPCO6rP9cO6cf3FZIhjdPnae6u8=;
 b=DS/If0MTPewy/tP7yi/uNWNir6zHwZR8Cj+7nmWYFEkPlR+UCwBH7PPEXvySZRdcFh3Ioa3rGVt5eqefiCuBu5wrAud07WLkYkYT+r1pTamD6BwI+WpMXQvK1QIzYBcdCOY7449c+pgmfb00DPAjATZCFe6tGpHLhlOH/ZPgpuaAHiGDFYqTYuT2kACIAJ8Kt0uHod6lbkTP8W/vV88L6uc6vcn6swmO495ASSZjGueX+VTa0JcrIfoUsDugkF+stW9wPV2446laxyPBI0n6sEdlujfEDC3yFj2sii7J5i7cbBxDt1xaltKHNGzgxjKp4teyOD9Yuf/hB0NhdMjYjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9MzICkuvu+0G7PiSLPCO6rP9cO6cf3FZIhjdPnae6u8=;
 b=onJ8bJ21qLJmqHmlWqw1h1dbY6nBtnSEnP3Slui+ip4DK8t4jyWk5i5o45WyoAFvE1p4WsVPjMZemgd6C38q0J132rrw+xz70p90IxhFZl0Xxh9+8ClvRmbIyU/0pW6J+SE/FpkyWIcdFUtiiXbfTX9dSVYIs4oSt2dnIJK32U8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5776.eurprd04.prod.outlook.com (20.178.127.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 14:37:18 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 14:37:18 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "cw00.choi@samsung.com"
 <cw00.choi@samsung.com>, "myungjoo.ham@samsung.com"
 <myungjoo.ham@samsung.com>
Subject: Re: [PATCH v10 09/11] PM / devfreq: Introduce get_freq_range helper
Thread-Topic: [PATCH v10 09/11] PM / devfreq: Introduce get_freq_range helper
Thread-Index: AQHVkDMAXQ4IQOa+qUm4gPpqDKMD2aeFiTYAgACRagA=
Date: Mon, 11 Nov 2019 14:37:17 +0000
Message-ID: <914b491c38aa7130cbf0c76203cdb7dd92a42299.camel@nxp.com>
References: <cover.1572556786.git.leonard.crestez@nxp.com>
 <CGME20191031213445epcas1p27e2afe33522f95e9b77db3d9fec62028@epcas1p2.samsung.com>
 <6fd2ab4b54f5cd3a02b3f5f8aae5e776485441e3.1572556786.git.leonard.crestez@nxp.com>
 <b6662a88-af9b-6948-a1ea-921a10ca937d@samsung.com>
In-Reply-To: <b6662a88-af9b-6948-a1ea-921a10ca937d@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50795520-fe0b-4d7e-a312-08d766b4a726
x-ms-traffictypediagnostic: VI1PR04MB5776:|VI1PR04MB5776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5776957F5E54D18A3403A6A6EE740@VI1PR04MB5776.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(346002)(136003)(396003)(199004)(189003)(7416002)(25786009)(476003)(91956017)(11346002)(81156014)(81166006)(66446008)(446003)(66476007)(66946007)(76116006)(64756008)(2906002)(8676002)(2616005)(2501003)(50226002)(66556008)(6506007)(53546011)(478600001)(44832011)(256004)(14444005)(14454004)(8936002)(36756003)(4001150100001)(76176011)(486006)(102836004)(5660300002)(186003)(7736002)(99286004)(316002)(6512007)(110136005)(54906003)(6436002)(305945005)(26005)(229853002)(71200400001)(71190400001)(6486002)(118296001)(4326008)(86362001)(6246003)(2201001)(66066001)(3846002)(6116002)(99106002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5776;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fqi86ICryedIQszrZ/0TxFpNOXG5Ory0z0jznREnnLvpAb2k/FiMOewavmT5VRDlp1Y0Rerv02bmZ6dmDJ4IR/2KD0IYQYXzEUCBsXosZP+trbjDMZTkuYMxNVuaox7VGtZuf3oFsyelav9Vtn3KuhoPHf1HDCVjH1hKk+jBgZABWTgunk0uJsDJ569Me7HjIERBsmV5ywhsw0N8ExhVzqMv/03ZrhF3ohXI6gIpjTpSWL+q9wSNKp6tBArTMIKBblnWlt4RNXoLbDgkHB06qQAkQwOpVix14WciLd6X9Loh01XLK6poW+HlZYj/8d21O1gil10B3/quilFdXuedZSdXpdFy/eVN0CPKzFdS+8ud+LN3acHKYZW/0XIOrBqPoiJZVNdmG+gsqCe+za5jV7YbAzcKXIH+g7ACozHTwDBqmP12+UJRHuQlPHKkiQCv
Content-ID: <071FB3986A23254ABA78842DA07FA7D0@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50795520-fe0b-4d7e-a312-08d766b4a726
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 14:37:17.9453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gev3H8qai9xc0GjwuDPpmcwILwjqabdu66JTg50e580eYENuUJTAjeNWSE9qMjbyIv/0ZllNZbCjPdT3rBOBdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063722_549790_9CBE5DD6 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "a.swigon@partner.samsung.com" <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "saravanak@google.com" <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "abailon@baylibre.com" <abailon@baylibre.com>,
 "mka@chromium.org" <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 "georgi.djakov@linaro.org" <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-11 at 14:56 +0900, Chanwoo Choi wrote:
> On 11/1/19 6:34 AM, Leonard Crestez wrote:
> > Moving handling of min/max freq to a single function and call it from
> > update_devfreq and for printing min/max freq values in sysfs.
> > 
> > This changes the behavior of out-of-range min_freq/max_freq: clamping
> > is now done at evaluation time. This means that if an out-of-range
> > constraint is imposed by sysfs and it later becomes valid then it will
> > be enforced.
> > 
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> > ---
> >  drivers/devfreq/devfreq.c | 108 +++++++++++++++++++++-----------------
> >  1 file changed, 60 insertions(+), 48 deletions(-)
> > 
> > diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> > index ab12fd22aa08..ba3b53ee23fd 100644
> > --- a/drivers/devfreq/devfreq.c
> > +++ b/drivers/devfreq/devfreq.c
> > @@ -96,10 +96,51 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
> >  		dev_pm_opp_put(opp);
> >  
> >  	return max_freq;
> >  }
> >  
> > +/**
> > + * get_freq_range() - Get the current freq range
> > + * @devfreq:	the devfreq instance
> > + * @min_freq:	the min frequency
> > + * @max_freq:	the max frequency
> > + *
> > + * This takes into consideration all constraints.
> > + */
> > +static void get_freq_range(struct devfreq *devfreq,
> > +			   unsigned long *min_freq,
> > +			   unsigned long *max_freq)
> > +{
> > +	unsigned long *freq_table = devfreq->profile->freq_table;
> > +
> > +	lockdep_assert_held(&devfreq->lock);
> > +
> > +	/*
> > +	 * Initialize minimum/maximum frequency from freq table.
> > +	 * The devfreq drivers can initialize this in either ascending or
> > +	 * descending order and devfreq core supports both.
> > +	 */
> > +	if (freq_table[0] < freq_table[devfreq->profile->max_state - 1]) {
> > +		*min_freq = freq_table[0];
> > +		*max_freq = freq_table[devfreq->profile->max_state - 1];
> > +	} else {
> > +		*min_freq = freq_table[devfreq->profile->max_state - 1];
> > +		*max_freq = freq_table[0];
> > +	}
> > +
> > +	/* Apply constraints from sysfs */
> > +	*min_freq = max(*min_freq, devfreq->min_freq);
> > +	*max_freq = min(*max_freq, devfreq->max_freq);
> > +
> > +	/* Apply constraints from OPP interface */
> > +	*min_freq = max(*min_freq, devfreq->scaling_min_freq);
> > +	*max_freq = min(*max_freq, devfreq->scaling_max_freq);
> > +
> > +	if (*min_freq > *max_freq)
> > +		*min_freq = *max_freq;
> > +}
> > +
> >  /**
> >   * devfreq_get_freq_level() - Lookup freq_table for the frequency
> >   * @devfreq:	the devfreq instance
> >   * @freq:	the target frequency
> >   */
> > @@ -348,20 +389,11 @@ int update_devfreq(struct devfreq *devfreq)
> >  
> >  	/* Reevaluate the proper frequency */
> >  	err = devfreq->governor->get_target_freq(devfreq, &freq);
> >  	if (err)
> >  		return err;
> > -
> > -	/*
> > -	 * Adjust the frequency with user freq, QoS and available freq.
> > -	 *
> > -	 * List from the highest priority
> > -	 * max_freq
> > -	 * min_freq
> > -	 */
> > -	max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
> > -	min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);
> > +	get_freq_range(devfreq, &min_freq, &max_freq);
> >  
> >  	if (freq < min_freq) {
> >  		freq = min_freq;
> >  		flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND; /* Use GLB */
> >  	}
> > @@ -1292,40 +1324,28 @@ static ssize_t min_freq_store(struct device *dev, struct device_attribute *attr,
> >  	ret = sscanf(buf, "%lu", &value);
> >  	if (ret != 1)
> >  		return -EINVAL;
> >  
> >  	mutex_lock(&df->lock);
> > -
> > -	if (value) {
> > -		if (value > df->max_freq) {
> > -			ret = -EINVAL;
> > -			goto unlock;
> > -		}
> > -	} else {
> > -		unsigned long *freq_table = df->profile->freq_table;
> > -
> > -		/* Get minimum frequency according to sorting order */
> > -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> > -			value = freq_table[0];
> > -		else
> > -			value = freq_table[df->profile->max_state - 1];
> > -	}
> > -
> >  	df->min_freq = value;
> >  	update_devfreq(df);
> > -	ret = count;
> > -unlock:
> >  	mutex_unlock(&df->lock);
> > -	return ret;
> > +
> > +	return count;
> >  }
> >  
> >  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
> >  			     char *buf)
> >  {
> >  	struct devfreq *df = to_devfreq(dev);
> > +	unsigned long min_freq, max_freq;
> >  
> > -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> > +	mutex_lock(&df->lock);
> > +	get_freq_range(df, &min_freq, &max_freq);
> > +	mutex_unlock(&df->lock);
> > +
> > +	return sprintf(buf, "%lu\n", min_freq);
> >  }
> >  
> >  static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
> >  			      const char *buf, size_t count)
> >  {
> > @@ -1337,40 +1357,32 @@ static ssize_t max_freq_store(struct device *dev, struct device_attribute *attr,
> >  	if (ret != 1)
> >  		return -EINVAL;
> >  
> >  	mutex_lock(&df->lock);
> >  
> > -	if (value) {
> > -		if (value < df->min_freq) {
> > -			ret = -EINVAL;
> > -			goto unlock;
> > -		}
> > -	} else {
> > -		unsigned long *freq_table = df->profile->freq_table;
> > -
> > -		/* Get maximum frequency according to sorting order */
> > -		if (freq_table[0] < freq_table[df->profile->max_state - 1])
> > -			value = freq_table[df->profile->max_state - 1];
> > -		else
> > -			value = freq_table[0];
> > -	}
> > +	if (!value)
> > +		value = ULONG_MAX;
> >  
> >  	df->max_freq = value;
> >  	update_devfreq(df);
> > -	ret = count;
> > -unlock:
> >  	mutex_unlock(&df->lock);
> > -	return ret;
> > +
> > +	return count;
> >  }
> >  static DEVICE_ATTR_RW(min_freq);
> >  
> >  static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
> >  			     char *buf)
> >  {
> >  	struct devfreq *df = to_devfreq(dev);
> > +	unsigned long min_freq, max_freq;
> > +
> > +	mutex_lock(&df->lock);
> > +	get_freq_range(df, &min_freq, &max_freq);
> > +	mutex_unlock(&df->lock);
> >  
> > -	return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
> > +	return sprintf(buf, "%lu\n", max_freq);
> >  }
> >  static DEVICE_ATTR_RW(max_freq);
> >  
> >  static ssize_t available_frequencies_show(struct device *d,
> >  					  struct device_attribute *attr,
> > 
> 
> Applied it because it doesn't depend on the pm_qos feature.

Thanks, this will make it easier to move forward.

--
Regards,
Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
