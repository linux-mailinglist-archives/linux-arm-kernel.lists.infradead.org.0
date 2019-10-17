Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A161DAEC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeaNszoXZWPjg1vlHTHcZXleNvrPp5PVnFTNUP4cKT4=; b=rHJFycQjbjzOEA
	VOQefpFTfuLBZQbqseQQ7WTN9av+GRFRfsIKdQTkEkgQbEOztp2+4gNWy4hk1iWqhrfVrEp94KPQf
	4Y83F8DCwhhdt05MXCpIX1EKqVg3pGHWxLg+8ISvmVCfP/YBMXlNQB4PUBYxZqSdDDCmkYivC/UkQ
	6m2f7VN+Xs+HGLdu5WwrQeol3BRNQ0LfSimH23szREf9py+ckJg2g4y1O4NsSYVZlFWUJSpHrnIPa
	ldOgAT38PUkw0QSG6pjG7YLQaWS9c/NwtAM3NoOcq43HHqV2cO7NJ1+UEMCgzNuYBHDzT/XxYkVPM
	v6/1dOvxq7Cff3CBB8eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6AT-0004U7-94; Thu, 17 Oct 2019 13:50:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6AC-0004SK-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:50:01 +0000
Received: by mail-lf1-x144.google.com with SMTP id g21so837463lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 06:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kIxf0CXaMXP19ytls9EVnq9glUVujBoZEFuoo1TReUo=;
 b=WFJDo9JbE2wQezugkwqR86osos1Syqspo2i/9//fCoGIj6FFgH5sXT3dz00jn4CZTX
 yWs6J3/uwlgocDSUtK0dcRGPdXehhbWTcNsMf4su1D/BhDgkJx0CInnSNCvYktAR+x6T
 VTVhyqj7+cakT+AlmFIPqnmA2rkS02Gf4rNlEwTgUSOcOC1xrR9okh4/ktcuvRy9q/wM
 BLkcSEUWWnrSm+vUQCKXW9O00OeRSINOEcAWPrNjSiygah1sMAkT4hfinU5KzOY9J9XE
 w84JJDFvVJ7Y1YAbzgkSCTOabaJpsMJVOQKMVTtJ+z4S+jpWkb1/hdUePd7HOMMPawpA
 leVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kIxf0CXaMXP19ytls9EVnq9glUVujBoZEFuoo1TReUo=;
 b=bvLdLJbHonayV++/U+J71SpvyrqtsOc+HeciIhzZgLXdKe6Om0lG5cUS8AIiIURfMI
 yvWounKgt19ygtrsOstuNl4KB3UnT3JzaVbPFtwWcNMrmkxafWZO2AcKrDbpTiWbxLEh
 xqH2Hjimfm9stDmIfIv2Q7ld7x+3V465J15MHczyLCczIwcSgwC6k4iV3bEmtJe1xgPt
 iKEC7b6LWbPvkQZd02lMlFjwgIgWRkRo7XmHkoKgyoB8FKaQFdajNH+VeyO8IngQWMh1
 ElBWXe3xu9cTkBTKTji+PDPVq2kNntDSSnSCj6dm5Am9mMgH+/lxSFuoAObPe9+1zjNC
 5ncQ==
X-Gm-Message-State: APjAAAVaWzZqVvA0SAVErgkcl5rTg5sjIYThcyx7rvAisjMbMPWFhL3U
 yQ7mcGoRjyaNFzKW40ePAiysqvaP5LhajDmyek4=
X-Google-Smtp-Source: APXvYqzgok6YCr+ARGUVfkAfSpmySMXExzm3CebcPHplItyosGcqxrzCElEN0I/T7z61egyDR4W5gGR5z5lBUAkmu9I=
X-Received: by 2002:a19:855:: with SMTP id 82mr2429104lfi.44.1571320198501;
 Thu, 17 Oct 2019 06:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAOMZO5AuCCs27+hYTjs2w9j=nKUv3jzEraR8q1qSDg78F84W4g@mail.gmail.com>
In-Reply-To: <CAOMZO5AuCCs27+hYTjs2w9j=nKUv3jzEraR8q1qSDg78F84W4g@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 17 Oct 2019 10:49:48 -0300
Message-ID: <CAOMZO5DmHSYybje0bVk_bnVVp_pMRnTbXx8Kd_yRgXVOy12mTA@mail.gmail.com>
Subject: Re: pinctrl regresssion on mx28
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_065000_372321_B2187FA6 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 10:19 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi,
>
> I noticed that on a imx28-evk running kernel 5.3.6 the following
> pinctrl error is seen:
>
> [    3.758280] imx28-pinctrl 80018000.pinctrl: not freeing pin 24
> (GPMI_RDN) as part of deactivating group gpmi-nand.0 - it is already
> used for some other setting
> [    3.773300] imx28-pinctrl 80018000.pinctrl: not freeing pin 25
> (GPMI_WRN) as part of deactivating group gpmi-nand.0 - it is already
> used for some other setting
> [    3.787913] imx28-pinctrl 80018000.pinctrl: not freeing pin 28
> (GPMI_RESETN) as part of

I have just retried it on a clean 5.3.6 and I am not able to get these
warnings when the NAND is populated in the socket.

I only get these messages when the NAND is not present, so I think all is fine.

Sorry for the noise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
