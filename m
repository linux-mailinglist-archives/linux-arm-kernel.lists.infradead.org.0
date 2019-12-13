Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9D211DBF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QlnBR5uMwMdgpJ5ij+Qd8RBkR6gzPvIv20SZ5uPKfJo=; b=EmaM2Pz+0s0ExdwDb1vN/fVpT
	b+k11DIlBz594xhdywdnGRc/o0dBoWhTKzwB3s/L+qteeHvXfN7fpsjBEU/nj2fN27nA57ymWTlHz
	JZ25MqPzvPPee5jCH8CJwT8f3LRbXQCN3HIDoTDh0xck/fbdcSpD5GmbZ8PgqgyPyLHbSyGJYAuEk
	F8akXhP16VTTGjMvt8CGDv1KNXwEPtNFK7zkKECsSlC1PU/nz7jG1fziPp9co7EBPkmqEJhzBGhH1
	hk9X0vLUqxRGJ6r89tvthgjmTwQtQdQhtiUTBTFGvf5Z+kQUgvvw/GYJZiFlpwKL+xDUCjc4U+kTR
	vij2wfp4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifaKe-00071S-Q0; Fri, 13 Dec 2019 02:05:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifaKV-00070P-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 02:05:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id d5so4792903wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 18:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4KHnlSOE+u7gVwbfHgyHTQo5E29XNhzxa8pc2Uz0sSQ=;
 b=aGpdExK4CWD+ZFqM0use0gYjMn76UZwWr+c2NHqwZbnkLlkHzOQ3DPK9Ov5qdUnj5+
 5XkaPpAJlELoFlHtLTFUOabW96QgYE6lBDAHYMtTSAXtk7IKYeOoKC0HnKVJ5ten1SYD
 0R4TFyCfaQLLTzI6bqvJVAxR9kfSDCuuKbUQClOS1ew3nvhup6IVnGT6a2hJqU0I4HnE
 qErauDVPA6nmfvr/MqinVjOVJhcP7unZeZV3U6ipkgJPU2VKc2IE9axD03IsNtqOlALB
 K8AD9AEzf0rZbT/VRhP73Cl8YzHwCnZvnVJThMXcZgAlw9VrEjQ+S8RisIFpMNiGKQyd
 8ZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4KHnlSOE+u7gVwbfHgyHTQo5E29XNhzxa8pc2Uz0sSQ=;
 b=t0qpz0PYvlfo2IrFdJE4Vx2APoDtiVXnWS2tloEcw+TGkA1Fg6h1TU/bmrG9yoOka0
 N6RL5wgo99WBiCdXAnY4fgG4Bg/caSppODtOoeGs7t+bYlpJnzRZkZSPr1XtWW07nJgP
 WxAXx24ewoF9LEepYpGwN9ImSEBUCdjArbehWyQeav84nhZ1fARWu8MWhzNgnJOQYVt+
 nnPCJAJnJYkjd5b6PM6kt81ZgGgAtNuWhwza2goB6sXAUTVmrgpqIycBUVT2D4WlTvt9
 iCy1yFqVUxh/YLq4Vsa1b1AffeJViIF2ecrNYOnmh8sv/ze2WYZsx4Y9g1VajOJ4usbP
 tAtw==
X-Gm-Message-State: APjAAAWZhxLZaXiBv3fZShAGtkwT1cGOAbbCGGOgSUtmdRTQpPSskf60
 I6k/t1G+QhFYCveqzD5UGaY=
X-Google-Smtp-Source: APXvYqw5cMIDLL9NgFGAlF/E0fKpuzAyyOpNrDp+ABiAIecGcepzvQBIHE1252bGWMaBHoLtILsc5w==
X-Received: by 2002:a1c:a98e:: with SMTP id s136mr9717036wme.140.1576202716814; 
 Thu, 12 Dec 2019 18:05:16 -0800 (PST)
Received: from [172.30.89.135] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id m10sm8224474wrx.19.2019.12.12.18.05.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 18:05:15 -0800 (PST)
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
 <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <def58acb-ae42-856a-f61d-645dcfbbe3f7@gmail.com>
Date: Thu, 12 Dec 2019 18:05:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_180519_787062_E8DCD6EB 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/12/19 11:08 AM, Rui Miguel Silva wrote:
> Hi Dan,
> Thanks for the inputs.
> On Thu, Dec 12, 2019 at 02:51:34PM +0300, Dan Carpenter wrote:
>> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
>>> All drivers in imx call v4l2_async_notifier_cleanup() after
>>> unregistering the notifier except this driver.  This should be a
>>> miss and we need to add the call to fix it.
>>>
>>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com> ---
>>> drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c
>>> b/drivers/staging/media/imx/imx7-mipi-csis.c index
>>> 99166afca071..2bfa85bb84e7 100644 ---
>>> a/drivers/staging/media/imx/imx7-mipi-csis.c +++
>>> b/drivers/staging/media/imx/imx7-mipi-csis.c @@ -1105,6 +1105,7 @@
>>> static int mipi_csis_remove(struct platform_device *pdev)
>>> mipi_csis_debugfs_exit(state);
>>> v4l2_async_unregister_subdev(&state->mipi_sd);
>>> v4l2_async_notifier_unregister(&state->subdev_notifier); +
>>> v4l2_async_notifier_cleanup(&state->subdev_notifier);
>>>   
>> In this case the "state->subdev_notifier" was never initialized or
>> used so both v4l2_async_notifier_unregister() and
>> v4l2_async_notifier_cleanup() are no-ops.
> I have applied this patch on top of Steve's series [0], since by the
> timeline I was expecting to be applied before this one, that series
> adds a bound notifier, even though, it is not named the same, eheh.
>
> That trigged me to think that this cleanup was correct since a
> notifier was initialized in probe.
>
> But as you say, it is a no-ops in the end.
>
> @Steve, that said, it looks that in [0], you will need to add some
> unregister and cleanup for the notifiers that you are adding in
> several places.

Well, turns out I had failed to notice that an async notifier was 
already included in 'struct imx7_csi' as 'subdev_notifier', even though 
it was unused. So I ended up creating a duplicate 'notifier'. I'll 
cleaning that up in v3 of [0].

Steve

> A patch to fix this will follow.
>
> ------
> Cheers,
>       Rui
>
>
>
> [0]: https://patchwork.kernel.org/project/linux-media/list/?series=207517
>
>> We should just delete "subdev_notifier".
>>
>> regards, dan carpenter
>>
>> _______________________________________________ devel mailing list
>> devel@linuxdriverproject.org
>> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
