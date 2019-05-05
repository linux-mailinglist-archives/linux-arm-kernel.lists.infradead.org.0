Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A747140B5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 17:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSCk+GlhxlMQ38LqQHkZOt5c+5Dvef+awq/boFhUYs8=; b=Z4n2XJwV5s9+C4
	tGw2ONhFeqVJJ4LSIgo3lt+PdoAFjvYlf7GaaEC66AOx89jWd8EAasPCPMnyPKDK1CTJ1dKwdkQI4
	ciJcI0Cm8DoNcL74BwNS1wWtYlOUcfw/8OLDfPlZg/VNozZWJ5MIcSCwWxI+wXhPtavEsZCKkt1TE
	iFFV4GxehBf5drmc6pgz7w6yJcL+R4abVEBpyZuySIaMCli58IJMozF1b1wLFGHDcwJnk63Z1vH+t
	PWAoF/3k8olc/prpFwUPjxsVhyQy/oDaFZEr6tr/YA4ZgbBSrz4efrV9bmc8X9OIssSEAUxHn+j0m
	kkbQeKTV0y0PrvFjx/BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNJFh-0000MV-2B; Sun, 05 May 2019 15:40:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNJFX-0000LR-6U; Sun, 05 May 2019 15:40:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rT3xoMkezWbZrfZ/DsjT+vdesqGpf6yK3V9dQLDcRU4=; b=2VLRGUWQ2FCcbKWWqIpsP6xggD
 tsCxva7g5DxwtN9Pbh4lbWUE4OqUzpkHePp8whFW6sUCGOga90chTiktQXP5vQSN1TVfkRvYmKwyA
 /s90nUJkzCOjfHFghuHMYNleFXeb53wbT75DNmiOeXNJv4voqeqCIidGDem35d6LhZFI7MZiQDAwB
 MhujOGq6BZ7Jw4KttruEP33AqHrAeLReIbR2oYgtEqgz5DjN3evjutC/XIqxnuyQqRsuzMwoF8IXJ
 OuEtKMC4uCZVvkSmyIn765oKGeBFjEYggQXnipshazsAm+TYu7fgLvPJl0Z06tXo7c85iPrvt5BDN
 ZEmp1UMA==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNJFS-0002vP-6i; Sun, 05 May 2019 15:40:19 +0000
Subject: Re: [next PATCH] usb: mtu3: fix up undefined reference to
 usb_debug_root
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <2b79c411c5d07a6846967c41803b328e300df8c6.1557035810.git.chunfeng.yun@mediatek.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <493f7e77-2c84-9812-2c27-760496610522@infradead.org>
Date: Sun, 5 May 2019 08:40:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2b79c411c5d07a6846967c41803b328e300df8c6.1557035810.git.chunfeng.yun@mediatek.com>
Content-Language: en-US
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/4/19 11:02 PM, Chunfeng Yun wrote:
> When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> there is an issue:
> 
> ld:
> drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> 
> usb_debug_root is only built when CONFIG_USB is enabled, so here drop it
> and use NULL instead.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
> index c96e5dab0a48..3ed666f94dd9 100644
> --- a/drivers/usb/mtu3/mtu3_debugfs.c
> +++ b/drivers/usb/mtu3/mtu3_debugfs.c
> @@ -528,8 +528,7 @@ void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
>  
>  void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
>  {
> -	ssusb->dbgfs_root =
> -		debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
> +	ssusb->dbgfs_root = debugfs_create_dir(dev_name(ssusb->dev), NULL);
>  }
>  
>  void ssusb_debugfs_remove_root(struct ssusb_mtk *ssusb)
> 


-- 
~Randy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
