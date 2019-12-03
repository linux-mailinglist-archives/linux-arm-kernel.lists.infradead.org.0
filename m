Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1B31104A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrcOw9iMpiGf2kIBPWgnEUQusk1lr/UuyLt1/RUdbVU=; b=ERQOsqTCK2F8Xx
	Qb1wH/nfFB7BCusQ7UEauzEc4NXBYVLanm+IleyeGt2nHIMvg9PQd8x6xOXJy4wn5BOq8fVq1LLqb
	91KfW6BFJ9YmXcoYWnYcJv6Yk9XM3SskLTTtPOcHnKjhXWctu3OAL6I/Ilmj8tnomZARfrvxY+QJ4
	D/KhH/gqfUvXH7EzuwE/Y/NoJkdQQqtohCNOZi1uiU4pL1NlHbSqLdmM9YolcBOdPnJRA2mw7uXkW
	3WFXyDxLPrAk5A9G6gexQ+KcwjHFbKVayfKfqJ8zRe76HGf+q1FSnPp2LhIpmEumWtTHGmuVYYfbM
	WGM2iBaQFCBlSNmPRN0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDNl-0006e1-PV; Tue, 03 Dec 2019 18:58:45 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDNd-0006d6-08
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:58:38 +0000
Received: by mail-ot1-x344.google.com with SMTP id g18so3867472otj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 10:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GxlDyiyTvNHPwD/5kIUhhaapFW9F7yBPVFKFV7a4/pw=;
 b=HB35UKkNyH7sare+zLM7xxgIZHbV9F77Hwqwle8r3olGJNwEmcS4YBOV2SrL7oY14W
 re7JZrGn0neuL31R2CW39Gu7lI27Zr2qVst6tD9LMZulDxZw3p/8u0UY7AYKG/hwDeqJ
 pxP0rfi7J7RUomB9RobuGj8rc+zooK1DkOg/JRARhLSSeFOD0yXFnxkUh5SA+gA8Th6w
 UzQSqF7S3Q6fwQwYu6lDM+FVQzoGl5aEPcFO05eNQvFbRPjc+lvzN3vxxxOg2uVAqAHc
 pHcOr6xLWoVOJCn3jg4w8atr2yd0HqNKvUafns7F04pW2W8wt/CGNKPd5TFjQ11uI2OX
 R0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GxlDyiyTvNHPwD/5kIUhhaapFW9F7yBPVFKFV7a4/pw=;
 b=YqbHPnIemjSnjuN4oZL9bMbKzZcCAvdoNjVOrUeMnWp2DWzI1+dxgL5B0/uaCxuWQf
 ryF+cMEkGx66XPE9lDDdSLUmdrPjX4gmamnK0HqVkxAtczT99KW1XiaVND3TdlSjXxdq
 yJxpzzaSjSytuWpr47xwFfrsgps3k4Fzs5x6ETWGz2X9CnpVUC7TEzhvtZ//eIUXP1f6
 drU4fomIaCEIzWo4Eo4AELl+2Kbqn10dShc2MhcOcbtKpf++i8aP1T1ERX+e7kBzrHlw
 mv1r/ovfc95iTZh/Q3y0zGgkUL9LNg/PI3wVVqs1rme4NV9TR3dUnaT8vP9Q+4Q7Jhzc
 QBhg==
X-Gm-Message-State: APjAAAUSJq82FiFPdNKxJfmSMZavxJI0Na366ZTyal1nRb5PXN+AdHD2
 cJRJZEhr+znhHnN8mjpTYqeC1MYA+lDG1yNmlOJjOFoj
X-Google-Smtp-Source: APXvYqxtxFVwUA9PHt22kKsy5Pk+gZ5ihfj7SKHIEPvxXfFe3Wf6YPRTIkje0C6BNgeCx/KGE9V8JNW1D7fVd9TT4EY=
X-Received: by 2002:a05:6830:1211:: with SMTP id
 r17mr4396976otp.157.1575399515579; 
 Tue, 03 Dec 2019 10:58:35 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
In-Reply-To: <CAOuPNLh8dsSCq850afbj4OiHhZ2swBWZP=BTUrXrXhdpTjZs+A@mail.gmail.com>
From: anish singh <anish198519851985@gmail.com>
Date: Tue, 3 Dec 2019 10:58:24 -0800
Message-ID: <CAK7N6vpawfLSVcHCg_3aQ0M8L=j77ZeGfmUZ-J4hpUkWu0fkWA@mail.gmail.com>
Subject: Re: interrupt handler not getting called after resume
To: Pintu Agarwal <pintu.ping@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_105837_045479_69CE711B 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (anish198519851985[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anish198519851985[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 6:12 AM Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi All,
>
> I have one general query.
>
> If an interrupt handler is NOT getting called (for one device) after
> the system resume (from snapshot image), then what could be the issue?

Most likely during resume the interrupt was not enabled. So check
irq status registers to see in the working and non working case.

> Note:
> * The suspend worked perfectly fine.
> * The runtime suspend/resume of the system is also working fine.
>
> If anybody have experienced this situation and fixed it, please let us know.
> It will be a great input for further debugging.

Need more context.
>
> Regards,
> Pintu
>
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
