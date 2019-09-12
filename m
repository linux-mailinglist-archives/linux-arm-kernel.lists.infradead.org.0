Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C690B1149
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f4lVOTEaea93jYZXmqlK84r7p503b+Sqk6mu1qtods=; b=HlkCXs/eOjmGGW
	HeNeUUdOLCTsE2ipeNVz/FVxJltAYpXvwosIQExYACd66Z2IEJLNTBHCyeH0mwtdDnqcc55chDvDz
	6MEk2yeTlWj6QWA85yXOSR516oqxU7gOhR0ybOqLMV2AnUOcAXsMDvayaH9sWCus6fVuDoSE23T5N
	Mh5g9sIG7GVq4h7dpRrNwTuPwEiF6Fjn9jDrKg6z1ntBmaAMp4SQBKXv9zRlVNPpM+2NG/l4KfHkW
	B672uxwxPQ3OiqykbAOYSNqh0DjpFHwdkSWq3+RHk6uufYXU1oOpgIONgVVovq2PaE/V1zx2Kfqrt
	OYoYG0P31EcdtCjsIOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QHH-0005Z6-DB; Thu, 12 Sep 2019 14:40:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QGz-0005Yi-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 14:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6IX0JPEOgJDSAuzuek7DjEGPCcNjWQIrpqStXjqQSEo=; b=RTj/t3G9JWtAOHsEtidI3OPkA
 sJaPYX8dBIBJvuVfE0gO0d6a8X6lBPUM6frxo0HvYbaONZIYnbpT4oA3cepbJbCg1O/+7Ib0QzuzH
 OLGaeJJJPbvL4DAxcSqGBS3VRt2NVlMHd2RVzUKju9vUFdN7g1HGhTSdaan68YkKvZgXqmH+Xwu3i
 46MQlVi1lGg4lkRYOb4tRGvkGFModwM0eH7wg13HGSkGL+1LO5zDFIVMSaNCnUMvvqKkpEarAEsBV
 1UaB9PcxBCGKhufqf/jJQM6a06QK04dPlxNQuyEJQe+r/vM39vE5xFTlQscfaJIDnBGxZ8oEXQ3r+
 TbhryT77Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42788)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i8QGo-00057Q-9p; Thu, 12 Sep 2019 15:40:26 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i8QGm-0004yR-0X; Thu, 12 Sep 2019 15:40:24 +0100
Date: Thu, 12 Sep 2019 15:40:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Message-ID: <20190912144023.GZ13294@shell.armlinux.org.uk>
References: <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
 <VE1PR04MB66385122B55060CE7919014D89B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <9a48ca49-4c6f-f17e-3306-6af41d3b162c@televic.com>
 <5274ab9f-999a-9d11-35fa-43b57187607b@televic.com>
 <VE1PR04MB663817327D9A585F0C4A158589B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB663817327D9A585F0C4A158589B00@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_074037_914164_42E9BA68 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, dl-linux-imx <linux-imx@nxp.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 02:19:51PM +0000, Robin Gong wrote:
> > -----Original Message-----
> On 2019/9/12 20:12 Jurgen Lambrecht <J.Lambrecht@TELEVIC.com> wrote:
> > 
> > On 9/12/19 11:45 AM, Jurgen Lambrecht wrote:
> > > CAUTION: This Email originated from outside Televic. Do not click links or
> > open attachments unless you recognize the sender and know the content is
> > safe.
> > >
> > >
> > > On 9/12/19 4:06 AM, Robin Gong wrote:
> > >>> (this looked the most interesting commit)
> > >> I identified this issue which caused by
> > >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3 (41)exceed the structure
> > >> sdma_script_start_addrs(40) so that illegal memory touch, such as
> > >> slob block header, thus kernel trap into while() loop forever in slob_free().
> > Please see the below code piece in sdma_add_scripts().
> > >>           for (i = 0; i < sdma->script_number; i++)
> > >>                   if (addr_arr[i] > 0)
> > >>                           saddr_arr[i] = addr_arr[i]; That issue was
> > >> brought by commit a572460be9cf (dmaengine: imx-sdma:
> > >> Add support for version 3 firmware) because the
> > >> SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> > >> (38->41 3 scripts added) not align with script number added in
> > >> sdma_script_start_addrs(2 scripts). Please have a try with the below
> > >> patch:
> > >> diff --git a/include/linux/platform_data/dma-imx-sdma.h
> > >> b/include/linux/platform_data/dma-imx-sdma.h
> > >> index 6eaa53c..30e676b 100644
> > >> --- a/include/linux/platform_data/dma-imx-sdma.h
> > >> +++ b/include/linux/platform_data/dma-imx-sdma.h
> > >> @@ -51,7 +51,10 @@ struct sdma_script_start_addrs {
> > >>           /* End of v2 array */
> > >>           s32 zcanfd_2_mcu_addr;
> > >>           s32 zqspi_2_mcu_addr;
> > >> +       s32 mcu_2_ecspi_addr;
> > >>           /* End of v3 array */
> > >> +       s32 mcu_2_zqspi_addr;
> > >> +       /* End of v4 array */
> > >>    };
> > >>
> > > Yes, this patch solves it! I can now use SLOB slab allocator. I tried
> > > several reboots and power cycles.
> > > I tried with different dts (without earlycon, without sdma on uart and
> > > ecspi).
> > > I did not try other kernels, only 4.19.66+fscl with our patches and
> > > sdma
> > > v3.5 built-in.
> > I tried again v5.3 rc6 with SLOB, but it still booted OK, then took latest v5.3 rc8
> > from mainline, and it also boots OK - tried several times also with power cycle.
> > 
> > Then I added your patch, and it "still" boots :-). So OK:
> > 
> > Linux imx6ul-33927318 5.3.0-rc8-dirty #3 PREEMPT Thu Sep 12 13:54:25 CEST
> > 2019 armv7l GNU/Linux
> Thanks for your test on v5.3. Yes, that potential memory corrupt only happen
> on one word, most time it may hid well during kernel bootup, and it's so luck
> for us that your 'SLOB + firmware built in' case could expose it :).Thanks for
> your report, I'll post a formal patch for review later. 

It sounds like this code is very fragile, and it seems like this mistake
could easily happen again in the future.

How about ensuring that sdma->script_number * sizeof(u32) <
sizeof(struct sdma_script_start_addrs), since sdma_add_scripts() has
no protection against overrunning the structure size.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
