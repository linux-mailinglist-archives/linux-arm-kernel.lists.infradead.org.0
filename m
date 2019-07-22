Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563676FBAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxRRioIPJIXlE9B2t+55mpoOtjrAPsJ+yH/GBKPgWLk=; b=mg5GjevqY9oVS9
	93q8DKgeyGhTbtZRLjzJJaIcbUfrBjhu3qQGnHpTTgFiMfERHM9HbH6kcrfRUD25aeYnmLqB8cjW8
	FFyYz6VcnF8gbK6/9H5dhhutyjIfsobmfjmLVaEmYzov89mEbadCejvRnwBKDSiXy/+dJTfmVnt2W
	tQQznmmnQuQ+8CbbAPlg15KNbWLcMmSrYeq0gMl/YX9SBVkX/ZnwWysw0Zpkx/DilXYSVT8TQ03oa
	Ev6Bxl7BmTJwGY5LRi9YWeJjKUMFTfn8+drOlXUlZViA4BnK0A0X6tEhtPZeZzlmMZjblXakB5DUL
	lQT604oyxvQTs9M/CKVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpU6L-0005dY-Gn; Mon, 22 Jul 2019 08:55:21 +0000
Received: from unicorn.mansr.com ([81.2.72.234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpU5y-0005bu-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:55:00 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id 80C9215611; Mon, 22 Jul 2019 09:54:46 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] irqchip/tango: Add NULL check after memory operation
References: <20190721181536.GA13450@hari-Inspiron-1545>
Date: Mon, 22 Jul 2019 09:54:46 +0100
In-Reply-To: <20190721181536.GA13450@hari-Inspiron-1545> (Hariprasad Kelam's
 message of "Sun, 21 Jul 2019 23:45:36 +0530")
Message-ID: <yw1xh87efnzd.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_015458_832186_0FFEDE7C 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hariprasad Kelam <hariprasad.kelam@gmail.com> writes:

> Add NULL check after kzalloc operation.
>
> Fix below issue reported by coccicheck
> ./drivers/irqchip/irq-tango.c:189:1-5: alloc with no test, possible
> model on line 193
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/irqchip/irq-tango.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/irqchip/irq-tango.c b/drivers/irqchip/irq-tango.c
> index 34290f0..761b9fa 100644
> --- a/drivers/irqchip/irq-tango.c
> +++ b/drivers/irqchip/irq-tango.c
> @@ -187,6 +187,8 @@ static int __init tangox_irq_init(void __iomem *base,=
 struct resource *baseres,
>  		panic("%pOFn: failed to get address", node);
>
>  	chip =3D kzalloc(sizeof(*chip), GFP_KERNEL);
> +	if (!chip)
> +		return -ENOMEM;
>  	chip->ctl =3D res.start - baseres->start;
>  	chip->base =3D base;
>
> -- =


Nothing checks the return value of that function, so bad things will
still happen, only more confusing to debug.  If you really want to
"fix" this, you should either:

- Simply panic() like the other error cases.  If anything here fails,
  the system will not work anyway.

- Replace the panic() calls with error returns and check the return
  value in tangox_of_irq_init().  The system will still end up unusable.

-- =

M=E5ns Rullg=E5rd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
