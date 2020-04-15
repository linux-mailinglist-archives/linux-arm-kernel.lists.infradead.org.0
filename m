Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2C31AB33F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 23:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HrZOBG2qYF6bw/M18weTaBA8KHceuB0rRFXCQGyieQs=; b=rsP/W5fYuE2oruN7O0EgpRlpM
	g+ELFz5IF/GZOkzYaJAADk6yzU1a49KMXvOTRb33Qx1rUpOIlAYi0m7yQc/+VMIcsGVWWzhCv6ab8
	oLmYlb8yKKQ0X10Kdwrdi4whXwOxBD4gRBMvmXg9osCuA1ENMauoO92eRXQ35G3PbYNCES3LPTN4W
	6JhMLpKhc/ix8TRoWImdxl9dehojiQtU2v/CCz24lnRZ9khCMbK0bDiTypjehBvRmPUuNd4eykXlE
	ipu/DX0h5Fn+Ath2VPqfRrcWsTJoXHJgxqa+SXdaerVGI8u5tT5wUujBFQ9DhZoOokZCGhk/x1QGr
	ScUYbLpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOpX4-0005bb-2p; Wed, 15 Apr 2020 21:25:18 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOpWe-0005a0-QI; Wed, 15 Apr 2020 21:24:54 +0000
Received: by mail-ed1-x52d.google.com with SMTP id s10so6839316edy.9;
 Wed, 15 Apr 2020 14:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7NGB6xVMHQDOON+H9gf0r3Gd97N/RnN5O+ebQ30vZow=;
 b=EteKHKLLS3SRrJ48QmuFqrmul5MzylSVVPGI7JNjNaUgyI/YI1u79fN3xFpPiilgdu
 oPDtg2L+g5yGLeewJa7sT1dcX/Q8s+F6xRIR1TLHOC2PXRpHDnqUOmJL6VQ/TSHgmaQ7
 bo4Kv1ygDIiEvHXB4TLDZdoWlz4r1Uhuf4KKX3ZnsWBx35GMi5B/umrIsoNM2SAUKFZo
 rbaJXHFGfU79RiAeaiuamCSXL+aguiijJJCroJb1y/hAocrYF+qaltsFDRZoHRoANStT
 uDBcUyt3zP+EqOc+JX7EO016C344R27gsEZAC4lZyeTp+nghXm/17rY0wnxqgkWL49YM
 sTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7NGB6xVMHQDOON+H9gf0r3Gd97N/RnN5O+ebQ30vZow=;
 b=SI9Ca7Vjjh0/64v/xrFPge26TU9SG6HqUKilzgzWn19S6DEqL4DZl26gqN7eUKveWu
 q94SXSSLWko3aQREHGbti8WW8DKXUHHHxyX2Rs6cRbnS6vk+tHvh/xDDUSMEdFdAugRZ
 EgIZCYtARMQ9bW5ymezm7X5btd5vnHKGeEEyNjd2uRPA2ytyAAZEGreCxuvdsvzgl8h9
 MTzzBbnRpswbnuCeLbXJ1haFDbvYKazk5rUM+3T0xl+RayH1+9O/Yr5BppZIhgi+yhZN
 7zsPtx45udWc8StNaIKzkR2w1WgZeUWx402VILB7pqIwHFCskQaNqSlFPOdHQ4XVN2UA
 7auQ==
X-Gm-Message-State: AGi0PuZmvuYGzDzDjmMJcMmxyP9LROWllxOYHN+X+uqQAo6E+7ywcpxW
 HK06PNPEJxEMk7OVvqkX0IWoyW/dNcEXHmiejIc0WP0wvHQ=
X-Google-Smtp-Source: APiQypLQyfDac5FG+9t31I5aw+wcG5wk/So8h0WoQ2dg7NIaPHPXRHW6tYyWd/UIF9y2xXI5nkTinN1gjegUb2JDj5A=
X-Received: by 2002:a50:c004:: with SMTP id r4mr25590470edb.110.1586985890193; 
 Wed, 15 Apr 2020 14:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
 <CAPDyKFpsTTUaTLy--DvOr0oAB71cTBdH1pfTV63LtcKOKOsnDw@mail.gmail.com>
In-Reply-To: <CAPDyKFpsTTUaTLy--DvOr0oAB71cTBdH1pfTV63LtcKOKOsnDw@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 15 Apr 2020 23:24:39 +0200
Message-ID: <CAFBinCAhfgEdT383x61mh9E0y3-3MLA-fUmZj-4C-_VUdGWtGQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
To: Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: multipart/mixed; boundary="0000000000003fd07b05a35af2bf"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_142452_884619_8B6F2E9A 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--0000000000003fd07b05a35af2bf
Content-Type: text/plain; charset="UTF-8"

Hi Ulf,

thank you very much for taking the time to look into this!

On Wed, Apr 15, 2020 at 2:57 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
[...]
> Thanks for sending this! I assume it's a regression and caused by one
> of my patches that went in for 5.7. Probably this one:
> 0d84c3e6a5b2 mmc: core: Convert to mmc_poll_for_busy() for erase/trim/discard
indeed, I only observed this with 5.7-rc1-ish, before everything was
working fine

> Now, even if enabling MMC_CAP_WAIT_WHILE_BUSY seems like the correct
> thing to do, I suggest we really try understand why it works, so we
> don't overlook some other issue that needs to be fixed.
great, that's why I'm seeking for help!

> Would you be willing to try a few debug patches, according to the below?
sure
while reading your suggestions I went back to the vendor driver and
observed that they don't implement card_busy for this controller
Thus I added the following line to meson_mx_mmc_card_busy for all of
your tests to see what the controller sees in terms of our card busy
implementation:
  dev_info(mmc_dev(host->mmc), "%s read IRQC = 0x%08x\n",
                 __func__, irqc);

> First, can you double check so the original polling with CMD13 is
> still okay, by trying the below minor change. The intent is to force
> polling with CMD13 for the erase/discard operation.
I have tried this one and it seems to work around the problem (before
I reverted my change and dropped MMC_CAP_WAIT_WHILE_BUSY from
mmc->caps)
also I did not see meson_mx_mmc_card_busy being invoked (not even
once, but I don't know if that's expected)

[...]
> Second, if the above works, it looks like the polling with
> ->card_busy() isn't really working for meson-mx-sdio.c, together with
> erase/discard. To narrow down that problem, I suggest to try with a
> longer erase/discard timeout in a retry fashion, while using
> ->card_busy(). Along the lines of the below:
I have tried this one as well (before I reverted the earlier CMD13
patch) and with MMC_CAP_WAIT_WHILE_BUSY unset in mmc->caps
This doesn't seem to work around the issue - kernel log extract attached.
Also I'm seeing that the the current meson_mx_mmc_card_busy
implementation returns that the card is busy.
example: 0x1f001f10 & 0x3c00 = 0x1c00. the busy logic in the driver
is: !!0x1c00 = 1

My conclusion is:
- meson_mx_mmc_card_busy is not working and should be removed (because
I don't know how to make it work). it probably never worked but we
didn't notice until a recent change
- set MMC_CAP_WAIT_WHILE_BUSY as per my initial patch
- use Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the
Amlogic Meson8 and Meson8b SoCs")

Does this make sense?
Also please let me know if you want me to try something else


Martin

--0000000000003fd07b05a35af2bf
Content-Type: text/plain; charset="US-ASCII"; name="erase-poll-retry.txt"
Content-Disposition: attachment; filename="erase-poll-retry.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k91u1h6j0>
X-Attachment-Id: f_k91u1h6j0

WyAgMTM2LjY4ODY4NF0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1j
X2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzNi43MzQyODZdIHBsYXRmb3Jt
IGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0g
MHgxZjAwM2YxMApbICAxMzYuNzg4Njc0XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBt
ZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM2LjgyODg5
NV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSBy
ZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzNi44OTY4NzVdIHBsYXRmb3JtIGMxMTA4YzIwLm1t
YzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApb
ICAxMzYuOTY0OTY3XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNf
Y2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM3LjAwMDY1Nl0gcGxhdGZvcm0g
YzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAw
eDFmMDAxZjEwClsgIDEzNy4wNjg2NzhdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1l
c29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzcuMTA0Njgy
XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJl
YWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM3LjE1MDI4OV0gcGxhdGZvcm0gYzExMDhjMjAubW1j
OnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAzZjEwClsg
IDEzNy4xOTY2NzldIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19j
YXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAxMzcuMjY0NzY2XSBwbGF0Zm9ybSBj
MTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4
MWYwMDFmMTAKWyAgMTM3LjMxMjg3OV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVz
b25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzNy4zNDg5OThd
IHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVh
ZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzcuNDAwODQzXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6
c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAg
MTM3LjQ2ODk3N10gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2Nh
cmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzNy41MjA4NzJdIHBsYXRmb3JtIGMx
MTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgx
ZjAwM2YxMApbICAxMzcuNTYyMjQ3XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNv
bl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM3LjYwNDY4MF0g
cGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFk
IElSUUMgPSAweDFmMDAxZjEwClsgIDEzNy42NzI3NjhdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpz
bG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAx
MzcuNzI4NjQyXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2Fy
ZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM3Ljc3NDE0OF0gcGxhdGZvcm0gYzEx
MDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFm
MDAzZjEwClsgIDEzNy44MzI2ODVdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29u
X214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzcuODc4NjMwXSBw
bGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQg
SVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM3Ljg4MTIzMl0gbW1jMTogQ2FyZCBzdHVjayBiZWluZyBi
dXN5ISBfX21tY19wb2xsX2Zvcl9idXN5ClsgIDEzNy44ODY4NDVdIGJsa191cGRhdGVfcmVxdWVz
dDogSS9PIGVycm9yLCBkZXYgbW1jYmxrMSwgc2VjdG9yIDQxMjA3NDQgb3AgMHgzOihESVNDQVJE
KSBmbGFncyAweDgwMCBwaHlzX3NlZyAxIHByaW8gY2xhc3MgMApbICAxMzcuODk4MTkwXSBFWFQ0
LWZzIChtbWNibGsxcDEpOiBkaXNjYXJkIHJlcXVlc3QgaW4gZ3JvdXA6MTUgYmxvY2s6MjI1NDkg
Y291bnQ6MTIyIGZhaWxlZCB3aXRoIC01ClsgIDEzOC4xNzIxMTFdIHBsYXRmb3JtIGMxMTA4YzIw
Lm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYx
MApbICAxMzguMTgxMjc1XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9t
bWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM4LjE4NzgzOV0gcGxhdGZv
cm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMg
PSAweDFmMDAzZjEwClsgIDEzOC4xOTY3NDddIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6
IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzguMjAz
MjIyXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5
IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM4LjIxNDQ5MF0gcGxhdGZvcm0gYzExMDhjMjAu
bW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEw
ClsgIDEzOC4yMjAzNjFdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21t
Y19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzguMjI5MzE4XSBwbGF0Zm9y
bSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9
IDB4MWYwMDNmMTAKWyAgMTM4LjI0MTM5M10gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTog
bWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOC4yNjAy
OTddIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kg
cmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAxMzguMjk1NTA1XSBwbGF0Zm9ybSBjMTEwOGMyMC5t
bWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAK
WyAgMTM4LjM1OTgyMl0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1j
X2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOC40MDg2MjldIHBsYXRmb3Jt
IGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0g
MHgxZjAwM2YxMApbICAxMzguNDc2NzEyXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBt
ZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM4LjUxMjg3
MV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSBy
ZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOC41ODEwMTFdIHBsYXRmb3JtIGMxMTA4YzIwLm1t
YzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApb
ICAxMzguNjE2ODQzXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNf
Y2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM4LjY4NDk4Ml0gcGxhdGZvcm0g
YzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAw
eDFmMDAxZjEwClsgIDEzOC43MjA4NTldIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1l
c29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAxMzguNzg2NTEx
XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJl
YWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM4LjgyNDc0MV0gcGxhdGZvcm0gYzExMDhjMjAubW1j
OnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsg
IDEzOC44NzY3MjNdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19j
YXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzguOTEyNzMxXSBwbGF0Zm9ybSBj
MTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4
MWYwMDNmMTAKWyAgMTM4Ljk4MDc5NV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVz
b25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS4wMzI3MzVd
IHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVh
ZCBJUlFDID0gMHgxZjAwMWYxMApbICAxMzkuMTAwODI2XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6
c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAg
MTM5LjEzNjg2OF0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2Nh
cmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS4yMDQ5NjZdIHBsYXRmb3JtIGMx
MTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgx
ZjAwMWYxMApbICAxMzkuMjQwODcxXSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNv
bl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM5LjMwOTAwOF0g
cGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFk
IElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS4zMTE0MDhdIG1tYzE6IENhcmQgc3R1Y2sgYmVpbmcg
YnVzeSEgX19tbWNfcG9sbF9mb3JfYnVzeQpbICAxMzkuMzE3MTY4XSBtbWMxOiBFcmFzZSBwb2xs
IGZhaWxlZCBlcnI9LTExMCB0aW1lb3V0X21zPTEwNjYgLSByZXRyeSEKWyAgMTM5LjMyMzU3OF0g
cGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFk
IElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS4zMzE2ODFdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpz
bG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAx
MzkuMzM5NzQ5XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2Fy
ZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM5LjM0Nzg5NV0gcGxhdGZvcm0gYzEx
MDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFm
MDAxZjEwClsgIDEzOS4zNTc1NDBdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29u
X214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAxMzkuMzY2NDYwXSBw
bGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQg
SVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM5LjM3MjUyOV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNs
b3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEz
OS4zODM1MjhdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJk
X2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzkuMzk1NjMxXSBwbGF0Zm9ybSBjMTEw
OGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYw
MDNmMTAKWyAgMTM5LjQxNDQ4MF0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25f
bXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS40NDg3MzhdIHBs
YXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJ
UlFDID0gMHgxZjAwMWYxMApbICAxMzkuNTE2ODI4XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xv
dEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNmMTAKWyAgMTM5
LjU4NDg4MV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRf
YnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDEzOS42MzQ1NTVdIHBsYXRmb3JtIGMxMTA4
YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAw
M2YxMApbICAxMzkuNzAyNzc1XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9t
eF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM5Ljc2MDc0NF0gcGxh
dGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElS
UUMgPSAweDFmMDAzZjEwClsgIDEzOS44Mjg4MzNdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90
QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxMzku
ODY0ODk1XSBwbGF0Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9i
dXN5IHJlYWQgSVJRQyA9IDB4MWYwMDFmMTAKWyAgMTM5LjkwMDcxOF0gcGxhdGZvcm0gYzExMDhj
MjAubW1jOnNsb3RAMTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAz
ZjEwClsgIDEzOS45Njg4ODNdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214
X21tY19jYXJkX2J1c3kgcmVhZCBJUlFDID0gMHgxZjAwMWYxMApbICAxNDAuMDA0Njg4XSBwbGF0
Zm9ybSBjMTEwOGMyMC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJR
QyA9IDB4MWYwMDFmMTAKWyAgMTQwLjA3MjY0OV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RA
MTogbWVzb25fbXhfbW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAxZjEwClsgIDE0MC4x
MzY3NTBdIHBsYXRmb3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1
c3kgcmVhZCBJUlFDID0gMHgxZjAwM2YxMApbICAxNDAuMTc2ODYwXSBwbGF0Zm9ybSBjMTEwOGMy
MC5tbWM6c2xvdEAxOiBtZXNvbl9teF9tbWNfY2FyZF9idXN5IHJlYWQgSVJRQyA9IDB4MWYwMDNm
MTAKWyAgMTQwLjIzNjI1MV0gcGxhdGZvcm0gYzExMDhjMjAubW1jOnNsb3RAMTogbWVzb25fbXhf
bW1jX2NhcmRfYnVzeSByZWFkIElSUUMgPSAweDFmMDAzZjEwClsgIDE0MC4yODA2OTVdIHBsYXRm
b3JtIGMxMTA4YzIwLm1tYzpzbG90QDE6IG1lc29uX214X21tY19jYXJkX2J1c3kgcmVhZCBJUlFD
ID0gMHgxZjAwMWYxMAo=
--0000000000003fd07b05a35af2bf
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--0000000000003fd07b05a35af2bf--

