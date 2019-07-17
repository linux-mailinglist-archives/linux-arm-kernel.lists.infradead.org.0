Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD926B81F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNqFxSabCBfRgWA3pE21tjsxpr8RdQNAkMkZW5PiUyM=; b=d5ywkxfuoauWzW
	hdmNnRNN/P6uCLQzujjN8iaR4gqIqSWWC8BV+Vh4x4ZkPqFkz3sH0sZz1/3Nds0ZOXhka9mkQ6laM
	4DGVRn7atzi4xSOk6UNctiCZYWfqrOm64RSb3ZJHPn1C2TwSFZMBQ1EafBebfHJ8MyyunPVI2sUfx
	xIzTey2s6phRgRlh6yiEZsHiR7ugdSYwWcQuRD4GeBDLasJQz5xlfY6e2eePq+bf1RAucAKb00WR8
	WdcKi3vzE/x3g45X+JWb1xxGvOgmMVN94/Atwx2H2ldhmDV0UeglqC1kcqb6zdcHrnGjkuIKDYzu/
	pMD3uz0j8IF9mgZmYHnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfE3-0008FS-8S; Wed, 17 Jul 2019 08:23:47 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfDp-0008Eh-4k
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:23:34 +0000
Received: by mail-qt1-x841.google.com with SMTP id d17so22406432qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TwgvgwFAr9ZbQyJY7OLlrukFEYAp4mCTYSJJ8JLqJDI=;
 b=LqN/2tU7/8cN6JIMAfFFhaNTFqe+tnHiecppE1yZpQYHqyUZs6w7PtqAVb9/wYk/DJ
 Hw/P3qO0ZJVGfNgBuBk6uo3jshv+LhvpPWUYMfp1IXxQzEapsQzDgFmwlHIFT2oLmIBF
 oyvjcWSD0BYEqkAo1SBqP+RpM01tuQWnxjfS6Prol/I42c65szJI9OTGnlxrneHDZGzw
 KAMJh3jhtDtBQH/Pkf08SsUyP0YbNo8vCG3EYMpxZHlmqfsEX9j0KOZilAtJJ2ckYWKH
 ZwZWymxn7ua/IvTKh704LOQmKeOhjLqmwkksCaqfAFaMEQ9pCSUfbYPcy1xWmYOb49wA
 Acxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TwgvgwFAr9ZbQyJY7OLlrukFEYAp4mCTYSJJ8JLqJDI=;
 b=uQGqoIUVgC+RI0UTxRbHQ6I0qdg53+XFOn+/UKOuguE7vplaVN9IyZwLaqXzb9lOL3
 V2kv6GxhTL09oXaqL8TEGYwiLuLDA20DtjpYi2FMGJyJhJPy+qeRx75IQ25sj+rvNcHl
 HeqWEyw5oM80JalMvvUgCavS9AvpEWTpaVd3bORu3Iw6zXIR+DrZOKyvTshWZchw/d9Z
 Iq3T53/BCSnrgbCLY/HhXnVEpwnSwIHF/kxilW2RbzzG13eQrI9XjvfNvSOPIJRdq1CS
 LWsrAX1lxFuAhI2RTCTZWdj3Wf+KuCJgsxEqsrWxOCcRHk6FQKnWrdd+Jv4rjgvoPsl5
 HrSQ==
X-Gm-Message-State: APjAAAXdetN9HCJmqQiDVAgHc9aXjxR3KbA2ciR3BPumDDQE5TN06cCy
 K3qBNsYHJHo4z3vZR/WRqGFAVDGnDQ3DTB6tMbg=
X-Google-Smtp-Source: APXvYqz4uw+BGfWaRI1pKAcWBiBCJ/F+kVqI+JVx9Yb6o8jGx7Ac6x2yJWAUJGKhx7FGXMrX+H6mpEe+Xh9h5nHDjeA=
X-Received: by 2002:ac8:f8c:: with SMTP id b12mr27121586qtk.381.1563351811577; 
 Wed, 17 Jul 2019 01:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
In-Reply-To: <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:14:35 +0800
Message-ID: <CAA+hA=RknQ+EbZ258t-X_VktBFKs1Y7vBn_KTMkbyQAFW5k-Mw@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] arm64: dts: imx8qxp: move scu pd node before scu
 clock node
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_012333_185433_8D1CBBBA 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:26 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > SCU clock depends on SCU Power domain. So let's move scu pd node
> > before scu clock to make it probe earlier.
>
> This looks like a fragile solution. Shouldn't this be handled via
> probe deferring?

Not like a normal case that there may be only a few devices may get deferred,
for qm/qxp, almost all the devices (~100) may get deferred without
this patch. e.g. scu clk, lpcg clk and all other devices which depend on clk.

So i think it's really unnecessary to do that.

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
