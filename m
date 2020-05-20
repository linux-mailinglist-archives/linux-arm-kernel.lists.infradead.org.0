Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C4D1DA89D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZJE81gOki1VbTl8IrNxyAhL82QLTa0aSt/+9Lyb74c=; b=YmOJCdAQ0l7unl
	71055emOVrR9pB/vbFxBdjpluQZgTigw30q2y05pktZ8AY24BotjPZHuP7ND/EqYeu0S/DhTu1bCF
	Bau+SVySC04OsF1mkyK1JYJgmeyb3pOjuvwmxgVHzdJ3Xj2ynysc9wKxIGHQ4exvjkfPsMB5LQeJC
	ts0w/1kjTfeiw0904ofFWeuQfEMSP9Wk+KwEOIhiqJU6DVbk7f48Rb+Vjss5twT11ic4x3uefscyS
	mqiB2Xo1aVIfk6XepxbMDQFqjqhwaN+UvUHZpKZ6RldXUwyeFKE5D5OIITLG4I1oI8DGNSN1EWxpt
	akuft511hMYx9KN391Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFSm-00038B-4p; Wed, 20 May 2020 03:32:12 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFSc-00037J-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 03:32:03 +0000
Received: by mail-ot1-x344.google.com with SMTP id d26so1370203otc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 20:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E2vK9F/eA14thO30W50mK/uC9vmImhp6JcvtaBfalus=;
 b=Txe/8vd30AxuY9Cp9qMRIiPjVlgPWo9BHR/CL3Wgqy6AE7SyYWidotTjxY0/jDStqh
 Ixc+8EiaFrLUnoBWEHJctLDH3m2qq2KwDbsdtadTMfx8EJueY6SL2X56MtvhsbDsQygO
 6q1W7v95tPKwj9Eev816CGRFvjir6CPE2KBugcO5cOJW04maMQuakYqFLoZFLY1LmDF/
 FoPvJZTz23UQT8nTIKEIoQ+iA5H5ibQx15P4TJmxhdMn20D6ir8WmVscb8VWNl/4z1WK
 YreGTJSkEOkBfXnxGJ3pH4P4WBre0cPzeQ+MoI2jsi8a/LX7Ie/gSCRdY8R2gadala6/
 i+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E2vK9F/eA14thO30W50mK/uC9vmImhp6JcvtaBfalus=;
 b=QeLkMYXo91TCobZbcYgi8tcvXiWtN37yA0L74K8KfG6cZTS/Nv3/oeEbjV+BdTq+XB
 GV2v9ePKL2EjKJUnT7lsug+oQWdBxMYzqUm0f0KQOdjY/p1pB3OfMxNYhpo5mIh9d8kh
 RDcTl0Zh80hSJ+PoHfRnFWltQ25dO8/MgfsLJjDUzh38QN44gwx2mMTXTEvAvTt15CNw
 YSLDSIArGvjSBFfEkIIpruabXvzljS9fzMH4/HAORSnBpj+Gn0CjMEc33Bs4SfKtEFKV
 L+XOijlT4yMeOuNeV2/Rz+uXRIMeQihX8F2eey0IZgUs46E9g/k+Hq7blcIv436roUEY
 48ng==
X-Gm-Message-State: AOAM533Y9tSIPByHLSSvWAhkLUDKLQfL0kAKTfBjdMxXfe6BdQVtB+Tc
 iPgumNO0/B4ulNEJ+JfUA/3u9V5CpxTSIRWdeog=
X-Google-Smtp-Source: ABdhPJywljdbI8qKbuGjHOrWr51yAQbdJYFS68Iblc4CXacS9JbRL4urQsSQ7MZdskoTOc7xW/bRxIc2g+gIQ9jUNu8=
X-Received: by 2002:a9d:32b4:: with SMTP id u49mr1768191otb.304.1589945521027; 
 Tue, 19 May 2020 20:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <1588151843-2133-1-git-send-email-peng.fan@nxp.com>
 <20200520005638.GA11739@dragon>
In-Reply-To: <20200520005638.GA11739@dragon>
From: Shawn Guo <shawn.gsc@gmail.com>
Date: Wed, 20 May 2020 11:31:50 +0800
Message-ID: <CAJBJ56J-q7BreW9L4B7QbCkmxPEkpY6YMrBbzG3HWk3FL+wJwg@mail.gmail.com>
Subject: Re: [PATCH V2 0/3] ARM: imx: move cpu code to drivers/soc/imx
To: peng.fan@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_203202_442649_B123BED5 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shawn.gsc[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: info@metux.net, abel.vesa@nxp.com, Anson Huang <Anson.Huang@nxp.com>,
 ard.biesheuvel@linaro.org, git@andred.net,
 Sascha Hauer <s.hauer@pengutronix.de>, allison@lohutok.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 leonard.crestez@nxp.com, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 8:57 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Wed, Apr 29, 2020 at 05:17:20PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > V2:
> >  Keep i.MX1/2/3/5 cpu type for completness
> >  Correct return value in patch 1/3
> >  use CONFIG_ARM to guard compile soc-imx.c in patch 3/3
> >
> > V1:
> > https://patchwork.kernel.org/cover/11433689/
> > RFC version :
> > https://patchwork.kernel.org/cover/11336433/
> >
> > Nothing changed in v1, just rename to formal patches
> >
> > Shawn,
> >  The original concern has been eliminated in RFC discussion,
> >  so this patchset is ready to be in next.
> > Thanks.
> >
> > Follow i.MX8, move the soc device register code to drivers/soc/imx
> > to simplify arch/arm/mach-imx/cpu.c
> >
> > I planned to use similar logic as soc-imx8m.c to restructure soc-imx.c
> > and merged the two files into one. But not sure, so still keep
> > the logic in cpu.c.
> >
> > There is one change is the platform devices are not under
> > /sys/devices/soc0 after patch 1/4. Actually ARM64 platform
> > devices are not under /sys/devices/soc0, such as i.MX8/8M.
> > So it should not hurt to let the platform devices under platform dir.
> >
> > Peng Fan (3):
> >   ARM: imx: use device_initcall for imx_soc_device_init
> >   ARM: imx: move cpu definitions into a header
> >   soc: imx: move cpu code to drivers/soc/imx
>
> Applied all, thanks.

Unfortunately, I have to drop this, as it turns out the series needs a
rebase onto for-next.  The series conflicts with 'ARM: vf610: report
soc info via soc device' there.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
