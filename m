Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C84B26964
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 19:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KMipPmPBDjguWOdey5TkCuHu1k+pBFjJv+qspwoMho=; b=M4zcGtu3zL4u3R
	C71yX9WLFUu9P/7tZuVaY1puvQaVEN5TWEMCQ5OkKqnyFJExnZkDfUp1HehKcMPQqfkdQwdgWWeT9
	En5/pj+WIvJHSG6bxcSoTzunoSbCFH96YUQRR+WAU3GxFs2m8+lIWPBFR7hlHMTEv5cRm7WUCBNP9
	XQAQ34WwLAuU5scyXlsg2w3q2o5qsMKZ+SDipd60ea8LKVWXl/5swa81jhEMLgihOHdjbiXX7bBln
	o6Yp+i7dXi4+SWg4Vzq3tNKEAJ2LZEF4NzcuydKyeCHy7P4r7+JtBqhblTJJu1ajnWfpghVuviKTV
	+4q0iD75lc8JkJbgX8OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVNY-00022m-Vt; Wed, 22 May 2019 17:50:16 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVNR-00021s-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 17:50:11 +0000
Received: by mail-it1-x142.google.com with SMTP id m141so5021957ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 10:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cJPxAPmrd2C4lX1coOIuzlgyV9VAK5JxLftwCKVxBHg=;
 b=XtpAYJeRmqcV2qahVe9bnVhLNmRBX+E8AvnMnWZdm34v5n5IxPxvYf3GdHVmIcM+dR
 G/bykiZ5qWgHHcx/cBLMSGZo4fPp6mgehuO3IycMm3Zvpa9kbWK7eSOGsW3UacnqmOxz
 v4wrca0Ge9mo4keTJwTJE4ECHtfFHR4C1F/2WCkELXTK3qjS4HAYF2tH0GYCFhLPjhVe
 +bLGHnf8PvzRHK3kRSpagZ95wEx2EndR4ufmQoqO0xBhv/l18nnE/9H7eJHnZ1N0jUvi
 Ta7YsAeCfwzvY4jCvernQpgQuZKE3WB1hJp95lLS1Ldiz40kFfXpj9qdqQ+mulY2yvhf
 fvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cJPxAPmrd2C4lX1coOIuzlgyV9VAK5JxLftwCKVxBHg=;
 b=iVCLKtCtFejPwG5wgiGtSNSqwwg5W1gjrVhax9ElvydL81mKwJ9TU1QR1303ADSA4v
 /DF+woD49GV7JJ8UEMXH/e4tSwyOOLi+22tAP5KnoLnkcR6D2uX9AmfoLJwK/I5yM0Ta
 kSrZDEj9M6wOb8M0USsUC88D/LhA7knASVV6uTwzW/CDUYIUaOteJwTk1IkhvGw01+IX
 Jpm9qB1nFwtkT+YpLZUTQ8oJpxjVNqaoW7pNC8amFqWZ8Cp1yW5VOkNcQpRnGAr9zDQ4
 iURXceaUOzIRdJAWWpLbr/eXzFbcbp529l3oqjCkfMliFvf9RHcaCmmx8IPomnYo9LCr
 Y/3g==
X-Gm-Message-State: APjAAAW+910umvgPsZMTUD2FVxitYh3+KXvlHwxZ/K6gBuZ2qT01PIQG
 F6hMgqkhyK4eDEhzILWz8gKsyF1oYhTA7krMZmI=
X-Google-Smtp-Source: APXvYqxJR8aAkCSA3tmznR7qBXCq6yO1/12SPYPe5qh1go89kiAn+y4cSSRa+WH8WDBeqh+6GyQgwXeUumpzjizidug=
X-Received: by 2002:a24:d43:: with SMTP id 64mr2561513itx.114.1558547408444;
 Wed, 22 May 2019 10:50:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
 <1558517848.2624.34.camel@pengutronix.de>
In-Reply-To: <1558517848.2624.34.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 10:49:57 -0700
Message-ID: <CAHQ1cqHxhafgsnt6O9G6iVFjbh0+HNPKrFq6UO2hbXcU2t28aw@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB
 charger chip
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_105010_038122_7D89E0A1 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 2:37 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Mittwoch, den 22.05.2019, 00:12 -0700 schrieb Andrey Smirnov:
> > Add node for UCS1002 USB charger chip connected to front panel USB and
> > replace "regulator-fixed" previously used to control VBUS.
>
> I've had a similar version of this patch, but also added GPIO hogs for
> the UCS1002 configuration pins, so the device is put into the expected
> state even before driver load. Maybe something worth to consider?

Makes sense, will add in v2.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
