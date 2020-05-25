Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A51E1000
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=or9a03r2zFRUrge9mBgn8tsOq35fBnINKa1WsTcMb2g=; b=La+I9X5rrpD0SX
	/ZJgrD7UszRwnpCrEPsDDjvTdohDBgJv8djHn+Ra3hv8SgKZ/EiiTvNRV/lIPH+0WFndg6SuDvdnd
	WZl/f0SHUmPO2Fv4zJWbtGaDf4rb1+6IqaLk4nueQ80JSHbQKFtOY/GQEvOTnquYefOCkp/ycILWh
	eDJokfjpW9PXR/a0qadPcoylMKm/Uqitij9hKboR7C0O2w62KA1yxiMtRpZwuu7volrNxaYmwLaf5
	gc9Z0yt410g25wd8Vq0i/+ACkylNt83ND4DLjC/mGFYXeufnwSB6/4mpg4ALUGtwaHj9qybBqKQSx
	uEGq+vvV2zc+qkreV2tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdDbz-0008Pj-Oe; Mon, 25 May 2020 13:57:51 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdDbn-0008OB-GP; Mon, 25 May 2020 13:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GaU25l9pyO7K3XI0B24cqiTiH7sFU/aybUfiy90S9MQ=; b=cJD9+lcJpMXmAgH2bxGoTpihrb
 CesVhtmmnWKMcOJKY8VMvm1FouO5Sxl/A8p19o3l5wXlkeRw8bngaVqik2FyWlv61n3fjIlLJjCtX
 xNxr6p9XGYXxOOMnF0FlJRbzCCcRHKhXTAPQl/+6jGRRoj9HJ1h98BIZRk/uQvdJ1yPw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jdDbc-003C5d-CK; Mon, 25 May 2020 15:57:28 +0200
Date: Mon, 25 May 2020 15:57:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v3 1/8] dt-bindings: net: meson-dwmac: Add the
 amlogic,rx-delay-ns property
Message-ID: <20200525135728.GE752669@lunn.ch>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
 <20200512211103.530674-2-martin.blumenstingl@googlemail.com>
 <20200524212843.GF1192@bug>
 <d3f596d7-fb7f-5da7-4406-b5c0e9e9dc3f@gmail.com>
 <20200525090718.GB16796@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525090718.GB16796@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_065739_546485_091C4E34 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > standardizing on rx-delay-ps and tx-delay-ps would make sense since that
> > is the lowest resolution and the property would be correctly named with
> > an unit in the name.
> 
> Seems like similar patch is already being reviewed from Dan Murphy (?)
> from TI.

Dan is working on the PHY side. But there is probably code which can
be shared.

One question to consider, do we want the same properties names for MAC
and PHY, or do we want to make them different, to avoid confusion?

	   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
