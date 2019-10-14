Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DC1D6959
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPXRAIp1r0e01Ll4GrheTQsjq0m779hCm0XW2gjYKyU=; b=tm/mymWRXuG+cv
	UixuyJYlsXizQ4zaNZwpbXfpaEcFD0hRB9fkaGz9rU7JnBVxMrmTdKG/5rC0yMU5mjxacmH6yIVxo
	rud2zlygasaI8bEv+hb73brhUG9ytBozGC1IlZM6gn/tvlyQ4Ki5bIhmowLIrPJOosc6GMkyy3mZW
	GXWwhHnbE9yqa/QynICYA5xYnGt7rVLmlWMKjDnGMG6LTeWVfjAoKOJ3xGMjezp3gvOLhBho3iL2t
	J/uP/YprCOlzRMta4wzwGYSPvHRNA/F2VGgTIV0JuSlj5/UqgjwFarZy9nYd9wTkCzRig0IwpJnnl
	6MxzXx6Hh3uZwfjySJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4xU-0002X5-6f; Mon, 14 Oct 2019 18:20:40 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4xG-0002Vz-RS; Mon, 14 Oct 2019 18:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571076922;
 bh=lUDqvF4Xmlo26d5vz+FQYhlAXDFrVQbg6WijSZdbKqk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZDVRRFHnWNUCgWcY0u5eLnj7vUw1N1cKROVVf1Uagz48d5+2jsoLsJQ24Iq10YiXd
 NOyFaqjto94EsUXoiBHEgFdiwmHXP+KLXgIc+73mRsqnihaPOfTjZfmo0jG6e1WF2i
 9DHTDN3cxQyGkl3OmKX+svCm0yvsZ9dL1VQ+nhBQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MyKDe-1i7tAs1M6O-00ydUc; Mon, 14
 Oct 2019 20:15:22 +0200
Subject: Re: lan78xx and phy_state_machine
To: Daniel Wagner <dwagner@suse.de>, bcm-kernel-feedback-list@broadcom.com
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014143213.ishkkg7bkiwu6wi3@beryllium.lan>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <e652167b-11e6-ec20-c340-d9ed828cc853@gmx.net>
Date: Mon, 14 Oct 2019 20:15:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191014143213.ishkkg7bkiwu6wi3@beryllium.lan>
Content-Language: en-US
X-Provags-ID: V03:K1:LLdHi9yNPfO5bx4nSBKarNJ+TSiW5ygKzRRSkZCyJwmnq18bnbc
 g9Lc28wgd1IC2huwjlq0jYxaSQ3DUG/xwrKHsAXHN9xIWuWwUUg/P7p+SGGrxSP12b0YSnL
 bQzhEccoKFSah/qRooAE5u1tb5dak5IKxtnxzfkzgeox7MqErGRkgRI/yNPa2VVebHS42op
 3RbupBmp2LzFDtFFszW5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wzmmERjZ9C0=:jT8VePYse0PJ5t6Dsix/vN
 xrfJacsKeGPE5ohQPinxabD+Y3GuULb9D5AvXsMIfU9yVpAXvFTzZ27PZnRFEELF2cnLkwzY9
 QBiSfjcTKAzf7nwxxSDtxBp3FP4nF9avZglW3yPOkLRTkXbossMS9MPGFodDPKmvIwY8qLlpL
 XQgmSMqTI6gntrbKMTRsEqFhC1KHL6/oAuJZ63ZsWdABRDFCR63skRCEQje5biLnRq8brVFuN
 L5VDsy/V7VgQEH3HT37mJbneEL/Q5a/A8fIBdDKCQyDNxXOlHghZGKfs8kbyo8+ARXZ4CNS7h
 NQ5jGj34O+KlAOvYYXLuL++nBCUs3aaLeLz0+VUdE1IGsq2QzCND4XFNPvvpIEU/GuetkVssX
 lZcTa1Dw1tFvgvsNVPIUKwTjsUHsT7ltBjQLLWBoYK5HNIpzmhMWkieLPZz9zzctkUYaE3iyV
 8RJCKkwBgVeTXfXZk4hoiHOcUkFHCpll9GQrXhrqjly0T8x2+Xq6tuceX2QwpEdHKsovmL1qf
 f2TTkVy4o9L3qY/DpXKMG+KUsO2iZHefg3M7j9U90eNJYS3f/O7nIkSC0bYBj9WKpDTUNWzfh
 Jh+EWLAWCcGR2F9nSOpdIMX78e7ZPZrrTdm/1mk2OpaxsVGdIsWQax2pQNwZBVrO1ULZwZEA5
 50JqlDagsXuOxLph9hKNSdnM3hJ9TnsyXv118LHjkprxDYJy0D3W4pObyQzQyxKpgZ+VC4i6a
 67naFuf1y/wdDtIG24yfEXBoAgSTHimyD7beFcYys2qFX209dN9CClRgWHfPNXKje3El7MRzd
 HmiR0retBQllTm7D5zLKDl+ldCdgsK+ZQXNwjTvk/nJdhNHVSg9SZuMKmJCABLQzzIHL/Nqng
 7PDSddVx2rl+xdLCBb50Sl2DfFjMd3cuzIsaA+7AqJAS5WkncNfBm6x2B65Aj5jioBd9mXnU1
 yQB5IUEM/n39YBZ7WAwd4XZUgYnI2tYQIUi7AYALPvwNTMFHcabEqJAfneHtafSk96RmWjGkQ
 OF9dzgUXM6bo0SONtq2nx/PBPOFC89Vco26VFn0QXYRKgTHZBYvDF7hS/VZS3wHIz3J9TX7A9
 R3dyaQIpQ7OKeN1V0IRTAfTrsgazbIIiCt1JLmKsV/cu5JrL9ZjjV6Qdxxw0MfzlNT8A4z9Z/
 xnVTc35RKRGOtW1tU7DN1c/oDNT7LTooEHweH6anXS9XbfV1e/WWQfYcvi0jI4zYfpYIyfHST
 zLvdxPriSvXnetKFmRNlGFtLpJ3TeCWnZewzyxlRlXMCAJ3aHJrUUmlYHY2A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_112029_852530_23E01AAD 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Daniel,

Am 14.10.19 um 16:32 schrieb Daniel Wagner:
>> I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
>> my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
>> when initializing the eth interface.
> FWIW, 5.4.0-rc3 doesn't boot neither.

i'm unable to reproduce this issue with my RPi 3B+

rootfs: ARCH
Bootloader: U-Boot
Linux: 5.4.0-rc3, arm64/defconfig

Are you using a vanilla kernel?
Which configuration?
Is Ethernet cable connected during boot?
Does ACT LED stop blinking?
What is your criteria to decide "doesn't boot"?

>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
