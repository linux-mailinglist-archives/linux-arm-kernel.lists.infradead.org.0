Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167CD11CC4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 12:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=716OUo1pgyrUP/ThlQ3lJVoD/q2a7yDYFM7GTGvnZtQ=; b=IaEHNI23rwm4Rk
	ILL02thlY18m14AdRWReGAy0REli1+a4JMjP3X1Ae2aQe1w9V6D1O3dv30JlyqpSBjbIadI+nSi3w
	kWDjeGD+Uldqw5NwR2rD2qWXsZoPcclcA7NO6crGckM/AvQORR09gtMF8cpm4sSwpb64+dFaLaNiq
	sb14DsFPl+XrKBuafKDuSrfUHfBxPCyLKeUE5sySQYpdfjmLFNw7z6Re2yhGdysp5fdLI1Rtg4sus
	JEtSuHN9v6M4rmtdwrSeVYaJ9fvpU2AKJgIX7UmFweESsC598ebgDJj2W0sgGvywF4qeyN5QH2fM1
	KPQEhA8+Q156Nhg5n4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMjk-0001u7-Nm; Thu, 12 Dec 2019 11:34:28 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMjN-0001lb-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 11:34:08 +0000
Received: from [IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65]
 ([IPv6:2001:983:e9a7:1:1c4a:480a:7ba1:9c65])
 by smtp-cloud9.xs4all.net with ESMTPA
 id fMjIiZATUGyJwfMjJixvan; Thu, 12 Dec 2019 12:34:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576150442; bh=OKCpeFi5DoqJE6NWtMpQWIWKvSSGpGz8TupfDamuRC0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=QQm1tvnXMaB8eQETcibkZHG7cfU5QXrNBF/Q0VRxwwq8FBPNFHPt+dbW1AL0ycKoB
 +zdJ4rnY7wYgb3lk4KIBiMaCnIWwvC98bay09Gsldwar8O0UbaB6Iyn5noITuYjs8h
 lnsC9fT7v8MP9QDCvDthuXoT0+SJlHHPUfWwxk+qQFBi+K6oAoM06f/wy0LSBoAeLk
 CqJqA7JNziaiXfN4hB7wL0ZvefHZeK8HiTSt3gfGXXSwDDQ3WrXbdxRRK84fPx/eSD
 yQYEs3E4lX4SdN8otglq5jvNvNxsqSY+1Cw0bghqACVNtwDz5K9sy+FLDMxxyNn2OU
 GMZfvnqogyfGQ==
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
To: Rui Miguel Silva <rmfrfs@gmail.com>, Chuhong Yuan <hslester96@gmail.com>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <5013c486-3713-6e40-49a1-2fe452ba254f@xs4all.nl>
Date: Thu, 12 Dec 2019 12:34:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211105908.dw4lnuble3ejlnil@arch-thunder.localdomain>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKETIfBTI/Tow7zgY3i+e6lZwyq1XB1sOoDGL8WE5K6A7cM4MbKL9xtk6FSy+6hw3TL/fvtm1yzilRaba0DZeD7w7P4Kc3Zs1u1f2esQgam74drqWtoK
 KiuoQjq2rRiEH8UYJ54YWrx/9ExmJC/5pkAOY2pfs7sKtEvOKUsTQpvI1QF4QPf9fkGRvvLogtojkUxleao9rKMmO1lbK0O2JHpyTAEDBGWh12vzRsstU8YV
 azp2JXso9caELQQRsQYLVUa39eRzOR060Tzucn4GWvPTPhWdewD7IkSzB21EHyPyxRlWh2SwqtL5ZzKlonq/+XyUs/UUvbbCBl6P/n26Dt51PRL6kd76U16L
 OgwaEtNoijOrKalJdxgfFNZed9tWyeRWC/UwFnIwwvo5t++uaNSjgOF77f4+HP2DwivU+1Nc4Ge7mP+DTHHReA8cX7CwKOAu64tAQnRP10VY63mGitE1MuDK
 Ug7OJrn/4AaDINufittAK/Nf+trKMTrGkeqbX5sAAnDycM1u7p8jqT87DrSbV/Z8Zf5FfqpFxHLQotMFGLL5fdJ58WP6tfKFsQcXJ9gcMDy/s6wUDQH5J93h
 bNinzyLZUbqSYJ9aXSUcxM4a3LY1RATlOkQuHt5o5cAPW9XWxN7PGzh0vEa/eV325orLMRjZaylWOYBQ4S9iEPsRJ8rxmV8/3tXIFQIDJTFCtgUHyvDXWu9A
 FclNahOMPGQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_033407_229699_624E115C 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Steve, Philipp,

I'd like one (or both) of you to look over this first.

It looks as if the subdev_notifier field of struct csi_state is never used,
except by the existing v4l2_async_notifier_unregister() call.

If I am right, then the real issue is that that field should be removed.

Regards,

	Hans


On 12/11/19 11:59 AM, Rui Miguel Silva wrote:
> Hi Chuhong,
> Thanks for the patch.
> 
> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
>> All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
>> the notifier except this driver.
>> This should be a miss and we need to add the call to fix it.
>>
>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> 
> Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
> 
> ------
> Cheers,
>      Rui
>> ---
>>  drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> index 99166afca071..2bfa85bb84e7 100644
>> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> @@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
>>  	mipi_csis_debugfs_exit(state);
>>  	v4l2_async_unregister_subdev(&state->mipi_sd);
>>  	v4l2_async_notifier_unregister(&state->subdev_notifier);
>> +	v4l2_async_notifier_cleanup(&state->subdev_notifier);
>>  
>>  	pm_runtime_disable(&pdev->dev);
>>  	mipi_csis_pm_suspend(&pdev->dev, true);
>> -- 
>> 2.24.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
