Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFD015BD2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8W/MAiJaJk8WJOdS5r9zVxw/PIhMjC37W5/ZNrqsYw4=; b=Idl0klc0iwX4kv
	TMkJQZqDA2k2wa+crnZ4LorqrjGPvWBfy+2ZI9d32jkYfEOS3VmDy9L2XuSpdhn41ZoMN8NuDaGUa
	/orIa9dmvXL+ZfG7GDFSV7k0+qdMoqhksj5KXFapFYBT6IdpQPVp0+KGFwdcaFZLvOtoAdMcsqkv1
	uLR8Ap2+WK2xfUk04rfI/WbflR1SZgw9H2VV0IPHvUR80Dp1lz2KLcP1pEdJ1R618XL/FasztlLjh
	3OpXrVcVsWMj9/C5/Rgjzl+AZFURPMt0h2jr4qxjtm9ANNOBQE0EJQ6VybOywSU1BkZhUZJ/wiOK7
	pQw3Ov1CuhODOfGWtO0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2C8T-0003QJ-D9; Thu, 13 Feb 2020 10:54:21 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2C8D-0003Kz-T3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:54:07 +0000
Received: by mail-lf1-x129.google.com with SMTP id y19so3922427lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wL0bjYN1U3bZfVJrL/SniZD6DwbHHKtxnem8CZOKtGk=;
 b=JWucAaQjf6n2R/1TSCCRsqYWeQMJiipwREUnRsiCRThVRKXwMe1JGIJ+U/llae+Uz4
 TiqyY9BuTdlGnGLxnYxU0heqw81RBa53P4tFSfgFHuknKoeZO63Sw5gei8UfEXGSZASr
 DlWRrr+r8j3FUo9+8T6QrY3bj+t7pOAbYESCtCLcALO5wEC1y70H9TTXP1amnBi0WKFd
 WNAkHaHFyW/qW4MrGiYnRhZjP75oaVkpEq8qKeE/bnev7bcp7MTuYOlQwylmm7okfQsW
 vXkrmWin91f2xMSnmAer0tZk+XmlpRLDwEnFdU6SNsTAuqqNDmGvUU6NPutPt9jT8kpY
 qbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wL0bjYN1U3bZfVJrL/SniZD6DwbHHKtxnem8CZOKtGk=;
 b=r0T+CW+EurXCnHnDL2JfUNo8NxMgHutsYtIqEMeLm6dM/11cXGj7NDgSX+hliGdIMv
 dNdqxok81R/2suZDryrJpUJxh+fBwCVKdxEi4Mi0tM47z5IKonAJzxJsuaGnEqwZ4x32
 P4cFV6eadHHSJDPw7q3J+PyCq5ZmR+83MOx1AvHKkfql+b+ob2cWOlvrpXWNN8sWS+JO
 ufQmZ0YL1EyD7AJ5L4efQctRiSmyAY62Wktj1JAMCZECUVe5YiNBpLblBGGPLI2HvGfh
 XcrhWV/VieiDUOrl5cg71spx8Zh4D5+PaKS0wXnq++43QlDKH2KeBGiKVc+QtD2JZV2w
 RFqg==
X-Gm-Message-State: APjAAAUwytBitf2OMFa91kzBbG5sUX+dLTuJA2aTWnATiKUqKScJ+9Is
 Jrz6rXqpZsdedOpjEci89KMrLVnwPBXOzpnSUwo=
X-Google-Smtp-Source: APXvYqwSNBB2+D0KXNfmV+ovUFJYXdXU8EKGIo6CB+lmGfk2XFUOpz7aJvYvfcOiyUdCJpEzS1hmNELAhYa9adeWSTY=
X-Received: by 2002:a19:3f51:: with SMTP id m78mr8962803lfa.70.1581591243210; 
 Thu, 13 Feb 2020 02:54:03 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5DMMCZPfwNbTaG8_iQhWg2K1XeO719nSA0Gsf2ywHy4jQ@mail.gmail.com>
 <20200205092653.GB2737@bogon.m.sigxcpu.org>
 <CAOMZO5AAzK0QprHpKHaFOANjspJKd_4YaoMqAoGYG4KftcyiYw@mail.gmail.com>
 <VI1PR04MB5040A046E5D93265AE636B29901C0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <VI1PR04MB504091C7991353F6092A8D91901A0@VI1PR04MB5040.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB504091C7991353F6092A8D91901A0@VI1PR04MB5040.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 13 Feb 2020 07:53:53 -0300
Message-ID: <CAOMZO5CkSSidzLUSBUvJNAio3SnmU-fisTbDCiLN9v1EjS+HHQ@mail.gmail.com>
Subject: Re: sdhci timeout on imx8mq
To: BOUGH CHEN <haibo.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_025405_995972_CD34B3CC 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bough,

On Wed, Feb 12, 2020 at 11:33 PM BOUGH CHEN <haibo.chen@nxp.com> wrote:

> The board I use is SCH-29615 REV B4.  This board use Sandisk eMMC chip. Maybe your board use Micron eMMC.

Mine is REV B3 with the Micron eMMC.

> I attach the bootloader I use. Please try this bootloader on your side.

I hope we don't have a bootloader dependency here.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
