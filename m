Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA5212A97C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 02:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjnpUlGrN2rdGl/AP3dklM62UhHTviG3GcuF/PtdrJM=; b=CADTG/GDwCm/2y
	0C8o6/K8v66I1bYzh2+ZovApyHX0N+1AvzJpyGffBp/3GTdU3wY3PFYBy/BNHbZH6L4CSTT+3pzLG
	082sh1zWee8Qq01zJlOAit9Me9tUOJk5L6arZLoHdvhiAFH6F+GDZOk12EfdeGBvDgRVOTSpjAW7y
	JIWwPQbrG//fj+rk17ecHWYODIn6udVSkXVFGg2pR9pfPz8fXxar0Ch/Iz7pEYsxl/x64QAKVWVW5
	lrxtf1846tSKKEPuPum3fLSkzMDseagiFSFp8U0oCNQZMjhOvu9P6Uma9beiQNPdjCHzZkjL3PqpW
	otfDPTA11PIz9UQonbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikHr4-0004sy-He; Thu, 26 Dec 2019 01:22:22 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikHqt-0004sE-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 01:22:13 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191226012204epoutp04b0cdab084d1266125ba06d91d5e4a6c4~jxzThTmKn1685116851epoutp04U
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 01:22:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191226012204epoutp04b0cdab084d1266125ba06d91d5e4a6c4~jxzThTmKn1685116851epoutp04U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577323324;
 bh=A4Y74hU4stuVNxeQUffqt8qHn8nJgO4jOxqfu0/HH5Y=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=XAPVSLRyj8kRjJrGksf+vqkBxtr2fFfK5uKytEJwM7CCnxGFXGQyPMOGxgYIMGNuo
 hT8BSfTbAQ6x5gXMMqHwfrwmUUWgOosSDjcqyhQlrGxE/7rRlI/sK1aq66cxgwYgqH
 ugNvkIIelEajk7huVX91dQQpob0BOMo6bb0XFdjs=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191226012203epcas1p48d589dd2b963a40ab84a01f0dd14b944~jxzTFXyQo2035320353epcas1p49;
 Thu, 26 Dec 2019 01:22:03 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.155]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47jsck4bzCzMqYkn; Thu, 26 Dec
 2019 01:21:58 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.FE.48019.33B040E5; Thu, 26 Dec 2019 10:21:55 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191226012154epcas1p2edbed9b0b041607bc0d1d88eba93b973~jxzKLrWO-1488114881epcas1p2j;
 Thu, 26 Dec 2019 01:21:54 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191226012154epsmtrp1c06d5ade9063e3531597b1a23c5f98dd~jxzKJKHA-2279122791epsmtrp1-;
 Thu, 26 Dec 2019 01:21:54 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-a3-5e040b332ad8
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.A9.06569.23B040E5; Thu, 26 Dec 2019 10:21:54 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191226012154epsmtip28ffab25f041e7a9971337debd09c038a~jxzJ_8Ogh0334903349epsmtip2X;
 Thu, 26 Dec 2019 01:21:54 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: exynos-bus: Add error log when get event
 fails
To: Frank Lee <tiny.windzz@gmail.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <583cb300-ec4a-0c94-d597-4efcdf9e31ee@samsung.com>
Date: Thu, 26 Dec 2019 10:28:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <CAEExFWs6Wtg9dJbx9nwq4F53Lc5e__rzRn0QedJt2ffJTKU3uA@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUxNYRzHPfece+4pLo+r9JONOpZNUzrdLsdLDZldL7NM84dNObpH9+q+
 uedmYYZILwspW1y1zMukFnWFimrSpjJCmHnZkJG3myG7W8I5nUz/fZ7v8/3u93yf56EJXQ0V
 SlvsbsFl560MFUhevTUrKko/lkyJye4P5I70fiK47u5aDXc3+7OG8/Y+UXM9TWUU9/1QO+KO
 d7eouOf7KimufLCIWhxgbPS81Bi9VfmU8fLZPcbD9VXI+N07LUm9IWORWeBNgitMsKc5TBZ7
 ejyzal1qYqphbgwbxc7n5jFhdt4mxDPLVidFLbdYpfMwYdt5a6YkJfGiyMxJWORyZLqFMLND
 dMczgtNkdc53Rou8Tcy0p0enOWwL2JiYWINk3JRh9hbmU86Pk7M6+vvIvciPC1AADTgOShs7
 SJl1uAFBR/2aAhQo8TcElx/6NMriJ4Ivj1rU/xIFdTkqZaMZQXHlj5FFvxSprkWyaxJeB61D
 z4c5CEfAyfPnh00E9qng7ot+jbxB4Uho7XtKyTwBh8Njf+9wQIsT4Nq7HkmnaVIKn7gRJMvB
 eD10Xj0wYpkInSfekrIlAK+Ffe1OWSZwCDx7W6FSeDpc+1JGyGMB/6GguW6IVBosg9ybNUjh
 SfDxdr1G4VD4cOTgCO+CC53tlBLOQ1Dfen+kvh5az5Wo5MEEngWXmuYocjg0DpYjZfB48A0U
 qmULYC3kHdQplhnQ8+qlSuEpcCY3nypCjGdUG8+oCp5RFTz/h51CZBWaLDhFW7ogss640Y/t
 RcNfNZJrQDfurW5DmEbMOG3tFiJFp+a3iztsbQhoggnSVrtQik5r4nfsFFyOVFemVRDbkEG6
 66NEaHCaQ/r4dncqa4jV6/VcHDvXwLJMiJb2P9iow+m8W8gQBKfg+pdT0QGhexF3zNeedWno
 XPmUmpxoTQdDn+qanROZ3HLy96o60V8ysLshIrzkdR5fuqQp4fWdK7bEInO2ruJO0piu8IGc
 +xf7BpO3nY6vfWNM3BIroEL/zCdjApN/5U7wFW8iCy1E8PW8IMerkJpHX7ct3J/1ftfS2ytm
 bt28kjdNtVR/tU4r7mpmSNHMs5GES+T/AqkGpADAAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsWy7bCSvK4RN0ucwcZmEYv+x6+ZLc6f38Bu
 cbbpDbvFpsfXWC0u75rDZvG59wijxYzz+5gsbjeuYLOY+3sCmwOnx85Zd9k9Nq3qZPPYvKTe
 o2/LKkaPz5vkAlijuGxSUnMyy1KL9O0SuDI29XSyFbwSqzjx/gVLA+MPgS5GTg4JAROJro2t
 TF2MXBxCArsZJT5v38cIkZCUmHbxKHMXIweQLSxx+HAxRM1bRolbRyezg9QICwRL7P97G6xe
 REBVYvby5WCDmAXeMUmsa1zLCpIQEuhikujabwliswloSex/cYMNxOYXUJS4+uMxWDOvgJ3E
 9meX2UCWsQANmrlHBCQsKhAmsXPJYyaIEkGJkzOfsICUcAoESjQeKQAJMwuoS/yZd4kZwhaX
 uPVkPhOELS+x/e0c5gmMwrOQdM9C0jILScssJC0LGFlWMUqmFhTnpucWGxYY5aWW6xUn5haX
 5qXrJefnbmIER5eW1g7GEyfiDzEKcDAq8fBuSGOOE2JNLCuuzD3EKMHBrCTCu7qIMU6INyWx
 siq1KD++qDQntfgQozQHi5I4r3z+sUghgfTEktTs1NSC1CKYLBMHp1QDo4C/z7QDSwSX7LIy
 UJdN0pG/dXkPY/D0zSynuRR/nGLQiJf0m/Tup2u37KbQNpljW7z6X0emrN+SOemu2y5pm/2q
 SiePXLnf8bA7YovBohBjTw/rkOPmzq+NZeXtnxufqXC9UDj1kER/XbrTq7IvN614hRvWxj7m
 ythuKGP2mJ/neerMmLfCSizFGYmGWsxFxYkAA+r9J6oCAAA=
X-CMS-MailID: 20191226012154epcas1p2edbed9b0b041607bc0d1d88eba93b973
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191223191928epcas1p128d39bb875b8654d61ae21364e466ec7
References: <CGME20191223191928epcas1p128d39bb875b8654d61ae21364e466ec7@epcas1p1.samsung.com>
 <20191223191923.10450-1-tiny.windzz@gmail.com>
 <7230b556-7a96-14d1-ed22-43b5a6cd5a71@samsung.com>
 <CAEExFWs6Wtg9dJbx9nwq4F53Lc5e__rzRn0QedJt2ffJTKU3uA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_172212_022046_56E13FBF 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/24/19 11:51 PM, Frank Lee wrote:
> On Tue, Dec 24, 2019 at 12:00 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
>>
>> Hi,
>>
>> I think that you better to use 'devfreq-event' instead of just 'event'
>> as following:
>>
>> PM / devfreq: exynos-bus: Add error log when fail to get devfreq-event
>>
>> On 12/24/19 4:19 AM, Yangtao Li wrote:
>>> Adding an error log makes it easier to trace the function's error path.
>>> Because the error code may be rewritten on return, print error code here.
>>>
>>> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
>>> ---
>>>  drivers/devfreq/exynos-bus.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>>> index 948e9340f91c..634d63fd00ea 100644
>>> --- a/drivers/devfreq/exynos-bus.c
>>> +++ b/drivers/devfreq/exynos-bus.c
>>> @@ -126,6 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
>>>
>>>       ret = exynos_bus_get_event(bus, &edata);
>>>       if (ret < 0) {
>>> +             dev_err(dev, "failed to get event from devfreq-event devices %d\n",
>>> +                     ret);
> 
> Emmm, it looks a bit strange to me...

If don't show the error value, it is possible to make it
until 81 char. I edit it as following and applied it with
modified patch title.

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 1259a0da7db7..8fa8eb541373 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -126,6 +126,7 @@ static int exynos_bus_get_dev_status(struct device *dev,

        ret = exynos_bus_get_event(bus, &edata);
        if (ret < 0) {
+               dev_err(dev, "failed to get event from devfreq-event devices\n");
                stat->total_time = stat->busy_time = 0;
                goto err;
        }

> V2 has been sent.
> 
> Yours,
> Yangtao
> 
> 
>>
>> Better to make it under 80 char as following:
>>
>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>> index f5d4c369c7fb..10f4fa1a0363 100644
>> --- a/drivers/devfreq/exynos-bus.c
>> +++ b/drivers/devfreq/exynos-bus.c
>> @@ -126,7 +126,8 @@ static int exynos_bus_get_dev_status(struct device *dev,
>>
>>         ret = exynos_bus_get_event(bus, &edata);
>>         if (ret < 0) {
>> -               dev_err(dev, "failed to get event from devfreq-event devices %d\n",
>> +               dev_err(dev,
>> +                       "failed to get event from devfreq-event devices %d\n",
>>                         ret);
>>                 stat->total_time = stat->busy_time = 0;
>>                 goto err;
>>
>>
>>>               stat->total_time = stat->busy_time = 0;
>>>               goto err;
>>>       }
>>>
>>
>>
>> --
>> Best Regards,
>> Chanwoo Choi
>> Samsung Electronics
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
