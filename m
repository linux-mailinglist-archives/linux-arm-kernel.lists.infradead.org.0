Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69270132DF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gts7efOoFoMBfU0O+plFGWv71IRSapaiODWDpA/c7A0=; b=fy5UEzw1ZjOEVw
	5V6Iz5meMFfFC2cSuiIY9IHNWvsea4t5ZRPS+1onT+M6mtJ8Glre5E7VsC98/vBqf0OZrf2T41EwU
	cVP1Kgzo6WxsxfPCUKxyDV+KtmDU1HR6Q/xxoUMTV9hwz/RlJ08QNJVGlLqt+I2kyCmWem6AW5Ni5
	mmVVAuhggiC7joD5F2Hpz0jFfPBjugLLUa51PonSdgfazXyzB46N2hVHagMch63XevyEeGbOVPLxl
	QeLxespF7DSG8hNpcY6qyq/oSLpEytWSBAV+n5K2A1k2VuVQEPTlsbTjNyljGtt7u8c111IjgTX/H
	1r25U3C5JHp6o4JZKzCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotFI-0005YM-7e; Tue, 07 Jan 2020 18:06:24 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotFA-0005Xr-41; Tue, 07 Jan 2020 18:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420363;
 bh=iZfwkxOhTlh7umLDzawPWQ0XrV9W/IiTb8gMCTxXpOw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=WbaYEV5eRiFann9/oiOyPcDy34Y+BY6gun+3pW4kFlPWNeIT9nmOhnD30ASf6/coa
 XBEr/izzX9N/zhmywoyIcPBmeWrOF46l/PeMloeBSL0U5mPFkTNjPIL+D+xd4FCkk5
 OiUTVbZSsjBFCGfSShuE1JaFnYDWqnOcmH/p7vSU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTAFh-1jHB6S38gx-00UXoK; Tue, 07
 Jan 2020 19:06:03 +0100
Subject: Re: [RFC] ARM: add bcm2711_defconfig
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com
References: <20200107172459.28444-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3688a55b-e929-6cef-66c6-affed97d938b@gmx.net>
Date: Tue, 7 Jan 2020 19:06:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200107172459.28444-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:3pRWyf+PH7jY01QAkX+MY0kKfyybc4wTL/skRdtoftPiphJvlUp
 gjsmsMMFX92e93QGKqmkE9z0FF8emuDRv31KLkrcbr3pqxuvUU8Td/xYSJ2+R/7B4UuhZWn
 HsxOGReKbIvxTIF8r4mHwkSD30d6zXwn5wD8fgzzv9rIhqY4ee5zuO5XjknKSxlUS8l5ek5
 FpVfauNbe3DEu8YpIvVrw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EayFQX0crR4=:gh9FrsHEF2ODI54F2IWaaz
 8OjqnWjDGOwAejFffSMakdx0WmpVfPbquFmQVDLmB1Po9GH46DPWxLC89S6WR1dcRetDkE/wu
 Tf9srWS3CSJSgU8++pAQY4YiLQhj1Xua4H3z3a6HfeFqWX11J88Mx3LxHhX4XFTonGPvY3siN
 ct8jaY7bMXMsebXMzSChEfRmWgUwq8sZ+zUVhyZktDLEO2JQoM82cjJombQuelCKnDrxtoBQv
 Zu7Gse+eAvoKD3TE5xb/g68eNfjqH/bqxK3uamkcfifW8+ues5K9TJsl3DOie3+DwtYAhAYbl
 EKoj2pgbNsWxQam0PNsyrgkeBef1x/+bj5kfEspdZUZ5j+KEt8tBouDFdY8WTeK8BqZmW+Uu3
 L0DjTLB9GJj9ijlxnV5qgNRl7e84A01lZeksQ5xph2zPGANK0P47rVVTEDy/dCwe2xCJ2Dm9V
 +NfOltOwc5Cg8kaklXmvuWNcMi8nV9BPFL15xUb63ax+nLQcSaRTJQpQN2mGV6nvbkl1F4irb
 csyAqlp7aO8acNzuL8vuGqy95G8wloprXxJ/cEPaU6eBrDbgFJwXh0RwXAI3l0/lyK6UbfBGu
 415RVBTD4iHuFgA8BIMYe9UWmx7tM2JJYs32vlIXu8F6gkto/gSkXD6Q6Fa21DcsA8yLIHtHe
 VENtVFSF1H2Jj+aK0IIbq1ZLavsu9HRUco9YzBuB2FVdYk2j6eId7swupS7B3Ujh3mSwIPBh6
 /thrRVqGIuLJFuM+DXh4E9XJyKC96ewta0PgtD/pSoD+vwK/GZ/B7qdn0SwUUAeYh3RwnvMMq
 EcpGVa7ooLvderbCXWpKqYm61CLxt0Zfo0ELN+4l05q5eP/LDlQjbswNXdiFmTvR7dkJ37+8N
 oZHCMADclAWy0nPZKa7z0p5hS1++n9TnLwPf0KVnGY0efKcOj2Ujz+Qt/jD9J3SDmeq2KlBU8
 vzwCR9jSxgpGuHQAMimgmuzr+MzPV2t34szfieIf/99F2M7k42nkRFiBR9WHAKG86lqJ6hNHE
 m02TFlVtBQw2Bj8Q+F+1qzfYCOuWRRFbehsDwTtvQ6+z50AIsbJL4spQZXSFIYCTVK/VdC1F1
 a95g5GCN66UsHCW4d28K3d7VyZ4XoHlR2OUzjAR10J41y8wOIoKHeNQA7KEz/HMz03trSKQwG
 amq100coXgSWcBHbZOAZc+XUmc7/plUwcRqGjBr5VvNaftkWMmpq3d7LsZXnOu22zlZUvJbUt
 VfpHtq3vyTYvIJcoOF4wHVPy/oGgfcUyWPSqZQMwzsiPMmbMqan2xk9HJsuk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_100616_494915_9997F6A2 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mbrugger@suse.com, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 07.01.20 um 18:24 schrieb Nicolas Saenz Julienne:
> The Raspberry Pi 4 depends on LPAE in order to use its PCIe port, which
> is essential, as it ultimately provides USB2/3 connectivity. As this
> setup doesn't fit any generic purpose configuration this adds
> bcm2711_defconfig which is based on the current Raspberry Pi foundation
> config file[1] with as little changes as possible

i really dislike the Foundation config file, because it contains so many
unnecessary features. Bisecting with such a kernel config is horrible.

How about finding a compromise between bcm2835_defconfig and
multi_v7_defconfig + LPAE?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
