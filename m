Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEC661BED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 10:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrIZIxDs6vAoXUF7kLQpkYgJQ9NJd/YRiYKMlh6sGtU=; b=MeRvOTkh7ppxK4
	jJyvCZGme61lodPGAznVQ5FTjM783gn4AmBuP02pUpm1paml0OZ1u09X9afngcoWFWtzA4II7JN8R
	AeYjA5pg8F//ld+3wSTrcJ9DMkHJsp+Yq61buqIn6VvvtVoiNZgQsPdky93RZgjOg5kyIID8dFtVl
	flSTXzKZSTR4WrNZarYqKV2pg1UR0b4alsd50mYgOCtXBxyFGsbc+jDvDnRDF2PEGFAtBlmpc5eZj
	Vuyd0xnzeR/gjkD2aQ1pVFSn19Gw01KBVc8SrKuKYPvas4o9sELlo2h+cleLAvmM+FRQEag2PcbCl
	1Zaw1FlLgTBuCcAb5uug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkPM3-0001dm-5J; Mon, 08 Jul 2019 08:50:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkPLW-00017U-Cb
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 08:50:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so7250884pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 01:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0f8cjmK92HlNgqdiIijajGEwI8ww5eZP9m3oc7p56Nc=;
 b=XNBc9Ibt2RD9ZScjtlSg3q03aKcjt0mkX8Tnqlq8ia3SlJkvgZLuf6bCf81oDV0c3g
 mh6NaGDyDwg2iBHEvtwDBdVmHb5o9isAOZ3qTc5cvLFw2fx41/9zqBIhamXiWOuk+auA
 2o0a+Vn5joLTl6S0zcEwQCZxvb0Ajiddc9J7o9f+U5KWykYYg+m4dNkDfKlSttULO4Gy
 c0Og20/SbiF75xz6+y08B+exkdUkdAa/17gaxv1zKVDFpyu/MGrVei5O9Kj2MG8Bw7Zt
 QFIizNqncdaiFzzHW12Xr172RlniGm1Ev8NfQHPgWZ4xYEiLO5SZ4M/CT/kCW9RNQDfB
 /ksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0f8cjmK92HlNgqdiIijajGEwI8ww5eZP9m3oc7p56Nc=;
 b=NZX71XjkMnAXCmUfCAE+Jjaozrt2PNfGsCdR+cfLMb8r9gnUooqQ2Q12ljBDuvQlM9
 B6vlz4niOgiM/WGw3f97QcU9FBremGpJrqXw9wRo5UDG0Aciz3vLKSAcJDFVeEOfSzon
 f6F3K5fXXD9PZTPkhgjCTuGNiVntoQH1NFK6G+oDdfDv8X2YEruwJNfXqvUi6+GVm7Yj
 P0WdnKjfGVY3ZPCWM9GdDGzY1foraVTNGTvIE/v8I3cAvtQwUxxeyMUESh9oxzgV7C1T
 +DS1kPaOqeUTJwzoKTsg5htC9DFhxqpeS28S5O6r3DJKbRAvHnqBfhTmvd/JZaVAbjyy
 eLLA==
X-Gm-Message-State: APjAAAVQriD8B/C2qljByBmeFTDVJzx/RjjT993VQQnATM7RyIsgWfcC
 YdQFR3LZgyGgoKTiLlHOFbUGOrBUfpg=
X-Google-Smtp-Source: APXvYqz2OAUpBgAYfslWqQ24NCOstvA/FjftUC0ZlsHmRwGfhGZVfXdBFIvrhykbYiXoTF6fiVa9dw==
X-Received: by 2002:a17:90a:2023:: with SMTP id
 n32mr22686652pjc.3.1562575801326; 
 Mon, 08 Jul 2019 01:50:01 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id t17sm18436886pgg.48.2019.07.08.01.50.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 01:50:00 -0700 (PDT)
Date: Mon, 8 Jul 2019 14:19:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Message-ID: <20190708084957.waiwdun327pgvfv4@vireshk-i7>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <20190708082511.py7gnjbqyp7bnhqx@vireshk-i7>
 <DB3PR0402MB391622133CD116FDE26A4F9AF5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB391622133CD116FDE26A4F9AF5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_015002_477061_78D9D766 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-07-19, 08:43, Anson Huang wrote:
> Hi, Viresh
> 
> > On 04-07-19, 07:49, Leonard Crestez wrote:
> > > On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > Assign highest OPP as suspend OPP to reduce suspend/resume latency
> > > > on i.MX8MM.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
> > > >   1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > index b11fc5e..3a62407 100644
> > > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > @@ -136,6 +136,7 @@
> > > >   			opp-microvolt = <1000000>;
> > > >   			opp-supported-hw = <0x8>, <0x3>;
> > > >   			clock-latency-ns = <150000>;
> > > > +			opp-suspend;
> > > >   		};
> > > >   	};
> > >
> > > What if the highest OPP is unavailable due to speed grading?
> > 
> > What does this exactly mean ? How is the OPP made unavailable in your
> > case ?
> 
> That is because in i.MX8M series SoCs, the speed grading and market segment
> fuses settings could affect the OPP defined in DT, in a word, all possible OPPs
> are defined in DT, but each parts could ONLY select some of them to be working
> OPPs, so if the "opp-suspend" is added for 1 OPP in DT, if the part's speed grading or
> market segment fuse settings make that OPP as unavailable,  then that "opp-suspend"
> is NOT working at all.

How is this selection done ? You using some OPP helper or something
else ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
