Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCCE1EB2C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 02:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9Bdx7XDw419H2DeAq0hH4UXKrMQVq1xNQ55PgY8j7I=; b=ANlz2l3PrQZHpO
	XWPZwvQChY4VWvoS0N2l5UVh/8R00di8jr6DsCOFe36W2JcE/2YcjAQiv3slZ/4x5P2Z43Fp9a0Us
	B11Uz7DxEsTlzqxNOPv15TG/LMGGfs7dQv1O9yd/p82plXzcowTse/3DRky5LUTeg2wHs66ZQS3yl
	IgfwOMzYvf+1cFXsDqg+y7AAKPuOS4DB1KIRHXn3uI6S1hR0rMO9sCzFGf7PH4YbfRv2yNpAd474E
	6EYxqIOlWFSQFFbPsocKBvTEs53j208Fba0bpd0sOvYL5tQDUf+BwpY0F5/ZDvX4Ng7pJfG30Xkqu
	B4JV/d9pb7F7OlN2p5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfuys-0001Tu-39; Tue, 02 Jun 2020 00:40:38 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfuyk-0001Rw-7r
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 00:40:32 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200602004026epoutp019e17d150222718ab37a1737489afaa6f~UkzWQAzrz0327103271epoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 00:40:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200602004026epoutp019e17d150222718ab37a1737489afaa6f~UkzWQAzrz0327103271epoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591058426;
 bh=l7Rt2o0kdGFSHg652UR00dk3txaeJfZo5NnrTQMvqxo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gJj9coh6awcsQkoqAELBkvQeXN2qULTHKxQIHoaQrBVnbOTyk6W4EbyYac+yraDQl
 ZhTb5qeOTQTcD2cjR4ytbypdvA279sC5w+ntPLTKXbba6LF6zA/FkOOojEYGGX/2Es
 WlE6Xbxh0Ox41zGg2WARmxiHpatzuWOhbEoG8PfE=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200602004024epcas1p3b679346e48f5aa7e23e8400b1dd819c5~UkzUURw6t0448404484epcas1p31;
 Tue,  2 Jun 2020 00:40:24 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.158]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49bY9L3MNNzMqYl0; Tue,  2 Jun
 2020 00:40:22 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.29.18978.5FF95DE5; Tue,  2 Jun 2020 09:40:22 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200602004019epcas1p47250832e03ece66e322e82a72c007a50~UkzPoLCtc1010210102epcas1p4Y;
 Tue,  2 Jun 2020 00:40:19 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200602004019epsmtrp2e14e1aa156221eb93e89340e05c762fa~UkzPnLpqO3205032050epsmtrp2m;
 Tue,  2 Jun 2020 00:40:19 +0000 (GMT)
X-AuditID: b6c32a35-b8298a8000004a22-4d-5ed59ff551f9
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 B8.D6.08382.3FF95DE5; Tue,  2 Jun 2020 09:40:19 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200602004019epsmtip1bb2424a547cb17f1ede6c058213b29ab~UkzPWeK8N1039010390epsmtip1W;
 Tue,  2 Jun 2020 00:40:19 +0000 (GMT)
Subject: Re: [RFC PATCH v5 3/6] PM / devfreq: exynos-bus: Add registration
 of interconnect child device
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi
 <chanwoo@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <7a3840c7-fbfb-112e-46b6-97871da710e8@samsung.com>
Date: Tue, 2 Jun 2020 09:50:52 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <8a977716-9e0e-5daf-fb22-32d943da42e5@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNJsWRmVeSWpSXmKPExsWy7bCmvu63+VfjDCa/ZbK4P6+V0WLjjPWs
 FhNvXGGxmH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbbHp8jdXi8q45bBYzzu9jslh75C67
 xe3GFWwWrXuPsFscftPOajFj8ks2BwGPTas62TzuXNvD5nG/+ziTx+Yl9R59W1YxenzeJBfA
 FpVtk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQN0t5JC
 WWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwLJArzgxt7g0L10vOT/XytDAwMgUqDAh
 O+PNm6tsBZ9kK9ofT2BrYFwo1sXIySEhYCLxqaefqYuRi0NIYAejxNxT91kgnE+MEscb9jFC
 ON8YJR69W8kK0zL303R2iMReRontry9BOe8ZJeb/XsICUiUskClx/PQSdhBbRCBE4vWk52BF
 zAJ/WSR2bp/ABJJgE9CS2P/iBhuIzS+gKHH1x2NGEJtXwE7i7uo7YHEWARWJC8dXg9WLCoRJ
 nNzWAlUjKHFy5hOwZZwC9hLHljSCLWMWEJe49WQ+E4QtL7H97RxmkMUSAi84JLbe/gz1g4vE
 zcvtzBC2sMSr41vYIWwpic/v9rJB2NUSK08eYYNo7mCU2LL/AlSzscT+pZOBNnAAbdCUWL9L
 HyKsKLHz91xGiMV8Eu++9rCClEgI8Ep0tAlBlChLXH5wlwnClpRY3N7JNoFRaRaSd2YheWEW
 khdmISxbwMiyilEstaA4Nz212LDAEDm+NzGCU7WW6Q7GiW8/6B1iZOJgPMQowcGsJMI7Wf1S
 nBBvSmJlVWpRfnxRaU5q8SFGU2AAT2SWEk3OB2aLvJJ4Q1MjY2NjCxNDM1NDQyVxXnGZC3FC
 AumJJanZqakFqUUwfUwcnFINTLbBh1+I7El+ds0187/OSh/nw4fTnV3isjb9M56ov/V06Tyt
 /Srcjxe7PXp+SeSP3d7JJqW3Ds+52+V2hS9w0+WGD7H+HbudH17+s3dtRnXvtjcrY6dcWqUj
 IMHYW9/afePmJRYePVMnEetNe2fabgqTZp9zU3aTd5HrjNlVDy6xPJwufWTrV2sn3Xml7IkL
 Vx3Nmluz2bXP6R+X/Oy9wtXWW3e1MR1boXixoKNZR/anw/tTdalfGiPmPm96yi7j+m36Q7Hk
 hTrPO5YIH44t3mQ0O2TK1T2X9zQUORT2udlZr8ytdandosoar3L5csys8/d/HNRS2Ww9zbtf
 09Bni3b91kVnCk9fUJ2923CWjYQSS3FGoqEWc1FxIgABFdu7XgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Ra0hTYRyHec85OzuOZkdX+WpluqJQ0DKi3iJbkcgyk8CILNCWHW85nTte
 us5kiTVTTEvXqC1rdpl0O167TMHNIrpYpmnlDSfpdGZoSh+Sao7Abw//3/N8+lO4Zy3hQyWn
 ZTLKNFmqmBQQ9Raxb9CUoTN23Ztz3qhfnw/QY+1DHrrU3UEgg/UdD3VMT5CowsyRqLS/hEBt
 bY/4iLN94qGPT6+RSNvWhKH71l4++pp3l0T5ZisfWRwFPKQts5PbaSlnukBKez49J6X9hS8x
 aY0xV1pcawLSKc53L3lQsPUok5qczSjXbjssSHI4OknF5PLjBbYS8iyoXKIBbhSkN8DrkxV8
 DRBQnvQzAL8XDvJcgzcs/9CKawD1j0XQYmFdzjiART063OmI6GRoPz/EczqL6H3wkT3I6eD0
 HwKaLxeQrsCMwVl1NekMSDoQNo90z/FC2h92/rIBJwvpbbC3umfuTtCr4PuX1ZiTF9P74ROj
 DXM5HvDV1SHCyW60BL4w5vGdjNNr4G99O+5iL/hlyIC5eAVsGL+GlwCRbl6um5fo5iW6eckN
 QJiAN6Ng5YlyNkQRksbkBLMyOZuVlhgcny7nwNxjAwMaQYPpR3ALwCjQAiCFixcJy9a0x3oK
 j8pOnGSU6XHKrFSGbQFLKULsJezOqIz1pBNlmcwxhlEwyv8rRrn5nMWyYnzdf87mZE8HDElU
 vR91htUJGRHm28YZR1DnU35cs6S1URNadcTEQXXTer2ttMrv8CE8PWhHTeEMYuI4/YX6zbwJ
 hzHibSjaI6uMMH8bjF4e9brIT7FK0hUQrg6LSvpyCn+x4OZbibAsJaFq1v/G7ZV2tnx4JFxt
 1PRppx01Z7b+iB8sAltyJ1lVnSXX2/p8tH7ZncHuBdordTE7x6yjXSknjCP6i5FhIl2D6QEz
 c7m1Xe1WSrhj0fYy+UpuuL0GnzyiqmWLBQfGbg2oKnw59Nl6XTWzb1Oke3x0TN/A6RzxQK1H
 ZlXHRq+87F2i9+nS77sP5htSYqPu6cUEmyQLCcSVrOwvgP7u6UcDAAA=
X-CMS-MailID: 20200602004019epcas1p47250832e03ece66e322e82a72c007a50
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6
References: <CGME20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6@eucas1p1.samsung.com>
 <20200529163200.18031-1-s.nawrocki@samsung.com>
 <20200529163200.18031-4-s.nawrocki@samsung.com>
 <CAGTfZH1KC=jpQ5GXNtEf1cn7+WqXJdqbbVKmpxr8Snh4GEy8bA@mail.gmail.com>
 <8a977716-9e0e-5daf-fb22-32d943da42e5@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_174030_643214_821E5A5C 
X-CRM114-Status: GOOD (  28.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, inki.dae@samsung.com,
 Rob Herring <robh+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sylwester,

On 6/1/20 7:04 PM, Sylwester Nawrocki wrote:
> Cc: Rob, devicetree ML
> 
> On 31.05.2020 01:57, Chanwoo Choi wrote:
>> On Sat, May 30, 2020 at 1:33 AM Sylwester Nawrocki
>> <s.nawrocki@samsung.com> wrote:
>>>
>>> This patch adds registration of a child platform device for the exynos
>>> interconnect driver. It is assumed that the interconnect provider will
>>> only be needed when #interconnect-cells property is present in the bus
>>> DT node, hence the child device will be created only when such a property
>>> is present.
>>>
>>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
>>>
>>> Changes for v5:
>>>  - new patch.
>>> ---
>>>  drivers/devfreq/exynos-bus.c | 17 +++++++++++++++++
>>>  1 file changed, 17 insertions(+)
>>>
>>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>>> index 8fa8eb5..856e37d 100644
>>> --- a/drivers/devfreq/exynos-bus.c
>>> +++ b/drivers/devfreq/exynos-bus.c
>>> @@ -24,6 +24,7 @@
>>>
>>>  struct exynos_bus {
>>>         struct device *dev;
>>> +       struct platform_device *icc_pdev;
>>>
>>>         struct devfreq *devfreq;
>>>         struct devfreq_event_dev **edev;
>>> @@ -156,6 +157,8 @@ static void exynos_bus_exit(struct device *dev)
>>>         if (ret < 0)
>>>                 dev_warn(dev, "failed to disable the devfreq-event devices\n");
>>>
>>> +       platform_device_unregister(bus->icc_pdev);
>>> +
>>>         dev_pm_opp_of_remove_table(dev);
>>>         clk_disable_unprepare(bus->clk);
>>>         if (bus->opp_table) {
>>> @@ -168,6 +171,8 @@ static void exynos_bus_passive_exit(struct device *dev)
>>>  {
>>>         struct exynos_bus *bus = dev_get_drvdata(dev);
>>>
>>> +       platform_device_unregister(bus->icc_pdev);
>>> +
>>>         dev_pm_opp_of_remove_table(dev);
>>>         clk_disable_unprepare(bus->clk);
>>>  }
>>> @@ -431,6 +436,18 @@ static int exynos_bus_probe(struct platform_device *pdev)
>>>         if (ret < 0)
>>>                 goto err;
>>>
>>> +       /* Create child platform device for the interconnect provider */
>>> +       if (of_get_property(dev->of_node, "#interconnect-cells", NULL)) {
>>> +                   bus->icc_pdev = platform_device_register_data(
>>> +                                               dev, "exynos-generic-icc",
>>> +                                               PLATFORM_DEVID_AUTO, NULL, 0);
>>> +
>>> +                   if (IS_ERR(bus->icc_pdev)) {
>>> +                           ret = PTR_ERR(bus->icc_pdev);
>>> +                           goto err;
>>> +                   }
>>> +       }
>>> +
>>>         max_state = bus->devfreq->profile->max_state;
>>>         min_freq = (bus->devfreq->profile->freq_table[0] / 1000);
>>>         max_freq = (bus->devfreq->profile->freq_table[max_state - 1] / 1000);
>>> --
>>> 2.7.4
>>>
>>
>> It looks like very similar like the registering the interconnect
>> device of imx-bus.c
>> and I already reviewed and agreed this approach.
>>
>> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
>>
>> nitpick: IMHO, I think that 'exynos-icc' is proper and simple without
>> 'generic' word.
>> If we need to add new icc compatible int the future, we will add
>> 'exynosXXXX-icc' new compatible.
>> But, I'm not forcing it. just opinion. Anyway, I agree this approach.
> 
> Thanks for review. I will change the name to exynos-icc in next version, 
> as I commented at other patch, it is not part of any DT binding, 
> it is just for device/driver matching between devfreq and interconnect.

Thanks. I have not any objection to use either 'exynos-generic-icc' 
or 'exynos-icc'. It is just my opinion. And on next version,
please add linux-pm mailing list to Cc.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
