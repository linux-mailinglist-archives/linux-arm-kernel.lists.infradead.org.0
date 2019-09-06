Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF97AB745
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 13:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rV3DQPielTC0mhFl6I/gcAOtk8GRGYNk5aInzb6zxg=; b=nt1IKdQbFsrSvd
	75Qhy+/RgvLgaBbL+3xusHAxA4ijubFB10zgm0sECl+lX2S+jmpIJpVtabVA/PayLn9ATyxpKnjkR
	/iGrVaZs9wcEnQyRAn8j4MZ5nzEsvaZgdTvSnlKfWPb2eQWPXs7yiiMzPOZIoB8Dsz3DsLFP3ZUrd
	tMJAeqGYNrqa+x5mxmTAoodY7Hh9tQfPzWEWVKoPhOLgzKkalpS59Dd5DSP9oLIXbhqC5A3JcKcgY
	ttjzRl01YCoEelbAuQqQ0uPiPENqhzF1SPbCkRF20ru3zsvAEHWPLkc3K43IvJDoc0dpI3KunPZSj
	wExD1SD2Z7h4Q4OSoYxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CaI-0005jp-2y; Fri, 06 Sep 2019 11:39:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CaB-0005jH-Qi
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 11:39:17 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906113913euoutp02df09c64fb4594175776b3266dbd88dd2~B1ndr3BbN2435824358euoutp029
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 11:39:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190906113913euoutp02df09c64fb4594175776b3266dbd88dd2~B1ndr3BbN2435824358euoutp029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567769953;
 bh=epZ2/nn61cU86rBoZ+pM3kR6r5TNU/gcgmeJYFybZcI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gJBn6caSNHZViW8Q+RQ60DEZY8LUZF+rwFH8aLr8GOm7Kvp3hAzQcJGXxFxYBfWqK
 hmjVV/WZsWxmxT/w7GPDW4TRLWAnkxo1w590a0jXRfL76IjWFAdRLTKJJtStoLPlrT
 bPUxUCU1hIuztzb49hCcystDJBH2wYPyHgtfl41U=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190906113912eucas1p15a6d144b485f3d7f7e6ef803aebba111~B1nc2DRO72600726007eucas1p1P;
 Fri,  6 Sep 2019 11:39:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F5.BD.04309.065427D5; Fri,  6
 Sep 2019 12:39:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190906113911eucas1p25b42a5f4d3846ca4eb676dc5f6067c68~B1ncBI_rh2032920329eucas1p2v;
 Fri,  6 Sep 2019 11:39:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190906113911eusmtrp2df4582dc73d9c4f1f222973a160704dd~B1nby5MDL1602816028eusmtrp2P;
 Fri,  6 Sep 2019 11:39:11 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-d0-5d724560316e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D5.AC.04117.F55427D5; Fri,  6
 Sep 2019 12:39:11 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906113910eusmtip177b7d502ecf9cac3a446211bb2bf282c~B1nbCck9m1696716967eusmtip1S;
 Fri,  6 Sep 2019 11:39:10 +0000 (GMT)
Subject: Re: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <52963d0d-cf48-7085-5581-a94c6e15e0bd@partner.samsung.com>
Date: Fri, 6 Sep 2019 13:39:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3Z2Lo5mX9Pam4nC8I+K1C6CH2VWdGFUdiGCqLRWHVRyajvO
 LgapkNZqZVFmw64khWjznq6M2pYXrKYILdIutkKwVplWStrydIz87/c97/PyPg98HKVy00Fc
 cmoGb0jVpWgYhbyuadgVvmuVIX5e9+tQUllkpYl7sJcmV53PaHLG85EiLlcFS57mfmJJlec5
 TTptxQwZMDsRKXI9kJFy5yuWlLg7ZKQr5zZDjjU6WeL4lE+THy3v0DKsLbtShrQNllestqr0
 BKOtvnlUe7qmFGkHqkI2MtsUMXv5lORM3hAZu0uRNGz1oPSKgIO55RUoG3VPMSE/DnAUPLKa
 WBNScCp8G0F15RAjPQYR5F+3M6JLhQcQ+C4E/tu40/uBkky3ENz4ViuXTF4EQ/eiRQ7AW+DJ
 yV+syIF4NrhHf9LiAoXtciiyDctMiOMYHAH1pftFjxKvhjedjUiU5TgMvC2JojwNb4Vvbx20
 ZJkKrZfe/z3lhzeBvcT1NxuF1fDy/VWZxKFw11tMSTlzOOgxb5Z4JXS1FzMSB0Bfcw0rcTD4
 GqRdwAJkm68jiY+A58zlcc9icDR30GI0aqyK1RYpycvBZznHiDJgf3jhnSol8IdzdRcpSVbC
 8TyV5J4FNafaxw9Nh1tlhWwB0lgm9LJM6GKZ0MXy/+41JC9Fat4o6BN5YUEqfyBC0OkFY2pi
 xJ40fRUa+25tv5sH65FtZLcdYQ5pJivJCkO8itZlCof0dgQcpQlUWivT41XKvbpDh3lD2k6D
 MYUX7GgmJ9eolVmT3m5X4URdBr+P59N5w7+pjPMLykYFF9Iim6CBqo0564939IcYff2ThlpW
 tWdzPVl8YZ/iB/+wIDjO9rNVF5fpkJnPF35P5ksG1M4lyYuSfCmtHev6GkfC63vWL36w1F2e
 h0LCtoQnxAZ9iZusH124L3ptwPnor59dm9oeU4sScqNmhMo01H3VbnbDmqye3Mw5I/FzNXIh
 STd/DmUQdH8Aj7eSLWoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xu7rxrkWxBs3/VC02zljPanH9y3NW
 i/lHzrFa9D9+zWxx/vwGdouzTW/YLTY9vsZqcXnXHDaLz71HGC1mnN/HZLH2yF12i6XXLzJZ
 3G5cwWbRuvcIu8XhN+2sFt9OPGJ0EPBYM28No8fOWXfZPTat6mTz2Lyk3qNvyypGj8+b5ALY
 ovRsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyfq5/
 zFiwQbiiae0GxgbGO/xdjJwcEgImEuueP2XuYuTiEBJYyiixYkMzO0RCTGLSvu1QtrDEn2td
 bBBFrxklfp96zwaSEBYIlTjT/RusSERAU+L63++sIEXMAodYJD5tPc4IkhAS6GOS6H2k38XI
 wcEmoCexY1UhSJhXwE3i/uW9jCBhFgEVibcn0kHCogIREod3zGKEKBGUODnzCQuIzSkQKHFo
 6XmwtcwCZhLzNj9khrDFJW49mc8EYctLbH87h3kCo9AsJO2zkLTMQtIyC0nLAkaWVYwiqaXF
 uem5xUZ6xYm5xaV56XrJ+bmbGIFRve3Yzy07GLveBR9iFOBgVOLhfeBQFCvEmlhWXJl7iFGC
 g1lJhHf9xoJYId6UxMqq1KL8+KLSnNTiQ4ymQL9NZJYSTc4HJpy8knhDU0NzC0tDc2NzYzML
 JXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MZzmnpBhNFl7KHljM+f/laq8XYrGFoX+NxdJN
 vRt4TjGL+W597/Xm3rpQkd63504b3BS0ZHW+03a9+bG2gqXihy3r13z/c3VzX9fPEk6h5P9n
 /7y5ad4469rfdzdtz2YstFMQ3sQ9e96zHzm5KqaL9stWRJfLvjG8MXGr69IraQtTAuSsmM0L
 lViKMxINtZiLihMBVcSENwADAAA=
X-CMS-MailID: 20190906113911eucas1p25b42a5f4d3846ca4eb676dc5f6067c68
X-Msg-Generator: CA
X-RootMTR: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101407eucas1p15eb0df53374b27497b4793eab24becf6
References: <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-4-l.luba@partner.samsung.com>
 <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_043916_073354_FB29533F 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 9/6/19 12:56 PM, Krzysztof Kozlowski wrote:
> On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>>
>> Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
>> Minor fixes in the old documentation.
>>
>> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
>> ---
>>   .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
>>   1 file changed, 27 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>> index 3b2485b84b3f..de0905239767 100644
>> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
>> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
>> @@ -40,10 +40,34 @@ Child nodes:
>>     a given speed-bin. Please see Documentation/devicetree/
>>     bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
>>
>> +Samsung K3QF2F20DB LPDDR3 memory
>> +------------------------------------------------------------
>> +
>> +This binding uses the LPDDR3 binding (described above)
>> +
>> +Required properties:
>> +- compatible:  Should be:
>> +               "samsung,K3QF2F20DB"
>> +               followed by "jedec,lpddr3"
>> +- density  : <u32> representing density in Mb (Mega bits)
>> +- io-width : <u32> representing bus width. Possible value 32
>> +- #address-cells: Must be set to 1
>> +- #size-cells: Must be set to 0
> 
> If you decided to repeat all properties again, then it deserves its
> own bindings file. However I though about simpler solution - just
> document compatible. Exactly the same as AT24 or AT25 EEPROM bindings.
> There is not much benefit from copying all these properties.
OK, I see. I will add only 'compatible' and skip the rest then.
So the lpddr3.txt file will get this addition:

+Samsung K3QF2F20DB LPDDR3 memory
+------------------------------------------------------------
+
+This binding uses the LPDDR3 binding (described above)
+
+Required properties:
+- compatible:  Should be:
+               "samsung,K3QF2F20DB"
+               followed by "jedec,lpddr3"
+
+Optional properties:
+
+The optional properties are the same as in the LPDDR3 generic bindings and
+values should be taken from the data-sheet. Detailed bindings are described
+above.
+
+Child nodes:
+
+Detailed bindings are described in LPDDR3 generic bindings described above.
+

Is it OK?

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
