Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7846110CF45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUPP+M0Ix9JJHNxE4wYFjBMY6QDEZFR+Fl9uCPceHT4=; b=fn6s4LaUePsdoM
	yNmroNE/Mr4WDJ4HvblNReZESSTl6F+BAajIJ8lc62mSTfzXt9A1/H45Aplj+vcE5lDMaGFhtDjbj
	LLC7nv/Unc7nMNkSbpV8z5+OrYpZ5Te68pLTOYZPHFlfgzcdlwlR/TrePAOqGodk6juX4WfzNP0fP
	EjJnhIK5Pehfw2DrPqryAx46IGTub1FlctyiHyWnLQJYyvV0utwKxutXl4/kia/n/uGnQIgbtfmQy
	bQsoPRriPrPqTvdrULfZe3ki2pCVNQ3KmRBH2mRHQa8hWfSawBHJifRK50pfNhJpny/9omp/iYQTz
	EH+PNYc6avDo1jiKO2hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQRK-0001hl-PA; Thu, 28 Nov 2019 20:31:02 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQR6-0001hN-K9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:30:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so1590944wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/F4fjTqCSCbemLPACFLDEoRElFjhhoWK5H/bkTRiXCc=;
 b=f2bgNO11ck3HaI0MToSAz5sfRIth2du04Y84p5Vj6Zoh7GfqecklqXv7Mc8w6QoW9c
 9YHbbZNIMjx3nr4p/OXY/12j63P1sTu0hxwW8t64mut2gNE9HxshnW0v6HDw4N84z4FF
 obf0a1RUZ6pozT+TI1vcMXbn54XIPTQ3YzK2jM+FXirQjUcWLwjv7ci6D11069+9nmlF
 /D/BY1CIHQo+kWLFL8Cug6HxxeY+xihVYLgrwdLry7UfFtDLIy4GM+MtXSc6Rq0kiC2s
 wQGRqiSQqLBX3e5xKfYQpArRln9GKO47/omSl9u1w2U6gOYvtEn1zCDGGekyQPXd6t5k
 ZXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=/F4fjTqCSCbemLPACFLDEoRElFjhhoWK5H/bkTRiXCc=;
 b=ROsVvzZ1RQRZ5V0TdV7xcwPEXW1w0z5M3NEgHN8EZtwEbQYtkIfoPUHWL5XXp4PD3Z
 9x6tVEgmmJ4DQ7EdFMhU8cs7p6hk1VyCTxBggKSFyZpfB0cFCkQEmShHNInQMmb2U3Am
 9NAxf8kFRnLl1Lj2jPO4Vh8jFkpVw0ZPSpWgsS1hfADcNCS/pOavly3RlxDa4arBVdMs
 LVAIsO7Hg2mNUzsbmfkXqFuBHfDMQ8VhKwrQZSWtVcJbFYE1UDFpzM+XEDdfe1M+M3HF
 /TF+5IFSbTvfUqj/XdJ31k5rqxi49xuGbNlbISQ/LZVKRg4wEcLSmYaJHrKcp9w0lhjC
 IXFA==
X-Gm-Message-State: APjAAAVOfFuwJpT4sIQvzqymmF93myveI3T3l+LENpcd5Oh3N7MwP08Q
 J/G4r7Sx4mdh4PAQ1ocUbVg=
X-Google-Smtp-Source: APXvYqxwkJHZzFPosHHBBpY/9deoXC8APNrp9kOY0iXwsyFtedfw82C9F3QEEjvoxCLiTCcjwXo3SQ==
X-Received: by 2002:a05:6000:149:: with SMTP id
 r9mr10658203wrx.147.1574973046452; 
 Thu, 28 Nov 2019 12:30:46 -0800 (PST)
Received: from [192.168.0.87]
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.gmail.com with ESMTPSA id k127sm5454220wmk.31.2019.11.28.12.30.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:30:45 -0800 (PST)
Message-ID: <1574973044.2362.11.camel@googlemail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Shawn Guo <shawnguo@kernel.org>
Date: Thu, 28 Nov 2019 21:30:44 +0100
In-Reply-To: <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
 <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_123048_692641_7DC854C1 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: chf.fritz@googlemail.com
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

 any chance to get this patch queued for the upcoming kernel?

bye
 -- Christoph

On Wed, 2019-11-13 at 16:26 +0000, Adam Thomson wrote:
> On 13 November 2019 13:40, Christoph Fritz wrote:
> 
> > This patch sets initial buck regulator modes explicitly to a state this
> > hardware needs. So a wrong initial mode set by bootloader or pmic itself
> > does not interfere anymore.
> > 
> > Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> 
> Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
> 
> > ---
> >  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > index 6486df3..644625d 100644
> > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > @@ -5,6 +5,7 @@
> >   */
> > 
> >  #include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/regulator/dlg,da9063-regulator.h>
> > 
> >  / {
> >  	aliases {
> > @@ -109,6 +110,7 @@
> >  				regulator-name = "vdd_arm";
> >  				regulator-min-microvolt = <730000>;
> >  				regulator-max-microvolt = <1380000>;
> > +				regulator-initial-mode =
> > <DA9063_BUCK_MODE_SYNC>;
> >  				regulator-always-on;
> >  			};
> > 
> > @@ -116,6 +118,7 @@
> >  				regulator-name = "vdd_soc";
> >  				regulator-min-microvolt = <730000>;
> >  				regulator-max-microvolt = <1380000>;
> > +				regulator-initial-mode =
> > <DA9063_BUCK_MODE_SYNC>;
> >  				regulator-always-on;
> >  			};
> > 
> > @@ -123,6 +126,7 @@
> >  				regulator-name = "vdd_ddr3";
> >  				regulator-min-microvolt = <1500000>;
> >  				regulator-max-microvolt = <1500000>;
> > +				regulator-initial-mode =
> > <DA9063_BUCK_MODE_SYNC>;
> >  				regulator-always-on;
> >  			};
> > 
> > @@ -130,6 +134,7 @@
> >  				regulator-name = "vdd_eth";
> >  				regulator-min-microvolt = <1200000>;
> >  				regulator-max-microvolt = <1200000>;
> > +				regulator-initial-mode =
> > <DA9063_BUCK_MODE_SYNC>;
> >  				regulator-always-on;
> >  			};
> > 
> > --
> > 2.1.4
> 




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
