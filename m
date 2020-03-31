Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69269199FFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 22:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EBFw5sC9JWkOnR2hJJzjF3l2WsFiYqOMqh0Ap4dRmc=; b=fw1HGqmA+AEyh5
	Ri/WMqAvEMSeF4NONU/YIXGqwRO5ostIk70G91MZAaa2L3JAMArqTbpAuYA/ChQU6IZreAsWagpBb
	Ho52VBOsJZ6cxwScdlCbODxjQta9/XXdFe74bxjdF/6UKK21k7bp5kbJ0GNVgEDQnm9yAfYRrKINV
	MmEUSFwmWhm1DJn2cswGrhWiIMhKeMdguQ3rEOGqCXDdQkXdanEyyeAKPjDDcWLm7uCtt2RMFLT2m
	gPwAKHL7qajlFntJfKH8EOSXHQxMBJCiz6ojygLfdgOWSUrjcA/O3fyArW4fRz73HZ+Ca8tUDjjIQ
	F9ofn8mYgRQ49OIZLSRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJNZf-0006Fe-7s; Tue, 31 Mar 2020 20:33:27 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJNZT-0006FB-H3
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 20:33:16 +0000
Received: by mail-lj1-x22e.google.com with SMTP id p10so23211629ljn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 13:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lShPZxhYmYKIxn9HZ21opBqSt/h6p0BHD/YYoVt0O6Y=;
 b=RQBKvhc3u0Nhb2lLvppi4N79yYa944hBQPGlB+L4hj0AEKhvZNVA42PVGAhWv564+d
 mbM+VCg1x+Wg314JZ0Og11zqSX9EjL1C4ZI/EF/hfm5idRjBecq1sw8eztp1/PGItaeG
 /mRJwLHzXjtsIITo/Yuh/K4BWeORJddez2OSwuw8912AN2Fw0xJ8yf13CZaSQ76WbPpf
 +vIvX4Vgho++utEkWjcQkmOeP4ZoxyivL8Qyy98hw0HeDJdpEGa9kZJeWf/gz8lfPFI2
 OpAY/EOuJkq+8SUhhaXUBVWzjd+phDD1LTX9H8E297XvE+l5vncJnPE5OYdAUnk/yhiT
 hkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lShPZxhYmYKIxn9HZ21opBqSt/h6p0BHD/YYoVt0O6Y=;
 b=WjTST89sIoKAb0v9iloSD+XkBqZ7/WMbzPrebPCAMgfnmRsNllFm8ERjEcP9n2UWdD
 AKAjq5N4ovhVBtO4WpKLHphAOfVCe4aMIAGuvGIl+EwMY/HgmGAeyp4LoOnze3f/O3zP
 3cJFunAna4K4cbY/daPa5OUvD0nVmxVlm2YSv451bejwQNyfTqWIm019JlvK8QlayTRa
 Indds46NR/5sP06vEAnuuzhU3gP7RZVtC4u/CGXANL6lEZMk8wqCJF2ODf7b5dq6GNpF
 rgZkI44+bPk1kmbLZ+26YzZRDrkcgfcYEXONO3ZAIa3GDCCbf0SU3pqKj+/xWL35LBHk
 IGrw==
X-Gm-Message-State: AGi0PuZU7hNAJgcZnoQ2WN6UuEUAGwugCZRtEw4YgBG853Bwrzx3s5o1
 D1X5MmIKpf1l0Z6lg4UGqLEFtjB+qp+qHb9X1sw=
X-Google-Smtp-Source: APiQypL9Ipre8TYKspmzX1YW+qdEGC4l1xDR2LSmRhJqreBFH4Gh/aHgcWcKDbJlMwBaSFTyNRo9JoQb/vDfy2wjpWc=
X-Received: by 2002:a2e:b1c2:: with SMTP id e2mr11666246lja.288.1585686793666; 
 Tue, 31 Mar 2020 13:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
 <DB3PR0402MB39160D3F0D03B968B7CBE25AF5CD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAHCN7xJ2m3LRB3oGBb5QKbacYyTBQK1CdzGcTh3w=hj18H=4Pw@mail.gmail.com>
 <DB3PR0402MB3916B68A1B0F37EA34825F69F5CA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916B68A1B0F37EA34825F69F5CA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 31 Mar 2020 17:33:03 -0300
Message-ID: <CAOMZO5ABmK9LLOafmChFeDnTzrDTKgqfwLNe08bR1Yo8iA1G0g@mail.gmail.com>
Subject: Re: i.MX8MN Errors on 5.6-RC7
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_133315_561829_1F08C57C 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On Sun, Mar 29, 2020 at 12:29 AM Anson Huang <anson.huang@nxp.com> wrote:

> I am using our latest u-boot and ATF in NXP internal tree, maybe you can get the
> latest release to have a try.

Here is a complete log that shows U-Boot/ATF version being used.

It successfully boots imx8mn-evk running linux-next:
https://storage.kernelci.org/next/master/next-20200331/arm64/defconfig/gcc-8/lab-baylibre/boot-imx8mn-ddr4-evk.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
