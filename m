Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334C96E557
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 14:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lHPCk4xkFvV4F7kJDy21B23EymIirt8MLla8b7e8j0=; b=kwGb5sqMJgW4XV
	qLa886oNKNdcHaFgbipJualRDl0JhhCzRp3P2BQi40qS2LO9SemaxjFCYN8QZyat6k8nNyYAJgx/m
	ORM18g2wNVt+brNoSWc/7C+W0TD7I6Z3SPe+k5forf9b9ZPYnFrDDLZt/9k1oyfrv9GUnQB1MWL6t
	SHxm1eDSTyNgnMUzZ7blsiYXoypYmEtEmgZNQqpOEhKGtzZZsPsoqVB19jwp+5jvuLjBYwTOrbW6n
	rgOQldppn7OKKotD94jdA4bvgvunQsfKiIaPQw91Jkm7XJUzw+w8pYtOQiwt/ALF1Fb2OSgMUuHE/
	6oJXhuNwMgxbIrmH2G6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRcn-0005jp-8u; Fri, 19 Jul 2019 12:04:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRcZ-0005jQ-5B
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 12:04:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so28818969wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 05:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d8IFcivDoTqK2Ev9EUILZscktm0lR7SvblA9hq9LNWg=;
 b=j/bj0S4PAnoMQzdMr/jqG6zHX3uvlVV4jQWKFchLU2VUyGh6TOQ7NZK/qEEv9WMMMt
 mFolvVmLLT0Tiu04cvEdBVhpHbv2VKKvtzHbVl0jAexSvVIjQgXRMo6dz4pl9JlRQAgC
 Kz91969RlF85z7Hidel82qDRb6mdahXnAcvckGD6nMBOWfK5bMRuk30/I1EjocxaJlbe
 MwKxdqEHN5Mbpo+Fx5Xh00dnlS+f8GT18YRQo39Zd9NIFOqWadxyLySllGPcRsuS4nVG
 s28HKmZw7xMGb8K9Om2DN+nsp54I1cnKsJets1anYAbfvCATzz89M8sEf0sFSneJzAzE
 cZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d8IFcivDoTqK2Ev9EUILZscktm0lR7SvblA9hq9LNWg=;
 b=eaQIvL8hy0TIa8sWYh1KvlWFrmgdE+b/R/hcY6uY11rs3kXF0+MKyGO/PcH19wwXeK
 aKobQuSs3xCa/EVsUDFW36iGZRwahm9y5gf9JNU3rTk+zLOhlYCAL22q7PH0KkbX2wg1
 OCNY/7nx+bmfYFXQ8fv40bozMnyinmbm/IjM51APEBf0n9rUCKQBN15x8296nlXAy0HB
 AUq7ceBs+nMa3s8cV651W2JwKWujnuAHzAVxWfz+1tBwa1b31op277Xahfv5tkl0wBjZ
 JMdihyPj1zJyDj442SEJzSzpw4RUkmMCt8BpPs/0KciLeRxsyaMWOKuIKvsV4kVmCsOe
 hJPw==
X-Gm-Message-State: APjAAAX826iDre06qdZPulld4a1kiDSwOt/eiAaXUrCNUZ1AkpFlYzec
 gSJiW1RgIaRbExxaVvgUKxJjSdewOVe9UP0gZsk=
X-Google-Smtp-Source: APXvYqwBxjlxJegOY2UTKf4DLSgACoj1+MUtFGTXOMcJBBbqQCcN6MmCZg9QAv307R1lFOoMUph5BNq9+6hcKREQlao=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr58332007wrs.93.1563537857525; 
 Fri, 19 Jul 2019 05:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190719104802.18070-1-andradanciu1997@gmail.com>
 <20190719104802.18070-2-andradanciu1997@gmail.com>
 <CAOMZO5Btu1Shou=dGRrG74e5UjHnh7NtR4+4ETK0t_1Zt48Crw@mail.gmail.com>
In-Reply-To: <CAOMZO5Btu1Shou=dGRrG74e5UjHnh7NtR4+4ETK0t_1Zt48Crw@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 19 Jul 2019 15:04:05 +0300
Message-ID: <CAEnQRZByhULeq14BLbH4JzJwgL2+5hUaPn8=osZqVWrEMpCN6g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: fsl: pico-pi: Add a device tree for
 the PICO-PI-IMX8M
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_050419_204686_7F001D0F 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ping Bai <ping.bai@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, sriram.dash@nxp.com,
 Richard Hu <richard.hu@technexion.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, pankaj.bansal@nxp.com,
 NXP Linux Team <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, andradanciu1997 <andradanciu1997@gmail.com>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <Michal.Vokac@ysoft.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 2:22 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Andra,
>
> On Fri, Jul 19, 2019 at 7:48 AM andradanciu1997
> <andradanciu1997@gmail.com> wrote:
>
> > +       pmic: pmic@4b {
> > +               reg = <0x4b>;
> > +               compatible = "rohm,bd71837";
> > +               /* PMIC BD71837 PMIC_nINT GPIO1_IO12 */
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_pmic>;
> > +               clocks = <&pmic_osc>;
> > +               clock-names = "osc";
> > +               clock-output-names = "pmic_clk";
> > +               interrupt-parent = <&gpio1>;
> > +               interrupts = <3 GPIO_ACTIVE_LOW>;
> > +               interrupt-names = "irq";
> > +
> > +               regulators {
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
>
> #address-cells and  #size-cells are not needed and they cause warnings with W=1:
>
>   DTC     arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb
> arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts:77.14-196.5: Warning
> (avoid_unnecessary_addr_size):
> /soc@0/bus@30800000/i2c@30a20000/pmic@4b/regulators: unnecessary
> #address-cells/#size-cells without "ranges" or child "reg" property
>
> Please remove them.

Thanks Fabio for review, we learned something new today :).

Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
