Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA3C78632
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6HhAT8PJHHyYos5sM2Gs97OfkFNSQxzswM1I4+JA0w=; b=pQMCnPJha8ua9/
	8DBIbjBQYJjctLx9IZX2oHi2Wno8P/OugEWuZc3eZY4Yx1vp+FHTbeyFiF/k8pKNJhjlWCNA2ibBb
	/lcsvrY2R/2YtvhisfG1fp8cX2Kln/UIPzwcBGSUNtqlvmm/5hcxcMkvWKzIrU3Tt2yuy1/39t+1V
	3UswX97DswYCiByZhrtWccuGFYAivHVyk1A0jUP7vcvyBd4X9K/N1E6cQZjN7ATDc/lmnofMx0lAP
	JURgySxFawxIH+rKWUncPfyJEBT6Uz8SgvP3k6kv1Ab/PgMcdvA7ME4ZNzqyT9YZwR0aH5so691yv
	AyK5TrcxTu9Akit+tLig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzy9-0007R2-39; Mon, 29 Jul 2019 07:21:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzxV-0007Qd-15
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:20:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so60568629wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 00:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NGAnXdnyTlrtK65biDfN+R0xcD/6ajBIRQzlf8iLxcA=;
 b=IVzn3FU5qq9wRwY7u5JJs1BkiXHdMdTrBdvwk8Jt4WShqOZBA47c3hzZDNZ3RYW4KW
 +IdO3+kqx0CQmXVR/5w//0hTu5ZLepZQk4+nIvMr70w/cMQ8Sc46OHlSGD4RQ4jGnhnJ
 4AeA1gTdhfVop/9UZJHN0bAoo7Iv5ACel8XHK/J85Sd5PQCQfOSbBB3nYWHVhfj5myz0
 f7xcEQ8Vn5CYlOh2UzkE/KszbJSLki6CA5Wz5JIhhZ6ZAqkNP7VhhzHwYuZmVlYtgpFq
 lqPe6Iwn9TMTSoXgRBoW7BbsEzBhvbZNdU670/nGINNOj0yJo2CH4aeeqm9LrD7aG38m
 lV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NGAnXdnyTlrtK65biDfN+R0xcD/6ajBIRQzlf8iLxcA=;
 b=iAljVYuN/EztMKCofVkdFtZ5ayVnNp+WcHWgccnwRE1VikhJXmscW0m97RcKFE6+jS
 esJPYCxRqAQSc2nAMp9BcLxLBIfKWAwTLKIPh/fzLw1pNKIw64tRXsvCTX6W93twFork
 AkQWkSJH8WeYT9aRBEoWpbWgFdFPiKW3nr6jIoXQ05YRZYgd2oac4np2TChhGexfCbhE
 bA+tCabl7TlX3Q9Ri5n65Civlg186uqJYdnoJl3rLyheJObZ+Max9sPvMctBX6+QNfte
 PBLYzODGE8BAVBY6FfUHG5Ai4dvMmCxsmMh6+GlWYjNsQEcFD4uZ0e9wwLIlS/doAFwr
 ODEg==
X-Gm-Message-State: APjAAAX4lucfQAuzeJAYmTuQbONXrjF9scOiSlA8nXpGupwSevOQqwvO
 8EJfARouhdJM3VtMkyYD1E3Jb4G+B36uf6xv0vo=
X-Google-Smtp-Source: APXvYqxtBXh9XypbQCggtX40yh034dlUxuLKuPCiBaZSuYbNdbqeWex1ATByZQcE6PXfNMdArNjf9paTKtKnFSuc4uI=
X-Received: by 2002:adf:c70e:: with SMTP id k14mr15959399wrg.201.1564384835131; 
 Mon, 29 Jul 2019 00:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
 <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
 <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZB6tmYFA8wwh0Fm49LTTDuCLq-SWVfrcUkRWWBo=0U13w@mail.gmail.com>
 <DB3PR0402MB391627F725AA7237BCACBE87F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391627F725AA7237BCACBE87F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 29 Jul 2019 10:20:23 +0300
Message-ID: <CAEnQRZBrmikenTvnh7syhy=PDPcTL3fn2TJ+ya=ToZ+SFmH5tw@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_002037_210481_746AE8E4 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

<snip>
> > Your explanation makes a lot of sense. We will take care today of Abel's
> > patch.
> > What do you think about Fabio's patch? I also think this is a valid patch:
> >
<snip>

>
> Hmm, when did Fabio sent out this patch? I can NOT find it...
> I also have a patch in this series (#4/6) doing same thing on July 5th...
>
> https://patchwork.kernel.org/patch/11032783/

He didn't send the patch yet. It was just a request for test here:

http://code.bulix.org/pd88jp-812381

But, now I see is exactly like your patch here:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
