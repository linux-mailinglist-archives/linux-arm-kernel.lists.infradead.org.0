Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01A71044D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:18:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsIpNherj8VoNXp1wKUVr6Agwcv3ZMh1BkfvQ8Gwg20=; b=cKlwl0Zi13QU7N
	7fzyQELTD2cX2bk2CFqe2t+phqrn2VKSd2lE1uQLJJfr6gQlyfbL3yd1Kb3bYHEesDEX385Pi61lZ
	q55u9AHvTYowAsU/YQyhj74Kfdktv2lLM9affS3T+/Qv16UyurhpR6/4A0lzwtnRlDxT6z5FNBxqY
	JUN7acCbg+kVuZ9rcdYn9F8uGTGcgLlA5jX1aSZVdaqkuAt4ws2wPkR/tKA78aHL9bkfIcNEUO45t
	Kkc1XbOCbCRQlry48mn3lA4nHJoZnApXfz5fb75HGwOgerb3FtgyDDvB+H5h+0ODV5OS3Zf6UgPB+
	r0t4Hdm1MWKRNi7jaMXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWQB-00077e-Rc; Wed, 20 Nov 2019 20:17:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWQ0-000770-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:17:41 +0000
Received: by mail-lf1-x141.google.com with SMTP id b20so609355lfp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OYT8CC6GpWfJu0xkWtk6XTUYUrlBXFqIdiEKAusrjn4=;
 b=yy4lTCWdl9Av+zr3CTm0ggDnEp7nwBfl83TXX6d0SX5Mj95Fc5lBVhk+KFeKFsUu/+
 5HlcRcFaOyZNNs+D019UtncETQl+U5hGAo5W+asM/MvV52pQ9zwVQAwM7UpkhsXfl42X
 Z4xpH8sbZ8wNnBGRwFoWnGypZbuFlABl2gOnFig1o03cfVpzoGo4sb5gF8xBXO+v2SeL
 BTAf82oSqJpUftzdcioR/5bq6otu3XFP5cyQfEwLKaoz/7H2cvWMUWAxt6V2/CGsWANv
 NfZi59lvb1H5fGUBFlauWB64HxtCRZMVFB1Dh4i6mVXfdUCkf/jErbfmAkhGfs47g+dk
 eUqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OYT8CC6GpWfJu0xkWtk6XTUYUrlBXFqIdiEKAusrjn4=;
 b=MMMhOsP0JPxygwQOtaHyLdR5ycLaPernd6v9+UGOJoMt88LMDSPQCClKjMzJZt+kAu
 QxpzYdPpxpfFmbwLiMy/onF74doKXgaxPqzJsC3nhAZLsROl9FuEAyBkalFgDqLaxbsH
 Y0pvmoCOHuaQqssX+vhO1EshT41Hq+W9q0MNdc4bjKOjBmM5MY7LbWKm97UzgFvmvHUN
 IlI39a+rMLsEDJoer16p1NHIXU8E/ycA1sAHLZ/Jb02K2HaF5FWrA88jwDaQAqFPyzL7
 Hmvkn1uVdFtqYYPLE0dhB6ZRupJF2MDhD8oL5RfQci/z1wNCKfvV7BHljcqhjN+9h4Hk
 h5ag==
X-Gm-Message-State: APjAAAVfsoCSbqDoBNKR+YWhXm7UnkcOn8pqmn0qC4e6SeGD1wlvbQT2
 pQk+lksJ1khUviVNPzXp0uO0R4hZtvxka11uj9x1wxHcJlA=
X-Google-Smtp-Source: APXvYqyGWF4ZIZmyLQMuDX14kcvxeeCM5hkV3U0eHSk6sdJXWFiGdgPgXZZqM7Qcb2XEL4SvXgko2JXcJMShZLT4asg=
X-Received: by 2002:a19:651b:: with SMTP id z27mr4439294lfb.117.1574281058113; 
 Wed, 20 Nov 2019 12:17:38 -0800 (PST)
MIME-Version: 1.0
References: <20191117221053.278415-1-stephan@gerhold.net>
 <20191117221053.278415-2-stephan@gerhold.net>
In-Reply-To: <20191117221053.278415-2-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:17:26 +0100
Message-ID: <CACRpkdYx1SP4r48L+5vJMttuGPoRH+HMhBw-CnZN0MdqtwZdVg@mail.gmail.com>
Subject: Re: [PATCH 2/2] mfd: ab8500-core: Add device tree support for AB8505
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_121740_218074_A74B8E50 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 11:14 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> AB8505 support was never fully converted to the device tree.
> Most of the MFD cells for AB8505 lack an "of_compatible",
> which prevents them from being configured through the device tree.
>
> Align the definition of the AB8505 MFD cells with the ones for AB8500,
> and add device tree compatibles. Except for GPIO and regulators the
> compatibles are equal to those used for AB8500 because the hardware
> does not differ much.
>
> Finally, change db8500_prcmu_register_ab8500() to check for the AB8505
> device tree node additionally, and probe it if it is found.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
