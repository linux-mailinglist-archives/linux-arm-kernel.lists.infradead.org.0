Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225731AB04F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7GikaS2kmfdEfb+C5rC8WSGm8dkEzGEztWnP/BOrZA=; b=i3xXXAm3DgMmrG
	m+O5ABzZ13bRsrOtj4cWDEbAHPg874dKypZTNimpQh30viA+kD3Y95UTP3a/wOIvRSY3Bqga0bXB7
	ZwBt8cFdd6mWyGuYm7HOXol9aDsot+4vFwaSHr3Ad/GZ7/d9QjVfX6hVBTds050cbNchwgyHeGJ5y
	FhFmGOqh6K7z6fGMWhrlU5K3p3jewfDDcUeSq6uzPbhWeNtdtp/Xg7uXK2CEHv0jMK7qkwY3DZmoX
	Xp1tHpyDhDLXuMzZdUp1SGhLZH5MnSLrhEyX60qFAdwQ6rgj9S2739OA7E7XMPqTCCrSleDCiaYNa
	gi7tElHRzNNIaEJ8hLRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmPU-0001ih-AQ; Wed, 15 Apr 2020 18:05:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmPC-0001iM-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:04:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id d27so1070128wra.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/8FRo478arD7m2qucaLnwOdz/3bXv43FR5ZsgyXv6Ho=;
 b=R1B9gtJSvwts8ntK8Ij1ZQRxo8KVqPjQ6/oq/phrw5hrO5rLWL2vP1nB3wa5pny7rt
 WSRQrcQvkGUI8Twji47UJrYONgw77+rFQKPQfQkSDNdUC/ieAMbtaRKm8sow9kWRXLng
 +8DL+vVHegL0QTBbH0DAp76R5w33ZHKqeAy2yTiEz8OM312FtqDi5lpoBa3ASRWQiDqP
 oGwfwqwXRu3UwLf9m2NR/DsSLLrEqTtvr28dRJqs3Ip4yRnIgwO6z8t9NSH0J9KuFsJT
 u8L2LrqO2uhCbzznqVIB87X3lhf68FDIcYpOE0YSKKwWWBp29Qxf00vQFTZvzrxibsVR
 gPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/8FRo478arD7m2qucaLnwOdz/3bXv43FR5ZsgyXv6Ho=;
 b=TFRzMUsJaqxTt5mQlS2QiJ1d+m2vfOKlE72COXfQNgghZgiA25eZRYcR2GjYUdozm7
 M2xUfkpgUoyS3yLQzWEo8pwZW5qs9mr6VTTU33BscLyYHfESnMbsYCYZY5SwZyg1hpJe
 ixtGp8YPuz6pWqVjtmSTt+zCVxxj9VEHvP704fJlXyZL9wA1fsNUoL0Uo3odkOhmdErX
 jO4nsSlxswpQ2fbC9h40wwuKEos3xv9Ti9fqc4iknpFFRcUT106QQW4X/30Fri/jLyaf
 Bd5QnOdBUelF7x8pN7m+lY06fpWqocTd/5Jaia4MtQId29ZjH7DnMLT8IkPRpHVJSA9/
 xjkw==
X-Gm-Message-State: AGi0PuaN5w6sLnPr4swy48nWpS4XCED6kHsAtU82y5BMrIjgcXDbIc7x
 hF77J7whlnG0tUh2ieAzIMTYIcTSIeypxQdjWLA=
X-Google-Smtp-Source: APiQypLa70wxauBl8Umg57eLoV2a9izwUGC+7DVCaUZ6CGZwb2JceU+aC/f7UF2fV14mwbXBnJnREvKjneYMEJflMqU=
X-Received: by 2002:a5d:420d:: with SMTP id n13mr30497310wrq.204.1586973894505; 
 Wed, 15 Apr 2020 11:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200331203551.20914-1-mporter@konsulko.com>
In-Reply-To: <20200331203551.20914-1-mporter@konsulko.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 15 Apr 2020 21:04:43 +0300
Message-ID: <CAEnQRZCqeJkRPEUYL3k8seuNusLZ6QpT-X-A7E20AMHSYcmaUA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: fix dma peripheral type for SAI nodes
To: Matt Porter <mporter@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_110458_363943_3075A255 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, yibin.gong@nxp.com,
 Anson Huang <Anson.Huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:36 PM Matt Porter <mporter@konsulko.com> wrote:
>
> The peripheral type specified in the dma phandle for each SAI node
> is incorrect. Change it to specify the SAI peripheral.
>
> Signed-off-by: Matt Porter <mporter@konsulko.com>

Hi Matt,

Why do you think this is incorrect?  AFAIK script number 2 works fine
for SAI. Can you add
more details on what bug are you encountering?

Adding Robin the owner of SDMA.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
