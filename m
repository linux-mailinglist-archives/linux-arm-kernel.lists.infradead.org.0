Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7822C10E814
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QYgaVbKNTnJDPdlIVQvIY+jEe7XjwLjrKpPzogmTdag=; b=lgch5B5AAUvW5lrPU80/yvqae
	ideMZ8ju1nQdhMIHjVt/NTwHmny2qmCfuoBJE1LQyfhgg4NqtzNk9ZtPsXNXYKB+JaO2/92j2lwhI
	blJSqpKCpUsiR3wFsqFo97IacAAW8sn4FyHL50qRpa3wbjD7K0Trzl5OaT/gs8pdRcXfmWvtBliu0
	KSlhrcNUyi2Ru5BcvjTg6uIrQKzNUAVLOM4tlZ7maUyT8NmnGhAtedQefJlOY9u1J3GDQcwdaeFFG
	dLYnvXzBFmOX6RsoGoSjKdXyg3mHJMfhKYRjjll6jkuyZuj3SC8doUDkGpRFU5EJHEy1JciUqMzR/
	5kq+rG81A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiVJ-000376-66; Mon, 02 Dec 2019 10:00:29 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiV3-0002yE-3A
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:00:14 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ibiUy-0006FX-Mv; Mon, 02 Dec 2019 11:00:08 +0100
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Reference to
 =?UTF-8?Q?its=5Finvall=5Fcmd=20descriptor=20when=20building=20INVALL?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 02 Dec 2019 10:00:08 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191202071021.1251-1-yuzenghui@huawei.com>
References: <20191202071021.1251-1-yuzenghui@huawei.com>
Message-ID: <f44b2fc14d26731333ee6ef1a50e63d6@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_020013_282686_CEA14153 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wanghaibin.wang@huawei.com, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2019-12-02 07:10, Zenghui Yu wrote:
> It looks like an obvious mistake to use its_mapc_cmd descriptor when
> building the INVALL command block. It so far worked by luck because
> both its_mapc_cmd.col and its_invall_cmd.col sit at the same offset 
> of
> the ITS command descriptor, but we should not rely on it.
>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/irqchip/irq-gic-v3-its.c
> b/drivers/irqchip/irq-gic-v3-its.c
> index c52cc8d6d6b8..b3fec78b2226 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -598,7 +598,7 @@ static struct its_collection
> *its_build_invall_cmd(struct its_node *its,
>  						   struct its_cmd_desc *desc)
>  {
>  	its_encode_cmd(cmd, GITS_CMD_INVALL);
> -	its_encode_collection(cmd, desc->its_mapc_cmd.col->col_id);
> +	its_encode_collection(cmd, desc->its_invall_cmd.col->col_id);
>
>  	its_fixup_cmd(cmd);

Yup, well spotted. Thankfully, there is no impact due to the two
structures having similar layouts, but that definitely needs
fixing.

I'll queue this for post -rc1.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
