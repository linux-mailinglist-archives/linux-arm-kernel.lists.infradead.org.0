Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4E2119FEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 01:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLb/t5Egs7OqyZW5/7j7d8UdbMuSyv+eT0tji5Z0pOk=; b=VTSVgoNNZ/gjKE
	vFoDTgV94b3iC031pyGoC01v31f9mHzED1bjNYmkhCFbI34qKFaAZSAqlVeL5RU+42J9oTZ4FWIQE
	SU09SFKm16soR72s1mKfK78H1xsLYZo6vdcVhEVacRCnbPShFuOuyWbBeNT+3d1MJV/TxLNLFieVx
	cLs7u03fubpoY63OHIcpV6LI9+bN+Lsr+Emaev7DkjZ9bWMXNfqw/79Bo92F8W84FYRdMudj3X8q+
	DqM//z663nQmrgz5JzSrDgxvh28IgQEEcA+wfdMFMUtgT8kMBCrAuTjsUXXIUTmCiaPgZM4IwW0oC
	AoXOJMnRI8J1G4sXqZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iepqc-00037r-WD; Wed, 11 Dec 2019 00:27:23 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iepqU-00037H-O7
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 00:27:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id r14so15255466lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 16:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0YwcEmrybkAIJS+wlE+GtavK8q/FX1vSJLO5AE5V5AQ=;
 b=Xm4vj2rVGB/SRBfvuHE+/uzmSe32FcouY6MRz8SweGufVxcYD/8vMA3vk8sQcLqzVi
 Um83AIUYLqKM76ZAkP3PIDzyRe8E/c4dv/ZCb0CT/1IH1piE2fjJb9hhEW/SxBcJy2A1
 nNd3XiEOE4Cdw3TUp1VWejuSt2eCLFrptlxnzUTqZxfGoRCIOy5wuWpjuddbdXAA9Q40
 FlB/Ql6gLBNM5YBbtjfD+DdXRz1xsxJGdW/dC72RUzN15fZOspuV52cxOAJzqpn6UDMW
 tUsaAqB/WN9AJ4ReSQdP18CP+vxlRO1qDrCsfGXQ0f/ZQ6WhRtloJQ7bwIV+XjVWjRha
 91Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0YwcEmrybkAIJS+wlE+GtavK8q/FX1vSJLO5AE5V5AQ=;
 b=bl7bMqKLj0dU+CBDVqO4nOPbyG7ZnDZYdqvn8kFTt14/2WIcayjxhqDYo1QFGpuXSg
 7rTvwWXp+T7hFJ27tJr0zyln2m0VtmvOOpBFLwsht8hen4SMPFb4GwdVi0KQllobuRZQ
 /o8hluEP8Sq31su5e4py8HbdvPNvLywEW+lRS3rFgyO/WOFY43Z6uRoTMdm0LgaWH/yn
 dICo3XZyTLIXo7EDRei07m4Ngl9rYCtcbycZBEaGCeRaGeBHnEeqUm4mJ/4tGg1N1b7a
 V8/pm4aQUkd7NYNDsyVqNlrarvzfDD49NiXP8JpLzB2md7PmWttpJSSLNjWKmmTOhGBz
 M+8Q==
X-Gm-Message-State: APjAAAUnqQ8UJz9BD0DQcBWp8wFEUB1NCwJuFy0jR9OsDVSEPUzaSXO2
 WqEGMbVX5UXz8BLsHERQ0TEjFpHau4JeOpv9kpU=
X-Google-Smtp-Source: APXvYqx1d1UPRM/VwKnfJ3gNIoX8pxJUZkVIASuuMICzYavFbf9BRcJH7dLemw/nQbb/0CipBg4wbBPGxRWsNodjwuk=
X-Received: by 2002:a19:8842:: with SMTP id k63mr395860lfd.90.1576024032562;
 Tue, 10 Dec 2019 16:27:12 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
 <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
In-Reply-To: <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Dec 2019 21:27:01 -0300
Message-ID: <CAOMZO5AP4F3fMwbx7TbnJ-xNPRh6r+3=TccWasVJER=cjLkgjA@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andre Renaud <arenaud@designa-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_162714_811061_F973BD7F 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On Tue, Dec 10, 2019 at 7:07 PM Andre Renaud
<arenaud@designa-electronics.com> wrote:

> Thanks - we did have this wrong. However even after correcting this it
> still fails in the same way. This is what we're trying:

I tried your patch on my imx6qp wandboard and did not reproduce the error.

As you activated uart2 I changed your code to use ttymxc1 instead.

Do you connect UART2 to the PC and also send command from the PC to the board?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
