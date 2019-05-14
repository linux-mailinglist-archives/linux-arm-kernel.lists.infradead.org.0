Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9A91C875
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 14:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=np857li+kH1wWwC5gEt1mpZmGJ0dbs7m8g37sS8IQO4=; b=k5po4VXZnxKOdp
	589rLMxBik46tEJwo8FR87vSFGbZhCvN6sSLyUNvOE4nyoVyRgr31PFbzdrw7N4RPOcRzDd4JqTCE
	SGaeK94U3Fodd+L6rndOwo4NOjOpLtHR3rcuie4nMVdr8jRGBIobf5buQsNUjfHCpVFhgMvPUt2cu
	/IlpOuhlsE9cqQpSUuE6ryHcpYeUARFb7oPySSTChTmjNx3+JH4t16eHeSkmWmkAWkQ3doDD9nAai
	aVSsrYHaftsGNhZReodHcFSYpb/Dy1BsTjBZCNWrLLHGkitb2Q/DsjnNLb5rzdbC5Jk2oDpRq8DHf
	wu+kHmHb0sOmBtHgfNWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQWT3-0007XL-5C; Tue, 14 May 2019 12:23:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQWSv-0007Wf-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 12:23:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id z1so14120552ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 05:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3MRGyoxQqmQN/cZty2DfpvZ+zHLAV84AIpe7rHiuPWQ=;
 b=Lhwao41X96R3V363bIIPdKc1z8jhBuoTiTpm1E3GmeAoKEjaZ9yoPYZq1/nV381+GR
 6FOkclqnJu0ugwvejtde//MAtlNk2eOVFMsM4ZVjl0hk5tZ3ObM2IPVyQDu1AkKG/z2n
 CIeA3hAcHdeUvCXazfrsJBPA4xRoKsZd9dTNGDaVuyHXOWA/3DnhqwGDg5KIIF+MVVyR
 Bk01T7EWsQsfR/lMhVoPndBUabEG3g4oTmzorVIK6CdmKha47zInsX6YXlA5engZJoX+
 mN5ZXXx70U4vz0x7dn4dedEFoJomihrKEb4qh7uWgnIwXrkm/Bwvsam9xgzBAvACtu/H
 O2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3MRGyoxQqmQN/cZty2DfpvZ+zHLAV84AIpe7rHiuPWQ=;
 b=er5YHV4bUf5Ui1LM93dTccEFtaeyszp1j0L50M3NffLbCeR3zm4sDmJQoQpmTUObmK
 MnHH7+TG+RehYvhFD1UFzxA2492kE3hhuE9yVuvW1aSaaTQyQgjanklxuRqdm874Mx3z
 DNU65narxF65M4BcQ/zZeR9Pm0FTyVJY1nAwPYwpMu4DJ0wigkwNZ6XsUY8Xqx06BT02
 VYBCB8p3q4fkMSvoAHL0L8uNC4aUvkqyhJ0dveQj0tWVq5pt/TecJ+hAc6lR4t4quIsx
 xQtqw7tzoyke/FfWc7yavQBS4/t0k7wvRKjutgzysqzRNhwQTGuWAdmokVinw4HQVsWh
 DfsA==
X-Gm-Message-State: APjAAAWjD8oxFmhO3HvGrS1wKesBXSOYedCej+DEIHPKIzxSFfiCYYSh
 pS1yoagToO15VBlhUK+p2Ijsh61L70E9dWFKrMU=
X-Google-Smtp-Source: APXvYqyriOLyKC/Kee2yqH++lJP7hxSViMVYgJWwoXlY/6NB6M/1jXCNTU0A1P7xzLjQPHUxTBcIzABNX1o7b7iVLbs=
X-Received: by 2002:a2e:5dcb:: with SMTP id v72mr18001473lje.54.1557836607548; 
 Tue, 14 May 2019 05:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-6-peter.chen@nxp.com>
In-Reply-To: <20190514073529.29505-6-peter.chen@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 May 2019 09:23:24 -0300
Message-ID: <CAOMZO5DzqeDkfOh7gw7xQYHF1pDfe-LbC2jGybVDpEKUor+NNA@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] usb: chipidea: imx: add imx7ulp support
To: Peter Chen <peter.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_052329_493968_DBE7D2C9 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Tue, May 14, 2019 at 4:39 AM Peter Chen <peter.chen@nxp.com> wrote:
>
> Add imx7ulp support

Since you are adding a new flag CI_HDRC_PMQOS, it would be nice to
expand the commit log a bit to explain about it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
