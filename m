Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34A2B78C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 13:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jf5q1k4NSZBT76RsLlOEYvtAHEfRdGhQOHdQZiFff0s=; b=G0PasvJUJ428WB
	FlEXfqP+St6DCRjOhbsJC4cERmWSqJePyzGVCeWvp1JtDRzQjsYud8fwzna1viI7vZ8Q2NUr88kUp
	pZ6WiKvfksF/bEW3Ycq9gs/EnaDz2Q05bJLMYu1lWpzwxDtNO/Qd+sZYfz8N44IUnkYSrg3pXHi6x
	phz2eaRI5J9gf9gYgMtUQjiQWt2GVM6fZqIQx1Am4ksdA4oTS90c0oFXmastU83Qts5Er1K7KKTDS
	dDfg48hWApQ+dvje+fxoNDzfLPrfYQVjtZkAxtLNfM9rhIZbl7c/Ysi1SXY6nt2APRa9lY3Mo7kcL
	wx11uN36/Usd/6kXBrUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAv5k-000669-4L; Thu, 19 Sep 2019 11:59:20 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAv5A-00065G-Nn
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 11:58:46 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919115840euoutp01a08a5349efdb83e66aef08463a94fe1f~F1RJcYWQn0845408454euoutp01-
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 11:58:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919115840euoutp01a08a5349efdb83e66aef08463a94fe1f~F1RJcYWQn0845408454euoutp01-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568894320;
 bh=21q9HfV2eKg/mh9khYWiU2Nbp9MldUbocb4+Q2NumeI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Pd6u3sgvp5iRA/RWFaghZS6BuqwoHjc7Gdqy2F0KhrVexwHeKzhbDo0xu/35rEhNy
 BIkrZPPaGW82IqcmcE5lWvoVJVHSiacIDkIlSByO36aeL4tDhJLX0ujqDNoyKLcMmn
 YYzeZnvR0/afV6vZbbNuuhs60XBDliVpSHm46RHs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190919115839eucas1p147dd71ac5165968354be3a25f4ef2b49~F1RIsfWu_2993729937eucas1p10;
 Thu, 19 Sep 2019 11:58:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3B.A5.04469.E6D638D5; Thu, 19
 Sep 2019 12:58:38 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919115838eucas1p1d20b95e4d709e96831a324fc714a66dd~F1RH7zO1K1205112051eucas1p1b;
 Thu, 19 Sep 2019 11:58:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919115838eusmtrp224062b3828bb40d4ea5b5ab3171f0bd5~F1RHtlD3H0905709057eusmtrp2N;
 Thu, 19 Sep 2019 11:58:38 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-7d-5d836d6ee403
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 50.C9.04166.E6D638D5; Thu, 19
 Sep 2019 12:58:38 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919115837eusmtip1bd45667078b62682272ab4f1bceaa98c~F1RHKA5xp1104911049eusmtip1D;
 Thu, 19 Sep 2019 11:58:37 +0000 (GMT)
Subject: Re: [PATCH v1 4/9] ASoC: wm8994: Add support for MCLKn clock gating
To: Charles Keepax <ckeepax@opensource.cirrus.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <717b3f94-1a24-a407-398f-6a476cf7ff69@samsung.com>
Date: Thu, 19 Sep 2019 13:58:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918143157.GH10204@ediswmail.ad.cirrus.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTud9+Trv2clgez1yiipxoVN7KoCFoUFNEfPZCadtPQTdvUXkRD
 MeZa9gCbrpkSvRSkucx8lMY0l5UO8xWmqSQolcWcRi9cXW+R/33ne3DOB4cjlW10GHdMlyrq
 dZokFRNAVTR+b1mh02bGRBaY1wrtrS5CKMu7Twu5A4OM0J7lREJhQwsteDwOVvjabiIE5/tO
 Wsjz1BJCaUMvK/i+1NFC1pMGVmi9N0Zs4tUOXwajrrL1smpnSTajfnDrnNpq9yN1TnkJUvuc
 c3ezBwKij4hJx9JFfcTGwwEJjhtNTEpB6EmT1U0b0XlsRgoO8GooaxujzSiAU+J7CPp/9CJ5
 GEMwdOPqX8WHoObBU/ZfZKKnkpCFuwjqPK9YeRhB0DM6QJoRxwXjnZB3O14KhOBV4HV3TwZI
 7CJgaLCDlgQGR8HFZzlIwjzeCEM5PYyEKbwIxvMaJz0z8T4Y7a+nZU8QNOUPUhJW4A1w5WsV
 KWESh0LGWDEt43nwaMROSssAe1nIf/iOls/eCpWPLYyMg+GDu/xvnXDwVxUSciATgaXmLSsP
 lxH0uYuQ7FoP9e5WWqpG4iVwvzpCpjeDyVHGSDTgQHgzEiQfEQhXK6ykTPNgOq+U3QvhZ4mV
 kHEYXBj0U5eRyjalmm1KHduUOrb/e4sQVYJCxTSDNl40ROnEEysNGq0hTRe/Mi5Z60R/Xu3l
 hHu0Eo2/jnUhzCHVdP7b4owYJa1JN5zSuhBwpCqEt6/5Q/FHNKdOi/rkQ/q0JNHgQrM5ShXK
 n5nWf1CJ4zWpYqIopoj6fyrBKcKM6OG27JC6Qq/9Za22K7Bj2NM2X1x0fFbt2TtXnlGNvdcc
 uR3s+uXiU36PUN3dfHRdoiJ2S8LnXcnhe3P3fzQuy59x51x58ac5B73bx4OiVaX28hj6eRyu
 KHoRWWfs83dFFN6yKG9m6cK/7OhqsRw2ZncO881b06/bL/0qs4YsMP1sUlGGBE3UUlJv0PwG
 VJqO7GYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xu7p5uc2xBhc+clpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 uLjiC5MDr8eGz01sHjtn3WX32LSqk81j85J6j+lz/jN69G1ZxejxeZNcAHuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsaGeSfZCuaKV3RMP87a
 wNgm0MXIySEhYCLx784Opi5GLg4hgaWMEpsmP2bsYuQASkhJzG9RgqgRlvhzrYsNouY1o0TH
 oSdsIDXCAj4SM5amg9SICBhJfDx+C2wOs8AhJok3H5azQzR8YZT4duQhG0gVm4ChRO/RPkYQ
 m1fATuJ53x2wOIuAqsTXGcdYQWxRgQiJwztmQdUISpyc+YQFxOYUsJWY+G0nM4jNLKAu8Wfe
 JShbXKLpy0pWCFteYvvbOcwTGIVmIWmfhaRlFpKWWUhaFjCyrGIUSS0tzk3PLTbUK07MLS7N
 S9dLzs/dxAiM4W3Hfm7ewXhpY/AhRgEORiUe3h/qTbFCrIllxZW5hxglOJiVRHjnmAKFeFMS
 K6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YXvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5ak
 ZqemFqQWwfQxcXBKNTAWKh46qrBMSvtuWFL0LpllZ/7OYQuKCn7yPdrsh9pHC9nf5/bYCPFc
 CMxcaB6SbtRfIzRnXV/j0a1lUX0RBWGHYrTn3elkMDuTHNIhxTap5IPo5WBbHZW60PAXRbuy
 NZqXVr/csOLWx8xFErM49670vHzy99uiJVvdK72Zr2T0L31/53Zgl4QSS3FGoqEWc1FxIgDc
 gQDX9wIAAA==
X-CMS-MailID: 20190919115838eucas1p1d20b95e4d709e96831a324fc714a66dd
X-Msg-Generator: CA
X-RootMTR: 20190918104700eucas1p1ef0775632f5c7259fb54cab8efc96c50
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104700eucas1p1ef0775632f5c7259fb54cab8efc96c50
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104700eucas1p1ef0775632f5c7259fb54cab8efc96c50@eucas1p1.samsung.com>
 <20190918104634.15216-5-s.nawrocki@samsung.com>
 <20190918143157.GH10204@ediswmail.ad.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_045844_983893_8EAB9D4D 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, lgirdwood@gmail.com,
 krzk@kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/18/19 16:31, Charles Keepax wrote:
>> @@ -2315,6 +2396,8 @@ static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
>>  
>>  			active_dereference(component);
>>  		}
>> +		if (mclk)
>> +			clk_disable_unprepare(mclk);
>
> I don't think this works in the case of changing active FLLs.
> The driver looks like it allows changing the FLL configuration
> whilst the FLL is already active in which case it you would have
> two wm8994_set_fll calls enabling the FLL but only a single one
> disabling it. Resulting in the FLL being off but the MCLK being
> left enabled.

Indeed I missed this scenario, or rather assumed it won't be used.
But since the driver allows reconfiguring active FLLs we should make
sure such use case remains properly supported.

What I came up so far as a fix is reading current FLL refclk source and 
if FLL was enabled with that source disabling refclk, before we change FLL 
configuration to new one.  So we have clk_disable_unprepare(MCLK) more 
closely following FLL enable bit changes.  I have tested it and it seems 
to work - something like below. Do you think it makes sense?

-- 
Regards,
Sylwester

---------8<----------
diff --git a/sound/soc/codecs/wm8994.c b/sound/soc/codecs/wm8994.c
index bf02e8908d5a..78a0835a095e 100644
--- a/sound/soc/codecs/wm8994.c
+++ b/sound/soc/codecs/wm8994.c
@@ -2277,6 +2277,31 @@ static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
        snd_soc_component_update_bits(component, WM8994_FLL1_CONTROL_1 + reg_offset,
                            WM8994_FLL1_ENA, 0);
 
+       /* Disable MCLK if needed before we possibly change to new clock parent */
+       if (was_enabled) {
+               reg = snd_soc_component_read32(component, WM8994_FLL1_CONTROL_5
+                                                       + reg_offset);
+               reg = ((reg & WM8994_FLL1_REFCLK_SRC_MASK)
+                       >> WM8994_FLL1_REFCLK_SRC_SHIFT) + 1;
+
+               switch (reg) {
+               case WM8994_FLL_SRC_MCLK1:
+                       mclk = control->mclk[WM8994_MCLK1].clk;
+                       break;
+               case WM8994_FLL_SRC_MCLK2:
+                       mclk = control->mclk[WM8994_MCLK2].clk;
+                       break;
+               default:
+                       mclk = NULL;
+               }
+
+               clk_disable_unprepare(mclk);
+       }
+
        if (wm8994->fll_byp && src == WM8994_FLL_SRC_BCLK &&
            freq_in == freq_out && freq_out) {
                dev_dbg(component->dev, "Bypassing FLL%d\n", id + 1);

@@ -2396,8 +2420,6 @@ static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
 
                        active_dereference(component);
                }
-               if (mclk)
-                       clk_disable_unprepare(mclk);
        }
 
 out:
---------8<----------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
