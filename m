Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3984A10E527
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 05:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmCvJxy1XdDZShxFkQ7yN1pmfyVpZhRt6ccCEmHMe28=; b=fS5wP/YoTbhWCN
	SM28+ji6ZY2FjRq8YyP4Xx8u7hALq7G2Hv6FGv1faY7wHVbdQWNKgMFqLvRhCNOBzWoYejL9V+Ead
	ScLThYpGIPwqihlu6pMi84UIsgEDbby8Y2xV7NX4s546TKrqwFzy3ZwWI/N5WJjsnSyaN+U1nmol5
	uJHvA3xY9yZ+U1pynweQE1l2cQ90vGssg/cx3lpaO3jN3yL949kmq4sF6FYNZC8+9BoZcQh90lc9/
	ABBvgcXzh4y5IDMBYeJ61s5WhgOefDlqzMJ4aCQadnehd3F1y6cZXy18Cw21S4qu5hLK3I0/8d5me
	FeCAwlcNNLdtpkz9HKTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdld-0003IQ-IB; Mon, 02 Dec 2019 04:57:01 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdlU-0003Hm-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 04:56:54 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191202045643epoutp01a091a72550f85b08a99fa8229785ccf1~cdP3eq1BY2787027870epoutp01X
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 04:56:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191202045643epoutp01a091a72550f85b08a99fa8229785ccf1~cdP3eq1BY2787027870epoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575262603;
 bh=6zejkPrF+DF+aP7+CbalpHGB2BIfxbUFbJLILO6Klm4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=cBziQst9I0O31SVpoRsZIQdHdbFWYgPu2v84p+vxZ9pB1vJSe2JdCLt5zm/HBRCxX
 KUk0f1F5hSDxg9FaVZduLf8bjXjVjXZjsXt3Qi8mPZPBrcQIcQNA4KDfEfhNOn6shl
 makxpEU0/eIL7IxyKigIeEXGcvQYH8Y6IBCVGcuE=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191202045643epcas1p38df41993a4f538847fcf68ed4c757777~cdP3KkaSi2762427624epcas1p3a;
 Mon,  2 Dec 2019 04:56:43 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.158]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47RCWb032CzMqYkj; Mon,  2 Dec
 2019 04:56:43 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 F7.BA.48019.98994ED5; Mon,  2 Dec 2019 13:56:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191202045640epcas1p3ed2db049e903bf502c5d77c578d9d12b~cdP1DgVLJ0226902269epcas1p3_;
 Mon,  2 Dec 2019 04:56:40 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191202045640epsmtrp2c3ff848317c05e0ec09d2538646a96c3~cdP1CwZNd2488524885epsmtrp2c;
 Mon,  2 Dec 2019 04:56:40 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-54-5de4998902f2
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3C.B3.06569.88994ED5; Mon,  2 Dec 2019 13:56:40 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191202045640epsmtip29a970b32c61cda004e6a822e3d0238a6~cdP04z6zn0291302913epsmtip2g;
 Mon,  2 Dec 2019 04:56:40 +0000 (GMT)
Subject: Re: [PATCH 2/5] PM / devfreq: Split device_register usage
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <dc635125-8b49-cd7e-304a-681ff47b2011@samsung.com>
Date: Mon, 2 Dec 2019 14:02:57 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023135B9D53D86A101F1895EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCJsWRmVeSWpSXmKPExsWy7bCmgW7nzCexBnc38VgcOraV3WL63k1s
 Fmeb3rBbrLj7kdVi0+NrrBZdv1YyW3zuPcJo8XnDY0aL240r2CzOnL7EarHxq4cDt8fshoss
 Hneu7WHz2Lyk3mPjux1MHgff7WHy2HK1ncWjb8sqRo/Pm+QCOKKybTJSE1NSixRS85LzUzLz
 0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOA7lRSKEvMKQUKBSQWFyvp29kU5ZeW
 pCpk5BeX2CqlFqTkFFgW6BUn5haX5qXrJefnWhkaGBiZAhUmZGdcnf2ApWCiVMWHmQoNjKtE
 uxg5OSQETCTWd0xnArGFBHYwSuyaL9XFyAVkf2KUePxiAiOE8w0o8eYzG0zH7nn/mSE69jJK
 POnTgSh6zyixcPpcRpCEsICTxMZ374GKODhEBCIkpr12B6lhFjjMLPFg7ioWkBo2AS2J/S9u
 gA3lF1CUuPrjMSNIPa+AnUTvHXaQMIuAisTCObPArhMVCJM4ua0FbDyvgKDEyZlPwMZwCsRK
 dG/+CBZnFtCTeHZqFguELS5x68l8JghbXmL72znMEPcvY5f4Or8MwnaR+HDmASuELSzx6vgW
 dghbSuLzu71Q/1ZLrDx5hA3kfgmBDkaJLfsvQDUYS+xfOpkJwlaU2Pl7LtQRfBLvvvawgvwi
 IcAr0dEmBFGiLHH5wV2ockmJxe2dbBMYlWYheWcWkhdmIXlhFpIXFjCyrGIUSy0ozk1PLTYs
 MEGO602M4BSsZbGDcc85n0OMAhyMSjy8Ha8exwqxJpYVV+YeYpTgYFYS4b2u9DBWiDclsbIq
 tSg/vqg0J7X4EKMpMLgnMkuJJucD80NeSbyhqZGxsbGFiaGZqaGhkjgvx4+LsUIC6Yklqdmp
 qQWpRTB9TBycUg2MNZNjvwRpzUtXFPjp2C8irxn+wsdhf8W8P18+nZn6jq/O/3lWS8Wt5fnb
 zid2H7u+71zigymTA7/PLMmbYrW6v9JPhHXNxlvf34buMNxzXt1/wgrv+WJrrVkfxV58FzA5
 3rK3ob73f1lm4d/qZJFHTbmT5uoHyTpcfLphz07jlw31CzRjkyJclViKMxINtZiLihMBmIYY
 AdcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAIsWRmVeSWpSXmKPExsWy7bCSvG7HzCexBgvm6VgcOraV3WL63k1s
 Fmeb3rBbrLj7kdVi0+NrrBZdv1YyW3zuPcJo8XnDY0aL240r2CzOnL7EarHxq4cDt8fshoss
 Hneu7WHz2Lyk3mPjux1MHgff7WHy2HK1ncWjb8sqRo/Pm+QCOKK4bFJSczLLUov07RK4Mq7O
 fsBSMFGq4sNMhQbGVaJdjJwcEgImErvn/WfuYuTiEBLYzSix+8VdJoiEpMS0i0eBEhxAtrDE
 4cPFEDVvGSVOPPzJDlIjLOAksfHde2YQW0QgQmLOtBksIEXMAkeZJbpvrmaF6HjFJLHn5GxG
 kCo2AS2J/S9usIHY/AKKEld/PGYE2cArYCfRewdsKIuAisTCObPAjhAVCJPYueQxmM0rIChx
 cuYTFhCbUyBWonvzR7CRzAI6Em2fFzJB2OISt57Mh7LlJba/ncM8gVF4FpL2WUhaZiFpmYWk
 ZQEjyypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOB41NLawXjiRPwhRgEORiUe3o5X
 j2OFWBPLiitzDzFKcDArifBeV3oYK8SbklhZlVqUH19UmpNafIhRmoNFSZxXPv9YpJBAemJJ
 anZqakFqEUyWiYNTqoGxwcXl32RWNzv+YtcM6XztwDu9zdvLuuou9tw4uLxk/bP1B9Zfzfy4
 +qJB8Cz///8lyx0muarbTbh2wGLeksyOf20J5x4r/+GJUF49fX9H5tsL8alK/Wf2qEs4fbMy
 PZ96x/oNd/IxvfBvc7QLxDg+8uYxyccmRR8/ktF37Xu8qsyfey+Tb69SYinOSDTUYi4qTgQA
 gYiEAMMCAAA=
X-CMS-MailID: 20191202045640epcas1p3ed2db049e903bf502c5d77c578d9d12b
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191113232144epcas1p37b0c4f2d15be4686b4796c6132ef6bbe
References: <cover.1573686315.git.leonard.crestez@nxp.com>
 <CGME20191113232144epcas1p37b0c4f2d15be4686b4796c6132ef6bbe@epcas1p3.samsung.com>
 <85ccf6afe5db556c610ce2b47ccc38132b6671f6.1573686315.git.leonard.crestez@nxp.com>
 <69d37137-8c7a-ddcc-f692-09546c79ff7d@samsung.com>
 <VI1PR04MB7023135B9D53D86A101F1895EE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_205653_115202_84343E57 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/2/19 1:45 PM, Leonard Crestez wrote:
> On 2019-12-02 3:02 AM, Chanwoo Choi wrote:
>> On 11/14/19 8:21 AM, Leonard Crestez wrote:
>>> Splitting device_register into device_initialize and device_add allows
>>> devm-based allocations to be performed before device_add.
>>>
>>> It also simplifies error paths in devfreq_add_device: just call
>>> put_device instead of duplicating parts of devfreq_dev_release.
>>>
>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>> ---
>>>   drivers/devfreq/devfreq.c | 10 +++++-----
>>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>>> index 27af1b95fd23..b89a82382536 100644
>>> --- a/drivers/devfreq/devfreq.c
>>> +++ b/drivers/devfreq/devfreq.c
>>> @@ -689,10 +689,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>>   	mutex_init(&devfreq->lock);
>>>   	mutex_lock(&devfreq->lock);
>>>   	devfreq->dev.parent = dev;
>>>   	devfreq->dev.class = devfreq_class;
>>>   	devfreq->dev.release = devfreq_dev_release;
>>> +	device_initialize(&devfreq->dev);
>>>   	INIT_LIST_HEAD(&devfreq->node);
>>>   	devfreq->profile = profile;
>>>   	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
>>>   	devfreq->previous_freq = profile->initial_freq;
>>>   	devfreq->last_status.current_frequency = profile->initial_freq;
>>> @@ -726,15 +727,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>>   	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>>>   	atomic_set(&devfreq->suspend_count, 0);
>>>   
>>>   	dev_set_name(&devfreq->dev, "devfreq%d",
>>>   				atomic_inc_return(&devfreq_no));
>>> -	err = device_register(&devfreq->dev);
>>> +	err = device_add(&devfreq->dev);
>>>   	if (err) {
>>>   		mutex_unlock(&devfreq->lock);
>>> -		put_device(&devfreq->dev);
>>> -		goto err_out;
>>> +		goto err_dev;
>>>   	}
>>>   
>>>   	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
>>>   			array3_size(sizeof(unsigned int),
>>>   				    devfreq->profile->max_state,
>>> @@ -789,13 +789,13 @@ struct devfreq *devfreq_add_device(struct device *dev,
>>>   
>>>   err_init:
>>>   	mutex_unlock(&devfreq_list_lock);
>>>   err_devfreq:
>>>   	devfreq_remove_device(devfreq);
>>> -	devfreq = NULL;
>>> +	return ERR_PTR(err);
>>>   err_dev:
>>> -	kfree(devfreq);
>>> +	put_device(&devfreq->dev);
>>>   err_out:
>>>   	return ERR_PTR(err);
>>>   }
>>>   EXPORT_SYMBOL(devfreq_add_device);
>>>   
>>>
>>
>> As I previously commented, I don't prefer to split out of bodyf of device_register().
>> Instead, your first version is better without devm.
> 
> Very well, feel free to drop 2-5 of this series then.
> 
> Or perhaps I misunderstood and the locking cleanups would be acceptable 
> in the variant that removes devm from a few allocations? There's quite a 
> bunch of stuff flying around the merge window already so I'll refrain 
> from posting until v5.5-rc1 anyway.

Don't need to wait the v5.5-rc1. You can send the patches.
But, This series have to be merged to v5.6-rc1.

> 
> I went a little overboard with tricky cleanups and this ended up 
> delaying the functionality I wanted to push.
> 
> --
> Regards,
> Leonard
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
