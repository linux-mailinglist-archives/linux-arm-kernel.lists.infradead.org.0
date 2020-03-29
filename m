Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E061196A94
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 04:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGkW5Jh1fPvaQBD9AAz5rZVcJpwpM9Tp9/CFY6F6TPE=; b=J23r2xFlvxBk4R
	IkHCpD7QKzKUicEojT7U9uweq+b7y1d7KlFH6HpNIBgSa6wlctcT8889gnbvOSej3fWuP1rnleCb0
	eBr+ZyXrloz6dG/tSAxUv1fsbvK+Gnb7GjPEQu8aaMd05y3WK/li95/6BoGdctDYGbiz7cAHQqxqF
	UQGxZViu5VoTyXVdqsmmjXsNVN0OsMl6tjFfDlVQFPcK7649oCUG7QTwx6JvBJE2aVlzN6lMp9k9F
	jY8s2J8MnJU304FvuzMCY8g856mbu/WW5+obXRCRVCg34z989tq8C10tBlBFJYG0uv8B3rOe2rLnH
	+VmjhizAIDgG9uzXyBJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jINO6-0003c3-J6; Sun, 29 Mar 2020 02:09:22 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jINNy-0003bX-Ut
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 02:09:17 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48qfCq3h7Cz1qqkj;
 Sun, 29 Mar 2020 04:09:11 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48qfCq3K7Hz1qyDL;
 Sun, 29 Mar 2020 04:09:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id FGQSt9sU6ZnQ; Sun, 29 Mar 2020 04:09:10 +0200 (CEST)
X-Auth-Info: egD/bJRIottvUDg6p8VDUM+QJNK8Nu4B2zvY4ecB8kk=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 29 Mar 2020 04:09:10 +0200 (CEST)
Subject: Re: [PATCH V2] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit
 support
To: linux-arm-kernel@lists.infradead.org
References: <20200316103911.2681-1-marex@denx.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <96b0fd75-8f01-3c35-614e-c4b5e7afd00a@denx.de>
Date: Sun, 29 Mar 2020 04:09:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200316103911.2681-1-marex@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_190915_148416_D865A7B0 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/16/20 11:39 AM, Marek Vasut wrote:
> Add DT bits to support the DH 560-200 display unit, which can be plugged
> into the side of the PDK2 board. The display unit contains a display, EDT
> ETM0700G0EDH6 and an EDT FT5x06 touchscreen controller.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Add #pwm-cells = <3> to pwm1 node

New news on this patch ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
