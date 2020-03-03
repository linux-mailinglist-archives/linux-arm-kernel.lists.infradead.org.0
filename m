Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0241177532
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 12:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuSRT+3CvoYURO9DFFpcVEskjI9ZAcp08+K4VwHRNjo=; b=CaJZ98IfkWU6In
	p565ciDk36Nq6M+hDKEzsRMmolMBteFpj37R2lHiw0DHLtszZxwYkCdVkImmH/xiip6jW9e6xJ9Og
	aTTtTnprMr9Ga+rpfG0Vk7zK2hTwsrzv4hmUVjtFGOe7HP4lrsdSC+XsAUPdb6wzG2HIfoAyZ8zUX
	4lteV+u8uuBOQKE3NxeRfbLZvj5ESStDhxGsjRWh7tdTAIuO64S0J6vJJYbaZPzqGQqtJgRQpoG0x
	+u4Gf4BoCrrUzDTQLOAFz7ADq1hbT8Rb10aMLrltr4QixCI9fe2Z6vCONg4AxjRr0ymDa3ab92ru7
	zQf40x7CUfWH7JWUrVEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j95Yt-0006xv-Bm; Tue, 03 Mar 2020 11:18:07 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j95Ym-0006xB-N2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 11:18:02 +0000
Received: by mail-pg1-x530.google.com with SMTP id u12so1384114pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 03:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6LpPu+7mzHDbzzNZ3vNWrKJy3N6+UnYE5W0wfZ5TDvA=;
 b=X9DQytk52qZ6DQRmc5okitpNMgHqG6s8o4bhvGC/XRa0ECQDG91tyC0uTDPgvD5O1k
 AUuMxfLAJyrLqXfrAp5dKlhSuhJd+75XMDpEpOhrHrfJ3hNdoOJBM9SxQNB3jHDPbsD8
 DhiRPCC1dISZWIga0LihFWuRrO+DF9g8G3LAFp5NaoxJuVYG6DS7xohhSh+k7UWyF562
 YPqgCzzzuUmbeQKhJvCRRs0x4f4+fnOrjIpvEtN8uYJfnHqRy6MgFt55MQn41GYLpstR
 fMeTQE2yvj0EyS4Bx0uHfr0FdNMEMZDwY5XPTrtOrDQpG/auu4hOrJn2TkWWAD4aZ+Pr
 r/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6LpPu+7mzHDbzzNZ3vNWrKJy3N6+UnYE5W0wfZ5TDvA=;
 b=F05wCykQs6Rr7KHaQoN1pp175MJrzeFE1u+JlA/p/w0Jc07Q9sz9Q8eaSdbRH42wkc
 0rfOsDnxc4AFlguy1Opv3kSzSjghuB2Le6kEhs0wvpI6iH7xVVFJGwVVbLZaPYKCRCjt
 Nf2GyVTTPPRBMfteB8q9nd3otF3AQ16zry0xsuGpOOSj/UrY+f4+5ZvtO6PUTgwcVCyb
 z9xHsBb1knaPLRHQzlDxKk47qUizHjp8OpQzji0jf3PMrjqOdJK4nJNaJPq850f+lwrG
 HvARCYiNJhmmYc+zVAnA+fgUwJ/eI3GeCD52kpvk/66wMe0bLzHdFQULwlnu6SPIyBh+
 JbWg==
X-Gm-Message-State: ANhLgQ32nvckD8hIi0QLrdDBn0xLpcKHxGuZd48pet+CwKa1vzYPW2Rz
 kaj+eJ0kefW84inLUR0sgyDKyg==
X-Google-Smtp-Source: ADFU+vtX4ocvGPjD4lCipeCvf6Ndh/Qq0CPh8PdfYnJjc4X0n5KlKRfZpxjGrKkVvOS0v1sBH1rFJA==
X-Received: by 2002:a63:4103:: with SMTP id o3mr3271939pga.199.1583234279527; 
 Tue, 03 Mar 2020 03:17:59 -0800 (PST)
Received: from localhost ([122.167.24.230])
 by smtp.gmail.com with ESMTPSA id d4sm2138730pjg.19.2020.03.03.03.17.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 03:17:58 -0800 (PST)
Date: Tue, 3 Mar 2020 16:47:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
Message-ID: <20200303111756.eikekt7vg2js7emw@vireshk-i7>
References: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
 <20200303054547.4wpnzmgnuo7jd2qa@vireshk-i7>
 <AM0PR04MB4481FDAD041F6476FFFC0F6788E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481FDAD041F6476FFFC0F6788E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_031800_754629_AFFE5272 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-03-20, 06:16, Peng Fan wrote:
> Hi Viresh,
> 
> > Subject: Re: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
> > 
> > On 03-03-20, 10:14, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Use nvmem API is better compared with direclty accessing OCOTP registers.
> > > nvmem could handle OCOTP clk, defer probe.
> > >
> > > Patch 1/3 is dts changes to add nvmem related properties Patch 2/3 is
> > > a bug fix Patch 3/3 is convert to nvmem API
> > 
> > Should I apply patch 2 and 3 ? And you can take 1/3 via ARM Soc tree as this
> > shouldn't break anything.
> 
> Please take patch 2 and 3. Without patch 1, it just use legacy method,
> not break things.

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
